module TodoNotesHelper

  def color_for(color)
    return '' if color == 'none'
    return 'rgba(241,196,15,0.2)' if color == 'yellow'
    return 'rgba(46,204,113,0.2)'if color == 'green'
    return 'rgba(52,152,219,0.2)' if color == 'blue'
    return 'rgba(231,75,60,0.2)' if color == 'red'
    return 'rgba(149,165,166,0.2)' if color =='gray'
  end

end
