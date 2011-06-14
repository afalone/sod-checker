class RequestStringCell < Cell::Rails

 cache :display, :expires_in => 0.seconds

  def display(args)
   @form = args[:form]
   @data = args[:data]
   @key = args[:key]
   @val = args[:val]
   render
  end

end
