class SessionsController < ApplicationController
  def new
 
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/'
    elsif session[:name].present?
      redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end
