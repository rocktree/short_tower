class VisitsController < ApplicationController

  def create
    @link = Link.find_by_shortened_url(params[:shortened_url])
    unless @link.nil?
      @visit = Visit.create!(
        :link => @link,
        :ip => request.remote_ip,
        :user_agent => request.env['HTTP_USER_AGENT']
      )
      redirect_to @link.url, :status => 301
    end
  end

end
