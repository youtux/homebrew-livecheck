class NodeAT10
  livecheck do
    url "https://nodejs.org/en/download/releases/"
    regex(%r{<td data-label="Version">Node.js v?(10(?:\.\d+)+)</td>}i)
  end
end
