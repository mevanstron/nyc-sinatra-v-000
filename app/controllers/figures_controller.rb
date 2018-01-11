class FiguresController < ApplicationController
  get '/figures/new' do
    @landmarks = Lankmark.all
    @titles = Title.all
    erb :'/figures/new'
  end
end
