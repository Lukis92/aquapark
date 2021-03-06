# Controller For  Client registration actions by devise gem
class Client::RegistrationsController < Devise::RegistrationsController
  # include ApplicationHelper
  before_action :sign_up_params, only: [:create]
  before_action :account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.for(:sign_up) << :attribute
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  def after_sign_up_path_for(_resource)
    # super(resource)
    new_person_session_path
  end

  def after_sign_in_path_for(resource)
  end
  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  protected

  def update_resource(resource, params)
    resource.update_without_password(params) if current_manager
  end

  private

  def sign_up_params
    params.require(:client).permit(:pesel, :first_name, :last_name,
                                   :date_of_birth, :email, :profile_image,
                                   :password, :password_confirmation)
  end

  def account_update_params
    params.require(:client).permit(:pesel, :first_name, :last_name,
                                   :date_of_birth, :email, :profile_image,
                                   :password, :password_confirmation,
                                   :current_password)
  end
end
