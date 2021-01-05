# frozen_string_literal: true

# Patikrina ar islaikytas egzaminas
class Egzaminas
  def initialize(duomenys)
    @pazimys = duomenys.chomp.to_i
  end

  def tikrinti
    return 'Neteisingai ivesti duomenys.' if @pazimys.negative? || @pazimys > 10
    return 'Egzaminas islaikytas.' if @pazimys > 5 && @pazimys <= 10

    'Egzaminas neislaikytas.'
  end
end

print 'Iveskite pazymi: '
rezultatas = Egzaminas.new(gets)
puts rezultatas.tikrinti
