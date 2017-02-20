module Api
  module V1

    class GalleriesController < ApplicationController

      def index
        @galleries = signed_in_user.galleries
        render json: @galleries
      end

      def create
        @gallery = Gallery.create(gallery_params)
        signed_in_user.galleries << @gallery
        @serialized_gallery = GalleryShowSerializer.new(@gallery)
        @galleries = signed_in_user.galleries
        render json: {galleryIndex: @galleries, gallery: @serialized_gallery}
      end

      def show
        @gallery = Gallery.find(params[:id])
        render json: @gallery, serializer: GalleryShowSerializer
      end

      def destroy
        @gallery = Gallery.find(params[:id])
        signed_in_user.galleries.delete(@gallery)
        @gallery.destroy
        @galleries = signed_in_user.galleries
        render json: @galleries
      end

      private
      def gallery_params
        params.permit(:name, :description)
      end

    end

  end
end
