require 'spec_helper'
require 'integer'

describe Integer do
  describe '#factorial' do
    context 'for values larger than 1' do
      it 'should return the factorial for 1' do
        expect(1.factorial).to eq 1
      end

      it 'should return the factorial for 3' do
        expect(3.factorial).to eq 6
      end

      it 'should return the factorial for 5' do
        expect(5.factorial).to eq 120
      end
    end

    context 'for values less than 1' do
      it 'should raise an exception for 0' do
        expect{ 0.factorial }.to raise_exception
      end

      it 'should raise an exception for -100' do
        expect{ -100.factorial }.to raise_exception
      end
    end
  end
end
