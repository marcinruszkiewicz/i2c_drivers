# frozen_string_literal: true

require 'i2c_drivers/version'
require 'i2c_drivers/driver/driver'
require 'i2c_drivers/driver/i2c_dev'

module I2CDrivers
  class I2CIOError < StandardError; end
end
