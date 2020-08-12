class Bzrtools
  # https://launchpad.net/bzrtools/ doesn't provide the latest version, so we
  # can't currently use the `Launchpad` strategy for this. Instead, we have to
  # replicate the behavior of the Launchpad strategy here while checking the
  # `/stable/` page.
  livecheck do
    url "https://launchpad.net/bzrtools/stable/"
    strategy :page_match
    regex(%r{<div class="version">\s*Latest version is (.+)\s*</div>}i)
  end
end
