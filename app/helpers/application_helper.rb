module ApplicationHelper

  def date_formatted(date)
    date.strftime("%d %B %y")
  end

  def student_respect(gender)
    if gender == 'Male'
      "Mr."
    elsif gender == 'Female'
      "Mrs."
    else
      " "
    end
  end
end
