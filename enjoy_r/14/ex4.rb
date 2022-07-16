str = "Ruby is an object oriented programming language"
h = Hash.new

l = str.length
l.times do |i|
    if h.key?(str[i])
        v = h[str[i]]
        h[str[i]] = v + 1
    else
        h[str[i]] = 1
    end
end

sorted = h.sort_by {|s| s[0]}

m = sorted.length
m.times do |i|
    print "'" + sorted[i][0] + "': "

    n = sorted[i][1].to_i    
    n.times do |j|
        print "*"
    end
    
    print "\n"
end
