# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shop.create(name: "A Baked Joint", neighborhood: "Mount Vernon Square", seating: "Ample", food: "Full menu", wifi: false, outlets: true, address:{"Street" => "440 K NW", "City" => "Washington, DC", "Zip Code" => "20001"}, website: "https://abakedjoint.com/")
Shop.create(name: "The Royal", neighborhood: "LeDroit Park", seating: "Limited", food: "Full Menu", wifi: true, outlets: true, address:{"Street" => "501 Florida Avenue NW", "City" => "Washington, DC", "Zip Code" => "20001"}, website: "http://www.theroyaldc.com/")
Shop.create(name: "Compass Coffee" , neighborhood: "Shaw", seating: "Limited", food: "Grab and Go", wifi: true, outlets: true, address:{"Street" => "1921 8th Street NW", "City" => "Washington, DC", "Zip Code" => "20001"}, website: "https://www.compasscoffee.com/")
Shop.create(name: "Compass Coffee" , neighborhood: "Shaw", seating: "Ample", food: "Grab and Go", wifi: true, outlets: true, address:{"Street" => "1535 7th Street NW", "City" => "Washington, DC", "Zip Code" => "20001"}, website: "https://www.compasscoffee.com/")
Shop.create(name: "Tynan Coffee & Tea" , neighborhood: "Columbia Heights", seating: "Ample", food: "Full menu", wifi: true, outlets: true, address:{"Street" => "1400 Irving Street NW", "City" => "Washington, DC", "Zip Code" => "20010"}, website: "https://tynancoffeeandtea.com/")
Shop.create(name: "Tryst" , neighborhood: "Adams Morgan", seating: "Ample", food: "Full Menu", wifi: true, outlets: true, address:{"Street" => "2459 18th Street NW", "City" => "Washington, DC", "Zip Code" => "20009"}, website: "trystdc.com")
Shop.create(name: "The Wydown" , neighborhood: "14th Street", seating: "Limited", food: "Grab and Go", wifi: false, outlets: true, address:{"Street" => "1924 14th Street NW", "City" => "Washington, DC", "Zip Code" => "20009"}, website: "https://thewydown.com/")
Shop.create(name: "The Coffee Bar" , neighborhood: "Shaw", seating: "Ample", food: "Grab and Go", wifi: true, outlets: true, address:{"Street" => "1201 S Street NW", "City" => "Washington, DC", "Zip Code" => "20009"}, website: "https://www.thecoffeebardc.com")
Shop.create(name: "Slipstream" , neighborhood: "Logan Circle", seating: "Ample", food: "Full Menu", wifi: true, outlets: true, address:{"Street" => "1333 14th Street NW", "City" => "Washington, DC", "Zip Code" => "20005"}, website: "http://slipstreamdc.com/")
Shop.create(name: "Three Fifty Bakery and Coffee Bar" , neighborhood: "U Street", seating: "Limited", food: "Grab and Go", wifi: true, outlets: true, address:{"Street" => "1926 17th Street NW", "City" => "Washington, DC", "Zip Code" => "20009"}, website: "http://threefifty.com/")

User.create(username: "erin", email: "erin@gmail.com", password: "password", name: "Erin", location: "Columbia Heights")


Review.create(content: "Single shot instant steamed rich single shot con panna filter. Barista, half and half milk, pumpkin spice extra half and half aged frappuccino robusta organic. Coffee mug wings spoon, aged sugar crema aftertaste siphon barista robust dripper. Froth foam seasonal aroma medium cream extra.", user_id: 1, shop_id: 2)
Review.create(content: "Eu variety doppio crema to go galão spoon whipped kopi-luwak. Beans, est, pumpkin spice instant viennese, robusta, et frappuccino extraction cappuccino grinder.", user_id: 1, shop_id: 3)
Review.create(content: "Variety aromatic latte turkish cream organic acerbic beans robusta cortado aged cappuccino. Dark skinny wings java that, french press crema decaffeinated beans steamed.", user_id: 1, shop_id: 4)
Review.create(content: "Percolator caffeine and espresso single shot sugar shop caffeine espresso wings a froth. Seasonal, irish filter in crema trifecta espresso cappuccino.", user_id: 1, shop_id: 5)
Review.create(content: "Mazagran aroma, skinny, fair trade crema cultivar et lungo con panna seasonal at crema. Mazagran brewed, whipped, that organic aroma cappuccino extraction café au lait.", user_id: 1, shop_id: 6)
Review.create(content: "Dripper, half and half, black cream blue mountain milk spoon sweet shop redeye. Redeye in aroma redeye ristretto iced body. Shop, acerbic caffeine mocha viennese, caffeine mug cream french press chicory.", user_id: 1, shop_id: 7)
Review.create(content: "Half and half frappuccino mug sweet breve roast rich. Extra, crema seasonal white, froth, beans filter cinnamon froth kopi-luwak siphon variety.", user_id: 1, shop_id: 8)
Review.create(content: "Spoon filter, caffeine percolator arabica and sweet. Iced redeye sugar, a, at, organic wings sweet latte to go so breve. Dark, organic dark decaffeinated aftertaste as decaffeinated to go. Kopi-luwak strong.", user_id: 1, shop_id: 8)
Review.create(content: "Plunger pot eu, cup siphon a con panna fair trade percolator fair trade macchiato. Crema coffee eu, a pumpkin spice a chicory extra skinny seasonal. Ut, body robusta latte breve percolator decaffeinated. Cream spoon, aged instant, ristretto, cortado cinnamon, a caffeine americano affogato java. Blue mountain breve skinny trifecta, percolator irish, instant filter eu dark turkish.", user_id: 1, shop_id: 9)
Review.create(content: "Skinny in whipped, organic kopi-luwak caffeine percolator instant. Black robusta beans, plunger pot café au lait, medium aftertaste and frappuccino plunger pot. Mug kopi-luwak, bar, iced, barista americano qui decaffeinated single origin. Aroma coffee café au lait and extra crema grinder milk. Aroma, aftertaste aged bar to go as qui fair trade espresso roast.", user_id: 1, shop_id: 10)