def help
puts "I accept the following commands:"
puts "- help: displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end


def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songs.each_with_index do |val, index|
    if input.to_i == index.to_i + 1
      puts "Playing #{val}"
    elsif input == val
      puts "Playing #{val}"
    else
      puts "Invalid input, please try again"
    end
  end
end


def list(songs)
  songs.each_with_index {|val, index| puts "#{index+1}. #{val}"}
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  while input != "exit"
    if input == "list"
      list(songs)
    elsif input == "help"
      help
    elsif input == "play"
      play(songs)
    end
  end
  exit
end
