# Problem:
# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

# Test cases:


# input:
# text file

# output:
# string - longest sentence in the file and the number of words in that sentence

# rules:
  # Setences may end with . ! or ?
  # Any sequence of characters not spaces or sentence-enders are words

  #Implicit requirements:
  # 

# Algorithm:
# read text file into variable; File.read('sample_text.txt')
# save array of sentences into variable; text.split(/\.|\?|!/)
# use max_by to find largest sentence (ie sentence w/ most words (size))
# strip the largest sentence of any spaces on the end and resave it
# save number of words (size) of largest sentence
# output largest sentence and output its number of words

text = File.read('sample_text.txt')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size
puts "#{largest_sentence}"
puts "contains #{number_of_words} words"
