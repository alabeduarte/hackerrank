describe Hackerhank::Algorithms::Implementation::FindDigit do
  subject(:find_digit) { described_class.new }

  describe '#divisible_count' do
    subject(:divisible_count) { find_digit.divisible_count(number) }

    let(:number) { 24 }

    it { is_expected.to eq 2 }

    context 'when same number is repeated twice' do
      let(:number) { 122 }

      it { is_expected.to eq 3 }
    end

    context 'when there is digit 0' do
      let(:number) { 1012 }

      it { is_expected.to eq 3 }
    end
  end
end
