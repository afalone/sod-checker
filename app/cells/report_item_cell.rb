class ReportItemCell < Cell::Rails

  def display(args)
   parameters args
   render
  end

  def display_data(args)
   parameters args
   render
  end

 protected
  def parameters(args)
   @enums = args[:enums] || {}
   @config = args[:config]
   @data = args[:data]
   @key = args[:key]
  end
end
