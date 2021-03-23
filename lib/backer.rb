class Backer
    attr_reader :name

    def initialize(names)
        @name = names
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects
        found_projs = []
        ProjectBacker.all.each do | obj |
            if obj.backer.name == self.name
                found_projs << obj.project
            end
        end
        found_projs
    end

end