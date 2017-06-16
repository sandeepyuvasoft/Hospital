class Picture < ApplicationRecord
	belongs_to :laptop
    has_attached_file :picture,
    path: ":rails_root/public/pictures/:id/:filename",
    url: "/pictures/:id/:filename"
    do_not_validate_attachment_file_type :picture
end
