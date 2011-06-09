class ReportArrayCell < Cell::Rails

  def display(args)
   parameters(args)
   @key = args[:key]
   @columns = @config["content"].keys
   render
  end

  def display_row(args)
   parameters(args)
   @order = args[:order]
   @row = args[:row]
   render
  end

  def display_data(args)
   parameters(args)
   @columns = @config["content"].keys
   render
  end

 protected
  def parameters(args)
   @enums = args[:enums] || {}
   @config = args[:config]
   @data = args[:data]
  end
end
