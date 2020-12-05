require 'pry'
class Backer
 
    attr_accessor :name
     
  
 
 
    def initialize(name)
    @name = name 
    @backed_projects = []

    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
        #binding.pry 

       a = ProjectBacker.all.select { |project_backer| project_backer.backer == self}
       a.map do |i| 
        i.project 
       end
    end  

    def add_backer(backer)
    
    end
end
 
