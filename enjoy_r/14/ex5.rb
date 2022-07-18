input = "八千七百二十三"

# 基本変換ルール
$h = {
    "一" => "1",
    "二" => "2",
    "三" => "3",
    "四" => "4",
    "五" => "5",
    "六" => "6",
    "七" => "7",
    "八" => "8",
    "九" => "9"
}

def kan2num(input)

    ans = 0
    l = input.length

    # 1の桁
    ans += sumEachDigit(input, 1)

    # 10の桁
    if l == 2
        ans += 10
    end
    if 2 < l
        ans += sumEachDigit(input, 3) * 10
    end

    # 100の桁
    if l == 4
        ans += 100
    end
    if 4 < l
        ans += sumEachDigit(input, 5) * 100
    end

    # 1000の桁
    if l == 6
        ans += 1000
    end
    if 6 < l
        ans += sumEachDigit(input, 7) * 1000
    end

    return ans
end

def sumEachDigit(input, i)
    return $h[input[input.length - i]].to_i
end
    
printf("「%s」を数字に変換すると、「%s」となります\n", input, kan2num(input))