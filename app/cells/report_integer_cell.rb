class ReportIntegerCell < Cell::Rails

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
   @data = args[:data]
   @config = args[:config]
  end
end
