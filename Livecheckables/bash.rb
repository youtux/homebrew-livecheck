class Bash
  livecheck :url   => "http://ravenports.ironwolf.systems/catalog/bucket_C8/bash/standard/",
            :regex => %r{<td id="pkgversion">([0-9\.]+)</td>}
end
