User.destroy_all

u1 = User.create name:'Jubei Kibagami', email: 'jubei@ga.co', admin: true, password: 'chicken', image: 'https://pbs.twimg.com/profile_images/1566050159/Jubei_eating_a_rice_ball_400x400.jpg'
u2 = User.create name:'The Ultimate Warrior', email: 'ultimate@ga.co', admin: false, password: 'chicken', image: 'https://pbs.twimg.com/profile_images/953353542663917568/xt3zYzOo_400x400.jpg'
u3 = User.create name:'Neil Young', email: 'neil@ga.co', admin: true, password: 'chicken', image: 'https://i2.wp.com/www.backseatmafia.com/wp-content/uploads/2015/03/neil-young-400x400.jpg?fit=400%2C400'

puts "Created #{User.all.length} users."


Region.destroy_all

r1 = Region.create name:'Blue Mountains', image:'https://www.bluemts.com.au/images/sendbinarynews.asp?path=ty4tl7p7.jpg&maxwidth=645'
r2 = Region.create name:'Central Coast', image:'https://prod-us-west.imgix.net/DXWFOO9MBW-XBN-75OHC2/5a93493397679.jpg?w=600&fit=clip&q=80&orient=0&s=9e8830213c557f98572e2e824a9efb6a'
r3 = Region.create name:'Country NSW', image:'https://www.websternolan.com.au/sites/default/files/2D_10.jpg'
r4 = Region.create name:'Hunter Valley', image:'http://www.huntervalleyvisitorcentre.com.au/media/bizlist/images/Hunter-Valley-YHA-Bike-Ride.jpg.900x800_q65.jpg'
r5 = Region.create name:'Lord Howe Island', image:'https://sporteluxe-wp.s3-ap-southeast-2.amazonaws.com/wp-content/uploads/2013/12/Lorde-Howe-Island1.jpg'
r6 = Region.create name:'North Coast', image:'http://www.visitnorthcoast.com.au/wp-content/uploads/2015/11/clarence.jpg'
r7 = Region.create name:'Outback NSW', image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkcUHoRJrJUcVUNDQ2_a9wnZ3ZASHjCEImwnBec8sdw3nQxhUG'
r8 = Region.create name:'Snowy Moutains', image:'https://www.rastanley.com.au/img/products/large/68285.jpg?n=58'
r9 = Region.create name:'South Coast', image:'http://cdn.shopify.com/s/files/1/0818/9531/products/WarrenKeelan_Shellharbour_grande.jpeg?v=1446031888'
r10 = Region.create name:'Family Fun', image:'https://2dbdd5116ffa30a49aa8-c03f075f8191fb4e60e74b907071aee8.ssl.cf1.rackcdn.com/12742145_1469155272.4348.jpg'

puts "Created #{Region.all.length} regions."




Attraction.destroy_all

