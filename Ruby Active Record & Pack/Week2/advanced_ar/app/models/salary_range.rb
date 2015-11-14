class SalaryRange < ActiveRecord::Base
  belongs_to :job

  # validate not validates
  validate :min_is_less_than_max

  def min_is_less_than_max
  	if min_salary > max_salary
  		errors.add(:min_salary, "can't be greater then maximum salary!")
  	end
  end
end
