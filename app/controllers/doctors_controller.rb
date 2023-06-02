class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[ show edit update destroy ]

  # GET /doctors or /doctors.json
  def index
    doctors = Doctor.all
    render json: doctors
  end

  # GET /doctors/1 or /doctors/1.json
  def show
    doctor = Doctor.find_by(id: params[:id])
     if doctor
      render json: doctor
     else
      render json: {"error": "User not found"}
     end
  end

 

  # POST /doctors or /doctors.json
  def create
    doctor = Doctor.create(doctor_params)

    if doctor
      render json: doctor
    else
      render json: {"error": "cannot be created" }, status: :not_acceptable
    end

    
  end

  # PATCH/PUT /doctors/1 or /doctors/1.json
  def update
    doctor = Doctor.find_by(id: params[:id])

    doctor.update(doctor_params)

    if doctor
      render json: doctor
    else
      render json: {"error": "cannot be updated" }
    end
  end

  # DELETE /doctors/1 or /doctors/1.json
  def destroy
    doctor = Doctor.find_by(id: params[:id])
    doctor.destroy

    head :no_content
      
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doctor_params
      params.permit(:name, :age, :gender, :phone_number, :email, :specialization, :available, :is_active, :password_digest, :role)
    end
end
