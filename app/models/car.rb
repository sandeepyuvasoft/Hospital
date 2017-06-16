class Car < ApplicationRecord
	mount_uploaders :pic, PicUploader
	serialize :pic, JSON
end
