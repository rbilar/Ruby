def listar( livros )

  classificacoes = Hash.new {0}

  livros.values.each.sort { |classificacao|
    classificacoes[classificacao] += 1
  }

  return classificacoes

end

livros = {}

livros["Livro A"] = :Adoravel
livros["Livro B"] = :Adoravel
livros["Livro C"] = :Não_gostei
livros["Livro D"] = :Até_que_vai
livros["Livro E"] = :Até_que_vai

s = listar livros

s.each { |key, val|
    puts "Critica: #{key} - Quantidade: #{val}"
}
