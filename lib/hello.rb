# def hello_t(names)
#   if block_given?
#     counter = 0
#     while counter < names.length
#       yield names[counter]
#       counter += 1
#     end
#   else
#     puts "Hey! No block was given!"
#   end
#   names
# end
# 
# hello_t(["Tom","Tim","Terry","Joseph"]) do |name|
#   if name.start_with?("T")
#     puts "hello #{name}"
#   end
# end

def hello_t(array)
  if block_given?
    i = 0
 
    while i < array.length
      yield(array[i])
      i = i + 1
    end
 
    array
  else
    puts "Hey! No block was given!"
  end
end

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end