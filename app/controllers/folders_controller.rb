class FoldersController < ApplicationController

  def folder_params
    params.require(:folder).permit(:title, :description, :display_format)
  end

  def notes
    @folder = Folder.find(params[:id])
    @notes = @folder.notes
    render '/folders/notes'
  end

  def new_note
    @note = Note.new
    @folder = Folder.find(params[:folder_id])
    render '/notes/new'
  end

  def edit_note
    @note = Note.find(params[:note_id])
    @folder = Folder.find(params[:folder_id])
    render '/notes/edit'
  end

  def new
    @folder = Folder.new
    render '/folders/new'
  end

  def edit
    @folder = Folder.find(params[:id])
    render '/folders/edit'
  end

  def update
    @folder = Folder.find(params[:id])
    if @folder && @folder.update_attributes(folder_params)
      redirect_to '/folders/all'
    end
  end

  def all
    @folders = Folder.all
    render '/folders/all'
  end

  def create
    @folder = Folder.create(folder_params)
    if @folder.save
      redirect_to '/folders/all'
    end
  end

end
