class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        list = ProjectBacker.all.select{|project_backer| project_backer.backer == self}
        list.map{|project_backer| project_backer.project}.uniq
    end

end
