class User
  attr_reader :name, :hobbies, :show_hidden_info
  
  def initialize(name:, hobbies: [], show_hidden_info: false)
    @name = name
    @hobbies = hobbies
    @show_hidden_info = show_hidden_info
  end
end