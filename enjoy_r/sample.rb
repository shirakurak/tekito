a = (1..100).to_a
a4 = a.select{|i| i % 3 == 0}
p a4