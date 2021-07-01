# Enter your procedural solution here!
def largest_prime_factor(num)
    newnum = num 
    largest_prime = 0
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