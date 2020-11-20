# to use, you may have to install the faker gem, by 
# using "gem install faker" in the CLI


require 'faker'
require 'colorize'

puts "Hello!".colorize(:green)

loop do puts "Would you like a fact about Chuck Norris? (y/n)".colorize(:green)
    input = gets.strip
    if input == "y"
        puts Faker::ChuckNorris.fact.colorize(:blue)
    elsif input == "n"
        system "clear"
        puts "Goodbye".colorize(:green)
        break loop
    end
end




