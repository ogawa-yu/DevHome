class Test
    attr_accessor :data
    attr_accessor :data2
    def initialize
        @data = "A"
        @data2 = 2
    end
end

@test = Test.new
hash = {:test => @test}

puts "#{hash[:test].data}"

