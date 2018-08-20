class Person

    @@nbr = 0

    attr_accessor :luckyNumber #attr_reader, attr_writer
    attr_reader :t, :name
    protected :name

    def initialize(name)
        @name = name
        @num = @@nbr
        @t = "person"
        @luckyNumber = 0
        @@nbr += 1
    end

    def info
        puts "My name: #@name"
        info1
        info2
        puts "My luckyNumber is: #@luckyNumber"
    end

    private
    def info1
        puts "My number: #@num"
    end

    protected
    def info2
        puts "I am a:  #@t"
    end

    public
    def copy (other)
        @luckyNumber = other.luckyNumber
        @name = other.name
        #@num = other.num #can not access num of other
    end

    def other_info (other)
        puts "other info"
        #other.info1 #private
        other.info2
    end
end
