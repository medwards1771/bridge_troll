require 'rails_helper'

describe PublishedEvent do

  specify 'associations' do
    should have_many(:event_sessions).dependent(:destroy)
  end

  specify 'validations' do
    should validate_presence_of :time_zone
    should_not allow_value(nil).for :time_zone
    should_not allow_value('xxx').for :time_zone
    should allow_value('Hawaii').for :time_zone
  end
end
