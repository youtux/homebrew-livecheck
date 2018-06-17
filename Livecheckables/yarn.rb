class Yarn
  livecheck :url => "https://yarnpkg.com/en/",
            :regex => %r{<a href="https://github.com/yarnpkg/yarn/releases/tag/v([0-9,\.]+)">}
end
