class FakeHashWrapper

  # write code here

  def initialize
    @key_array = []
    @normed_array = []
    @value_array = []
  end

#def [](key,value)
#    self[key] = value
 # end

  def []=( key,value)
    @key_array << key
    @normed_array << key.to_s
  #  index = @key_array.index(norm)
    @value_array[@normed_array.index(key.to_s)] = value
  end

  def [](key)
 #  norm = key.to_sym
    @value_array[@normed_array.index(key.to_s)]
  end




  def keys
    @key_array.sort {|x,y| y <=> x}
  end

  def first_letter(letter_of_alphabet)
    array = []
    @normed_array.each do |key|
      if key.split(//).first == letter_of_alphabet
        array << @value_array[@normed_array.index(key)]
      end
    end
    array
  end

  def each
    count = @key_array.count
    index = 0
    count.times do
      key = @key_array[index]
      value = @value_array[index]
      yield(key,value)
      index += 1
    end
  end

end