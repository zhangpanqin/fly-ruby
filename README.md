[Ruby 中文版](https://doc.yonyoucloud.com/doc/wiki/project/ruby/index.html)
[Specs](https://www.betterspecs.org/)
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

### rbenv

在项目下创建 `.ruby-version` 文件，用于管理项目使用的 ruby 版本。

```shell
# install 
brew install rbenv ruby-build

# list latest stable versions:
rbenv install -l

# 选择上面的版本，安装 ruby
rbenv install 3.1.2

# 查看本地已经安装的 ruby 版本
rbenv versions

# 全局设置 ruby 的版本
rbenv global 3.1.2
```