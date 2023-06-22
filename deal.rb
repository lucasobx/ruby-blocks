def deal(n)
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  if block_given?
    n.times do
      random_face = faces.sample
      random_suit = suits.sample
      score = yield random_face, random_suit
      puts "You scored a #{score}!"
    end
  else
    puts "No deal!"
  end
end

deal(5) do |face, suit| 
  puts "Dealt a #{face} of #{suit}"
  face.length + suit.length
end

puts ""

def progress
  0.step(by: 10, to: 100) do |n|
    yield n
  end
end

progress { |percent| puts percent }