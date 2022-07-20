def tail(lines, file)
    queue = Array.new
    open(file) do |io|
        while line = io.gets
            queue.push(line)
            if queue.size > lines
                queue.shift
            end
        end
    end
    queue.each{ |line| print line}
end

