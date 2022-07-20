# できてない

def reverseContents(file)

    ary = Array.new
    File.open(file) { |io|
        io.each(file) { |line|
            ary = line.split(/\n/)
        }
    }

    ary.reverse!
    p ary

    ary.each do |str|
        File.write("17/sample2.txt", str + "\n", str.length)
    end
end

reverseContents("17/sample1.txt")