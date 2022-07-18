def word_capitalize(str)
    str[0] = str[0].upcase

    str.gsub(/-./) do |matched|
        matched.upcase
    end
end

p word_capitalize("abc-xyz-uuu")    # OK
p word_capitalize("X-MAIWE-uuu")    # NG