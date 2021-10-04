class Api::V1::LinguagesController < ApplicationController

  def index
    language = Language.all
    render json: language, status: :ok
  end

  def create
    language = Language.new(language_params)
    language.save!
    render json: language, status: :created
  rescue StandardError => e
    render json: { message: e.message}, status: :unprocessable_entity
  end

  def delete
    language = Language.find(params[:id])
    language.destroy!
    render json: language, status: :ok
  rescue StandardError
    head(:bad_request)
  end

  private

  def language_params
    params.require(:language).permit(
      :name,
      :teacher_id
    )
  end
end
