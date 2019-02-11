Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create]

  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end 

end
