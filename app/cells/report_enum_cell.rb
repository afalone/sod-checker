class ReportEnumCell < Cell::Rails

  def display(args)
   parameters args
   @key = args[:key]
   render
  end

  def display_data(args)
   parameters args
   render
  end

 protected
  def parameters(args)
   @enums = args[:enums]
   @data = args[:data]
   @config = args[:config]
  end
end
