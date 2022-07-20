text = "Hello, Ruby!\n"
File.write("17/practice/hello.txt", text)
p File.read("17/practice/hello.txt")
File.write("hello.txt", "!", 5)
p File.read("hello.txt")

