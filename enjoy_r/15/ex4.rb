def str2hash(str)
    h = Hash.new
    ary = str.gsub(/\s+/, ",").split(',')
    ary.length.times do |i|
        if (i % 2 == 0)
            h[ary[i]] = ary[i+1]
        end
    end

    return h
end

p str2hash("blue 青\twhite 白\nred 赤")
