module HackersHelper
  def row_class(hacker)
    return if hacker.account_suspended? || hacker.account_banned? || hacker.last_sign_in_at.nil?
    if hacker.last_payment.present?
      if hacker.last_payment.end_date < Time.now.to_date
        'danger'
      end
    else
      'warning'
    end
  end
end
