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

     puts `rails generate scaffold Comment comment:text user:references post:references cached_votes_total:integer cached_votes_score:integer cached_votes_up:integer cached_votes_down:integer cached_weighted_score:integer cached_weighted_total:integer cached_weighted_average:float`
     puts `rails generate scaffold Post title:text content:text user:references image:string cached_votes_total:integer cached_votes_score:integer cached_votes_up:integer cached_votes_down:integer cached_weighted_score:integer cached_weighted_total:integer cached_weighted_average:float`


    end


end
