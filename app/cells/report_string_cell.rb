class ReportStringCell < Cell::Rails

  def display(args)
   @config = args[:config]
   @data = args[:data]
   render
  end

  def display_data(args)
   @config = args[:config]
   @data = args[:data]
   render
  end
end
