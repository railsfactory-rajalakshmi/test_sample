# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :todo do
    title "MyString"
    details "MyString"
    start_data "2014-09-10 11:05:16"
    expire_date "2014-09-10 11:05:16"
    completed_status ""
  end
end
