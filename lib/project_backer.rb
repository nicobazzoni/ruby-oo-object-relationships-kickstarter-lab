class ProjectBacker

  attr_accessor :project, :backer 
   
    @@all = [] 
    
     
 
  def initialize(project, backer)
  @project = project
  @backer = backer
  save
  end
    
  def save
     ProjectBacker.all << self
  end
 
 
  def self.all
    @@all
 end
end
