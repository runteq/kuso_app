class Entry < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :email, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :photo, presence: true
end
