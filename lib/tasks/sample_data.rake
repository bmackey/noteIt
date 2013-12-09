namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    admin = User.create!(username: "Example User",
                 fname: "Example User",
                 lname: "Example User",
                 course_id: "Unselected",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin: true)

    99.times do |n|
      username  = Faker::Name.name
      course_id = "Unselected"
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(username: username,
                   fname: username,
                   lname: username,
                   course_id: course_id,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      star_rating = "1"
      users.each { |user| user.posts.create!(content: content,
                                              star_rating: star_rating) }
    end


    Course.create!(course_id: "WD011", name: "Multimedia", duration: "4")
    Course.create!(course_id: "WD012", name: "Information Technology", duration: "3")
    Course.create!(course_id: "WD013", name: "Software Systems Development", duration: "4")
    Course.create!(course_id: "WD014", name: "Entertainment Systems", duration: "2")
    Course.create!(course_id: "WD015", name: "Applied Computing", duration: "4")

    Project.create!(project_id: "P1234", name: "Project 1", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P1235", name: "Project 2", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P1236", name: "Project 3", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P1237", name: "Project 4", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P2234", name: "Project 5", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P2235", name: "Project 6", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P2236", name: "Project 7", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P2237", name: "Project 8", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P2231", name: "Project 9", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P2232", name: "Project 10", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P2233", name: "Project 11", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P2234", name: "Project 12", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P1334", name: "Project 13", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P1335", name: "Project 14", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P1336", name: "Project 15", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P1337", name: "Project 16", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P1294", name: "Project 17", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P1295", name: "Project 18", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P1296", name: "Project 19", description: "This project aims to descibe the link between blah and blah")
    Project.create!(project_id: "P1297", name: "Project 20", description: "This project aims to descibe the link between blah and blah")

  end
end

