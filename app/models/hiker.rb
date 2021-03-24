class Hiker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :trekkings


def  calorie_easy
  weight*6

end

def calorie_normal
  weight*7
end

def calorie_hard
  weight*8
end

end
