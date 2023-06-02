class PatientsController < ApplicationController
  before_action :set_patient, only: %i[ show edit update destroy ]

  # GET /patients or /patients.json
  def index
    patients = Patient.all
    render json: patients
  end

 

  # POST /patients or /patients.json
  def create
    patient = Patient.create(patient_params)

    if patient
      render json: patient
    else
      render json: {"error": "cannot be created" }, status: :not_acceptable
    end

    
  end

  # PATCH/PUT /patients/1 or /patients/1.json
  def update
    patient = Patient.find_by(id: params[:id])

    patient.update(patient_params)

    if patient
      render json: patient
    else
      render json: {"error": "cannot be updated" }
    end
  end

  # DELETE /patients/1 or /patients/1.json
  def destroy
    patient = Patient.find_by(id: params[:id])
    patient.destroy

    head :no_content
      
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_params
      params.permit(:name, :phone_number, :email, :age, :description)
    end
end
