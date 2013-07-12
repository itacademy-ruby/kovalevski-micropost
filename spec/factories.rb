FactoryGirl.define do
  factory :user do
    login "Dmitry Kovalevski"
    email "dk@test.su"
    password "qwerty1"
    password_confirmation "qwerty1"
  end
end