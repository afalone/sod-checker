class ReportItemCell < Cell::Rails

  def display(args)
   @enums = args[:enums] || {}
   @config = args[:config]
   @data = args[:data]
   render
  end

  def display_data(args)
   @enums = args[:enums] || {}
   @config = args[:config]
   @data = args[:data]
   render
  end
end
