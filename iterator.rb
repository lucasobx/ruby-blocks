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

puts ""

#recriando método times
class Integer
  def times
    i = 0
    while i < self
      yield i
      i += 1
    end
  end
end

5.times { |n| puts "#{n} Echo!" }

puts ""

class Array
  def each
    i = 0
    while i < self.size
      yield self[i]
      i += 1
    end
    self
  end
end

weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
puts weekdays.each { |d| puts d }.map { |d| d.upcase}