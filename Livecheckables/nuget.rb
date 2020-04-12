class Nuget
  livecheck :url   => "https://dist.nuget.org/index.json",
            :regex => /"displayName":\s*?"nuget.exe - recommended latest",\s*?"version":\s*?"v?(\d+(?:\.\d+)+)"/i
end
