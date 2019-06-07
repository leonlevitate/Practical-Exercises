require 'exercise2'

describe Note do
  describe '#display' do
    it "displays a formatted note" do
      format_double = double :formatter, format: 1
      note = Note.new("Title", "Body", format_double)
      expect(note.display).to eq 1
    end
  end
end
