def echo(msg)
  "#{msg}"
end

def shout(msg)
  "#{msg.upcase}"
end

def repeat(msg, n = 2) 
  ([msg] * n).join " " 
end

def start_of_word(word, n)
  n = n - 1
  word[0..n]
end

def first_word(word)
  arr = word.split(' ')
  arr[0]
end

def titleize(str)
  str = str.split
  little_words = ["and", "the", "a", "over"]
  str.each do |word|
    unless little_words.include?(word)
      word.capitalize!
    end
  end
  str[0].capitalize!
  str.join(" ")
end