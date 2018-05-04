class Grade

	def initialize(nome)
		@@nome = ""
		@@notas = Array.new
	end

	def calcularMedia()
		 	if @@notas.length > 0
				@@notas = (@@notas.inject(:+))/(@@notas.length)
			else
				@@notas = 0
	 	end
	 	puts  @@notas
	end

	def addArray(item)
		@@notas.push(item)
	end

	def resultado
		status = ""
		if @@notas >= 7
			status = "Aprovado"
		else @@notas < 7
			status = "Reprovado"
		end
		return status
	end
end

media1 = Grade.new("Raissa")
media1.addArray(4)
media1.addArray(10)
media1.calcularMedia()
