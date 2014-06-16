require "pig_latin/version"
require 'pry-byebug'

module PigLatin
  # Your code goes here...
@@ending = "ay"

  def self.translate(phrase)
    words = phrase.split(" ")
    translated_words = words.map do |word|
      if checkY(word)
        translate_with_consonant(word)
      elsif vowel_is_first(word)
        translate_with_vowel(word)
      else
        translate_with_consonant(word)
      end
    end
    translated_phrase = translated_words.join(" ")
    translated_phrase

  end


  def self.vowel_is_first(word)
    return true if word =~ /^[aeiou]/i
    return false
  end

  def self.translate_with_vowel(word)
    word + "w" + @@ending
  end

  def self.translate_with_y(word)
    split_y = word =~ /[y]/i 
    second_y_seg = word[0,split_y]
    first_y_seg = word[split_y,word.size]
    return first_y_seg + second_y_seg + @@ending
  end

  def self.translate_with_consonant(word)
    self.transform(word) + @@ending
  end

  def self.transform(word)
    if word =~ /\A[y]/i 
      split_location = word =~ /[aeiou]/i
      second_segment = word[0,split_location]
      first_segment = word[split_location,word.size]
      return first_segment + second_segment
    else
      split_location = word =~ /[aeiouy]/i
      second_segment = word[0,split_location]
      first_segment = word[split_location,word.size]
      return first_segment + second_segment
    end
  end

  def self.checkY(word)
    word =~ /\A[y]/i 
  end


end
