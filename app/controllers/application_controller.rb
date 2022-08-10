class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/engine_department" do
    engines = Engine.all
    engines.to_json
  end

  get "/engine_department/edit/:manufactured_engine_id" do
    engine = Engine.all.find_by(manufactured_engine_id: params[:manufactured_engine_id])
    engine.to_json
  end


  post "/engine_department" do
    engine = Engine.create(
      department_id: 1,
      manufactured_engine_id: Faker::Alphanumeric.alphanumeric(number:8),
      associated_vehicle_vin: Faker::Vehicle.vin,
      engine_layout: params[:engine_layout],
      camshaft_built: false,
      piston_built: false,
      flywheel_built: false,
      connecting_rod_built: false,
      crankshaft_built: false,
      sump_built: false,
      camshaft_drive_belt_built: false,
      completed: false,
      remark: params[:remark]
    )

    engine.to_json
  end

  patch "/engine_department/:manufactured_engine_id" do
    engine = Engine.all.find_by(manufactured_engine_id: params[:manufactured_engine_id])
    engine.update(
      manufactured_engine_id: params[:manufactured_engine_id],
      associated_vehicle_vin: params[:associated_vehicle_vin],
      engine_layout: params[:engine_type],
      camshaft_built: params[:camshaft_built],
      piston_built: params[:piston_built],
      flywheel_built: params[:flywheel_built],
      connecting_rod_built: params[:connecting_rod_built],
      crankshaft_built: params[:crankshaft_built],
      sump_built: params[:sump_built],
      camshaft_drive_belt_built: params[:camshaft_drive_belt_built],
      completed: params[:completed],
      remark: params[:remark]
    )

    engine.to_json
  end


    delete "/engine_department/:id" do
      engine = Engine.all.find(params[:id])
      engine.destroy
    end

  # delete "/engine_department/:manufactured_engine_id" do
  #   engine = Engine.all.find(params[:manufactured_engine_id])
  #   engine.destroy
  # end
end
