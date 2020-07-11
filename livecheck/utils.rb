def checkable_urls(formula)
  urls = []
  urls << formula.head.url if formula.head
  if formula.stable
    urls << formula.stable.url
    urls.concat(formula.stable.mirrors)
  end
  urls << formula.homepage if formula.homepage

  urls.compact
end

def formula_name(formula)
  Homebrew.args.full_name? ? formula.full_name : formula
end
