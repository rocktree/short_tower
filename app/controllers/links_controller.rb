class LinksController < ApplicationController

  before_action :new_link, :only => [:show, :new]

  def show
    @link = Link.find_by_shortened_url(params[:shortened_url])
  end

  def new
  end

  def create
    hex = SecureRandom.hex(4)
    @link = Link.new(create_params.merge(:shortened_url => hex))
    if @link.save
      redirect_to @link, :notice => 'Link created successfully!'
    else
      render 'new'
    end
  end

  private

    def create_params
      params.require(:link).permit(:url)
    end

    def new_link
      @new_link = Link.new
    end

end
