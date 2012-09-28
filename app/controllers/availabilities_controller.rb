class AvailabilitiesController < ApplicationController

	before_filter :require_user

	def index
		@availabilities = Availability.where(:job_id => current_user.job_id).all
	end

end
