class SessionController < ApplicationController
  def new



  end

  def create
    # Save the URL referrer just before login so we ca n re-direct to same url after login.
    session[:referrer] = request.referrer

    # see if the email address entered actually corresponds to a user in the table
    user = User.find_by email: params[:email]


    if user.present? && user.authenticate( params[:password] )

      # Successful login:
      # Get Rails to create a new session key to store the user's ID;
      # this is the session key which we will use to check if the user
      # is logged in on all future pages
      session[:user_id] = user.id

      # redirect_to ( root_path )
      redirect_to session[:referrer]
      # raise 'hell'

    else
      # Bad credentials, i.e. unsuccessful login

      # Set a flash message which exists *just for the next page load*
      flash[:error] = "Invalid email address or password"

      #redirect_to( login_path )
      redirect_to( root_path )
    end
  end

  def destroy
    session[:user_id] = nil  # this logs out the user
    redirect_to regions_path
  end
end
