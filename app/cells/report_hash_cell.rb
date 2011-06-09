class ReportHashCell < Cell::Rails

  def display(args)
   parameters(args)
   @key = args[:key]
   render
  end

  def display_data(args)
   parameters(args)
   render
  end

 protected
  def parameters(args)
   @config = args[:config]
   @data = args[:data]
   @enums = args[:enums]
  end
end
