scores = [83, 71, 92, 64, 98, 87, 75, 69]
high_scores = scores.select { |s| s > 80 }
p high_scores

low_scores = scores.reject { |s| s > 80 }
p low_scores

puts scores.any? { |s| s < 70 }

scores_doubled = scores.map { |s| s*2 }
p scores_doubled

total = scores.reduce(:+)
puts "Total score: #{total}"

evens, odds = scores.partition { |s| s.even? }
puts "Evens: #{evens}"
puts "Odds: #{odds}"