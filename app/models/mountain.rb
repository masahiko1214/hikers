class Mountain < ApplicationRecord

  
  with_options presence: true do
    validates :name, length: {  maximum: 10 }
    validates :explanation, length: {  maximum: 300 }
    validates :elevation, length: { minimum: 2, maximum: 4 }, numericality: {only_integer: true}
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
