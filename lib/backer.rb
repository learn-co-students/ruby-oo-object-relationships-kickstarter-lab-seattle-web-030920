class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project,self)
  end

  def backed_projects
    all_projects= ProjectBacker.all.select{|projectbacker| projectbacker.backer == self}
    all_projects.map {|p| p.project}
  end
end
