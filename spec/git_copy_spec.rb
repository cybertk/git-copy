require 'git-copy'
require 'git'

describe 'when copy to un-exist local repo' do
  before(:each) do
    @dst_repo = 'local.repo'
    expect(File.exist? @dst_repo).to be false
  end

  after(:each) do
    FileUtils.rm_rf @dst_repo
  end

  it 'from http, should succeed' do
    Git.copy('http://github.com/cybertk/git-copy', 'local.repo')

    g = Git.bare('local.repo')
    expect(g.tag('v0.2.0').sha).to eq('29181737e23646e80733afa0c1109a62bd65653b')
  end

  it 'from https, should succeed' do
    Git.copy('https://github.com/cybertk/git-copy', 'local.repo')

    g = Git.bare('local.repo')
    expect(g.tag('v0.2.0').sha).to eq('29181737e23646e80733afa0c1109a62bd65653b')
  end

  it 'from local, should succeed' do
    Git.copy('.', 'local.repo')

    g = Git.bare('local.repo')
    expect(g.tag('v0.2.0').sha).to eq('29181737e23646e80733afa0c1109a62bd65653b')
  end
end

describe 'when copy to exist local bare repo' do
  before(:each) do
    @dst_repo = 'bare.repo'
    g = Git.init '.', repository: @dst_repo, bare: true
  end

  after(:each) do
    FileUtils.rm_rf @dst_repo
  end

  it 'from local, should succeed' do
    Git.copy('.', @dst_repo)

    g = Git.bare(@dst_repo)
    # expect(g.tag('v0.2.0').sha).to eq('29181737e23646e80733afa0c1109a62bd65653b')
  end
end
