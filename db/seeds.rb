# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

felix = User.new(
    first_name: "Felix",
    last_name: "der Kamin",
    username: "fxl",
    email: "fxl@tsnvs.com"
)

felix.password = "correctquinebatterystaple"
felix.save!

Stash.create!([
    {
        user: felix,
        strain_type: ::Stash::THC,
        strain: ::Stash::HAZE,
        weight: 42.0
    },
    {
        user: felix,
        strain_type: ::Stash::THC,
        strain: ::Stash::KUSH,
        weight: 1337.0
    }
])