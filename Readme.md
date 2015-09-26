## How To Install tutorial
1. Install plataformatec's devise 
	* https://github.com/plataformatec/devise
	* Note: this gem requires use of devises default table name:  "User" !!!
	* gem 'devise'
	* rails generate devise:install
	* rails generate devise:views
	* rails generate devise User
	* rake db:migrate
	* (set a home root to: "home#index" in /config/routes.rb)
2. Copy dyalikeblags repo to application
3. Add dyalikeblags gem to Gemfile
	* ````gem 'dyalikeblags', path: "path/to/dyalikeblags"```
	* bundle install
4. Add dyalikeblags mountpoint to /config/routes.rb
	* mount Dyalikeblags::Engine => "/blog"
	* can change /blog to your preferred path
5. rake db:migrate
	* all migrations should come from within the gem engine
	* all migrations are namespaced with dyalikeblags
	
## How To Uninstall tutorial
1. remove repo
2. delete gem from gemfile
3. delete mountpoint from /config/routes.rb
4. delete any table from database with dyalikeblags namespace


## Usage
1. Access the blog from /blog
2. Access the dashboard from /blog/dashboard/posts

## Notes
* In any dashboard text field full html and bootstrap tags are available.

## To Do

1. Categories
2. Pagination or perma scroll or sideways tray?
3. Comments
4. Votable Comments
5. Search
6. Declarative Authorization and user roles/permissions
7. Bring code up to rubocop standards
8. Make install process easier.
6. if time_allows {:implement_testing} else {puts 'lol'}
7. Allow use of different devise table names beyond the default of User





