# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Create admin account - run rails db:seed
User.create!(
    email: Rails.application.credentials.admin_account[:email],
    password: Rails.application.credentials.admin_account[:password],
    password_confirmation: Rails.application.credentials.admin_account[:password],
    first_name: 'Admin',
    last_name: "Admin",
    admin: true,
    status: nil
  )