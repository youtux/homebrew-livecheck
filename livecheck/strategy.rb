# frozen_string_literal: true

# The `Livecheck::Strategy` module contains the various strategies as well
# as some general-purpose methods for working with them. Within the context
# of the `brew livecheck` command, strategies are established procedures
# for finding new software versions at a given source.
module LivecheckStrategy
  module_function

  # Strategy priorities informally range from 1 to 10, where 10 is the
  # highest priority. 5 is the default priority because it's roughly in
  # the middle of this range. Strategies with a priority of 0 (or lower)
  # are ignored.
  DEFAULT_PRIORITY = 5
  private_constant :DEFAULT_PRIORITY

  # Creates and/or returns a `@strategies` `Hash` ,which maps a snake
  # case strategy name symbol (e.g., `:page_match`) to the associated
  # `Strategy`.
  #
  # At present, this should only be called after tap strategies have been
  # loaded, otherwise livecheck won't be able to use them.
  # @return [Hash]
  def strategies
    return @strategies if defined? @strategies

    @strategies = {}
    LivecheckStrategy.constants.sort.each do |strategy_symbol|
      key = strategy_symbol.to_s.underscore.to_sym
      strategy = LivecheckStrategy.const_get(strategy_symbol)
      @strategies[key] = strategy
    end
    @strategies
  end
  private_class_method :strategies

  # Returns the `Strategy` that corresponds to the provided `Symbol` (or
  # `nil` if there is no matching `Strategy`).
  # @param symbol [Symbol] the strategy name in snake case as a `Symbol`
  #   (e.g., `:page_match`)
  # @return [Strategy, nil]
  def from_symbol(symbol)
    strategies[symbol]
  end

  # Returns an array of strategies that apply to the provided URL.
  # @param url [String] the URL to check for matching strategies
  # @param regex_provided [Boolean] whether a regex is provided in a
  #   `livecheck` block
  # @return [Array]
  def from_url(url, regex_provided = nil)
    usable_strategies = strategies.values.select do |strategy|
      # Ignore strategies with a priority of 0 or lower
      next if strategy.const_defined?(:PRIORITY) && !strategy::PRIORITY.positive?

      strategy.respond_to?(:match?) && strategy.match?(url)
    end

    usable_strategies << strategies[:page_match] if strategies.key?(:page_match) && regex_provided

    # Sort usable strategies in descending order by priority, using the
    # DEFAULT_PRIORITY when a strategy doesn't contain a PRIORITY constant
    usable_strategies.sort_by do |strategy|
      (strategy.const_defined?(:PRIORITY) ? -strategy::PRIORITY : -DEFAULT_PRIORITY)
    end
  end
end

require_relative "strategy/apache"
require_relative "strategy/bitbucket"
require_relative "strategy/git"
require_relative "strategy/gnome"
require_relative "strategy/gnu"
require_relative "strategy/hackage"
require_relative "strategy/launchpad"
require_relative "strategy/npm"
require_relative "strategy/page_match"
require_relative "strategy/pypi"
require_relative "strategy/sourceforge"
require_relative "strategy/xorg"
