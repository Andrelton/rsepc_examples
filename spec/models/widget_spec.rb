require 'rails_helper'

RSpec.describe Widget, type: :model do

  let(:valid_attributes) { { name: "Eric", color: "#BADA55"} }

  describe 'widget' do

    it { should respond_to(:name) }
    it { should respond_to(:color) }
    it { should respond_to(:marbles) }

    it 'saves it to the database' do
      widget = Widget.create!(valid_attributes)
    end


  end
end
