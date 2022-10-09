require 'fibonacci'

describe 'Fibonacci' do
  describe '.size' do
    it "sets default value of size to 0" do
      fib = Fibonacci.new
      expect(fib.size).to eq(0)
    end

    it "sets size during initialization" do
      fib = Fibonacci.new(:size => 2)
      expect(fib.size).to eq(2)
    end
  end

  describe "get series" do
    it "return [] if size < 0" do
      fib = Fibonacci.new(:size => -4)
      expect(fib.getSeries).to eq([])
    end
    
    it "return [] if size 0" do
      fib = Fibonacci.new(:size => 0)
      expect(fib.getSeries).to eq([])
    end
    
    it "return [0] if size 1" do
      fib = Fibonacci.new(:size => 1)
      expect(fib.getSeries).to eq([0])
    end
  
    it "return [0, 1] if size 2" do
      fib = Fibonacci.new(:size => 2)
      expect(fib.getSeries).to eq([0, 1])
    end

    it "return [0, 1, 1] if size 3" do
      fib = Fibonacci.new(:size => 3)
      expect(fib.getSeries).to eq([0, 1, 1])
    end

    it "return [0, 1, 1, 2, 3, 5, 8, 13, 21, 34] if size 10" do
      fib = Fibonacci.new(:size => 10)
      expect(fib.getSeries).to eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34])
    end

    it "return [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, 2971215073, 4807526976, 7778742049] if size 50" do
      fib = Fibonacci.new(:size => 50)
      expect(fib.getSeries).to eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, 2971215073, 4807526976, 7778742049])
    end
  end
end