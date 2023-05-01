require 'rails_helper'

RSpec.describe "/appointments", type: :request do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Appointment.create! valid_attributes
      get appointments_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      appointment = Appointment.create! valid_attributes
      get appointment_url(appointment)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_appointment_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      appointment = Appointment.create! valid_attributes
      get edit_appointment_url(appointment)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Appointment" do
        expect {
          post appointments_url, params: { appointment: valid_attributes }
        }.to change(Appointment, :count).by(1)
      end

      it "redirects to the created appointment" do
        post appointments_url, params: { appointment: valid_attributes }
        expect(response).to redirect_to(appointment_url(Appointment.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Appointment" do
        expect {
          post appointments_url, params: { appointment: invalid_attributes }
        }.to change(Appointment, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post appointments_url, params: { appointment: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested appointment" do
        appointment = Appointment.create! valid_attributes
        patch appointment_url(appointment), params: { appointment: new_attributes }
        appointment.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the appointment" do
        appointment = Appointment.create! valid_attributes
        patch appointment_url(appointment), params: { appointment: new_attributes }
        appointment.reload
        expect(response).to redirect_to(appointment_url(appointment))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        appointment = Appointment.create! valid_attributes
        patch appointment_url(appointment), params: { appointment: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested appointment" do
      appointment = Appointment.create! valid_attributes
      expect {
        delete appointment_url(appointment)
      }.to change(Appointment, :count).by(-1)
    end

    it "redirects to the appointments list" do
      appointment = Appointment.create! valid_attributes
      delete appointment_url(appointment)
      expect(response).to redirect_to(appointments_url)
    end
  end
end
