class Backer 
  attr_reader :name 
  
  def initialize(name)
    @name = name 
  end 
  
  def back_project(project)
    ProjectBacker.new(project,self)
  end 
  
  def backed_projects 
    backers_all = ProjectBacker.all.select{|project| project.backer == self}
    
    backers_all.map{|backer| backer.project}
  end 
  
end 