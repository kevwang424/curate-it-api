require "#{Rails.root}/lib/dog.rb"
module Api
  module V1

    class SessionsController < ApplicationController

      def create
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
          jwt = Auth.encrypt({user_id: @user.id})
          render json: {jwt: jwt}
        else
          render json: {:errors=>
           [{:detail=>"Incorrect e-mail or password",
             :source=>{:pointer=>"user/err_type"}}
           ]}, status: 404
        end
      end

      def index
        @galleries = Gallery.all
        render json: @galleries
      end

    end

  end
end
