# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "User1", password_digest: "1234", name: "First User", location: "Springfield, MA")
user2 = User.create(username: "User2", password_digest: "abcd", name: "Second User", location: "Atlanta, GA")
user3 = User.create(username: "User3", password_digest: "wxyz", name: "Third User", location: "Los Angeles, CA")

device1 = Device.create(name: "Macbook Pro", storage_size: "500GB", color: "Space Grey")
device2 = Device.create(name: "iPhone X", storage_size: "64GB", color: "Space Grey")
device3 = Device.create(name: "iPad Pro", storage_size: "64GB", color: "Silver")
device4 = Device.create(name: "Playstation 4", storage_size: "1TB", color: "Black")

app1 = App.create(name: "Twitter", description: "Connect in realtime with the world.", category: "Social Media", storage_size: "100MB")
app2 = App.create(name: "Ring", description: "Feel safe with home security.", category: "Home Security", storage_size: "150MB")
app3 = App.create(name: "Gmail", description: "Send emails through Google.", category: "Productivity", storage_size: "50MB")
app4 = App.create(name: "Zoom", description: "Video chat with your friends", category: "Productivity", storage_size: "75MB")
app5 = App.create(name: "Shine", description: "Meditation & Motivation", category: "Health", storage_size: "25MB")
app5 = App.create(name: "Call of Duty", description: "Call of Duty Modern Warfare", category: "Games", storage_size: "100GB")