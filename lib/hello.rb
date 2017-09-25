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

hello_t(names) do |name|
  if name.start_with("T")
    puts "hello #{name}"
  end
end
