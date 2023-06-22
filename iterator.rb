def three_times
1.upto(3) { |n| yield n }
end

three_times do |n|
  puts "#{n} situp"
  puts "#{n} pushup"
  puts "#{n} chinup"
end