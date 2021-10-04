class Api::V1::TeachersController < ApplicationController
  def index
    teacher = Teacher.all
    render json: teacher, status: :ok
  end

  def show
    teacher = Teacher.find(params[:id])
    render json: teacher, status: :ok
  rescue StandardError
    head(:not_found)
  end

  def create
    teacher = Teacher.new(teacher_params)
    teacher.save!
    render json: teacher, status: :created
  rescue StandardError => e
    render json: { message: e.message}, status: :unprocessable_entity
  end

  def update
    teacher = Teacher.find(params[:id])
    teacher.update!(teacher_params)
    render json: teacher, status: :ok
  rescue StandardError
    head(:unprocessable_entity)
  end

  def delete
    teacher = Teacher.find(params[:id])
    teacher.destroy!
    render json: teacher, status: :ok
  rescue StandardError
    head(:bad_request)
  end

  private

  def teacher_params
    params.require(:teacher).permit(
      :name,
        :email,
        :birth
    )

  end
end
