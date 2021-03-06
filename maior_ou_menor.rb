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
	puts "Começaremos o jogo para você, #{nome} "
end

def pede_dificuldade
	puts "Qual nível de dificulade você prefere?"
	puts "1 - Fácil: 0 á 30 \n2 - Normal: 0 á 60 \n3 - Difícil: 0 á 100 \n4 - Impossível: 0 á 150 \nSe não escolher: 0 á 200 "
	puts "Escolha um número de dificulade de 1 a 4."
	dificulade = gets.to_i
end 
	
def sorteia_numero_secreto(dificulade)

	case dificulade
		when 1 # PODE COLOCAR 1..2 entre 1 e dois ou qualquer outro numero
			maximo = 30
		when 2
			maximo = 60
		when 3
			maximo = 100
		when 4
			maximo = 150
		else
			maximo = 200
	end

	puts "Ecolhendo um número secreto entre 0 e #{maximo}..."
	sorteado = rand(maximo) + 1
	puts "Ecolhido.. que tal adivinhar o nosso número secreto?"
	sorteado
end

def pede_um_numero(chutes, tentativas, limite)
	puts "\n\n\n\n"
	puts "Tentativa #{tentativas} de #{limite}"
	puts "Números chutados até agora: #{chutes}"
	puts "Escolha um número: "
	chute = gets.strip
	puts "Será que acertou ? Você chutou: #{chute} "
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

def jogar(dificulade)
	numero_secreto = sorteia_numero_secreto(dificulade)
	limite = 5
	chutes = []
	pontos_iniciais = 1000

	for tentativa in 1..limite
		chute = pede_um_numero(chutes, tentativa, limite)
		chutes << chute
		pontos_a_perder = (chute - numero_secreto).abs / 2.0
		pontos_iniciais -= pontos_a_perder
		if verifica_se_acertou numero_secreto, chute
			break
		end
	end

	puts "Você terminou o jogo com: #{pontos_iniciais}"
end

def nao_quero_jogar?
	puts "Deseja jogar novamente?(S/N)"
	jn = gets.strip
	nao_quero = jn.upcase == "N"
end

boas_vindas
dificulade = pede_dificuldade

loop do
	jogar(dificulade)
	if nao_quero_jogar? # A interrogação serve para identificar que vai receber um boolean
		break
	end
end



