@component('mail::message')
# Payment for the sponsorship

Click here for the payment
@component('mail::button', ['url' => 'http://localhost/presponsor/addmoney/stripe'])
Pay now
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
