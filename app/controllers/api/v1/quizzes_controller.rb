class Api::V1::QuizzesController < ApplicationController
    before_action :set_quiz, only: %i[ show destroy ]

    # GET /quizzes
    def index
      @quizzes = Quiz.all
      render json: @quizzes
    end

    # GET /quizzes/:id
    def show
      render json: @quiz
    end

    # POST /quizzes/create
    def create
        @quiz = Quiz.new(quiz_params)
        if @quiz.save
            render json: @quiz, status: :created
        else
            render json: @quiz.errors, status: :unprocessable_entity
        end
    end

    # DELETE /quizzes/:id
    def destroy
      @quiz.destroy
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    def quiz_params
        params.permit(:question, :answer, :topic)
    end
end
