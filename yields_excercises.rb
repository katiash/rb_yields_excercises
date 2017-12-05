def test
    yield(5)
    puts "You are in the method test"
    yield(100)
end

test {|i| puts "You are in the block #{i}"}

def square(num)
    puts "num is #{num}"
    x = yield(num)
    puts "x has a value of #{x}"
    y = yield(num)*x
    puts "y has a value of #{y}"
end

square(5) {|i| i*i}
