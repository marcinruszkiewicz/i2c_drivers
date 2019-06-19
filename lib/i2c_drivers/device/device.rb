# frozen_string_literal: true

module I2CDrivers
  module Device
    # Base device class
    class Device
      def initialize(address:)
        @driver = I2CDrivers::Driver::I2CDev.new
        @address = address
      end

      def i2c_get(param, length = 1)
        @driver.i2c_get(@address, param, length)
      end

      def i2c_set(*data)
        @driver.i2c_set(@address, *data)
      end
    end
  end
end
