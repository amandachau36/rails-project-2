# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

puts "seeding Users table"

u1 = User.create name:'Isla Eve', email:'ie@ga.co', password:'chicken'
u2 = User.create name:'Tim Code', email:'tc@ga.co', password:'chicken'
u3 = User.create name:'Sara Wu', email:'sw@ga.co', password:'chicken'
u4 = User.create name:'Leonardo Costa', email:'lc@ga.co', password:'chicken'

puts "#{User.all.length} users have been created"

Suburb.destroy_all

puts "seeding Suburb table"

s1 = Suburb.create name:'Newtown'
s2 = Suburb.create name:'Enmore'
s3 = Suburb.create name:'Erskineville'
s4 = Suburb.create name:'Woolloomooloo'
s5 = Suburb.create name:'Potts Point'

puts "#{Suburb.all.length} suburbs have been created"

Comment.destroy_all

puts "seeding comments table"

c1 = Comment.create user: u1, suburb: s1, comment:"Great vegan options"
c2 = Comment.create user: u1, suburb: s3, comment:"Quick walk to Newtown but quieter and cheaper"
c3 = Comment.create user: u2, suburb: s1, comment:"Lively nightlife"
c4 = Comment.create user: u3, suburb: s3, comment:"Lovely community gardens. Would highly recommend for young families"
c5 = Comment.create user: u3, suburb: s4, comment:"Being able to park my yacht in infront my home, means that I get to spend more time on my yacht"
c6 = Comment.create user: u4, suburb: s5, comment:"Awesome nightlife and multicultural eateries"

puts "#{Comment.all.length} comments have been created"

puts "seeding listings table"

Listing.destroy_all

l1 = Listing.create headline:'Luxuriously large terrace promising remarkably tranquil Inner City living', image:'https://bucket-api.domain.com.au/v1/bucket/image/2015397760_1_1_190625_021110-w4567-h3045', address:'Terrace 7/157 St Johns Road, Glebe', latitude: -33.88231, longitude: 151.18335, domain_id: 2015397760

l2 = Listing.create headline: 'Flawless executive design, extraordinary indoor and outdoor living', image:'https://bucket-api.domain.com.au/v1/bucket/image/2015324886_1_1_190604_121715-w5189-h3890', address:'96 Hereford Street, Glebe', latitude: -33.8805351, longitude: 151.182358, domain_id: 2015324886

l3 = Listing.create headline:'Two Dwellings, Double Income Opportunity', image:'https://bucket-api.domain.com.au/v1/bucket/image/2015297723_2_pi_190522_062426-w1024-h683', address:'287 Broadway, Glebe', latitude: -33.8845177 , longitude: 151.192062, domain_id: 2015297723

l4 = Listing.create headline:'A CITYSIDE TREASURE WITH CAPTIVATING VIEWS', image:'https://bucket-api.domain.com.au/v1/bucket/image/2015029918_1_1_190321_122835-w3000-h2000', address:'29 Avona Avenue, Glebe', latitude: -33.8744965, longitude: 151.18457, domain_id: 2015029918

l5 = Listing.create headline:'Modern Architectural Terrace Home In Best Location, Close to Everything You Need', image:'https://bucket-api.domain.com.au/v1/bucket/image/2014551371_16_pi_180810_075553-w2400-h1601', address:'T24 Wentworth Street, Glebe', latitude: -33.8797646, longitude: 151.192871, domain_id:2014551371

puts "#{Listing.all.length} listings have been created"

# Creating each users wishlist (many to many association)
u1.listings << l1 << l2
u2.listings << l1 << l2 << l3
u3.listings << l1 << l2 << l3 << l4
u4.listings << l1 << l2 << l3 << l4 << l5


Token.destroy_all
puts "seeding Token"
t1 = Token.create current_token: "1"
puts "#{Token.all.length} Token have been created"


puts 'Finally done seeding'
