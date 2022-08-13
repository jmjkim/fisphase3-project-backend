class CreateEngineDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :engine_departments do |t|
      t.string :name
      t.integer :department_id
      t.string :department_of_engine_size
      t.integer :engine_quantity
      t.string :contact
    end
  end
end
