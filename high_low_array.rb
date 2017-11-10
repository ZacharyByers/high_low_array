require 'colorize'

def find_high_or_low(arr, high_low)
  result = arr.first
  arr.each do |num|
    if num > result && high_low == 'highest'
      result = num
    elsif num < result && high_low == 'lowest'
      result = num
    end
  end

  puts "The #{high_low} number is #{result}.".colorize(:green)
end

input = ARGV
choice = input.shift

num_array = input.map { |el| el.to_i }

case choice.downcase
when 'highest'
  find_high_or_low(num_array, 'highest')
when 'lowest'
  find_high_or_low(num_array, 'lowest')
else
  puts "Invalid input".colorize(:red)
end
