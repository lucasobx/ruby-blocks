def three_times
1.upto(3) { |count| yield count }
end

three_times do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end