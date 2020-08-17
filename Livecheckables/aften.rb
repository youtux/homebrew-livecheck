class Aften
  # Aften has moved from a version scheme like 0.07 to 0.0.8. We restrict
  # matching to versions with three parts, since a version like 0.07 is parsed
  # as 0.7 and seen as newer than 0.0.8.
  livecheck do
    url :stable
    regex(%r{url=.*?/aften[._-]v?(\d+(?:\.\d+){2,})\.t}i)
  end
end
