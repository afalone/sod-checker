require "ostruct"
def from_as_to_hash(param)
 return param.map{|a| from_as_to_hash(a) } if param.is_a? Array
 return param.inject({}){|r, a| r.merge(a[0] => from_as_to_hash(a[1])) } if param.is_a? Hash
 return param.to_hash.inject({}){|r, a| r.merge(a[0] => from_as_to_hash(a[1])) } if param.is_a? ActiveSupport::HashWithIndifferentAccess
 param
end
class Hash
  # Replacing the to_yaml function so it'll serialize hashes sorted (by their keys)
  #
  # Original function is in /usr/lib/ruby/1.8/yaml/rubytypes.rb
  def to_yaml( opts = {} )
    YAML::quick_emit( object_id, opts ) do |out|
      out.map( taguri, to_yaml_style ) do |map|
        sort.each do |k, v|   # <-- here's my addition (the 'sort')
          map.add( k, v )
        end
      end
    end
  end
end

def mk_struct(fields)
 #return fields if fields.is_a? OpenStruct
 if fields.is_a? Hash
  return OpenStruct.new fields.inject({}){|r, a| r.merge({a[0] => mk_struct(a[1])}) }
 end
 if fields.is_a? Array
  return fields.map{|v| mk_struct(v) }
 end
 fields
end

def mk_clean(fields)
 if fields.is_a? OpenStruct
  return fields
 end
 if fields.is_a? Hash
  puts "fields"
  p fields
  if "hash" == fields["type"]
   return OpenStruct.new fields.inject({}){|r, a| r.merge({a[0] => mk_clean(a[1])}) }
  else
   return OpenStruct.new fields
  end
 end
 if fields.is_a? Array
  return fields.map{|v| mk_clean(v) }
 end
 try("clean_#{fields["type"] || "string"}")
 fields
end

  def clean_array(val)
   mk_clean(val) 
  end

  def clean_hash(val)
   mk_clean(val) 
  end

  def clean_string(val)
   "" 
  end

  def clean_real(val)
   "" 
  end

  def clean_boolean(val)
   false 
  end

  def data_hash(val)
   #val.flatten.each_slice(2).to_h
   val
  end

  def data_array(val)
   val 
  end

  def data_enum(val)
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

  def data_integer(val)
   val
  end

  def data_date(val)
   val
  end

  def data_datetime(val)
   val
  end
module Enumerable
  def to_h
    self.inject({}) do |r, item|
     r.merge item[0] => item[1]
    end
  end
end
