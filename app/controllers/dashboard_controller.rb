class DashboardController < ApplicationController

  before_action :authenticate_user!
  skip_before_filter :verify_authenticity_token

  respond_to :json, :html, :xml

  def index
    @current_user = User.all.find_by(id: session[:user_id])
    if Sites.count > 0
      sites = Sites.all.where(user_id: @current_user.id)

      @sites = sites.all.order("id DESC")
      @site = Sites.new
      if @sites.count > 0
        respond_with @sites
      else
        respond_with do |format|
          format.json {render status: 404}
        end
      end
    else
      respond_with do |format|
        format.json {render status: 404}
      end
    end
  end

  def tutorial
  end

  def destroy
    @site = Sites.find(params[:id])
    @site.destroy
  end

   def create
    user_id = session[:user_id]
    url = Sitelist.find_by(id: params[:url]).url
    description = params[:description]
    username = params[:username]
    password = params[:password]

    @site = Sites.create user_id: user_id, url: url, description: description, username: username, password: password
  end

  def update
    id = params[:id]
    url = params[:url]
    description = params[:description]
    username = params[:username]
    password = params[:password]

    site = Sites.find_by(id: id)

    @site = site.update id: id, url: url, description: description, username: username, password: password
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
