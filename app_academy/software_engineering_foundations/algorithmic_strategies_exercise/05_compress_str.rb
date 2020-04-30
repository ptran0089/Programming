# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
  new_str = ""
  count = 1

  str.each_char.with_index do |char, i|
    next_char = str[i + 1] 
    if char == next_char
      count += 1
    elsif char != next_char
      new_str << count.to_s << char
      count = 1 
    end
  end

  new_str.gsub("1", "")
end


p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippiiiii")   # => "mi2si2si2pi"
