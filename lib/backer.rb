class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # array = ProjectBacker.all.select{|x|x.project == self}
        # array.map{|x|x.project}
        ProjectBacker.all.select{|x| x.backer == self}.map{|y| y.project}
    end



end