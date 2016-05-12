class Fit < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	mount_uploader :file, FileUploader
	acts_as_votable
end
