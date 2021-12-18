require 'rails_helper' 

RSpec.describe Character do 
  let(:character) { Character.new( {allies: ["Ozai"], enemies: ["Zuko"], photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/7/76/Bujing.png/revision/latest?cb=20130714152817", name: "Bujing", affiliation: "Fire Nation military"} ) }
  context 'all fields are available' do 
    it 'has all attributes' do 
      expect(character.allies).to eq("Ozai")
      expect(character.enemies).to eq("Zuko")
      expect(character.image).to eq("https://vignette.wikia.nocookie.net/avatar/images/7/76/Bujing.png/revision/latest?cb=20130714152817")
      expect(character.name).to eq("Bujing")
      expect(character.affiliation).to eq("Fire Nation military")
    end 
  end

  context 'some fields are missing that can be replaced with a none value' do 
    let(:character) { Character.new( {allies: [], enemies: [], photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/7/76/Bujing.png/revision/latest?cb=20130714152817", name: "Bujing", affiliation: ""} ) }
    
    it 'replaces some fields with a none string' do 
      expect(character.allies).to eq("None")
      expect(character.enemies).to eq("None")
      expect(character.image).to eq("https://vignette.wikia.nocookie.net/avatar/images/7/76/Bujing.png/revision/latest?cb=20130714152817")
      expect(character.name).to eq("Bujing")
      expect(character.affiliation).to eq("None")
    end 
  end 
end 