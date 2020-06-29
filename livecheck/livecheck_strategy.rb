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
    @strategies.freeze
  end
  private_class_method :strategies

  def self.from_symbol(symbol)
    strategies[symbol]
  end

  def self.from_url(url, regex_provided = nil)
    usable_strategies = strategies.except(:page_match).values.select do |strategy|
      strategy.respond_to?(:match?) && strategy.match?(url)
    end

    usable_strategies << strategies[:page_match] if strategies.key?(:page_match) && regex_provided

    usable_strategies.sort_by do |strategy|
      (strategy.const_defined?(:PRIORITY) ? strategy::PRIORITY : 5)
    end.reverse
  end
end

Dir.glob(File.join(__dir__, "livecheck_strategy", "*.rb"), &method(:require))

if Homebrew.args.tap
  current_tap = Tap.fetch(Homebrew.args.tap)
  tap_strategy_path = File.join(current_tap.path, "livecheck_strategy")
  Dir.glob(File.join(tap_strategy_path, "*.rb"), &method(:require)) if Dir.exist?(tap_strategy_path)
end
