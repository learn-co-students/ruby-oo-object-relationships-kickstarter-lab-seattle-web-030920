require 'pry'

class Project 

    attr_accessor :title 

    @@all = []

    def initialize(title)
        @title = title
        @@all << self 
    end 

    def add_backer(backer_instance)
        ProjectBacker.new(self, backer_instance)
    end

    def backers
        arr = ProjectBacker.all.select {|elements|
            elements.project.title == self.title 
    }
        arr.map {|project_backer|
            project_backer.backer 
    }
    end 

    

end