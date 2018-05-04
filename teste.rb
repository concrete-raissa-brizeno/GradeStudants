require_relative './Grades.rb'

describe 'Grade_teste' do
  it 'pessoas abaixo de 7 estao reprovadas' do
    mediaResult = Grade_teste.new()
    expect(mediaResult.calcularMedia([10, 1])).to eq('Reprovado')
  end
end
