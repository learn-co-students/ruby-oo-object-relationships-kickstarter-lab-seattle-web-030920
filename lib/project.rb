class Project

    attr_reader :backer, :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        # result = []
        # ProjectBacker.all.select do |instance| 
        #     if instance.project == self
        #         result << instance.backer
        #     end
        # end
        # result
        ProjectBacker.all.map {|instance| instance.project == self ? instance.backer : nil}.compact
    end
end