a1 = Attraction.create name:'South Lawson Waterfall', address: 'Honour Avenue, Lawson NSW 2783', lat:'-33.7', long:'150.4', description: "South Lawson Waterfall Circuit is three kilometres long and traverses South Lawson Park passing four very different waterfalls: Adelina Falls, sand lined Federal Falls, Cataract Falls and Junction Falls - an amphitheatre of cascading water.", image: 'https://assets.atdw-online.com.au/images/d99df79dc872a83e35596e2b54c298fb.jpeg?rect=0,0,2048,1536&w=800&h=600', region_id: 1, tags: "water, forest, trees, hiking, walking, blue mountains"
a2 = Attraction.create name:'Australian Reptile Park', address: 'Pacific Highway, Somersby NSW 2250', lat:'-33.4', long:'151.3', description: "Located on the Central Coast of NSW, approximately one hour north of Sydney and one hour south of Newcastle, is the award winning Australian Reptile Park, renowned to be a great family fun day out.
Get up close with native Australian wildlife including kangaroos, koalas, Tasmanian devils and their resident wombat. Admire cassowaries, dingos, Komodo dragons, and walk with Hugo, their giant Galapagos tortoise.", image:'https://assets.atdw-online.com.au/images/61c14746e7f28e7b898dd7fefd9d7fb4.jpeg?rect=250,0,3788,2848&w=800&h=600', region_id:2, tags:"central coast, wildlife, animals, family, wheelchair"
a3 = Attraction.create name:'Murray Art Museum Albury', address: '546 Dean Street, Albury NSW 2640', lat:'-35.9', long:'147.3', description: "Murray Art Museum Albury (MAMA) re-imagines what a gallery can be. More than a showcase for art, MAMA is an all-encompassing contemporary art experience that balances international touring exhibitions with deep connections to the surrounding regional area and cultural identity.", image:'https://assets.atdw-online.com.au/images/Original__9931665_FC84_Photo_credit_photogrpaher_James_Gallimore_courtesy_of_MAMA_8D2B6063_raw_edit_o5k2njh.jpg?rect=171,0,2731,2048&w=800&h=600', region_id: 3, tags: "country, culture, art"
a4 = Attraction.create name:'All Around the Vines', address:'22 Branxton Street, Nulkaba NSW 2325', lat: '-32.9', long:'151.2', description: "With All Around The Vines, visit smaller boutique style wineries for tastings, and then visit the cheese and chocolate places as well.", image:'https://assets.atdw-online.com.au/images/f69d09866378971ed7327f9272d87182.jpeg?rect=846,0,2049,1537&w=800&h=600', region_id: 4, tags: "hunter valley, wine, culture, wheelchair"
a5 = Attraction.create name:'Mount Gower', address:'Mt Gower, Lord Howe Island NSW 2898', lat:'-31.5', long:'159.1', description:"Standing tall at 875 metres, Mount Gower is Lord Howe's highest mountain. Rated as one of Australia's best day walks, the Mount Gower hike is a challenging eight hour return trek, complete with rope-assisted climbs and dizzying drops.", image:'https://assets.atdw-online.com.au/images/Original__9635772_TNSW_Beaches_LHI_2_im8jbf0.jpg?rect=0,0,2272,1704&w=800&h=600', region_id: 5, tags:"lord howe island, water, beach, family"
a6 = Attraction.create name:'Skywalk Lookout', address:'Corner Dome Road and Lyrebird Lane, Dorrigo Mountain NSW 2453', lat:'-30.3', long:'152.6', description:"Directly connected to Dorrigo Rainforest Centre, Skywalk lookout offers a bird’s-eye view of the surrounding landscape. Perched right on the edge of the escarpment, the views take in Bellinger Valley to the coast with deep valleys and gorges, blanketed in a rich rainforest. If birdwatching is of interest, look for regent bowerbirds, topknot pigeons and grey goshawks.", image:'https://assets.atdw-online.com.au/images/cc1d7bea8f855ffee906f34ea50c22ba.jpeg?rect=158,0,2048,1536&w=800&h=600', region_id: 6, tags: 'walking, hiking, north coast'
a7 = Attraction.create name:'The Living Desert and Sculptures', address:'Off Nine Mile Road, Broken Hill NSW 2880', lat:'-30.6', long:'141.7', description:"Within the Living Desert Reserve are two must see major attractions - the sculptures and the flora and fauna sanctuary.
The Sculptures comprise 12 sandstone artworks which highlight the skyline, all with a story to tell. Located on a majestic hilltop within the centre of the reserve, the sculptures were completed in 1993 by artists from around the world.", image:'https://assets.atdw-online.com.au/images/695c3c8bf87e1a9db4b7fea14d3f68ae.jpeg?rect=131,0,2048,1536&w=800&h=600', region_id: 7, tags: "outback, desert, art, sculptures, wheelchair"
a8 = Attraction.create name:'Mount Kosciuszko Walk', address:'Friday Drive, Thredbo NSW 2625', lat:'-36.5', long:'148.3', description:"If you’re visiting Kosciuszko National Park in the warmer months, a walk to the summit of Mount Kosciuszko is a must-do.
Starting at the top of the Kosciuszko Express chairlift at Thredbo, this popular day walk takes you to the rooftop of Australia. After the scenic chairlift ride, you'll travel past the rocky granite outcrops of Ramshead Range, and through alpine wildflowers (spring). Stop at the lookout for views of the country's highest mountain.", image:'https://assets.atdw-online.com.au/images/023e02c2181fcbc01861251ee74e2562.jpeg?rect=65,0,2048,1536&w=800&h=600', region_id: 8, tags:"snowy mountains, skiing, hiking, walking"
a9 = Attraction.create name:'Killer Whale Trail', address:'Eden NSW 2551', lat:'-37.1', long:'149.9', description:"Take a day trip back in time. When boats were made of wood and men were made of steel!
It's a trail rich with whales and tales of adventure.
This self-drive day tour takes you to five historical sites set in breathtaking natural surrounds around Eden on the Sapphire Coast NSW. Gather fresh produce in Eden for an idyllic picnic at Kiah River inlet at Davidsons Whaling Station, or treat yourself to lunch at the Seahorse Inn - it combines beach front dining with Eden's incredible history.", image:'https://assets.atdw-online.com.au/images/51ba4ffa9921177960a2d910290f4b14.jpeg?rect=335,0,3456,2592&w=800&h=600', region_id:9, tags:"south coast, beach, water, wildlife, animals"
a10 = Attraction.create name:'Western Plains Zoo, Dubbo', address:'Obley Road Taronga Western Plains Zoo, Dubbo NSW 2830', lat: '-32.3', long:'148.6', description:"Experience the ultimate zoofari at Taronga Western Plains Zoo in Dubbo! Whether you walk, drive or ride around the Zoo's five kilometre circuit on hired bikes or carts, there's plenty to see and do.
The Zoo is home to hundreds of rare and endangered animals including giraffes, rhinos, elephants and big cats. Daily keeper activities (included in zoo entry) and special tours deliver magical experiences you will never forget. Tickets are valid for two consecutive days, giving you ample time to experience all that is on offer.", image:"https://assets.atdw-online.com.au/images/54001d4f607bf3d98747f2e43a636534.jpeg?rect=382,0,2891,2168&w=800&h=600", region_id:10, tags: "family, outback, country, wheelchair, animals, wildlife"

