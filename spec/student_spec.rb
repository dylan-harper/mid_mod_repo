require 'rspec'
require './lib/student'

RSpec.describe Student do
  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end

  it 'creates new student instance' do

    expect(@student).to be_an_instance_of Student
  end

  it 'can call the students name' do

    expect(@student.name).to eq("Morgan")
  end

  it 'knows the students age' do

    expect(@student.age).to eq(21)
  end

  it 'sees an empty scores array in Student instance' do

    expect(@student.scores).to eq([])
  end

  it '#log_score will add scores to students record' do
    @student.log_score(89)
    @student.log_score(78)

    expect(@student.scores).to eq([89, 78])
  end

  it '#grade returns average of all scores' do
    @student.log_score(89)
    @student.log_score(78)

    expect(@student.grade).to eq(83.5)
  end

end
