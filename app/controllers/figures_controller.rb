class FiguresController < ApplicationController
  get '/figures/new' do
    @landmarks = Landmark.all
    @titles = Title.all
    erb :'/figures/new'
  end

  post '/figures' do

    figure = Figure.create(params[:figure])
    binding.pry
    if params[:landmark]
  end
end
