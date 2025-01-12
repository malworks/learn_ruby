def translate(string)
  split = string.split(" ")
  alphabet = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alphabet - vowels
  new_string = split.map do |word|
    if vowels.include?(word[0])
      word.concat("ay")
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      word[3..-1] + word[0..2] + 'ay'
    elsif word[1..2].chr == "q"
      word[3..-1] + word[0..2] + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) || word[0].chr == "q"
      word[2..-1] + word[0..1] + 'ay'
    else consonants.include?(word[0])
      word[1..-1] + word[0] + 'ay'
    end
  end
  new_string.join(" ")
end