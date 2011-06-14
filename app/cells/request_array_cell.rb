class RequestArrayCell < Cell::Rails
# cache :display do |cell, options|
#  Digest::MD5.hexdigest(options.keys.map(&:to_s).sort.map{|i| [i, options[i]].join(':') }.join(','))
# end
# cache :display_new do |cell, options|
#  Digest::MD5.hexdigest(options.keys.map(&:to_s).sort.join(','))
# end
# cache :display, :expires_in => 0.seconds
# cache :display_new, :expires_in => 0.seconds

  def display(args)
   @key = args[:key]
   @form = args[:form]
   @val = args[:val].try(:"[]", "content")
   @input = args[:input] || {}
   @data = args[:data]
   render
  end

  def display_new(args)
   @key = args[:key]
   @form = args[:form]
   @val = args[:val].try(:"[]", "content")
   @input = args[:input] || {}
   #@data = args[:data]
   render
  end

end
