class DraftEvent < ActiveRecord::Base
  validates :title, presence: true

  def published?
    false
  end
end
