class Student < ApplicationRecord
  GENDER = ['Male', 'Female', 'Other'].freeze
  before_create :set_default_status

  scope :student_order,    ->   {order(created_at:  :DESC)}

  def set_default_status
    self.status = 'pending'
  end

  def full_name
    "#{first_name} #{last_name}".titleize
  end

  def name_with_email
    "#{full_name}/#{email}"
  end

  # def coching_set
  #   coching == true
  #   StudentMailer.coching_mail.deliver_now!
  # end

  # def set_default_status
  #   status = 'pending'
  # end
end
