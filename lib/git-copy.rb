require 'tmpdir'
require 'addressable/uri'

module Git

  def self.copy(src, dst)
    # Copy a remote git repo to another remote destination
    #
    # Example:
    #   >> GitCopy("https://github.com/cybertk/git-copy", "https://bitbucket.com/mirror.git")
    #   >> GitCopy("https://github.com/cybertk/git-copy", "mirror.git")
    uri = Addressable::URI.parse(dst)

    # Convert to absolute path for local path
    dst = File.absolute_path(dst) unless uri.scheme

    if uri.scheme || File.exist?(dst)

      Dir.mktmpdir('git-copy-') do |dir|
        # Clone source into temp working dir
        `git clone --bare #{src} #{dir}`
        return if $CHILD_STATUS != 0

        `cd #{dir}; git push -f --mirror #{dst}`
        return if $CHILD_STATUS != 0
      end
    else
      # Copy to local path
      `git clone --bare #{src} #{dst}`
      return if $CHILD_STATUS != 0
    end

  end

end
