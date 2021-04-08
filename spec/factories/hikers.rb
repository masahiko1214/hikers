FactoryBot.define do
  factory :hiker do
    name              {'test'}
    email                 {'test@example'}
    password              {'mmm111'}
    password_confirmation {password}
    weight                {60}
    age                   {30}
  end
end