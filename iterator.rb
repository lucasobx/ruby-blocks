def three_times
1.upto(3) { |c| yield c }
end

three_times do |n|
  puts "#{n} situp"
  puts "#{n} pushup"
  puts "#{n} chinup"
end

puts ""

#remove o limite de repetições do método anterior
def n_times(n)
  1.upto(n) { |c| yield c }
end

n_times(5) do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end