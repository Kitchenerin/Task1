last_word="<template"
next_word=''

File.open("mddrive.xml").each do |line| #деление строки по символу /n
   line.split.each_with_index do |word, index|
   		if word == last_word
   			next_word = line.split[index + 1]
   			next_word = next_word.chop	 
   			next_word = next_word.sub("name=", "")
   			puts next_word
   		end
   end
end

