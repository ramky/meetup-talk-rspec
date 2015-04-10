shared_examples 'requires_sign_in' do
  it "redirects to the front page if you aren't logged in" do
    reset_current_user
    action
    expect(response).to redirect_to front_page_path
  end
end
