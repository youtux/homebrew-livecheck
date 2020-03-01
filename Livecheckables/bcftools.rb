class Bcftools
  livecheck :url   => "https://github.com/samtools/bcftools/releases",
            :regex => %r{href="/samtools/bcftools/releases/download/.*/bcftools-([0-9\.]+).tar.bz2"}
end
