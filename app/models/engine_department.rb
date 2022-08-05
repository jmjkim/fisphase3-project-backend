class EngineDepartment < ActiveRecord::Base
    has_many :engines

    def self.show_engines
        Engine.all.each do |engine|
            if engine.department_id == 1
                "List of Diesel Engines"
                engine
            else
                "List of Gasoline Engines"
                engine
            end
        end
    end
end