require 'spec_helper'

describe MoviesController, :type => :controller do
  describe 'edit page for appropriate Movie' do
    it 'When I go to the edit page for the Movie, it should be loaded' do
      movie = mock('Movie')
      Movie.should_receive(:find).with('1').and_return(mock)
      get :edit, {:id => '1'}
      response.should be_success
    end

    it 'Updates when requested' do #Replaced editing the director field by itself I think
      movie = mock('Movie', :title => 'Star Wars', :director => 'Steven Spielberg') #mock it
      movie.stub(:update_attributes!)
      Movie.stub(:find).and_return(movie) #return what's in movie right now
      movie.should_receive(:update_attributes!) #saying it should get the method to update
      
      post :update, {:id => '1', :movie => mock('Movie')}
    end
  end    
  
  describe 'Creating/Deleting Movies' do #Make create/delete in its own describe
    it 'When I create a new Movie' do
      movie = mock('Movie')
      movie.stub!(:title)
      Movie.should_receive(:create!).and_return(movie)
      post :create, {:movie => movie}
      
      response.should redirect_to(movies_path) #Redirecting b/c that's what happens when you create a new movie
    end
    it 'When I destroy a movie' do #We're doing the destroy here
      movie = mock('Movie', :title => "Star Wars") #Mock a movie w/ title Star Wars
      Movie.should_receive(:find).with('1').and_return(movie) #find the movie
      movie.should_receive(:destroy) #should get the method destroy
      post :destroy, {:id => '1'} #call destroy where ID is 1
    end
  end

  describe 'Looking at movie info' do
    it 'Should find movies with same director' do
      compare = mock('Movie', :director => "Steven Spielberg") #make a movie with this director
      similar = [mock('Movie'), mock('Movie')] #make two new movies
      Movie.should_receive(:find).with('1').and_return(compare) #Use find with ID 1 and return the mock
      Movie.should_receive(:find_all_by_director).with(compare.director).and_return(similar)
      #Line above will use find_all_by_director and will return compareTo, the mocks of it.
      get :similar, {:id => '1'}
    end
    
  end

end
=begin
describe MoviesController, :type => :controller do
  describe 'adding director for an existing movie'
    it 'when I go to the edit page for Alien,
      
    it 'And I fill in "Director" with "Ridley Scott"
    it 'And I press update Movie Info'
    it 'Then the director for "Alien" Should be "Ridley Scott"
  desctibe 'Find a movie with same director'
    it 'When I am on the details page of "Star Wars"'
    it 'When I follow "Find Movies With Same Director"
      response.should 
    it 'And I should see "THX-1138"'
    it 'But I should not see "Blade Runner"
  describe 'What the program does when we don't know the director'
    it 'When I am on the details page for the movie "Alien"'
    it Then I should not see "Ridley Scott"
    it when I follow "Fing Movies With Same direcor"'
    it "Then I should be on the homepage"
    it "And I should see "'Alien' Has no director info"
=end
