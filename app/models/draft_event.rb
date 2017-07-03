class DraftEvent < Event
  validates :title, presence: true
end
