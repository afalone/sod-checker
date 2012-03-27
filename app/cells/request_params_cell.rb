#encoding utf-8
class RequestParamsCell < Cell::Rails

 #cache :display, :expires_in => 0.seconds
# cache false
# cache :label, :expires_in => 0.seconds
# cache :display_new, :expires_in => 0.seconds
# cache :display_row, :expires_in => 0.seconds

# cache :display do |cell, options|
#  Digest::MD5.hexdigest(options.keys.map(&:to_s).sort.map{|i| [i, options[i]].join(':') }.join(','))
# end
# cache :display_new do |cell, options|
#  Digest::MD5.hexdigest(options.keys.map(&:to_s).sort.join(','))
# end
# cache :display_row do |cell, options|
#  Digest::MD5.hexdigest(options.keys.map(&:to_s).sort.join(','))
# end

  def label(args)
   @val = args[:val]
   @key = args[:key]
    render
  end

  def display(args)
   puts "cache is #{ActionController::Base.perform_caching}"
   parameters(args)
   @method = args[:method]
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
    @enums = args[:enums]
  end
end
