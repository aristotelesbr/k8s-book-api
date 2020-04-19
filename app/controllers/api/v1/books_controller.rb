# frozen_string_literal: true

module Api
  module V1
    # BooksController
    class BooksController < ApplicationController
      def index
        books = Book.order(created_at: :desc)
        render json: {
          status: 'SUCCESS',
          message: 'loaded books',
          data: books
        }
      end

      def show
        book = Book.find(params[:id])
        render json: {
          status: 'SUCCESS',
          message: 'loaded books',
          data: book
        }
      rescue ActiveRecord::RecordNotFound
        render json: {
          status: 'NOT FOUND',
          message: 'Book Not found',
          data: ['Book Not found']
        }
      end
    end
  end
end
