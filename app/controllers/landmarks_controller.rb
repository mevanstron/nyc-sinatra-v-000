class LandmarksController < ApplicationController
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get '/landmarks/new' do

    erb :'/landmarks/new'
  end

  get '/landmarks/:id/' do
    @landmark = Landmark.find(params[:id])
    #binding.pry
    erb :'landmarks/show'
  end

  post '/landmarks' do
    landmark = Landmark.create(params[:landmark])
    #binding.pry
    redirect to "/landmarks/#{landmark.id}"
  end
end
