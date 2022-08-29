class StudentMailer < ApplicationMailer
  def create_student_email(student)
    @student = student
    mail(to: 'admin@test.com', subject: "You got a new order!")
  end

  def coching_mail
    mail(to: 'admin@test.com', subject: "coching mail!")
  end
end
