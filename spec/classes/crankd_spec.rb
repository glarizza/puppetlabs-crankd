require 'spec_helper'
 
describe 'crankd' do
  let(:params) { { } }
  it { should contain_file('/usr/local/sbin').with_owner('0') }
  it { should contain_file('/usr/local/sbin').with_group('0') }
  it { should contain_file('/usr/local/sbin').with_mode('0755') }
  it { should contain_file('/Library/Application Support/crankd').with_owner('0') }
  it { should contain_file('/Library/Application Support/crankd').with_group('0') }
  it { should contain_file('/Library/Application Support/crankd').with_mode('0755') }
  it { should contain_file('/Library/Application Support/crankd/PyMacAdmin').with_owner('0') }
  it { should contain_file('/Library/Application Support/crankd/PyMacAdmin').with_group('0') }
  it { should contain_file('/Library/Application Support/crankd/PyMacAdmin').with_mode('0755') }
  it { should contain_file('/usr/local/sbin/crankd.py').with_owner('0') }
  it { should contain_file('/usr/local/sbin/crankd.py').with_group('0') }
  it { should contain_file('/usr/local/sbin/crankd.py').with_mode('0755') }
end