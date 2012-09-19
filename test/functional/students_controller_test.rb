require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { acceptance_of_terms: @student.acceptance_of_terms, address: @student.address, altphone: @student.altphone, birthdate: @student.birthdate, current_health: @student.current_health, email: @student.email, emergency_contact_name: @student.emergency_contact_name, emergency_contact_phone: @student.emergency_contact_phone, how_found: @student.how_found, name: @student.name, phone: @student.phone, prior_experience: @student.prior_experience }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    put :update, id: @student, student: { acceptance_of_terms: @student.acceptance_of_terms, address: @student.address, altphone: @student.altphone, birthdate: @student.birthdate, current_health: @student.current_health, email: @student.email, emergency_contact_name: @student.emergency_contact_name, emergency_contact_phone: @student.emergency_contact_phone, how_found: @student.how_found, name: @student.name, phone: @student.phone, prior_experience: @student.prior_experience }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
