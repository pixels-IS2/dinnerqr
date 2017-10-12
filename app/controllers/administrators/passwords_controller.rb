class Administrators::PasswordsController < Devise::PasswordsController
  # GET /resource/password/new
   def new
     self.resource = resource_class.new
   end

  # POST /resource/password
   def create

      #build_resource(resource_params)
      #puts "Hello world"
      #puts resource_params
      self.resource = resource_class.send_reset_password_instructions(resource_params)
      yield resource if block_given?

      unless @administrator.nil?
        AdministratorMailer.reset_password(@administrator).deliver_now
      else
        puts "**********************************************************************************************"
      end

    if successfully_sent?(resource)
      respond_with({}, location: after_sending_reset_password_instructions_path_for(resource_name))
    else
      respond_with(resource)
    end
     
   end

  # GET /resource/password/edit?reset_password_token=abcdef
   def edit
     super
   end

  # PUT /resource/password
   def update
     super
   end

   protected

   def after_resetting_password_path_for(resource)
     super(resource)
   end

  # The path used after sending reset password instructions
   def after_sending_reset_password_instructions_path_for(resource_name)
     super(resource_name)
   end
end
