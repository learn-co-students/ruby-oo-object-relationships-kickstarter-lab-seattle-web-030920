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
   newArray =  ProjectBacker.all.select {|i| 
    i.backer == self }
    newArray.map {|j| j.project}
end
end