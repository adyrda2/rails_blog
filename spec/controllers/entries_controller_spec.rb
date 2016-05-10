require 'rails_helper'

describe EntriesController do
  let!(:entry) { FactoryGirl.create(:entry)}

  describe 'GET #index' do 
    it "renders the index template" do
    get :index
    expect(response).to render_template("index")
  	end
  end
  
  describe 'GET #new' do 
  	it 'assigns a new entry to as @entry' do 
  		get :new, { id: entry.to_param }
  		expect(assigns(:entry)).to be_a_new Entry
  	end 
  end 

  describe 'GET #show' do
    it 'assigns the requested entry as @entry' do
      get :show, { id: entry.to_param }
      expect(assigns(:entry)).to eq(entry)
    end
  end

  describe 'DELETE #destroy' do 
   it 'should destroy entry' do
      expect{ 
        delete :destroy, { id: entry.to_param} 
     }.to change(Entry, :count).by(-1)
  	end
  end 
end 