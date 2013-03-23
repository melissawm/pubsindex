# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pubs = File.open("#{Rails.root}/db/publicacoes.txt","r").read
data = pubs.split(/\r\n/)

(0..data.size).step(5).each do |i|
  professors_name = data[i][0..-2].split(/,/)
  professors = []
  professors_name.each do |name|
    professors << Professor.find_or_create_by_name(name)
  end
  p = Publication.new
  p.professors = professors
  p.title = data[i+1][0..-2]
  p.journal = data[i+2][0..-2]
  p.year = data[i+3][0..-2]
  p.save
end

