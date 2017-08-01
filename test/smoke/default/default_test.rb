# # encoding: utf-8

# Inspec test for recipe ds_nginx::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe port 80 do
  it { should_not be_listening }
end

describe port 81 do
  it { should be_listening }
end
