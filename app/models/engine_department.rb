class EngineDepartment < ActiveRecord::Base
    has_many :engines

    # CRUD Capability
    # Create
    def create_engine(engine_type, engine_layout)
        new_engine = Engine.create(
            # department_id: engine_type == "diesel" ? 1 : 2,
            manufactured_engine_id: Faker::Alphanumeric.alphanumeric(number:7), 
            associated_vehicle_vin: Faker::Vehicle.vin,
            engine_layout: engine_layout, # Inline, Flat, V
            
            # Engine Components
            camshaft_built: false,
            piston_built: false,
            flywheel_built: false,
            connecting_rod_built: false,
            crankshaft_built: false,
            sump_built: false,
            camshaft_drvie_belt_built: false,
            completed: false,
            remark: ""
        )

        return new_engine
    end


    # Read 1
    def show_engines(department_type)
        case department_type.downcase

        when "diesel"
            Engine.all.select { |engine| return engine.department_id == 1}

        when "gasoline"
            Engine.all.select { |engine| return engine.department_id == 2}
        
        else
            return "#{department_type} does not exist. Please choose 'diesel or gasoline'"
        end
    end


    def find_engine(engine_id)
        engine = Engine.find_by(id: engine_id)
        return engine
    end


    # Update
    # def update_engine(engine_id)
    #     engine = Engine.find_by(manufactured_engine_id: engine_id)
    #     # engine.update_all ""
    # end


    # Delete
    def delete_engine(engine_id)
        engine = Engine.find_by(manufactured_engine_id: engine_id)
        engine.destroy
    end
end