class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def creaate
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      render json: @doctor, status: :created
      
    else
      render json: { errors: @doctor.errors.full_messages }, status: :unprocessable_entity
    end
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
