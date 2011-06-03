class ReportCell < Cell::Rails

  def display(args)
   @enums = args[:enums] || {}
   @data = args[:data]
   @config = args[:config]
   render
  end

end
