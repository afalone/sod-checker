require "ostruct"
def mk_struct(fields)
 return fields if fields.is_a? OpenStruct
 if fields.is_a? Hash
  puts "fields"
  p fields
  return OpenStruct.new fields.inject({}){|r, a| r.merge({a[0] => mk_struct(a[1])}) }
 end
 if fields.is_a? Array
  return fields.map{|v| mk_struct(v) }
 end
 fields
end

  def data_hash(val)
   #val.flatten.each_slice(2).to_h
   val
  end

  def data_array(val)
   val 
  end

  def data_string(val)
   val
  end

  def data_boolean(val)
   val
  end

  def data_real(val)
   val
  end

module Enumerable
  def to_h
    self.inject({}) do |r, item|
     r.merge item[0] => item[1]
    end
  end
end
