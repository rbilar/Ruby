3.times {
  |i|
  puts "Execução número #{i}" if i%2 == 0
}

nomes = ["Daniel", "Rafael", "Gabriela", "Kérolyn"]

nomes.sort.each {
  |nome|
  puts "Nome: #{ nome } - Tamanho: #{ nome.length }"
}

puts nomes.reverse
