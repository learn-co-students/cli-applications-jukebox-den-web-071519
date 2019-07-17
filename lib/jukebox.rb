# Add your code here
require "pry"


def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
    songs.each_with_index{|track, index| puts "#{index + 1}. #{track}"}
end

def play(songs)
    puts "Please enter a song name or number:"
    input = gets.chomp
    if input.to_i > 0 && input.to_i < songs.length
        puts "Playing #{list(songs)[input.to_i-1]}"
    elsif list(songs).include?(input)
        puts "Playing #{list(songs).find(input)}"
    else
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    help
    puts "Please enter a command:"
    while true do
    command = gets.chomp
    case command
    when 'list'
        list(songs)
    when 'play'
        play(songs)
    when 'help'
        help()
    when 'exit'
        exit_jukebox
        break
    else
        puts "Please enter a valid command."
    end
end
end