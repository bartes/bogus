# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'rspec', all_after_pass: true, all_on_start: true do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end

guard 'ctags-bundler', :src_path => ["lib", "spec"] do
  watch(/^(lib|spec)\/.*\.rb$/)
  watch('Gemfile.lock')
end
