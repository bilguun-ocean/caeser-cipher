require 'pry-byebug'

# Ceaser cipher that fully works also negative indices and decoding/encoding
def ceaser_cipher(string, shift)
  input_ordinals = string.codepoints

  result = input_ordinals.map do |ordinal|
    if ordinal.between?(65, 90)
      if ordinal + shift > 90
        (65 + (ordinal + shift - 90) - 1).chr
      elsif ordinal + shift < 65
        (90 + (ordinal + shift - 65) + 1).chr
      else
        (ordinal + shift).chr
      end

    elsif ordinal.between?(97, 122)
      if ordinal + shift > 122
        (97 + (ordinal + shift - 122) - 1).chr
      elsif ordinal + shift < 97
        (122 + (ordinal + shift - 97) + 1).chr
      else
        (ordinal + shift).chr
      end
    else
      (ordinal).chr
    end
  end
  result.join
end

ceaser_cipher("What a string!", 5)