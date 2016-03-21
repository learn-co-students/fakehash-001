require 'pry'
class FakeHashWrapper

def initialize
  @fh = {}
  return @fh
end

def []=(key, value)
  @fh[key] = value
end

def [](key)
  if @fh[key] == nil && key.class == Symbol
    @fh[key.to_s]
  elsif @fh[key] == nil && key.class == String
    @fh[key.to_sym]
  else
    @fh[key]
  end
end

def keys
  @fh.keys.sort.reverse
end

def first_letter(letter)
  first_letter_array = []
  fh_keys = []
  fh_keys = @fh.keys.keep_if {|key| key[0] == letter}
  fh_keys.each do |key|
    first_letter_array << @fh[key]
  end

  first_letter_array  

end

def each

  @fh.each do |key, value|
    yield(key, value)
  end

end


end