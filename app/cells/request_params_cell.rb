class RequestParamsCell < Cell::Rails

  def display(args)
    parameters(args)
    @method = args[:method]
    #@input = @config["methods"][@method]["input"]
    render
  end

  def display_row(args)
    #@method = args[:method]
    parameters(args)
    render
  end

  def display_new(args)
    parameters(args)
    #@method = args[:method]
    render
  end

 protected
  def parameters(args)
    @config = args[:config]
    @form = args[:form]
    @input = args[:input] || {}
    @data = args[:data]
  end
end
