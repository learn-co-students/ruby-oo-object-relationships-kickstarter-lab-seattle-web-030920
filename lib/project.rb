class Project
    attr_reader :title

def initialize(title)
    @title =title
end

def add_backer(baker)
    ProjectBacker.new(self, baker)
end

def backers

    newArray =  ProjectBacker.all.select {|i| 
    i.project == self }
    newArray.map{|j| j.backer}
end

end