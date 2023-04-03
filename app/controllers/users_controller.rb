    class UsersController < ApplicationController
        before_action :authorize
        skip_before_action :authorize, only: [:index, :create]

        def index
            return render json: {message: "Kindly sign-in"} unless session.include? :user_id
            users = User.all
            render json: users
        end
    
        def show
            def show
                user = find_user
                if user
                  render json: user
                else
                  render json: { error: "Not authorized" }, status: :unauthorized
                end
              end
        end
    
        def create
            user = User.create(user_params)
             if user.valid?
               render json:user, status: :created
             else
               render json: { errors:user.errors.full_messages }, status: :unprocessable_entity
            end
        end
    
        def update
            def update
                user = find_user
                 if user
                   user.update(user_params)
                   render json: user, status: :accepted
                 else
                   render json: { error: "User not found" }, status: :not_found
                 end
               end
        end
    
           private
    
           def user_params
            params.permit(:name, :image, :email, :phonenumber, :password)
          end
    
          def find_user
            User.find_by(id: session[:user_id])
          end
    
          def authorize
            return render json: {message: "Kindly sign-in"} unless session.include? :user_id
          end
    
    end
    