# ///////////////////////////////////////////////////////////////////////////////

a11 = Attraction.create name:'Katoomba area', address: 'Blue Mountains National Park
Wentworth Falls NSW 2782', lat:'-33.721494', long:'150.312101', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", image: 'https://www.visitnsw.com/sites/visitnsw/files/styles/gallery_full_width/public/2017-05/Scenic_World%2C_Katoomba.jpeg?itok=RGOFdmuZ', region_id: 1, tags:'blue mountains'


a12 = Attraction.create name:'Scentic World Blue Mountains', address: 'Corner of Violet Street and Cliff Drive Katoomba NSW 2780', lat:'-33.7', long:'150.3', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", image: 'https://assets.atdw-online.com.au/images/b7824d71bab8ab94690f306098db251f.jpeg?rect=156,0,2496,1872&w=800&h=600', region_id: 1, tags:'blue mountains'


a13 = Attraction.create name:'Echo Point ', address: 'Echo Point Road Katoomba NSW 2780', lat:'-33.729625', long:'150.311750', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", image: 'https://assets.atdw-online.com.au/images/998ad8304cd1af6dd325198199d71c2d.jpeg?rect=512,0,2048,1536&w=800&h=600', region_id: 1, tags:'blue mountains'


a14 = Attraction.create name:'Wentworth Falls ', address: 'Wentworth Falls picnic area Wentworth Falls NSW', lat:'-33.724967', long:'150.369552', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", image: 'https://www.visitnsw.com/sites/visitnsw/files/styles/gallery_full_width/public/2017-08/117641-2.jpg?itok=gaMtWKtk', region_id: 1, tags:'blue mountains'


a15 = Attraction.create name:'Blue Mountains Music Festival', address: 'Lurline Street
Katoomba NSW 2780', lat:'-33.707790', long:'150.320316', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", image: 'https://assets.atdw-online.com.au/images/fb44239dbe8ac985022c6790a8c871dc.jpeg?rect=343,0,2052,1539&w=800&h=600', region_id: 1, tags:'blue mountains'


puts "Created #{Attraction.all.length} attractions."






Review.destroy_all

rv1 = Review.create comment:"Climbed today and struck wonderful weather and it could not have been more perfect . Dean and Kayla were very informative and gently shepherded the group during the climb. A great group of people to climb with as well as a surprise marriage proposal on the top of Mt Gower. Very romantic.", user_id:1, attraction_id:5
rv2 = Review.create comment:"This was our second trip to western plains zoo and we walked away very happy that we returned.  We spent approximately 5 hours in the zoo but didnt fit everything in we wanted to as we ran out of time.I'd 100% recommend doing it over two days as you get to enjoy the zoo keeper talks.", user_id:1, attraction_id:10
rv3 = Review.create comment:"We had a perfect day for our climb with Jack guiding us. The weather was mild to cool on top and track not too slippery.  As all the other reviews say, it is not for the faint hearted or the unfit. I think it would be super tough on a hot or wet day.", user_id:2, attraction_id:5
rv4 = Review.create comment:"Really enjoyed it. Informative interesting talks. Animal interaction and plenty to see. You can have your picture taken with a variety of animals, including koalas for a reasonable fee. Definitely worth a visit if passing.", user_id:3, attraction_id:2
rv5= Review.create comment:"I have visited the Sculptures and Living Desert Sanctuary twice now and both times I have enjoyed it immensely. The sculptures should be viewed at different times of the day because they change with the light. Definitely worth the drive out of town.", user_id:3, attraction_id:7

puts "Created #{Review.all.length} reviews."


r1.attractions << a1 << a11 << a12 << a13 << a14 << a15
r2.attractions << a2
r3.attractions << a3
r4.attractions << a4
r5.attractions << a5
r6.attractions << a6
r7.attractions << a7
r8.attractions << a8
r9.attractions << a9
r10.attractions << a10



a5.reviews << rv1 << rv3
a10.reviews << rv2
a2.reviews << rv4
a7.reviews << rv5


u1.reviews << rv1 << rv2
u2.reviews << rv3 << rv4
u3.reviews << rv5
