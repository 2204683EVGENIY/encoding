# гем кодировок
require "digest"

puts "Enter a word or phrase for encoding: "
word_or_phrase_for_encoding = $stdin.gets.chomp

puts "How to encoding: "
puts "1. MD5"
puts "2. SHA1"
way_to_encoding = $stdin.gets.to_i

if way_to_encoding == 1
  # метод из гема для кодировки одним из способов
  finish_encoding = Digest::MD5.hexdigest "word_or_phrase_for_encoding"
elsif way_to_encoding == 2
  finish_encoding = Digest::SHA1.hexdigest "word_or_phrase_for_encoding"
else
  puts "Try again later."
end

puts "And we get..."
puts finish_encoding
