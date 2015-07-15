require 'rails_helper'

RSpec.describe TigersController do

  describe '#index' do
    it 'assigns all tigers to @tigers' do
      tiger = Tiger.create!
      get :index
      expect(assigns[:tigers]).to eq([tiger])
      expect(session['candy']).to eq('cotton')
    end

    it 'renders the index view, status OK' do
      get :index
      expect(response).to have_rendered('tigers/index')
    end
  end

  describe '#new' do
    it 'should create a new tiger' do
      get :new
      expect(assigns[:tiger]).to be_a Tiger
      expect(assigns[:tiger]).to_not be_persisted
    end
    it 'should render the new tiger form' do
      get :new
      expect(response).to have_rendered('tigers/new')
    end
  end

  describe '#create' do
    let(:tiger){ Tiger.new }
    it 'creates a tiger' do
      expect(Tiger).to receive(:new).with(name: 'Clown Boy')
        .and_return(tiger)
      expect(tiger).to receive(:save).and_return(true)
      post :create, tiger: { name: 'Clown Boy' }
    end
    it 'should save with valid args' do
      post :create, tiger: { name: 'Clown Boy'}
      expect(assigns[:tiger]).to be_persisted
    end
  end
end




