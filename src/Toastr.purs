module Toastr where

import Prelude
import Control.Monad.Eff

defaultOptions = {
        closeButton: false,
        debug: false,
        newestOnTop: false,
        progressBar: false,
        positionClass: "toast-top-right",
        preventDuplicates: false,
        showDuration: "300",
        hideDuration: "1000",
        timeOut: "5000",
        extendedTimeOut: "1000",
        showEasing: "swing",
        hideEasing: "linear",
        showMethod: "fadeIn",
        hideMethod: "fadeOut"
        }

foreign import configure :: forall eff a. a -> Eff eff Unit
foreign import info :: forall eff. String -> String -> Eff eff Unit
foreign import success :: forall eff. String -> String -> Eff eff Unit
foreign import warning :: forall eff. String -> String -> Eff eff Unit
foreign import error :: forall eff. String -> String -> Eff eff Unit

