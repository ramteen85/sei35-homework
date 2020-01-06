class SimpleSums
    def initialize number
        @number = number
    end

    def number
        @number
    end

    def s1
        @number % 2
    end

    def s2
        sum_s2 = (@number * (@number + 1)) / 2
        sum_s2
    end

end

sum = SimpleSums.new(4)

p sum.number
p sum.s1
p sum.s2


# def sequence_one number
#     x = 0
#     result = 0
#     while x < number
#         result += 1 - 1
#         x+=1
#     end
#     return result
# end

# def sequence_two number
#     x = 1
#     result = 0
#     while x <= number
#         result += x
#         x+=1
#     end
#     return result
# end