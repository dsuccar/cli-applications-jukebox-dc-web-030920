require 'pry'
require 'spec_helper'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts"I accept the following commands:"
  puts"- help : displays this help message"
  puts"- list : displays a list of songs you can play"
  puts"- play : lets you choose a song to play"
  puts"- exit : exits this program"
end

def list(songs)
songs.each_with_index {|song,index|
  puts "#{index+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if input.to_i >= 1 &&
    input.to_i <= songs.length
    puts "Playing #{songs[input.to_i-1]}"
  elsif
    songs.include?(input)
    puts "Playing #{songs.find{|s| s == input}}"
  else
    puts  "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)

  while true do
    puts "Please enter a command:"
    input = gets.chomp
    if input == "exit"
      exit_jukebox
      break
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    elsif input == "list"
      list(songs)
    else
      puts "Invalid entry"
    end

  end
end





# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# input = gets.strip
#
# puts say_hello(users_name)
