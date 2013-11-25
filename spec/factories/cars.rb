# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    maker_id 1
    modelo_id 1
    year 1
    color "MyString"
    mileage 1
  end
end
