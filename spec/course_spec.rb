require 'rspec'
require './lib/student'
require './lib/course'


RSpec.describe Course do
  before(:each) do
    @course = Course.new("Calculus", 2)
  end

  it 'returns the course name' do

    expect(@course.name).to eq("Calculus")
  end

  it 'returns course capacity' do

    expect(@course.capacity).to eq(2)
  end

  it 'returns empty students array' do

    expect(@course.students).to eq([])
  end

  it '#full? returns false if course is not full' do

    expect(@course.full?).to be false
  end

  it '#enroll adds student instance to class' do
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    @course.enroll(student1)
    @course.enroll(student2)

    expect(@course.students).to eq([student1, student2])
  end

  it '#full? returns true if course is full' do
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    @course.enroll(student1)
    @course.enroll(student2)

    expect(@course.full?).to be true
  end
end
