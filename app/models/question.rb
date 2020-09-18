class Question < ApplicationRecord

	has_many :answers, :dependent => :destroy
	belongs_to :user
  accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:answer].blank? }, :allow_destroy => true

end
