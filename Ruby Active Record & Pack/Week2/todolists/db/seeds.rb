# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Initialize
User.destroy_all
Profile.destroy_all

# Create User
User.create! [
	{ username: "Fiorina", password_digest: "1234"},
	{ username: "Trump", password_digest: "2345"},
	{ username: "Carson", password_digest: "3456"},
	{ username: "Clinton", password_digest: "4567"},
]

# Create Profile for each user
User.find_by(username: "Fiorina").create_profile(gender: "female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina") 

User.find_by(username: "Trump").create_profile(gender: "male", birth_year: 1946, first_name: "Donald", last_name: "Trump") 

User.find_by(username: "Carson").create_profile(gender: "male", birth_year: 1951, first_name: "Ben", last_name: "Carson") 

User.find_by(username: "Clinton").create_profile(gender: "female", birth_year: 1947, first_name: "Hillary", last_name: "Clinton")

# TodoList for each user
User.find_by(username: "Fiorina").todo_lists.create! [
	{ list_name: "fiorinaList", list_due_date: Date.today + 1.year }
]

User.find_by(username: "Trump").todo_lists.create! [
	{ list_name: "trumpList", list_due_date: Date.today + 1.year }
]

User.find_by(username: "Carson").todo_lists.create! [
	{ list_name: "carsonList", list_due_date: Date.today + 1.year }
]

User.find_by(username: "Clinton").todo_lists.create! [
	{ list_name: "clintonList", list_due_date: Date.today + 1.year }
]

# TodoItem for each TodoList
TodoList.find_by(list_name: "fiorinaList").todo_items.create! [
	{ title: "work", due_date: Date.today + 1.year, description: "word hard" },
	{ title: "job", due_date: Date.today + 1.year, description: "find job" },
	{ title: "play", due_date: Date.today + 1.year, description: "play hard" },
	{ title: "sleep", due_date: Date.today + 1.year, description: "sleep well" },
	{ title: "travel", due_date: Date.today + 1.year, description: "travel all over the world" }
]

TodoList.find_by(list_name: "trumpList").todo_items.create! [
	{ title: "work", due_date: Date.today + 1.year, description: "word hard" },
	{ title: "job", due_date: Date.today + 1.year, description: "find job" },
	{ title: "play", due_date: Date.today + 1.year, description: "play hard" },
	{ title: "sleep", due_date: Date.today + 1.year, description: "sleep well" },
	{ title: "travel", due_date: Date.today + 1.year, description: "travel all over the world" }
]

TodoList.find_by(list_name: "carsonList").todo_items.create! [
	{ title: "work", due_date: Date.today + 1.year, description: "word hard" },
	{ title: "job", due_date: Date.today + 1.year, description: "find job" },
	{ title: "play", due_date: Date.today + 1.year, description: "play hard" },
	{ title: "sleep", due_date: Date.today + 1.year, description: "sleep well" },
	{ title: "travel", due_date: Date.today + 1.year, description: "travel all over the world" }
]

TodoList.find_by(list_name: "clintonList").todo_items.create! [
	{ title: "work", due_date: Date.today + 1.year, description: "word hard" },
	{ title: "job", due_date: Date.today + 1.year, description: "find job" },
	{ title: "play", due_date: Date.today + 1.year, description: "play hard" },
	{ title: "sleep", due_date: Date.today + 1.year, description: "sleep well" },
	{ title: "travel", due_date: Date.today + 1.year, description: "travel all over the world" }
]













