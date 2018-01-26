require 'pry'

class FakeHashWrapper

  attr_accessor :k, :v
  # write code here
  def initialize
    @k = []
    @v = []
  end

  def []=(k, v)
    if @k.find_index(k.to_sym) != nil
      @v[@k.find_index(k.to_sym)] = v
    else
      @k.push(k.to_sym)
      @v.push(v)
    end
  end

  def [](k)
    if @k.find_index(k.to_sym) != nil
      @v[@k.find_index(k.to_sym)]
    else
      nil
    end
  end

  def keys
    @k.sort{ |x,y| y <=> x }
  end

  def first_letter(letter)
    vals = []
    @k.each_with_index do |k, index|
      if k.to_s.split('').first == letter
        vals << @v[index]
      end
    end
    vals
  end

  def each(&block)
    @k.each_with_index do |k, index|
      block.call(k, @v[index])
    end
  end
end