Handson::App.controllers :todo do

 get :new do
    @todo = Todo.all
    render :new
 end

post :new do
   Todo.create params[:todo]
   redirect url(:todo, :index)
end

get :remove, :with => :id do
  Todo.find params[:id]
  todo.destroy
  redirect url(:todo, :index)
end

end
