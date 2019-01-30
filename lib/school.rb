require 'pry'

class School
  attr_reader :name
  attr_accessor :roster, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_by_name = {}
    @roster.each do |grade, student_arr|
      sorted_by_name[grade] = student_arr.sort
      #binding.pry
    end
    sorted_by_name
  end

end

# flatiron = School.new("Flatiron School")

# flatiron.add_student("Jay", 15)
