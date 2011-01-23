class OauthController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:redirect]

  FB_APP_ID='190611180965417'
  FB_APP_SECRET='64d928cb85365ce1b3bfd04b601e9c9f'

  def redirect
    access_token = `curl 'https://graph.facebook.com/oauth/access_token?client_id=#{FB_APP_ID}&redirect_uri=http://afurgo.com/oauth_redirect&client_secret=#{FB_APP_SECRET}&code=#{params[:code]}'`
    render :json => params.to_json
    # render :text => access_token 
  end

end
