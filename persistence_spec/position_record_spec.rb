describe 'PositionRecord' do
  before do
    PositionRecord.destroy_all
    @position = PositionRecord.new
  end

  it 'is created with empty attributes' do
    expect(@position.id).to be_nil
    expect(@position.name).to be_nil
    expect(@position.description).to be_nil
  end

  it 'keeps a name' do
    @position.name = 'A name'
    expect(@position.name).to eq 'A name'
  end

  it 'keeps a description' do
    @position.description = 'A description'
    expect(@position.description).to eq 'A description'
  end

  it 'does not allow empty name' do
    @position.description = 'anything' 
    expect(@position.valid?).to be false
    expect(@position.errors[:name]).to_not be_empty
  end
   
  it 'does not allow empty description' do
    @position.name = 'anything' 
    expect(@position.valid?).to be false
    expect(@position.errors[:description]).to_not be_empty
  end

  it 'persists' do
    @position.attributes = { name: 'A name', description: 'A description' }
    @position.save
    persisted_position = PositionRecord.find(@position.id)
    expect(persisted_position.name).to eq 'A name'
    expect(persisted_position.description).to eq 'A description'
  end
end
