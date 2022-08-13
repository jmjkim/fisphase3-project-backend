puts "🌱 Seeding spices..."

# Seed Engine Department
EngineDepartment.create(name: "Western Sedan Engineering", 
                        department_id: 1, 
                        department_of_engine_size: "sedan", 
                        engine_quantity: 0, 
                        contact: "Anderson Heimer 925-987-6543 ah123sedan@abc.com")

# Seed Engines
engine_layout_samples = ["Inline", "Flat", "V"]
engine_cylinder_samples = [4, 6, 8, 10]
boolean_samples = [true, false]

22.times do
    Engine.create(department_id: 1,
                  engine_size: "sedan",
                  manufactured_engine_id: Faker::Alphanumeric.alphanumeric(number:8),
                  associated_vehicle_vin: Faker::Vehicle.vin,
                  engine_layout: "#{engine_layout_samples.sample}#{engine_cylinder_samples.sample}",
                  camshaft_built: boolean_samples.sample,
                  piston_built: boolean_samples.sample,
                  flywheel_built: boolean_samples.sample,
                  connecting_rod_built: boolean_samples.sample,
                  crankshaft_built: boolean_samples.sample,
                  sump_built: boolean_samples.sample,
                  camshaft_drive_belt_built: boolean_samples.sample,
                  remark: "")
end

15.times do 
    Engine.create(department_id: 2,
                  engine_size: "suv",
                  manufactured_engine_id: Faker::Alphanumeric.alphanumeric(number:8),
                  associated_vehicle_vin: Faker::Vehicle.vin,
                  engine_layout: "#{engine_layout_samples.sample}#{engine_cylinder_samples.sample}",
                  camshaft_built: boolean_samples.sample,
                  piston_built: boolean_samples.sample,
                  flywheel_built: boolean_samples.sample,
                  connecting_rod_built: boolean_samples.sample,
                  crankshaft_built: boolean_samples.sample,
                  sump_built: boolean_samples.sample,
                  camshaft_drive_belt_built: boolean_samples.sample,
                  remark: "")
end

puts "✅ Done seeding!"
