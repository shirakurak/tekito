a = (1..100).to_a

# aの要素を100倍した要素の配列
a2 = Array.new
a.each do |i|
    a2.push(a[i-1]*100)
end
# a2 = collect{ |i| i * 100 }

# aの要素を100倍して置き換える
a.collect!{ |item| item * 100 }
