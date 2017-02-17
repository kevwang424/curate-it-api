module Api
  module V1

    class PiecesController < ApplicationController

      def index
        @pieces = Piece.all
        render json: @pieces
      end

      def create
        @piece = Piece.find_or_create_by(piece_params)
        @gallery = Gallery.find(params[:gallery_id])
        @gallery.pieces << @piece
        render json: @piece
      end

      def show
        @piece = Piece.find(params[:id])
        render json: @piece, serializer: PieceShowSerializer
      end

      private
      def piece_params
        params.require(:piece).permit(:title, :artist_name, :classification, :century, :culture, :image_url, :dimensions, :label_text, :commentary, :dated, :api_id)
      end

    end

  end
end
