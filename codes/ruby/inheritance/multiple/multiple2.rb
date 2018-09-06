#!/usr/bin/ruby -w

module PersonMixin
    def info; puts "my name is #{@name}"; end
end

module MachineMixin
    def info; puts "my serial number: #{@serial}"; end
end

class Person
    include PersonMixin
    def initialize(name)
        @name = name
    end
end

class Machine
    include MachineMixin
    def initialize(serial)
        @serial = serial
    end
end

class Android < Machine
    alias :parentinfo :info
    include PersonMixin
    alias :info2 :info
    def initialize(name, serial)
        super(serial)
        @name = name
    end
    def info
        parentinfo
        info2
    end
end

class Cyborg < Person
    alias :parentinfo :info
    include MachineMixin
    alias :info2 :info
    def initialize(name, serial)
        super(name)
        @serial = serial
    end
    def info
        parentinfo
        info2
    end
end

# ====== main =======
# ===================

p = Person.new("person1")
p.info
puts "====================="
m = Machine.new(21)
m.info
puts "====================="
a = Android.new("android1", 28)
a.info
puts "====================="
c = Cyborg.new("cyborg1", 32)
c.info
puts "====================="
