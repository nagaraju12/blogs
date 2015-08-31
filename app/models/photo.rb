class Photo < ActiveRecord::Base
	belongs_to :product
	  belongs_to :photable, :polymorphic => true
  has_attached_file :photo, :styles => {:original => "70x70>",:default => "226x287!",:thumb => "96x96>"}

    validates_attachment_content_type :photo, :content_type => %w(image/jpeg image/jpg)
end
