class RequestHashCell < Cell::Rails

 cache :display, :expires_in => 0.seconds

  def display(args)
   @key = args[:key]
   @form = args[:form]
   @val = args[:val].try(:"[]", "content")
   @input = args[:input] || {}
   @data = args[:data]# || OpenStruct.new
   render
  end

end
