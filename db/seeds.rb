# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#[sourcecode language='ruby']
#cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#Mayor.create(:name => 'Daley', :city => cities.first)
#[/sourcecode]



[User].each { |t| t.delete_all }

["Andy", "Admin"].each { |name| User.create(:name => name) }
