class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  protect_from_forgery with: :exception

  respond_to :json

  def angular
    render 'layouts/application'
  end
end
