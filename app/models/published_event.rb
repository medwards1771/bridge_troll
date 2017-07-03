class PublishedEvent < Event
  validates :chapter, presence: true
  validates :food_provided, inclusion: { in: [true, false] }
  validates :time_zone, inclusion: { in: ActiveSupport::TimeZone.all.map(&:name), allow_blank: true }, presence: true
  validates :event_sessions, length: { minimum: 1 }
end
