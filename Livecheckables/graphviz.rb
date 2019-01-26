class Graphviz
  livecheck :url => "https://graphviz.gitlab.io/_pages/Download/Download_source.html",
    :regex => /href=".*stable.*graphviz-([\d.]+\.[\d.]+\.[\d.]+)\.t/
end
