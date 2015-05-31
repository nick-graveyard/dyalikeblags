How to use
-----------------
1. mount Blorgh::Engine => "/blorgh"
2. gem 'blorgh', path: "vendor/engines/blorgh"
3. gem 'devise'
4. gem 'acts_as_votable'
5. bundle install from main app
6. rake setup:gems
7. rake blorgh:install:migrations






Developed.

create the engine
-------------------
1. rails plugin new blorgh --mountable
put in vendors/engines/blorgh


gems in engine
------------
s.add_dependency "devise"
s.add_dependency "acts_as_votable"


setup scaffolds
------------
rake setup:models





