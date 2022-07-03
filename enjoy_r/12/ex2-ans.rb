def fahr2cels(fahr)
    return (fahr.to_f - 32) * 5.0 / 9.0
end

1.upto(100) do |i|
    print i, " ", fahr2cels(i), "\n"
end