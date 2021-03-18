class Mountain < ApplicationRecord

  
  has_one_attached :image
  

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :Level

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :time_mountain

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

end
