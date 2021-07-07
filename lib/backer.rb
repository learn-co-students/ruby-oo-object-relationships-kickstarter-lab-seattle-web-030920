require 'pry'
class Backer
    attr_reader :name
    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        new_array = []
        ProjectBacker.all.each do |i|
            if i.backer == self 
                new_array << i.project
            end
        end
        
       new_array
    end


end
