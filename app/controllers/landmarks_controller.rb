class LandmarksController < ApplicationController
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get '/landmarks/new' do

    erb :'/landmarks/new'
  end

  post '/landmarks' do
    
    
    redirect :"/landmarks/#{landmark.id}"
  end
end
