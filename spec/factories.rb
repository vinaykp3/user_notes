FactoryBot.define do
	factory :user do
		name {"use1"}
		email {"user1@test.com"}
	end

	factory :tag do
		name {"tag1"}
	end

	factory :note do
		title {"note1"}
		body {"testing note1"}
		association :user, factory: :user
		association :tags, factory: :tag
	end
end