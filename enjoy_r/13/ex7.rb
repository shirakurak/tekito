def sum_array(num1, num2)
    result = []
    num1.zip(num2) do |a, b|
        result << a + b
    end
    result
end

p sum_array([1, 2, 3], [4, 6, 8])