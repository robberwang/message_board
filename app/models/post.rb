class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  accepts_nested_attributes_for :comments,
                                reject_if: proc { |attributes| attributes['content'].blank? },
                                allow_destroy: true
  validates :title,
            presence: true
end
