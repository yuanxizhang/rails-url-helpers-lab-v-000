class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end
<<<<<<< HEAD

  def activate
    set_student
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
=======
  
  def activate 
    
>>>>>>> 88b873bf961eb565f7f3438d4b2accacae689194
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end