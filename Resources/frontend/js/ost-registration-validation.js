/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - Registration Validation
 *
 * @package   OstRegistrationValidation
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2019 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

;(function ($) {

    // use strict mode
    "use strict";

    // create plugin
    $.plugin( "ostRegistrationValidationPlugin", {

        // on initialization
        init: function ()
        {
        },

        // on destroy
        destroy: function()
        {
            // call the parent
            this._destroy();
        }
    });

    // create a component
    $.ostRegistrationValidationComponent = {
    };

    // ...
    $.subscribe('plugin/swRegister/onSetFieldAsSuccess', function( event, plugin, $el ) {
        // get the name or an empty string if its invalid
        var name = (typeof $el.attr('name') === "undefined" )
            ? ""
            : $el.attr('name').toString();

        // month and year of birthday will get error flag due to a shopware bug
        if (name.indexOf("birthday") >= 0) {
            // dont add no-error
            return;
        }

        // field is success
        $el.addClass("has--no-error");
    });


    // ...
    $.subscribe('plugin/swRegister/onSetFieldAsError', function( event, plugin, $el ) {
        $el.removeClass("has--no-error");
    });

    // ...
    $.subscribe('plugin/swRegister/onValidateInput', function( subscriber, plugin, event, action ) {
        // get parameters
        var $el = $(event.target);
        var id = $el.attr('id');

        // we only check for phone for now
        if ( id !== "phone") {
            // stop
            return;
        }

        // get the trimmed input
        var value = $.trim($el.val());

        // is it empty?
        if ( value === "") {
            // force empty input for browser validation
            $el.val("");

            // and add error flag
            plugin.setFieldAsError($el);
        }
    });

})(jQuery);
