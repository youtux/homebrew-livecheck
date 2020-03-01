class Htslib
  livecheck :url   => "https://github.com/samtools/htslib/releases",
            :regex => %r{href="/samtools/htslib/tree/([0-9\.]+)}
end
