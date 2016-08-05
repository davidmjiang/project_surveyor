class Survey < ActiveRecord::Base
  has_many :num_questions
  accepts_nested_attributes_for :num_questions
end
