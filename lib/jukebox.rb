require 'pry'

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

def say_hello(name)
  "Hi #{name}!"
end

def help()
  puts "I accept the following commands:"
  puts "- help  : displays this help message"
  puts "- list  : displays a list of songs you can play"
  puts "- play   : lets you choose a song to play"
  puts "- exit   : exit's this program"
end

def list(songs)
  #lists all songs avalible in the jukebox
  track_number = 1
  songs.each do |song|
    puts "#{track_number}. #{song}"
    track_number += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  binding.pry
  if song_choice.to_i >= 1 && song_choice.to_i <= songs.count
    puts songs[song_choice.to_i - 1]
  else
    output_something = 0
    binding.pry
    songs.each do |song|
      binding.pry
      if song_choice == song
        puts song_choice
        output_something = 1
      end
    end
    binding.pry
    if output_something != 1
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
  "Yes"
end


def run(songs)
  puts "Welcome to the Jukebox!"
  stop = "No"
  until stop == "Yes" do
    puts "Please enter a command:"
    input = gets.chomp
    if input == "play"
      play(songs)
    elsif input == "help"
      help()
    elsif input == "list"
      list(songs)
    elsif input == "play"
      puts "Enter track number"
    elsif input == "exit"
      stop = exit_jukebox
    else
      puts "Invalid input, please try again"
    end
  end
end
