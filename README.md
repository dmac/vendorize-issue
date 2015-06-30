To repro, `go get github.com/dmac/vendorize-issue`, cd into its directory, and run `run.sh` repeatedly.

The build can either succeed or fail. Here are two example failures:

```
# github.com/dmac/vendorize-issue/vendor/github.com/aws/aws-sdk-go/internal/signer/v4
vendor/github.com/aws/aws-sdk-go/internal/signer/v4/v4.go:70: invalid operation: req.Service.Config.Credentials == "github.com/dmac/vendorize-issue/vendor/github.com/aws/aws-sdk-go/aws/credentials".AnonymousCredentials (mismatched types *"github.com/aws/aws-sdk-go/aws/credentials".Credentials and *"github.com/dmac/vendorize-issue/vendor/github.com/aws/aws-sdk-go/aws/credentials".Credentials)
vendor/github.com/aws/aws-sdk-go/internal/signer/v4/v4.go:92: cannot use req.Service.Config.Credentials (type *"github.com/aws/aws-sdk-go/aws/credentials".Credentials) as type *"github.com/dmac/vendorize-issue/vendor/github.com/aws/aws-sdk-go/aws/credentials".Credentials in field value
```

```
# github.com/dmac/vendorize-issue/vendor/github.com/awslabs/aws-sdk-go/service/route53
vendor/github.com/awslabs/aws-sdk-go/service/route53/service.go:33: cannot use restxml.Build (type func(*"github.com/aws/aws-sdk-go/aws".Request)) as type func(*"github.com/dmac/vendorize-issue/vendor/github.com/aws/aws-sdk-go/aws".Request) in argument to service.Handlers.Build.PushBack
vendor/github.com/awslabs/aws-sdk-go/service/route53/service.go:34: cannot use restxml.Unmarshal (type func(*"github.com/aws/aws-sdk-go/aws".Request)) as type func(*"github.com/dmac/vendorize-issue/vendor/github.com/aws/aws-sdk-go/aws".Request) in argument to service.Handlers.Unmarshal.PushBack
vendor/github.com/awslabs/aws-sdk-go/service/route53/service.go:35: cannot use restxml.UnmarshalMeta (type func(*"github.com/aws/aws-sdk-go/aws".Request)) as type func(*"github.com/dmac/vendorize-issue/vendor/github.com/aws/aws-sdk-go/aws".Request) in argument to service.Handlers.UnmarshalMeta.PushBack
vendor/github.com/awslabs/aws-sdk-go/service/route53/service.go:36: cannot use restxml.UnmarshalError (type func(*"github.com/aws/aws-sdk-go/aws".Request)) as type func(*"github.com/dmac/vendorize-issue/vendor/github.com/aws/aws-sdk-go/aws".Request) in argument to service.Handlers.UnmarshalError.PushBack
```
