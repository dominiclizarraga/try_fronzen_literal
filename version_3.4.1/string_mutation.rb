# frozen_string_literal: true

def modify_strings
  # Case 1: Direct string mutation
  greeting = "Hello"
  greeting << " World"
  puts "Case 1 result: #{greeting}"

  # Case 2: String mutation in collection
  words = ["Ruby", "is", "fun"]
  words.each { |word| word.upcase! }
  puts "Case 2 result: #{words.join(' ')}"

  # Case 3: String concatenation with +=
  message = "Starting"
  5.times { message += "." }
  puts "Case 3 result: #{message}"
end

puts "Ruby Version: #{RUBY_VERSION}"
modify_strings