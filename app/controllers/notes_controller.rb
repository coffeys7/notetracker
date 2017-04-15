class NotesController < ApplicationController

  def note_params
    params.require(:note).permit(:title, :content, :additional, :icon, :color)
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
    if @note && @note.update_attributes(note_params)
      redirect_to '/notes/all'
    end
  end

  def all
    @notes = Note.all
    render '/notes/all'
  end

  def create
    @note = Note.create(note_params)
    if @note.save
      redirect_to '/notes/all'
    end
  end

end
