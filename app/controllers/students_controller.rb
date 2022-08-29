class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy, :update_status]
  #before_action :update_status, only: [:set_student]

  def index
    @students = Student.student_order
  end

  def show; end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    #StudentMailer.create_student_email(@student).deliver_now!
    if params[:student][:coching] == "1"
      StudentMailer.coching_mail.deliver_now!
    end
    if @student.save
      redirect_to @student, notice: "Student created successfully"
    else
      render :new
    end
  end

  def edit; end

  def update
    if @student.update(student_params)
      redirect_to students_path
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path
  end

  def update_status
    if params[:status].present?
      if @student.update(status: params[:status])
      redirect_to students_path
      end
    end
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :contact, :address, :gender, :coching, :status)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
