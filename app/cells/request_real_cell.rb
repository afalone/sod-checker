class RequestRealCell < Cell::Rails

 cache :display, :expires_in => 0.seconds

  def display(args)
   @form = args[:form]
   @key = args[:key]
   @val = args[:val]
   @data = args[:data]
   render
  end

end
