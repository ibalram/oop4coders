#!/usr/bin/ruby -w

module PersonMixin
    def info; puts "I am a person"; end
end

module MachineMixin
    def info; puts "I am a machine"; end
end

module InitMixin
    def initialize()
        info2 = method(:info).super_method
        if info2 != nil then info2.call end
        info
        moreInfo
    end
    def moreInfo; end
end

class Person include PersonMixin, InitMixin end

class Machine include MachineMixin, InitMixin end

class Android < Machine
    include PersonMixin, InitMixin
    def moreInfo; puts "So, I am an android"; end
end

class Cyborg < Person
    include MachineMixin, InitMixin
    def moreInfo; puts "So, I am an cyborg"; end
end

# ====== main =======
# ===================

p = Person.new
puts "====================="
m = Machine.new
puts "====================="
a = Android.new
puts "====================="
c = Cyborg.new
puts "====================="
