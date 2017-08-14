class NodeAT4
  livecheck :url => "https://nodejs.org/en/download/releases/",
            :regex => %r{<td data-label="Version">Node.js v(4\.[0-9\.]+)</td>}
end
