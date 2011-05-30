class RequestParamsCell < Cell::Rails

  def display(args)
    @method = args[:method]
    @config = args[:config]
    @input = @config["methods"][@method]["input"]
    render
  end

end
