module Bogus
  class CreatesAnonymousStubs
    extend Bogus::Takes

    takes :creates_fakes, :create_stub

    def create(methods = {})
      object = RespondsToEverything.new
      methods.each do |name, result|
        create_stub.call(object).__send__(name) { result }
      end
      object
    end

    class RespondsToEverything
      include RecordInteractions

      def respond_to?(method)
        true
      end

      def method_missing(name, *args, &block)
        __record__(name, *args, &block)
      end
    end
  end
end
