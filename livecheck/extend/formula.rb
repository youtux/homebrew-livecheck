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

    def livecheck(arg)
      case arg
      when String
        @latest = Version.new(arg)
      when Version
        @latest = arg
      when Hash
        if arg[:url]
          urls = [arg[:url]]
        else
          urls = all_urls
        end
        regex = arg[:regex]

        @latest = Version.new(version_euristic(urls, regex))
      end
    end

    def latest
      if @latest
        @latest
      else
        @latest = Version.new(version_euristic(all_urls))
      end
    end
  end
end