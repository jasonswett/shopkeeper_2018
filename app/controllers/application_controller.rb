class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :set_default_response_format

  def set_default_response_format
    request.format = :json
  end
end
