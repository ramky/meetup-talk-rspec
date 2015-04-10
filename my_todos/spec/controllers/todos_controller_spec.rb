require 'rails_helper'

RSpec.describe TodosController, type: :controller do
  describe 'GET index' do
    before :each do
      set_current_user
    end

    it 'sets the @todos' do
      cook              = create(:todo, name: 'cook dinner', user: current_user)
      sleep             = create(:todo, name: 'time to sleep', user: current_user)

      get :index

      expect(assigns(:todos)).to match_array([cook, sleep])
    end
  end

  describe 'POST create' do
    before :each do
      set_current_user
      ActionMailer::Base.deliveries.clear
    end

    context 'email sending' do
      it 'sends out the email' do
        post :create, todo: {name: 'shop AT Apple Store'}

        expect(ActionMailer::Base.deliveries.count).to eq 1
      end
    end

    it_behaves_like 'requires_sign_in'  do
      let(:action) { post :create }
    end
  end
end
