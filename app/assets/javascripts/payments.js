jQuery -> Stripe.setPublishablekey($('meta[name="stripe-key"]').attr('content'))
payment.setupForm()

payment =
setupForm: ->
$('#pay_with_paypal').click ->
   $('paypal_checkout').show()
   $('#billing_fields').hide()
   true
   $('#pay_with_paypal').click ->
      $('paypal_checkout').show()
      $('#billing_fields').hide()
      true   
$('#new_payment').submit ->
$('input[type=submit]').attr('disable', true)
if $('#card_numbrer').length
 payment.processCard()
 false
else
 true
 processCard: ->
 card=
 number: $('#card_number').val()
 cvc: $('#card_code').val()
  expMonth: $('#card_code').val()
   expYear: $('#card_code').val()
   Stripe.createToken(card, payment.handleStripeResponse)
