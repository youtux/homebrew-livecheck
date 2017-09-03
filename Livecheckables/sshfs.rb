class Sshfs
  livecheck :url => "https://github.com/libfuse/sshfs/releases",
            :regex => %r{href="/libfuse/sshfs/tree/sshfs-(2\.[0-9\.]+)"}
end
