### Init project

```shell
mkdir fly-ruby
cd fly-ruby
rbenv shell 3.1.2
# 创建 Gemfile
bundle init
# 添加依赖到 Gemfile
bundle add rspec --version "~>3.11"
bundle install
rspec --init
```

### rspec

`.rspec` 文件用于配置 Rspec 。

rspec Load files matching this pattern (default: '**{,/*/**}/*_spec.rb').
在 `.rspec` 可以修改配置, 参考 [RSpec Configuration](https://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration)

```text
--require spec_helper
--pattern 'test/**/*_spec.rb'
```

或者在 spec_helper.rb

```ruby
RSpec.configure do |config|
  # 匹配测试文件
  config.pattern = '**{,/*/**}/*_spec.rb'
end
```