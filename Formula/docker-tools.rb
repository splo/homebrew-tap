class DockerTools < Formula
  desc "Docker-related tools."
  homepage "https://github.com/splo/docker-tools"
  head "https://github.com/splo/docker-tools.git"
  url "https://github.com/splo/docker-tools/archive/v1.0.0.tar.gz"
  sha256 "0957dfbb25da6aa7cca286b05aa1242313372ee57017956038370f8edc4717a5"

  def install
    bin.install "bin/dc-restart"
    bin.install "bin/dc-start"
    bin.install "bin/dc-stop"
    bin.install "bin/docker-brennen"
    bin.install "bin/docker-tags"
  end
end
