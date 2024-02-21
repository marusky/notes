class NotesController < ApplicationController
  def show
    @note = Note.new(title: 'MVC', body: 'Model View Controller')
  end
end