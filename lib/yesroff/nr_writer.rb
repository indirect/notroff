class NRWriter
  attr_reader :para_style

  def initialize
    @para_style = :body
    @single_line = false
  end

  def switch_para_style(new_style, single_line)
    #end_paragraph
    return if new_style == @para_style
    print ".#{new_style}"
    if single_line
      print ' '
    else
      print "\n"
    end
    @para_style = new_style
    @single_line = single_line
  end

  def end_paragraph
    puts
    if @single_line
      @para_style = :body
      @single_line = false
    elsif @para_style != :code && @para_style != :listing
      puts
    end
  end

  def indent(n)
    print (' ' * n)
    
  end
  def toggle_bold
    print "!!"
  end

  def toggle_italic
    print "~~"
  end

  def toggle_code
    print '@@'
  end

  def text(t)
    print t
  end
end