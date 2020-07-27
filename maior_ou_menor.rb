def da_boas_vindas()
    puts "Bem vindo ao Jogo da Adivinhação."
    puts "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
    puts "Qual é o seu nome?"
    nome = gets
    puts "\n"

    puts "Começaremos o jogo para você, " + nome
    puts "\n"
end

def sorteia_numero_secreto()
    puts "Escolhendo um número secreto entre 0 e 200"
    sorteado = 175

    puts "Número escolhido, que tal adivinha-lo?"

    sorteado
end

def pede_numero(tentativa, limite_de_tentativas)
    puts "\n"
    puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    puts "Entre com o seu número"
    chute = gets
    
    puts "\n"
    puts "Será que acertou? Você chutou " + chute
    puts "\n"

    chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute    
    if acertou
        puts "Acertou!"

        return true
    end

    maior = numero_secreto > chute
    if maior
        puts "O número secreto é maior."
        puts "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
        puts "\n"
    else
        puts "O número secreto é menor."
        puts "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
        puts "\n"
    end
    return false
end

da_boas_vindas()

numero_secreto = sorteia_numero_secreto()

limite_de_tentativas = 5
for tentativa in 1..limite_de_tentativas
    chute = pede_numero(tentativa, limite_de_tentativas)

    if verifica_se_acertou(numero_secreto, chute)
        break
    end
end

puts "\n"
puts "\n"

