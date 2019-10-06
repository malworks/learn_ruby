def translate(word)
  split = word.split(" ")
  alphabet = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alphabet - vowels
  if vowels.include?(word[0])
    word.concat("ay")
  elsif consonants.include?(word[0]) && consonants.include?(word[1])
    word[2..-1] + word[0..1] + 'ay'
  else consonants.include?(word[0])
    word[1..-1] + word[0] + 'ay'
  end
end