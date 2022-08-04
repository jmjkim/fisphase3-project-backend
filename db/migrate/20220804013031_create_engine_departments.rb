class CreateEngineDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :engine_departments do |t|
      t.string :department_type
      t.integer :engine_id
      t.integer :engine_quantity
      t.string :contact
    end
  end
end
