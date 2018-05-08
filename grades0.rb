class Grade

   attr_accessor :notaFinal
   attr_accessor :n1
   attr_accessor :n2
   attr_accessor :n3

	def resultado
		status = ""
		if notaFinal.to_i >= 7
			status = "Aprovado"
		else notaFinal.to_i < 7
			status = "Reprovado"
		end
		puts "#{status}"
		return "#{status}"
	end

  #def calcularMedia(*notas)
  def calcularMedia
      #notaF = (notas.inject(:+))/(notas.count)
    s = n1.to_i + n2.to_i + n3.to_i
    notaF = s / 3
    return notaF
  end

end
