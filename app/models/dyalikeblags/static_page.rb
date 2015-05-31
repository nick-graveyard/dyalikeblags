module Dyalikeblags
  class StaticPage < ActiveRecord::Base
  	validates  :title_bar,  uniqueness: true
  end
end
