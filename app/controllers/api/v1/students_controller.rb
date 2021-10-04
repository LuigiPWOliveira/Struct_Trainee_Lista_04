class Api::V1::StudentsController < ApplicationController
  def index
    student = Student.all
    render json: student, status: :ok
  end

  def show
    student = Student.find(params[:id])
    render json: student, status: :ok
  rescue StandardError
    head(:not_found)
  end

  def create
    student = Student.new(student_params)
    student.save!
    render json: student, status: :created
  rescue StandardError => e
    render json: { message: e.message}, status: :unprocessable_entity
  end

  def update
    student = Student.find(params[:id])
    student.update!(student_params)
    render json: student, status: :ok
  rescue StandardError
    head(:unprocessable_entity)
  end

  def delete
    student = Student.find(params[:id])
    student.destroy!
    render json: student, status: :ok
  rescue StandardError
    head(:bad_request)
  end

  private

  def student_params
    params.require(:student).permit(
      :name,
      :registration,
      :email,
      :birth,
      :teacher_id
    )
  end
end
