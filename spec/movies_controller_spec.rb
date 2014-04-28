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
