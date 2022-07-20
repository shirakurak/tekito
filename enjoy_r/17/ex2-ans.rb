def reverse1(input)
    open(input, "r+") do |f|
        lines = f.readlines
        f.rewind
        f.truncate(0)
        f.write lines.reverse.join()
    end
end

def reverse2(input)
    open(input, "r+") do |f|
        lines = f.readlines
        f.rewind
        f.truncate(0)
        f.write lines[0]
    end
end

def reverse3(input)
    open(input, "r+") do |f|
        lines = f.readlines
        f.rewind
        f.truncate(0)
        f.write lines.reverse[0]
    end
end

