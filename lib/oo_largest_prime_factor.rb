# Enter your object-oriented solution here!
class LargestPrimeFactor
    attr_accessor :input, :largest_prime

    def initialize(input)
        @input = input
    end

    def number
        newnum = input
        possible_factor = 2

        while possible_factor**2 <= newnum
            if newnum % possible_factor == 0
                newnum /= possible_factor
                largest_prime = possible_factor
            else
                possible_factor += 1
            end
        end
        largest_prime = newnum unless largest_prime >= newnum
        largest_prime
    end
end
