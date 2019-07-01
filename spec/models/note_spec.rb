require 'rails_helper'

RSpec.describe Note, type: :model do
  it { should have_many(:tags) }
  it { should belong_to(:user) }

  describe "user notes" do
  	it "should return user notes" do
  		user = FactoryBot.create(:user)
  		tag = FactoryBot.create(:tag)
  		note = FactoryBot.create(:note, user: user, tags: [tag])
  		notes = User.includes(notes: :tags).where("users.id = ?", user.id)
  		expect(notes.first.notes.first).to eq(note) 
  		expect(notes.first.notes.first.tags.first).to eq(tag) 
  	end
  end
end
