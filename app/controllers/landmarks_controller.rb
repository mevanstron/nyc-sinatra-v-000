class LandmarksController < ApplicationController
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get '/landmarks/new' do
    @figures = figure.all
    @titles = Title.all
    erb :'/landmarks/new'
  end
end
