module Api

  describe PostsController do
    it 'is authenticated' do
      get :index, user_id: users(:logan)
      expect(response.status).to eq 200
    end
  end

end