module Dyalikeblags
  class DashboardController < ::ApplicationController
  	before_action :authenticate_user!
  	layout "dyalikeblags/dashboard"
  end
end
