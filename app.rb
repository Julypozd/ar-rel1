require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
set :database, { adapter: "sqlite3", database: "mydb.db" }
require "./models/user"
require "./models/team"
#You want to have a route to display a form that allows the user to specify a name from the users table, and posts the result 
#back to another route that will display that user’s attributes along with the team to which they belong.  

get '/' do
    User.all.to_yaml + Team.all.to_yaml
end

get '/users1' do
    @users  = User.all
    erb :users1
end

get '/users2' do
    @users  = User.all
    erb :users2
end

post '/show_user' do
    @user = User.find_by(name: params[:name])
    if @user.nil?
        return "Can not find the user"
    end
    erb :user
end

get '/user/:id' do
    @user = User.find(params[:id])
    if @user.nil?
        return "Can not find the user"
    end
    erb :user
end

#You want to have a route to display a form that allows the user to specify the name of the team, and posts the result back to another route that
#will display the team attributes and all team members

get '/teams' do
    @teams  = Team.all
    erb :teams
end

get '/teams2' do
    @teams  = Team.all
    erb :teams2
end

post '/show_team' do
    @team = Team.find_by(name: params[:name])
    if @team.nil?
        return "Can not find the team"
    end
    erb :team
end


get '/team/:id' do
    @team = Team.find(params[:id])
    if @team.nil?
        return "Can not find the user"
    end
    erb :team
end