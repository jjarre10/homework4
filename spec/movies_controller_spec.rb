require 'spec_helper'

describe MoviesController, :type => :controller do
  describe 'edit page for appropriate Movie' do
    it 'When I got to the edit page for the Movie, it should be loaded' do
      mock = mock('Movie')
      Movie.should_receive(:find).with('13').and_return(mock)
      get :edit, {:id => '13'}
      response.should be_success
    end
  end
end
