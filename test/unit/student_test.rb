require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  test "checking acceptance of terms should allow saving of student" do
    student = students(:one)
    assert student.save
  end
  
  test "failure to check terms of service won't allow saving of student" do
    student = students(:two)
    assert !student.save
  end


end
