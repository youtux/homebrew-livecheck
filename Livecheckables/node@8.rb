class NodeAT8
  livecheck :url => "https://nodejs.org/en/download/releases/",
            :regex => %r{<td data-label="Version">Node.js (8\.[0-9\.]+)</td>}
end
