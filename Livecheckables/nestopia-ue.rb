# per http://0ldsk00l.ca/nestopia/
# latest source code is tagged with 1.50 on Jan 2020 (no active development in the near future)
# however the release artifact is still with 1.49
class NestopiaUe
  livecheck :url   => "https://sourceforge.net/projects/nestopiaue/",
            :regex => %r{/nestopia-([0-9\.]+)\.t}
end
