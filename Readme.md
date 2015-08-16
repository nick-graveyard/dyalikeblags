## How to use

1. Copy repo to vendor/engines/dyalikeblags
2. Add to main app /config/routes.rb
	* ```mount Dyalikeblags::Engine => "/your-preferred-url-root"```
3. Add gem to main app /Gemfile
	* ````gem 'dyalikeblags', path: "vendor/engines/dyalikeblags"```
4. Add external gem dependencies to main app /Gemfile
	* ```gem 'devise'````
	* ```gem 'acts_as_votable'```
5. run ```bundle install``` from main app directory
6. ``` rake setup:dependencies``` from main app directory
7. ```rake dyalikeblags:install:migrations``` from main app directory
8. It is VERY IMPORTANT you edit /app/views/devise/shared/_links.html.erb . There is a link that allows anyone to create an account that is installed with default Devise views.
	* remove or edit this: ``` <%=link_to "Sign up", new_registration_path(resource_name) %>```
9. ``` rake db:migrate ```
10. Thats IT!  


### Usage
1. Access the blog from /your-preferred-url-root
2. Access the dashboard from /your-preferred-url-root/dashboard/posts


## Notes
* In any dashboard text field full html and bootstrap tags are available.



## To Implement
1. Simplify installation using a generator:
-http://multithreaded.stitchfix.com/blog/2014/01/06/rails-app-templates/
1. Categories
2. Pagination or perma scroll or sideways tray?
3. Comments
4. Votable Comments
5. Search
6. Declarative Authorization and user roles/permissions
7. Bring code up to rubocop standards
8. Make install process easier.
6. if time_allows {:implement_testing} else {puts 'lol'}





