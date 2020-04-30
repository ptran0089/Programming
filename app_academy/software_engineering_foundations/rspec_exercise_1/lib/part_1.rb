def average(num1, num2)
  (num1 + num2) / 2.to_f
end

def average_array(arr)
  arr.sum / arr.length.to_f
end

def repeat(str, num)
   str * num
end

def yell(str)
  str.upcase << "!"
end

def alternating_case(sentence)
  
  new_sent = sentence.split(" ").map.with_index do |word, i|
    if i.odd?
      word.downcase 
    else
     word.upcase
    end
  end
  new_sent.join(" ")
end