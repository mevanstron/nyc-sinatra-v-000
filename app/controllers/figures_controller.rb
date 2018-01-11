class FiguresController < ApplicationController
  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figures/new' do
    @landmarks = Landmark.all
    @titles = Title.all
    erb :'/figures/new'
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    @titles = @figure.titles
    @landmarks = @figure.landmarks
    erb :'/figures/show'
  end

  post '/figures' do

    figure = Figure.create(params[:figure])

    if !params[:title][:name].empty?
      title = Title.create(params[:title])
      figure.titles << title
    end

    if !params[:landmark][:name].empty?
      landmark = Landmark.create(params[:landmark])
      figure.landmarks << landmark
    end

    figure.save
  end
end
