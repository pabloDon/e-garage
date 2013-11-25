# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry do
    owner_id 1
    car_id 1
    status_id 1
    comments "MyText"
    hours 1
    departure_date "2013-11-24 03:16:17"
  end
end
