class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  accepts_nested_attributes_for :comments,
                                reject_if: proc { |attributes| attributes['content'].blank? },
                                allow_destroy: true
  validates :title,
            presence: true

  has_attached_file :image, styles: { medium: "280x416#", thumb: "140x208#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
