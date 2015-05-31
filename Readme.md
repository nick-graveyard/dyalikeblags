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




## To Implement
1. Pagination 
2. Static pages on navbar
3. User Management





