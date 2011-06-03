class RequestArrayCell < Cell::Rails

  def display(args)
   @key = args[:key]
   @form = args[:form]
   @val = args[:val].try(:"[]", "content")
   @input = args[:input] || {}
   @data = args[:data]
   #@input = input["content"] || {}
   render
  end

end
