class NotesController < ApplicationController

  def note_params
    params.require(:note).permit(:title, :content, :additional, :icon, :color, :folder_id)
  end

  def new
    @note = Note.new
    @folders = Folder.all
    render '/notes/new'
  end

  def edit
    @note = Note.find(params[:id])
    @folders = Folder.all
    render '/notes/edit'
  end

  def update
    @note = Note.find(params[:id])
    @folder = params[:note][:folder_id]
    if @note && @note.update_attributes(note_params)
      redirect_to '/folders/notes?id='+@folder
    end
  end

  def all
    @notes = Note.all
    render '/notes/all'
  end

  def create
    @note = Note.create(note_params)
    @folder = params[:note][:folder_id]
    if @note.save
      redirect_to '/folders/notes?id='+@folder
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
  end

end
