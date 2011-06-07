require "ostruct"
def mk_struct(fields)
 if fields.is_a? Hash
  return OpenStruct.new fields.inject({}){|r, a| r.merge({a[0] => mk_struct(a[1])}) }
 end
 if fields.is_a? Array
  return fields.map{|v| mk_struct(v) }
 end
 fields
end

  def data_hash
   {}
  end

  def data_array
   []
  end

  def data_string
  end

  def data_boolean
  end

  def data_real
  end


