HouseType.create!([
  {codename: 'residential', fullname: 'Residential - Single Family', picture: '', price: 219},
  {codename: 'commercial', fullname: 'Commercial', picture: '', price: 219},
  {codename: 'business', fullname: 'Business', picture: '', price: 219},
  {codename: 'lots', fullname: 'Lots', picture: '', price: 219}
])

Category.create!([
  {name: "exterior_options"},
  {name: "photo_options"},
  {name: "plan_options"},
  {name: "domain_options"}
])
ext   = Category.where("name = 'exterior_options'").first.id
photo = Category.where("name = 'photo_options'").first.id
plan  = Category.where("name = 'plan_options'").first.id
domain= Category.where("name = 'domain_options'").first.id

Option.create!([
  {category_id: ext, codename: 'no_ext_walk' , fullname: 'No Exterior WALKINTOUR', picture: '', price: 0},
  {category_id: ext, codename: 'ext_walk' , fullname: 'Add Exterior WALKINTOUR (+100)', picture: '', price: 100},
  {category_id: photo, codename: 'no_photo' , fullname: 'No Still Photo', picture: '', price: 0},
  {category_id: photo, codename: 'eco_photo' , fullname: 'Add 30 Economic Photos at 3D WALKINTOUR resolution (+10.00)', picture: '', price: 10},
  {category_id: photo, codename: 'dslr_photo' , fullname: 'Add 30 HDR DSLR Professional Photos (+99.00)', picture: '', price: 99},
  {category_id: plan, codename: 'no_plan' , fullname: 'No 2D Floor Plan', picture: '', price: 0},
  {category_id: plan, codename: 'floor_plan' , fullname: 'Add 2D Floor Plan (+100)', picture: '', price: 100},
  {category_id: domain, codename: 'no_domain' , fullname: 'No Custom Domain', picture: '', price: 0},
  {category_id: domain, codename: 'custom_domain' , fullname: 'Add Custom Domain (+19.99)', picture: '', price: 19.99}
])  
