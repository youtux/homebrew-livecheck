# frozen_string_literal: true

# Livecheck can be used to check for newer versions of the software.
# The livecheck DSL specified in the formula is evaluated the methods
# of this class, which set the instance variables accordingly. The
# information is used by brew livecheck when checking for newer versions
# of the software.
class Livecheck
  # The reason for skipping livecheck for the formula.
  # e.g. `Not maintained`
  attr_reader :skip_msg

  def initialize(formula)
    @formula = formula
    @regex = nil
    @skip = false
    @skip_msg = nil
    @strategy = nil
    @url = nil
  end

  # Sets the strategy instance variable to the argument given or returns the
  # strategy instance variable when no argument is given.
  # @param symbol [Symbol] corresponding symbol for desired LivecheckStrategy
  # @return [Symbol, nil]
  def strategy(symbol = nil)
    return @strategy if symbol.nil?

    @strategy = symbol if symbol.is_a?(Symbol)
  end

  # Returns a Hash of all instance variable values.
  def to_hash
    {
      "regex"    => @regex,
      "skip"     => @skip,
      "skip_msg" => @skip_msg,
      "strategy" => @strategy,
      "url"      => @url,
    }
  end
end
