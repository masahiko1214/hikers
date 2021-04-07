class Hiker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :trekkings

          with_options presence: true do
          validates :name
          validates :password,format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i } 
          with_options length: { minimum: 2, maximum: 3 }, numericality: {only_integer: true} do
            validates :age
            validates :weight
           end
          end
      




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
