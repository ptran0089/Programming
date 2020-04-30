def partition(arr, num)
  new_arr = [[], []]
  
  arr.each do |ele|
    ele < num ? new_arr[0] << ele : new_arr[1] << ele
  end

  new_arr
end

def merge(hash1, hash2)
  new_hash = {}
  hash1.each { |k, v| new_hash[k] = v }
  hash2.each { |k, v| new_hash[k] = v }
  
  new_hash
end

def censor(sentence, arr)
  censored = sentence.split(" ").map do |word|
    if arr.include?(word.downcase)
      word.gsub(/[aeiou]/i, "*")
    else
      word
    end
  end

  censored.join(" ")
end

def power_of_two?(num)
  return true if num == 1
  
  factor = num / 2.0
 
  if factor == 2.0
    return true
  elsif factor % 2.0 != 0.0
    return false
  else
    power_of_two?(factor)
  end
end