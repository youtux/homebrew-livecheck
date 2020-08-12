class Widelands
  livecheck do
    url :stable
    regex(%r{<div class="version">\s*Latest version is [^<]*?v?(\d+(?:\.\d+)*)\s*</div>}i)
  end
end
