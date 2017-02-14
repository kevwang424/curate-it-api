module Api
  module V1

    class PiecesController < ApplicationController

      def index
        @pieces = Piece.all
        render json: @pieces
      end

      def create
        @piece = Piece.create(piece_params)
      end

      private
      def piece_params
        params.require(:piece).permit(:title, :artist_name, :classification, :century, :place, :image_url, :dimension, :notes)
      end

    end

  end
end
