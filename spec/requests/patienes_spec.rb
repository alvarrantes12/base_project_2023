require 'rails_helper'

RSpec.describe "/patienes", type: :request do
  
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Patiene.create! valid_attributes
      get patienes_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      patiene = Patiene.create! valid_attributes
      get patiene_url(patiene)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_patiene_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      patiene = Patiene.create! valid_attributes
      get edit_patiene_url(patiene)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Patiene" do
        expect {
          post patienes_url, params: { patiene: valid_attributes }
        }.to change(Patiene, :count).by(1)
      end

      it "redirects to the created patiene" do
        post patienes_url, params: { patiene: valid_attributes }
        expect(response).to redirect_to(patiene_url(Patiene.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Patiene" do
        expect {
          post patienes_url, params: { patiene: invalid_attributes }
        }.to change(Patiene, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post patienes_url, params: { patiene: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested patiene" do
        patiene = Patiene.create! valid_attributes
        patch patiene_url(patiene), params: { patiene: new_attributes }
        patiene.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the patiene" do
        patiene = Patiene.create! valid_attributes
        patch patiene_url(patiene), params: { patiene: new_attributes }
        patiene.reload
        expect(response).to redirect_to(patiene_url(patiene))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        patiene = Patiene.create! valid_attributes
        patch patiene_url(patiene), params: { patiene: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested patiene" do
      patiene = Patiene.create! valid_attributes
      expect {
        delete patiene_url(patiene)
      }.to change(Patiene, :count).by(-1)
    end

    it "redirects to the patienes list" do
      patiene = Patiene.create! valid_attributes
      delete patiene_url(patiene)
      expect(response).to redirect_to(patienes_url)
    end
  end
end
