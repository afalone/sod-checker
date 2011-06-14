class RequestBooleanCell < Cell::Rails

# cache :display, :expires_in => 0.seconds

  def display(args)
   @form = args[:form]
   @key = args[:key]
   @val = args[:val]
   # need apply defaults
   @data = args[:data]
   render
  end

end
