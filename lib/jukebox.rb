def help 
    puts "I accept the following commands:"
    puts " - help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs) 
     songs.each_with_index { |val, index| puts "#{index +1}. #{val}"}
end

def play(songs) #This method was acting super wacky when I used .each_with_index to compare val and index.. something I dont understand?
    puts "Please enter a song name or number:"
     res = gets.chomp
    if !songs[res.to_i]
        puts "Invalid input, please try again"
    elsif res.to_i.to_s == res
        puts "Playing #{songs[res.to_i - 1]}"
    elsif songs.include?(res)
        puts "Playing #{res}"
      else
        puts "Invalid input, please try again"
  end
end

def response
    gets.chomp
end

def exit_jukebox
    puts "Goodbye"
end

def ask_for_command
    puts "Please enter a command:"
end

def run(songs)
    help
    loop do
        ask_for_command
        input = response
        if input == "list"
            list(songs)
        elsif input == "play"
            play(songs)
        elsif input == "help"
            help
        elsif input == "exit"
            break
        end
    end     
    exit_jukebox
end

# def run #old run method before reworking
#     songs = [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
#     ] 
#     help
#     ask_for_command
#     input = response
#     while input != "exit"
#         case input
#         when "list"
#             list(songs)
#             ask_for_command
#             input = response
#         when "play"
#             play(songs)
#             ask_for_command
#             input = response
#         when "help"
#             help
#             ask_for_command
#             input = response
#         end
#     end
#     exit_jukebox
# end
