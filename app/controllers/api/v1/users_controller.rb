module Api
  module V1

    class UsersController < ApplicationController

      def create
        @user = User.new(user_params)
        if @user.save
          jwt = Auth.encrypt({user_id: @user.id})
          render json: {jwt: jwt}
        # else
        #   render json: {:errors=>
        #    [{:detail=>"incorrect email or password",
        #      :source=>{:pointer=>"user/err_type"}}
        #    ]}, status: 404
        end
      end

      def show
        @user = User.find(params[:id])
        render json: @user, serializer: UserShowSerializer
      end

      private
      def user_params
        params.permit(:first_name, :last_name, :email, :password, :password_confirmation)
      end

    end

  end
end
