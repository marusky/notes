class PagesController < ApplicationController
  def about
    @user = User.new(
      name: 'Martin Tester',
      hobbies: ['singing', 'snowboarding'],
      show_hidden_info: true
    )
  end

  def home
  end
end