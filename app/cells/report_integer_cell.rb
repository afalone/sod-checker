class ReportIntegerCell < Cell::Rails

  def display(args)
   @data = args[:data]
   @config = args[:config]
   render
  end

  def display_data(args)
   @data = args[:data]
   @config = args[:config]
   render
  end
end
