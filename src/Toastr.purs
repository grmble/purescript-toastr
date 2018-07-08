module Toastr where

import Prelude

import Effect (Effect)

type Options =
  { closeButton :: Boolean
  , debug :: Boolean
  , newestOnTop :: Boolean
  , progressBar :: Boolean
  , positionClass :: String
  , preventDuplicates :: Boolean
  , showDuration :: String
  , hideDuration :: String
  , timeOut :: String
  , extendedTimeOut :: String
  , showEasing :: String
  , hideEasing :: String
  , showMethod :: String
  , hideMethod :: String
  }

defaultOptions :: Options
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

foreign import configure ::  Options -> Effect Unit
foreign import info :: String -> String -> Effect Unit
foreign import success :: String -> String -> Effect Unit
foreign import warning :: String -> String -> Effect Unit
foreign import error :: String -> String -> Effect Unit
