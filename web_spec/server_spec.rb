describe Server do
  it 'presents possible actions in index' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Positions')
  end
end
