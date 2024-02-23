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
    @note = Note.create(note_params)

    redirect_to @note
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])

    @note.update(note_params)

    redirect_to @note
  end

  def destroy
    @note = Note.find(params[:id])

    @note.delete

    redirect_to notes_url
  end

  private

  def note_params
    params.require(:note).require(:name, :body)
  end
end