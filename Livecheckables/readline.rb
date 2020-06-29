class Readline
  livecheck do
    url "http://www.ravenports.com/catalog/bucket_2D/readline/standard/"
    regex(%r{<td id="pkgversion">v?(\d+(?:\.\d+)+)(?:_\d+)?</td>})
  end
end
