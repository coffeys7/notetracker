class Folder < ApplicationRecord

  has_many :hour_notes
  has_many :todo_notes

  enum note_type: [:hours, :todo, :custom]

  def total_hours
    total = 0.0
    self.hour_notes.each do |hr_note|
      if hr_note.completed?
        total += (hr_note.end_time - hr_note.start_time)/3600
      end
    end
    return total
  end

end
