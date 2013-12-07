FactoryGirl.define do
  factory :user do
    username     "MMouse"
    fname	"Michael"
    lname	"Mouse"
    email    "mmmouse@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end