class LandmarksController < ApplicationController
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get '/landmarks/new' do

    erb :'/landmarks/new'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    @year_completed = @landmark.year_completed
    erb :'landmarks/show'
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params[:id])
    @year_completed = @landmark.year_completed
    erb :'landmarks/edit'
  end

  post '/landmarks' do
    landmark = Landmark.create(params[:landmark])

    redirect to "/landmarks/#{landmark.id}"
  end

  patch '/landmarks/:id' do
    binding.pry
    landmark = Landmark.update(params[:figure])



    figure.save
    redirect :"/figures/#{figure.id}"
  end
end
