# this event can be created with only a title
# (w/o the title it can't be created)

require 'rails_helper'

describe DraftEvent do
  describe '.create' do
    let(:draft_event) { DraftEvent.create(title: title) }

    context 'with a title' do
      let(:title) { 'pizza-headxz' }
      it 'should increase the DraftEvent count by 1' do
        expect{ draft_event }.to change { DraftEvent.count }.from(0).to(1)
      end
    end

    context 'without a title' do
      let(:title) { nil }
      it 'should not change the DraftEvent count' do
        expect{ draft_event }.to_not change { DraftEvent.count }
      end
    end

    context 'with a title that is an empty string' do
      let(:title) { '' }
      it 'should not change the DraftEvent count' do
        expect{ draft_event }.to_not change { DraftEvent.count }
      end
    end
  end
end
