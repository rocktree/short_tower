class VisitsController < ApplicationController

  def create
    @link = Link.find_by_shortened_url(params[:shortened_url])
    redirect_to @link.url, :status => 301
  end

end
