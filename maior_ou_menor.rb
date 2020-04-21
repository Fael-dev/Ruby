puts "Bem vindo ao jogo da adivinhação!"
puts "Qual é o seu nome?"
nome = gets

puts "\n\n\n\n"

puts "Começaremos o jogo para você, "+ nome

puts "Ecolhendo um número secreto entre 0 e 200..."
numero_secreto = 175

# COMENTARIO EM LINHA
=begin
	Comentário de várias linhas	
=end
puts "Ecolhido.. que tal adivinhar o nosso número secreto?"

puts "\n\n\n\n"

limite = 5

for tentativa in 1..limite
	puts "\n\n"
	puts "Tentativa "+tentativa.to_s+" de "+limite.to_s
	puts "Escolha um número: "
	chute = gets

	puts "Será que acertou ? Você chutou "+chute
	acertou = chute.to_i == numero_secreto

	if acertou
		puts "=========="
		puts " Acertou! "
		puts "=========="
		break
	else 
		puts "Errou!"
		maior = numero_secreto > chute.to_i
		if maior
			puts "=========================="
			puts "O número secreto é maior!"
			puts "=========================="
		else
			puts "=========================="
			puts "O número secreto é menor!"
			puts "=========================="
		end
		
	end
end