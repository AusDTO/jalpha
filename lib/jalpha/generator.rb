require "thor"

module Jalpha
  class Generator < Thor
    include Thor::Actions

    map ["-v", "--version"] => :version

    desc "version", "Show Jalpha version"
    def version
      say "Jalpha #{Jalpha::VERSION}"
    end

    register(Jalpha::Install, "new", "new", "Create new folder with the Jalpha template")
  end
end
