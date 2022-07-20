File.open("17/practice/hello.txt") do |io|
    p io.gets
    io.rewind
    p io.gets   # io.rewindなければ、nil
end