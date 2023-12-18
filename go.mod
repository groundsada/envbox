module github.com/coder/envbox

go 1.20

// Coder runs a fork of tailscale, since we depend on that repo we need to make
// sure go.mod doesn't try to use the actual tailscale libs otherwise things
// won't compile.
replace tailscale.com => github.com/coder/tailscale v1.1.1-0.20230314023417-d9efcc0ac972

require (
	cdr.dev/slog v1.4.2-0.20230228204227-60d22dceaf04
	github.com/coder/coder v0.20.2-0.20230323233815-982274536509
	github.com/coder/retry v1.3.1-0.20230210155434-e90a2e1e091d
	github.com/docker/docker v23.0.3+incompatible
	github.com/opencontainers/image-spec v1.1.0-rc2
	github.com/ory/dockertest/v3 v3.9.1
	github.com/quasilyte/go-ruleguard/dsl v0.3.22
	github.com/spf13/afero v1.9.4
	github.com/spf13/cobra v1.6.1
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.8.2
	github.com/vishvananda/netlink v1.1.1-0.20211118161826-650dca95af54
	golang.org/x/exp v0.0.0-20230321023759-10a507213a29
	golang.org/x/net v0.8.0
	golang.org/x/sys v0.6.0
	golang.org/x/xerrors v0.0.0-20220907171357-04be3eba64a2
	k8s.io/mount-utils v0.26.2
	k8s.io/utils v0.0.0-20230220204549-a5ecb0141aa5
)

require (
	github.com/Azure/go-ansiterm v0.0.0-20230124172434-306776ec8161 // indirect
	github.com/docker/cli v23.0.1+incompatible // indirect
	github.com/docker/distribution v2.8.2+incompatible // indirect
	github.com/docker/go-units v0.5.0 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/mdlayher/netlink v1.7.1 // indirect
	github.com/moby/term v0.0.0-20221205130635-1aeaba878587 // indirect
	github.com/opencontainers/runc v1.1.5 // indirect
	golang.org/x/tools v0.7.0 // indirect
	tailscale.com v1.38.2 // indirect
)
