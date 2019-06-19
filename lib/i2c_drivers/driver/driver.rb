# frozen_string_literal: true

module I2CDrivers
  module Driver
    # Base driver class
    class Driver
      def i2c_get(_address, _param, _length = 1)
        raise NotImplementedError
      end

      def i2c_set(_address, *_data)
        raise NotImplementedError
      end
    end
  end
end
