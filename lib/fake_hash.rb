class FakeHashWrapper
  attr_accessor :hash
  # write code here
  def initialize
    @hash = {}
  end
  def [](key)
    self.hash[key.to_s] || self.hash[key.to_sym]
  end
  def []=(key, value)
    self.hash[key] = value
  end

  def keys
    @hash.keys.sort.reverse
  end

  def first_letter(letter)
    arr = @hash.map {|x,y| y if x.to_s[0] == letter}
    arr.compact!
  end

  def each
     self.hash.each {|x,y| yield(x,y)}
  end
end
