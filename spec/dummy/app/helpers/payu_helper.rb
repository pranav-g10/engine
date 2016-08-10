module PayuHelper
  def gen_hash(package, txnid)
    @user = current_locomotive_account
    return Digest::SHA2.new(512).hexdigest("#{ENV['PAYU_KEY']}|#{check_null(txnid)}|#{check_null(package.price)}|"\
                                             "#{check_null(ENV['PRODUCT_INFO'])}|#{check_null(@user.name)}|"\
                                             "#{check_null(@user.email)}|#{@user.id}|#{package.id}|||||||||#{ENV['PAYU_SALT']}")
  end

  def check_null(value)
    return value || ''
  end
end
