namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    admin = User.create!(username: "Example User",
                 fname: "Example User",
                 lname: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin: true)

    99.times do |n|
      username  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(username: username,
                   fname: username,
                   lname: username,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end