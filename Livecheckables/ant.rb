class Ant
  def livecheck
    page_match("https://www.apache.org/dist/ant/", 'RELEASE\-NOTES\-(.*?)\.html')
  end
end
