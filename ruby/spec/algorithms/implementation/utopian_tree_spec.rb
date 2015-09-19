describe Hackerhank::Algorithms::Implementation::UtopianTree do
  subject(:utopian_tree) { described_class.new(cycles) }
  let(:cycles) { 0 }

  describe '#height' do
    subject(:height) { utopian_tree.height }

    it { is_expected.to eq 1 }

    context 'when there are 2 growth cycles' do
      let(:cycles) { 1 }

      it { is_expected.to eq 2 }
    end

    context 'when there are 3 growth cycles' do
      let(:cycles) { 3 }

      it { is_expected.to eq 6 }
    end

    context 'when there are 4 growth cycles' do
      let(:cycles) { 4 }

      it { is_expected.to eq 7 }
    end
  end
end
