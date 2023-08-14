require_relative '../lib/solver'
describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    # solver = Solver.new
    it 'It return factorial of a given number' do
      factorial = solver.factorial(5)
      expect(factorial).to be(120)
    end
    it 'It should return 1 when input is zero' do
      factorial = solver.factorial(0)
      expect(factorial).to be(1)
    end
    it 'It should return an exception when passed to negative value' do
      expect { solver.factorial(-1) }.to raise_error(RuntimeError, 'Invalid input value')
    end
  end

  describe 'Recerse' do
    it('It reversees the given input value') do
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe 'fizzbuzz' do
    it 'returns fizz' do
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end
    it 'returns buzz' do
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end
    it 'returns fizzbuzz' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end
    it 'It should return the given num' do
      expect(solver.fizzbuzz(13)).to be(13)
    end
  end
end
