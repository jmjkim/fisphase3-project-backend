class EngineDepartment < ActiveRecord::Base
    has_many :engines

    # def self.create_engine_department 
    #     @engine_department = new EngineDepartment.create()
    # end
end