# frozen_string_literal: true

module LivecheckStrategy
  def self.strategies
    @strategies ||= {
      :apache      => Apache,
      :bitbucket   => Bitbucket,
      :git         => Git,
      :gnome       => Gnome,
      :gnu         => Gnu,
      :hackage     => Hackage,
      :launchpad   => Launchpad,
      :npm         => Npm,
      :page_match  => PageMatch,
      :pypi        => PyPI,
      :sourceforge => SourceForge,
    }.freeze
  end
  private_class_method :strategies

  def self.from_symbol(symbol)
    strategies[symbol]
  end

  def self.from_url(url, regex_provided = nil)
    if Hackage.match?(url)
      return Hackage
    elsif Git.match?(url)
      return Git
    elsif SourceForge.match?(url)
      return SourceForge
    elsif Gnu.match?(url)
      return Gnu
    elsif PyPI.match?(url)
      return PyPI
    elsif Npm.match?(url)
      return Npm
    elsif Gnome.match?(url)
      return Gnome
    elsif Launchpad.match?(url)
      return Launchpad
    elsif Apache.match?(url)
      return Apache
    elsif Bitbucket.match?(url)
      return Bitbucket
    elsif regex_provided
      return PageMatch
    end

    nil
  end
end

require_relative "livecheck_strategy/apache.rb"
require_relative "livecheck_strategy/bitbucket.rb"
require_relative "livecheck_strategy/git.rb"
require_relative "livecheck_strategy/gnome.rb"
require_relative "livecheck_strategy/gnu.rb"
require_relative "livecheck_strategy/hackage.rb"
require_relative "livecheck_strategy/launchpad.rb"
require_relative "livecheck_strategy/npm.rb"
require_relative "livecheck_strategy/page_match.rb"
require_relative "livecheck_strategy/pypi.rb"
require_relative "livecheck_strategy/sourceforge.rb"
