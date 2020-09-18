class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :questions
         has_many :answers
         has_many :topics

  def full_name
    "#{self.first_name}"  "#{self.last_name}"
  end
end
