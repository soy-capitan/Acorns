describe 'Zillow' do
  let(:url)      { 'https://www.zillow.com/webservice/GetSearchResults.htm' }
  let(:zwsid)    { 'X1-ZWz18mq2n48mq3_14qhc' }
  let(:address)  { '1109-N-Buffalo-St' }
  let(:citystatezip) { 'Portland,-OR-97217' }
  let(:rentzestimate) { 'true' }
  let(:conn)     { Faraday.new }
  let(:resp)     { conn.get url, { :'zws-id' => zwsid, :address => address, :citystatezip => citystatezip, :rentzestimate => rentzestimate } }

  it 'returns status 200' do
    expect(resp.status).to eq 200
  end

  it 'returns the desired information' do
    body = Nokogiri::XML(resp.body)
    expect(body.xpath("//rentzestimate")).not_to be nil
  end
end