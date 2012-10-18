# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
BlogPost.destroy_all
Video.destroy_all

puts 'Old data destroyed.'

kordt = User.new(first_name: 'Kordt', last_name: 'Larsen', email: 'kordt@me.com', password: 'foobar', password_confirmation: 'foobar')
kordt.admin = true
kordt.save

puts 'Users created.'

BlogPost.create(title: 'Kordt writes', content: 'Just finished another writing assignment and feeling good.', display: false)
BlogPost.create(title: 'Kordt directs', content: 'Check out this new video I did. I used this cool lighting technique.', display: true)
BlogPost.create(title: 'Kordt produces', content: 'Finished the final edits on this plastic surgery shoot, and I learned a lot.', display: true)
BlogPost.create(title: 'Kordt works', content: 'Just had coffee with Em, and we worked on our computers together. Such a good time!', display: false)

puts 'Blog Posts created.'

Video.create(title: 'GitSetGo', link: 'http://vimeo.com/46240886', description: 'This is Emily describing her GitSetGo website that she built.', writer: true, director: false, producer: true, display: true)
Video.create(title: 'Cats in Tanks', link: 'http://vimeo.com/23608259', description: 'These are some cats in tanks.', writer: false, director: true, producer: true, display: true)
Video.create(title: 'Young Kittens', link: 'http://vimeo.com/24801093', description: "They're just 4 1/2 weeks old!", writer: true, director: false, producer: true, display: true)
Video.create(title: 'Cute Kittens', link: 'http://vimeo.com/1053647', description: "They're friends!", writer: true, director: false, producer: true, display: true)
Video.create(title: 'Kittens Playing', link: 'http://vimeo.com/957065', description: "They're playing!", writer: true, director: false, producer: true, display: true)

puts 'Videos created.'