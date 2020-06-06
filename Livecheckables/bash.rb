class Bash
  livecheck do
    url "http://ravenports.ironwolf.systems/catalog/bucket_C8/bash/standard/"
    regex(%r{<td id="pkgversion">v?(\d+(?:\.\d+)+)(?:_\d+)?</td>})
  end
end
