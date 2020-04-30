require "byebug"

def palindrome?(str)
  half = str.length / 2

  (0..half).each do |i|
    if str[i] != str[-(i + 1)]
      return false
    end
  end

  return true
end

def substrings(str)
  sub_str = []
  debugger
  (0..str.length - 1).each do |start_idx|
    debugger
    (start_idx..str.length - 1).each do |end_idx|
      sub_str << str[start_idx..end_idx]
    end
  end

  sub_str
end

def palindrome_substrings(str)
  subs = substrings(str)

  subs.select { |str| str.length > 1 && palindrome?(str) }
end

