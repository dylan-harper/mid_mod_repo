#
#
#
#
class Student

  attr_reader :name, :age, :scores

  def initialize(info)

  @name = info[:name]
  @age = info[:age]
  @scores = []

  end

  def log_score(result)
    @scores << result
  end

  def grade
    count = @scores.count
    total = 0.0
    @scores.each { |score| total += score }
    average = total / count
    average
  end
end
