require "exception-hashify/version"

class Exception
  module Hashify
    def to_hash
      @hash ||= {
        :class_name => self.class.name,
        :message => message,
        :backtrace => backtrace
      }
    end
  end

  include Hashify
end

