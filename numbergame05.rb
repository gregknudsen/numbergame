# 4-15-2013
# Number game assignment from iTunes U
# Dates mod. 4-16, 4-21, 4-23, 4-26, 4-27
# => Current version with 'current_guess'
# => by Steve M.

class NumberGame

    def get_guess                   # => this method does NOT work (4-27)
      guess = gets.chomp.to_i
    end 

  puts "Who do I have the pleasure of speaking to?"   # Added feature 4-16
    name = gets.chomp
    name.capitalize! # => added 4-23

    min = 50
    max = 75  
    r_num = min + rand(max - min + 1) 

    current_guess = get_guess
    puts "Nice to meet you, #{ name }! Try to guess a number between #{ min } and #{ max }!" 
    current_guess
    
    still_guessing = true 
    while still_guessing    # => comment added 4-18. I'm sure there's a better way to do this,
                            # => Joey, but it's the example he gave.
                            # => 'still_guessing' replaces 'running' 4-21
    

      if current_guess == r_num 
        puts "Great guess! You're right, #{ name }!!"
        still_guessing = false
      
      elsif (current_guess > max) || (current_guess < min)    # => logic added 4-27
        puts "You don't follow directions very well, do you #{ name }?"
        puts "Between #{ min } and #{ max }, please?!"
        current_guess   
      
      elsif current_guess < r_num
        puts "It's higher, #{ name }. C'mon!!! Guess again."
        current_guess 

      elsif current_guess > r_num
        puts "Really, #{ name }?? It's lower. How long must this go on??"
        current_guess 
      end
    end   
end  
  
  puts "Thanks so much for playing!"
  gets
  
