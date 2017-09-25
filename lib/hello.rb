def hello_t(names)
  if block_given?
    counter = 0
    while counter < names.length
      yield names[counter]
      counter += 1
    end
  else
    puts "No block was given"
  end
end

hello_t(["Tom","Tim","Terry","Joseph"]) do |name|
  if name.starts_with("T")
    puts "hello #{name}"
  end
end
