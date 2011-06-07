class RequestBooleanCell < Cell::Rails

  def display(args)
   @form = args[:form]
   @key = args[:key]
   @val = args[:val]
   @data = args[:data]
   render
  end

end
