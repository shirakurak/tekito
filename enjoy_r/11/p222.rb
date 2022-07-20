ary = ["a", "b", "c"]

# ブロック変数に渡される個数はメソッドによる
ary.each {|obj| p obj}
ary.each_with_index do |obj, idx|
    p [obj, idx]
end