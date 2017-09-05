class Avfs
  livecheck :url => "https://sourceforge.net/projects/avf/",
            :regex => %r{href="/projects/avf/files/latest/download" title="Download /avfs/[0-9\.]+/avfs-([0-9\.]+)\.t}
end
