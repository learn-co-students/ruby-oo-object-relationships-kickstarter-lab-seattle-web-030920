require 'pry'

class Project

    attr_reader :title, :backer, :project

    def initialize (title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
        ProjectBacker.all << self
    end

    def backers
        backers = []

        #find all backers associated with this project
        ProjectBacker.all.select do |instance|
            (instance.project == self) ? (backers << instance.backer) : nil
        end

        backers
    end
end