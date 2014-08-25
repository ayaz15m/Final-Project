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

  # def secretize(value, password)
  #   salt  = SecureRandom.random_bytes(64)
  #   key   = ActiveSupport::KeyGenerator.new('password').generate_key(salt)
  #   crypt = ActiveSupport::MessageEncryptor.new(key)
  #
  #   if value == 1
  #     encrypted = crypt.encrypt_and_sign(password)
  #   else
  #     decrypted = crypt.decrypt_and_verify(password)
  #   end
  # end

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
    # password = secretize(1, params[:password])
    password = params[:password]

    @site = Sites.create user_id: user_id, url: url, description: description, username: username, password: password
  end

  def update
    id = params[:id]
    url = params[:url]
    description = params[:description]
    username = params[:username]
    # password = secretize(1, params[:password])
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
