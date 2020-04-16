require 'rails_helper'

RSpec.describe 'Routes for ', type: :routing do
  describe 'GET /timeline ' do
    it ' Should routes  to the opinions controller' do
      expect(get('/timeline')).to route_to('opinions#index')
    end
  end
  describe 'POST /timeline ' do
    it 'Should routes  to the opinions controller' do
      expect(post('/timeline')).to route_to('opinions#create')
    end
  end
  describe 'GET /signup ' do
    it 'Should routes  to the users controller' do
      expect(get('/signup')).to route_to('users#new')
    end
  end
  describe 'POST /signup ' do
    it ' Should routes  to the users controller' do
      expect(post('/signup')).to route_to('users#create')
    end
  end
  describe 'GET /login ' do
    it 'Should routes  to the sessions controller' do
      expect(get('/login')).to route_to('sessions#new')
    end
  end
  describe 'POST /login ' do
    it 'Should routes  to the sessions controller' do
      expect(post('/login')).to route_to('sessions#create')
    end
  end
  describe 'DELETE /login ' do
    it 'Should routes  to the sessions controller' do
      expect(delete('/logout')).to route_to('sessions#destroy')
    end
  end
end
