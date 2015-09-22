'use strict';
// module Toastr

exports.configure = function(options) {
    return function() {
        toastr.options = options;
    }
};

exports.info = function(message) {
    return function(title) {
        return function() {  
            toastr.info(message, title);
        };
    };
};

exports.success = function(message) {
    return function(title) {
        return function() {  
            toastr.success(message, title);
        };
    };
};

exports.warning = function(message, title) {
    return function(title) {
        return function() {  
            toastr.warning(message, title);
        };
    };
};

exports.error = function(message, title) {
    return function(title) {
        return function() {  
            toastr.error(message, title);
        };
    };
};
