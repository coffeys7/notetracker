class TodoNotesController < ApplicationController

  def todo_note_params
    params.require(:todo_note).permit(:title, :additional_info, :color, :priority, :folder_id)
  end

  def update
    @todo_note = TodoNote.find(params[:id])
    if @todo_note && @todo_note.update_attributes(todo_note_params)
      redirect_to root_path
    end
  end

  def create
    @todo_note = TodoNote.create(todo_note_params)
    if @todo_note.save
      redirect_to root_path
    end
  end

  def destroy
    @todo_note = TodoNote.find(params[:id])
    @todo_note.destroy
    redirect_to root_path
  end

end
