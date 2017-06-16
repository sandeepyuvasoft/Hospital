class Article < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
	serialize :avatar, JSON
end
