class RequestEnumCell < Cell::Rails

  def display(args)
   @form = args[:form]
   @data = args[:data]
   @key = args[:key]
   @val = args[:val]
   @enums = args[:enums]
   @avails = @enums.try(:[], @val["type"])
   render
  end

end
