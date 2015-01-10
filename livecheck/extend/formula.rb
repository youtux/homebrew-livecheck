require "formula"

class Formula
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

    def livecheck(arg = {}, &block)
      @livecheck_args = block || arg
    end

    def _latest
      # puts "_latest #{livecheck_resource.inspect}"
      @livecheck_args ||= {}
      version_s =
        if @livecheck_args.is_a? Proc
          @livecheck_args.call
        else
          urls = [@livecheck_args[:url]] if @livecheck_args[:url]
          urls ||= all_urls
          regex = @livecheck_args[:regex]

          version_euristic(urls, regex)
        end

      Version.new(version_s)
    end

    def latest
      @latest ||= _latest
    end
  end
end