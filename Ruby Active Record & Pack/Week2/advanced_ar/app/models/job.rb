class Job < ActiveRecord::Base
  belongs_to :person
  has_one :salary_range

  # be careful validates not validate
  validates :title, :company, presence: true
end
