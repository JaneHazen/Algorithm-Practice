def pig_latin (word)
  word.downcase
  array = word.split("")
  letterone = word[0]
  if letterone =~ /[aeiou]/
    return word
  else
    return word.delete(letterone).concat("#{letterone}ay")
  end
end

def pig_latin_sentence(sentence)
  words = sentence.split(" ")
  new_sentence = []
  p words
  words.each do |lol|
    new_sentence << pig_latin(lol)
  end
  new_sentence.join(" ")
end