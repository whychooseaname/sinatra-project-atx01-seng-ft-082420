Cook.destroy_all
Expo.destroy_all
Dish.destroy_all

c1 = Cook.create(name: "Angie C")
c2 = Cook.create(name: "Cameron S")
c3 = Cook.create(name: "Matt R")
c4 = Cook.create(name: "Tieler M")
c5 = Cook.create(name: "Michael P")
c6 = Cook.create(name: "Krystal B")

e1 = Expo.create(name: "Jorge C", description: "With over 20 years of experience, Jorge is our most experienced talent, managing the pass here at the Wine Country Trattoria, and making magic for our guests")


d1 = Dish.create(name: "Aglio e Olio", image: "https://ohmy.disney.com/wp-content/uploads/2011/12/ins_recipes_broccagio_540.jpg", cook_id: c1.id, expo_id: e1.id)
d2 = Dish.create(name: "Spaghetti Bolognese", image: "https://s3-media0.fl.yelpcdn.com/bphoto/f5vc7T88sAfIb_HVO6KrQA/o.jpg", cook_id: c1.id, expo_id: e1.id)
d3 = Dish.create(name: "Shrimp Scampi", image: "https://s3-media0.fl.yelpcdn.com/bphoto/i1v28ek6YFZ0o8yNHkVSjw/o.jpg",cook_id: c2.id, expo_id: e1.id)
d4 = Dish.create(name: "Rib Eye", image: "https://s3-media0.fl.yelpcdn.com/bphoto/vK7kDgQHjpogMUsExt6KJg/o.jpg", cook_id: c3.id, expo_id: e1.id)
d5 = Dish.create(name: "Salmon", image: "https://s3-media0.fl.yelpcdn.com/bphoto/SAfmDHLOTAYCe-_cOZs7Dw/o.jpg", cook_id: c4.id, expo_id: e1.id)
d6 = Dish.create(name: "Lasagna", image: "https://s3-media0.fl.yelpcdn.com/bphoto/2TNSEMTaO6og9f-CGDu2hA/o.jpg", cook_id: c5.id, expo_id: e1.id)
d7 = Dish.create(name: "Chicken Parmesan", image: "https://s3-media0.fl.yelpcdn.com/bphoto/i_CK3P_0rLnMJ50Sp_psaA/o.jpg", cook_id: c6.id, expo_id: e1.id)
d8 = Dish.create(name: "Alla Vongole", image: "https://s3-media0.fl.yelpcdn.com/bphoto/lDphMzIjclMrhMtmU1s_0Q/o.jpg", cook_id: c1.id, expo_id: e1.id)