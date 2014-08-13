class DashboardController < ApplicationController

  # before_action :authenticate_user!

  respond_to :json, :html, :xml

  def index
    @sites = Sites.all.order("id ASC")
    respond_with @sites
  end

  def tutorial
  end

  def destroy
    @site = Sites.find(params[:id])
    @site.destroy
    # redirect_to root_path
  end

   def create
    ##binding.pry
    url = params[:url]
    description = params[:description]
    username = params[:username]
    password = params[:password]

    @site = Sites.create url: url, description: description, username: username, password: password

     if @site.save
        redirect_to dashboard_path
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
end
