
{* file to extend *}
{extends file="parent:frontend/register/shipping_fieldset.tpl"}



{* first name *}
{block name='frontend_register_shipping_fieldset_input_firstname'}
    {capture name="input_capture"}
        {$smarty.block.parent}
    {/capture}
    {$input = $smarty.capture.input_capture}
    {if $ostRegistrationValidationConfiguration.firstnameStatus == true}
        {$pattern = 'pattern="'|cat:{$ostRegistrationValidationConfiguration.firstnamePattern}|cat:'" id="'}
        {$title = 'title="'|cat:{$ostRegistrationValidationConfiguration.firstnameTitle}|cat:'" id="'}
        {$input = $input|replace:'class="':'class="ost-registration-validation '}
        {$input = $input|replace:'id="':{$pattern}}
        {$input = $input|replace:'id="':{$title}}
    {/if}
    {$input}
{/block}

{* last name *}
{block name='frontend_register_shipping_fieldset_input_lastname'}
    {capture name="input_capture"}
        {$smarty.block.parent}
    {/capture}
    {$input = $smarty.capture.input_capture}
    {if $ostRegistrationValidationConfiguration.lastnameStatus == true}
        {$pattern = 'pattern="'|cat:{$ostRegistrationValidationConfiguration.lastnamePattern}|cat:'" id="'}
        {$title = 'title="'|cat:{$ostRegistrationValidationConfiguration.lastnameTitle}|cat:'" id="'}
        {$input = $input|replace:'class="':'class="ost-registration-validation '}
        {$input = $input|replace:'id="':{$pattern}}
        {$input = $input|replace:'id="':{$title}}
    {/if}
    {$input}
{/block}

{* street *}
{block name='frontend_register_shipping_fieldset_input_street'}
    {capture name="input_capture"}
        {$smarty.block.parent}
    {/capture}
    {$input = $smarty.capture.input_capture}
    {if $ostRegistrationValidationConfiguration.streetStatus == true}
        {$pattern = 'pattern="'|cat:{$ostRegistrationValidationConfiguration.streetPattern}|cat:'" id="'}
        {$title = 'title="'|cat:{$ostRegistrationValidationConfiguration.streetTitle}|cat:'" id="'}
        {$input = $input|replace:'class="':'class="ost-registration-validation '}
        {$input = $input|replace:'id="':{$pattern}}
        {$input = $input|replace:'id="':{$title}}
    {/if}
    {$input}
{/block}

{* zip and city *}
{block name='frontend_register_shipping_fieldset_input_zip_and_city'}
    {capture name="input_capture"}
        {$smarty.block.parent}
    {/capture}
    {$input = $smarty.capture.input_capture}
    {if $ostRegistrationValidationConfiguration.zipStatus == true}
        {$pattern = 'pattern="'|cat:{$ostRegistrationValidationConfiguration.zipPattern}|cat:'" id="zipcode'}
        {$title = 'title="'|cat:{$ostRegistrationValidationConfiguration.zipTitle}|cat:'" id="zipcode'}
        {$input = $input|replace:'register--field-zipcode':'register--field-zipcode ost-registration-validation'}
        {$input = $input|replace:'id="zipcode':{$pattern}}
        {$input = $input|replace:'id="zipcode':{$title}}
    {/if}
    {if $ostRegistrationValidationConfiguration.cityStatus == true}
        {$pattern = 'pattern="'|cat:{$ostRegistrationValidationConfiguration.cityPattern}|cat:'" id="city'}
        {$title = 'title="'|cat:{$ostRegistrationValidationConfiguration.cityTitle}|cat:'" id="city'}
        {$input = $input|replace:'register--field-city':'register--field-city ost-registration-validation'}
        {$input = $input|replace:'id="city':{$pattern}}
        {$input = $input|replace:'id="city':{$title}}
    {/if}
    {$input}
{/block}




