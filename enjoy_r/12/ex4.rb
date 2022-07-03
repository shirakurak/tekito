def dice()
    return Random.rand(6) + 1
end

def dice10()
    sum = 0
    10.times do |i|
        sum += dice()
    end
    sum
end

p dice10()