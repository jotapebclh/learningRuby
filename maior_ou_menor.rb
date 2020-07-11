puts "Bem vindo ao Jogo da Adivinhação."
puts "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
puts "Qual é o seu nome?"
nome = gets
puts "\n"

puts "Começaremos o jogo para você, " + nome
puts "\n"

puts "Escolhendo um número secreto entre 0 e 200"
numero_secreto = 175

puts "Número escolhido, que tal adivinha-lo?"
puts "\n"

puts "Tentativa 1"
puts "Entre com o seu número"
chute = gets
puts "Será que acertou? Você chutou " + chute

puts chute.to_i == 175





