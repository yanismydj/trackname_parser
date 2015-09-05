require 'spec_helper'

describe TracknameParser do
  let(:sample_track_name) { "D-Unity - Out Loud (Oscar L Remix) [UNITY] " }

  describe '.parse' do
    it 'returns a hash with the correct keys' do
      expect(TracknameParser.parse(sample_track_name).keys).to eq([:artist, :name, :remix, :label])
    end

    it 'correctly returns the artist' do
      expect(TracknameParser.parse(sample_track_name)[:artist]).to eq("D-Unity")
    end

    it 'correctly returns the name' do
      expect(TracknameParser.parse(sample_track_name)[:name]).to eq("Out Loud")
    end

    it 'correctly returns the remix' do
      expect(TracknameParser.parse(sample_track_name)[:remix]).to eq("Oscar L Remix")
    end

    it 'correctly returns the label' do
      expect(TracknameParser.parse(sample_track_name)[:label]).to eq("UNITY")
    end
  end
end
