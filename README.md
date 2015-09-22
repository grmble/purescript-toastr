<iframe src="//benschwarz.github.io/bower-badges/embed.html?pkgname=purescript-toastr" width="160" height="32" allowtransparency="true" frameborder="0" scrolling="0"></iframe>

# purescript-toastr

Purescript wrapper around [Toastr](https://github.com/CodeSeven/toastr) library which shows popup messages.

## Usage

index.html (include toastr css and js):

    <!doctype>
    <html>
    <head>
      <link href="bower_components/toastr/toastr.min.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
      <script src="bower_components/toastr/toastr.min.js"></script>
      <script src="main.js"></script>
    </body>
    </html>

Main.purs:

    module Main where
    ...
    import qualified Toastr as T
    main = do
         T.configure $ {
            closeButton: false,
            debug: false,
            newestOnTop: false,
            progressBar: false,
            positionClass: "toast-top-left",
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
   
         T.success "message" "title"
         T.info "message" "title"
         T.warning "message" "title"
         T.error "message" "title"
