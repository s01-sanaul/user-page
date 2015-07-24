class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
def show
  @user = User.find_by_id(params["id"])
end

def new 
end
  
  def create
    u = User.new
    u.name=params["name"]
    u.join_date=params["date"]
    u.descrip=params["descrip"]
    u.image=params["image"]
    u.location=params["loc"]
    u.save
    redirect_to "/user/#{ u.id }"
  end
end
