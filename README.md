jq-docker
=========

build last jq (from master) in docker (more info about jq: https://github.com/stedolan/jq/)

Why
----

1) support for all filters ('match' for example)
* http://stedolan.github.io/jq/manual/#Builtinoperatorsandfunctions
* https://jqplay.org/jq?q=match(%22(abc)%2B%22%3B%20%22g%22)&j=%22abc%20abc%22

2) static linking (just scp binary on desired host)

How to get static compiled jq
----
	docker run --rm nordicdyno/jq-build cat /root/jq/jq > jq && chmod +x jq

How to build Docker
----

    make build

How to build Docker and get jq binary from it locally
-------

    git clone https://github.com/nordicdyno/jq-docker
    cd jq-docker
    make
