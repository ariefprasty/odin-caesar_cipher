# frozen_string_literal: true

def caesar_chiper(string, shift)
  result = ''

  # Traverse through each character in the text
  string.each_char do |char|
    if char.match?(/[A-Za-z]/)
      # Determine the ASCII base
      base = char.ord < 91 ? 65 : 97

      # Shift character and wrap around the alphabet
      shifted_char = ((char.ord - base + shift) % 26 + base).chr
      result += shifted_char
    else
      # If it's not an alphabetic character, add it unchanged
      result += char
    end
  end
  result
end

puts caesar_chiper('Hello gaes', 2)
puts caesar_chiper('Jgnnq icgu', -2)
