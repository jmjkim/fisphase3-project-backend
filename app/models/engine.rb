class Engine < ActiveRecord::Base
    belongs_to :engine_department

    def self.show_engines
        return Engine.all
    end

    def self.get_engine(manufactured_engine_id)
        return new Engine.all.find_by(manufactured_engine_id: manufactured_engine_id)
    end

    def self.create_engine(engine_size, engine_layout_params, remark_params)
        if engine_size === "sedan"
            @sedan_engine = new Engine.create(department_id: 1,
                                              engine_size: engine_size,
                                              manufactured_engine_id: Faker::Alphanumeric.alphanumeric(number:8),
                                              associated_vehicle_vin: Faker::Vehicle.vin,
                                              engine_layout: engine_layout_params,
                                              camshaft_built: false,
                                              piston_built: false,
                                              flywheel_built: false,
                                              connecting_rod_built: false,
                                              crankshaft_built: false,
                                              sump_built: false,
                                              camshaft_drive_belt_built: false,
                                              remark: remark_params)
            return @sedan_engine

        elsif engine_size === "suv"
            @suv_engine = new Engine.create(department_id: 2,
                                            engine_size: engine_size,
                                            manufactured_engine_id: Faker::Alphanumeric.alphanumeric(number:8),
                                            associated_vehicle_vin: Faker::Vehicle.vin,
                                            engine_layout: engine_layout_params,
                                            camshaft_built: false,
                                            piston_built: false,
                                            flywheel_built: false,
                                            connecting_rod_built: false,
                                            crankshaft_built: false,
                                            sump_built: false,
                                            camshaft_drive_belt_built: false,
                                            remark: remark_params)
            return @suv_engine
        end
    end

    def self.update_engine(department_id_params,
                           department_of_engine_size_params,
                           manufactured_engine_id_params,
                           associated_vehicle_vin_params,
                           engine_layout_params,
                           camshaft_built_params,
                           piston_built_params,
                           flywheel_built_params,
                           connecting_rod_built_params,
                           crankshaft_built_params,
                           sump_built_params,
                           camshaft_drive_belt_built_params,
                           remark_params)

        return Engine.update(department_id_params: params[:department_id_params],
                             department_of_engine_size_params: params[:department_of_engine_size_params],
                             manufactured_engine_id: params[:manufactured_engine_id],
                             associated_vehicle_vin: params[:associated_vehicle_vin],
                             engine_layout: params[:engine_layout],
                             camshaft_built: params[:camshaft_built],
                             piston_built: params[:piston_built],
                             flywheel_built: params[:flywheel_built],
                             connecting_rod_built: params[:connecting_rod_built],
                             crankshaft_built: params[:crankshaft_built],
                             sump_built: params[:sump_built],
                             camshaft_drive_belt_built: params[:camshaft_drive_belt_built],
                             remark: params[:remark])
    end

    def self.delete_engine
        return Engine.destroy
    end
end