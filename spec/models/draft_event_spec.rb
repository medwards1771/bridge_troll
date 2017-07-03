require 'rails_helper'

describe DraftEvent do
  subject { DraftEvent.new }

  it { is_expected.to validate_presence_of(:title) }
end
