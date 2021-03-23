class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end
    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end
    def backers
        found_backers = []
        ProjectBacker.all.each do |obj |
            if obj.project.title == self.title
                found_backers << obj.backer
            end
        end
        found_backers
    end
end
