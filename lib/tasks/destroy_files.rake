namespace :destroy do



  desc "model destruction"
  	task :models=> :environment do
  		puts `rails d scaffold testscaffold test:string`
  end




end
