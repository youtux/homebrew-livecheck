# frozen_string_literal: true

module LivecheckStrategy
  def self.strategies
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

  def self.from_symbol(symbol)
    strategies[symbol]
  end

  def self.from_url(url, regex_provided = nil)
    usable_strategies = strategies.values.select do |strategy|
      next if strategy.const_defined?(:PRIORITY) && !strategy::PRIORITY.positive?

      strategy.respond_to?(:match?) && strategy.match?(url)
    end

    usable_strategies << strategies[:page_match] if strategies.key?(:page_match) && regex_provided

    # Sort usable strategies in descending order by priority, using 5 as the
    # default when a PRIORITY isn't provided in the LivecheckStrategy itself.
    usable_strategies.sort_by do |strategy|
      (strategy.const_defined?(:PRIORITY) ? -strategy::PRIORITY : -5)
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
