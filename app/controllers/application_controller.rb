class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def update_pictures
    params[:pictures].collect do |n,picture_params|
      picture = Picture.find(picture_params[:id])
      picture if picture.update_attributes(picture_params)
    end
  end

  def create_new_pictures(imageable)
    imageable.pictures ||= []
    imageable.pictures += params[:new_pictures].collect do |n,picture_params|
      picture = Picture.new(picture_params)
      picture if picture.save
    end.compact
  end
end
