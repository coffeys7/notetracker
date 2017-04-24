class FoldersController < ApplicationController

  def folder_params
    params.require(:folder).permit(:title, :description, :note_type)
  end

  def hour_notes
    @folder = Folder.find(params[:id])
    @hour_notes = @folder.hour_notes.order('day')
    render '/folders/hour_notes'
  end

  def todo_notes
    @folder = Folder.find(params[:id])
    @todo_notes = @folder.todo_notes.order('priority DESC, completed')
    render '/folders/todo_notes'
  end

  def new_hour_note
    @hour_note = HourNote.new
    @folder = Folder.find(params[:folder_id])
    render '/folders/new_hour_note'
  end

  def edit_hour_note
    @hour_note = HourNote.find(params[:note_id])
    @folder = Folder.find(params[:folder_id])
    render '/folders/edit_hour_note'
  end

  def new_todo_note
    @todo_note = TodoNote.new
    @folder = Folder.find(params[:folder_id])
    render '/folders/new_todo_note'
  end

  def edit_todo_note
    @todo_note = TodoNote.find(params[:note_id])
    @folder = Folder.find(params[:folder_id])
    render '/folders/edit_todo_note'
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

  def destroy
    @folder = Folder.find(params[:id])
    @folder.hour_notes.each do |note|
      note.destroy
    end
    @folder.todo_notes.each do |note|
      note.destroy
    end
    @folder.destroy
    redirect_to '/folders/all'
  end

end
