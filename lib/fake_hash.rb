class FakeHashWrapper
    def initialize
        @fhash = {}
    end
    
    def[]=(key, value)
        @fhash[key.to_sym] = value
    end
    
    def[](key)
        @fhash[key.to_sym]
    end
    
    def keys
        map = []
        @fhash.each_key do |key|
            map << key   
        end
        map.sort!.reverse
    end
    
    def first_letter(l)
        map = []
        @fhash.each_key do |key|
            if key.to_s[0] == l
                map << @fhash[key]
            end
        end
        map
    end
    
    def each(&block)
        @fhash.each(&block)
    end
end