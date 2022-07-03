def isPrime(num)
    2.upto(Math.sqrt(num)) do |i|
        if num % i == 0
            return false
        end
    end
    return true
end

def prime?(num)
    if isPrime(num)
        p "素数です"
    else
        p "素数ではありません"
    end
end

prime?(10)
