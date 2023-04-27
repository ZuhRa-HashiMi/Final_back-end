
module Users
  class RegistrationsController < Devise::RegistrationsController
    respond_to :json

    def create
      user = User.create(user_params)
      if user.valid? && user.save
        render json: user, status: :created
        return
      end
      render json: user.errors, status: unprocessable_entity
    end

    private

    def user_params
      params.require(:user).permit(
        :fullname, :email, :password, :password_confirmation
      )
    end
  end
end