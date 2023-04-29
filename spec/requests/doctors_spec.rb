require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/doctors", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Doctor. As you add validations to Doctor, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Doctor.create! valid_attributes
      get doctors_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      doctor = Doctor.create! valid_attributes
      get doctor_url(doctor)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_doctor_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      doctor = Doctor.create! valid_attributes
      get edit_doctor_url(doctor)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Doctor" do
        expect {
          post doctors_url, params: { doctor: valid_attributes }
        }.to change(Doctor, :count).by(1)
      end

      it "redirects to the created doctor" do
        post doctors_url, params: { doctor: valid_attributes }
        expect(response).to redirect_to(doctor_url(Doctor.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Doctor" do
        expect {
          post doctors_url, params: { doctor: invalid_attributes }
        }.to change(Doctor, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post doctors_url, params: { doctor: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested doctor" do
        doctor = Doctor.create! valid_attributes
        patch doctor_url(doctor), params: { doctor: new_attributes }
        doctor.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the doctor" do
        doctor = Doctor.create! valid_attributes
        patch doctor_url(doctor), params: { doctor: new_attributes }
        doctor.reload
        expect(response).to redirect_to(doctor_url(doctor))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        doctor = Doctor.create! valid_attributes
        patch doctor_url(doctor), params: { doctor: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested doctor" do
      doctor = Doctor.create! valid_attributes
      expect {
        delete doctor_url(doctor)
      }.to change(Doctor, :count).by(-1)
    end

    it "redirects to the doctors list" do
      doctor = Doctor.create! valid_attributes
      delete doctor_url(doctor)
      expect(response).to redirect_to(doctors_url)
    end
  end
end
