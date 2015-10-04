require 'rails_helper'
require 'spec_helper'

describe MoviesController, type: :controller do
  describe 'POST #create' do
    context 'with valid attributes' do
      it 'creates the movie' do
        post :create, movie: attributes_for(:movie)
        expect(Movie.count).to eq(1)
      end

      it 'redirects to the movie list' do
        post :create, movie: attributes_for(:movie)
        expect(response).to redirect_to :action => :index
      end
    end

    context 'with invalid attributes' do
      it 'does not create the movie' do
        post :create, movie: attributes_for(:movie, title: nil)
        expect(Movie.count).to eq(0)
      end

      it 're-renders the :new view' do
        post :create, movie: attributes_for(:movie, title: nil)
        expect(response).to render_template :new
      end
    end
  end

  describe 'GET #index' do
    it 'renders the :index view' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    before :each do
      @movie = FactoryGirl.create(:movie)
    end

    it 'shows the correct movie' do
      get :show, id: movie
    end

    it 'renders the :show view' do
      get :show, id: movie
      expect(response).to render_template :show
    end
  end

  describe 'PUT #update' do
    before :each do
      @movie = FactoryGirl.create(:movie)
    end

    context 'with valid attributes' do
      it 'locates the correct movie' do
        put :update, id: @movie, movie: attributes_for(:movie)
        expect(assigns(:movie)).to eq(@movie)
      end

      it 'changes the attributes of the movie' do
        put :update, id: @movie, movie: attributes_for(:movie, title: 'Changed')
        @movie.reload
        expect(@movie.title).to eq('Changed')
      end

      it 'redirects to the index view' do
        put :update, id: @movie, movie: attributes_for(:movie, title: 'Changed')
        expect(response).to redirect_to "http://test.host/movies"
      end
    end

    context 'with invalid attributes' do
      it 'does not change the attributes of the movie' do
        put :update, id: @movie, movie: attributes_for(:movie, title: nil)
        expect(@movie.title).to_not be_nil
      end

      it 're-renders the :edit view' do
        put :update, id: @movie, movie: attributes_for(:movie, title: nil)
        expect(response).to render_template :edit
      end
    end
  end

  describe 'DELETE #destroy' do
    before :each do
      @movie = FactoryGirl.create(:movie)
    end

    it 'deletes the movie' do
      delete :destroy, id: @movie
      expect(Movie.count).to eq(0)
    end

    it 'redirects to the :index view' do
      delete :destroy, id: @movie
      expect(response).to redirect_to "http://test.host/movies"
    end
  end
end
