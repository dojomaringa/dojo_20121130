class Nome

	VALOR_PADRAO = 13

	def self.calcula_distancia(nome1, nome2)
		distancia = 0	
		limite = [nome1.size, nome2.size].max - 1
		(0..limite).each do |i|
			distancia += internal_calcula_distancia(nome1[i], nome2[i])
		end

		distancia
	end

	def self.internal_calcula_distancia(char1, char2)
		return VALOR_PADRAO if char1 == nil || char2 == nil 
		return (asc_ignore_case(char1) - asc_ignore_case(char2)).abs
	end

	def self.asc_ignore_case(palavra)
		palavra.upcase.bytes.to_a[0]
	end

	def self.calcula_nome(nome_base, nomes)
		distancias = {}
		nomes.each do |nome|
			distancia = calcula_distancia(nome_base, nome)
			distancias[distancia] = nome
		end
		distancias[distancias.keys.min]
	end
end