def pig_latin (word)
  word.downcase
  array = word.split("")
  letterone = word[0]
  if letterone == /[aeiou]/
    return word
  else
    return word.delete(letterone).concat("#{letterone}ay")
  end

end