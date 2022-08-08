class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/engine_department" do
    engines = Engine.all
    engines.to_json
  end


  get "/engine_department/:manufactured_engine_id" do
    engine = Engine.all.find_by(manufactured_engine_id: params[:manufactured_engine_id])
    engine.to_json
  end


  post "/engine_department" do
    engine = Engine.create(
      department_id: params[:department_id],
      manufactured_engine_id: params[:manufactured_engine_id],
      associated_vehicle_vin: params[:associated_vehicle_vin],
      engine_layout: params[:engine_layout],
      camshaft_built: params[:camshaft_built],
      piston_built: params[:piston_built],
      flywheel_built: params[:flywheel_built],
      connecting_rod_built: params[:connecting_rod_built],
      crankshaft_built: params[:crankshaft_built],
      sump_built: params[:sump_built],
      camshaft_drvie_belt_built: params[:camshaft_drvie_belt_built],
      completed: params[:completed],
      remark: params[:remark]
    )

    engine.to_json
  end


  # patch "/engines/:id" do
  #   engine = Engine.find(params[:id])
  #   engine.update(
  #     associated_vehicle_vin: params[:associated_vehicle_vin],
  #     engine_layout: params[:engine_type],
  #     camshaft_built: params[:camshaft_built],
  #     piston_built: params[:piston_built],
  #     flywheel_built: params[:flywheel_built],
  #     connecting_rod_built: params[:connecting_rod_built],
  #     crankshaft_built: params[:crankshaft_built],
  #     sump_built: params[:sump_built],
  #     camshaft_drvie_belt_built: params[:camshaft_drvie_belt_built],
  #     completed: params[:completed],
  #     remark: params[:remark]
  #   )

  #   engine.to_json
  # end

  delete "/engine_department/:id" do
    engine = Engine.find(params[:id])
    engine.destroy
  end
end
