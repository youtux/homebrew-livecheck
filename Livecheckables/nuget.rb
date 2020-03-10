class Nuget
  livecheck :url   => "https://dist.nuget.org/index.json",
            :regex => /"displayName":\s*?"nuget.exe",\s*?"version":\s*?"v?(\d+(?:\.\d+)+)"/i
end
