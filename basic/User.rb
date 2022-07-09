class User
  # 定义实例可以访问的属性
  attr_reader :username

  def initialize(username)
    @username = username
  end

  def valid?
    (3..15) === @username.length
  end

  # Public 方法： Public 方法可被任意对象调用。默认情况下，方法都是 public 的，
  # 除了 initialize 方法总是 private 的。
  # Private 方法： Private 方法不能从类外部访问或查看。只有类方法可以访问私有成员。
  # Protected 方法： Protected 方法只能被类及其子类的对象调用。访问也只能在类及其子类内部进行。
  # 定义 private 方法
  def add
    puts "User add 方法"
  end

  def add_with_private
    puts "add_with_private 方法"
  end

  def add_with_protected
    puts "add_with_protected 方法"
  end

  private :add_with_private

  protected :add_with_protected
end


