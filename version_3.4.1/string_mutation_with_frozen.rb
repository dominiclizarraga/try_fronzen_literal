# frozen_string_literal: true

def modify_strings
  # Case 1: String modification using dup
  greeting = "Hello"
  puts "Original greeting object_id: #{greeting.object_id}"
  mutable_greeting = greeting.dup
  puts "Duped greeting object_id: #{mutable_greeting.object_id}"
  mutable_greeting << " World"
  puts "Case 1 result: #{mutable_greeting} (object_id: #{mutable_greeting.object_id})"

  # Case 2: String transformation without mutation
  words = ["Ruby", "is", "fun"]
  puts "\nOriginal words object_ids: #{words.map(&:object_id)}"
  upper_words = words.map(&:upcase)
  puts "Uppercase words object_ids: #{upper_words.map(&:object_id)}"
  puts "Case 2 result: #{upper_words.join(' ')}"

  # Case 3: String concatenation with +
  message = "Starting"
  puts "\nOriginal message object_id: #{message.object_id}"
  result = 5.times.reduce(message) { |msg, _| 
    new_msg = msg + "."
    puts "After adding dot: #{new_msg.object_id}"
    new_msg
  }
  puts "Case 3 result: #{result}"
end

puts "Ruby Version: #{RUBY_VERSION}"
modify_strings