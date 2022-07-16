str = "Ruby is an oriented programming language"
ary = str.split

sorted = ary.sort { |a, b| a.upcase <=> b.upcase }

p sorted