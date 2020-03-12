class Project
    attr_reader :title
    def initialize(title)
        @title=title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        return_array=[]
        projects=ProjectBacker.all.select{|project| project.project == self}
        projects.each {|projectwithbacker| return_array<<projectwithbacker.backer}
        return_array
    end

end