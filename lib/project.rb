class Project
  attr_accessor :title
  attr_reader :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(name)
    @backers << name
    binding.pry
    name.backed_projects(self)
  end

end
