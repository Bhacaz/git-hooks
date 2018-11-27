#!/usr/bin/env ruby

file_path = ARGV.first
puts ''

unless file_path
  puts 'You must provide a file path'
  puts '    Ex: ruby add_frozen_string.rb /path/to/file.rb'
  exit 1
end

puts "Opening: #{file_path}"

f = File.open(file_path, "r+")
lines = f.readlines
f.close

if lines.first == "# frozen_string_literal: true\n"
  puts 'Already there.'
  exit 0
end

lines = ["# frozen_string_literal: true\n\n"] + lines

output = File.new(file_path, "w")
lines.each { |line| output.write line }
output.close

puts 'Done!'
