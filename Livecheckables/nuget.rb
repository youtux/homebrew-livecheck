class Nuget
  livecheck :url   => "https://dist.nuget.org/tools.json",
            :regex => %r{"url":\s*?"[^"]+/v?(\d+(?:\.\d+)+)/nuget\.exe",\s*?"stage":\s*?"ReleasedAndBlessed"}i
end
