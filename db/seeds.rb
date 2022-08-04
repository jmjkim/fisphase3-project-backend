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

puts "✅ Done seeding!"
