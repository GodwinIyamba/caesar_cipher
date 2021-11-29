def caesar_cipher(string, shift)
    if shift < 0 || shift > 26
        "Not adapted for shifts less than 1 or greater than 26"  
    else
        shiftArray = string.chars.map do |char|
            if ((char.ord > 90 && char.ord < 97) || (char.ord < 65 || char.ord > 122))
                char.chr
            else
                shift_char = char.ord + shift
                if char.ord.between?(65, 90)
                    (shift_char > 90) ? ((shift_char - 90) + 64).chr : shift_char.chr
                elsif char.ord.between?(97, 122)
                    (shift_char > 122) ? ((shift_char - 122) + 96).chr : shift_char.chr
                end
            end
        end
        shiftArray.join('')
    end
end

p caesar_cipher("What a string!", 5)