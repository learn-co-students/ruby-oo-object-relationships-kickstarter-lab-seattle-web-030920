require 'pry'

class Backer

    attr_reader :name, :backer, :project

    def initialize (name)
        @name = name
    end

    def back_project (project)
        ProjectBacker.new(project, self)
        # ProjectBacker.all << self
    end

    def backed_projects
        projects = []
    
        #find all projects associated with this backer
        ProjectBacker.all.select do |instance|
            (instance.backer == self) ? (projects << instance.project) : nil
        end
    
        projects
    end
end