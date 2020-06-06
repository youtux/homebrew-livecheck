class Readline
  livecheck do
    url "http://ravenports.ironwolf.systems/catalog/bucket_2D/readline/standard/"
    regex(%r{<td id="pkgversion">v?(\d+(?:\.\d+)+)(?:_\d+)?</td>})
  end
end
