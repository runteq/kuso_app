class Entry < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end
