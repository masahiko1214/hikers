class Mountain < ApplicationRecord

  
  with_options presence: true do
    validates :name
    validates :explanation
    validates :elevation
    validates :image
    validates :municipality
    end

    with_options numericality: { other_than: 1 } do
      validates :level_id
      validates :time_mountain_id
      validates :prefecture_id
    end
  


  has_one_attached :image
  has_many :trekkings

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :level

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :time_mountain

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture


  


end
