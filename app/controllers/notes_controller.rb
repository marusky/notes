class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.create(name: params[:note][:name], body: params[:note][:body])

    redirect_to @note
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])

    @note.update(name: params[:note][:name], body: params[:note][:body])

    redirect_to @note
  end

  def destroy
    @note = Note.find(params[:id])

    @note.delete

    redirect_to notes_url
  end
end