# Example_1:

class School
  attr_reader :name, :students

  def initialize(name:nil, students:nil)
    @name = name
    @students = students
  end
end

RSpec.describe School do
  school = School.new(name: 'Beverly Hills High School', students: [])
  
  it 'has a name' do
    expect(school.name).to eq('Beverly Hills High School')
  end

  it 'should start off with no students' do
    expect(school.students).to eq([])
  end
end


# Example_2:

class School
  attr_reader :name, :students

  def initialize(name)
    @name = name
    @students = []
  end
end

RSpec.describe School do
  
  it 'has a name' do
    school = School.new('Beverly Hills High School')
    expect(school.name).to eq('Beverly Hills High School')
  end

  it 'should start off with no students' do
    school = School.new('Notre Dame High School')
    expect(school.students).to eq([])
  end
end