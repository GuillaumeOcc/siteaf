class SessionController < ApplicationController



def new
 	end

	def create
		user = User.find_by_login_and_password(params[:login], params[:password])

		if user
			session[:user_id] = user.id
			redirect_to root_url
		else
			render :new
		end
	end

	def destroy
		session.destroy
		redirect_to root_url
	end

end
