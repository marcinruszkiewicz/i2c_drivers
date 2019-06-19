# frozen_string_literal: true

RSpec.describe I2CDrivers::Driver::Driver do
  let(:subject) { I2CDrivers::Driver::Driver.new }

  describe '#i2c_get' do
    it 'raises error' do
      expect { subject.i2c_get(0x77, 1, 1) }.to raise_error NotImplementedError
    end
  end

  describe '#i2c_set' do
    it 'raises error' do
      expect { subject.i2c_set(0x77, 1) }.to raise_error NotImplementedError
    end
  end
end
