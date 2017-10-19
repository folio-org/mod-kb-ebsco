require 'net/http'
require 'okapi'

class ApplicationController < ActionController::API
  before_action :verify_okapi_headers

  def okapi
    @okapi ||= Okapi::Client.new(okapi_url, okapi_tenant, okapi_token)
  end

  def okapi_url
    request.headers["HTTP_X_OKAPI_URL"]
  end

  def okapi_tenant
    request.headers["HTTP_X_OKAPI_TENANT"]
  end

  def okapi_token
    request.headers["HTTP_X_OKAPI_TOKEN"]
  end

  def verify_okapi_headers
    if !okapi_url
      render plain: 'Missing header X-OKAPI-URL', status: :bad_request
    elsif !okapi_tenant
      render plain: 'Missing header X-OKAPI-TENANT', status: :bad_request
    elsif !okapi_token
      render plain: 'Missing header X-OKAPI-TOKEN', status: :bad_request
    end
  end
end