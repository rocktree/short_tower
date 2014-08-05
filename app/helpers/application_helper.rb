module ApplicationHelper

  def user_links
    @user_links ||= begin
      current_user.links
    end
  end

end
