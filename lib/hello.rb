#Yield each successive element to an accompanying block. That block used a parameter placeholder,
#|name|, to set a variable, name, equal to whatever value is yielded into the block at each step of the iteration

def hello_t(array)
  if block_given?             #block_given? method continues if true false if no block present in method
    i = 0                     #initialize counter
    while i < array.length    #while condition
      yield(array[i])         #yield each element of collection array to the block
        i += 1                  #increment
    end

    return array                     #returns original array. By having it be last line of this method
  else
    puts "Hey! No block was given!"
  end
end

#call method here!
  #ruby lib/hello.rb in terminal
#hello_t(["Tim", "Tom", "Jim"]) do |name|
  #if name.start_with?("T")
    #puts "Hi, #{name}"
  #end
#end
