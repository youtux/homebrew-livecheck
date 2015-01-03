require "formula"

class Formula
  def latest
    self.class.latest
  end

  class << self
    def get_all_urls
      urls = []
      urls << self.head.url if self.head
      urls << self.stable.url if self.stable
      urls.concat(self.mirrors) if self.respond_to? :mirrors

      urls.compact
    end

    def livecheck arg
      puts "self.livecheck #{arg} of type #{arg.class}" if ARGV.debug?

      case arg
      when String
        @latest = Version.new(arg)
      when Version
        @latest = arg
      when Hash
        if arg[:url]
          urls = [arg[:url]]
        else
          urls = get_all_urls()
        end
        regex = arg[:regex]

        @latest = Version.new(version_euristic(urls, regex))
      end
    end

    def latest
      if @latest
        @latest
      else
        @latest = Version.new(version_euristic(get_all_urls))
      end
    end
  end
end