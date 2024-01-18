module Relationships
  def self.of(klass, count = nil)
    # count ||= [Random.rand(1..10) - 7, 0].max
    count ||= 0

    Hash[Array.new(count) { |n| [n, klass.new] }]
  end

  def self.coder_for(klass)
    Module.new do
      instance_eval <<~RUBY, __FILE__, __LINE__ + 1
        def load(payload)
          unless payload.blank?
            ActiveSupport::JSON.load(payload).transform_values { |attrs| #{klass}.new attrs }
          end
        end

        def dump(payload)
          ActiveSupport::JSON.dump(payload)
        end
      RUBY
    end
  end
end
