class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

#seleciona flyers com 3000 milhas ou mais
freq_flyers = flyers.select { |f| f.miles_flown >= 3000 }
puts freq_flyers
puts ""
#rejeita flyers com 3000 milhas ou mais
infreq_flyers = flyers.reject { |f| f.miles_flown >= 3000 }
puts infreq_flyers
puts ""
#verifica se algum flyer é platinum
puts flyers.any? { |f| f.status == :platinum }
puts ""
#identifica o primeiro flyer bronze
puts flyers.detect { |f| f.status == :bronze }
puts ""
#divide entre platinum e o resto
platinum_flyers, other_flyers = flyers.partition { |f| f.status == :platinum }
puts "Platinum Flyers:"
puts platinum_flyers
puts "Other Flyers:"
puts other_flyers
puts ""
#retorna nome e status
name_tags = flyers.map { |f| "#{f.name} (#{f.status.upcase})" }
puts name_tags
puts ""
#distância total de cada flyer convertida em km
totals_km = flyers.map { |f| f.miles_flown * 1.6 }
puts totals_km
puts ""
#distância total acumulada
total_miles = flyers.reduce(0) { |s, f| s + f.miles_flown }
puts "Total miles flown: #{total_miles}"
puts ""
#distância total acumulada em km
total_km = totals_km.reduce(:+)
puts "Total km flown: #{total_km}"
puts ""
#total de km percorridos por bronze
total_bronze_km = flyers.select { |f| f.status == :bronze }.map { |f| f.miles_flown * 1.6}.reduce(:+)
puts total_bronze_km
puts ""
#flyer com mais milhas
top_flyer = flyers.max_by { |f| f.miles_flown }
puts "Top Flyer: #{top_flyer}"