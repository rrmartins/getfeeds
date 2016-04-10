class Feed < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
  validates :feed_url, presence: true, uniqueness: { case_sensitive: false }, format: { with: URI.regexp }

end
