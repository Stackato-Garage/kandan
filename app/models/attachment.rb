require 'cloudfuji_paperclip'

class Attachment < ActiveRecord::Base
  belongs_to :channel
  belongs_to :user

  has_attached_file :file
  attr_accessible :file

  def url
    file.to_s
  end
end
