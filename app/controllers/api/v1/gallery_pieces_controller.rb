module Api
  module V1

    class GalleryPiecesController < ApplicationController

      def destroy
        GalleryPiece.destroy_all(["piece_id = :piece_id and gallery_id = :gallery_id", { piece_id: params[:piece], gallery_id: params[:gallery_id]}])
        #after destroying piece, render the gallery again
        @gallery = Gallery.find(params[:gallery_id])
        render json: @gallery, serializer: GalleryShowSerializer
      end
    end
  end
end
