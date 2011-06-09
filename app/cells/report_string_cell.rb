class ReportStringCell < Cell::Rails

  def display(args)
   parameters(args)
   render
  end

  def display_data(args)
   parameters(args)
   render
  end

 protected
  def parameters(args)
   @key = args[:key]
   @config = args[:config]
   @data = args[:data]
  end
end
