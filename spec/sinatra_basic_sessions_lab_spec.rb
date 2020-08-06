describe App do

  describe 'GET /' do
    
    it 'sends a 200 status code' do
      get '/'
      expect(last_response.status).to eq(200)
    end

    it 'renders a form to purchase an item' do 
      visit '/'
      expect(page).to have_selector("form")
      expect(page).to have_field(:item)
    end
  end

  

  
end