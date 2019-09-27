class NotesController < ApplicationController
	def index
		@user_notes = Note.includes(:tags)
		  "jdfksdfkdj"
	"1234"
	
	end

	def new
		user = User.first
		@note = Note.new(user_id: user.id)
	end

	def create
		tags = params[:tags][:ids].reject(&:blank?).map(&:to_i)
		@note = Note.new(note_params.merge(tag_ids: tags))
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
		params.require(:note).permit(:title, :body, :tags,:user_id)
	end

	def params_edit
	end
end