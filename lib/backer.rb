class Backer
attr_reader :name
    def initialize(name)
        @name=name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        return_array=[]
        projects= ProjectBacker.all.select {|project| project.backer == self}
        projects.each{ |projectwithbacker| return_array<<projectwithbacker.project}
        return_array
    end
end