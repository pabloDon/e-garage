# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :log_car do
    desc "MyString"
    owner_id 1
    car_id 1
    entry_id 1
  end
end
