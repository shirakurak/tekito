File.open("17/practice/hello.txt") do |io|
    p io.read(5)
    p io.pos
    io.pos = 0
    p io.gets
end