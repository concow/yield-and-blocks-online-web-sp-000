def hello_t(array)
  if block_given?             #
    i = 0                     #initialize counter
    while i < array.length    #while condition
      yield(array[i])         #
      i += 1                  #increment
    end

    array                     #
  else
    puts "Hey! No block was given!"
  end
end

#call method here!
  #ruby lib/hello.rb in terminal
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
