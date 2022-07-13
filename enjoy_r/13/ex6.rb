ary = (1..100).to_a
result = Array.new

10.times do |i|
    result << ary[10*i..(10*(i+1)-1)]
end

p result
