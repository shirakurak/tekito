# Celsius -> Fahrenheit
def cels_to_fahr(temp)
    return temp * 9 / 5.0 + 32
end

# Fahrenheit -> Celsius
def fahr_to_cels(temp)
    return 5 * (temp - 32) / 9.0
end

p fahr_to_cels(118.4)

puts "摂氏 | 華氏"
i = 1
while i <= 100
    j = cels_to_fahr(i)
    puts "#{i} | #{j}"
    i = i + 1
end