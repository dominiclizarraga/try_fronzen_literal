def modify_strings
  # Case 1: Direct string mutation
  greeting = "Hello"
  puts "Original greeting object_id: #{greeting.object_id}"
  greeting << " World"
  puts "Case 1 result: #{greeting} (object_id: #{greeting.object_id})"

  # Case 2: String mutation in collection
  words = ["Ruby", "is", "fun"]
  puts "\nOriginal words object_ids: #{words.map(&:object_id)}"
  words.each { |word| word.upcase! }
  puts "Same words after upcase! object_ids: #{words.map(&:object_id)}"
  puts "Case 2 result: #{words.join(' ')}"

  # Case 3: String concatenation with +=
  message = "Starting"
  puts "\nOriginal message object_id: #{message.object_id}"
  5.times { 
    message += "."
    puts "After adding dot: #{message.object_id}"
  }
  puts "Case 3 result: #{message}"
end

puts "Ruby Version: #{RUBY_VERSION}"
modify_strings