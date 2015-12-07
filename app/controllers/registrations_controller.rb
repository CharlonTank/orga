class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
  end

  def update
    super
    current_user.titles << Title.where(id: params[:title][:title_id])
    current_user.save
  end

  def update_resource(resource, user_params)
    super
    resource.update_without_password(user_params)
  end

  private 
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end 