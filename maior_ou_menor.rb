# Para da return em uma função RUBY, pode-se colocar 'return' ou apenas
# colocar o valor a ser retornado na ultima linha da função, pois
# RUBY identifica que ele será um return
#======================================================================
# Quando se chama uma função RUBY que possui parametros, 
# pode-se invocar assim:
# func param1, param2 ou func(param1, param2)
# Com ou sem os colchetes.
#======================================================================
# Pode-se colocar break if condicao, então o break vai ser executado 
# se a condição for verdadeira, e não precisa de else nem end
#======================================================================
# array << item -> Adiciona um item a ultima posição do array
# array.size -> mostra o tamanho do array
#======================================================================


def boas_vindas
	puts "Bem vindo ao jogo da adivinhação!"
	puts "Qual é o seu nome?"
	nome = gets.strip
	puts "\n\n\n\n"
	puts "Começaremos o jogo para você, "+ nome
end
	
def sorteia_numero_secreto
	puts "Ecolhendo um número secreto entre 0 e 200..."
	sorteado = 175
	puts "Ecolhido.. que tal adivinhar o nosso número secreto?"
	sorteado
end

def pede_um_numero(chutes, tentativas, limite)
	puts "\n\n\n\n"
	puts "Tentativa "+tentativas.to_s+" de "+limite.to_s
	puts "Números chutados até agora: "+ chutes.to_s
	puts "Escolha um número: "
	chute = gets.strip
	puts "Será que acertou ? Você chutou "+chute
	chute.to_i
end

def verifica_se_acertou(n_secreto, chute)
	acertou = chute == n_secreto
	if acertou
		puts "=========="
		puts " Acertou! "
		puts "=========="
		return true
	end

	maior = n_secreto > chute
	if maior
		puts "=========================="
		puts "O número secreto é maior!"
		puts "=========================="
	else
		puts "=========================="
		puts "O número secreto é menor!"
		puts "=========================="
	end
	false
end

boas_vindas
numero_secreto = sorteia_numero_secreto
limite = 5
chutes = []

for tentativa in 1..limite
	chute = pede_um_numero(chutes, tentativa, limite)
	chutes << chute

	if verifica_se_acertou numero_secreto, chute
		break
	end
end