class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create
    hex = SecureRandom.hex(4)
    @link = Link.new(create_params.merge(:shortened_url => hex))
    if @link.save
      redirect_to new_link_path, :notice => 'Link created successfully!'
    else
      render 'new'
    end
  end

  private

    def create_params
      params.require(:link).permit(:url)
    end

end
