3.times do |i|
  puts "Execução número #{i}" if i.even?
end

nomes = ['Daniel Bilar', 'Rafael Bilar', 'Gabriela Bilar', 'Kérolyn Silvério']

nomes.sort.each do |nome|
  puts "Nome: #{nome} - Tamanho: #{nome.length}"
end

puts nomes.reverse
