require_relative "./grades0.rb"

describe Grade do
   describe "#grade" do
      it "abaixo de 7 reprovadas" do
         GradesRep = Grade.new
         GradesRep.notaFinal = 6
         expect(GradesRep.resultado).to eq("Reprovado")
      end

      it "acima de 7 reprovadas" do
         GradesAp = Grade.new
         GradesAp.notaFinal = 8
         expect(GradesAp.resultado).to eq("Aprovado")
      end
   end

   describe "#avg" do
      it "average for 3 numbers" do
         GradesAvg = Grade.new
         GradesAvg.n1 = 6
         GradesAvg.n2 = 4
         GradesAvg.n3 = 2
         expect(GradesAvg.calcularMedia).to eq(4)
      end
   end

end
