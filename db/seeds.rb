puts "🌱 Seeding started..."

puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
fb = Company.create(name: "Facebook", founding_year: 2004)
dunder = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
meseeks = Dev.create(name: "Mr. Meseeks")
gazor = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "USB stick", value: 30, company: google, dev: rick)
Freebie.create(item_name: "Tablet 10 inches", value: 50, company: google, dev: morty)
Freebie.create(item_name: "Tablet 8 inches", value: 35, company: google, dev: rick)
Freebie.create(item_name: "Laptop", value: 99, company: fb, dev: meseeks)
Freebie.create(item_name: "Gamer mouse", value: 40, company: fb, dev: morty)
Freebie.create(item_name: "Fitbit", value: 55, company: dunder, dev: gazor)
Freebie.create(item_name: "Smart watch", value: 65, company: enron, dev: rick)

puts "🌱 Seeding done!"
