class RequestEnumCell < Cell::Rails

  def display(args)
   @form = args[:form]
   @data = args[:data]
   @key = args[:key]
   @val = args[:val]
   @enums = args[:enums]
   puts "---enums"
   p @enums
   @avails = @enums
   render
  end

end
