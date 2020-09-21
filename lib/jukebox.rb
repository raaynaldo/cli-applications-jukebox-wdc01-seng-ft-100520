# Add your code here
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index{ |val,index|
    puts "#{index + 1}. #{val}"
  }
end

def play(songs)
  require "pry"
  puts "Please enter a song name or number:"
  song = gets.strip
  # binding.pry
  if Integer(song, exception: false)
    if song.to_i > 0 && song.to_i <songs.size
      # binding.pry
      puts "Playing #{songs[song.to_i-1]}"
    else
      puts "Invalid input, please try again a"
    end
  else
    if songs.index(song)
      # binding.pry
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again b"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.chomp

  if command == exit
    exit_jukebox()
  elsif command == "help"
    help()
  end

end

# songs = [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapman - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ]
# play(songs)
