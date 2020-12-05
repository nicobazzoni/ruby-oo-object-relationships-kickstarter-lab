class Project
    attr_accessor :title
    
    @@all = []
    
    attr_accessor :title

    def initialize(title)
    @title = title 
    save
   end

   def save
    Project.all << self 
   end

    def self.all
        @@all
    end

    def add_backer(backer)
    ProjectBacker.new(self, backer) 
    end

    def backers
        x =ProjectBacker.all.select {|project_backer| project_backer.project == self}
            x.map do |i| 
            i.backer
        end 

    end
end