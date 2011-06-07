class RequestStringCell < Cell::Rails

  def display(args)
   @form = args[:form]
   @data = args[:data]
   @key = args[:key]
   @val = args[:val]
   #@fields = args[:fields]
   render
  end

end
