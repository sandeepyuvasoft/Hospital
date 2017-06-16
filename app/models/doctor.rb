class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  mount_uploader :avatar, AvatarUploader
  has_attached_file :pic, styles: { medium: "300x300>", thumb: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/
end
