require 'spec_helper'

describe MoviesController, :type => :controller do
  describe 'edit page for appropriate Movie' do
    it 'When I go to the edit page for the Movie, it should be loaded' do
      movie = mock('Movie')
      Movie.should_receive(:find).with('13').and_return(mock)
      get :edit, {:id => '13'}
      response.should be_success
    end
    
    it 'And I fill in "Director" with "Ridley Scott", And I press ' do
      mock = mock('Movie')
      director.stub!(:director)
      Movie.should_receive(:edit!).and_return(director)
      #post :edit, {:director => director}
      response.should be_success
    end
    #describe

  end
  describe 'create a new Movie' do
    it 'When I create a new Movie' do
      movie = mock('Movie')
      movie.stub!(:title)
      Movie.should_receive(:create!).and_return(movie)
      post :create, {:movie => movie}
      
      response.should redirect_to(movies_path) #Redirecting b/c that's what happens when you create a new movie
            
    end
  end  
  
  

  
end
