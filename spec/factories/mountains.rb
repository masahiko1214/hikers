FactoryBot.define do
  factory :mountain do
    name                  {'久住山'}
    explanation           {'これは高い山です'}
    elevation              {'2000'}
    level_id              {2}
    time_mountain_id      {2}
    prefecture_id         {2}
    municipality          {'福岡市'}

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
      
    end
  end
end
