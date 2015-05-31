namespace :setup do

	desc "gem installation"
  	task :gems => :environment do
  		puts 'install devise'
  		puts `rails g devise:install -f`
			puts `rails g devise User -f`
			puts `rails g devise:views -f`
			puts 'install acts_as_votable'
			puts `rails g acts_as_votable:migration -f`
  end


  desc "model installation"
  	task :models=> :environment do
  		puts `rails g scaffold testscaffold test:string`
  end




end
