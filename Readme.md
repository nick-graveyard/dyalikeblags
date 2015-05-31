##H ow to use

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





## To Do
1. Pagination 
2. Implement static pages
3. User Management





