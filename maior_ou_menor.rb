puts "Bem vindo ao jogo da adivinhação!"
puts "Qual é o seu nome?"
nome = gets

puts "\n\n\n\n"

puts "Começaremos o jogo para você, "+ nome

puts "Ecolhendo um número secreto entre 0 e 200..."
numero_secreto = 175

puts "Ecolhido.. que tal adivinhar o nosso número secreto?"

puts "\n\n\n\n"

puts "Tentativa 1"
puts "Escolha um número: "
chute = gets

puts "Será que acertou ? Você chutou "+chute
if chute.to_i == numero_secreto
	puts "Acertou !"
else 
	puts "Errou!"
end