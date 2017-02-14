module Api
  module V1

    class GalleriesController < ApplicationController

      def index
        @galleries = Gallery.all
        render json: @galleries
      end

      def create
        @gallery = Gallery.create(gallery_params)
      end

      private
      def gallery_params
        params.require(:gallery).permit(:name, :description)
      end

    end

  end
end
