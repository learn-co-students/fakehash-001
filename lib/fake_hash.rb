class FakeHashWrapper

  def initialize
    @hash = {}
  end

  def []=(key, value)
      @hash[key] = value
  end

  def [](key)
    unless @hash.include?(key)
      if key.class == Symbol
      @hash[key.to_s]
      else
      @hash[key.to_sym]
      end
    else
      @hash[key]
    end

  end

  def keys
    @hash.keys.sort.reverse
  end

  def first_letter(letter)
    arr = []
    @hash.each do |k, v| if k[0] == letter
      arr << v
      end
    end
      arr
  end

  def each
    @hash.each {|k, v|
      yield k, v
    }

  end

end