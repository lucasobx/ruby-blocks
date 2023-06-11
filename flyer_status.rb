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
puts flyers.any? { |f| f.status == :platinum}
puts ""
#identifica o primeiro flyer bronze
puts flyers.detect { |f| f.status == :bronze}