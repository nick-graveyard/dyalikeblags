## How to use

1. Copy repo to vendor/engines/dyalikeblags
1. Mount in gemfile
	* mount Dyalikeblags::Engine => "/your-preferred-url-root"
2. Add gem dependencies to main app Gemfile
	* gem 'dyalikeblags', path: "vendor/engines/dyalikeblags"
	* gem 'devise'
	* gem 'acts_as_votable'
5. run bundle install from main app
6. rake setup:dependencies
7. rake dyalikeblags:install:migrations
8. Thats IT!


## Notes
* In any dashboard text field full html and bootstrap tags are available.
* User management not implemented yet so have to figure out how to add a user via devise views, will take a second of hacking.
* If you delete all users, or no users are present,  yoursite.com/users/sign_in, will have an link to create a new user.  
  * This only appears if User.count == 0, the rest of the time users are managed thru the dashboard.



## To Implement
1. Categories
2. Pagination 
3. User Management  
4. Comments
5. Votable Comments
4. if time_allows {:implement_testing} else {puts 'lol'}





