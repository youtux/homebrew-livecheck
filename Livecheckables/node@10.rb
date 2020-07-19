class NodeAT10
  livecheck do
    url "https://nodejs.org/en/download/releases/"
    regex(%r{<td data-label="Version">Node.js (10\.[0-9.]+)</td>}i)
  end
end
