class RequestRealCell < Cell::Rails

  def display(args)
   @form = args[:form]
   @key = args[:key]
   @val = args[:val]
   @fields = args[:fields]
   @data = args[:data]
   render
  end

end
