cards = ["Jack", "Queen", "King", "Ace", "Joker"]
#upcase, length e embaralha cada elemento
cards.shuffle.each { |c| puts "#{c.upcase} - #{c.length}" }
puts ""
scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}
scores.each { |n, s| puts "#{n} scored a #{s}!" }