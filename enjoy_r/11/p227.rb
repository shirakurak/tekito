array = ["Ruby", "Perl", "PHP", "Python"]

sorted = array.sort
p sorted

sorted = array.sort { |a, b| a <=> b}
p sorted

sorted = array.sort { |a, b| b.length <=> a.length}
p sorted