class Project 
  
  attr_reader :title
  def initialize(title)
    @title = title 
  end 
  
  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end 
  
  def backers 
    projects_all = ProjectBacker.all.select{|item| item.project == self}
    projects_all.map{|project| project.backer}
  end 
    
end 