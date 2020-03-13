class Backer

    attr_reader :project, :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # result = []
        # ProjectBacker.all.select do |instance|
        #     if instance.backer == self
        #         result << instance.project
        #     end
        # end
        # result
        ProjectBacker.all.map {|instance| instance.backer == self ? instance.project : nil}.compact
    end
end