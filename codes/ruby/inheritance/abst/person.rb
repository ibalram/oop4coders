class Person

    def initialize()
        if self.class == Person then
            raise "Abstract class"
        end
    end

    def info
        puts "====INFO===="
        info2
    end

    def info2
        raise "abstract method"
    end

end
