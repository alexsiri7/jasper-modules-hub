class Plugin < ActiveRecord::Base
  extend FriendlyId

  belongs_to :user
  has_many :versions
  friendly_id :name, use: [:slugged, :finders]

  def to_s
    "#{name} (#{slug})"
  end

  def last_version
    versions.last
  end
end
