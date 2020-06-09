def my_method(variable)
  if variable == 'great'
    # do something great
  else
    return nil
  end
end
#=>
def my_method(variable)
	return nil unless variable == 'great'	
end





def pay(invoice)
  if invoice.paid?
    return nil
  else
    if invoice.delay_payment?
      invoice.set_delayed_payment_date
    else
      if invoice.amount > 1000
        invoice.trigger_manual_payment
      else
        invoice.pay
      end
    end
  end
end
#=>
def pay(invoice)
	return nil if invoice.paid?
	return invoice.set_delayed_payment_date if invoice.delay_payment?
	return invoice.trigger_manual_payment if invoice.amount > 1000
	invoice.pay
end