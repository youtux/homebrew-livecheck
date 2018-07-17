class Micronaut
  livecheck :url => "https://github.com/micronaut-projects/micronaut-core/releases",
            :regex => %r{href="/micronaut-projects/micronaut-core/releases/download/.*micronaut-(.*)\.zip}
end
