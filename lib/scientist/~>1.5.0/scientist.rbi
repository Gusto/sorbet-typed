# typed: true

module Scientist
  def default_scientist_context; end
  def science(name, opts = T.unsafe(nil)); end

  class << self
    def run(name, opts = T.unsafe(nil)); end
  end
end

class Scientist::BadBehavior < ::StandardError
  def initialize(experiment, name, message); end

  def experiment; end
  def name; end
end

class Scientist::BehaviorMissing < ::Scientist::BadBehavior
  def initialize(experiment, name); end
end

class Scientist::BehaviorNotUnique < ::Scientist::BadBehavior
  def initialize(experiment, name); end
end

class Scientist::Default
  include(::Scientist::Experiment)
  extend(::Scientist::Experiment::RaiseOnMismatch)

  def initialize(name); end

  def enabled?; end
  def name; end
  def publish(result); end
end

module Scientist::Experiment
  mixes_in_class_methods(::Scientist::Experiment::RaiseOnMismatch)

  def before_run(&block); end
  def behaviors; end
  def clean(&block); end
  def clean_value(value); end
  def cleaner; end
  def compare(*args, &block); end

  sig { params(context: T::Hash[Symbol, T.untyped]).returns(T::Hash[Symbol, T.untyped]) }
  def context(context = T.unsafe(nil)); end

  def fabricate_durations_for_testing_purposes(fabricated_durations = T.unsafe(nil)); end
  def generate_result(name); end
  def ignore(&block); end
  def ignore_mismatched_observation?(control, candidate); end
  def name; end
  def observations_are_equivalent?(a, b); end
  def raise_on_mismatches; end
  def raise_on_mismatches=(_arg0); end
  def raise_on_mismatches?; end
  def raise_with(exception); end
  def raised(operation, error); end
  def run(name = T.unsafe(nil)); end
  def run_if(&block); end
  def run_if_block_allows?; end
  def should_experiment_run?; end
  def try(name = T.unsafe(nil), &block); end
  def use(&block); end

  class << self
    def included(base); end
    def new(name); end
    def set_default(klass); end
  end
end

class Scientist::Experiment::MismatchError < ::Exception
  def initialize(name, result); end

  def format_observation(observation); end
  def name; end
  def result; end
  def to_s; end
end

module Scientist::Experiment::RaiseOnMismatch
  def raise_on_mismatches=(bool); end
  def raise_on_mismatches?; end
end

class Scientist::NoValue < ::StandardError
  def initialize(observation); end

  def observation; end
end

class Scientist::Observation
  def initialize(name, experiment, fabricated_duration: T.unsafe(nil), &block); end

  def cleaned_value; end
  def duration; end
  def equivalent_to?(other, &comparator); end
  def exception; end
  def experiment; end
  def hash; end
  def name; end
  def raised?; end
  def value; end
end

Scientist::Observation::RESCUES = T.let(T.unsafe(nil), Array)

class Scientist::Result
  def initialize(experiment, observations = T.unsafe(nil), control = T.unsafe(nil)); end

  def candidates; end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def context; end

  def control; end
  def evaluate_candidates; end
  def experiment; end
  def experiment_name; end
  def ignored; end

  sig { returns(T::Boolean) }
  def ignored?; end

  sig { returns(T::Boolean) }
  def matched?; end

  def mismatched; end

  sig { returns(T::Boolean) }
  def mismatched?; end

  def observations; end
end

Scientist::VERSION = T.let(T.unsafe(nil), String)
