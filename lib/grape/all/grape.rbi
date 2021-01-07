# typed: strong

module Grape; end;

class Grape::API
  sig do
    params(
      name: Symbol,
      type: T.untyped,
      desc: String,
      allow_blank: T::Boolean,
      values: T::Array[T.untyped],
      date_parameter: T::Boolean,
      positive_number: T::Boolean,
      acord130_question_number: T::Boolean,
      id_for_entity_type: T.untyped,
      block: T.nilable(T.proc.void)
    ).void
  end
  def self.requires(
    name,
    type: String,
    desc: nil,
    allow_blank: nil,
    values: nil,
    date_parameter: nil,
    positive_number: nil,
    acord130_question_number: nil,
    id_for_entity_type: nil,
    &block)
  end

  sig do
    params(
      name: Symbol,
      type: T.untyped,
      desc: String,
      allow_blank: T::Boolean,
      values: T::Array[T.untyped],
      date_parameter: T::Boolean,
      positive_number: T::Boolean,
      acord130_question_number: T::Boolean,
      percent_parameter: T::Boolean,
      id_for_entity_type: T.untyped
    ).void
  end
  def self.optional(
    name,
    type: String,
    desc: nil,
    allow_blank: nil,
    values: nil,
    date_parameter: nil,
    positive_number: nil,
    acord130_question_number: nil,
    percent_parameter: nil,
    id_for_entity_type: nil,
    &block
    )
  end

  sig do
    params(
      block: T.nilable(T.proc.void)
    ).returns(T::Hash[T.untyped, T.untyped])
  end
  def self.params(&block)
  end

  sig do
    params(
      block: T.nilable(T.proc.void)
    ).returns(T::Hash[T.untyped, T.untyped])
  end
  def params(&block)
  end

  sig do
    params(
      route: String,
      block: T.nilable(T.proc.void)
    ).void
  end
  def self.put(route, &block)
  end

  sig do
    params(
      conditional: Symbol,
      block: T.nilable(T.proc.void)
    ).void
  end
  def self.given(conditional, &block)
  end


  sig do
    params(
      block: T.nilable(T.proc.void)
    ).void
  end
  def self.helpers(&block)
  end

  sig do
    params(
      route: String,
      block: T.nilable(T.proc.void)
    ).void
  end
  def self.post(route, &block)
  end

  sig do
    params(
      route: String,
      block: T.nilable(T.proc.void)
    ).void
  end
  def self.delete(route, &block)
  end

  sig do
    params(
      route_param_name: T.any(String, Symbol),
      block: T.nilable(T.proc.void)
    ).void
  end
  def self.route_param(route_param_name, &block)
  end

  sig do
    params(
      route: String,
      block: T.nilable(T.proc.void)
    ).void
  end
  def self.get(route = nil, &block)
  end

  sig do
    params(
      space: T.any(T.nilable(Symbol), T.nilable(String)),
      options: T.nilable(T::Hash[T.untyped, T.untyped])
    ).void
  end
  def self.resource(space = nil, options = {})
  end

  sig do
    params(
      space: T.any(T.nilable(Symbol), T.nilable(String)),
      options: T.nilable(T::Hash[T.untyped, T.untyped])
    ).void
  end
  def self.namespace(space = nil, options = {})
  end


  sig do
    params(
      space: T.any(T.nilable(Symbol), T.nilable(String)),
      options: T.any(
        T.nilable(T::Hash[T.untyped, T.untyped]),
        String,
      )
    ).void
  end
  def self.route(space = nil, options = {})
  end

  sig do
    params(
      space: T.any(T.nilable(Symbol), T.nilable(String)),
      options: T.nilable(T::Hash[T.untyped, T.untyped])
    ).void
  end
  def self.resources(space = nil, options = {})
  end

  sig do
    params(
      api_class: T.any(
        T.class_of(Grape::API),
        T::Hash[T.untyped, T.untyped]
      )
    ).void
  end
  def self.mount(api_class)
  end

  sig do
    params(
      object: T.untyped,
      with: T.nilable(T.class_of(Grape::Entity))
    ).void
  end
  def self.present(object, with: nil)
  end

  sig do
    returns(String)
  end
  def self.request_user_ip
  end

  sig do
    returns(String)
  end
  def self.request_user_id
  end

  sig do
    params(
      error_string: String,
      status_code: T.nilable(Integer)
    ).returns(T.noreturn)
  end
  def self.error!(error_string, status_code = nil)
  end

  sig do
    params(
      format: Symbol,
    ).void
  end
  def self.format(format)
  end

  sig do
    params(
      exception: T.class_of(Exception),
      block: T.proc.void
    ).void
  end
  def self.rescue_from(exception, &block)
  end

  sig { params(middleware_class: T.untyped, args: T.untyped, block: T.untyped).void }
  def self.use(middleware_class, *args, &block); end
end

class Grape::API::Boolean; end

class Grape::Schema::Migrations; end

module Grape::Env
  API_VERSION = T.let(T.unsafe(nil), String)
  API_ENDPOINT = T.let(T.unsafe(nil), String)
  API_REQUEST_INPUT = T.let(T.unsafe(nil), String)
  API_REQUEST_BODY = T.let(T.unsafe(nil), String)
  API_TYPE = T.let(T.unsafe(nil), String)
  API_SUBTYPE = T.let(T.unsafe(nil), String)
  API_VENDOR = T.let(T.unsafe(nil), String)
  API_FORMAT = T.let(T.unsafe(nil), String)

  RACK_INPUT = T.let(T.unsafe(nil), String)
  RACK_REQUEST_QUERY_HASH = T.let(T.unsafe(nil), String)
  RACK_REQUEST_FORM_HASH = T.let(T.unsafe(nil), String)
  RACK_REQUEST_FORM_INPUT = T.let(T.unsafe(nil), String)

  GRAPE_REQUEST = T.let(T.unsafe(nil), String)
  GRAPE_REQUEST_HEADERS = T.let(T.unsafe(nil), String)
  GRAPE_REQUEST_PARAMS = T.let(T.unsafe(nil), String)
  GRAPE_ROUTING_ARGS = T.let(T.unsafe(nil), String)
  GRAPE_ALLOWED_METHODS = T.let(T.unsafe(nil), String)
end

class Grape::Request < Rack::Request; end

class Grape::Exceptions::Base; end
class Grape::Exceptions::ValidationErrors < Grape::Exceptions::Base; end
