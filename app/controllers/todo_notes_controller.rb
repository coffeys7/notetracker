class TodoNotesController < ApplicationController

  def todo_note_params
    params.require(:todo_note).permit(:title, :additional_info, :color, :priority, :folder_id, :completed)
  end

  def update
    @todo_note = TodoNote.find(params[:id])
    @folder_id = params[:todo_note][:folder_id]
    if @todo_note && @todo_note.update_attributes(todo_note_params)
      redirect_to '/folders/todo_notes?id='+@folder_id
    end
  end

  def create
    @todo_note = TodoNote.create(todo_note_params)
    @folder_id = params[:todo_note][:folder_id]
    if @todo_note.save
      redirect_to '/folders/todo_notes?id='+@folder_id
    end
  end

  def destroy
    @todo_note = TodoNote.find(params[:id])
    @folder_id = @todo_note.folder_id
    @todo_note.destroy
    redirect_to '/folders/todo_notes?id='+@folder_id.to_s
  end

  def update_note_color
    @note = TodoNote.find(params[:note])
    @color = params[:color]
    @note.update_attribute(:color, @color)
  end

end
