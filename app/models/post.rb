class Post < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true

  validates :content, length: {minimum: 10}

  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

end
