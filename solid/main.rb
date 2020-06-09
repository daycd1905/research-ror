class Report
  def body
    generate_reporty_stuff
  end
  
  def print formatter: JSONFormatter.new
    formatter.format body
  end
end

report = Report.new
report.print formatter: XMLFormatter.new




class Report
  def body
    generate_reporty_stuff
  end
  
  def print formatter: JSONFormatter.new
    formatter.format body
  end
end







class Report
  def body
    generate_reporty_stuff
  end
  
  def print
    JSONFormatter.new.format body
  end
end

class JSONFormatter
  def format body
    ...
  end
end





