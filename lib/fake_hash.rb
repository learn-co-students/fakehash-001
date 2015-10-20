require 'pry'

class FakeHashWrapper
  attr_accessor :hash
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
    self.hash.keys.sort.reverse
  end

  def first_letter(letter)
    matching_arr = []
    self.hash.keys.each do |x|
      if x.to_s.start_with?(letter)
        matching_arr << self.hash[x]
      end
    end
    matching_arr
  end

  def each
    self.hash.each { |key, value| self.hash[key] = puts value }
  end
end