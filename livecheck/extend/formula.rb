require "formula"

class Formula
  def latest
    self.class.latest
  end

  def livecheckable
    self.class.livecheckable
  end

  class << self
    attr_reader :livecheckable

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

    def livecheck(arg = {}, &block)
      @livecheck_args = block || arg
      @livecheckable = true
    end

    def _latest
      @livecheck_args ||= {}
      version_s =
        if @livecheck_args.is_a? Proc
          result = @livecheck_args.call
          if result.is_a? Array
            result.map { |s| Version.new(s) }.max
          else
            result
          end
        else
          urls = [@livecheck_args[:url]] if @livecheck_args[:url]
          urls ||= all_urls
          regex = @livecheck_args[:regex]

          version_heuristic(urls, regex)
        end

      Version.new(version_s)
    end

    def latest
      @latest ||= _latest
    end
  end
end
