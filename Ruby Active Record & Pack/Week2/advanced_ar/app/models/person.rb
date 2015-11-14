class Person < ActiveRecord::Base
	# has to put these has_one, has_many bymyself
	has_one :personal_info, dependent: :destroy
	has_many :jobs
	has_many :my_jobs, class_name: "Job"
	has_and_belongs_to_many :hobbies
	has_many :approx_salaries, through: :jobs, source: :salary_range

	def max_salary
		approx_salaries.maximum(:max_salary)
	end

	def self.ordered_by_first_name
		Person.order(:first_name)
	end

	# take lambda as a block, name scope is similar as class method, but it only return ActionRecord because it can be chained
	scope :ordered_by_age, -> { order age: :desc }
	scope :starts_with, -> (starting_string){ where("first_name LIKE ?", "#{starting_string}%")}
end
