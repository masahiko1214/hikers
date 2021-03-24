class Mountain < ApplicationRecord

  
  has_one_attached :image
  has_many :trekking

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :level

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :time_mountain

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

end
