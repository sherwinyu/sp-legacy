# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create(title: 'Hello', body: 'world')
Post.create(title: 'foo', body: 'bar')
Pom.create(description: 'working on emberjs stuff', start_time: DateTime.now, duration1: Time.now, duration2: 25.minutes, reflection: nil)


