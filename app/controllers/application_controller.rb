class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users" do
    users = User.all
    users.to_json(include: { favorites: { include: :activity } })
  end

  get "/activities" do
    activities = Activity.all
    activities.to_json(include: { favorites: { include: :user } })
  end

  get "/favorites" do
    favorites = Favorite.all
    favorites.to_json(include: [:user, :activity])
  end

  post "/users" do
    user = User.create(
      name: params[:name],
      preferences: params[:preferences]
    )
    user.to_json
  end

  post "/favorites" do
    favorite = Favorite.create(
      activity_id: params[:activity_id],
      user_id: params[:user_id]
    )
    favorite.to_json(include: [:user, :activity])
  end

  delete "/favorites/:id" do
    favorite = Favorite.find(params[:id])
    favorite.destroy
    favorite.to_json
  end

  delete "/users/:id" do
    user = Users.find(params[:id])
    user.destroy
    user.to_json
  end

end
