# frozen_string_literal: true

# Skaiciuoja staciakampio plota ir perimetra
class Staciakampis
  def initialize(krastine1, krastine2)
    @krastine1 = krastine1
    @krastine2 = krastine2
  end

  def plotas
    @krastine1 * @krastine2
  end

  def perimetras
    @krastine1 * 2 + @krastine2 * 2
  end
end

print 'Iveskite staciakampio pirma krastine: '
k1 = gets.chomp.to_i
print 'Iveskite staciakampio antra krastine: '
k2 = gets.chomp.to_i

staciakampis = Staciakampis.new(k1, k2)
puts "Staciakampio plotas: #{staciakampis.plotas}"
puts "Staciakampio perimetras: #{staciakampis.perimetras}"
