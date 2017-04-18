module ApplicationHelper

  def time_difference(t0, t1)
    diff = ((t1 - t0) / 3600)
    return "#{ diff } hours"
  end

end
