class HourNotesController < ApplicationController

  def hour_note_params
    params.require(:hour_note).permit(:day, :start_time, :end_time, :additional_info, :completed, :folder_id)
  end

  def update
    @hour_note = HourNote.find(params[:id])
    @folder_id = params[:hour_note][:folder_id]
    if @hour_note && @hour_note.update_attributes(hour_note_params)
      redirect_to '/folders/hour_notes?id='+@folder_id
    end
  end

  def create
    @hour_note = HourNote.create(hour_note_params)
    @folder_id = params[:hour_note][:folder_id]
    if @hour_note.save
      redirect_to '/folders/hour_notes?id='+@folder_id
    end
  end

  def destroy
    @hour_note = HourNote.find(params[:id])
    @hour_note.destroy
    redirect_to root_path
  end

end
