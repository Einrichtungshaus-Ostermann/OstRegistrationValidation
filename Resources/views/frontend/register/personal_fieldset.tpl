
{* file to extend *}
{extends file="parent:frontend/register/personal_fieldset.tpl"}



{* first name *}
{block name='frontend_register_personal_fieldset_input_firstname'}
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
        {$notice = '<span class="error-message">'|cat:{$ostRegistrationValidationConfiguration.firstnameTitle}|cat:'</span></div>'}
        {$input = $input|replace:'</div>':{$notice}}
    {/if}
    {$input}
{/block}

{* last name *}
{block name='frontend_register_personal_fieldset_input_lastname'}
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
        {$notice = '<span class="error-message">'|cat:{$ostRegistrationValidationConfiguration.lastnameTitle}|cat:'</span></div>'}
        {$input = $input|replace:'</div>':{$notice}}
    {/if}
    {$input}
{/block}

{* phone *}
{block name='frontend_register_personal_fieldset_input_phone'}
    {capture name="input_capture"}
        {$smarty.block.parent}
    {/capture}
    {$input = $smarty.capture.input_capture}
    {if $ostRegistrationValidationConfiguration.phoneStatus == true}
        {$pattern = 'pattern="'|cat:{$ostRegistrationValidationConfiguration.phonePattern}|cat:'" id="'}
        {$title = 'title="'|cat:{$ostRegistrationValidationConfiguration.phoneTitle}|cat:'" id="'}
        {$input = $input|replace:'class="':'class="ost-registration-validation '}
        {$input = $input|replace:'id="':{$pattern}}
        {$input = $input|replace:'id="':{$title}}
        {$notice = '<span class="error-message">'|cat:{$ostRegistrationValidationConfiguration.phoneTitle}|cat:'</span></div>'}
        {$input = $input|replace:'</div>':{$notice}}
    {/if}
    {$input}
{/block}
