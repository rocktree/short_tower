module Publishable
  extend ActiveSupport::Concern

  included do

    # --------------------------------- Attributes

    attr_accessor :active, :active_date, :active_time, :inactive_date, 
      :inactive_time

    # --------------------------------- Scopes

    scope :published, -> { where("(active_at <= ? AND inactive_at > ?) OR 
                                (active_at <= ? AND inactive_at IS ?)",
                                Time.now, Time.now, Time.now, nil) }
    scope :unpublished, -> { where("active_at > ? OR inactive_at < ? OR 
                                (active_at IS ? AND inactive_at IS ?)",
                                Time.now, Time.now, nil, nil) }

  end

  # --------------------------------- Instance Methods

  def published?
    return false if active_at.nil?
    (active_at <= Time.now and inactive_at == nil) or
      (active_at <= Time.now and inactive_at >= Time.now)
  end

  def formatted_active_date
    return '' if active_at.nil?
    active_at.strftime("%d %B, %Y")
  end

  def formatted_inactive_date
    return '' if inactive_at.nil?
    inactive_at.strftime("%d %B, %Y")
  end

  def formatted_active_time
    return '' if active_at.nil?
    active_at.strftime("%l:%M %p")
  end

  def formatted_inactive_time
    return '' if inactive_at.nil?
    inactive_at.strftime("%l:%M %p")
  end

end
