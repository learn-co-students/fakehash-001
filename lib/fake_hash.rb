require 'pry'

# Used require_relative. methods []= and []

class FakeHashWrapper

  attr_accessor :fake_hash

  def initialize
    # binding.pry
    @fake_hash = {}
  end

  # setter
  def []=(key, value)
    # binding.pry
    @fake_hash[key] = value
    value
  end

  # getter, checking if key is string/ symbol
  def [](key)
    # binding.pry
     @fake_hash[key.to_s] || @fake_hash[key.to_sym]
  end

  def keys
    all_the_keys = []
    @fake_hash.each do |key, value|
      all_the_keys << key
    end
    all_the_keys.sort.reverse
  end

  def first_letter(letter)
    # binding.pry
    all_start_with_a = []
    @fake_hash.each do |key, value|
      if key[0] == letter
        all_start_with_a << value
      end
    end
    all_start_with_a
  end

  def each
    self.fake_hash.each do |key, value|
      puts value
    end
  end

end
