FactoryBot.define do
  factory :mountain do
    name                  {'久住山'}
    explanation           {'これは高い山です'}
    elevation              {'2000'}
    level_id              {2}
    time_mountain_id      {2}
    prefecture_id         {2}
    municipality          {'福岡市'}
  end
end
