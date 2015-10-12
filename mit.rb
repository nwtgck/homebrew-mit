# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/frames
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Mit < Formula
  desc "This is mit command"
  homepage "https://github.com/nwtgck/homebrew-mit/"
  url "https://github.com/nwtgck/homebrew-mit/raw/master/mit.jar"
  sha1 "4ed66b16f5046312e65669e9b33bc6ceebfd718d"
  version "0.5.1"

  depends_on :java => "1.8+"
  #depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    if build.head?
      puts 'cant head install'
    else
      libexec.install 'mit.jar'
    end
    bin.write_jar_script libexec/"mit.jar", "mit"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test mit`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
