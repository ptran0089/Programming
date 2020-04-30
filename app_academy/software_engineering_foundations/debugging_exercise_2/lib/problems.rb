require "byebug"
# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime?(num)
  return false if num < 2
  (2...num).none? { |factor| num % factor == 0 }
end

def largest_prime_factor(num)
  num.downto(2) { |factor| return factor if num % factor == 0 && prime?(factor) }
end

def unique_chars?(str)
  str.each_char.with_index do |char, i |
    next_idx = i + 1
    (next_idx..str.length - 1).each do |num|
      if str[num] == char
        return false
      end
    end
  end
  
  return true
end

def dupe_indices(arr)
  dupes = Hash.new { |h,k| h[k] = [] }
  already_checked = []

  arr.each_with_index do |ele, i|
    next if already_checked.include?(ele)
    next_idx = i + 1

    (next_idx...arr.length).each do |j|
      if ele == arr[j] && !already_checked.include?(ele)
        dupes[ele] << i << j
        already_checked << ele
      elsif ele == arr[j]
        dupes[ele] << j
      end
    end
  end

  dupes
end

def ana_array(arr_1, arr_2)
  hash_1 = Hash.new(0)
  hash_2 = Hash.new(0)

  arr_1.each { |ele| hash_1[ele] += 1}
  arr_2.each { |ele| hash_2[ele] += 1}

  return hash_1 == hash_2
end

