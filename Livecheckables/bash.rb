class Bash
  livecheck do
    url "http://www.ravenports.com/catalog/bucket_C8/bash/standard/"
    regex(%r{<td id="pkgversion">v?(\d+(?:\.\d+)+)(?:_\d+)?</td>}i)
  end
end
