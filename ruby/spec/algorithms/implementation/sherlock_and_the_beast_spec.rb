describe Hackerhank::Algorithms::Implementation::Sherlock do
  subject(:sherlock) { described_class.new }

  describe '#decent_number' do
    subject(:decent_number) { sherlock.decent_number(number_of_digits) }

    context 'when number of digits is 3 digits' do
      let(:number_of_digits) { 3 }

      it { expect(decent_number).to eq '555' }
    end

    context 'when number of digits is 5 digits' do
      let(:number_of_digits) { 5 }

      it { expect(decent_number).to eq '33333' }
    end

    context 'when no such number exists' do
      let(:number_of_digits) { 1 }

      it { expect(decent_number).to eq '-1' }
    end

    context 'when number of digits are bigger than decent number' do
      let(:number_of_digits) { 11 }

      it { expect(decent_number).to eq '55555533333' }

      context 'when number of digits are 13' do
        let(:number_of_digits) { 13 }

        it { expect(decent_number).to eq '5553333333333' }
      end
    end
  end
end
