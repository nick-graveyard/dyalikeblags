module Dyalikeblags
  class Image < ActiveRecord::Base

  	before_destroy :delete_image_file
  	validates :file_name, uniqueness: true


  	@@public_root = "public"
  	@@public_directory = "images"
  	@@full_path = 	@@public_root + "/" + @@public_directory 


  
  	def self.upload(image_file)
  			#upload image
		    file_name = image_file.original_filename

		    if !Image.exists?(file_name)
			    path = File.join( @@full_path , file_name)
			    File.open(path, "wb") { |f| f.write(image_file.read) }
			  end
		end


  	def delete_image_file
  		if Image.exists?(self.file_name)
  			File.delete(full_path)
  		end
  	end

  	def link_path
			"/" + @@public_directory + "/" + self.file_name
		end


		def full_path
  		@@full_path + "/" + self.file_name
  	end


  	#class methods
		def self.exists?(file_name)
			 File.file?(@@full_path + "/" + file_name)
		end

		def self.public_directory
			@@public_directory 
		end

  end
end
