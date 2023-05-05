class Api::V1::DoctorsController < ApplicationController
  def index
    render json: Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
    render json: @doctor
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      render json: @doctor, status: :created

    else
      render json: { errors: @doctor.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @doctor = Doctor.find(params[:id])
    if @doctor.destroy
      render json: { deleted_doctor: @doctor, message: 'Doctor deleted' }, status: :ok
    else
      render json: { error: 'Doctor deletion failed' }, status: :unprocessable_entity
    end
  end

  def doctor_params
    params.permit(:fullname, :specialization, :profile_picture, :fees, :available_time)
  end
end
