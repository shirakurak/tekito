a = (1..100).to_a

p a.inject(0){ |memo, i| memo += i }
