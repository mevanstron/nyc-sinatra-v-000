class FiguresController < ApplicationController
  get '/figures/new' do
    @landmarks = Landmark.all
    @titles = Title.all
    erb :'/figures/new'
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
