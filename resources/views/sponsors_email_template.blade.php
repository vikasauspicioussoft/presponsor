@component('mail::message')
# Payment for the sponsorship

Click here for the Sponsorhip package Option
@component('mail::button', ['url' => 'http://localhost/presponsor/admin/selectPackage'])
Packages Information
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
