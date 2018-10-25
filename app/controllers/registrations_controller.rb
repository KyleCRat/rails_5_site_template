class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user)
          .permit(:first_name,
                  :last_name,
                  :email,
                  :password,
                  :password_confirmation,
                  :auth_tier)
  end

  def account_update_params
    params.require(:user)
          .permit(:first_name,
                  :last_name,
                  :email,
                  :password,
                  :password_confirmation,
                  :current_password,
                  :auth_tier)
  end
end
