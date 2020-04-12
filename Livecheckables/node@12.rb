class NodeAT12
  livecheck :url   => "https://nodejs.org/en/download/releases/",
            :regex => %r{<td data-label="Version">Node.js (12\.[0-9\.]+)</td>}
end
