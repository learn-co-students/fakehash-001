class FakeHashWrapper

  # write code here
  attr_accessor :fake_hash

  def initialize
    @fake_hash = {}
  end

  def []=(key,value)
    self.fake_hash[key.to_sym] = value
  end

  def [](key)
    self.fake_hash[key.to_sym]
  end

  def first_letter(letter)
    arr = []
    self.fake_hash.each do |k,v|
      if k.to_s[0] == letter
        arr << v
      end
    end
    return arr
  end

  def keys
    arr = []
    self.fake_hash.each do |k,v|
      arr << k
    end
    return arr.sort do |a,b| b <=> a end
  end

  def each
    self.fake_hash.each { |k, v| yield(k, v) }
  end

end