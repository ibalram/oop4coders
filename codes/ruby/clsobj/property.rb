#!/usr/bin/ruby -w

class Rectangle

    def initialize
        @width, @height = 0, 0
    end

    def w
        @width + 2
    end

    def h
        @height + 1
    end

    def w=(value)
        if value < @width
            @height = value
        else
            @height = @width
            @width = value
        end
    end

    def info
        puts "Width: #@width, Height: #@height"
    end

end

r = Rectangle.new
r.w = 50
r.w = 20
r.info
puts "w: #{r.w}, h: #{r.h}"
