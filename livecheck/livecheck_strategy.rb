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
      Hackage
    elsif Git.match?(url)
      Git
    elsif SourceForge.match?(url)
      SourceForge
    elsif Gnu.match?(url)
      Gnu
    elsif PyPI.match?(url)
      PyPI
    elsif Npm.match?(url)
      Npm
    elsif Gnome.match?(url)
      Gnome
    elsif Launchpad.match?(url)
      Launchpad
    elsif Apache.match?(url)
      Apache
    elsif Bitbucket.match?(url)
      Bitbucket
    elsif regex_provided
      PageMatch
    end
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
