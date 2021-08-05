class Post < ApplicationRecord
  belongs_to :user

  def previous_post
    Post.where("id < ?", id).order(id: :desc).limit(1).first
  end

  def next_post
    Post.where("id > ?", id).order(id: :asc).limit(1).first
  end
end
