require "formula"

class Formula
  delegate :livecheck => :"self.class"

  def latest
    self.class.latest
  end

  class << self
    def all_urls
      urls = []
      urls << head.url if head
      if stable
        urls << stable.url
        urls.concat(stable.mirrors)
      end
      urls << homepage if homepage

      urls.compact
    end

    def livecheck(&block)
      @livecheck ||= Livecheck.new(self)
      return @livecheck if livecheckable? || !block_given?

      @livecheckable = true
      @livecheck.instance_eval(&block)
    end

    def _latest
      urls = [@livecheck.url] if @livecheck.url.is_a?(String) && !@livecheck.url.blank?
      urls ||= all_urls
      version_s = version_heuristic(livecheckable?, urls, @livecheck.regex)
      Version.new(version_s)
    end

    def latest
      @latest ||= _latest
    end
  end
end
