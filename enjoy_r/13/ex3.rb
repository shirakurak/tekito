a = (1..100).to_a
a3 = Array.new

a.each do |i|
    if i % 3 == 0
        a3.push(i)
    end
end

(1..100).each do |i|
    if i % 3 != 0
        a.delete(i)
    end
end
