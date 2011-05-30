class RequestStringCell < Cell::Rails

  def display(args)
   @form = args[:form]
   @key = args[:key]
   @val = args[:val]
   @fields = args[:fields]
   render
  end

end
