class DashboardController < ApplicationController

  before_action :authenticate_user!
  skip_before_filter :verify_authenticity_token

  respond_to :json, :html, :xml

  def index
    @current_user = User.all.find_by(id: session[:user_id])
    sites = Sites.all.where(user_id: @current_user.id)

    @sites = sites.all.order("id ASC")
    @site = Sites.new
    # @array = [@sites, @current_user]
    respond_with @sites
  end

  def tutorial
    # binding.pry
  end

  def destroy
    @site = Sites.find(params[:id])
    @site.destroy
    # redirect_to root_path
  end

   def create
    # binding.pry

    user_id = session[:user_id]
    url = Sitelist.find_by(id: params[:url]).url
    description = params[:description]
    username = params[:username]
    password = params[:password]

    @site = Sites.create user_id: user_id, url: url, description: description, username: username, password: password

    if @site.save
      redirect_to dashboard_path
    else
      # render :dashboard
    end
  end

  def update

    id = params[:id]
    url = params[:url]
    description = params[:description]
    username = params[:username]
    password = params[:password]

    site = Sites.find_by(id: id)

    @site = site.update id: id, url: url, description: description, username: username, password: password

    redirect_to dashboard_path
  end

  def about
  end

  def contact
  end

  def authenticate_user!
    if session[:user_id]
      true
    else
      respond_with do |format|
        format.json {render status: 403}
      end
    end
  end
end
