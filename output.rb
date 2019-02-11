
City
  has a name
  has many neighborhoods
  listings
    has many listings through neighborhoods

Listing
  has a title
  has a description
  has an address
  has a listing type
  has a price
  belongs to a neighborhood
  belongs to a host
  reservations (and guests) and reviews
    has many reservations
    has many reviews through reservations (FAILED - 1)
    knows about all of its guests

Neighborhood
  has a name
  belongs to a city
  listings
    has many listings

Reservation
  has a checkin time
  has a checkout time
  belongs to a guest
  belongs to a listing

Review
  has a description
  has a rating
  belongs to a guest
  belongs to a reservation

User
  has a name
  guest and host
    as host
      has many listings
      has many reservations through their listing (FAILED - 2)
    as guest
      has many trips (FAILED - 3)
      has written many reviews (FAILED - 4)

Failures:

  1) Listing reservations (and guests) and reviews has many reviews through reservations
     Failure/Error: expect(listing.reviews).to include(review)

     ActiveRecord::HasManyThroughSourceAssociationNotFoundError:
       Could not find the source association(s) "review" or :reviews in model Reservation. Try 'has_many :reviews, :through => :reservations, :source => <name>'. Is it one of guest or listing?
     # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/activerecord-4.2.11/lib/active_record/reflection.rb:850:in `check_validity!'
     # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/activerecord-4.2.11/lib/active_record/associations/association.rb:25:in `initialize'
     # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/activerecord-4.2.11/lib/active_record/associations/has_many_through_association.rb:10:in `initialize'
     # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/activerecord-4.2.11/lib/active_record/associations.rb:162:in `new'
     # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/activerecord-4.2.11/lib/active_record/associations.rb:162:in `association'
     # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/activerecord-4.2.11/lib/active_record/associations/builder/association.rb:115:in `reviews'
     # ./spec/models/listing_spec.rb:72:in `block (3 levels) in <top (required)>'

  2) User guest and host as host has many reservations through their listing
     Failure/Error: expect(katie.reservations).to include(reservation)

     NoMethodError:
       undefined method `reservations' for #<User:0x007facda98b4b0>
       Did you mean?  reservation_id
     # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/activemodel-4.2.11/lib/active_model/attribute_methods.rb:433:in `method_missing'
     # ./spec/models/user_spec.rb:40:in `block (4 levels) in <top (required)>'

  3) User guest and host as guest has many trips
     Failure/Error: expect(logan.trips).to include(reservation)

     NameError:
       uninitialized constant User::Trip
     # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/activerecord-4.2.11/lib/active_record/inheritance.rb:158:in `compute_type'
     # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/activerecord-4.2.11/lib/active_record/reflection.rb:295:in `compute_class'
     # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/activerecord-4.2.11/lib/active_record/reflection.rb:291:in `klass'
     # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/activerecord-4.2.11/lib/active_record/associations/association.rb:118:in `klass'
     # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/activerecord-4.2.11/lib/active_record/associations/collection_association.rb:41:in `reader'
     # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/activerecord-4.2.11/lib/active_record/associations/builder/association.rb:115:in `trips'
     # ./spec/models/user_spec.rb:55:in `block (4 levels) in <top (required)>'

  4) User guest and host as guest has written many reviews
     Failure/Error: expect(logan.reviews).to include(review)

     NoMethodError:
       undefined method `reviews' for #<User:0x007facda9b36b8>
     # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/activemodel-4.2.11/lib/active_model/attribute_methods.rb:433:in `method_missing'
     # ./spec/models/user_spec.rb:60:in `block (4 levels) in <top (required)>'

Finished in 1.84 seconds (files took 10.28 seconds to load)
29 examples, 4 failures

Failed examples:

rspec ./spec/models/listing_spec.rb:71 # Listing reservations (and guests) and reviews has many reviews through reservations
rspec ./spec/models/user_spec.rb:39 # User guest and host as host has many reservations through their listing
rspec ./spec/models/user_spec.rb:54 # User guest and host as guest has many trips
rspec ./spec/models/user_spec.rb:59 # User guest and host as guest has written many reviews

