class Time < ActiveHash::Base
  self.data = [
   { id: 1, name: '--' },
   { id: 2, name: '30分未満' },
   { id: 3, name: '30分〜1時間' },
   { id: 4, name: '1時間〜2時間' },
   { id: 5, name: '2時間〜3時間' },
   { id: 6, name: '3時間〜4時間' },
   { id: 7, name: '4時間〜5時間' },
   { id: 8, name: '5時間〜6時間' },
   { id: 9, name: '６時間〜7時間' },
   { id: 10, name: '7時間以上' },
   
  ]

  include ActiveHash::Associations
  has_many :mountains
end