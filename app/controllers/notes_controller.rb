class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
  end

  def create
    @note = Note.create(name: params[:name], body: params[:body])

    redirect_to @note
  end
end