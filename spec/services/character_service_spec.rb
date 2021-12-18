require 'rails_helper'

RSpec.describe 'Airbender API Service' do 
  describe 'happy path' do 
    context 'the nation exists' do 
      it 'can get all characters for a given nation' do 
        nation_param = 'Fire+Nation'
        response = CharacterService.get_nation_characters(nation_param)
 
        expect(response).to be_an(Array)

        character = response[1]

        expect(character[:_id]).to be_a(String)
        expect(character[:allies]).to be_an(Array)
        expect(character[:enemies]).to be_a(Array)
        expect(character[:photoUrl]).to be_a(String)
        expect(character[:name]).to be_a(String)
        expect(character[:affiliation]).to be_a(String)
      end 
    end 
  end 

  describe 'sad path' do 
    context 'the nation does not exists' do 
      it 'can get all characters for a given nation' do 
        nation_param = 'blah'
        response = CharacterService.get_nation_characters(nation_param)

        expect(response).to be_an(Array)
        expect(response.length).to eq(0)
      end 
    end 
  end 
end 