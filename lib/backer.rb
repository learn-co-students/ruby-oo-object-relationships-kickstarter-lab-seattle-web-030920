
class Backer 
    attr_accessor :name 

    @@all = [] 

    def initialize(name)
        @name = name 
        @@all << self
    end

    def back_project(project_instance) 
        ProjectBacker.new(project_instance, self)

    end

    def backed_projects
        arr = ProjectBacker.all.select {|elements|
            elements.backer.name == self.name #elementlbacker is an object we're compairing to a string name BUT YOU WANT THE SELF OBJECT : OBJECT TO OBJECT
    }
        arr.map {|project_backer|
            project_backer.project 
    }
    end 
 
end