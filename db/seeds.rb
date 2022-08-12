puts "🌱 Seeding spices..."

# Seed your database here
EngineDepartment.create(
    name: "Western Gasoline Engineering",
    department_type: "gasoline",
    engine_quantity: 0,
    contact: "Anderson Heimer 925-987-6543 ahgas@abc.com"
)


engine_type_sample = ["Inline", "Flat", "V"]
engine_cylinder_sample = [4, 6, 8, 10]
boolean_sample = [true, false]

45.times do
    Engine.create(
        department_id: 1,
        manufactured_engine_id: Faker::Alphanumeric.alphanumeric(number:8),
        associated_vehicle_vin: Faker::Vehicle.vin,
        engine_layout: "#{engine_type_sample.sample}#{engine_cylinder_sample.sample}",

        # Engine Components
        camshaft_built: boolean_sample.sample,
        piston_built: boolean_sample.sample,
        flywheel_built: boolean_sample.sample,
        connecting_rod_built: boolean_sample.sample,
        crankshaft_built: boolean_sample.sample,
        sump_built: boolean_sample.sample,
        camshaft_drive_belt_built: boolean_sample.sample,
        
        remark: ""
    )
end

puts "✅ Done seeding!"
