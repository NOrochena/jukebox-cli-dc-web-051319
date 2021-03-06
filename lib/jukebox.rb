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

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |val, index|
    puts "#{index+1}. #{val}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  response_status = false
  
  songs.each_with_index do |val, index|
    if user_response.to_i == (index + 1) || user_response == val
      puts "Playing #{val}"
      response_status = true
    end
  end
  if response_status == false
    puts "Invalid input, please try again"
  end
end

def exit_jukebox()
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  run_response = gets.chomp
  case run_response
  when "help"
    help
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "exit"
    exit_jukebox
  else 
    run
  end
end



