module RoleLifepath
  def self.load(payload)
    return if payload.blank?

    ActiveSupport::JSON.load(payload).symbolize_keys => { role:, **attrs }
    self.for role, **attrs
  end

  def self.dump(payload)
    ActiveSupport::JSON.dump(payload)
  end

  def self.for(role, **attrs, &block)
    return if role.blank?

    begin
      klass = const_get(role.to_s.camelize)
    rescue NameError
      raise ArgumentError, "invalid role #{role}"
    end

    klass.new(**attrs, &block)
  end

  class Base
    include ActiveModel::API
    include ActiveModel::Attributes

    def to_partial_path
      "role_lifepaths/#{role}"
    end

    def as_json(options = nil)
      { role:, **attributes }.as_json(options)
    end

    def role
      model_name.element
    end
  end
end
