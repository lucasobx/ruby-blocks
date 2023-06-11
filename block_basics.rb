class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []
#criando 5 objetos flyer e passando para a matriz
1.upto(5) { |n| flyers << Flyer.new("Flyer #{n}", "flyer#{n}@email.com", n * 1000)}

flyers.each { |f| puts "#{f.name} - #{f.miles_flown} miles" }

#acumulando total de milhas voadas
total = 0
flyers.each do |f|
  total += f.miles_flown
end
puts "\nTotal miles flown:'#{total}"
puts "\n"

promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }
#imprimindo promoções
promotions.each { |a, b| puts "Earn #{b}x miles by flying #{a}!" }
puts "\n"

#iterador dentro de iterador imprimindo milhas que cada um ganharia com cada companhia
flyers.each do |f|
  promotions.each do |a, m|
    puts "#{f.name} could earn #{f.miles_flown * m} miles by flying #{a}"
  end
end
puts "\n"

#BÔNUS
#iterador step (possui limite superior e um intervalo)
1.step(9, 2) do |n|
  puts "#{n} situp"
  puts "#{n} pushup"
  puts "#{n} chinup"
  puts "\n"
end