mkdir -p ~/log
nohup sh -c "vault server -dev -dev-root-token-id="root" -dev-listen-address=0.0.0.0:8200 >~/log/vault.log 2>&1" > ~/log/nohup.log &

sleep 1

export VAULT_ADDR=http://127.0.0.1:8200

VAULT_TOKEN=root vault write sys/license text="02MV4UU43BK5HGYYTOJZWFQMTMNNEWU33JLJDU26CONVETGWTKJF2FS2SVGFMVGMD2LFVEC6CMK5ETCWKULF2FS6SVPJMXUQJVJZVEKMCNPJDGYSLJO5UVSM2WPJSEOOLULJMEUZTBK5IWST3JJF4E4VDHGFHEIZDLJZUTC2CZPJCXOTCUKUZVS2TLORHG2RJQJV4TA6SZKRFGST2EKJWU23KJPFHHUZ3JJRBUU4DCNZHDAWKXPBZVSWCSOBRDENLGMFLVC2KPNFEXCSLJO5UWCWCOPJSFOVTGMRDWY5C2KNETMSLKJF3U22SFORGUIWLUJVCE4VKNIRETMTSUM43E4RDDOVHFIRJRJZKEC6SOIRETEV3JJFZUS3SOGBMVQSRQLAZVE4DCK5KWST3JJF4U2RCJPBGFIQJSJRKEC6SWIRAXOT3KIF3U62SBO5LWSSLTJFWVMNDDI5WHSWKYKJYGEMRVMZSEO3DULJJUSNSJNJEXOTLKIV2E2RCZORGVISSVJVCECNSNIRATMTKEIJQUS2LXNFSEOVTZMJLWY5KZLBJHAYRSGVTGIR3MORNFGSJWJFVES52NNJCXITKELF2E2VCKKVGUIQJWJVCECNSNIRBGCSLJO5UWGSCKOZNEQVTKMRBUSNSJNZNGQZCXPAYES2LXNFNG26DILIZU22KPNZZWSYSXHFVWIV3YNRRXSSJWK54UU5DEK54DAYKTGFVVS6JRPJMTERTTLJJUS42JNVSHMZDNKZ4WE3KGOVMTEVLUMNDTS43BK5HDKSLJO5UVSV2SGJMVONLKLJLVC5C2I5DDAWKTGF3WG3JZGBNFOTRQMFLTS5KJNQYTSZSRHU6S4NSDF5SUY23QLJ4DOMSHGNLXU6TTNZCHKZC2JZTFO5LILFIE25SPGFEFESSIKQ2VA5LIKRCDCQTYNUYVGMRRNRMUIN3UGRGEOYKZMN5GQRKFJBHGCNDNMJSTKMCDGB2DSRLZGNZEESRRMRAWWY3BGRSFMMBTGM4FA53NKZWGC5SKKA2HASTYJFETSRBWKVDEYVLBKZIGU22XJJ2GGRBWOBQWYNTPJ5TEO3SLGJ5FAS2KKJWUOSCWGNSVU53RIZSSW3ZXNMXXGK2BKRHGQUC2M5JS6S2WLFTS6SZLNRDVA52MG5VEE6CJG5DU6YLLGZKWC2LBJBXWK2ZQKJKG6NZSIRIT2PI"

vault secrets enable -path=kv kv

vault kv put kv/orders product_id="WIN00123" unit_price="198.99"