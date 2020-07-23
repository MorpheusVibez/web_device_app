# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "User1", password: "1234", name: "First User", location: "Springfield, MA")
user2 = User.create(username: "User2", password: "abcd", name: "Second User", location: "Atlanta, GA")
user3 = User.create(username: "User3", password: "wxyz", name: "Third User", location: "Los Angeles, CA")

device1 = Device.create(name: "Macbook Pro", storage_size_in_GB: 500, color: "Space Grey")
device2 = Device.create(name: "iPhone X", storage_size_in_GB: 64, color: "Space Grey")
device3 = Device.create(name: "iPad Pro", storage_size_in_GB: 64, color: "Silver")
device4 = Device.create(name: "Playstation 4", storage_size_in_GB: 1000, color: "Black")

app1 = App.create(name: "Twitter", description: "Connect in realtime with the world.", category: "Social Media", storage_size_in_MB: 100)
app2 = App.create(name: "Ring", description: "Feel safe with home security.", category: "Home Security", storage_size_in_MB: 150)
app3 = App.create(name: "Gmail", description: "Send emails through Google.", category: "Productivity", storage_size_in_MB: 50)
app4 = App.create(name: "Zoom", description: "Video chat with your friends", category: "Productivity", storage_size_in_MB: 75)
app5 = App.create(name: "Shine", description: "Meditation & Motivation", category: "Health", storage_size_in_MB: 25)
app5 = App.create(name: "Call of Duty", description: "Call of Duty Modern Warfare", category: "Games", storage_size_in_MB: 100000)