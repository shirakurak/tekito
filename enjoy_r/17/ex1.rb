def countLines(path)
    cnt = 0
    io = File.read(path)

    io.each_line do |line|
        line.chomp!
        cnt += 1
    end

    cnt
end

p countLines("17/sample1.txt")

def countWords(path)
    cnt = 0
    io = File.read(path)
    str = io.gsub(/\s/, " ")
    ary = str.split(" ")
    ary.length
end

p countWords("17/sample1.txt")

def countCharacters(path)
    cnt = 0
    io = File.read(path)

    io.each_char do |ch|
        if /\s/ !~ ch
            cnt += 1
        end
    end

    cnt
end

p countCharacters("17/sample1.txt")
