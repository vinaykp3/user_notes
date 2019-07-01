class NotesController < ApplicationController
	def index
		@user_notes = Note.includes(:tags)
	end

	def new
		user = User.first
		@note = Note.new(user_id: user.id)
	end

	def create
		@note = Note.new(note_params)
		if @note.save
      		redirect_to notes_path
	    else
	      render :new
	    end
	end

	def show
		@note = Note.includes(:tags).where("notes.id = ?", params[:id]).first
	end

	private

	def note_params
		params.require(:note).permit(:title, :body, :tag_ids,:user_id)
	end
end