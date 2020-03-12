class Project
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self,backer)
  end

  def backers
    all_projects= ProjectBacker.all.select{|projectbacker| projectbacker.project == self}
    all_projects.map {|p| p.backer}
  end
end
