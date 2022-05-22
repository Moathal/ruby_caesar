# frozen_string_literal: true

def cipher(str, moves = 0)
  cipheredtext = ''
  str.each_codepoint do |char_code, temp|
    if char_code.between?(65, 90) || char_code.between?(97, 122)
      temp = char_code < 91 ? char_code - 65 : char_code - 97
      cipheredtext += (char_code + moves - temp) % 26 != 0 ? (temp + ((char_code + moves - temp) % 26)).chr : (char_code + moves).chr
    else
      cipheredtext += char_code.chr
    end
  end
end
