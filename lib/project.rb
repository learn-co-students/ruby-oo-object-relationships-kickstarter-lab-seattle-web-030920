class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        list = ProjectBacker.all.select{|project_backer| project_backer.project == self}
        list.map{|project_backer| project_backer.backer}.uniq
    end

end
