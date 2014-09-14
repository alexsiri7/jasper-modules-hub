class Version < ActiveRecord::Base
  TYPES = Hash['zip', 'Zip', 'file', 'Single file', 'git', 'Git repo']
  belongs_to :plugin

  def self.types_as_select
    TYPES.invert
  end
end
