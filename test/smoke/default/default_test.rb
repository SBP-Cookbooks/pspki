# # encoding: utf-8

# Inspec test for recipe pspki::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

if os.windows?
  describe powershell('Import-Module PSPKI; Get-Command Get-CDP | select CommandType, Name, ModuleName | ft -a') do
    its('stdout') { should match(/Alias\s+Get-CDP\s+PSPKI/) }
  end
end
