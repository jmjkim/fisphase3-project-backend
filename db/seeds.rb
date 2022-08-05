puts "🌱 Seeding spices..."

# Seed your database here
EngineDepartment.create(
    name: "Western Diesel Engineering",
    department_type: "diesel",
    engine_quantity: 0,
    contact: "Jim Smith 925-123-4567 jsdiesel@abc.com"
)


EngineDepartment.create(
    name: "Western Gasoline Engineering",
    department_type: "gasoline",
    engine_quantity: 0,
    contact: "Anderson Heimer 925-987-6543 ahgas@abc.com"
)


# Create seeds for engine
engine_type_samples = ["Inline", "Flat", "V"]
boolean_samples = [true, false]

12.times do
    Engine.create(
        department_id: rand(1..2),
        manufactured_engine_id: Faker::Alphanumeric.alphanumeric(number:7),
        associated_vehicle_vin: Faker::Vehicle.vin,
        engine_layout: engine_type_samples.sample(1),
        camshaft_built: boolean_samples.sample(1),
        piston_built: boolean_samples.sample(1),
        flywheel_built: boolean_samples.sample(1),
        connecting_rod_built: boolean_samples.sample(1),
        crankshaft_built: boolean_samples.sample(1),
        sump_built: boolean_samples.sample(1),
        camshaft_drvie_belt_built: boolean_samples.sample(1),
        completed: false,
        remark: "n/a"
    )
end

puts "✅ Done seeding!"
