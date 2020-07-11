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

tentativas = 3

for tentativas in 1..3 do
    
    puts "\n"
    puts "Tentativa " + tentativas.to_s
    puts "Entre com o seu número"
    chute = gets
    
    puts "\n"
    puts "Será que acertou? Você chutou " + chute
    puts "\n"
    
    acertou = numero_secreto == chute.to_i
    
    if acertou
        puts "Acertou!"
    else
        maior = numero_secreto > chute.to_i
        if maior
            puts "O número secreto é maior."
        else
            puts "O número secreto é menor."
        end
    end
    
end

puts "\n"
puts "\n"

