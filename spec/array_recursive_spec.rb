require 'spec_helper'
require 'array'

describe Array do
  let(:arr) { [2, 2, 5, 5, 10] }

  context 'recursive map function' do
    context 'arithmetic operations' do
      it 'can run addition on numbers' do
        expect(arr.mymap_recursive do |number|
          number + 2
        end).to eq([4, 4, 7, 7, 12])
      end

      it 'can run subtraction on numbers' do
        expect(arr.mymap_recursive do |number|
          number - 2
        end).to eq([0, 0, 3, 3, 8])
      end

      it 'can run multiplication on numbers' do
        expect(arr.mymap_recursive do |number|
          number * 2
        end).to eq([4, 4, 10, 10, 20])
      end

      it 'can run division on numbers' do
        expect(arr.mymap_recursive do |number|
          number / 2
        end).to eq([1, 1, 2, 2, 5])
      end
    end

    context 'boolean operations' do
      it 'can return an array of booleans' do
        expect(arr.mymap_recursive do |number|
          number % 2 == 0
        end).to eq([true, true, false, false, true])
      end
    end

    context 'string operations' do
      let(:strings) { %w('hello', 'i', 'am', 'pilgrim') }

      it 'can run any string method on strings' do
        expect(strings.mymap_recursive(&:upcase)).to eq(%w('HELLO', 'I', 'AM', 'PILGRIM'))
      end
    end
  end
end
