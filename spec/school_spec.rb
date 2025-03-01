require 'rspec'
require 'pry'
require './lib/school'

RSpec.describe School do
  context 'Iteration 1' do
    it 'exists' do
      school = School.new('9:00', 7)

      expect(school).to be_a(School)
    end

    it 'has a start time' do
      school = School.new('9:00', 7)

      expect(school.start_time).to eq('9:00')
    end

    it 'has hours in a school day' do
      school = School.new('9:00', 7)

      expect(school.hours_in_school_day).to eq(7)
    end

    it 'starts with no student names' do
      school = School.new('9:00', 7)

      expect(school.student_names).to eq([])
    end
  end

  context 'Iteration 2' do
    it 'can add student names' do
      school = School.new('9:00', 7)

      school.add_student_name('Aurora')
      school.add_student_name('tim')
      school.add_student_name('megan')

      expect(school.student_names).to eq(['Aurora', 'tim', 'megan'])
    end

    it 'can calculate end time' do
      school_1 = School.new('9:00', 7)
      school_2 = School.new('9:00', 3)
      # binding.pry
      expect(school_1.end_time).to eq('16:00')
      expect(school_2.end_time).to eq('12:00')
    end
  end

  context 'Iteration 3' do
    # Add your own tests that follow the interaction pattern for Iteration 3
    it 'can determine if school is full time' do
      school = School.new('9:00', 7)
      expect(school.is_full_time?).to eq(true)
    end

    it 'can capitalize student names' do
      school = School.new('9:00', 7)
      school.add_student_name('Aurora')
      school.add_student_name('tim')
      school.add_student_name('megan')
      # binding.pry
      expect(school.standard_student_names).to eq(["Aurora", "Tim", "Megan"])
    end
  end

  context 'Iteration 4' do
    # Add your own tests that follow the interaction pattern for Iteration 4
    it 'can convert end time to 12 hr clock time' do
      school_1 = School.new('9:00', 7)
      school_2 = School.new('9:00', 4)
      # binding.pry
      expect(school_1.convert_end_time_to_clock_time).to eq("4:00")
      expect(school_2.convert_end_time_to_clock_time).to eq("1:00")
    end
  end
end
