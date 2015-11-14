class Profile < ActiveRecord::Base
  belongs_to :user

  # validateions
  validates :gender, inclusion: ["male", "female"]
  validate :name_not_both_null
  validate :gender_validation

  def name_not_both_null
  	if first_name.nil? && last_name.nil?
  		errors.add(:first_name, "can't be both null!")
  	end
  end

  def gender_validation
  	if gender === "male" && first_name === "Sue"
  		errors.add(:gender, "gender can't be male when first name is Sue!")
  	end
  end

  def self.get_all_profiles min_birth_year, max_birth_year
  	Profile.order(:birth_year).where("birth_year BETWEEN :min_year AND :max_year", min_year: min_birth_year, max_year: max_birth_year)
  end
end
