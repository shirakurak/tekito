3.times do |i|
    $stdout.puts "#{Random.rand}"
    $stderr.puts "#{i+1}回出力しました"
end

# 以下でリダイレクト
# ruby 17/practice/17-1.rb > 17/practice/log.txt
