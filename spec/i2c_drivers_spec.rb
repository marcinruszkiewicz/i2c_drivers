# frozen_string_literal: true

RSpec.describe I2CDrivers do
  it 'has a version number' do
    expect(I2CDrivers::VERSION).not_to be nil
  end
end
