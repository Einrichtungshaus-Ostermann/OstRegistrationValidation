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

    // we append to the success message to check for pattern validity
    $.subscribe('plugin/swRegister/onSetFieldAsSuccess', function(event, plugin, $el) {
        // get the name or an empty string if its invalid
        var name = (typeof $el.attr('name') === "undefined" )
            ? ""
            : $el.attr('name').toString();

        // month and year of birthday will get error flag due to a shopware bug
        if (name.indexOf("birthday") >= 0) {
            // dont add no-error
            return;
        }

        // if we have no custom validation
        if (!$el.hasClass('ost-registration-validation')) {
            // always set as no-error
            $el.addClass("has--no-error");
            return;
        }

        // get the element
        var input = document.getElementsByName($el.attr('name'))[0];

        // do we even support html5?
        if (typeof input.checkValidity != 'function') {
            // we dont
            return;
        }

        // check validity
        if (input.checkValidity() === true) {
            // all fine
            $el.removeClass("has--error");
            $el.addClass("has--no-error");

        } else {
            // add error flag
            $el.removeClass("has--no-error");
            $el.addClass("has--error");
        }
    });

    // ...
    $.subscribe('plugin/swRegister/onSetFieldAsError', function(event, plugin, $el) {
        // remove no-error flag
        $el.removeClass("has--no-error");
    });

})(jQuery);
