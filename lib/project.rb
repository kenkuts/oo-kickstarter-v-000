class Project
  attr_accessor :title
  attr_reader :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(name)
    @backers << name
    name.back_project(self) if !name.backed_projects.include?(self.title)
  end

end
