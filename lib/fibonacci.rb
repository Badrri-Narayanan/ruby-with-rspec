class Fibonacci
  attr_accessor :size
  
  def initialize(options={})
    @size=options[:size] || 0
  end

  def getSeries
    series = [0,1]
    if @size <= 0
      series = []
    elsif @size == 1
      series = series.first(1)
    elsif @size > 2
      (2..@size-1).each do |i|
        series[i] = series[i-1] + series[i-2]
      end
    end
    series
  end
end