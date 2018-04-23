require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
          end

    post '/teams' do
      @team = Team.new(params[:team])
<<<<<<< HEAD

      params[:team][:members].each do |details|
        member = Member.new(details)
=======
      #  binding.pry
      params[:team][:members].each do |details|

        member = Member.new(details)
          # binding.pry
>>>>>>> 84ce2b5a32a7bba4008719fd8adab037ad52b2a8
        end

      @members = Member.all
        erb :team

    end


end
