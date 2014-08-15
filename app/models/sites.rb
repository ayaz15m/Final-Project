class Sites < ActiveRecord::Base
  belongs_to :user

  # validates :url, presence: true, uniqueness: true
  # validates :description, presence: true
  # validates :username, presence: true
  # validates :password, presence: true,length: {minimum: 8}

end
