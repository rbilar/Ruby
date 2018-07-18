class Book
  attr_accessor :title, :theme, :author, :pages

  def initialize(title, theme, author, pages = 0)
    @title = title[0..255]
    @theme = theme
    @author = author
    @pages = pages
  end

  def print
    puts " Title: #{@title} \n Theme: #{@theme} \n Author: #{@author} \n Pages: #{@pages}"
  end
end

book1 = Book.new('O Guia do Mochileiro Das Galáxias', :Ficção, 'Douglas Adams', 321)
book1.print

book2 = Book.new('Diário da minha vida', :Baseado_Em_Fatos_Reais, 'Rafael Bilar')
book2.print
