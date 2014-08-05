class LinksController < ApplicationController

  before_filter :authenticate_user! #, :except => [:new]

  def new
    # if user_signed_in?
    #   @new_link = Link.new
    # else
    #   render 'home/index'
    # end
  end

  def create
    shortened_url = SecureRandom.urlsafe_base64(6)
    @link = Link.new(
      create_params.merge(
        :shortened_url => shortened_url,
        :user => current_user
      )
    )
    if @link.save
      redirect_to root_path, :notice => 'Link created successfully!'
    else
      render 'new'
    end
  end

  private

    def create_params
      params.require(:new_link).permit(:url)
    end

end
