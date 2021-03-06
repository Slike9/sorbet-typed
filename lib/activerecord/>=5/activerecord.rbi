# typed: strict

class ActiveRecord::Base

  sig do
  params(
    arg: T.any(Symbol, T.proc.returns(T.untyped)),
    if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
    unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
  ).void
  end
  def self.after_create_commit(
    arg,
    if: nil,
    unless: nil
  ); end

  sig do
  params(
    arg: T.any(Symbol, T.proc.returns(T.untyped)),
    if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
    unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
  ).void
  end
  def self.after_update_commit(
    arg,
    if: nil,
    unless: nil
  ); end

  sig do
  params(
    arg: T.any(Symbol, T.proc.returns(T.untyped)),
    if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
    unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
  ).void
  end
  def self.after_destroy_commit(
    arg,
    if: nil,
    unless: nil
  ); end

  sig { params(attribute: T.any(Symbol, String)).void }
  def self.has_secure_token(attribute); end
end
