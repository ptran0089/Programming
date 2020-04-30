def hipsterfy(word)
  vowel_idx = word.rindex(/[aeiou]/)
  word[vowel_idx] = "" if vowel_idx != nil
  word 
end

def vowel_counts(str)
  count = Hash.new(0)
  str.downcase.each_char do |char|
    count[char] += 1 if "aeiou".include?(char)
  end
  count
end

def caesar_cipher(m, n)
  new_str = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  m.each_char.with_index do |char, i|
    if alphabet.include?(char)
      old_idx = alphabet.index(char)
      new_idx = (old_idx + n) % 26
      new_str << alphabet[new_idx]
    else
      new_str << char
    end
  end

  new_str
end