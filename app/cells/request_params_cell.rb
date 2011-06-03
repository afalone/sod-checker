class RequestParamsCell < Cell::Rails

  def display(args)
    @method = args[:method]
    @config = args[:config]
    @form = args[:form]
    #@input = @config["methods"][@method]["input"]
    @input = args[:input]
    @data = args[:data]
    render
  end

  def display_row(args)
    #@method = args[:method]
    @config = args[:config]
    @form = args[:form]
    @input = args[:input] || {}
    @data = args[:data]
    render
  end
end
