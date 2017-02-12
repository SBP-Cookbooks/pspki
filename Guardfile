guard :rspec, cmd: 'chef exec rspec', all_on_start: false do
  watch(%r{^spec/unit/*/(.+)_spec\.rb$})
  watch(%r{^recipes/(.+)\.rb$}) { |m| "spec/unit/recipes/#{m[1]}_spec.rb" }
end
