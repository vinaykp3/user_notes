# README

* Prerequisites
	
	- Make sure ruby 2.5.1 is installed with RVM
	- run: rvm use ruby-2.5.1
	- Navigate to project directory
	- run: gem install bundler(for first time)
	- bundle install

* Database creation and initilization
	rake db:create
	rake db:migrate
	rake db:seed

* Run Server and api access
	rails s
	hit the end point http://localhost:3000/notes
