--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: coin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coin (
    id integer NOT NULL,
    coin character varying(255) NOT NULL,
    link text NOT NULL,
    symbols character varying(255) NOT NULL,
    price character varying(255) NOT NULL
);


ALTER TABLE public.coin OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coin_id_seq OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coin_id_seq OWNED BY public.coin.id;


--
-- Name: coin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin ALTER COLUMN id SET DEFAULT nextval('public.coin_id_seq'::regclass);


--
-- Data for Name: coin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coin (id, coin, link, symbols, price) FROM stdin;
1	Bitcoin	https://coinmarketcap.com/currencies/bitcoin/	BTC	$19,228.00
2	Ethereum	https://coinmarketcap.com/currencies/ethereum/	ETH	$1,059.69
3	Tether	https://coinmarketcap.com/currencies/tether/	USDT	$0.9991
4	USD Coin	https://coinmarketcap.com/currencies/usd-coin/	USDC	$1.00
5	BNB	https://coinmarketcap.com/currencies/bnb/	BNB	$216.91
6	Binance USD	https://coinmarketcap.com/currencies/binance-usd/	BUSD	$1.00
7	XRP	https://coinmarketcap.com/currencies/xrp/	XRP	$0.3216
8	Cardano	https://coinmarketcap.com/currencies/cardano/	ADA	$0.4525
9	Solana	https://coinmarketcap.com/currencies/solana/	SOL	$32.80
10	Dogecoin	https://coinmarketcap.com/currencies/dogecoin/	DOGE	$0.06599
11	Dai	https://coinmarketcap.com/currencies/multi-collateral-dai/	DAI	$1.00
12	Polkadot	https://coinmarketcap.com/currencies/polkadot-new/	DOT	$6.80
13	TRON	https://coinmarketcap.com/currencies/tron/	TRX	$0.06
14	Shiba Inu	https://coinmarketcap.com/currencies/shiba-inu/	SHIB	$0.00
15	UNUS SED LEO	https://coinmarketcap.com/currencies/unus-sed-leo/	LEO	$5.72
16	Wrapped Bitcoin	https://coinmarketcap.com/currencies/wrapped-bitcoin/	WBTC	$19170.10
17	Avalanche	https://coinmarketcap.com/currencies/avalanche/	AVAX	$16.19
18	Polygon	https://coinmarketcap.com/currencies/polygon/	MATIC	$0.46
19	Litecoin	https://coinmarketcap.com/currencies/litecoin/	LTC	$50.57
20	Uniswap	https://coinmarketcap.com/currencies/uniswap/	UNI	$4.82
21	FTX Token	https://coinmarketcap.com/currencies/ftx-token/	FTT	$24.15
22	Chainlink	https://coinmarketcap.com/currencies/chainlink/	LINK	$6.14
23	Cronos	https://coinmarketcap.com/currencies/cronos/	CRO	$0.11
24	Stellar	https://coinmarketcap.com/currencies/stellar/	XLM	$0.11
25	NEAR Protocol	https://coinmarketcap.com/currencies/near-protocol/	NEAR	$3.27
26	Cosmos	https://coinmarketcap.com/currencies/cosmos/	ATOM	$8.21
27	Algorand	https://coinmarketcap.com/currencies/algorand/	ALGO	$0.31
28	Monero	https://coinmarketcap.com/currencies/monero/	XMR	$116.49
29	Ethereum Classic	https://coinmarketcap.com/currencies/ethereum-classic/	ETC	$14.66
30	Bitcoin Cash	https://coinmarketcap.com/currencies/bitcoin-cash/	BCH	$103.34
31	VeChain	https://coinmarketcap.com/currencies/vechain/	VET	$0.02
32	Flow	https://coinmarketcap.com/currencies/flow/	FLOW	$1.55
33	Decentraland	https://coinmarketcap.com/currencies/decentraland/	MANA	$0.83
34	ApeCoin	https://coinmarketcap.com/currencies/apecoin-ape/	APE	$4.58
35	The Sandbox	https://coinmarketcap.com/currencies/the-sandbox/	SAND	$1.04
36	Hedera	https://coinmarketcap.com/currencies/hedera/	HBAR	$0.06
37	Tezos	https://coinmarketcap.com/currencies/tezos/	XTZ	$1.43
38	Internet Computer	https://coinmarketcap.com/currencies/internet-computer/	ICP	$5.20
39	Theta Network	https://coinmarketcap.com/currencies/theta-network/	THETA	$1.21
40	TrueUSD	https://coinmarketcap.com/currencies/trueusd/	TUSD	$1.00
41	Filecoin	https://coinmarketcap.com/currencies/filecoin/	FIL	$5.28
42	Axie Infinity	https://coinmarketcap.com/currencies/axie-infinity/	AXS	$14.05
43	Elrond	https://coinmarketcap.com/currencies/elrond-egld/	EGLD	$50.90
44	Helium	https://coinmarketcap.com/currencies/helium/	HNT	$9.10
45	Bitcoin SV	https://coinmarketcap.com/currencies/bitcoin-sv/	BSV	$52.95
46	Pax Dollar	https://coinmarketcap.com/currencies/paxos-standard/	USDP	$1.00
47	EOS	https://coinmarketcap.com/currencies/eos/	EOS	$0.93
48	Maker	https://coinmarketcap.com/currencies/maker/	MKR	$891.69
49	KuCoin Token	https://coinmarketcap.com/currencies/kucoin-token/	KCS	$8.27
50	Zcash	https://coinmarketcap.com/currencies/zcash/	ZEC	$54.15
51	Aave	https://coinmarketcap.com/currencies/aave/	AAVE	$56.39
52	Neutrino USD	https://coinmarketcap.com/currencies/neutrino-usd/	USDN	$0.99
53	BitTorrent-New	https://coinmarketcap.com/currencies/bittorrent-new/	BTT	$0.00
54	IOTA	https://coinmarketcap.com/currencies/iota/	MIOTA	$0.27
55	OKB	https://coinmarketcap.com/currencies/okb/	OKB	$12.22
56	eCash	https://coinmarketcap.com/currencies/ecash/	XEC	$0.00
57	USDD	https://coinmarketcap.com/currencies/usdd/	USDD	$0.99
58	Klaytn	https://coinmarketcap.com/currencies/klaytn/	KLAY	$0.23
59	Huobi Token	https://coinmarketcap.com/currencies/huobi-token/	HT	$4.37
60	Quant	https://coinmarketcap.com/currencies/quant/	QNT	$54.79
61	The Graph	https://coinmarketcap.com/currencies/the-graph/	GRT	$0.09
62	Fantom	https://coinmarketcap.com/currencies/fantom/	FTM	$0.25
63	THORChain	https://coinmarketcap.com/currencies/thorchain/	RUNE	$1.84
64	PAX Gold	https://coinmarketcap.com/currencies/pax-gold/	PAXG	$1807.51
65	TerraClassicUSD	https://coinmarketcap.com/currencies/terrausd/	USTC	$0.06
66	Chiliz	https://coinmarketcap.com/currencies/chiliz/	CHZ	$0.10
67	Basic Attention Token	https://coinmarketcap.com/currencies/basic-attention-token/	BAT	$0.39
68	Neo	https://coinmarketcap.com/currencies/neo/	NEO	$8.22
69	Waves	https://coinmarketcap.com/currencies/waves/	WAVES	$5.10
70	Stacks	https://coinmarketcap.com/currencies/stacks/	STX	$0.38
71	Loopring	https://coinmarketcap.com/currencies/loopring/	LRC	$0.38
72	Zilliqa	https://coinmarketcap.com/currencies/zilliqa/	ZIL	$0.04
73	STEPN	https://coinmarketcap.com/currencies/green-metaverse-token/	GMT	$0.81
74	Dash	https://coinmarketcap.com/currencies/dash/	DASH	$42.52
75	PancakeSwap	https://coinmarketcap.com/currencies/pancakeswap/	CAKE	$3.05
76	Enjin Coin	https://coinmarketcap.com/currencies/enjin-coin/	ENJ	$0.47
77	Curve DAO Token	https://coinmarketcap.com/currencies/curve-dao-token/	CRV	$0.78
78	Fei USD	https://coinmarketcap.com/currencies/fei-usd/	FEI	$0.99
79	Kusama	https://coinmarketcap.com/currencies/kusama/	KSM	$48.74
80	Amp	https://coinmarketcap.com/currencies/amp/	AMP	$0.01
81	NEM	https://coinmarketcap.com/currencies/nem/	XEM	$0.04
82	Celo	https://coinmarketcap.com/currencies/celo/	CELO	$0.87
83	Kava	https://coinmarketcap.com/currencies/kava/	KAVA	$1.76
84	Gala	https://coinmarketcap.com/currencies/gala/	GALA	$0.05
85	Arweave	https://coinmarketcap.com/currencies/arweave/	AR	$10.76
86	Holo	https://coinmarketcap.com/currencies/holo/	HOT	$0.00
87	Compound	https://coinmarketcap.com/currencies/compound/	COMP	$49.13
88	Mina	https://coinmarketcap.com/currencies/mina/	MINA	$0.61
89	1inch Network	https://coinmarketcap.com/currencies/1inch/	1INCH	$0.62
90	Nexo	https://coinmarketcap.com/currencies/nexo/	NEXO	$0.58
91	GateToken	https://coinmarketcap.com/currencies/gatetoken/	GT	$4.07
92	Decred	https://coinmarketcap.com/currencies/decred/	DCR	$22.19
93	XDC Network	https://coinmarketcap.com/currencies/xinfin/	XDC	$0.02
94	Synthetix	https://coinmarketcap.com/currencies/synthetix-network-token/	SNX	$2.61
95	Qtum	https://coinmarketcap.com/currencies/qtum/	QTUM	$2.79
96	Symbol	https://coinmarketcap.com/currencies/symbol/	XYM	$0.05
97	Theta Fuel	https://coinmarketcap.com/currencies/theta-fuel/	TFUEL	$0.05
98	Gnosis	https://coinmarketcap.com/currencies/gnosis-gno/	GNO	$110.30
99	BORA	https://coinmarketcap.com/currencies/bora/	BORA	$0.30
100	Kadena	https://coinmarketcap.com/currencies/kadena/	KDA	$1.46
101	Bitcoin Gold	https://coinmarketcap.com/currencies/bitcoin-gold/	BTG	$15.26
102	Convex Finance	https://coinmarketcap.com/currencies/convex-finance/	CVX	$4.11
103	ICON	https://coinmarketcap.com/currencies/icon/	ICX	$0.287
104	Storj	https://coinmarketcap.com/currencies/storj/	STORJ	$0.653
105	OMG Network	https://coinmarketcap.com/currencies/omg/	OMG	$1.80
106	0x	https://coinmarketcap.com/currencies/0x/	ZRX	$0.295
107	IOST	https://coinmarketcap.com/currencies/iostoken/	IOST	$0.01337
108	Audius	https://coinmarketcap.com/currencies/audius/	AUDIO	$0.3386
109	JUST	https://coinmarketcap.com/currencies/just/	JST	$0.02798
110	Ravencoin	https://coinmarketcap.com/currencies/ravencoin/	RVN	$0.02291
111	Oasis Network	https://coinmarketcap.com/currencies/oasis-network/	ROSE	$0.05
112	IoTeX	https://coinmarketcap.com/currencies/iotex/	IOTX	$0.02
113	Golem	https://coinmarketcap.com/currencies/golem-network-tokens/	GLM	$0.23
114	Ankr	https://coinmarketcap.com/currencies/ankr/	ANKR	$0.03
115	Kyber Network Crystal v2	https://coinmarketcap.com/currencies/kyber-network-crystal-v2/	KNC	$1.22
116	Immutable X	https://coinmarketcap.com/currencies/immutable-x/	IMX	$0.90
117	MXC	https://coinmarketcap.com/currencies/mxc/	MXC	$0.08
118	Trust Wallet Token	https://coinmarketcap.com/currencies/trust-wallet-token/	TWT	$0.73
119	Harmony	https://coinmarketcap.com/currencies/harmony/	ONE	$0.02
120	yearn.finance	https://coinmarketcap.com/currencies/yearn-finance/	YFI	$5665.43
121	Moonbeam	https://coinmarketcap.com/currencies/moonbeam/	GLMR	$0.67
122	Ontology	https://coinmarketcap.com/currencies/ontology/	ONT	$0.23
123	CEEK VR	https://coinmarketcap.com/currencies/ceek-vr/	CEEK	$0.25
124	Celsius	https://coinmarketcap.com/currencies/celsius/	CEL	$0.85
125	Serum	https://coinmarketcap.com/currencies/serum/	SRM	$0.76
126	Livepeer	https://coinmarketcap.com/currencies/livepeer/	LPT	$8.17
127	Hive	https://coinmarketcap.com/currencies/hive-blockchain/	HIVE	$0.45
128	Siacoin	https://coinmarketcap.com/currencies/siacoin/	SC	$0.00
129	WAX	https://coinmarketcap.com/currencies/wax/	WAXP	$0.09
130	Chia	https://coinmarketcap.com/currencies/chia-network/	XCH	$43.53
131	SwissBorg	https://coinmarketcap.com/currencies/swissborg/	CHSB	$0.19
132	SXP	https://coinmarketcap.com/currencies/sxp/	SXP	$0.38
133	Balancer	https://coinmarketcap.com/currencies/balancer/	BAL	$4.56
134	Braintrust	https://coinmarketcap.com/currencies/braintrust/	BTRST	$2.03
135	UMA	https://coinmarketcap.com/currencies/uma/	UMA	$2.72
136	APENFT	https://coinmarketcap.com/currencies/apenft/	NFT	$0.00
137	Polymath	https://coinmarketcap.com/currencies/polymath-network/	POLY	$0.19
138	Ethereum Name Service	https://coinmarketcap.com/currencies/ethereum-name-service/	ENS	$8.51
139	Horizen	https://coinmarketcap.com/currencies/horizen/	ZEN	$13.68
140	Dogelon Mars	https://coinmarketcap.com/currencies/dogelon/	ELON	$0.00
141	Gemini Dollar	https://coinmarketcap.com/currencies/gemini-dollar/	GUSD	$1.00
142	WOO Network	https://coinmarketcap.com/currencies/wootrade/	WOO	$0.15
143	SKALE Network	https://coinmarketcap.com/currencies/skale-network/	SKL	$0.04
144	Smooth Love Potion	https://coinmarketcap.com/currencies/smooth-love-potion/	SLP	$0.00
145	Casper	https://coinmarketcap.com/currencies/casper/	CSPR	$0.03
146	PlayDapp	https://coinmarketcap.com/currencies/playdapp/	PLA	$0.37
147	Secret	https://coinmarketcap.com/currencies/secret/	SCRT	$0.94
148	Keep Network	https://coinmarketcap.com/currencies/keep-network/	KEEP	$0.19
149	Lido DAO	https://coinmarketcap.com/currencies/lido-dao/	LDO	$0.47
150	DigiByte	https://coinmarketcap.com/currencies/digibyte/	DGB	$0.01
151	Civic	https://coinmarketcap.com/currencies/civic/	CVC	$0.14
152	Lisk	https://coinmarketcap.com/currencies/lisk/	LSK	$1.02
153	Reserve Rights	https://coinmarketcap.com/currencies/reserve-rights/	RSR	$0.01
154	MX TOKEN	https://coinmarketcap.com/currencies/mx-token/	MX	$1.30
155	Render Token	https://coinmarketcap.com/currencies/render-token/	RNDR	$0.51
156	SushiSwap	https://coinmarketcap.com/currencies/sushiswap/	SUSHI	$0.99
157	Orbs	https://coinmarketcap.com/currencies/orbs/	ORBS	$0.04
158	Request	https://coinmarketcap.com/currencies/request/	REQ	$0.12
159	Ellipsis	https://coinmarketcap.com/currencies/ellipsis/	EPS	$0.17
160	ConstitutionDAO	https://coinmarketcap.com/currencies/constitutiondao/	PEOPLE	$0.02
161	NuCypher	https://coinmarketcap.com/currencies/nucypher/	NU	$0.17
162	Stratis	https://coinmarketcap.com/currencies/stratis/	STRAX	$0.84
163	Ren	https://coinmarketcap.com/currencies/ren/	REN	$0.12
164	Ontology Gas	https://coinmarketcap.com/currencies/ontology-gas/	ONG	$0.37
165	Nervos Network	https://coinmarketcap.com/currencies/nervos-network/	CKB	$0.00
166	MediBloc	https://coinmarketcap.com/currencies/medibloc/	MED	$0.02
167	Bancor	https://coinmarketcap.com/currencies/bancor/	BNT	$0.48
168	Revain	https://coinmarketcap.com/currencies/revain/	REV	$0.00
169	Origin Protocol	https://coinmarketcap.com/currencies/origin-protocol/	OGN	$0.28
170	WINkLink	https://coinmarketcap.com/currencies/wink/	WIN	$0.00
171	Powerledger	https://coinmarketcap.com/currencies/power-ledger/	POWR	$0.22
172	Nano	https://coinmarketcap.com/currencies/nano/	XNO	$0.80
173	Acala Token	https://coinmarketcap.com/currencies/acala/	ACA	$0.23
174	Rally	https://coinmarketcap.com/currencies/rally/	RLY	$0.04
175	Status	https://coinmarketcap.com/currencies/status/	SNT	$0.03
176	Wirex Token	https://coinmarketcap.com/currencies/wirex-token/	WXT	$0.01
177	Ocean Protocol	https://coinmarketcap.com/currencies/ocean-protocol/	OCEAN	$0.17
178	Numeraire	https://coinmarketcap.com/currencies/numeraire/	NMR	$17.36
179	Celer Network	https://coinmarketcap.com/currencies/celer-network/	CELR	$0.01
180	Ardor	https://coinmarketcap.com/currencies/ardor/	ARDR	$0.10
181	Chromia	https://coinmarketcap.com/currencies/chromia/	CHR	$0.18
182	Pundi X (New)	https://coinmarketcap.com/currencies/pundix-new/	PUNDIX	$0.39
183	Flux	https://coinmarketcap.com/currencies/zel/	FLUX	$0.42
184	sUSD	https://coinmarketcap.com/currencies/susd/	SUSD	$1.00
185	Prometeus	https://coinmarketcap.com/currencies/prometeus/	PROM	$6.00
186	Velas	https://coinmarketcap.com/currencies/velas/	VLX	$0.04
187	dYdX	https://coinmarketcap.com/currencies/dydx/	DYDX	$1.49
188	Persistence	https://coinmarketcap.com/currencies/persistence/	XPRT	$0.88
189	Conflux	https://coinmarketcap.com/currencies/conflux-network/	CFX	$0.05
190	COTI	https://coinmarketcap.com/currencies/coti/	COTI	$0.09
191	Bridge Oracle	https://coinmarketcap.com/currencies/bridge-oracle/	BRG	$0.01
192	renBTC	https://coinmarketcap.com/currencies/renbtc/	RENBTC	$19187.80
193	Spell Token	https://coinmarketcap.com/currencies/spell-token/	SPELL	$0.00
194	aelf	https://coinmarketcap.com/currencies/aelf/	ELF	$0.16
195	Telcoin	https://coinmarketcap.com/currencies/telcoin/	TEL	$0.00
196	Syscoin	https://coinmarketcap.com/currencies/syscoin/	SYS	$0.14
197	Augur	https://coinmarketcap.com/currencies/augur/	REP	$7.98
198	iExec RLC	https://coinmarketcap.com/currencies/rlc/	RLC	$1.08
199	DAO Maker	https://coinmarketcap.com/currencies/dao-maker/	DAO	$1.23
200	Coin98	https://coinmarketcap.com/currencies/coin98/	C98	$0.47
201	Wrapped TRON	https://coinmarketcap.com/currencies/wrapped-tron/	WTRX	$0.06456
202	HEX	https://coinmarketcap.com/currencies/hex/	HEX	$0.03466
203	yOUcash	https://coinmarketcap.com/currencies/youcash/	YOUC	$0.5105
204	Lido Staked ETH	https://coinmarketcap.com/currencies/steth/	stETH	$1,020.78
205	Bitcoin BEP2	https://coinmarketcap.com/currencies/bitcoin-bep2/	BTCB	$19,179.36
206	Chain	https://coinmarketcap.com/currencies/chain/	XCN	$0.08654
207	Frax	https://coinmarketcap.com/currencies/frax/	FRAX	$0.9985
208	Toncoin	https://coinmarketcap.com/currencies/toncoin/	TON	$1.09
209	Wrapped BNB	https://coinmarketcap.com/currencies/wbnb/	WBNB	$216.58
210	Terra Classic	https://coinmarketcap.com/currencies/terra-luna/	LUNC	$0.0001257
211	Huobi BTC	https://coinmarketcap.com/currencies/huobi-btc/	HBTC	$19224.65
212	BitTorrent	https://coinmarketcap.com/currencies/bittorrent/	BTTOLD	$0.00
213	Tether Gold	https://coinmarketcap.com/currencies/tether-gold/	XAUT	$1817.05
214	Fruits	https://coinmarketcap.com/currencies/fruits-eco/	FRTS	$0.02
215	DeFiChain	https://coinmarketcap.com/currencies/defichain/	DFI	$0.83
216	Counos X	https://coinmarketcap.com/currencies/counos-x/	CCXX	$18.99
217	WEMIX	https://coinmarketcap.com/currencies/wemix/	WEMIX	$2.67
218	Threshold	https://coinmarketcap.com/currencies/threshold/	T	$0.03
219	Safe	https://coinmarketcap.com/currencies/safe/	SAFE	$12.99
220	Terra	https://coinmarketcap.com/currencies/terra-luna-v2/	LUNA	$2.10
221	BitDAO	https://coinmarketcap.com/currencies/bitdao/	BIT	$0.42
222	The Transfer Token	https://coinmarketcap.com/currencies/the-transfer-token/	TTT	$2.24
223	BinaryX	https://coinmarketcap.com/currencies/binaryx/	BNX	$117.08
224	Osmosis	https://coinmarketcap.com/currencies/osmosis/	OSMO	$0.81
225	NXM	https://coinmarketcap.com/currencies/nxm/	NXM	$34.54
226	HUSD	https://coinmarketcap.com/currencies/husd/	HUSD	$1.00
227	LINK	https://coinmarketcap.com/currencies/link/	LN	$33.17
228	Baby Doge Coin	https://coinmarketcap.com/currencies/baby-doge-coin/	BabyDoge	$0.00
229	Liquity USD	https://coinmarketcap.com/currencies/liquity-usd/	LUSD	$1.02
230	Astar	https://coinmarketcap.com/currencies/astar/	ASTR	$0.04
231	Chainbing	https://coinmarketcap.com/currencies/chainbing/	CBG	$4.29
232	Metacraft	https://coinmarketcap.com/currencies/metacraft/	MCT	$2.63
233	Humanscape	https://coinmarketcap.com/currencies/humanscape/	HUM	$0.17
234	LooksRare	https://coinmarketcap.com/currencies/looksrare/	LOOKS	$0.28
235	STASIS EURO	https://coinmarketcap.com/currencies/stasis-euro/	EURS	$1.04
236	Bitpanda Ecosystem Token	https://coinmarketcap.com/currencies/bitpanda-ecosystem-token/	BEST	$0.35
237	RadioCaca	https://coinmarketcap.com/currencies/radio-caca/	RACA	$0.00
238	VVS Finance	https://coinmarketcap.com/currencies/vvs-finance/	VVS	$0.00
239	PlatonCoin	https://coinmarketcap.com/currencies/platoncoin/	PLTC	$1.00
240	Rocket Pool	https://coinmarketcap.com/currencies/rocket-pool/	RPL	$11.00
241	1eco	https://coinmarketcap.com/currencies/1eco/	1ECO	$4.07
242	Everscale	https://coinmarketcap.com/currencies/everscale/	EVER	$0.08
243	USDX [Kava]	https://coinmarketcap.com/currencies/usdx-kava/	USDX	$0.96
244	Wrapped Everscale	https://coinmarketcap.com/currencies/wrapped-everscale/	WEVER	$0.08
245	Venus USDC	https://coinmarketcap.com/currencies/venus-usdc/	vUSDC	$0.02
246	AVINOC	https://coinmarketcap.com/currencies/avinoc/	AVINOC	$0.26
247	TitanSwap	https://coinmarketcap.com/currencies/titanswap/	TITAN	$1.91
248	MVL	https://coinmarketcap.com/currencies/mvl/	MVL	$0.00
249	Hxro	https://coinmarketcap.com/currencies/hxro/	HXRO	$0.23
250	Wrapped Velas	https://coinmarketcap.com/currencies/wrapped-velas/	WVLX	$0.04
251	Project Galaxy	https://coinmarketcap.com/currencies/project-galaxy/	GAL	$2.73
252	DEAPcoin	https://coinmarketcap.com/currencies/deapcoin/	DEP	$0.01
253	NEST Protocol	https://coinmarketcap.com/currencies/nest-protocol/	NEST	$0.03
254	Sologenic	https://coinmarketcap.com/currencies/sologenic/	SOLO	$0.23
255	XSGD	https://coinmarketcap.com/currencies/xsgd/	XSGD	$0.70
256	Biswap	https://coinmarketcap.com/currencies/biswap/	BSW	$0.31
257	Cartesi	https://coinmarketcap.com/currencies/cartesi/	CTSI	$0.15
258	Dent	https://coinmarketcap.com/currencies/dent/	DENT	$0.00
259	MaidSafeCoin	https://coinmarketcap.com/currencies/maidsafecoin/	MAID	$0.19
260	Steem	https://coinmarketcap.com/currencies/steem/	STEEM	$0.21
261	MetisDAO	https://coinmarketcap.com/currencies/metisdao/	METIS	$18.95
262	XYO	https://coinmarketcap.com/currencies/xyo/	XYO	$0.01
263	Metal	https://coinmarketcap.com/currencies/metal/	MTL	$1.24
264	Function X	https://coinmarketcap.com/currencies/function-x/	FX	$0.20
265	Constellation	https://coinmarketcap.com/currencies/constellation/	DAG	$0.06
266	FUNToken	https://coinmarketcap.com/currencies/funtoken/	FUN	$0.01
267	WazirX	https://coinmarketcap.com/currencies/wazirx/	WRX	$0.21
268	MobileCoin	https://coinmarketcap.com/currencies/mobilecoin/	MOB	$1.07
269	Pirate Chain	https://coinmarketcap.com/currencies/pirate-chain/	ARRR	$0.41
270	Injective	https://coinmarketcap.com/currencies/injective-protocol/	INJ	$1.23
271	Creditcoin	https://coinmarketcap.com/currencies/creditcoin/	CTC	$0.38
272	Raydium	https://coinmarketcap.com/currencies/raydium/	RAY	$0.66
273	Frax Share	https://coinmarketcap.com/currencies/frax-share/	FXS	$4.82
274	Ultra	https://coinmarketcap.com/currencies/ultra/	UOS	$0.25
275	inSure DeFi	https://coinmarketcap.com/currencies/insure/	SURE	$0.00
276	Mdex	https://coinmarketcap.com/currencies/mdex/	MDX	$0.08
277	Anyswap	https://coinmarketcap.com/currencies/anyswap/	ANY	$4.03
278	Yield Guild Games	https://coinmarketcap.com/currencies/yield-guild-games/	YGG	$0.64
279	ZEON	https://coinmarketcap.com/currencies/zeon/	ZEON	$0.00
280	Centrifuge	https://coinmarketcap.com/currencies/centrifuge/	CFG	$0.25
281	Liquity	https://coinmarketcap.com/currencies/liquity/	LQTY	$0.92
282	Locus Chain	https://coinmarketcap.com/currencies/locus-chain/	LOCUS	$0.08
283	Illuvium	https://coinmarketcap.com/currencies/illuvium/	ILV	$111.27
284	Biconomy	https://coinmarketcap.com/currencies/biconomy/	BICO	$0.48
285	Energy Web Token	https://coinmarketcap.com/currencies/energy-web-token/	EWT	$2.37
286	Orchid	https://coinmarketcap.com/currencies/orchid/	OXT	$0.10
287	StormX	https://coinmarketcap.com/currencies/stormx/	STMX	$0.01
288	Voyager Token	https://coinmarketcap.com/currencies/voyager-token/	VGX	$0.25
289	ABBC Coin	https://coinmarketcap.com/currencies/abbc-coin/	ABBC	$0.07
290	KOK	https://coinmarketcap.com/currencies/keystone-of-opportunity-knowledge/	KOK	$0.63
291	Tribe	https://coinmarketcap.com/currencies/tribe/	TRIBE	$0.15
292	Propy	https://coinmarketcap.com/currencies/propy/	PRO	$0.82
293	MyNeighborAlice	https://coinmarketcap.com/currencies/myneighboralice/	ALICE	$2.20
294	JOE	https://coinmarketcap.com/currencies/joe/	JOE	$0.24
295	Decentralized Social	https://coinmarketcap.com/currencies/deso/	DESO	$7.55
296	Origin Dollar	https://coinmarketcap.com/currencies/origin-dollar/	OUSD	$1.00
297	Bitcoin Standard Hashrate Token	https://coinmarketcap.com/currencies/btc-standard-hashrate-token/	BTCST	$5.44
298	Reef	https://coinmarketcap.com/currencies/reef/	REEF	$0.00
299	OriginTrail	https://coinmarketcap.com/currencies/origintrail/	TRAC	$0.18
300	TiFi Token	https://coinmarketcap.com/currencies/tifi-token/	TIFI	$0.00
301	API3	https://coinmarketcap.com/currencies/api3/	API3	$1.76
302	Mrweb Finance	https://coinmarketcap.com/currencies/mrweb-finance/	AMA	$0.006487
303	Vulcan Forged PYR	https://coinmarketcap.com/currencies/vulcan-forged-pyr/	PYR	$2.70
304	Shentu	https://coinmarketcap.com/currencies/shentu/	CTK	$0.7995
305	QuarkChain	https://coinmarketcap.com/currencies/quarkchain/	QKC	$0.01007
306	VeThor Token	https://coinmarketcap.com/currencies/vethor-token/	VTHO	$0.001407
307	Alien Worlds	https://coinmarketcap.com/currencies/alien-worlds/	TLM	$0.02417
308	LUKSO	https://coinmarketcap.com/currencies/lukso/	LYXe	$4.14
309	Standard Tokenization Protocol	https://coinmarketcap.com/currencies/standard-tokenization-protocol/	STPT	$0.04056
310	GlitzKoin	https://coinmarketcap.com/currencies/glitzkoin/	GTN	$0.25
311	Divi	https://coinmarketcap.com/currencies/divi/	DIVI	$0.02
312	Aavegotchi	https://coinmarketcap.com/currencies/aavegotchi/	GHST	$1.30
313	Dawn Protocol	https://coinmarketcap.com/currencies/dawn-protocol/	DAWN	$0.84
314	SOMESING	https://coinmarketcap.com/currencies/somesing/	SSX	$0.02
315	Ergo	https://coinmarketcap.com/currencies/ergo/	ERG	$1.90
316	Aragon	https://coinmarketcap.com/currencies/aragon/	ANT	$1.52
317	Bifrost	https://coinmarketcap.com/currencies/bifrost/	BFC	$0.06
318	NKN	https://coinmarketcap.com/currencies/nkn/	NKN	$0.09
319	Sun (New)	https://coinmarketcap.com/currencies/sun-token/	SUN	$0.01
320	Mines of Dalarnia	https://coinmarketcap.com/currencies/mines-of-dalarnia/	DAR	$0.28
321	HedgeTrade	https://coinmarketcap.com/currencies/hedgetrade/	HEDG	$0.17
322	RSK Smart Bitcoin	https://coinmarketcap.com/currencies/rsk-smart-bitcoin/	RBTC	$19106.63
323	Metadium	https://coinmarketcap.com/currencies/metadium/	META	$0.03
324	Strike	https://coinmarketcap.com/currencies/strike/	STRK	$17.88
325	Venus BUSD	https://coinmarketcap.com/currencies/venus-busd/	vBUSD	$0.02
326	Ark	https://coinmarketcap.com/currencies/ark/	ARK	$0.42
327	cVault.finance	https://coinmarketcap.com/currencies/cvault-finance/	CORE	$5771.94
328	Alchemy Pay	https://coinmarketcap.com/currencies/alchemy-pay/	ACH	$0.01
329	Boba Network	https://coinmarketcap.com/currencies/boba-network/	BOBA	$0.33
330	Uquid Coin	https://coinmarketcap.com/currencies/uquid-coin/	UQC	$5.68
331	Utrust	https://coinmarketcap.com/currencies/utrust/	UTK	$0.12
332	Moonriver	https://coinmarketcap.com/currencies/moonriver/	MOVR	$11.56
333	Veritaseum	https://coinmarketcap.com/currencies/veritaseum/	VERI	$25.85
334	Fetch.ai	https://coinmarketcap.com/currencies/fetch/	FET	$0.07
335	Vai	https://coinmarketcap.com/currencies/vai/	VAI	$0.96
336	Darma Cash	https://coinmarketcap.com/currencies/darma-cash/	DMCH	$0.25
337	Venus	https://coinmarketcap.com/currencies/venus/	XVS	$4.51
338	Celo Dollar	https://coinmarketcap.com/currencies/celo-dollar/	CUSD	$0.99
339	Aleph.im	https://coinmarketcap.com/currencies/aleph-im/	ALEPH	$0.26
340	Perpetual Protocol	https://coinmarketcap.com/currencies/perpetual-protocol/	PERP	$0.69
341	Ampleforth Governance Token	https://coinmarketcap.com/currencies/ampleforth-governance-token/	FORTH	$3.49
342	CENNZnet	https://coinmarketcap.com/currencies/centrality/	CENNZ	$0.04
343	Loom Network	https://coinmarketcap.com/currencies/loom-network/	LOOM	$0.04
344	Everipedia	https://coinmarketcap.com/currencies/everipedia/	IQ	$0.00
345	Aurora	https://coinmarketcap.com/currencies/aurora-near/	AURORA	$1.31
346	Electroneum	https://coinmarketcap.com/currencies/electroneum/	ETN	$0.00
347	World Mobile Token	https://coinmarketcap.com/currencies/world-mobile-token/	WMT	$0.21
348	Adshares	https://coinmarketcap.com/currencies/adshares/	ADS	$1.82
349	Rari Governance Token	https://coinmarketcap.com/currencies/rari-governance-token/	RGT	$4.14
350	Orbit Chain	https://coinmarketcap.com/currencies/orbit-chain/	ORC	$0.08
351	Enzyme	https://coinmarketcap.com/currencies/enzyme/	MLN	$24.44
352	Verge	https://coinmarketcap.com/currencies/verge/	XVG	$0.00
353	Alpha Venture DAO	https://coinmarketcap.com/currencies/alpha-finance-lab/	ALPHA	$0.11
354	Anchor Protocol	https://coinmarketcap.com/currencies/anchor-protocol/	ANC	$0.14
355	Efforce	https://coinmarketcap.com/currencies/efforce/	WOZX	$0.09
356	WhiteCoin	https://coinmarketcap.com/currencies/whitecoin/	XWC	$0.07
357	SuperFarm	https://coinmarketcap.com/currencies/superfarm/	SUPER	$0.12
358	Polkastarter	https://coinmarketcap.com/currencies/polkastarter/	POLS	$0.49
359	Verasity	https://coinmarketcap.com/currencies/verasity/	VRA	$0.00
360	Radicle	https://coinmarketcap.com/currencies/radicle/	RAD	$1.55
361	ThunderCore	https://coinmarketcap.com/currencies/thundercore/	TT	$0.01
362	dKargo	https://coinmarketcap.com/currencies/dkargo/	DKA	$0.05
363	Rakon	https://coinmarketcap.com/currencies/rakon/	RKN	$0.20
364	Mango	https://coinmarketcap.com/currencies/mango-markets/	MNGO	$0.05
365	Aergo	https://coinmarketcap.com/currencies/aergo/	AERGO	$0.12
366	HUNT	https://coinmarketcap.com/currencies/hunt/	HUNT	$0.43
367	ARPA Chain	https://coinmarketcap.com/currencies/arpa-chain/	ARPA	$0.04
368	Telos	https://coinmarketcap.com/currencies/telos/	TLOS	$0.17
369	BakeryToken	https://coinmarketcap.com/currencies/bakerytoken/	BAKE	$0.24
370	Dusk Network	https://coinmarketcap.com/currencies/dusk-network/	DUSK	$0.11
371	LCX	https://coinmarketcap.com/currencies/lcx/	LCX	$0.06
372	AXEL	https://coinmarketcap.com/currencies/axel/	AXEL	$0.16
373	XCAD Network	https://coinmarketcap.com/currencies/xcad-network/	XCAD	$1.86
374	Band Protocol	https://coinmarketcap.com/currencies/band-protocol/	BAND	$1.28
375	MOBOX	https://coinmarketcap.com/currencies/mobox/	MBOX	$0.56
376	e-Radix	https://coinmarketcap.com/currencies/radix/	EXRD	$0.06
377	Cocos-BCX	https://coinmarketcap.com/currencies/cocos-bcx/	COCOS	$0.67
378	Beta Finance	https://coinmarketcap.com/currencies/beta-finance/	BETA	$0.10
379	Freeway Token	https://coinmarketcap.com/currencies/freeway-token/	FWT	$0.01
380	CONTRACOIN	https://coinmarketcap.com/currencies/contracoin/	CTCN	$0.92
381	JasmyCoin	https://coinmarketcap.com/currencies/jasmy/	JASMY	$0.01
382	ASD	https://coinmarketcap.com/currencies/bitmax-token/	ASD	$0.07
383	GensoKishi Metaverse	https://coinmarketcap.com/currencies/gensokishis-metaverse/	MV	$0.39
384	Metahero	https://coinmarketcap.com/currencies/metahero/	HERO	$0.01
385	FLETA	https://coinmarketcap.com/currencies/fleta/	FLETA	$0.02
386	Orion Protocol	https://coinmarketcap.com/currencies/orion-protocol/	ORN	$1.26
387	Mask Network	https://coinmarketcap.com/currencies/mask-network/	MASK	$1.48
388	IDEX	https://coinmarketcap.com/currencies/idex/	IDEX	$0.06
389	XeniosCoin	https://coinmarketcap.com/currencies/xenioscoin/	XNC	$0.55
390	RSK Infrastructure Framework	https://coinmarketcap.com/currencies/rsk-infrastructure-framework/	RIF	$0.05
391	SingularityNET	https://coinmarketcap.com/currencies/singularitynet/	AGIX	$0.04
392	TomoChain	https://coinmarketcap.com/currencies/tomochain/	TOMO	$0.45
393	ssv.network	https://coinmarketcap.com/currencies/ssv-network/	SSV	$4.10
394	Klever	https://coinmarketcap.com/currencies/klever/	KLV	$0.01
395	mStable USD	https://coinmarketcap.com/currencies/mstable-usd/	MUSD	$0.99
396	ZB Token	https://coinmarketcap.com/currencies/zb-token/	ZB	$0.09
397	DeFi Pulse Index	https://coinmarketcap.com/currencies/defi-pulse-index/	DPI	$72.38
398	Bella Protocol	https://coinmarketcap.com/currencies/bella-protocol/	BEL	$0.84
399	Presearch	https://coinmarketcap.com/currencies/presearch/	PRE	$0.10
400	Cult DAO	https://coinmarketcap.com/currencies/cult-dao/	CULT	$0.00
401	H2O DAO	https://coinmarketcap.com/currencies/h2o-dao/	H2O	$0.5998
402	Neutrino Token	https://coinmarketcap.com/currencies/neutrino-system-base-token/	NSBT	$14.53
403	ONUS	https://coinmarketcap.com/currencies/onus/	ONUS	$0.408
404	KardiaChain	https://coinmarketcap.com/currencies/kardiachain/	KAI	$0.01108
405	Hoo Token	https://coinmarketcap.com/currencies/hoo-token/	HOO	$0.4786
406	Starlink	https://coinmarketcap.com/currencies/star-link/	STARL	$0.000003942
407	MovieBloc	https://coinmarketcap.com/currencies/moviebloc/	MBL	$0.002702
408	Sport and Leisure	https://coinmarketcap.com/currencies/sport-and-leisure/	SNL	$0.05732
409	Carry	https://coinmarketcap.com/currencies/carry/	CRE	$0.004411
410	Super Zero Protocol	https://coinmarketcap.com/currencies/super-zero-protocol/	SERO	$0.1069
411	Qcash	https://coinmarketcap.com/currencies/qcash/	QC	$0.08
412	Badger DAO	https://coinmarketcap.com/currencies/badger-dao/	BADGER	$3.01
413	DFI.Money	https://coinmarketcap.com/currencies/yearn-finance-ii/	YFII	$972.98
414	Ribbon Finance	https://coinmarketcap.com/currencies/ribbon-finance/	RBN	$0.23
415	TrueFi	https://coinmarketcap.com/currencies/truefi-token/	TRU	$0.07
416	Hifi Finance	https://coinmarketcap.com/currencies/mainframe/	MFT	$0.00
417	Marlin	https://coinmarketcap.com/currencies/marlin/	POND	$0.01
418	Pitbull	https://coinmarketcap.com/currencies/pitbull/	PIT	$0.00
419	BitMart Token	https://coinmarketcap.com/currencies/bitmart-token/	BMX	$0.21
420	SafePal	https://coinmarketcap.com/currencies/safepal/	SFP	$0.34
421	Ampleforth	https://coinmarketcap.com/currencies/ampleforth/	AMPL	$0.99
422	Wanchain	https://coinmarketcap.com/currencies/wanchain/	WAN	$0.19
423	Dero	https://coinmarketcap.com/currencies/dero/	DERO	$2.85
424	PlatON	https://coinmarketcap.com/currencies/platon/	LAT	$0.01
425	Maple	https://coinmarketcap.com/currencies/maple/	MPL	$8.15
426	Gitcoin	https://coinmarketcap.com/currencies/gitcoin/	GTC	$2.52
427	Splintershards	https://coinmarketcap.com/currencies/splintershards/	SPS	$0.05
428	DigitalBits	https://coinmarketcap.com/currencies/digitalbits/	XDB	$0.04
429	Proton	https://coinmarketcap.com/currencies/proton/	XPR	$0.00
430	Alpha Quark Token	https://coinmarketcap.com/currencies/alpha-quark-token/	AQT	$1.33
431	Handshake	https://coinmarketcap.com/currencies/handshake/	HNS	$0.07
432	Celo Euro	https://coinmarketcap.com/currencies/celo-euro/	CEUR	$1.04
433	Deeper Network	https://coinmarketcap.com/currencies/deeper-network/	DPR	$0.03
434	YooShi	https://coinmarketcap.com/currencies/yooshi/	YOOSHI	$0.00
435	HI	https://coinmarketcap.com/currencies/hi-dollar/	HI	$0.07
436	GXChain	https://coinmarketcap.com/currencies/gxchain/	GXC	$0.45
437	Moss Coin	https://coinmarketcap.com/currencies/moss-coin/	MOC	$0.09
438	Steem Dollars	https://coinmarketcap.com/currencies/steem-dollars/	SBD	$2.96
439	DeversiFi	https://coinmarketcap.com/currencies/deversifi/	DVF	$1.39
440	REI Network	https://coinmarketcap.com/currencies/rei-network/	REI	$0.04
441	Flamingo	https://coinmarketcap.com/currencies/flamingo/	FLM	$0.11
442	PolySwarm	https://coinmarketcap.com/currencies/polyswarm/	NCT	$0.02
443	MonaCoin	https://coinmarketcap.com/currencies/monacoin/	MONA	$0.50
444	Vega Protocol	https://coinmarketcap.com/currencies/vegaprotocol/	VEGA	$1.57
445	Genopets	https://coinmarketcap.com/currencies/genopets/	GENE	$8.47
446	RIZON	https://coinmarketcap.com/currencies/rizon-blockchain/	ATOLO	$0.02
447	Venus USDT	https://coinmarketcap.com/currencies/venus-usdt/	vUSDT	$0.02
448	Hyperion	https://coinmarketcap.com/currencies/hyperion/	HYN	$0.16
449	Bitcoin Diamond	https://coinmarketcap.com/currencies/bitcoin-diamond/	BCD	$0.17
450	Sentinel Protocol	https://coinmarketcap.com/currencies/sentinel-protocol/	UPP	$0.07
451	CoinLoan	https://coinmarketcap.com/currencies/coinloan/	CLT	$16.32
452	OpenDAO	https://coinmarketcap.com/currencies/opendao/	SOS	$0.00
453	Nestree	https://coinmarketcap.com/currencies/nestree/	EGG	$0.01
454	Alchemix	https://coinmarketcap.com/currencies/alchemix/	ALCX	$23.54
455	Syntropy	https://coinmarketcap.com/currencies/syntropy/	NOIA	$0.06
456	MiL.k	https://coinmarketcap.com/currencies/milk-alliance/	MLK	$0.40
457	Komodo	https://coinmarketcap.com/currencies/komodo/	KMD	$0.24
458	LTO Network	https://coinmarketcap.com/currencies/lto-network/	LTO	$0.08
459	DIA	https://coinmarketcap.com/currencies/dia/	DIA	$0.38
460	AIOZ Network	https://coinmarketcap.com/currencies/aioz-network/	AIOZ	$0.05
461	Chimpion	https://coinmarketcap.com/currencies/chimpion/	BNANA	$0.96
462	Refereum	https://coinmarketcap.com/currencies/refereum/	RFR	$0.01
463	Litentry	https://coinmarketcap.com/currencies/litentry/	LIT	$0.81
464	CONUN	https://coinmarketcap.com/currencies/conun/	CON	$0.01
465	TROY	https://coinmarketcap.com/currencies/troy/	TROY	$0.00
466	RMRK	https://coinmarketcap.com/currencies/rmrk/	RMRK	$3.16
467	Linear Finance	https://coinmarketcap.com/currencies/linear/	LINA	$0.01
468	Toko Token	https://coinmarketcap.com/currencies/tokocrypto/	TKO	$0.27
469	Covalent	https://coinmarketcap.com/currencies/covalent/	CQT	$0.12
470	Ankr Reward Bearing Staked ETH	https://coinmarketcap.com/currencies/ankreth/	aETHc	$1009.95
471	Alpaca Finance	https://coinmarketcap.com/currencies/alpaca-finance/	ALPACA	$0.21
472	Travala.com	https://coinmarketcap.com/currencies/travala/	AVA	$0.57
473	Alitas	https://coinmarketcap.com/currencies/alitas/	ALT	$0.49
474	Qredo	https://coinmarketcap.com/currencies/qredo/	QRDO	$0.38
475	Cobak Token	https://coinmarketcap.com/currencies/cobak-token/	CBK	$0.92
476	Merit Circle	https://coinmarketcap.com/currencies/merit-circle/	MC	$0.69
477	Beefy Finance	https://coinmarketcap.com/currencies/beefy-finance/	BIFI	$406.17
478	CUDOS	https://coinmarketcap.com/currencies/cudos/	CUDOS	$0.01
479	Bluzelle	https://coinmarketcap.com/currencies/bluzelle/	BLZ	$0.09
480	Woodcoin	https://coinmarketcap.com/currencies/woodcoin/	LOG	$3.59
481	Harvest Finance	https://coinmarketcap.com/currencies/harvest-finance/	FARM	$42.38
482	Reserve	https://coinmarketcap.com/currencies/reserve/	RSV	$1.00
483	USDK	https://coinmarketcap.com/currencies/usdk/	USDK	$1.00
484	Velo	https://coinmarketcap.com/currencies/velo/	VELO	$0.02
485	CLV	https://coinmarketcap.com/currencies/clover/	CLV	$0.09
486	BitShares	https://coinmarketcap.com/currencies/bitshares/	BTS	$0.01
487	UFO Gaming	https://coinmarketcap.com/currencies/ufo-gaming/	UFO	$0.00
488	Dvision Network	https://coinmarketcap.com/currencies/dvision-network/	DVI	$0.08
489	Phala Network	https://coinmarketcap.com/currencies/phala-network/	PHA	$0.10
490	STAKE	https://coinmarketcap.com/currencies/xdai/	STAKE	$3.32
491	Groestlcoin	https://coinmarketcap.com/currencies/groestlcoin/	GRS	$0.35
492	FirmaChain	https://coinmarketcap.com/currencies/firmachain/	FCT,FCT2	$0.06
493	Automata Network	https://coinmarketcap.com/currencies/automata-network/	ATA	$0.16
494	SHPING	https://coinmarketcap.com/currencies/shping/	SHPING	$0.02
495	GMT Token	https://coinmarketcap.com/currencies/gomining-token/	GMT	$0.11
496	Alethea Artificial Liquid Intelligence Token	https://coinmarketcap.com/currencies/alethea-artificial-liquid-intelligence-token/	ALI	$0.02
497	Elastos	https://coinmarketcap.com/currencies/elastos/	ELA	$1.36
498	Wrapped NXM	https://coinmarketcap.com/currencies/wrapped-nxm/	WNXM	$16.52
499	Alpine F1 Team Fan Token	https://coinmarketcap.com/currencies/alpine-f1-team-fan-token/	ALPINE	$2.43
500	Akash Network	https://coinmarketcap.com/currencies/akash-network/	AKT	$0.24
501	Chrono.tech	https://coinmarketcap.com/currencies/chrono-tech/	TIME	$38.88
502	Kava Swap	https://coinmarketcap.com/currencies/kava-swap/	SWP	$0.8152
503	Tokenlon Network Token	https://coinmarketcap.com/currencies/tokenlon-network-token/	LON	$0.6177
504	Seedify.fund	https://coinmarketcap.com/currencies/seedify-fund/	SFUND	$1.12
505	Energi	https://coinmarketcap.com/currencies/energi/	NRG	$0.5031
506	district0x	https://coinmarketcap.com/currencies/district0x/	DNT	$0.04513
507	EverRise	https://coinmarketcap.com/currencies/everrise/	RISE	$0.0004234
508	Keep3rV1	https://coinmarketcap.com/currencies/keep3rv1/	KP3R	$133.93
509	Aeternity	https://coinmarketcap.com/currencies/aeternity/	AE	$0.07508
510	Adventure Gold	https://coinmarketcap.com/currencies/adventure-gold/	AGLD	$0.3806
511	AMO Coin	https://coinmarketcap.com/currencies/amo-coin/	AMO	$0.00
512	Gas	https://coinmarketcap.com/currencies/gas/	GAS	$2.60
513	Hathor	https://coinmarketcap.com/currencies/hathor/	HTR	$0.11
514	Swarm	https://coinmarketcap.com/currencies/ethereum-swarm/	BZZ	$0.55
515	Unibright	https://coinmarketcap.com/currencies/unibright/	UBT	$0.17
516	Green Satoshi Token (SOL)	https://coinmarketcap.com/currencies/green-satoshi-token/	GST	$0.12
517	Unifi Protocol DAO	https://coinmarketcap.com/currencies/unifi-protocol-dao/	UNFI	$5.89
518	Bloktopia	https://coinmarketcap.com/currencies/bloktopia/	BLOK	$0.00
519	Samoyedcoin	https://coinmarketcap.com/currencies/samoyedcoin/	SAMO	$0.01
520	MimbleWimbleCoin	https://coinmarketcap.com/currencies/mimblewimblecoin/	MWC	$2.36
521	Contentos	https://coinmarketcap.com/currencies/contentos/	COS	$0.01
522	Student Coin	https://coinmarketcap.com/currencies/student-coin/	STC	$0.00
523	Ultiledger	https://coinmarketcap.com/currencies/ultiledger/	ULT	$0.01
524	Terra Virtua Kolect	https://coinmarketcap.com/currencies/terra-virtua-kolect/	TVK	$0.03
525	Shapeshift FOX Token	https://coinmarketcap.com/currencies/fox-token/	FOX	$0.07
526	Shiba Predator	https://coinmarketcap.com/currencies/shiba-predator/	QOM	$0.00
527	Kava Lend	https://coinmarketcap.com/currencies/hard-protocol/	HARD	$0.20
528	BabySwap	https://coinmarketcap.com/currencies/babyswap/	BABY	$0.10
529	RichQUACK.com	https://coinmarketcap.com/currencies/richquack-com/	QUACK	$0.00
530	Misbloc	https://coinmarketcap.com/currencies/misbloc/	MSB	$0.13
531	TrustSwap	https://coinmarketcap.com/currencies/trustswap/	SWAP	$0.24
532	DAD	https://coinmarketcap.com/currencies/dad/	DAD	$0.05
533	ZIMBOCASH	https://coinmarketcap.com/currencies/zimbocash/	ZASH	$0.01
534	RAMP	https://coinmarketcap.com/currencies/ramp/	RAMP	$0.05
535	MEVerse	https://coinmarketcap.com/currencies/meverse/	MEV	$0.01
536	HOPR	https://coinmarketcap.com/currencies/hopr/	HOPR	$0.11
537	Tranchess	https://coinmarketcap.com/currencies/tranchess/	CHESS	$0.28
538	IRISnet	https://coinmarketcap.com/currencies/irisnet/	IRIS	$0.02
539	FIO Protocol	https://coinmarketcap.com/currencies/fio-protocol/	FIO	$0.04
540	Victoria VR	https://coinmarketcap.com/currencies/victoria-vr/	VR	$0.03
541	Efinity Token	https://coinmarketcap.com/currencies/efinity/	EFI	$0.13
542	Assemble Protocol	https://coinmarketcap.com/currencies/assemble-protocol/	ASM	$0.02
543	VerusCoin	https://coinmarketcap.com/currencies/veruscoin/	VRSC	$0.33
544	CoinEx Token	https://coinmarketcap.com/currencies/coinex-token/	CET	$0.03
545	Elitium	https://coinmarketcap.com/currencies/elitium/	EUM	$0.81
546	Tornado Cash	https://coinmarketcap.com/currencies/torn/	TORN	$20.29
547	Circuits of Value	https://coinmarketcap.com/currencies/circuits-of-value/	COVAL	$0.01
548	Kin	https://coinmarketcap.com/currencies/kin/	KIN	$0.00
549	RSS3	https://coinmarketcap.com/currencies/rss3/	RSS3	$0.15
550	Cortex	https://coinmarketcap.com/currencies/cortex/	CTXC	$0.11
551	SuperRare	https://coinmarketcap.com/currencies/superrare/	RARE	$0.21
552	KILT Protocol	https://coinmarketcap.com/currencies/kiltprotocol/	KILT	$0.44
553	TerraKRW	https://coinmarketcap.com/currencies/terra-krw/	KRT	$0.00
554	MATH	https://coinmarketcap.com/currencies/math/	MATH	$0.19
555	SIX	https://coinmarketcap.com/currencies/six/	SIX	$0.08
556	TokenPocket	https://coinmarketcap.com/currencies/tokenpocket/	TPT	$0.01
557	Akropolis	https://coinmarketcap.com/currencies/akropolis/	AKRO	$0.00
558	Time New Bank	https://coinmarketcap.com/currencies/time-new-bank/	TNB	$0.01
559	Decentral Games	https://coinmarketcap.com/currencies/decentral-games/	DG	$0.04
560	bZx Protocol	https://coinmarketcap.com/currencies/bzx-protocol/	BZRX	$0.04
561	Streamr	https://coinmarketcap.com/currencies/streamr/	DATA	$0.03
562	Ethernity	https://coinmarketcap.com/currencies/ethernity-chain/	ERN	$1.34
563	Voxies	https://coinmarketcap.com/currencies/voxies/	VOXEL	$0.32
564	Venus XVS	https://coinmarketcap.com/currencies/venus-xvs/	vXVS	$0.09
565	Ambire AdEx	https://coinmarketcap.com/currencies/adx-net/	ADX	$0.14
566	GYEN	https://coinmarketcap.com/currencies/gyen/	GYEN	$0.01
567	ApolloX	https://coinmarketcap.com/currencies/apollox/	APX	$0.04
568	Rook	https://coinmarketcap.com/currencies/keeperdao/	ROOK	$32.37
569	ICHI	https://coinmarketcap.com/currencies/ichi/	ICHI	$4.13
570	Drep [new]	https://coinmarketcap.com/currencies/drep-new/	DREP	$0.50
571	Hydra	https://coinmarketcap.com/currencies/hydra/	HYDRA	$2.30
572	LATOKEN	https://coinmarketcap.com/currencies/latoken/	LA	$0.05
573	Rarible	https://coinmarketcap.com/currencies/rarible/	RARI	$2.21
574	BarnBridge	https://coinmarketcap.com/currencies/barnbridge/	BOND	$2.83
575	SpookySwap	https://coinmarketcap.com/currencies/spookyswap/	BOO	$2.09
576	BurgerCities	https://coinmarketcap.com/currencies/burger-cities/	BURGER	$0.95
577	BTSE	https://coinmarketcap.com/currencies/btse/	BTSE	$4.48
578	Phantasma	https://coinmarketcap.com/currencies/phantasma/	SOUL	$0.18
579	Firo	https://coinmarketcap.com/currencies/firo/	FIRO	$1.43
580	Karura	https://coinmarketcap.com/currencies/karura/	KAR	$0.67
581	StaFi	https://coinmarketcap.com/currencies/stafi/	FIS	$0.31
582	Defigram	https://coinmarketcap.com/currencies/defigram/	DFG	$1.90
583	AhaToken	https://coinmarketcap.com/currencies/ahatoken/	AHT	$0.01
584	Kleros	https://coinmarketcap.com/currencies/kleros/	PNK	$0.03
585	Paris Saint-Germain Fan Token	https://coinmarketcap.com/currencies/paris-saint-germain-fan-token/	PSG	$6.04
586	Morpheus.Network	https://coinmarketcap.com/currencies/morpheus-network/	MNW	$0.40
587	DeRace	https://coinmarketcap.com/currencies/derace/	DERC	$0.31
588	MANTRA DAO	https://coinmarketcap.com/currencies/mantra-dao/	OM	$0.04
589	Aurory	https://coinmarketcap.com/currencies/aurory/	AURY	$1.92
590	Maro	https://coinmarketcap.com/currencies/maro/	MARO	$0.03
591	Frontier	https://coinmarketcap.com/currencies/frontier/	FRONT	$0.19
592	DerivaDAO	https://coinmarketcap.com/currencies/derivadao/	DDX	$0.70
593	DxChain Token	https://coinmarketcap.com/currencies/dxchain-token/	DX	$0.00
594	S.S. Lazio Fan Token	https://coinmarketcap.com/currencies/lazio-fan-token/	LAZIO	$2.10
595	PARSIQ	https://coinmarketcap.com/currencies/parsiq/	PRQ	$0.11
596	Vectorspace AI	https://coinmarketcap.com/currencies/vectorspace-ai/	VXV	$0.45
597	NULS	https://coinmarketcap.com/currencies/nuls/	NULS	$0.18
598	ReapChain	https://coinmarketcap.com/currencies/reapchain/	REAP	$0.06
599	SingularityDAO	https://coinmarketcap.com/currencies/singularitydao/	SDAO	$0.46
600	BoringDAO	https://coinmarketcap.com/currencies/boringdao/	BOR	$124.48
601	Boson Protocol	https://coinmarketcap.com/currencies/boson-protocol/	BOSON	$0.2142
602	DXdao	https://coinmarketcap.com/currencies/dxdao/	DXD	$359.44
603	Tellor	https://coinmarketcap.com/currencies/tellor/	TRB	$10.38
604	MixMarvel	https://coinmarketcap.com/currencies/mixmarvel/	MIX	$0.003747
605	Somnium Space Cubes	https://coinmarketcap.com/currencies/somnium-space-cubes/	CUBE	$1.40
606	QuickSwap	https://coinmarketcap.com/currencies/quickswap/	QUICK	$53.01
607	Bytom	https://coinmarketcap.com/currencies/bytom/	BTM	$0.01108
608	SelfKey	https://coinmarketcap.com/currencies/selfkey/	KEY	$0.003366
609	Marinade Staked SOL	https://coinmarketcap.com/currencies/marinade/	MSOL	$34.49
610	Valobit	https://coinmarketcap.com/currencies/valobit/	VBIT	$0.01419
611	RAI Finance	https://coinmarketcap.com/currencies/rai-finance-sofi/	SOFI	$0.09
612	Suku	https://coinmarketcap.com/currencies/suku/	SUKU	$0.10
613	Adappter Token	https://coinmarketcap.com/currencies/adappter-token/	ADP	$0.02
614	Measurable Data Token	https://coinmarketcap.com/currencies/measurable-data-token/	MDT	$0.02
615	MOVEZ	https://coinmarketcap.com/currencies/movez/	MOVEZ	$0.03
616	MAP Protocol	https://coinmarketcap.com/currencies/map-protocol/	MAP	$0.01
617	Santos FC Fan Token	https://coinmarketcap.com/currencies/santos-fc-fan-token/	SANTOS	$3.63
618	Bonfida	https://coinmarketcap.com/currencies/bonfida/	FIDA	$0.37
619	Hermez Network	https://coinmarketcap.com/currencies/hermez-network/	HEZ	$3.50
620	Shiden Network	https://coinmarketcap.com/currencies/shiden-network/	SDN	$0.31
621	Wrapped NCG (Nine Chronicles Gold)	https://coinmarketcap.com/currencies/wrapped-ncg/	WNCG	$0.14
622	Namecoin	https://coinmarketcap.com/currencies/namecoin/	NMC	$1.11
623	QASH	https://coinmarketcap.com/currencies/qash/	QASH	$0.05
624	Kryll	https://coinmarketcap.com/currencies/kryll/	KRL	$0.42
625	Cratos	https://coinmarketcap.com/currencies/cratos/	CRTS	$0.00
626	PEAKDEFI	https://coinmarketcap.com/currencies/peakdefi/	PEAK	$0.01
627	dForce	https://coinmarketcap.com/currencies/dforce/	DF	$0.04
628	NFT Worlds	https://coinmarketcap.com/currencies/nft-worlds/	WRLD	$0.03
629	Highstreet	https://coinmarketcap.com/currencies/highstreet/	HIGH	$1.27
630	Quantstamp	https://coinmarketcap.com/currencies/quantstamp/	QSP	$0.02
631	Manchester City Fan Token	https://coinmarketcap.com/currencies/manchester-city-fan-token/	CITY	$4.43
632	Fusion	https://coinmarketcap.com/currencies/fusion/	FSN	$0.22
633	Wilder World	https://coinmarketcap.com/currencies/wilder-world/	WILD	$0.18
634	FC Barcelona Fan Token	https://coinmarketcap.com/currencies/fc-barcelona-fan-token/	BAR	$3.88
635	Mithril	https://coinmarketcap.com/currencies/mithril/	MITH	$0.02
636	Rai Reflex Index	https://coinmarketcap.com/currencies/rai/	RAI	$3.04
637	DigixDAO	https://coinmarketcap.com/currencies/digixdao/	DGD	$204.02
638	BIDR	https://coinmarketcap.com/currencies/binance-idr/	BIDR	$0.00
639	Waltonchain	https://coinmarketcap.com/currencies/waltonchain/	WTC	$0.19
640	USDJ	https://coinmarketcap.com/currencies/usdj/	USDJ	$1.00
641	Beam	https://coinmarketcap.com/currencies/beam/	BEAM	$0.13
642	Mirror Protocol	https://coinmarketcap.com/currencies/mirror-protocol/	MIR	$0.19
643	Auto	https://coinmarketcap.com/currencies/auto/	AUTO	$275.58
644	Gifto	https://coinmarketcap.com/currencies/gifto/	GTO	$0.02
645	BOSAGORA	https://coinmarketcap.com/currencies/bosagora/	BOA	$0.05
646	Aion	https://coinmarketcap.com/currencies/aion/	AION	$0.03
647	Rupiah Token	https://coinmarketcap.com/currencies/rupiah-token/	IDRT	$0.00
648	Cryptex Finance	https://coinmarketcap.com/currencies/cryptex-finance/	CTX	$4.04
649	RChain	https://coinmarketcap.com/currencies/rchain/	REV	$0.02
650	WaykiChain	https://coinmarketcap.com/currencies/waykichain/	WICC	$0.07
651	DeXe	https://coinmarketcap.com/currencies/dexe/	DEXE	$2.53
652	BioPassport Token	https://coinmarketcap.com/currencies/biopassport-token/	BIOT	$0.01
653	YIELD App	https://coinmarketcap.com/currencies/yield-app/	YLD	$0.08
654	Ooki Protocol	https://coinmarketcap.com/currencies/ooki-protocol/	OOKI	$0.00
655	TABOO TOKEN	https://coinmarketcap.com/currencies/taboo-token/	TABOO	$0.00
656	FC Porto Fan Token	https://coinmarketcap.com/currencies/fc-porto/	PORTO	$1.74
657	Wing Finance	https://coinmarketcap.com/currencies/wing/	WING	$5.12
658	Unifty	https://coinmarketcap.com/currencies/unifty/	NIF	$7.79
659	Oxen	https://coinmarketcap.com/currencies/oxen/	OXEN	$0.23
660	BASIC	https://coinmarketcap.com/currencies/basic/	BASIC	$0.00
661	Haven Protocol	https://coinmarketcap.com/currencies/haven-protocol/	XHV	$0.48
662	Solend	https://coinmarketcap.com/currencies/solend/	SLND	$0.64
663	Star Atlas	https://coinmarketcap.com/currencies/star-atlas/	ATLAS	$0.01
664	League of Kingdoms Arena	https://coinmarketcap.com/currencies/league-of-kingdoms/	LOKA	$0.53
665	Revolution Populi	https://coinmarketcap.com/currencies/revolution-populi/	RVP	$0.01
666	DODO	https://coinmarketcap.com/currencies/dodo/	DODO	$0.12
667	CargoX	https://coinmarketcap.com/currencies/cargox/	CXO	$0.06
668	Peony	https://coinmarketcap.com/currencies/peony/	PNY	$0.05
669	Dock	https://coinmarketcap.com/currencies/dock/	DOCK	$0.02
670	DEXTools	https://coinmarketcap.com/currencies/dextools/	DEXT	$0.13
671	Permission Coin	https://coinmarketcap.com/currencies/permission-coin/	ASK	$0.00
672	BSCPAD	https://coinmarketcap.com/currencies/bscpad/	BSCPAD	$0.16
673	Pluton	https://coinmarketcap.com/currencies/pluton/	PLU	$6.87
674	SENSO	https://coinmarketcap.com/currencies/senso/	SENSO	$0.18
675	pNetwork	https://coinmarketcap.com/currencies/pnetwork/	PNT	$0.22
676	Quantum Resistant Ledger	https://coinmarketcap.com/currencies/quantum-resistant-ledger/	QRL	$0.16
677	Zenon	https://coinmarketcap.com/currencies/zenon/	ZNN	$1.98
678	NewYork Exchange	https://coinmarketcap.com/currencies/newyork-exchange/	NYE	$1.76
679	Router Protocol	https://coinmarketcap.com/currencies/router-protocol/	ROUTE	$1.63
680	SOLVE	https://coinmarketcap.com/currencies/solve/	SOLVE	$0.03
681	TE-FOOD	https://coinmarketcap.com/currencies/te-food/	TONE	$0.02
682	Dego Finance	https://coinmarketcap.com/currencies/dego-finance/	DEGO	$1.45
683	HyperDAO	https://coinmarketcap.com/currencies/hyperdao/	HDAO	$0.00
684	MileVerse	https://coinmarketcap.com/currencies/mileverse/	MVC	$0.01
685	e-Money	https://coinmarketcap.com/currencies/e-money-coin/	NGM	$0.62
686	Sovryn	https://coinmarketcap.com/currencies/sovryn/	SOV	$0.55
687	Santiment Network Token	https://coinmarketcap.com/currencies/santiment/	SAN	$0.19
688	Ariva	https://coinmarketcap.com/currencies/ariva/	ARV	$0.00
689	ONBUFF	https://coinmarketcap.com/currencies/onbuff/	ONIT	$0.04
690	X World Games	https://coinmarketcap.com/currencies/x-world-games/	XWG	$0.01
691	RFOX	https://coinmarketcap.com/currencies/redfox-labs/	RFOX	$0.01
692	Nimiq	https://coinmarketcap.com/currencies/nimiq/	NIM	$0.00
693	AllianceBlock	https://coinmarketcap.com/currencies/allianceblock/	ALBT	$0.05
694	Electric Vehicle Zone	https://coinmarketcap.com/currencies/electric-vehicle-zone/	EVZ	$0.03
695	AnimalGo	https://coinmarketcap.com/currencies/animalgo/	GOM2	$0.01
696	NFTX	https://coinmarketcap.com/currencies/nftx/	NFTX	$28.24
697	WHALE	https://coinmarketcap.com/currencies/whale/	WHALE	$1.41
698	smARTOFGIVING	https://coinmarketcap.com/currencies/smartofgiving/	AOG	$0.15
699	PowerPool	https://coinmarketcap.com/currencies/powerpool/	CVP	$0.29
700	Grid+	https://coinmarketcap.com/currencies/grid/	GRID	$0.29
701	Dora Factory	https://coinmarketcap.com/currencies/dora-factory/	DORA	$2.57
702	BitForex Token	https://coinmarketcap.com/currencies/bitforex-token/	BF	$0.002518
703	Polkadex	https://coinmarketcap.com/currencies/polkadex/	PDEX	$1.49
704	Handy	https://coinmarketcap.com/currencies/handy/	HANDY	$0.05393
705	Cream Finance	https://coinmarketcap.com/currencies/cream-finance/	CREAM	$17.91
706	VITE	https://coinmarketcap.com/currencies/vite/	VITE	$0.02165
707	Bitrue Coin	https://coinmarketcap.com/currencies/bitrue-coin/	BTR	$0.08377
708	GuildFi	https://coinmarketcap.com/currencies/guildfi/	GF	$0.2602
709	GoChain	https://coinmarketcap.com/currencies/gochain/	GO	$0.009272
710	Civilization	https://coinmarketcap.com/currencies/civilization/	CIV	$0.03651
711	SwftCoin	https://coinmarketcap.com/currencies/swftcoin/	SWFTC	$0.00
712	Jupiter	https://coinmarketcap.com/currencies/jupiter/	JUP	$0.01
713	Bounce Finance Governance Token	https://coinmarketcap.com/currencies/bounce-token/	AUCTION	$5.18
714	Vivid Labs	https://coinmarketcap.com/currencies/videocoin/	VID	$0.07
715	Metronome	https://coinmarketcap.com/currencies/metronome/	MET	$0.76
716	Cere Network	https://coinmarketcap.com/currencies/cere-network/	CERE	$0.01
717	Lattice Token	https://coinmarketcap.com/currencies/lattice-token/	LTX	$0.37
718	Crypterium	https://coinmarketcap.com/currencies/crpt/	CRPT	$0.13
719	Bytecoin	https://coinmarketcap.com/currencies/bytecoin-bcn/	BCN	$0.00
720	Bloomzed Loyalty Club Ticket	https://coinmarketcap.com/currencies/bloomzed-token/	BLCT	$0.28
721	Sylo	https://coinmarketcap.com/currencies/sylo/	SYLO	$0.00
722	Hoge Finance	https://coinmarketcap.com/currencies/hoge-finance/	HOGE	$0.00
723	BitKan	https://coinmarketcap.com/currencies/bitkan/	KAN	$0.00
724	ReddCoin	https://coinmarketcap.com/currencies/redd/	RDD	$0.00
725	SifChain	https://coinmarketcap.com/currencies/sifchain/	erowan	$0.01
726	ForTube	https://coinmarketcap.com/currencies/the-force-protocol/	FOR	$0.02
727	AirSwap	https://coinmarketcap.com/currencies/airswap/	AST	$0.07
728	Zynecoin	https://coinmarketcap.com/currencies/zynecoin/	ZYN	$0.32
729	Saito	https://coinmarketcap.com/currencies/saito/	SAITO	$0.01
730	Epic Cash	https://coinmarketcap.com/currencies/epic-cash/	EPIC	$0.71
731	GET Protocol	https://coinmarketcap.com/currencies/get-protocol/	GET	$0.91
732	Obyte	https://coinmarketcap.com/currencies/obyte/	GBYTE	$12.63
733	Edgeware	https://coinmarketcap.com/currencies/edgeware/	EDG	$0.00
734	Nash	https://coinmarketcap.com/currencies/nash/	NEX	$0.35
735	Newscrypto	https://coinmarketcap.com/currencies/newscrypto/	NWC	$0.07
736	GameFi	https://coinmarketcap.com/currencies/gamefi/	GAFI	$10.19
737	Gem Exchange and Trading	https://coinmarketcap.com/currencies/gemma-extending-tech/	GXT	$0.12
738	Molecular Future	https://coinmarketcap.com/currencies/molecular-future/	MOF	$0.00
739	Anchor	https://coinmarketcap.com/currencies/anchor/	ANCT	$0.79
740	Altura	https://coinmarketcap.com/currencies/altura/	ALU	$0.02
741	Gods Unchained	https://coinmarketcap.com/currencies/gods-unchained/	GODS	$0.42
742	Arcblock	https://coinmarketcap.com/currencies/arcblock/	ABT	$0.10
743	VIMworld	https://coinmarketcap.com/currencies/vimworld/	VEED	$0.00
744	Position Exchange	https://coinmarketcap.com/currencies/position-exchange/	POSI	$0.15
745	Sentinel	https://coinmarketcap.com/currencies/sentinel/	DVPN	$0.00
746	Nexus	https://coinmarketcap.com/currencies/nexus/	NXS	$0.13
747	Navcoin	https://coinmarketcap.com/currencies/nav-coin/	NAV	$0.13
748	MAPS	https://coinmarketcap.com/currencies/maps/	MAPS	$0.22
749	DeGate	https://coinmarketcap.com/currencies/degate/	DG	$0.11
750	King DAG	https://coinmarketcap.com/currencies/king-dag/	KDAG	$0.17
751	Soda Coin	https://coinmarketcap.com/currencies/soda-coin/	SOC	$0.01
752	VIDT Datalink	https://coinmarketcap.com/currencies/vidt-datalink/	VIDT	$0.19
753	ELYSIA	https://coinmarketcap.com/currencies/elysia/	EL	$0.00
754	0Chain	https://coinmarketcap.com/currencies/0chain/	ZCN	$0.19
755	Era Token (Era7)	https://coinmarketcap.com/currencies/era-token/	ERA	$0.20
756	Ternoa	https://coinmarketcap.com/currencies/ternoa/	CAPS	$0.01
757	Seele-N	https://coinmarketcap.com/currencies/seele/	SEELE	$0.01
758	Quiztok	https://coinmarketcap.com/currencies/quiztok/	QTCON	$0.00
759	ScPrime	https://coinmarketcap.com/currencies/scprime/	SCP	$0.21
760	Thetan Arena	https://coinmarketcap.com/currencies/thetan-arena/	THG	$0.08
761	Infinitecoin	https://coinmarketcap.com/currencies/infinitecoin/	IFC	$0.00
762	ChainX	https://coinmarketcap.com/currencies/chainx/	PCX	$0.71
763	TEMCO	https://coinmarketcap.com/currencies/temco/	TEMCO	$0.00
764	AC Milan Fan Token	https://coinmarketcap.com/currencies/ac-milan-fan-token/	ACM	$2.82
765	Impossible Finance Launchpad	https://coinmarketcap.com/currencies/impossible-decentralized-incubator-access/	IDIA	$0.20
766	Lith Token	https://coinmarketcap.com/currencies/lith-token/	LITH	$0.00
767	Bitball Treasure	https://coinmarketcap.com/currencies/bitball-treasure/	BTRS	$19.38
768	Shiryo	https://coinmarketcap.com/currencies/shiryo-inu/	SHIRYO	$0.00
769	Xeno Token	https://coinmarketcap.com/currencies/xeno-token/	XNO	$0.02
770	Visor.Finance	https://coinmarketcap.com/currencies/visor-finance/	VISR	$0.29
771	PRIZM	https://coinmarketcap.com/currencies/prizm/	PZM	$0.00
772	Lossless	https://coinmarketcap.com/currencies/lossless/	LSS	$0.16
773	ASTA	https://coinmarketcap.com/currencies/asta/	ASTA	$0.00
774	CoinPoker	https://coinmarketcap.com/currencies/coinpoker/	CHP	$0.03
775	Everest	https://coinmarketcap.com/currencies/everest/	ID	$0.07
776	Solanium	https://coinmarketcap.com/currencies/solanium/	SLIM	$0.09
777	TNC Coin	https://coinmarketcap.com/currencies/tnc-coin/	TNC	$0.00
778	Huobi Pool Token	https://coinmarketcap.com/currencies/huobi-pool-token/	HPT	$0.00
779	GMCoin	https://coinmarketcap.com/currencies/gmcoin/	GMCOIN	$0.20
780	Apollo Currency	https://coinmarketcap.com/currencies/apollo-currency/	APL	$0.00
781	DeFine	https://coinmarketcap.com/currencies/define/	DFA	$0.15
782	Vertcoin	https://coinmarketcap.com/currencies/vertcoin/	VTC	$0.13
783	Aurox	https://coinmarketcap.com/currencies/urus/	URUS	$15.68
784	Aventus	https://coinmarketcap.com/currencies/aventus/	AVT	$1.36
785	GamerCoin	https://coinmarketcap.com/currencies/gamercoin/	GHX	$0.02
786	PERL.eco	https://coinmarketcap.com/currencies/perlin/	PERL	$0.02
787	ProximaX	https://coinmarketcap.com/currencies/proximax/	XPX	$0.00
788	New BitShares	https://coinmarketcap.com/currencies/new-bitshares/	NBS	$0.00
789	Cyclub	https://coinmarketcap.com/currencies/cyclub/	CYCLUB	$0.01
790	ZKSpace	https://coinmarketcap.com/currencies/zkswap/	ZKS	$0.04
791	Star Atlas DAO	https://coinmarketcap.com/currencies/star-atlas-polis/	POLIS	$0.37
792	Inverse Finance	https://coinmarketcap.com/currencies/inverse-finance/	INV	$83.82
793	Galatasaray Fan Token	https://coinmarketcap.com/currencies/galatasaray-fan-token/	GAL	$2.23
794	StrikeX	https://coinmarketcap.com/currencies/strikecoin/	STRX	$0.06
795	Inter Milan Fan Token	https://coinmarketcap.com/currencies/inter-milan-fan-token/	INTER	$2.58
796	Hiblocks	https://coinmarketcap.com/currencies/hiblocks/	HIBS	$0.00
797	Pallapay	https://coinmarketcap.com/currencies/pallapay/	PALLA	$0.01
798	InsurAce	https://coinmarketcap.com/currencies/insurace/	INSUR	$0.17
799	Rainicorn	https://coinmarketcap.com/currencies/rainicorn/	RAINI	$0.02
800	Grin	https://coinmarketcap.com/currencies/grin/	GRIN	$0.08
801	Monero Classic	https://coinmarketcap.com/currencies/monero-classic/	XMC	$0.3996
802	FOAM	https://coinmarketcap.com/currencies/foam/	FOAM	$0.02407
803	ApeSwap	https://coinmarketcap.com/currencies/apeswap-finance/	BANANA	$0.07197
804	Newton	https://coinmarketcap.com/currencies/newton/	NEW	$0.00037
805	Invictus Hyperion Fund	https://coinmarketcap.com/currencies/invictus-hyperion-fund/	IHF	$0.06605
806	Sperax	https://coinmarketcap.com/currencies/sperax/	SPA	$0.005659
807	Hacken Token	https://coinmarketcap.com/currencies/hackenai/	HAI	$0.01584
808	Receive Access Ecosystem	https://coinmarketcap.com/currencies/receive-access-ecosystem/	RAE	$1.21
809	TokenClub	https://coinmarketcap.com/currencies/tokenclub/	TCT	$0.009113
810	Cellframe	https://coinmarketcap.com/currencies/cellframe/	CELL	$0.2595
811	BUX Token	https://coinmarketcap.com/currencies/bux-token/	BUX	$0.13
812	StackOs	https://coinmarketcap.com/currencies/stackos/	STACK	$0.02
813	Glitch	https://coinmarketcap.com/currencies/glitch/	GLCH	$0.09
814	XDEFI Wallet	https://coinmarketcap.com/currencies/xdefi-wallet/	XDEFI	$0.13
815	Era Swap	https://coinmarketcap.com/currencies/era-swap/	ES	$0.01
816	PearDAO	https://coinmarketcap.com/currencies/peardao/	PEX	$0.14
817	Banano	https://coinmarketcap.com/currencies/banano/	BAN	$0.01
818	Goldfinch	https://coinmarketcap.com/currencies/goldfinch-protocol/	GFI	$1.07
819	Bitcoin 2	https://coinmarketcap.com/currencies/bitcoin2/	BTC2	$0.41
820	Project WITH	https://coinmarketcap.com/currencies/project-with/	WIKEN	$0.01
821	PIVX	https://coinmarketcap.com/currencies/pivx/	PIVX	$0.10
822	BEPRO Network	https://coinmarketcap.com/currencies/bepro-network/	BEPRO	$0.00
823	Diamond	https://coinmarketcap.com/currencies/diamond/	DMD	$1.94
824	Venus Reward Token	https://coinmarketcap.com/currencies/venus-reward-token/	VRT	$0.00
825	Zigcoin	https://coinmarketcap.com/currencies/zigcoin/	ZIG	$0.02
826	Peercoin	https://coinmarketcap.com/currencies/peercoin/	PPC	$0.26
827	Birake	https://coinmarketcap.com/currencies/birake/	BIR	$0.07
828	Carbon	https://coinmarketcap.com/currencies/switcheo/	SWTH	$0.00
829	Blockchain Brawlers	https://coinmarketcap.com/currencies/blockchain-brawlers/	BRWL	$0.01
830	LABEL Foundation	https://coinmarketcap.com/currencies/label-foundation/	LBL	$0.01
831	XMON	https://coinmarketcap.com/currencies/xmon/	XMON	$4631.36
832	Shyft Network	https://coinmarketcap.com/currencies/shyft-network/	SHFT	$0.02
833	Numbers Protocol	https://coinmarketcap.com/currencies/numbers-protocol/	NUM	$0.06
834	Validity	https://coinmarketcap.com/currencies/validity/	VAL	$1.47
835	Observer	https://coinmarketcap.com/currencies/observer/	OBSR	$0.00
836	Callisto Network	https://coinmarketcap.com/currencies/callisto-network/	CLO	$0.00
837	Zelwin	https://coinmarketcap.com/currencies/zelwin/	ZLW	$0.09
838	UniCrypt	https://coinmarketcap.com/currencies/uncx/	UNCX	$210.58
839	ShareToken	https://coinmarketcap.com/currencies/sharetoken/	SHR	$0.00
840	TouchCon	https://coinmarketcap.com/currencies/touchcon/	TOC	$0.04
841	Pendle	https://coinmarketcap.com/currencies/pendle/	PENDLE	$0.04
842	Agoras: Currency of Tau	https://coinmarketcap.com/currencies/agoras-tokens/	AGRS	$0.36
843	UniLend	https://coinmarketcap.com/currencies/unilend/	UFT	$0.21
844	LBRY Credits	https://coinmarketcap.com/currencies/library-credits/	LBC	$0.01
845	PKT	https://coinmarketcap.com/currencies/pkt/	PKT	$0.00
846	Unisocks	https://coinmarketcap.com/currencies/unisocks/	SOCKS	$21414.76
847	Atletico De Madrid Fan Token	https://coinmarketcap.com/currencies/atletico-de-madrid-fan-token/	ATM	$3.09
848	AS Roma Fan Token	https://coinmarketcap.com/currencies/as-roma-fan-token/	ASR	$2.96
849	AntiMatter Governance Token	https://coinmarketcap.com/currencies/antimatter/	MATTER	$0.20
850	Ekta	https://coinmarketcap.com/currencies/ekta/	EKTA	$0.51
851	Emirex Token	https://coinmarketcap.com/currencies/emirex-token/	EMRX	$0.23
852	Lunar	https://coinmarketcap.com/currencies/lunar/	LNR	$0.00
853	O3 Swap	https://coinmarketcap.com/currencies/o3-swap/	O3	$0.13
854	mStable Governance Token: Meta (MTA)	https://coinmarketcap.com/currencies/meta/	MTA	$0.12
855	Cashaa	https://coinmarketcap.com/currencies/cashaa/	CAS	$0.01
856	Swerve	https://coinmarketcap.com/currencies/swerve/	SWRV	$0.36
857	ChainGuardians	https://coinmarketcap.com/currencies/chain-guardians/	CGG	$0.10
858	BullPerks	https://coinmarketcap.com/currencies/bullperks/	BLP	$0.03
859	Counterparty	https://coinmarketcap.com/currencies/counterparty/	XCP	$2.36
860	ILCOIN	https://coinmarketcap.com/currencies/ilcoin/	ILC	$0.01
861	OneLedger	https://coinmarketcap.com/currencies/oneledger/	OLT	$0.01
862	Stronghold Token	https://coinmarketcap.com/currencies/stronghold-token/	SHX	$0.00
863	Zebec Protocol	https://coinmarketcap.com/currencies/zebec-protocol/	ZBC	$0.01
864	AAX Token	https://coinmarketcap.com/currencies/aax-token/	AAB	$0.80
865	Dragonchain	https://coinmarketcap.com/currencies/dragonchain/	DRGN	$0.02
866	Populous	https://coinmarketcap.com/currencies/populous/	PPT	$0.11
867	Venus DAI	https://coinmarketcap.com/currencies/venus-dai/	vDAI	$0.02
868	Dacxi	https://coinmarketcap.com/currencies/dacxi/	DACXI	$0.00
869	#MetaHash	https://coinmarketcap.com/currencies/metahash/	MHC	$0.00
870	PAC Protocol	https://coinmarketcap.com/currencies/pac-protocol/	PAC	$0.00
871	HAPI Protocol	https://coinmarketcap.com/currencies/hapi-one/	HAPI	$8.46
872	ProBit Token	https://coinmarketcap.com/currencies/probit-token/	PROB	$0.14
873	Arianee	https://coinmarketcap.com/currencies/arianee-protocol/	ARIA20	$0.21
874	HyperCash	https://coinmarketcap.com/currencies/hypercash/	HC	$0.12
875	Electra Protocol	https://coinmarketcap.com/currencies/electra-protocol/	XEP	$0.00
876	Poseidon Network	https://coinmarketcap.com/currencies/poseidon-network/	QQQ	$0.00
877	POA Network	https://coinmarketcap.com/currencies/poa/	POA	$0.02
878	Mobius	https://coinmarketcap.com/currencies/mobius/	MOBI	$0.01
879	BLOCKv	https://coinmarketcap.com/currencies/blockv/	VEE	$0.00
880	BigONE Token	https://coinmarketcap.com/currencies/bigone-token/	ONE	$0.00
881	DeHub	https://coinmarketcap.com/currencies/dehub/	DEHUB	$0.00
882	Deri Protocol	https://coinmarketcap.com/currencies/deri-protocol/	DERI	$0.03
883	Rubic	https://coinmarketcap.com/currencies/rubic/	RBC	$0.05
884	Doge Dash	https://coinmarketcap.com/currencies/doge-dash/	DOGEDASH	$0.00
885	apM Coin	https://coinmarketcap.com/currencies/apm-coin/	APM	$0.01
886	CACHE Gold	https://coinmarketcap.com/currencies/cache-gold/	CGT	$57.89
887	Monavale	https://coinmarketcap.com/currencies/monavale/	MONA	$502.88
888	Tokamak Network	https://coinmarketcap.com/currencies/tokamak-network/	TON	$1.88
889	Signum	https://coinmarketcap.com/currencies/signum/	SIGNA	$0.00
890	WOM Protocol	https://coinmarketcap.com/currencies/wom-protocol/	WOM	$0.05
891	DeFi Land	https://coinmarketcap.com/currencies/defi-land/	DFL	$0.01
892	StableXSwap	https://coinmarketcap.com/currencies/stablexswap/	STAX	$0.37
893	REVV	https://coinmarketcap.com/currencies/revv/	REVV	$0.02
894	DeFi Yield Protocol	https://coinmarketcap.com/currencies/defi-yield-protocol/	DYP	$0.23
895	Dovu	https://coinmarketcap.com/currencies/dovu/	DOV	$0.01
896	Ethereum Push Notification Service	https://coinmarketcap.com/currencies/epns/	PUSH	$0.32
897	TrustVerse	https://coinmarketcap.com/currencies/trustverse/	TRV	$0.01
898	v.systems	https://coinmarketcap.com/currencies/v-systems/	VSYS	$0.00
899	TriumphX	https://coinmarketcap.com/currencies/triumphx/	TRIX	$0.00
900	OpenOcean	https://coinmarketcap.com/currencies/openocean/	OOE	$0.04
901	OpenOcean	https://coinmarketcap.com/currencies/openocean/	OOE	$0.03594
902	Gamium	https://coinmarketcap.com/currencies/gamium/	GMM	$0.001394
903	Reflexer Ungovernance Token	https://coinmarketcap.com/currencies/reflexer-ungovernance-token/	FLX	$24.78
904	Bread	https://coinmarketcap.com/currencies/bread/	BRD	$0.05384
905	Fuse Network	https://coinmarketcap.com/currencies/fuse-network/	FUSE	$0.08696
906	SORA	https://coinmarketcap.com/currencies/sora/	XOR	$6.80
907	Town Star	https://coinmarketcap.com/currencies/town-star/	TOWN	$0.01739
908	Morpheus Labs	https://coinmarketcap.com/currencies/morpheus-labs/	MITX	$0.009598
909	Ambrosus	https://coinmarketcap.com/currencies/amber/	AMB	$0.006529
910	Swash	https://coinmarketcap.com/currencies/swash/	SWASH	$0.02064
911	Pawtocol	https://coinmarketcap.com/currencies/pawtocol/	UPI	$0.02
912	BENQI	https://coinmarketcap.com/currencies/benqi/	QI	$0.01
913	Juventus Fan Token	https://coinmarketcap.com/currencies/juventus-fan-token/	JUV	$3.57
914	Vesper	https://coinmarketcap.com/currencies/vesper/	VSP	$0.54
915	Lithium	https://coinmarketcap.com/currencies/lithium/	LITH	$0.00
916	Atari Token	https://coinmarketcap.com/currencies/atari-token/	ATRI	$0.00
917	Particl	https://coinmarketcap.com/currencies/particl/	PART	$0.38
918	PolkaFoundry	https://coinmarketcap.com/currencies/polkafoundry/	PKF	$0.11
919	Dotmoovs	https://coinmarketcap.com/currencies/dotmoovs/	MOOV	$0.01
920	MEET.ONE	https://coinmarketcap.com/currencies/meetone/	MEETONE	$0.00
921	LGCY Network	https://coinmarketcap.com/currencies/lgcy-network/	LGCY	$0.00
922	NFTrade	https://coinmarketcap.com/currencies/nftrade/	NFTD	$0.16
923	YUSRA	https://coinmarketcap.com/currencies/yusra/	YUSRA	$0.11
924	Dexlab	https://coinmarketcap.com/currencies/dexlab/	DXL	$0.09
925	Raiden Network Token	https://coinmarketcap.com/currencies/raiden-network-token/	RDN	$0.07
926	Hamster	https://coinmarketcap.com/currencies/hamster/	HAM	$0.00
927	Etherisc DIP Token	https://coinmarketcap.com/currencies/etherisc/	DIP	$0.02
928	Valor Token	https://coinmarketcap.com/currencies/valor-token/	VALOR	$0.22
929	Hegic	https://coinmarketcap.com/currencies/hegic/	HEGIC	$0.01
930	CWV Chain	https://coinmarketcap.com/currencies/cwv-chain/	CWV	$0.00
931	GATE	https://coinmarketcap.com/currencies/gate/	GATE	$0.01
932	Blocery	https://coinmarketcap.com/currencies/blocery/	BLY	$0.01
933	Mobilian Coin	https://coinmarketcap.com/currencies/mobilian-coin/	MBN	$0.03
934	Mogul Productions	https://coinmarketcap.com/currencies/mogul-productions/	STARS	$0.01
935	Polkamarkets	https://coinmarketcap.com/currencies/polkamarkets/	POLK	$0.05
936	Pangolin	https://coinmarketcap.com/currencies/pangolin/	PNG	$0.04
937	saffron.finance	https://coinmarketcap.com/currencies/saffron-finance/	SFI	$46.38
938	bitCNY	https://coinmarketcap.com/currencies/bitcny/	BITCNY	$0.15
939	Venus LTC	https://coinmarketcap.com/currencies/venus-ltc/	vLTC	$1.02
940	Ignis	https://coinmarketcap.com/currencies/ignis/	IGNIS	$0.01
941	SHILL Token	https://coinmarketcap.com/currencies/project-seed/	SHILL	$0.02
942	The Midas Touch Gold	https://coinmarketcap.com/currencies/the-midas-touch-gold/	TMTG	$0.00
943	Decentral Games ICE	https://coinmarketcap.com/currencies/decentral-games-ice/	ICE	$0.02
944	Cardstack	https://coinmarketcap.com/currencies/cardstack/	CARD	$0.00
945	Crypton	https://coinmarketcap.com/currencies/utopia/	CRP	$0.63
946	Swop	https://coinmarketcap.com/currencies/swop/	SWOP	$1.77
947	STEM CELL COIN	https://coinmarketcap.com/currencies/stem-cell-coin/	SCC	$0.01
948	Trabzonspor Fan Token	https://coinmarketcap.com/currencies/trabzonspor-fan-token/	TRA	$1.75
949	Woonkly Power	https://coinmarketcap.com/currencies/woonkly-power/	WOOP	$0.03
950	Minter Network	https://coinmarketcap.com/currencies/minter-network/	BIP	$0.00
951	BHPCoin	https://coinmarketcap.com/currencies/bhp-coin/	BHP	$0.20
952	Polychain Monsters	https://coinmarketcap.com/currencies/polkamon/	PMON	$1.21
953	Mysterium	https://coinmarketcap.com/currencies/mysterium/	MYST	$0.20
954	OG Fan Token	https://coinmarketcap.com/currencies/og-fan-token/	OG	$3.21
955	Phoenix Global (new)	https://coinmarketcap.com/currencies/phoenix-global-new/	PHB	$0.11
956	BABB	https://coinmarketcap.com/currencies/babb/	BAX	$0.00
957	Adora Token	https://coinmarketcap.com/currencies/adora-token/	ARA	$0.03
958	All Sports	https://coinmarketcap.com/currencies/all-sports/	SOC	$0.00
959	Fenerbah├зe Token	https://coinmarketcap.com/currencies/fenerbahce-token/	FB	$1.86
960	EPIK Prime	https://coinmarketcap.com/currencies/epik-prime/	EPIK	$0.01
961	Muse	https://coinmarketcap.com/currencies/muse/	MUSE	$7.95
962	Waves Enterprise	https://coinmarketcap.com/currencies/waves-enterprise/	WEST	$0.10
963	Zano	https://coinmarketcap.com/currencies/zano/	ZANO	$0.36
964	BitNautic Token	https://coinmarketcap.com/currencies/bitnautic-token/	BTNT	$0.21
965	Poolz Finance	https://coinmarketcap.com/currencies/poolz-finance/	POOLZ	$1.22
966	Unicly CryptoPunks Collection	https://coinmarketcap.com/currencies/unicly-cryptopunks-collection/	UPUNK	$0.02
967	Neblio	https://coinmarketcap.com/currencies/neblio/	NEBL	$0.21
968	Exeedme	https://coinmarketcap.com/currencies/exeedme/	XED	$0.05
969	Chainge	https://coinmarketcap.com/currencies/chainge/	CHNG	$0.04
970	SaTT	https://coinmarketcap.com/currencies/satt/	SATT	$0.00
971	MultiVAC	https://coinmarketcap.com/currencies/multivac/	MTV	$0.00
972	SAFE DEAL	https://coinmarketcap.com/currencies/safe-deal/	SFD	$1.07
973	Bao Finance	https://coinmarketcap.com/currencies/bao-finance/	BAO	$0.00
974	ZooKeeper	https://coinmarketcap.com/currencies/zookeeper/	ZOO	$0.02
975	EOS Force	https://coinmarketcap.com/currencies/eos-force/	EOSC	$0.00
976	Mobility Coin	https://coinmarketcap.com/currencies/modern-investment-coin/	MOBIC	$0.31
977	Venus LINK	https://coinmarketcap.com/currencies/venus-link/	vLINK	$0.12
978	Stakeborg DAO	https://coinmarketcap.com/currencies/stakeborg-dao/	STANDARD	$1.13
979	SpiritSwap	https://coinmarketcap.com/currencies/spiritswap/	SPIRIT	$0.01
980	Mint Club	https://coinmarketcap.com/currencies/mint-club/	MINT	$0.00
981	Atomic Wallet Coin	https://coinmarketcap.com/currencies/atomic-wallet-coin/	AWC	$0.36
982	Oraichain	https://coinmarketcap.com/currencies/oraichain-token/	ORAI	$1.84
983	Nebulas	https://coinmarketcap.com/currencies/nebulas-token/	NAS	$0.06
984	STARSHIP	https://coinmarketcap.com/currencies/starship/	STARSHIP	$0.20
985	Cirus Foundation	https://coinmarketcap.com/currencies/cirus-foundation/	CIRUS	$0.11
986	BaaSid	https://coinmarketcap.com/currencies/baasid/	BAAS	$0.00
987	NFTY Network	https://coinmarketcap.com/currencies/nfty-network/	NFTY	$0.01
988	Stratos	https://coinmarketcap.com/currencies/stratos/	STOS	$0.18
989	Bitcoin Private	https://coinmarketcap.com/currencies/bitcoin-private/	BTCP	$0.77
990	DECOIN	https://coinmarketcap.com/currencies/decoin/	DTEP	$0.06
991	DEEPSPACE	https://coinmarketcap.com/currencies/deepspace/	DPS	$0.07
992	Gameswap	https://coinmarketcap.com/currencies/gameswap/	GSWAP	$0.33
993	Spartan Protocol	https://coinmarketcap.com/currencies/spartan-protocol/	SPARTA	$0.03
994	Kunci Coin	https://coinmarketcap.com/currencies/kunci-coin/	KUNCI	$0.10
995	vEmpire DDAO	https://coinmarketcap.com/currencies/vempire-ddao/	VEMP	$0.02
996	Vita Inu	https://coinmarketcap.com/currencies/vita-inu/	VINU	$0.00
997	Kylin	https://coinmarketcap.com/currencies/kylin/	KYL	$0.01
998	Throne	https://coinmarketcap.com/currencies/throne/	THN	$0.01
999	Modefi	https://coinmarketcap.com/currencies/modefi/	MOD	$0.24
1000	Wabi	https://coinmarketcap.com/currencies/wabi/	WABI	$0.04
1001	Shopping	https://coinmarketcap.com/currencies/shopping/	SPI	$3.62
1002	dHedge DAO	https://coinmarketcap.com/currencies/dhedge-dao/	DHT	$0.122
1003	SunContract	https://coinmarketcap.com/currencies/suncontract/	SNC	$0.02857
1004	Prism	https://coinmarketcap.com/currencies/prism/	PRISM	$0.007055
1005	Dogs Of Elon	https://coinmarketcap.com/currencies/dogs-of-elon/	DOE	$0.0183
1006	NerveNetwork	https://coinmarketcap.com/currencies/nervenetwork/	NVT	$0.01259
1007	Linker Coin	https://coinmarketcap.com/currencies/linker-coin/	LNC	$0.03077
1008	ThreeFold	https://coinmarketcap.com/currencies/threefold/	TFT	$0.04276
1009	Bifrost	https://coinmarketcap.com/currencies/bifrost-bnc/	BNC	$0.2059
1010	Abyss	https://coinmarketcap.com/currencies/abyss/	ABYSS	$0.01498
1011	Belt Finance	https://coinmarketcap.com/currencies/belt/	BELT	$0.36
1012	TenX	https://coinmarketcap.com/currencies/tenx/	PAY	$0.02
1013	MILC Platform	https://coinmarketcap.com/currencies/milc-platform/	MLT	$0.04
1014	BetU	https://coinmarketcap.com/currencies/betu/	BETU	$0.03
1015	DSLA Protocol	https://coinmarketcap.com/currencies/dsla-protocol/	DSLA	$0.00
1016	Nxt	https://coinmarketcap.com/currencies/nxt/	NXT	$0.00
1017	Xaya	https://coinmarketcap.com/currencies/xaya/	CHI	$0.07
1018	MCDEX Token	https://coinmarketcap.com/currencies/mcdex/	MCB	$1.79
1019	OTOCASH	https://coinmarketcap.com/currencies/otocash/	OTO	$0.09
1020	KARMA	https://coinmarketcap.com/currencies/karma-eos/	KARMA	$0.00
1021	Aurora	https://coinmarketcap.com/currencies/aurora/	AOA	$0.00
1022	NFT Art Finance	https://coinmarketcap.com/currencies/nft-art-finance/	NFTART	$0.00
1023	GTONCapital	https://coinmarketcap.com/currencies/graviton-one/	GTON	$0.91
1024	Opulous	https://coinmarketcap.com/currencies/opulous/	OPUL	$0.07
1025	Anchor Neural World	https://coinmarketcap.com/currencies/anchor-neural-world/	ANW	$0.01
1026	BnkToTheFuture	https://coinmarketcap.com/currencies/bnktothefuture/	BFT	$0.00
1027	Govi	https://coinmarketcap.com/currencies/govi/	GOVI	$0.23
1028	SafeMoon Inu	https://coinmarketcap.com/currencies/safemoon-inu/	SMI	$0.00
1029	Kromatika	https://coinmarketcap.com/currencies/kromatika/	KROM	$0.04
1030	ROOBEE	https://coinmarketcap.com/currencies/roobee/	ROOBEE	$0.00
1031	FREEdom Coin	https://coinmarketcap.com/currencies/free-coin/	FREE	$0.00
1032	ChangeNOW Token	https://coinmarketcap.com/currencies/now-token/	NOW	$0.04
1033	QuadrantProtocol	https://coinmarketcap.com/currencies/quadrantprotocol/	EQUAD	$0.01
1034	Skey Network	https://coinmarketcap.com/currencies/smartkey/	SKEY	$0.02
1035	DEXA COIN	https://coinmarketcap.com/currencies/dexa-coin/	DEXA	$0.00
1036	Valencia CF Fan Token	https://coinmarketcap.com/currencies/valencia-cf-fan-token/	VCF	$1.26
1037	SparkPoint	https://coinmarketcap.com/currencies/sparkpoint/	SRK	$0.00
1038	Konomi Network	https://coinmarketcap.com/currencies/konomi-network/	KONO	$0.03
1039	Onooks	https://coinmarketcap.com/currencies/onooks/	OOKS	$0.29
1040	Lotto	https://coinmarketcap.com/currencies/lotto/	LOTTO	$0.00
1041	Geeq	https://coinmarketcap.com/currencies/geeq/	GEEQ	$0.17
1042	Robonomics.network	https://coinmarketcap.com/currencies/robonomics-network/	XRT	$3.37
1043	AXIS Token	https://coinmarketcap.com/currencies/axis-token/	AXIS	$0.01
1044	Venus SXP	https://coinmarketcap.com/currencies/vsxp/	vSXP	$0.01
1045	Footballcoin (XFC)	https://coinmarketcap.com/currencies/footballcoin/	XFC	$0.01
1046	GoCrypto Token	https://coinmarketcap.com/currencies/gocrypto-token/	GOC	$0.01
1047	OAX	https://coinmarketcap.com/currencies/oax/	OAX	$0.04
1048	Smart MFG	https://coinmarketcap.com/currencies/smart-mfg/	MFG	$0.01
1049	PAID Network	https://coinmarketcap.com/currencies/paid-network/	PAID	$0.04
1050	Bone ShibaSwap	https://coinmarketcap.com/currencies/bone-shibaswap/	BONE	$0.43
1051	Metaverse ETP	https://coinmarketcap.com/currencies/metaverse/	ETP	$0.04
1052	DAPS Coin	https://coinmarketcap.com/currencies/daps-coin/	DAPS	$0.00
1053	Aidos Kuneen	https://coinmarketcap.com/currencies/aidos-kuneen/	ADK	$0.12
1054	Darwinia Network	https://coinmarketcap.com/currencies/darwinia-network/	RING	$0.01
1055	Carboncoin	https://coinmarketcap.com/currencies/carboncoin/	CARBON	$0.00
1056	unFederalReserve	https://coinmarketcap.com/currencies/unfederalreserve/	eRSDL	$0.01
1057	Plian	https://coinmarketcap.com/currencies/pchain/	PI	$0.00
1058	DogeBonk	https://coinmarketcap.com/currencies/dogebonk/	DOBO	$0.00
1059	Arsenal Fan Token	https://coinmarketcap.com/currencies/arsenal-fan-token/	AFC	$1.44
1060	CumRocket	https://coinmarketcap.com/currencies/cumrocket/	CUMMIES	$0.00
1061	Factom	https://coinmarketcap.com/currencies/factom/	FCT	$0.28
1062	PornRocket	https://coinmarketcap.com/currencies/pornrocket/	PORNROCKET	$0.00
1063	DeepBrain Chain	https://coinmarketcap.com/currencies/deepbrain-chain/	DBC	$0.00
1064	Only1	https://coinmarketcap.com/currencies/only1/	LIKE	$0.02
1065	Levolution	https://coinmarketcap.com/currencies/levolution/	LEVL	$0.02
1066	Sarcophagus	https://coinmarketcap.com/currencies/sarcophagus/	SARCO	$0.18
1067	SALT	https://coinmarketcap.com/currencies/salt/	SALT	$0.03
1068	K21	https://coinmarketcap.com/currencies/k21/	K21	$0.18
1069	MahaDAO	https://coinmarketcap.com/currencies/mahadao/	MAHA	$0.89
1070	Calamari Network	https://coinmarketcap.com/currencies/calamari-network/	KMA	$0.00
1071	Infinity PAD	https://coinmarketcap.com/currencies/infinity-pad/	IPAD	$0.01
1072	Xend Finance	https://coinmarketcap.com/currencies/xend-finance/	XEND	$0.02
1073	Opacity	https://coinmarketcap.com/currencies/opacity/	OPCT	$0.03
1074	MintMe.com Coin	https://coinmarketcap.com/currencies/mintme-com-coin/	MINTME	$0.01
1075	HoDooi.com	https://coinmarketcap.com/currencies/hodooi/	HOD	$0.01
1076	SolChicks Token	https://coinmarketcap.com/currencies/solchicks-token/	CHICKS	$0.00
1077	MetagamZ	https://coinmarketcap.com/currencies/metagamz/	METAG	$0.00
1078	Sinverse	https://coinmarketcap.com/currencies/sincity-token/	SIN	$0.02
1079	GAMEE	https://coinmarketcap.com/currencies/gamee/	GMEE	$0.01
1080	GameCredits	https://coinmarketcap.com/currencies/gamecredits/	GAME	$0.01
1081	SmartMesh	https://coinmarketcap.com/currencies/smartmesh/	SMT	$0.00
1082	Lamden	https://coinmarketcap.com/currencies/lamden/	TAU	$0.02
1083	Offshift	https://coinmarketcap.com/currencies/offshift/	XFT	$0.47
1084	Lambda	https://coinmarketcap.com/currencies/lambda/	LAMB	$0.00
1085	PolkaBridge	https://coinmarketcap.com/currencies/polkabridge/	PBR	$0.05
1086	BOOM	https://coinmarketcap.com/currencies/boom/	BOOM	$0.00
1087	Breezecoin	https://coinmarketcap.com/currencies/breezecoin/	BRZE	$0.01
1088	OneArt	https://coinmarketcap.com/currencies/artwallet/	1ART	$0.02
1089	Covesting	https://coinmarketcap.com/currencies/covesting/	COV	$0.16
1090	suterusu	https://coinmarketcap.com/currencies/suterusu/	SUTER	$0.00
1091	Moeda Loyalty Points	https://coinmarketcap.com/currencies/moeda-loyalty-points/	MDA	$0.13
1092	OpenWorld	https://coinmarketcap.com/currencies/openworld/	OPEN	$0.05
1093	Ghost	https://coinmarketcap.com/currencies/ghost/	GHOST	$0.13
1094	Vetri	https://coinmarketcap.com/currencies/vetri/	VLD	$0.01
1095	Dfyn Network	https://coinmarketcap.com/currencies/dfyn-network/	DFYN	$0.02
1096	EXMO Coin	https://coinmarketcap.com/currencies/exmo-coin/	EXM	$0.02
1097	LuaSwap	https://coinmarketcap.com/currencies/lua-token/	LUA	$0.01
1098	Kryptomon	https://coinmarketcap.com/currencies/kryptomon/	KMON	$0.01
1099	Litecoin Cash	https://coinmarketcap.com/currencies/litecoin-cash/	LCC	$0.00
1100	Oxbull.tech	https://coinmarketcap.com/currencies/oxbull-tech/	OXB	$0.33
1101	Litecoin Cash	https://coinmarketcap.com/currencies/litecoin-cash/	LCC	$0.003316
1102	Oxbull.tech	https://coinmarketcap.com/currencies/oxbull-tech/	OXB	$0.3349
1103	Niftyx Protocol	https://coinmarketcap.com/currencies/niftyx-protocol/	SHROOM	$0.04874
1104	Signata	https://coinmarketcap.com/currencies/signata/	SATA	$0.03509
1105	Skycoin	https://coinmarketcap.com/currencies/skycoin/	SKY	$0.1136
1106	Wicrypt	https://coinmarketcap.com/currencies/wicrypt/	WNT	$0.05045
1107	RocketX exchange	https://coinmarketcap.com/currencies/rocket-vault-rocketx/	RVF	$0.03865
1108	SIRIN LABS Token	https://coinmarketcap.com/currencies/sirin-labs-token/	SRN	$0.00506
1109	SONM (BEP-20)	https://coinmarketcap.com/currencies/sonm-bep20/	SNM	$0.05596
1110	Safe Haven	https://coinmarketcap.com/currencies/safe-haven/	SHA	$0.0008261
1111	Safex Token	https://coinmarketcap.com/currencies/safex-token/	SFT	$0.00
1112	Crust Network	https://coinmarketcap.com/currencies/crustnetwork/	CRU	$0.80
1113	ColossusXT	https://coinmarketcap.com/currencies/colossusxt/	COLX	$0.00
1114	Solrise Finance	https://coinmarketcap.com/currencies/solrise-finance/	SLRS	$0.03
1115	Pickle Finance	https://coinmarketcap.com/currencies/pickle-finance/	PICKLE	$1.28
1116	SafeCoin	https://coinmarketcap.com/currencies/safecoin/	SAFE	$0.09
1117	Florin	https://coinmarketcap.com/currencies/florin/	XFL	$17.81
1118	Viberate	https://coinmarketcap.com/currencies/viberate/	VIB	$0.01
1119	Venus DOT	https://coinmarketcap.com/currencies/venus-dot/	vDOT	$0.15
1120	1World	https://coinmarketcap.com/currencies/1world/	1WO	$0.06
1121	Spheroid Universe	https://coinmarketcap.com/currencies/spheroid-universe/	SPH	$0.02
1122	IOI Token	https://coinmarketcap.com/currencies/trade-race-manager/	IOI	$0.27
1123	Achain	https://coinmarketcap.com/currencies/achain/	ACT	$0.00
1124	UpBots	https://coinmarketcap.com/currencies/upbots/	UBXT	$0.01
1125	IQeon	https://coinmarketcap.com/currencies/iqeon/	IQN	$0.43
1126	Jobchain	https://coinmarketcap.com/currencies/jobchain/	JOB	$0.00
1127	Oxygen	https://coinmarketcap.com/currencies/oxygen/	OXY	$0.07
1128	Tokoin	https://coinmarketcap.com/currencies/tokoin/	TOKO	$0.00
1129	PlanetWatch	https://coinmarketcap.com/currencies/planetwatch/	PLANETS	$0.01
1130	UBIX.Network	https://coinmarketcap.com/currencies/ubix-network/	UBX	$0.00
1131	Idavoll DAO	https://coinmarketcap.com/currencies/idavoll-network/	IDV	$0.00
1132	Eminer	https://coinmarketcap.com/currencies/eminer/	EM	$0.00
1133	Big Data Protocol	https://coinmarketcap.com/currencies/big-data-protocol/	BDP	$0.05
1134	RioDeFi	https://coinmarketcap.com/currencies/rio-defi/	RFUEL	$0.01
1135	WELL	https://coinmarketcap.com/currencies/well-token/	WELL	$0.02
1136	Hot Cross	https://coinmarketcap.com/currencies/hot-cross/	HOTCROSS	$0.02
1137	Wagerr	https://coinmarketcap.com/currencies/wagerr/	WGR	$0.01
1138	SIBCoin	https://coinmarketcap.com/currencies/sibcoin/	SIB	$0.12
1139	CyberMiles	https://coinmarketcap.com/currencies/cybermiles/	CMT	$0.00
1140	CloakCoin	https://coinmarketcap.com/currencies/cloakcoin/	CLOAK	$0.39
1141	My DeFi Pet	https://coinmarketcap.com/currencies/my-defi-pet/	DPET	$0.14
1142	Tulip Protocol	https://coinmarketcap.com/currencies/solfarm/	TULIP	$2.79
1143	Idena	https://coinmarketcap.com/currencies/idena/	IDNA	$0.04
1144	MandoX V2	https://coinmarketcap.com/currencies/mandox-v2/	MANDOX	$0.00
1145	Stream Protocol	https://coinmarketcap.com/currencies/stream-protocol/	STPL	$0.01
1146	Primate	https://coinmarketcap.com/currencies/primate/	PRIMATE	$0.02
1147	Vidya	https://coinmarketcap.com/currencies/vidya/	VIDYA	$0.06
1148	FIBOS	https://coinmarketcap.com/currencies/fibos/	FO	$0.00
1149	PLANET	https://coinmarketcap.com/currencies/planet/	PLA	$0.01
1150	Tranche Finance	https://coinmarketcap.com/currencies/tranche-finance/	SLICE	$0.11
1151	SafeMoon	https://coinmarketcap.com/currencies/safemoon/	SAFEMOON	$0.00
1152	MetaPets	https://coinmarketcap.com/currencies/metapets/	METAPETS	$0.00
1153	FortKnoxster	https://coinmarketcap.com/currencies/fortknoxster/	FKX	$0.01
1154	Empty Set Dollar	https://coinmarketcap.com/currencies/empty-set-dollar/	ESD	$0.00
1155	Retreeb	https://coinmarketcap.com/currencies/retreeb/	TREEB	$0.01
1156	Attila	https://coinmarketcap.com/currencies/attila/	ATT	$0.00
1157	Sentivate	https://coinmarketcap.com/currencies/sentivate/	SNTVT	$0.00
1158	BOLT	https://coinmarketcap.com/currencies/bolt/	BOLT	$0.00
1159	DAFI Protocol	https://coinmarketcap.com/currencies/dafi-protocol/	DAFI	$0.00
1160	Seascape Crowns	https://coinmarketcap.com/currencies/crowns/	CWS	$0.72
1161	Pundi X NEM	https://coinmarketcap.com/currencies/pundi-x-nem/	NPXSXEM	$0.00
1162	ZBG Token	https://coinmarketcap.com/currencies/zbg-token/	ZT	$0.01
1163	LikeCoin	https://coinmarketcap.com/currencies/likecoin/	LIKE	$0.00
1164	Perth Mint Gold Token	https://coinmarketcap.com/currencies/perth-mint-gold-token/	PMGT	$1826.68
1165	SpaceFalcon	https://coinmarketcap.com/currencies/spacefalcon/	FCON	$0.00
1166	Convergence	https://coinmarketcap.com/currencies/convergence/	CONV	$0.00
1167	0xBitcoin	https://coinmarketcap.com/currencies/0xbtc/	0xBTC	$0.22
1168	Sonar	https://coinmarketcap.com/currencies/sonar/	PING	$0.00
1169	FNDZ	https://coinmarketcap.com/currencies/fndz/	FNDZ	$0.09
1170	EOSDT	https://coinmarketcap.com/currencies/eosdt/	EOSDT	$0.78
1171	GPEX	https://coinmarketcap.com/currencies/gpex/	GPX	$0.26
1172	PlotX	https://coinmarketcap.com/currencies/plotx/	PLOT	$0.03
1173	Integral	https://coinmarketcap.com/currencies/integral/	ITGR	$0.03
1174	CryptoFranc	https://coinmarketcap.com/currencies/cryptofranc/	XCHF	$1.02
1175	Mcashchain	https://coinmarketcap.com/currencies/mcashchain/	MCASH	$0.00
1176	Kommunitas	https://coinmarketcap.com/currencies/kommunitas/	KOM	$0.00
1177	Crabada	https://coinmarketcap.com/currencies/crabada/	CRA	$0.01
1178	UFC Fan Token	https://coinmarketcap.com/currencies/ufc-fan-token/	UFC	$1.13
1179	Folgory Coin	https://coinmarketcap.com/currencies/folgory-coin/	FLG	$0.12
1180	MIR COIN	https://coinmarketcap.com/currencies/mir-coin/	MIR	$0.00
1181	Genaro Network	https://coinmarketcap.com/currencies/genaro-network/	GNX	$0.00
1182	Tarot	https://coinmarketcap.com/currencies/tarot/	TAROT	$0.06
1183	DiFy.Finance	https://coinmarketcap.com/currencies/dify-finance/	YFIII	$254.56
1184	BiFi	https://coinmarketcap.com/currencies/bifi/	BIFI	$0.01
1185	Wownero	https://coinmarketcap.com/currencies/wownero/	WOW	$0.04
1186	Ispolink	https://coinmarketcap.com/currencies/ispolink/	ISP	$0.00
1187	NFTb	https://coinmarketcap.com/currencies/nftb/	NFTB	$0.02
1188	Kalmar	https://coinmarketcap.com/currencies/kalmar/	KALM	$0.38
1189	Monsta Infinite	https://coinmarketcap.com/currencies/monsta-infinite/	MONI	$0.05
1190	DeFiner	https://coinmarketcap.com/currencies/definer/	FIN	$0.02
1191	Bibox Token	https://coinmarketcap.com/currencies/bibox-token/	BIX	$0.02
1192	ADAPad	https://coinmarketcap.com/currencies/adapad/	ADAPAD	$0.02
1193	Rangers Protocol	https://coinmarketcap.com/currencies/rangers-protocol/	RPG	$1.98
1194	Unbound	https://coinmarketcap.com/currencies/unbound/	UNB	$0.00
1195	Juggernaut	https://coinmarketcap.com/currencies/juggernaut/	JGN	$0.05
1196	Decimated	https://coinmarketcap.com/currencies/decimated/	DIO	$0.04
1197	SIDUS	https://coinmarketcap.com/currencies/sidus/	SIDUS	$0.00
1198	TrueChain	https://coinmarketcap.com/currencies/truechain/	TRUE	$0.02
1199	FOTA - Fight Of The Ages	https://coinmarketcap.com/currencies/fota/	FOTA	$0.29
1200	Lympo	https://coinmarketcap.com/currencies/lympo/	LYM	$0.00
1201	Monolith	https://coinmarketcap.com/currencies/monolith/	TKN	$0.05499
1202	Cryptaur	https://coinmarketcap.com/currencies/cryptaur/	CPT	$0.0001401
1203	Ryoshi Token	https://coinmarketcap.com/currencies/ryoshi-token/	RYOSHI	$0.000000006651
1204	Taraxa	https://coinmarketcap.com/currencies/taraxa/	TARA	$0.001396
1205	DOC.COM	https://coinmarketcap.com/currencies/doc-com/	MTC	$0.00242
1206	EvidenZ	https://coinmarketcap.com/currencies/evidenz/	BCDT	$0.04832
1207	DuckDaoDime	https://coinmarketcap.com/currencies/duckdaodime/	DDIM	$1.80
1208	ACENT	https://coinmarketcap.com/currencies/acent/	ACE	$0.01537
1209	CyberVein	https://coinmarketcap.com/currencies/cybervein/	CVT	$0.001737
1210	DIGG	https://coinmarketcap.com/currencies/digg/	DIGG	$3,205.79
1211	PLATINCOIN	https://coinmarketcap.com/currencies/platincoin/	PLC	$0.37
1212	Rotharium	https://coinmarketcap.com/currencies/rotharium/	RTH	$0.50
1213	Landshare	https://coinmarketcap.com/currencies/landshare/	LAND	$0.71
1214	LABS Group	https://coinmarketcap.com/currencies/labs-group/	LABS	$0.00
1215	COVA	https://coinmarketcap.com/currencies/cova/	COVA	$0.00
1216	Isiklar Coin	https://coinmarketcap.com/currencies/isiklar-coin/	ISIKC	$0.34
1217	1irstcoin	https://coinmarketcap.com/currencies/1irstcoin/	FST	$0.04
1218	Trias Token (new)	https://coinmarketcap.com/currencies/trias-token/	TRIAS	$1.11
1219	Metrix Coin	https://coinmarketcap.com/currencies/metrix-coin/	MRX	$0.00
1220	VeriDocGlobal	https://coinmarketcap.com/currencies/veridocglobal/	VDG	$0.00
1221	REPO	https://coinmarketcap.com/currencies/repo/	REPO	$0.08
1222	ParaSwap	https://coinmarketcap.com/currencies/paraswap/	PSP	$0.02
1223	ROCO FINANCE	https://coinmarketcap.com/currencies/roco-finance/	ROCO	$0.12
1224	Revomon	https://coinmarketcap.com/currencies/revomon/	REVO	$0.07
1225	STEP	https://coinmarketcap.com/currencies/step/	STEP	$0.00
1226	TOP	https://coinmarketcap.com/currencies/top/	TOP	$0.00
1227	Torum	https://coinmarketcap.com/currencies/torum/	XTM	$0.02
1228	Credits	https://coinmarketcap.com/currencies/credits/	CS	$0.01
1229	BitcoinZ	https://coinmarketcap.com/currencies/bitcoinz/	BTCZ	$0.00
1230	Project Pai	https://coinmarketcap.com/currencies/project-pai/	PAI	$0.00
1231	TrueFeedBack	https://coinmarketcap.com/currencies/truefeedback/	TFBX	$0.00
1232	StakeCubeCoin	https://coinmarketcap.com/currencies/stakecubecoin/	SCC	$0.17
1233	EpiK Protocol	https://coinmarketcap.com/currencies/epik-protocol/	EPK	$0.01
1234	AMLT	https://coinmarketcap.com/currencies/amlt/	AMLT	$0.00
1235	Vabble	https://coinmarketcap.com/currencies/vabble/	VAB	$0.00
1236	AXPR	https://coinmarketcap.com/currencies/axpr-token/	AXPR	$0.01
1237	Nord Finance	https://coinmarketcap.com/currencies/nord-finance/	NORD	$0.28
1238	Gridcoin	https://coinmarketcap.com/currencies/gridcoin/	GRC	$0.00
1239	FaraLand	https://coinmarketcap.com/currencies/faraland/	FARA	$0.06
1240	JulSwap	https://coinmarketcap.com/currencies/julswap/	JULD	$0.00
1241	Ripio Credit Network	https://coinmarketcap.com/currencies/ripio-credit-network/	RCN	$0.00
1242	WOOF	https://coinmarketcap.com/currencies/woof/	WOOF	$0.00
1243	G├╢ztepe S.K. Fan Token	https://coinmarketcap.com/currencies/goztepe-sk-fantoken/	GOZ	$1.48
1244	ALLY	https://coinmarketcap.com/currencies/ally/	ALY	$0.00
1245	Basid Coin	https://coinmarketcap.com/currencies/basid-coin/	BASID	$0.00
1246	Clearpool	https://coinmarketcap.com/currencies/clearpool/	CPOOL	$0.03
1247	Cajutel	https://coinmarketcap.com/currencies/cajutel/	CAJ	$1.18
1248	CBC.network	https://coinmarketcap.com/currencies/cbc-network/	CBC	$0.01
1249	Feathercoin	https://coinmarketcap.com/currencies/feathercoin/	FTC	$0.01
1250	Einsteinium	https://coinmarketcap.com/currencies/einsteinium/	EMC2	$0.01
1251	GENRE	https://coinmarketcap.com/currencies/genre/	GENRE	$0.26
1252	Databroker	https://coinmarketcap.com/currencies/databroker/	DTX	$0.02
1253	Egretia	https://coinmarketcap.com/currencies/egretia/	EGT	$0.00
1254	Elemon	https://coinmarketcap.com/currencies/elemon/	ELMON	$0.02
1255	Enecuum	https://coinmarketcap.com/currencies/enecuum/	ENQ	$0.01
1256	Swingby	https://coinmarketcap.com/currencies/swingby/	SWINGBY	$0.00
1257	iMe Lab	https://coinmarketcap.com/currencies/ime-lab/	LIME	$0.01
1258	Massnet	https://coinmarketcap.com/currencies/massnet/	MASS	$0.02
1259	ArdCoin	https://coinmarketcap.com/currencies/ardcoin/	ARDX	$0.01
1260	X-CASH	https://coinmarketcap.com/currencies/x-cash/	XCASH	$0.00
1261	Binamon	https://coinmarketcap.com/currencies/binamon/	BMON	$0.01
1262	Ruff	https://coinmarketcap.com/currencies/ruff/	RUFF	$0.00
1263	Razor Network	https://coinmarketcap.com/currencies/razor-network/	RAZOR	$0.01
1264	DAEX	https://coinmarketcap.com/currencies/daex/	DAX	$0.00
1265	Digital Fitness	https://coinmarketcap.com/currencies/digital-fitness/	DEFIT	$0.06
1266	PUTinCoin	https://coinmarketcap.com/currencies/putincoin/	PUT	$0.00
1267	Olyverse	https://coinmarketcap.com/currencies/olyseum/	OLY	$0.00
1268	GAMB	https://coinmarketcap.com/currencies/gamb/	GMB	$0.00
1269	GameZone	https://coinmarketcap.com/currencies/gamezone/	GZONE	$0.02
1270	VestChain	https://coinmarketcap.com/currencies/vestchain/	VEST	$0.00
1271	Integritee Network	https://coinmarketcap.com/currencies/integritee-network/	TEER	$0.69
1272	Matrix AI Network	https://coinmarketcap.com/currencies/matrix-ai-network/	MAN	$0.01
1273	Virtue Poker	https://coinmarketcap.com/currencies/virtue-poker/	VPP	$0.01
1274	Kambria	https://coinmarketcap.com/currencies/kambria/	KAT	$0.00
1275	Omni	https://coinmarketcap.com/currencies/omni/	OMNI	$2.66
1276	Public Mint	https://coinmarketcap.com/currencies/public-mint/	MINT	$0.01
1277	ZUSD	https://coinmarketcap.com/currencies/zusd/	ZUSD	$1.01
1278	TOKPIE	https://coinmarketcap.com/currencies/tokpie/	TKP	$0.05
1279	TransferCoin	https://coinmarketcap.com/currencies/transfercoin/	TX	$0.18
1280	Edgeless	https://coinmarketcap.com/currencies/edgeless/	EDG	$0.01
1281	Beyond Protocol	https://coinmarketcap.com/currencies/beyond-protocol/	BP	$0.01
1282	Blocknet	https://coinmarketcap.com/currencies/blocknet/	BLOCK	$0.16
1283	HollyGold	https://coinmarketcap.com/currencies/hollygold/	HGOLD	$0.33
1284	Tokenplace	https://coinmarketcap.com/currencies/tokenplace/	TOK	$0.01
1285	BTU Protocol	https://coinmarketcap.com/currencies/btu-protocol/	BTU	$0.02
1286	ZeroSwap	https://coinmarketcap.com/currencies/zeroswap/	ZEE	$0.02
1287	YAM V3	https://coinmarketcap.com/currencies/yam/	YAM	$0.10
1288	Kuai Token	https://coinmarketcap.com/currencies/kuai-token/	KT	$0.12
1289	Insights Network	https://coinmarketcap.com/currencies/insights-network/	INSTAR	$0.01
1290	Blockchain Monster Hunt	https://coinmarketcap.com/currencies/blockchain-monster-hunt/	BCMC	$0.02
1291	42-coin	https://coinmarketcap.com/currencies/42-coin/	42	$34225.83
1292	Ubiq	https://coinmarketcap.com/currencies/ubiq/	UBQ	$0.03
1293	Bismuth	https://coinmarketcap.com/currencies/bismuth/	BIS	$0.06
1294	Dogey-Inu	https://coinmarketcap.com/currencies/dogey-inu/	DINU	$0.00
1295	Revolve Games	https://coinmarketcap.com/currencies/revolve-games/	RPG	$0.04
1296	High Performance Blockchain	https://coinmarketcap.com/currencies/high-performance-blockchain/	HPB	$0.02
1297	RealFevr	https://coinmarketcap.com/currencies/realfevr/	FEVR	$0.00
1298	BitCore	https://coinmarketcap.com/currencies/bitcore/	BTX	$0.08
1299	SpaceChain	https://coinmarketcap.com/currencies/spacechain/	SPC	$0.00
1300	Medacoin	https://coinmarketcap.com/currencies/medacoin/	MEDA	$0.00
1301	Origin Sport	https://coinmarketcap.com/currencies/origin-sport/	ORS	$0.004571
1302	Mind Music	https://coinmarketcap.com/currencies/mind-music/	MND	$0.00000000273
1303	Idle	https://coinmarketcap.com/currencies/idle/	IDLE	$0.2597
1304	Conceal	https://coinmarketcap.com/currencies/conceal/	CCX	$0.1069
1305	BBS Network	https://coinmarketcap.com/currencies/bbs-network/	BBS	$0.02248
1306	The HUSL	https://coinmarketcap.com/currencies/the-husl/	HUSL	$0.13
1307	Dentacoin	https://coinmarketcap.com/currencies/dentacoin/	DCN	$0.000002277
1308	Cindicator	https://coinmarketcap.com/currencies/cindicator/	CND	$0.0006654
1309	Nabox	https://coinmarketcap.com/currencies/nabox/	NABOX	$0.000008142
1310	Goldcoin	https://coinmarketcap.com/currencies/goldcoin/	GLC	$0.03012
1311	Decentr	https://coinmarketcap.com/currencies/decentr/	DEC	$0.01
1312	VIDY	https://coinmarketcap.com/currencies/vidy/	VIDY	$0.00
1313	LOCGame	https://coinmarketcap.com/currencies/locgame/	LOCG	$0.03
1314	Unitrade	https://coinmarketcap.com/currencies/unitrade/	TRADE	$0.07
1315	TFL.io	https://coinmarketcap.com/currencies/trueflip/	TFL	$0.21
1316	Gulden	https://coinmarketcap.com/currencies/gulden/	NLG	$0.00
1317	ONSTON	https://coinmarketcap.com/currencies/onston/	ONSTON	$0.01
1318	Internxt	https://coinmarketcap.com/currencies/internxt/	INXT	$1.16
1319	WebDollar	https://coinmarketcap.com/currencies/webdollar/	WEBD	$0.00
1320	Thorstarter	https://coinmarketcap.com/currencies/thorstarter/	XRUNE	$0.02
1321	Ferrum Network	https://coinmarketcap.com/currencies/ferrum-network/	FRM	$0.02
1322	Shirtum	https://coinmarketcap.com/currencies/shirtum/	SHI	$0.01
1323	Growth DeFi	https://coinmarketcap.com/currencies/growthdefi/	GRO	$2.98
1324	Loser Coin	https://coinmarketcap.com/currencies/loser-coin/	LOWB	$0.00
1325	Argentine Football Association Fan Token	https://coinmarketcap.com/currencies/argentinefootballassociationfantoken/	ARG	$0.92
1326	Tiger King Coin	https://coinmarketcap.com/currencies/tiger-king-coin/	TKING	$0.00
1327	Metaverse Dualchain Network Architecture	https://coinmarketcap.com/currencies/metaverse-dualchain-network-architecture/	DNA	$0.00
1328	Jigstack	https://coinmarketcap.com/currencies/jigstack/	STAK	$0.00
1329	Fear	https://coinmarketcap.com/currencies/fear-nfts/	FEAR	$0.19
1330	QLC Chain	https://coinmarketcap.com/currencies/qlink/	QLC	$0.01
1331	CryptoBlades	https://coinmarketcap.com/currencies/cryptoblades/	SKILL	$1.42
1332	YUMMY	https://coinmarketcap.com/currencies/yummy/	YUMMY	$0.00
1333	xHashtag DAO	https://coinmarketcap.com/currencies/xhashtag/	XTAG	$0.08
1334	TENT	https://coinmarketcap.com/currencies/tent/	TENT	$0.03
1335	Botto	https://coinmarketcap.com/currencies/botto/	BOTTO	$0.08
1336	Portugal National Team Fan Token	https://coinmarketcap.com/currencies/portugal-national-team-fan-token/	POR	$0.61
1337	EasyFi	https://coinmarketcap.com/currencies/easyfi/	EZ	$0.48
1338	SHOPX	https://coinmarketcap.com/currencies/shopx-token/	SHOPX	$0.04
1339	Moneytoken	https://coinmarketcap.com/currencies/moneytoken/	IMT	$0.00
1340	EVRYNET	https://coinmarketcap.com/currencies/evrynet/	EVRY	$0.03
1341	UniLayer	https://coinmarketcap.com/currencies/unilayer/	LAYER	$0.05
1342	Umbrella Network	https://coinmarketcap.com/currencies/umbrella-network/	UMB	$0.02
1343	NFT Index	https://coinmarketcap.com/currencies/nft-index/	NFTI	$538.25
1344	Kaby Arena	https://coinmarketcap.com/currencies/kaby-arena/	KABY	$0.00
1345	ownix	https://coinmarketcap.com/currencies/ownix/	ONX	$0.36
1346	TronEuropeRewardCoin	https://coinmarketcap.com/currencies/troneuroperewardcoin/	TERC	$0.00
1347	Dimecoin	https://coinmarketcap.com/currencies/dimecoin/	DIME	$0.00
1348	Pacoca	https://coinmarketcap.com/currencies/pacoca/	PACOCA	$0.01
1349	Life Crypto	https://coinmarketcap.com/currencies/life-crypto/	LIFE	$0.00
1350	Gather	https://coinmarketcap.com/currencies/gather/	GTH	$0.01
1351	INT	https://coinmarketcap.com/currencies/int-chain/	INT	$0.00
1352	Hydro Protocol	https://coinmarketcap.com/currencies/hydro-protocol/	HOT	$0.00
1353	DOGGY	https://coinmarketcap.com/currencies/doggy/	DOGGY	$0.00
1354	Oddz	https://coinmarketcap.com/currencies/oddz/	ODDZ	$0.02
1355	Patron	https://coinmarketcap.com/currencies/patron/	PAT	$0.00
1356	Hord	https://coinmarketcap.com/currencies/hord/	HORD	$0.01
1357	MONK	https://coinmarketcap.com/currencies/monk/	MONK	$0.09
1358	Vexanium	https://coinmarketcap.com/currencies/vexanium/	VEX	$0.00
1359	ARMOR	https://coinmarketcap.com/currencies/armor/	ARMOR	$0.01
1360	Lightning Bitcoin	https://coinmarketcap.com/currencies/lightning-bitcoin/	LBTC	$0.30
1361	SENATE	https://coinmarketcap.com/currencies/senate/	SENATE	$0.07
1362	GHOSTPRISM	https://coinmarketcap.com/currencies/ghostprism/	GHOST	$0.21
1363	Binemon	https://coinmarketcap.com/currencies/binemon/	BIN	$0.00
1364	PEPS Coin	https://coinmarketcap.com/currencies/peps-coin/	PEPS	$0.02
1365	Strips Finance	https://coinmarketcap.com/currencies/strips-finance/	STRP	$0.27
1366	SmartCredit Token	https://coinmarketcap.com/currencies/smartcredit-token/	SMARTCREDIT	$0.83
1367	KickToken	https://coinmarketcap.com/currencies/kicktoken/	KICK	$0.01
1368	DeepOnion	https://coinmarketcap.com/currencies/deeponion/	ONION	$0.05
1369	OIN Finance	https://coinmarketcap.com/currencies/oin-finance/	OIN	$0.03
1370	EUNO	https://coinmarketcap.com/currencies/euno/	EUNO	$0.00
1371	Cred	https://coinmarketcap.com/currencies/libra-credit/	LBA	$0.00
1372	BillionHappiness	https://coinmarketcap.com/currencies/billionhappiness/	BHC	$22.13
1373	KCCPAD	https://coinmarketcap.com/currencies/kccpad/	KCCPAD	$0.01
1374	Impossible Finance	https://coinmarketcap.com/currencies/impossible-finance/	IF	$0.18
1375	HashBX	https://coinmarketcap.com/currencies/hashsbx/	HBX	$0.00
1376	LinkEye	https://coinmarketcap.com/currencies/linkeye/	LET	$0.00
1377	YOU COIN	https://coinmarketcap.com/currencies/you-coin/	YOU	$0.00
1378	Kattana	https://coinmarketcap.com/currencies/kattana/	KTN	$0.52
1379	Synthetify	https://coinmarketcap.com/currencies/synthetify/	SNY	$0.19
1380	Sakura	https://coinmarketcap.com/currencies/sakura/	SKU	$0.02
1381	Equalizer	https://coinmarketcap.com/currencies/equalizer/	EQZ	$0.03
1382	Galaxy Blitz	https://coinmarketcap.com/currencies/galaxy-blitz/	MIT	$0.30
1383	Primecoin	https://coinmarketcap.com/currencies/primecoin/	XPM	$0.03
1384	Eden	https://coinmarketcap.com/currencies/eden-network/	EDEN	$0.08
1385	Bird.Money	https://coinmarketcap.com/currencies/bird-money/	BIRD	$11.29
1386	OctoFi	https://coinmarketcap.com/currencies/octofi/	OCTO	$1.34
1387	Brokoli Network	https://coinmarketcap.com/currencies/brokoli-network/	BRKL	$0.03
1388	Yield Optimization Platform & Protocol	https://coinmarketcap.com/currencies/yop/	YOP	$0.05
1389	Arcona	https://coinmarketcap.com/currencies/arcona/	ARCONA	$0.07
1390	MASQ	https://coinmarketcap.com/currencies/masq/	MASQ	$0.04
1391	Bitcoin Atom	https://coinmarketcap.com/currencies/bitcoin-atom/	BCA	$0.06
1392	Hedget	https://coinmarketcap.com/currencies/hedget/	HGET	$0.60
1393	BollyCoin	https://coinmarketcap.com/currencies/bollycoin/	BOLLY	$0.03
1394	King Shiba	https://coinmarketcap.com/currencies/king-shiba/	KINGSHIB	$0.00
1395	The ChampCoin	https://coinmarketcap.com/currencies/the-champcoin/	TCC	$0.01
1396	HTMLCOIN	https://coinmarketcap.com/currencies/html-coin/	HTML	$0.00
1397	Effect Network	https://coinmarketcap.com/currencies/effect-ai/	EFX	$0.00
1398	Aeon	https://coinmarketcap.com/currencies/aeon/	AEON	$0.07
1399	Emercoin	https://coinmarketcap.com/currencies/emercoin/	EMC	$0.02
1400	GNY	https://coinmarketcap.com/currencies/gny/	GNY	$0.01
1401	Hyve	https://coinmarketcap.com/currencies/hyve/	HYVE	$0.04035
1402	Unido EP	https://coinmarketcap.com/currencies/unido/	UDO	$0.01772
1403	88mph	https://coinmarketcap.com/currencies/88mph/	MPH	$2.20
1404	Bitgesell	https://coinmarketcap.com/currencies/bitgesell/	BGL	$0.06356
1405	Emercoin	https://coinmarketcap.com/currencies/emercoin/	EMC	$0.02072
1406	CoinMerge (BEP-20)	https://coinmarketcap.com/currencies/coinmerge-bsc-token/	CMERGE	$0.0002151
1407	TopBidder	https://coinmarketcap.com/currencies/topbidder/	BID	$0.1561
1408	Gleec	https://coinmarketcap.com/currencies/gleec/	GLEEC	$0.04826
1409	AnRKey X	https://coinmarketcap.com/currencies/anrkey-x/	$ANRX	$0.005826
1410	Tycoon	https://coinmarketcap.com/currencies/tycoon/	TYC	$0.01274
1411	YF Link	https://coinmarketcap.com/currencies/yflink/	YFL	$19.33
1412	BankerDoge	https://coinmarketcap.com/currencies/bankerdoge/	BANKER	$0.00
1413	Cryptonovae	https://coinmarketcap.com/currencies/cryptonovae/	YAE	$0.02
1414	Graviocoin	https://coinmarketcap.com/currencies/graviocoin/	GIO	$0.01
1415	Unslashed Finance	https://coinmarketcap.com/currencies/unslashed-finance/	USF	$0.05
1416	CoinMerge (ERC-20)	https://coinmarketcap.com/currencies/coinmerge/	CMERGE	$0.00
1417	Kalao	https://coinmarketcap.com/currencies/kalao/	KLO	$0.02
1418	Refinable	https://coinmarketcap.com/currencies/refinable/	FINE	$0.02
1419	DMM: Governance	https://coinmarketcap.com/currencies/dmm-governance/	DMG	$0.02
1420	Polker	https://coinmarketcap.com/currencies/polker/	PKR	$0.01
1421	Quark	https://coinmarketcap.com/currencies/quark/	QRK	$0.00
1422	Hiveterminal Token	https://coinmarketcap.com/currencies/hiveterminal-token/	HVN	$0.00
1423	EXRNchain	https://coinmarketcap.com/currencies/exrnchain/	EXRN	$0.00
1424	IG Gold	https://coinmarketcap.com/currencies/ig-gold/	IGG	$0.00
1425	Azbit	https://coinmarketcap.com/currencies/azbit/	AZ	$0.00
1426	Zap	https://coinmarketcap.com/currencies/zap/	ZAP	$0.00
1427	Pawthereum	https://coinmarketcap.com/currencies/pawthereum/	PAWTH	$0.00
1428	SYNC Network	https://coinmarketcap.com/currencies/sync-network/	SYNC	$0.01
1429	Safex Cash	https://coinmarketcap.com/currencies/safex-cash/	SFX	$0.01
1430	BZEdge	https://coinmarketcap.com/currencies/bzedge/	BZE	$0.00
1431	Unification	https://coinmarketcap.com/currencies/unification/	FUND	$0.03
1432	CPChain	https://coinmarketcap.com/currencies/cpchain/	CPC	$0.00
1433	MicroPets	https://coinmarketcap.com/currencies/micropets/	PETS	$0.00
1434	Soldex	https://coinmarketcap.com/currencies/soldex/	SOLX	$0.01
1435	Iconic Token	https://coinmarketcap.com/currencies/iconic-token/	ICNQ	$0.10
1436	Raze Network	https://coinmarketcap.com/currencies/raze-network/	RAZE	$0.01
1437	FairGame	https://coinmarketcap.com/currencies/fairgame/	FAIR	$0.00
1438	Crust Shadow	https://coinmarketcap.com/currencies/crust-shadow/	CSM	$0.01
1439	Mist	https://coinmarketcap.com/currencies/mist/	MIST	$0.02
1440	The Crypto Prophecies	https://coinmarketcap.com/currencies/the-crypto-prophecies/	TCP	$0.01
1441	NewYorkCoin	https://coinmarketcap.com/currencies/newyorkcoin/	NYC	$0.00
1442	BlockWallet	https://coinmarketcap.com/currencies/blank-wallet/	BLANK	$0.05
1443	Swirge	https://coinmarketcap.com/currencies/swirge/	SWG	$0.08
1444	Monetha	https://coinmarketcap.com/currencies/monetha/	MTH	$0.00
1445	Bean Cash	https://coinmarketcap.com/currencies/bean-cash/	BITB	$0.00
1446	Green Ben	https://coinmarketcap.com/currencies/green-ben/	EBEN	$0.04
1447	Silva Token	https://coinmarketcap.com/currencies/silva-token/	SILVA	$0.00
1448	Sumokoin	https://coinmarketcap.com/currencies/sumokoin/	SUMO	$0.02
1449	Pillar	https://coinmarketcap.com/currencies/pillar/	PLR	$0.00
1450	Genesis Vision	https://coinmarketcap.com/currencies/genesis-vision/	GVT	$0.19
1451	VIBE	https://coinmarketcap.com/currencies/vibe/	VIBE	$0.00
1452	Burency	https://coinmarketcap.com/currencies/burency/	BUY	$0.00
1453	1-UP Platform	https://coinmarketcap.com/currencies/1-up/	1-UP	$0.02
1454	Unistake	https://coinmarketcap.com/currencies/unistake/	UNISTAKE	$0.00
1455	ChessCoin	https://coinmarketcap.com/currencies/chesscoin/	CHESS	$0.02
1456	ETHPad	https://coinmarketcap.com/currencies/ethpad/	ETHPAD	$0.00
1457	Reward Hunters Token	https://coinmarketcap.com/currencies/reward-hunters-token/	RHT	$0.00
1458	Autobahn Network	https://coinmarketcap.com/currencies/tixl-new/	TXL	$0.01
1459	Leeds United Fan Token	https://coinmarketcap.com/currencies/leeds-united-fan-token/	LUFC	$0.88
1460	Strong	https://coinmarketcap.com/currencies/strong/	STRONG	$6.27
1461	XY Finance	https://coinmarketcap.com/currencies/xy-finance/	XY	$0.19
1462	MAX Exchange Token	https://coinmarketcap.com/currencies/max-exchange-token/	MAX	$0.26
1463	Forj(Bondly)	https://coinmarketcap.com/currencies/bondly/	BONDLY	$0.01
1464	Honest	https://coinmarketcap.com/currencies/honest/	HNST	$0.01
1465	Bridge Mutual	https://coinmarketcap.com/currencies/bridge-mutual/	BMI	$0.01
1466	e-Gulden	https://coinmarketcap.com/currencies/e-gulden/	EFL	$0.05
1467	Gunstar Metaverse	https://coinmarketcap.com/currencies/gunstar-metaverse/	GSTS	$0.03
1468	IoT Chain	https://coinmarketcap.com/currencies/iot-chain/	ITC	$0.01
1469	DOSE	https://coinmarketcap.com/currencies/dose/	DOSE	$0.02
1470	Buying.com	https://coinmarketcap.com/currencies/buying-com/	BUY	$0.02
1471	QuickX Protocol	https://coinmarketcap.com/currencies/quickx-protocol/	QCX	$0.00
1472	Garlicoin	https://coinmarketcap.com/currencies/garlicoin/	GRLC	$0.01
1473	Cryptocean	https://coinmarketcap.com/currencies/cryptocean/	CRON	$0.10
1474	Famcentral	https://coinmarketcap.com/currencies/famcentral/	FAM	$0.09
1475	Cyclone Protocol	https://coinmarketcap.com/currencies/cyclone-protocol/	CYC	$31.85
1476	Stakenet	https://coinmarketcap.com/currencies/stakenet/	XSN	$0.01
1477	PERI Finance	https://coinmarketcap.com/currencies/peri-finance/	PERI	$0.10
1478	FujiCoin	https://coinmarketcap.com/currencies/fujicoin/	FJC	$0.00
1479	carVertical	https://coinmarketcap.com/currencies/carvertical/	CV	$0.00
1480	disBalancer	https://coinmarketcap.com/currencies/disbalancer/	DDOS	$0.13
1481	CRYPTO20	https://coinmarketcap.com/currencies/c20/	C20	$0.02
1482	blockbank	https://coinmarketcap.com/currencies/blockbank/	BBANK	$0.01
1483	Global Social Chain	https://coinmarketcap.com/currencies/global-social-chain/	GSC	$0.00
1484	Xaurum	https://coinmarketcap.com/currencies/xaurum/	XAUR	$0.01
1485	Lanceria	https://coinmarketcap.com/currencies/lanceria/	LANC	$0.00
1486	Nitro Network	https://coinmarketcap.com/currencies/nucleus-vision/	NCash	$0.00
1487	Bata	https://coinmarketcap.com/currencies/bata/	BTA	$0.16
1488	Wall Street Games	https://coinmarketcap.com/currencies/wall-street-games/	WSG	$0.00
1489	Furucombo	https://coinmarketcap.com/currencies/furucombo/	COMBO	$0.03
1490	AmonD	https://coinmarketcap.com/currencies/amond/	AMON	$0.00
1491	AICHAIN	https://coinmarketcap.com/currencies/aichain/	AIT	$0.00
1492	─░stanbul Ba┼Яak┼Яehir Fan Token	https://coinmarketcap.com/currencies/istanbul-basaksehir-fan-token/	IBFK	$1.30
1493	Phoenixcoin	https://coinmarketcap.com/currencies/phoenixcoin/	PXC	$0.01
1494	Paribus	https://coinmarketcap.com/currencies/paribus/	PBX	$0.00
1495	ClearDAO	https://coinmarketcap.com/currencies/cleardao/	CLH	$0.01
1496	Tadpole Finance	https://coinmarketcap.com/currencies/tadpole-finance/	TAD	$1.41
1497	DinoX	https://coinmarketcap.com/currencies/dinox/	DNXC	$0.02
1498	Oduwacoin	https://coinmarketcap.com/currencies/oduwa/	OWC	$0.18
1499	AstroSwap	https://coinmarketcap.com/currencies/astroswap/	ASTRO	$0.00
1500	Raven Protocol	https://coinmarketcap.com/currencies/raven-protocol/	RAVEN	$0.00
1501	SmartCash	https://coinmarketcap.com/currencies/smartcash/	SMART	$0.0005392
1502	Plant Vs Undead	https://coinmarketcap.com/currencies/plantvsundead/	PVU	$0.01516
1503	yieldwatch	https://coinmarketcap.com/currencies/yieldwatch/	WATCH	$0.04409
1504	Flamengo Fan Token	https://coinmarketcap.com/currencies/flamengo-fan-token/	MENGO	$0.2362
1505	Duck DAO (DLP Duck Token)	https://coinmarketcap.com/currencies/duck-dao/	DUCK	$0.02405
1506	CyberFi Token	https://coinmarketcap.com/currencies/cyberfi/	CFi	$0.366
1507	WagyuSwap	https://coinmarketcap.com/currencies/wagyuswap/	WAG	$0.01383
1508	APIX	https://coinmarketcap.com/currencies/apix/	APIX	$0.005754
1509	Opium	https://coinmarketcap.com/currencies/opium/	OPIUM	$0.1795
1510	My Master War	https://coinmarketcap.com/currencies/my-master-war/	MAT	$0.04237
1511	AtromG8	https://coinmarketcap.com/currencies/atromg8/	AG8	$0.02
1512	Davinci Coin	https://coinmarketcap.com/currencies/davinci-coin/	DAC	$0.00
1513	VIG	https://coinmarketcap.com/currencies/vig/	VIG	$0.00
1514	S.C. Corinthians Fan Token	https://coinmarketcap.com/currencies/sc-corinthians-fan-token/	SCCP	$0.31
1515	Digix Gold Token	https://coinmarketcap.com/currencies/digix-gold-token/	DGX	$13.54
1516	Snetwork	https://coinmarketcap.com/currencies/snetwork/	SNET	$0.00
1517	ClinTex CTi	https://coinmarketcap.com/currencies/clintex-cti/	CTI	$0.01
1518	Global Cryptocurrency	https://coinmarketcap.com/currencies/global-cryptocurrency/	GCC	$0.00
1519	Horizon Protocol	https://coinmarketcap.com/currencies/horizon-protocol/	HZN	$0.02
1520	HEROcoin	https://coinmarketcap.com/currencies/herocoin/	PLAY	$0.00
1521	NextDAO	https://coinmarketcap.com/currencies/nextdao/	NAX	$0.00
1522	BitBall	https://coinmarketcap.com/currencies/bitball/	BTB	$0.00
1523	Xensor	https://coinmarketcap.com/currencies/xensor/	XSR	$0.00
1524	Ixcoin	https://coinmarketcap.com/currencies/ixcoin/	IXC	$0.03
1525	FYDcoin	https://coinmarketcap.com/currencies/fydcoin/	FYD	$0.00
1526	iEthereum	https://coinmarketcap.com/currencies/iethereum/	IETH	$0.04
1527	Don-key	https://coinmarketcap.com/currencies/don-key/	DON	$0.01
1528	YOYOW	https://coinmarketcap.com/currencies/yoyow/	YOYOW	$0.00
1529	Chronicle	https://coinmarketcap.com/currencies/chronicle/	XNL	$0.03
1530	TOWER	https://coinmarketcap.com/currencies/tower-token/	TOWER	$0.00
1531	DATA	https://coinmarketcap.com/currencies/data/	DTA	$0.00
1532	Hakka.Finance	https://coinmarketcap.com/currencies/hakka-finance/	HAKKA	$0.00
1533	Plasma Finance	https://coinmarketcap.com/currencies/plasma-finance/	PPAY	$0.01
1534	Cornichon	https://coinmarketcap.com/currencies/cornichon/	CORN	$0.05
1535	Ares Protocol	https://coinmarketcap.com/currencies/ares-protocol/	ARES	$0.00
1536	Memetic / PepeCoin	https://coinmarketcap.com/currencies/memetic/	MEME	$0.02
1537	Prosper	https://coinmarketcap.com/currencies/prosper/	PROS	$0.15
1538	KIWIGO	https://coinmarketcap.com/currencies/kiwigo/	KGO	$0.02
1539	LINKA	https://coinmarketcap.com/currencies/linka/	LINKA	$0.00
1540	Bob's Repair	https://coinmarketcap.com/currencies/bobs-repair/	BOB	$0.00
1541	TenUp	https://coinmarketcap.com/currencies/tenup/	TUP	$0.05
1542	Unicly Mystic Axies Collection	https://coinmarketcap.com/currencies/unicly-mystic-axies-collection/	UAXIE	$0.07
1543	XCarnival	https://coinmarketcap.com/currencies/xcarnival/	XCV	$0.01
1698	Aitra	https://coinmarketcap.com/currencies/aitra/	AITRA	$0.07
1544	Krypton DAO	https://coinmarketcap.com/currencies/krypton-dao/	KRD	$0.31
1545	Hyprr	https://coinmarketcap.com/currencies/hyprr/	UDOO	$0.00
1546	PieDAO DOUGH v2	https://coinmarketcap.com/currencies/piedao-dough-v2/	DOUGH	$0.04
1547	Minswap	https://coinmarketcap.com/currencies/minswap/	MIN	$0.03
1548	Typerium	https://coinmarketcap.com/currencies/typerium/	TYPE	$0.00
1549	Zenfuse	https://coinmarketcap.com/currencies/zenfuse/	ZEFU	$0.01
1550	Blockzero Labs	https://coinmarketcap.com/currencies/blockzerolabs/	XIO	$0.02
1551	AME Chain	https://coinmarketcap.com/currencies/amepay/	AME	$0.00
1552	Crowny	https://coinmarketcap.com/currencies/crowny/	CRWNY	$0.00
1553	Humaniq	https://coinmarketcap.com/currencies/humaniq/	HMQ	$0.00
1554	DRIFE	https://coinmarketcap.com/currencies/drife/	DRF	$0.00
1555	Bitspawn	https://coinmarketcap.com/currencies/bitspawn-protocol/	SPWN	$0.00
1556	HempCoin	https://coinmarketcap.com/currencies/hempcoin/	THC	$0.00
1557	Essentia	https://coinmarketcap.com/currencies/essentia/	ESS	$0.00
1558	BlackCoin	https://coinmarketcap.com/currencies/blackcoin/	BLK	$0.01
1559	PayPie	https://coinmarketcap.com/currencies/paypie/	PPP	$0.01
1560	Bitswift	https://coinmarketcap.com/currencies/bitswift/	BITS	$0.16
1561	WOWswap	https://coinmarketcap.com/currencies/wowswap/	WOW	$1.07
1562	PowerTrade Fuel	https://coinmarketcap.com/currencies/powertrade-fuel/	PTF	$0.03
1563	Helmet.insure	https://coinmarketcap.com/currencies/helmet-insure/	HELMET	$0.01
1564	Open Platform	https://coinmarketcap.com/currencies/open-platform/	OPEN	$0.00
1565	Caspian	https://coinmarketcap.com/currencies/caspian/	CSP	$0.00
1566	Project TXA	https://coinmarketcap.com/currencies/project-txa/	TXA	$0.24
1567	Base Protocol	https://coinmarketcap.com/currencies/base-protocol/	BASE	$1.31
1568	Whiteheart	https://coinmarketcap.com/currencies/whiteheart/	WHITE	$70.56
1569	MoneroV 	https://coinmarketcap.com/currencies/monero-v/	XMV	$0.23
1570	eXPerience Chain	https://coinmarketcap.com/currencies/experience-chain/	XPC	$0.00
1571	Polytrade	https://coinmarketcap.com/currencies/polytrade/	TRADE	$0.05
1572	CHADS VC	https://coinmarketcap.com/currencies/chads-vc/	CHADS	$0.01
1573	WePower	https://coinmarketcap.com/currencies/wepower/	WPR	$0.00
1574	PolkaWar	https://coinmarketcap.com/currencies/polkawar/	PWAR	$0.02
1575	FedoraCoin	https://coinmarketcap.com/currencies/fedoracoin/	TIPS	$0.00
1576	Rhythm	https://coinmarketcap.com/currencies/rhythm/	RHYTHM	$0.00
1577	BonusCloud	https://coinmarketcap.com/currencies/bonuscloud/	BXC	$0.00
1578	Ycash	https://coinmarketcap.com/currencies/ycash/	YEC	$0.05
1579	Zloadr	https://coinmarketcap.com/currencies/zloadr/	ZDR	$0.11
1580	WeOwn	https://coinmarketcap.com/currencies/we-own/	CHX	$0.01
1581	Golos Blockchain	https://coinmarketcap.com/currencies/golos-blockchain/	GLS	$0.00
1582	ChatCoin	https://coinmarketcap.com/currencies/chatcoin/	CHAT	$0.00
1583	Centaur	https://coinmarketcap.com/currencies/centaur/	CNTR	$0.00
1584	KamPay	https://coinmarketcap.com/currencies/kampay/	KAMPAY	$0.00
1585	Webflix Token	https://coinmarketcap.com/currencies/webflix-token/	WFX	$0.00
1586	PIXEL	https://coinmarketcap.com/currencies/pixel/	PXL	$0.00
1587	DragonVein	https://coinmarketcap.com/currencies/dragonvein/	DVC	$0.00
1588	Everton Fan Token	https://coinmarketcap.com/currencies/everton-fan-token/	EFC	$0.67
1589	Curate	https://coinmarketcap.com/currencies/curate/	XCUR	$0.07
1590	Lendingblock	https://coinmarketcap.com/currencies/lendingblock/	LND	$0.00
1591	Content Neutrality Network	https://coinmarketcap.com/currencies/content-neutrality-network/	CNN	$0.00
1592	Corra.Finance	https://coinmarketcap.com/currencies/corra-finance/	CORA	$0.39
1593	Hush	https://coinmarketcap.com/currencies/hush/	HUSH	$0.05
1594	Kira Network	https://coinmarketcap.com/currencies/kira-network/	KEX	$0.05
1595	Standard Protocol	https://coinmarketcap.com/currencies/standard-protocol/	STND	$0.04
1596	LanaCoin	https://coinmarketcap.com/currencies/lanacoin/	LANA	$0.00
1597	XMax	https://coinmarketcap.com/currencies/xmax/	XMX	$0.00
1598	NFT	https://coinmarketcap.com/currencies/nft/	NFT	$0.02
1599	Scala	https://coinmarketcap.com/currencies/scala/	XLA	$0.00
1600	SuperLauncher	https://coinmarketcap.com/currencies/superlauncher/	LAUNCH	$0.14
1601	SuperLauncher	https://coinmarketcap.com/currencies/superlauncher/	LAUNCH	$0.1411
1602	VNX	https://coinmarketcap.com/currencies/vnx/	VNXLU	$0.02019
1603	HitChain	https://coinmarketcap.com/currencies/hitchain/	HIT	$0.000009224
1604	Q DAO Governance token v1.0	https://coinmarketcap.com/currencies/q-dao-governance-token/	QDAO	$2.13
1605	Bistroo	https://coinmarketcap.com/currencies/bistroo/	BIST	$0.01292
1606	UBXS Token	https://coinmarketcap.com/currencies/ubxs/	UBXS	$0.06279
1607	Shard	https://coinmarketcap.com/currencies/shard/	SHARD	$0.03275
1608	UCA Coin	https://coinmarketcap.com/currencies/uca-coin/	UCA	$0.0002418
1609	Carbon	https://coinmarketcap.com/currencies/carbon/	CRBN	$0.0168
1610	MetaverseX	https://coinmarketcap.com/currencies/meraversex/	METAX	$0.2087
1611	TERA	https://coinmarketcap.com/currencies/tera/	TERA	$0.00
1612	ESBC	https://coinmarketcap.com/currencies/esbc/	ESBC	$0.02
1613	Ninneko	https://coinmarketcap.com/currencies/ninneko/	NINO	$0.01
1614	VisionGame	https://coinmarketcap.com/currencies/vision-game/	VISION	$0.01
1615	CryptoZoon	https://coinmarketcap.com/currencies/cryptozoon/	ZOON	$0.00
1616	Naka Bodhi Token	https://coinmarketcap.com/currencies/naka-bodhi-token/	NBOT	$0.01
1617	THEKEY	https://coinmarketcap.com/currencies/thekey/	TKY	$0.00
1618	Litex	https://coinmarketcap.com/currencies/litex/	LXT	$0.00
1619	Eden	https://coinmarketcap.com/currencies/eden/	EDN	$0.00
1620	UREEQA	https://coinmarketcap.com/currencies/ureeqa/	URQA	$0.02
1621	CannabisCoin	https://coinmarketcap.com/currencies/cannabiscoin/	CANN	$0.01
1622	Aston Villa Fan Token	https://coinmarketcap.com/currencies/aston-villa-fan-token/	AVL	$0.59
1623	Bloom	https://coinmarketcap.com/currencies/bloomtoken/	BLT	$0.01
1624	PANTHEON X	https://coinmarketcap.com/currencies/pantheon-x/	XPN	$0.00
1625	Ryo Currency	https://coinmarketcap.com/currencies/ryo-currency/	RYO	$0.01
1626	LaunchZone	https://coinmarketcap.com/currencies/launchzone/	LZ	$0.22
1627	Swarm Markets	https://coinmarketcap.com/currencies/swarm-markets/	SMT	$0.02
1628	Bitcoin Plus	https://coinmarketcap.com/currencies/bitcoin-plus/	XBC	$2.84
1629	Vanilla Network	https://coinmarketcap.com/currencies/vanilla-network/	VNLA	$0.92
1630	Medicalchain	https://coinmarketcap.com/currencies/medical-chain/	MTN	$0.00
1631	Odyssey	https://coinmarketcap.com/currencies/odyssey/	OCN	$0.00
1632	SmileyCoin	https://coinmarketcap.com/currencies/smileycoin/	SMLY	$0.00
1633	ContentBox	https://coinmarketcap.com/currencies/contentbox/	BOX	$0.00
1634	PlayFuel	https://coinmarketcap.com/currencies/playfuel/	PLF	$0.00
1635	PetroDollar	https://coinmarketcap.com/currencies/petrodollar/	XPD	$0.01
1636	S4FE	https://coinmarketcap.com/currencies/s4fe/	S4F	$0.00
1637	Aston Martin Cognizant Fan Token	https://coinmarketcap.com/currencies/aston-martin-cognizant-fan-token/	AM	$0.37
1638	STATERA	https://coinmarketcap.com/currencies/statera/	STA	$0.01
1639	UnlimitedIP	https://coinmarketcap.com/currencies/unlimitedip/	UIP	$0.00
1640	Portion	https://coinmarketcap.com/currencies/portion/	PRT	$0.00
1641	CryptoSoul	https://coinmarketcap.com/currencies/cryptosoul/	SOUL	$0.00
1642	Nafter	https://coinmarketcap.com/currencies/nafter/	NAFT	$0.00
1643	DAV Coin	https://coinmarketcap.com/currencies/dav-coin/	DAV	$0.00
1644	ParkinGo	https://coinmarketcap.com/currencies/parkingo/	GOT	$0.03
1645	TurtleCoin	https://coinmarketcap.com/currencies/turtlecoin/	TRTL	$0.00
1646	Gravity Finance	https://coinmarketcap.com/currencies/gravity-finance/	GFI	$0.00
1647	Coreto	https://coinmarketcap.com/currencies/coreto/	COR	$0.00
1648	VNT Chain	https://coinmarketcap.com/currencies/vnt-chain/	VNT	$0.00
1649	CUTcoin	https://coinmarketcap.com/currencies/cutcoin/	CUT	$0.00
1650	Finxflo	https://coinmarketcap.com/currencies/finxflo/	FXF	$0.01
1651	Ideaology	https://coinmarketcap.com/currencies/ideaology/	IDEA	$0.03
1652	Young Boys Fan Token	https://coinmarketcap.com/currencies/young-boys-fan-token/	YBO	$0.49
1653	Lokr	https://coinmarketcap.com/currencies/polkalokr/	LKR	$0.02
1654	BitcoinHD	https://coinmarketcap.com/currencies/bitcoinhd/	BHD	$0.08
1655	Swace	https://coinmarketcap.com/currencies/swace/	SWACE	$0.00
1656	OceanEx Token	https://coinmarketcap.com/currencies/oceanex-token/	OCE	$0.00
1657	Lightning	https://coinmarketcap.com/currencies/lightning/	LIGHT	$0.01
1658	UnMarshal	https://coinmarketcap.com/currencies/unmarshal/	MARSH	$0.07
1659	Tachyon Protocol	https://coinmarketcap.com/currencies/tachyon-protocol/	IPX	$0.00
1660	Alfa Romeo Racing ORLEN Fan Token	https://coinmarketcap.com/currencies/alfa-romeo-racing-orlen-fan-token/	SAUBER	$0.35
1661	PumaPay	https://coinmarketcap.com/currencies/pumapay/	PMA	$0.00
1662	Kcash	https://coinmarketcap.com/currencies/kcash/	KCASH	$0.00
1663	Expanse	https://coinmarketcap.com/currencies/expanse/	EXP	$0.03
1664	FlypMe	https://coinmarketcap.com/currencies/flypme/	FYP	$0.03
1665	ShopNEXT	https://coinmarketcap.com/currencies/shopnext/	NEXT	$0.01
1666	AppCoins	https://coinmarketcap.com/currencies/appcoins/	APPC	$0.00
1667	Primas	https://coinmarketcap.com/currencies/primas/	PST	$0.01
1668	Innovation Blockchain Payment	https://coinmarketcap.com/currencies/innovation-blockchain-payment/	IBP	$0.00
1669	SophiaTX	https://coinmarketcap.com/currencies/sophiatx/	SPHTX	$0.00
1670	PotCoin	https://coinmarketcap.com/currencies/potcoin/	POT	$0.00
1671	Clube Atl├йtico Mineiro Fan Token	https://coinmarketcap.com/currencies/clube-atletico-mineiro-fan-token/	GALO	$0.25
1672	UTU Protocol	https://coinmarketcap.com/currencies/utu-protocol/	UTU	$0.00
1673	8PAY	https://coinmarketcap.com/currencies/8pay/	8PAY	$0.01
1674	Graphlinq Protocol	https://coinmarketcap.com/currencies/graphlinq-protocol/	GLQ	$0.00
1675	Stably USD	https://coinmarketcap.com/currencies/stableusd/	USDS	$1.00
1676	1X2 COIN	https://coinmarketcap.com/currencies/1x2-coin/	1X2	$0.09
1677	Game.com	https://coinmarketcap.com/currencies/game/	GTC	$0.00
1678	BitTube	https://coinmarketcap.com/currencies/bit-tube/	TUBE	$0.00
1679	LiquidApps	https://coinmarketcap.com/currencies/liquid-apps/	DAPP	$0.00
1680	Spore	https://coinmarketcap.com/currencies/spore/	SPORE	$0.00
1681	Antiample	https://coinmarketcap.com/currencies/antiample/	XAMP	$0.00
1682	PulsePad	https://coinmarketcap.com/currencies/pulsepad/	PLSPAD	$0.00
1683	PhoenixDAO	https://coinmarketcap.com/currencies/phoenixdao/	PHNX	$0.01
1684	Beaxy	https://coinmarketcap.com/currencies/beaxy/	BXY	$0.00
1685	Denarius	https://coinmarketcap.com/currencies/denarius-d/	D	$0.06
1686	Faceter	https://coinmarketcap.com/currencies/faceter/	FACE	$0.00
1687	Cheems	https://coinmarketcap.com/currencies/cheems/	CHEEMS	$0.00
1688	RealTract	https://coinmarketcap.com/currencies/realtract/	RET	$0.00
1689	RUN TOGETHER	https://coinmarketcap.com/currencies/run-together/	RUN	$0.01
1690	SINOVATE	https://coinmarketcap.com/currencies/sinovate/	SIN	$0.00
1691	BlackHat	https://coinmarketcap.com/currencies/blackhat/	BLKC	$0.06
1692	Starbase	https://coinmarketcap.com/currencies/starbase/	STAR	$0.00
1693	Curecoin	https://coinmarketcap.com/currencies/curecoin/	CURE	$0.02
1694	TigerCash	https://coinmarketcap.com/currencies/tigercash/	TCH	$0.01
1695	Spores Network	https://coinmarketcap.com/currencies/spores-network/	SPO	$0.00
1696	Sypool	https://coinmarketcap.com/currencies/sypool/	SYP	$0.01
1697	Upfiring	https://coinmarketcap.com/currencies/upfiring/	UFR	$0.02
1699	Cappasity	https://coinmarketcap.com/currencies/cappasity/	CAPP	$0.00
1700	Fractal	https://coinmarketcap.com/currencies/fractal/	FCL	$0.03
1701	SnowSwap	https://coinmarketcap.com/currencies/snowswap/	SNOW	$0.9292
1702	Dexsport	https://coinmarketcap.com/currencies/dexsport/	DESU	$0.006304
1703	OneRoot Network	https://coinmarketcap.com/currencies/oneroot-network/	RNT	$0.001504
1704	KeyFi	https://coinmarketcap.com/currencies/keyfi/	KEYFI	$0.1584
1705	PHI Token	https://coinmarketcap.com/currencies/phi-token/	PHI	$0.0729
1706	Nuco.cloud	https://coinmarketcap.com/currencies/nuco-cloud/	NCDT	$0.01699
1707	Multiplier	https://coinmarketcap.com/currencies/multiplier/	MXX	$0.003117
1708	Vidulum	https://coinmarketcap.com/currencies/vidulum/	VDL	$0.02485
1709	Tapx	https://coinmarketcap.com/currencies/tapmydata/	TAP	$0.01938
1710	BHO Network	https://coinmarketcap.com/currencies/bholdus/	BHO	$0.0009264
1711	Launchblock.com	https://coinmarketcap.com/currencies/launchblock/	LBP	$0.00
1712	omchain	https://coinmarketcap.com/currencies/omlira/	OMC	$0.00
1713	eosDAC	https://coinmarketcap.com/currencies/eosdac/	EOSDAC	$0.00
1714	Sao Paulo FC Fan Token	https://coinmarketcap.com/currencies/sao-paulo-fc-fan-token/	SPFC	$0.24
1715	Governor DAO	https://coinmarketcap.com/currencies/governor-dao/	GDAO	$0.14
1716	ADAMANT Messenger	https://coinmarketcap.com/currencies/adamant-messenger/	ADM	$0.00
1717	LocalCoinSwap	https://coinmarketcap.com/currencies/local-coin-swap/	LCS	$0.01
1718	Golff	https://coinmarketcap.com/currencies/golff/	GOF	$0.04
1719	Cat Token	https://coinmarketcap.com/currencies/cat-token/	CAT	$0.06
1720	Skrumble Network	https://coinmarketcap.com/currencies/skrumble-network/	SKM	$0.00
1721	Jarvis Network	https://coinmarketcap.com/currencies/jarvis-network/	JRT	$0.01
1722	Indexed Finance	https://coinmarketcap.com/currencies/indexed-finance/	NDX	$0.47
1723	Tripio	https://coinmarketcap.com/currencies/tripio/	TRIO	$0.00
1724	DeHive	https://coinmarketcap.com/currencies/dehive/	DHV	$0.10
1725	Rainbow Token	https://coinmarketcap.com/currencies/rainbow-token/	RAINBOW	$0.00
1726	AirNFTs	https://coinmarketcap.com/currencies/airnfts/	AIRT	$0.00
1727	Rublix	https://coinmarketcap.com/currencies/rublix/	RBLX	$0.02
1728	SiaCashCoin	https://coinmarketcap.com/currencies/siacashcoin/	SCC	$0.00
1729	Terracoin	https://coinmarketcap.com/currencies/terracoin/	TRC	$0.02
1730	Hashgard	https://coinmarketcap.com/currencies/hashgard/	GARD	$0.00
1731	Mytheria	https://coinmarketcap.com/currencies/mytheria/	MYRA	$0.02
1732	Redpanda Earth	https://coinmarketcap.com/currencies/redpanda/	REDPANDA	$0.00
1733	Oikos	https://coinmarketcap.com/currencies/oikos/	OKS	$0.00
1734	U Network	https://coinmarketcap.com/currencies/u-network/	UUU	$0.00
1735	Actinium	https://coinmarketcap.com/currencies/actinium/	ACM	$0.01
1736	Darwinia Commitment Token	https://coinmarketcap.com/currencies/darwinia-commitment-token/	KTON	$9.99
1737	Hydro	https://coinmarketcap.com/currencies/hydro/	HYDRO	$0.00
1738	9D NFT	https://coinmarketcap.com/currencies/9d-nft/	COGI	$0.02
1739	YetiCoin	https://coinmarketcap.com/currencies/yeticoin/	YETIC	$0.00
1740	PRivaCY Coin	https://coinmarketcap.com/currencies/prcy-coin/	PRCY	$0.05
1741	GlobalBoost-Y	https://coinmarketcap.com/currencies/globalboost-y/	BSTY	$0.02
1742	Wings	https://coinmarketcap.com/currencies/wings/	WINGS	$0.00
1743	HiCoin	https://coinmarketcap.com/currencies/hicoin/	XHI	$0.00
1744	Dynamic	https://coinmarketcap.com/currencies/dynamic/	DYN	$0.02
1745	Unicly Hashmasks Collection	https://coinmarketcap.com/currencies/unicly-hashmasks-collection/	UMASK	$0.00
1746	B-cube.ai	https://coinmarketcap.com/currencies/b-cube-ai/	BCUBE	$0.04
1747	ASKO	https://coinmarketcap.com/currencies/askobar-network/	ASKO	$0.00
1748	FintruX Network	https://coinmarketcap.com/currencies/fintrux-network/	FTX	$0.00
1749	CropperFinance	https://coinmarketcap.com/currencies/cropperfinance/	CRP	$0.01
1750	CRD Network	https://coinmarketcap.com/currencies/crdnetwork/	CRD	$0.00
1751	Color Platform	https://coinmarketcap.com/currencies/color-platform/	CLR	$0.00
1752	Electrify.Asia	https://coinmarketcap.com/currencies/electrifyasia/	ELEC	$0.00
1753	CumStar	https://coinmarketcap.com/currencies/cumstar/	CUMSTAR	$0.00
1754	Karbo	https://coinmarketcap.com/currencies/karbo/	KRB	$0.04
1755	Float Protocol (Bank)	https://coinmarketcap.com/currencies/float-protocol/	BANK	$1.79
1756	Autonio	https://coinmarketcap.com/currencies/autonio/	NIOX	$0.00
1757	SynchroBitcoin	https://coinmarketcap.com/currencies/synchrobitcoin/	SNB	$0.00
1758	ACCEL	https://coinmarketcap.com/currencies/accel/	ACCEL	$0.00
1759	ZClassic	https://coinmarketcap.com/currencies/zclassic/	ZCL	$0.04
1760	Hertz Network	https://coinmarketcap.com/currencies/hertz-network/	HTZ	$0.00
1761	TRAVA.FINANCE	https://coinmarketcap.com/currencies/trava-finance/	TRAVA	$0.00
1762	Atlas Protocol	https://coinmarketcap.com/currencies/atlas-protocol/	ATP	$0.00
1763	TripCandy	https://coinmarketcap.com/currencies/tripcandy/	CANDY	$0.00
1764	Polis	https://coinmarketcap.com/currencies/polis/	POLIS	$0.04
1765	Teloscoin	https://coinmarketcap.com/currencies/teloscoin/	TELOS	$0.00
1766	Faceter	https://coinmarketcap.com/currencies/faceter/	FACE	$0.00
1767	REVIVAL	https://coinmarketcap.com/currencies/revival/	RVL	$0.00
1768	xRhodium	https://coinmarketcap.com/currencies/xrhodium/	XRC	$0.28
1769	APYSwap	https://coinmarketcap.com/currencies/apyswap/	APYS	$0.02
1770	Swarm	https://coinmarketcap.com/currencies/swarm-network/	SWM	$0.00
1771	Trittium	https://coinmarketcap.com/currencies/trittium/	TRTT	$0.00
1772	Dragon Kart	https://coinmarketcap.com/currencies/dragon-kart/	KART	$0.02
1773	MediShares	https://coinmarketcap.com/currencies/medishares/	MDS	$0.00
1774	Tap	https://coinmarketcap.com/currencies/tap/	XTP	$0.00
1775	OKCash	https://coinmarketcap.com/currencies/okcash/	OK	$0.00
1776	Streamity	https://coinmarketcap.com/currencies/streamity/	STM	$0.01
1777	Link Machine Learning	https://coinmarketcap.com/currencies/link-machine-learning/	LML	$0.00
1778	Samsunspor Fan Token	https://coinmarketcap.com/currencies/samsunspor-fan-token/	SAM	$0.84
1779	Falconswap	https://coinmarketcap.com/currencies/fsw-token/	FSW	$0.01
1780	Pinkcoin	https://coinmarketcap.com/currencies/pinkcoin/	PINK	$0.00
1781	Sint-Truidense Voetbalvereniging Fan Token	https://coinmarketcap.com/currencies/sint-truidense-voetbalvereniging/	STV	$1.65
1782	Props Token	https://coinmarketcap.com/currencies/props/	PROPS	$0.00
1783	2crazyNFT	https://coinmarketcap.com/currencies/2crazynft/	2CRZ	$0.00
1784	Cook Finance	https://coinmarketcap.com/currencies/cook-protocol/	COOK	$0.00
1785	Professional Fighters League Fan Token	https://coinmarketcap.com/currencies/professional-fighters-league-fan-token/	PFL	$0.25
1786	Sether	https://coinmarketcap.com/currencies/sether/	SETH	$0.02
1787	Smaugs NFT	https://coinmarketcap.com/currencies/smaugs-nft/	SMG	$0.01
1788	X8X Token	https://coinmarketcap.com/currencies/x8x-token/	X8X	$0.00
1789	SEEN	https://coinmarketcap.com/currencies/seen/	SEEN	$0.46
1790	Scry.info	https://coinmarketcap.com/currencies/scryinfo/	DDD	$0.00
1791	Phore	https://coinmarketcap.com/currencies/phore/	PHR	$0.01
1792	Venus BCH	https://coinmarketcap.com/currencies/venus-bch/	vBCH	$2.08
1793	Mochimo	https://coinmarketcap.com/currencies/mochimo/	MCM	$0.02
1794	Battle Hero	https://coinmarketcap.com/currencies/battle-hero/	BATH	$0.01
1795	Formation Fi	https://coinmarketcap.com/currencies/formation-fi/	FORM	$0.00
1796	UniMex Network	https://coinmarketcap.com/currencies/unimex-network/	UMX	$0.03
1797	Falcon Project	https://coinmarketcap.com/currencies/falcon-project/	FNT	$0.00
1798	ShipChain	https://coinmarketcap.com/currencies/shipchain/	SHIP	$0.00
1799	XP NETWORK	https://coinmarketcap.com/currencies/xp-network/	XPNET	$0.00
1800	Nerve Finance	https://coinmarketcap.com/currencies/nerve-finance/	NRV	$0.01
1801	Legend of Fantasy War	https://coinmarketcap.com/currencies/legend-of-fantasy-war/	LFW	$0.02116
1802	Delphy	https://coinmarketcap.com/currencies/delphy/	DPY	$0.00505
1803	Beer Money	https://coinmarketcap.com/currencies/beer-money/	BEER	$0.007713
1804	Orion Money	https://coinmarketcap.com/currencies/orion-money/	ORION	$0.003287
1805	OST	https://coinmarketcap.com/currencies/ost/	OST	$0.0003903
1806	DecentraWeb	https://coinmarketcap.com/currencies/decentraweb/	DWEB	$0.09275
1807	Verso	https://coinmarketcap.com/currencies/verso-token/	VSO	$0.003915
1808	Atmos	https://coinmarketcap.com/currencies/atmos/	ATMOS	$0.004942
1809	Creaticles	https://coinmarketcap.com/currencies/creaticles/	CRE8	$0.00394
1810	DAOstack	https://coinmarketcap.com/currencies/daostack/	GEN	$0.006258
1811	APY.Finance	https://coinmarketcap.com/currencies/apy-finance/	APY	$0.00
1812	Apollon Limassol	https://coinmarketcap.com/currencies/apollon-limassol/	APL	$0.93
1813	DigitalNote	https://coinmarketcap.com/currencies/digitalnote/	XDN	$0.00
1814	DPRating	https://coinmarketcap.com/currencies/dprating/	RATING	$0.00
1815	Playcent	https://coinmarketcap.com/currencies/playcent/	PCNT	$0.01
1816	Tidal Finance	https://coinmarketcap.com/currencies/tidal-finance/	TIDAL	$0.00
1817	Apron Network	https://coinmarketcap.com/currencies/apron-network/	APN	$0.00
1818	CryptoFlow	https://coinmarketcap.com/currencies/cryptoflow/	CFL	$0.00
1819	MurAll	https://coinmarketcap.com/currencies/murall/	PAINT	$0.00
1820	Substratum	https://coinmarketcap.com/currencies/substratum/	SUB	$0.00
1821	Crypto Sports Network	https://coinmarketcap.com/currencies/crypto-sports/	CSPN	$0.11
1822	ZUM TOKEN	https://coinmarketcap.com/currencies/zum-token/	ZUM	$0.00
1823	Beacon	https://coinmarketcap.com/currencies/beacon/	BECN	$0.17
1824	Scorum Coins	https://coinmarketcap.com/currencies/scorum-coins/	SCR	$0.01
1825	Waterfall DeFi	https://coinmarketcap.com/currencies/waterfall-defi/	WTF	$0.08
1826	Everex	https://coinmarketcap.com/currencies/everex/	EVX	$0.01
1827	Bottos	https://coinmarketcap.com/currencies/bottos/	BTO	$0.00
1828	Signature Chain	https://coinmarketcap.com/currencies/signature-chain/	SIGN	$0.00
1829	EarthFund	https://coinmarketcap.com/currencies/earthfund/	1EARTH	$0.00
1830	Public Index Network	https://coinmarketcap.com/currencies/public-index-network/	PIN	$0.00
1831	ByteNext	https://coinmarketcap.com/currencies/bytenext/	BNU	$0.02
1832	MicroBitcoin	https://coinmarketcap.com/currencies/microbitcoin/	MBC	$0.00
1833	eBoost	https://coinmarketcap.com/currencies/eboostcoin/	EBST	$0.00
1834	Sakura Bloom	https://coinmarketcap.com/currencies/sakura-bloom/	SKB	$0.00
1835	DePay	https://coinmarketcap.com/currencies/depay/	DEPAY	$0.14
1836	VegaWallet Token	https://coinmarketcap.com/currencies/vegawallet-token/	VGW	$0.02
1837	PlayGame	https://coinmarketcap.com/currencies/playgame/	PXG	$0.00
1838	HYCON	https://coinmarketcap.com/currencies/hycon/	HYC	$0.00
1839	Elamachain	https://coinmarketcap.com/currencies/elamachain/	ELAMA	$0.00
1840	Warena	https://coinmarketcap.com/currencies/warena/	RENA	$0.04
1841	1Million Token	https://coinmarketcap.com/currencies/1million-token/	1MT	$0.29
1842	Debitum	https://coinmarketcap.com/currencies/debitum-network/	DEB	$0.00
1843	Wolf Safe Poor People	https://coinmarketcap.com/currencies/wolf-safe-poor-people/	WSPP	$0.00
1844	AMATEN	https://coinmarketcap.com/currencies/amaten/	AMA	$0.04
1845	Ditto	https://coinmarketcap.com/currencies/ditto/	DITTO	$0.11
1846	Name Change Token	https://coinmarketcap.com/currencies/name-change-token/	NCT	$0.00
1847	Manna	https://coinmarketcap.com/currencies/manna/	MANNA	$0.00
1848	Heroes Chained	https://coinmarketcap.com/currencies/heroes-chained/	HEC	$0.08
1849	Nyzo	https://coinmarketcap.com/currencies/nyzo/	NYZO	$0.02
1850	Polinate	https://coinmarketcap.com/currencies/polinate/	POLI	$0.00
1851	Aryacoin	https://coinmarketcap.com/currencies/aryacoin/	AYA	$0.00
1852	CryptoTycoon	https://coinmarketcap.com/currencies/cryptotycoon/	CTT	$1.81
1853	LiteDoge	https://coinmarketcap.com/currencies/litedoge/	LDOGE	$0.00
1854	Natus Vincere Fan Token	https://coinmarketcap.com/currencies/natus-vincere-fan-token/	NAVI	$0.27
1855	Aluna.Social	https://coinmarketcap.com/currencies/aluna-social/	ALN	$0.01
1856	Origo	https://coinmarketcap.com/currencies/origo/	OGO	$0.00
1857	Sator	https://coinmarketcap.com/currencies/sator/	SAO	$0.02
1858	Banca	https://coinmarketcap.com/currencies/banca/	BANCA	$0.00
1859	Decentralized Vulnerability Platform	https://coinmarketcap.com/currencies/decentralized-vulnerability-platform/	DVP	$0.00
1860	Merculet	https://coinmarketcap.com/currencies/merculet/	MVP	$0.00
1861	Chainswap	https://coinmarketcap.com/currencies/chainswap/	ASAP	$0.01
1862	╧ДBitcoin	https://coinmarketcap.com/currencies/t-bitcoin/	╬дBTC	$844.11
1863	Moneynet	https://coinmarketcap.com/currencies/moneynet/	MNC	$0.00
1864	Lightstreams	https://coinmarketcap.com/currencies/lightstreams/	PHT	$0.01
1865	Motocoin	https://coinmarketcap.com/currencies/motocoin/	MOTO	$0.01
1866	CoTrader	https://coinmarketcap.com/currencies/cotrader/	COT	$0.00
1867	Relite Finance	https://coinmarketcap.com/currencies/relite-finance/	RELI	$0.00
1868	Kangal	https://coinmarketcap.com/currencies/kangal/	KANGAL	$0.00
1869	AcknoLedger	https://coinmarketcap.com/currencies/acknoledger/	ACK	$0.01
1870	RED	https://coinmarketcap.com/currencies/red/	RED	$0.00
1871	SugarBounce	https://coinmarketcap.com/currencies/sugarbounce/	TIP	$0.03
1872	SolanaSail Governance Token	https://coinmarketcap.com/currencies/solanasail-governance-token/	GSAIL	$0.07
1873	Drops Ownership Power	https://coinmarketcap.com/currencies/drops/	DOP	$0.22
1874	Remme	https://coinmarketcap.com/currencies/remme/	REM	$0.00
1875	Baanx	https://coinmarketcap.com/currencies/baanx/	BXX	$0.01
1876	Lepasa	https://coinmarketcap.com/currencies/lepasa/	LEPA	$0.04
1877	MesChain	https://coinmarketcap.com/currencies/meschain/	MES	$0.00
1878	Orient Walt	https://coinmarketcap.com/currencies/orient-walt/	HTDF	$0.00
1879	QChi	https://coinmarketcap.com/currencies/qchi/	QCH	$0.01
1880	Ravencoin Classic	https://coinmarketcap.com/currencies/ravencoin-classic/	RVC	$0.00
1881	Rune	https://coinmarketcap.com/currencies/rune/	RUNE	$18.34
1882	BEMIL Coin	https://coinmarketcap.com/currencies/bemil-coin/	BEM	$0.00
1883	Stake DAO	https://coinmarketcap.com/currencies/stake-dao/	SDT	$0.35
1884	MakiSwap	https://coinmarketcap.com/currencies/makiswap/	MAKI	$0.00
1885	MEDIA EYE NFT Portal	https://coinmarketcap.com/currencies/media-eye/	eYe	$0.00
1886	Shadows	https://coinmarketcap.com/currencies/shadows/	DOWS	$0.01
1887	OtterClam Finance	https://coinmarketcap.com/currencies/otterclam-finance-clam/	CLAM	$1.92
1888	Rune Shards	https://coinmarketcap.com/currencies/rune-shards/	RXS	$0.00
1889	Pepemon Pepeballs	https://coinmarketcap.com/currencies/pepemon-pepeballs/	PPBLZ	$17.14
1890	OptionRoom	https://coinmarketcap.com/currencies/optionroom/	ROOM	$0.02
1891	Titan Coin	https://coinmarketcap.com/currencies/titan-coin/	TTN	$0.00
1892	Parachute	https://coinmarketcap.com/currencies/parachute/	PAR	$0.00
1893	Digital Insurance Token	https://coinmarketcap.com/currencies/digital-insurance-token/	DIT	$0.00
1894	VelasPad	https://coinmarketcap.com/currencies/velaspad/	VLXPAD	$0.02
1895	TheForce Trade	https://coinmarketcap.com/currencies/theforce-trade/	FOC	$0.00
1896	Beamswap	https://coinmarketcap.com/currencies/beamswap/	GLINT	$0.00
1897	BLink	https://coinmarketcap.com/currencies/blink/	BLINK	$0.00
1898	SHIBAVAX	https://coinmarketcap.com/currencies/shibavax/	SHIBX	$0.00
1899	Evedo	https://coinmarketcap.com/currencies/evedo/	EVED	$0.02
1900	Endor Protocol	https://coinmarketcap.com/currencies/endor-protocol/	EDR	$0.00
1901	NearPad	https://coinmarketcap.com/currencies/nearpad/	PAD	$0.0531
1902	Blockpass	https://coinmarketcap.com/currencies/blockpass/	PASS	$0.001398
1903	Etherparty	https://coinmarketcap.com/currencies/etherparty/	FUEL	$0.0002334
1904	Orbitcoin	https://coinmarketcap.com/currencies/orbitcoin/	ORB	$0.07134
1905	Bezant	https://coinmarketcap.com/currencies/bezant/	BZNT	$0.0002602
1906	Myriad	https://coinmarketcap.com/currencies/myriad/	XMY	$0.000125
1907	Defina Finance	https://coinmarketcap.com/currencies/defina-finance/	FINA	$0.03026
1908	DOS Network	https://coinmarketcap.com/currencies/dos-network/	DOS	$0.001662
1909	EDC Blockchain	https://coinmarketcap.com/currencies/edc-blockchain/	EDC	$0.004845
1910	Education Ecosystem	https://coinmarketcap.com/currencies/education-ecosystem/	LEDU	$0.0009408
1911	Amon	https://coinmarketcap.com/currencies/amon/	AMN	$0.00
1912	Swarm City	https://coinmarketcap.com/currencies/swarm-city/	SWT	$0.03
1913	Blue Protocol	https://coinmarketcap.com/currencies/ethereum-blue/	BLUE	$0.01
1914	Subme	https://coinmarketcap.com/currencies/subme/	SUB	$0.00
1915	Zero	https://coinmarketcap.com/currencies/zero/	ZER	$0.02
1916	VAULT	https://coinmarketcap.com/currencies/vault/	VAULT	$0.37
1917	Coldstack	https://coinmarketcap.com/currencies/coldstack/	CLS	$0.14
1918	UGAS	https://coinmarketcap.com/currencies/ugas/	UGAS	$0.00
1919	Dev Protocol	https://coinmarketcap.com/currencies/dev-protocol/	DEV	$0.19
1920	Coinsbit Token	https://coinmarketcap.com/currencies/coinsbit-token/	CNB	$0.00
1921	Yield Protocol	https://coinmarketcap.com/currencies/yield-protocol/	YIELD	$0.01
1922	Ethereum Stake	https://coinmarketcap.com/currencies/ethereum-stake/	ETHYS	$1.07
1923	XcelToken Plus	https://coinmarketcap.com/currencies/xceltoken-plus/	XLAB	$0.00
1924	ROCKI	https://coinmarketcap.com/currencies/rocki/	ROCKI	$0.03
1925	MIB Coin	https://coinmarketcap.com/currencies/mib-coin/	MIB	$0.00
1926	Thisoption	https://coinmarketcap.com/currencies/thisoption/	TONS	$0.04
1927	aiRight	https://coinmarketcap.com/currencies/airight/	AIRI	$0.00
1928	ETNA Network	https://coinmarketcap.com/currencies/etna-network/	ETNA	$0.02
1929	Minereum	https://coinmarketcap.com/currencies/minereum/	MNE	$0.01
1930	Club Atletico Independiente	https://coinmarketcap.com/currencies/club-atletico-independiente/	CAI	$0.32
1931	Plair	https://coinmarketcap.com/currencies/plair/	PLA	$0.00
1932	Add.xyz	https://coinmarketcap.com/currencies/add-xyz/	ADD	$0.03
1933	DMarket	https://coinmarketcap.com/currencies/dmarket/	DMT	$0.00
1934	Berry Data	https://coinmarketcap.com/currencies/berry-data/	BRY	$0.10
1935	GoWithMi	https://coinmarketcap.com/currencies/gowithmi/	GMAT	$0.00
1936	IHT Real Estate Protocol	https://coinmarketcap.com/currencies/iht-real-estate-protocol/	IHT	$0.00
1937	NANJCOIN	https://coinmarketcap.com/currencies/nanjcoin/	NANJ	$0.00
1938	FRAKT Token	https://coinmarketcap.com/currencies/frakt-token/	FRKT	$0.04
1939	renDOGE	https://coinmarketcap.com/currencies/rendoge/	RENDOGE	$0.07
1940	Basis Cash	https://coinmarketcap.com/currencies/basis-cash/	BAC	$0.00
1941	Pascal	https://coinmarketcap.com/currencies/pascal/	PASC	$0.01
1942	adbank	https://coinmarketcap.com/currencies/adbank/	ADB	$0.00
1943	BUZZCoin	https://coinmarketcap.com/currencies/buzzcoin/	BUZZ	$0.00
1944	DogeCash	https://coinmarketcap.com/currencies/dogecash/	DOGEC	$0.01
1945	Katalyo	https://coinmarketcap.com/currencies/katalyo/	KTLYO	$0.02
1946	NeoNomad Finance	https://coinmarketcap.com/currencies/neonomad-finance/	NNI	$0.05
1947	LootBox.io	https://coinmarketcap.com/currencies/nftlootbox/	LOOT	$8.75
1948	Elpis Battle	https://coinmarketcap.com/currencies/elpis-battle/	EBA	$0.01
1949	IONChain	https://coinmarketcap.com/currencies/ionchain/	IONC	$0.00
1950	Connectome	https://coinmarketcap.com/currencies/connectome/	CNTM	$0.16
1951	GoldMint	https://coinmarketcap.com/currencies/goldmint/	MNTP	$0.10
1952	Kineko	https://coinmarketcap.com/currencies/kineko/	KKO	$0.02
1953	Niftify	https://coinmarketcap.com/currencies/niftify/	NIFT	$0.02
1954	4THPILLAR TECHNOLOGIES	https://coinmarketcap.com/currencies/4thpillar-technologies/	FOUR	$0.00
1955	OpenSwap	https://coinmarketcap.com/currencies/openswap/	OSWAP	$0.01
1956	Zennies	https://coinmarketcap.com/currencies/zennies/	ZENI	$0.00
1957	Planet Inverse	https://coinmarketcap.com/currencies/project-inverse/	XIV	$0.01
1958	YEE	https://coinmarketcap.com/currencies/yee/	YEE	$0.00
1959	Digital Reserve Currency	https://coinmarketcap.com/currencies/digital-reserve-currency/	DRC	$0.00
1960	Qwertycoin	https://coinmarketcap.com/currencies/qwertycoin/	QWC	$0.00
1961	TotemFi	https://coinmarketcap.com/currencies/totemfi/	TOTM	$0.03
1962	Jarvis+	https://coinmarketcap.com/currencies/jarvis/	JAR	$0.00
1963	IXT	https://coinmarketcap.com/currencies/ixledger/	IXT	$0.01
1964	Team Heretics Fan Token	https://coinmarketcap.com/currencies/team-heretics-fan-token/	TH	$0.44
1965	Alanyaspor Fan Token	https://coinmarketcap.com/currencies/alanyaspor-fan-token/	ALA	$0.61
1966	AudioCoin	https://coinmarketcap.com/currencies/audiocoin/	ADC	$0.00
1967	Step Finance	https://coinmarketcap.com/currencies/step-finance/	STEP	$0.05
1968	Ceres	https://coinmarketcap.com/currencies/ceres/	CERES	$34.01
1969	CoinFi	https://coinmarketcap.com/currencies/coinfi/	COFI	$0.00
1970	DINGO TOKEN	https://coinmarketcap.com/currencies/dingo-token/	DINGO	$0.00
1971	Centric Swap	https://coinmarketcap.com/currencies/centric-swap/	CNS	$0.00
1972	LYNC Network	https://coinmarketcap.com/currencies/lync-network/	LYNC	$0.19
1973	Pakcoin	https://coinmarketcap.com/currencies/pakcoin/	PAK	$0.00
1974	Alliance Fan Token	https://coinmarketcap.com/currencies/alliance-fan-token/	ALL	$0.18
1975	Creo Engine	https://coinmarketcap.com/currencies/creo-engine/	CREO	$0.04
1976	Pivot Token	https://coinmarketcap.com/currencies/pivot-token/	PVT	$0.00
1977	Pigeoncoin	https://coinmarketcap.com/currencies/pigeoncoin/	PGN	$0.00
1978	Veil	https://coinmarketcap.com/currencies/veil/	VEIL	$0.00
1979	SakeToken	https://coinmarketcap.com/currencies/sake-token/	SAKE	$0.00
1980	RING X PLATFORM	https://coinmarketcap.com/currencies/ring-x-platform/	RINGX	$0.00
1981	HEAT	https://coinmarketcap.com/currencies/heat-ledger/	HEAT	$0.00
1982	Citadel.one	https://coinmarketcap.com/currencies/citadel-one/	XCT	$0.02
1983	Dether	https://coinmarketcap.com/currencies/dether/	DTH	$0.00
1984	Universidad de Chile Fan Token	https://coinmarketcap.com/currencies/universidad-de-chile-fan-token/	UCH	$0.48
1985	HeroesTD	https://coinmarketcap.com/currencies/heroes-td/	HTD	$0.01
1986	Mettalex	https://coinmarketcap.com/currencies/mettalex/	MTLX	$0.16
1987	Stobox Token	https://coinmarketcap.com/currencies/stobox-token/	STBU	$0.00
1988	Bounty0x	https://coinmarketcap.com/currencies/bounty0x/	BNTY	$0.00
1989	DeFi Bids	https://coinmarketcap.com/currencies/defi-bids/	BID	$0.01
1990	TurtleNetwork	https://coinmarketcap.com/currencies/turtlenetwork/	TN	$0.00
1991	MyWish	https://coinmarketcap.com/currencies/mywish/	WISH	$0.02
1992	OLXA	https://coinmarketcap.com/currencies/olxa/	OLXA	$0.00
1993	Rise	https://coinmarketcap.com/currencies/rise/	RISE	$0.00
1994	Kingdom Game 4.0	https://coinmarketcap.com/currencies/kingdom-game-4/	KDG	$0.00
1995	Silver Stonks	https://coinmarketcap.com/currencies/silver-stonks/	SSTX	$0.00
1996	BitcoinPoS	https://coinmarketcap.com/currencies/bitcoinpos/	BPS	$0.03
1997	Golden Goose	https://coinmarketcap.com/currencies/golden-goose/	GOLD	$0.00
1998	DinoSwap	https://coinmarketcap.com/currencies/dinoswap/	DINO	$0.00
1999	Save Environment Token	https://coinmarketcap.com/currencies/save-environment-token/	SET	$0.18
2000	SonoCoin	https://coinmarketcap.com/currencies/sonocoin/	SONO	$0.01
2001	FansTime	https://coinmarketcap.com/currencies/fanstime/	FTI	$0.00005925
2002	Zetacoin	https://coinmarketcap.com/currencies/zetacoin/	ZET	$0.0009614
2003	Ethernaal	https://coinmarketcap.com/currencies/ethernaal/	NAAL	$0.2298
2004	Freicoin	https://coinmarketcap.com/currencies/freicoin/	FRC	$0.002884
2005	Flixxo	https://coinmarketcap.com/currencies/flixxo/	FLIXX	$0.001968
2006	ASPO World	https://coinmarketcap.com/currencies/aspo-world/	ASPO	$0.006469
2007	XTRABYTES	https://coinmarketcap.com/currencies/xtrabytes/	XBY	$0.0003846
2008	Legia Warsaw Fan Token	https://coinmarketcap.com/currencies/legia-warsaw-fan-token/	LEG	$0.3869
2009	ETHA Lend	https://coinmarketcap.com/currencies/etha-lend/	ETHA	$0.01763
2010	TradeStars	https://coinmarketcap.com/currencies/tradestars/	TSX	$0.01218
2011	OracleChain	https://coinmarketcap.com/currencies/oraclechain/	OCT	$0.01
2012	Blockmason Credit Protocol	https://coinmarketcap.com/currencies/blockmason/	BCPT	$0.00
2013	Spaceswap MILK2	https://coinmarketcap.com/currencies/spaceswap/	MILK2	$0.02
2014	Qbao	https://coinmarketcap.com/currencies/qbao/	QBT	$0.00
2015	Lead Wallet	https://coinmarketcap.com/currencies/lead-wallet/	LEAD	$0.00
2016	Ink	https://coinmarketcap.com/currencies/ink/	INK	$0.00
2017	World Token	https://coinmarketcap.com/currencies/world-token/	WORLD	$0.00
2018	Zebi Token	https://coinmarketcap.com/currencies/zebi-token/	ZEBI	$0.00
2019	Aeron	https://coinmarketcap.com/currencies/aeron/	ARNX	$0.01
2020	CoverCompared	https://coinmarketcap.com/currencies/covercompared/	CVR	$0.00
2021	Cryptopolis	https://coinmarketcap.com/currencies/cryptopolis/	CPO	$0.01
2022	Dynamix	https://coinmarketcap.com/currencies/dynamix/	DYNA	$0.00
2023	WorkQuest Token	https://coinmarketcap.com/currencies/workquest/	WQT	$0.00
2024	BOMB	https://coinmarketcap.com/currencies/bomb/	BOMB	$0.18
2025	Tolar	https://coinmarketcap.com/currencies/tolar/	TOL	$0.00
2026	2key.network	https://coinmarketcap.com/currencies/2key-network/	2KEY	$0.00
2027	Vodra	https://coinmarketcap.com/currencies/vodra/	VDR	$0.00
2028	NFTify	https://coinmarketcap.com/currencies/nftify/	N1	$0.01
2029	FantomStarter	https://coinmarketcap.com/currencies/fantomstarter/	FS	$0.00
2030	ADA BOY	https://coinmarketcap.com/currencies/ada-boy/	ADABOY	$0.00
2031	Filecash	https://coinmarketcap.com/currencies/filecash/	FIC	$0.01
2032	Blockchain Cuties Universe Governance	https://coinmarketcap.com/currencies/blockchain-cuties-universe/	BCUG	$0.11
2033	Etho Protocol	https://coinmarketcap.com/currencies/etho-protocol/	ETHO	$0.03
2034	StakerDAO	https://coinmarketcap.com/currencies/stakerdao/	STKR	$0.01
2035	Forest Knight	https://coinmarketcap.com/currencies/forest-knight/	KNIGHT	$0.02
2036	Gamerse	https://coinmarketcap.com/currencies/gamerse/	LFG	$0.00
2037	Insured Finance	https://coinmarketcap.com/currencies/insured-finance/	INFI	$0.00
2038	PRIVATEUM INITIATIVE	https://coinmarketcap.com/currencies/privateum-initiative/	PVM	$0.02
2039	Ancient Kingdom	https://coinmarketcap.com/currencies/ancient-kingdom/	DOM	$0.00
2040	Genesis Shards	https://coinmarketcap.com/currencies/genesis-shards/	GS	$0.01
2041	ZENZO	https://coinmarketcap.com/currencies/zenzo/	ZNZ	$0.00
2042	PirateCash	https://coinmarketcap.com/currencies/piratecash/	PIRATE	$0.01
2043	BeatzCoin	https://coinmarketcap.com/currencies/beatzcoin/	BTZC	$0.00
2044	Auctus	https://coinmarketcap.com/currencies/auctus/	AUC	$0.00
2045	bAlpha	https://coinmarketcap.com/currencies/balpha/	BALPHA	$8.13
2046	Royale Finance	https://coinmarketcap.com/currencies/royale-finance/	ROYA	$0.00
2047	Power Index Pool Token	https://coinmarketcap.com/currencies/power-index-pool-token/	PIPT	$0.73
2048	Etherland	https://coinmarketcap.com/currencies/etherland/	ELAND	$0.00
2049	Realio Network	https://coinmarketcap.com/currencies/realio-network/	RIO	$0.02
2050	Ethereum Gold	https://coinmarketcap.com/currencies/ethereum-gold/	ETG	$0.01
2051	CoinDeal Token	https://coinmarketcap.com/currencies/coindeal-token/	CDL	$0.00
2052	BitCapitalVendor	https://coinmarketcap.com/currencies/bitcapitalvendor/	BCV	$0.00
2053	Ether Zero	https://coinmarketcap.com/currencies/ether-zero/	ETZ	$0.00
2054	Lendefi	https://coinmarketcap.com/currencies/lendefi/	LDFI	$0.00
2055	NIX	https://coinmarketcap.com/currencies/nix/	NIX	$0.00
2056	QUINADS	https://coinmarketcap.com/currencies/quinads/	QUIN	$0.00
2057	ATLANT	https://coinmarketcap.com/currencies/atlant/	ATL	$0.00
2058	Spaceswap SHAKE	https://coinmarketcap.com/currencies/shake/	SHAKE	$184.99
2059	Dinamo Zagreb Fan Token	https://coinmarketcap.com/currencies/dinamo-zagreb-fan-token/	DZG	$0.30
2060	Heart Number	https://coinmarketcap.com/currencies/heartnumber/	HTN	$0.00
2061	Indorse Token	https://coinmarketcap.com/currencies/indorse-token/	IND	$0.00
2062	Coinracer	https://coinmarketcap.com/currencies/coinracer/	CRACE	$0.00
2063	BlockMesh	https://coinmarketcap.com/currencies/blockmesh/	BMH	$0.00
2064	Innova	https://coinmarketcap.com/currencies/innova/	INN	$0.02
2065	8X8 PROTOCOL	https://coinmarketcap.com/currencies/8x8-protocol/	EXE	$0.00
2066	Cryptonite	https://coinmarketcap.com/currencies/cryptonite/	XCN	$0.00
2067	Wrapped Gen-0 CryptoKitties	https://coinmarketcap.com/currencies/wrapped-gen-0-cryptokitties/	WG0	$70.82
2068	Beyondfi	https://coinmarketcap.com/currencies/beyond-finance/	BYN	$0.02
2069	Ubex	https://coinmarketcap.com/currencies/ubex/	UBEX	$0.00
2070	Argon	https://coinmarketcap.com/currencies/argon/	ARGON	$0.00
2071	Bitcoin Green	https://coinmarketcap.com/currencies/bitcoin-green/	BITG	$0.01
2072	ExclusiveCoin	https://coinmarketcap.com/currencies/exclusivecoin/	EXCL	$0.02
2073	DopeCoin	https://coinmarketcap.com/currencies/dopecoin/	DOPE	$0.00
2074	Stox	https://coinmarketcap.com/currencies/stox/	STX	$0.00
2075	ClassicDoge	https://coinmarketcap.com/currencies/classicdoge-io/	XDOGE	$0.00
2076	GoByte	https://coinmarketcap.com/currencies/gobyte/	GBX	$0.01
2077	Citadel	https://coinmarketcap.com/currencies/citadel/	CTL	$0.01
2078	QUAI DAO	https://coinmarketcap.com/currencies/quai-dao/	QUAI	$0.00
2079	Alpha Token	https://coinmarketcap.com/currencies/alpha-token/	A	$0.00
2080	Netko	https://coinmarketcap.com/currencies/netko/	NETKO	$0.01
2081	DAOventures	https://coinmarketcap.com/currencies/daoventures/	DVD	$0.01
2082	ACoconut	https://coinmarketcap.com/currencies/acoconut/	AC	$0.05
2083	Rage Fan	https://coinmarketcap.com/currencies/rage-fan/	RAGE	$0.00
2084	Dracula Token	https://coinmarketcap.com/currencies/dracula-token/	DRC	$0.01
2085	Kobocoin	https://coinmarketcap.com/currencies/kobocoin/	KOBO	$0.01
2086	PolkaDomain	https://coinmarketcap.com/currencies/polkadomain/	NAME	$0.04
2087	MotaCoin	https://coinmarketcap.com/currencies/motacoin/	MOTA	$0.00
2088	Snowball	https://coinmarketcap.com/currencies/snowball-finance/	SNOB	$0.03
2089	LunchMoney	https://coinmarketcap.com/currencies/lunchmoney/	LMY	$0.00
2090	Expanse	https://coinmarketcap.com/currencies/expanse/	EXP	$0.01
2091	Robust Token	https://coinmarketcap.com/currencies/robust-protocol/	RBT	$5.28
2092	Ethereum Gold Project	https://coinmarketcap.com/currencies/ethereum-gold-project/	ETGP	$0.00
2093	Azuki	https://coinmarketcap.com/currencies/azuki/	AZUKI	$0.01
2094	Lethean	https://coinmarketcap.com/currencies/lethean/	LTHN	$0.00
2095	GeoDB	https://coinmarketcap.com/currencies/geodb/	GEO	$0.00
2096	Node Runners	https://coinmarketcap.com/currencies/node-runners/	NDR	$5.06
2097	Asch	https://coinmarketcap.com/currencies/asch/	XAS	$0.00
2098	HOQU	https://coinmarketcap.com/currencies/hoqu/	HQX	$0.00
2099	SPINDLE	https://coinmarketcap.com/currencies/spindle/	SPD	$0.00
2100	Masari	https://coinmarketcap.com/currencies/masari/	MSR	$0.01
2101	Masari	https://coinmarketcap.com/currencies/masari/	MSR	$0.007308
2102	Energo	https://coinmarketcap.com/currencies/energo/	TSL	$0.0002024
2103	Global Crypto Alliance	https://coinmarketcap.com/currencies/global-crypto-alliance/	CALL	$0.001539
2104	Keep4r	https://coinmarketcap.com/currencies/keep4r/	KP4R	$1.40
2105	Ethereum Yield	https://coinmarketcap.com/currencies/ethereum-yield/	ETHY	$1.21
2106	Po.et	https://coinmarketcap.com/currencies/poet/	POE	$0.00003847
2107	Genesis Worlds	https://coinmarketcap.com/currencies/genesis-worlds/	GENESIS	$0.001666
2108	InterValue	https://coinmarketcap.com/currencies/intervalue/	INVE	$0.0009421
2109	NeuroChain	https://coinmarketcap.com/currencies/neurochain/	NCC	$0.0002616
2110	Swing	https://coinmarketcap.com/currencies/swing/	SWING	$0.02058
2111	Ubricoin	https://coinmarketcap.com/currencies/ubricoin/	UBN	$0.00
2112	DomRaider	https://coinmarketcap.com/currencies/domraider/	DRT	$0.00
2113	ChronoBase	https://coinmarketcap.com/currencies/chronobase/	TIK	$0.30
2114	Gems 	https://coinmarketcap.com/currencies/gems-protocol/	GEM	$0.00
2115	Peanut	https://coinmarketcap.com/currencies/peanut/	NUX	$0.01
2116	ORAO Network	https://coinmarketcap.com/currencies/orao-network/	ORAO	$0.00
2117	Zeepin	https://coinmarketcap.com/currencies/zeepin/	ZPT	$0.00
2118	Inex Project	https://coinmarketcap.com/currencies/inex-project/	INEX	$0.00
2119	Felixo Coin	https://coinmarketcap.com/currencies/felixo-coin/	FLX	$0.00
2120	Neurotoken	https://coinmarketcap.com/currencies/neurotoken/	NTK	$0.00
2121	Kuverit	https://coinmarketcap.com/currencies/kuverit/	KUV	$0.00
2122	Trollcoin	https://coinmarketcap.com/currencies/trollcoin/	TROLL	$0.00
2123	NFX Coin	https://coinmarketcap.com/currencies/nfx-coin/	NFXC	$0.00
2124	Bobo Cash	https://coinmarketcap.com/currencies/bobo-cash/	BOBO	$0.00
2125	Lepricon	https://coinmarketcap.com/currencies/lepricon/	L3P	$0.00
2126	AstroTools	https://coinmarketcap.com/currencies/astrotools/	ASTRO	$0.04
2127	Internet of Energy Network	https://coinmarketcap.com/currencies/internet-of-energy-network/	IOEN	$0.01
2128	Penta	https://coinmarketcap.com/currencies/penta/	PNT	$0.00
2129	Noir	https://coinmarketcap.com/currencies/noir/	NOR	$0.01
2130	SoMee.Social [OLD]	https://coinmarketcap.com/currencies/ongsocial/	ONG	$0.00
2131	WeTrust	https://coinmarketcap.com/currencies/trust/	TRST	$0.00
2132	BlueCoin	https://coinmarketcap.com/currencies/bluecoin/	BLU	$0.00
2133	Shadow Token	https://coinmarketcap.com/currencies/shadow-token/	SHDW	$0.02
2134	PoSW Coin	https://coinmarketcap.com/currencies/posw-coin/	POSW	$0.00
2135	Tornado	https://coinmarketcap.com/currencies/tornado/	TCORE	$18.25
2136	Bitether	https://coinmarketcap.com/currencies/bitether/	BTR	$0.00
2137	Wrapped Basic CryptoKitties	https://coinmarketcap.com/currencies/wrapped-cryptokitties/	WCK	$1.66
2138	Rigel Protocol	https://coinmarketcap.com/currencies/rigel-protocol/	RGP	$0.07
2139	RMPL	https://coinmarketcap.com/currencies/rmpl/	RMPL	$0.18
2140	Shar Pei	https://coinmarketcap.com/currencies/shar-pei-puppy/	PUPPY	$0.00
2141	Mochi Market	https://coinmarketcap.com/currencies/mochi-market/	MOMA	$0.00
2142	Cosmo Coin	https://coinmarketcap.com/currencies/cosmo-coin/	COSM	$0.00
2143	Catex Token	https://coinmarketcap.com/currencies/catex-token/	CATT	$0.00
2144	Birdchain	https://coinmarketcap.com/currencies/birdchain/	BIRD	$0.00
2145	Smartshare	https://coinmarketcap.com/currencies/smartshare/	SSP	$0.00
2146	Iridium	https://coinmarketcap.com/currencies/iridium/	IRD	$0.00
2147	Maxcoin	https://coinmarketcap.com/currencies/maxcoin/	MAX	$0.00
2148	KnoxFS (New)	https://coinmarketcap.com/currencies/knoxfs-new/	KFX	$0.19
2149	Bitstar	https://coinmarketcap.com/currencies/bitstar/	BITS	$0.01
2150	Xiotri	https://coinmarketcap.com/currencies/xiotri/	XIOT	$23.89
2151	Coin Artist	https://coinmarketcap.com/currencies/coin-artist/	COIN	$0.10
2152	Sessia	https://coinmarketcap.com/currencies/sessia/	KICKS	$0.01
2153	YFDAI.FINANCE	https://coinmarketcap.com/currencies/yfdai-finance/	YF-DAI	$26.15
2154	Leverj Gluon	https://coinmarketcap.com/currencies/leverj-gluon/	L2	$0.00
2155	The Corgi of PolkaBridge	https://coinmarketcap.com/currencies/the-corgi-of-polkabridge/	CORGIB	$0.00
2156	DoYourTip	https://coinmarketcap.com/currencies/doyourtip/	DYT	$0.07
2157	Trinity Network Credit	https://coinmarketcap.com/currencies/trinity-network-credit/	TNC	$0.00
2158	Jetcoin	https://coinmarketcap.com/currencies/jetcoin/	JET	$0.01
2159	Datamine	https://coinmarketcap.com/currencies/datamine/	DAM	$0.03
2160	Ormeus Cash	https://coinmarketcap.com/currencies/ormeus-cash/	OMC	$0.00
2161	PWR Coin	https://coinmarketcap.com/currencies/powercoin/	PWR	$0.00
2162	Shield Protocol	https://coinmarketcap.com/currencies/shield-protocol/	SHIELD	$0.42
2163	2GIVE	https://coinmarketcap.com/currencies/2give/	2GIVE	$0.00
2164	Neural Protocol	https://coinmarketcap.com/currencies/neural-protocol/	NRP	$0.00
2165	Rentberry	https://coinmarketcap.com/currencies/rentberry/	BERRY	$0.00
2166	Peseta Digital	https://coinmarketcap.com/currencies/pesetacoin/	PTD	$0.00
2167	DFSocial Gaming	https://coinmarketcap.com/currencies/defisocial-gaming-new/	DFSG	$0.01
2168	DDKoin	https://coinmarketcap.com/currencies/ddkoin/	DDK	$0.06
2169	Savix	https://coinmarketcap.com/currencies/savix/	SVX	$1.50
2170	Agrello	https://coinmarketcap.com/currencies/agrello-delta/	DLT	$0.00
2171	Doki Doki Finance	https://coinmarketcap.com/currencies/doki-doki-finance/	DOKI	$1.98
2172	Friendz	https://coinmarketcap.com/currencies/friends/	FDZ	$0.00
2173	Fabric	https://coinmarketcap.com/currencies/fabric/	FAB	$0.00
2174	Playgroundz	https://coinmarketcap.com/currencies/playgroundz/	IOG	$0.00
2175	Seigniorage Shares	https://coinmarketcap.com/currencies/seigniorage-shares/	SHARE	$0.00
2176	CryptoBonusMiles	https://coinmarketcap.com/currencies/cryptobonusmiles/	CBM	$0.00
2177	Curio Governance	https://coinmarketcap.com/currencies/curio-governance/	CGT	$0.01
2178	Typhoon Network	https://coinmarketcap.com/currencies/typhoon-network/	TYPH	$0.01
2179	Rubies	https://coinmarketcap.com/currencies/rubies/	RBIES	$0.01
2180	Collateral Pay	https://coinmarketcap.com/currencies/collateral-pay/	COLL	$0.02
2181	FuzeX	https://coinmarketcap.com/currencies/fuzex/	FXT	$0.00
2182	HashCoin	https://coinmarketcap.com/currencies/hashcoin/	HSC	$0.00
2183	Enigma	https://coinmarketcap.com/currencies/enigma/	ENG	$0.01
2184	Sharder	https://coinmarketcap.com/currencies/sharder/	SS	$0.00
2185	AquariusCoin	https://coinmarketcap.com/currencies/aquariuscoin/	ARCO	$0.02
2186	RigoBlock	https://coinmarketcap.com/currencies/rigoblock/	GRG	$0.03
2187	Niobium Coin	https://coinmarketcap.com/currencies/niobium-coin/	NBC	$0.00
2188	Donut	https://coinmarketcap.com/currencies/donut/	DONUT	$0.00
2189	extraDNA	https://coinmarketcap.com/currencies/extradna/	XDNA	$0.00
2190	PengolinCoin	https://coinmarketcap.com/currencies/pengolincoin/	PGO	$0.00
2191	Nerva	https://coinmarketcap.com/currencies/nerva/	XNV	$0.01
2192	Yearn Secure	https://coinmarketcap.com/currencies/yearn-secure/	YSEC	$0.09
2193	MarsX	https://coinmarketcap.com/currencies/marsx/	MX	$0.00
2194	CROAT	https://coinmarketcap.com/currencies/croat/	CROAT	$0.00
2195	Big Digital Shares	https://coinmarketcap.com/currencies/big-digital-shares/	BDS	$0.00
2196	Knight War - The Holy Trio	https://coinmarketcap.com/currencies/knight-war/	KWS	$0.00
2197	Nsure.Network	https://coinmarketcap.com/currencies/nsure-network/	NSURE	$0.02
2198	PluraCoin	https://coinmarketcap.com/currencies/pluracoin/	PLURA	$0.00
2199	MODEL-X-coin	https://coinmarketcap.com/currencies/model-x-coin/	MODX	$0.01
2200	Zeusshield	https://coinmarketcap.com/currencies/zeusshield/	ZSC	$0.00
2201	Zeusshield	https://coinmarketcap.com/currencies/zeusshield/	ZSC	$0.00007507
2202	Skyrim Finance	https://coinmarketcap.com/currencies/skyrim-finance/	SKYRIM	$0.004314
2203	EtherGem	https://coinmarketcap.com/currencies/ethergem/	EGEM	$0.004457
2204	Themis	https://coinmarketcap.com/currencies/themis/	GET	$0.0001442
2205	Eternity	https://coinmarketcap.com/currencies/eternity/	ENT	$0.009039
2206	AFEN Blockchain	https://coinmarketcap.com/currencies/afen-blockchain/	AFEN	$0.0005841
2207	Equal	https://coinmarketcap.com/currencies/equal/	EQL	$0.0002104
2208	Arqma	https://coinmarketcap.com/currencies/arqma/	ARQ	$0.006154
2209	Stipend	https://coinmarketcap.com/currencies/stipend/	SPD	$0.006422
2210	EDUCare	https://coinmarketcap.com/currencies/educare/	EKT	$0.0001157
2211	Lition	https://coinmarketcap.com/currencies/lition/	LIT	$0.00
2212	BiblePay	https://coinmarketcap.com/currencies/biblepay/	BBP	$0.00
2213	SnodeCoin	https://coinmarketcap.com/currencies/snodecoin/	SND	$0.00
2214	Sentinel Chain	https://coinmarketcap.com/currencies/sentinel-chain/	SENC	$0.00
2215	Maincoin	https://coinmarketcap.com/currencies/maincoin/	MNC	$0.00
2216	NFTX Hashmasks Index	https://coinmarketcap.com/currencies/nftx-hashmasks-index/	MASK	$459.03
2217	x42 Protocol	https://coinmarketcap.com/currencies/x42-protocol/	X42	$0.00
2218	BlitzPick	https://coinmarketcap.com/currencies/blitzpredict/	XBP	$0.00
2219	Lucid Lands	https://coinmarketcap.com/currencies/lucid-lands/	LLG	$0.00
2220	TagCoin	https://coinmarketcap.com/currencies/tagcoin/	TAG	$0.01
2221	EOS TRUST	https://coinmarketcap.com/currencies/eos-trust/	EOST	$0.00
2222	Cobinhood	https://coinmarketcap.com/currencies/cobinhood/	COB	$0.00
2223	Phoenix Token	https://coinmarketcap.com/currencies/phoenix-token/	PHX	$0.00
2224	Team Vitality Fan Token	https://coinmarketcap.com/currencies/team-vitality-fan-token/	VIT	$0.14
2225	EnterCoin	https://coinmarketcap.com/currencies/entercoin/	ENTRC	$0.01
2226	keyTango	https://coinmarketcap.com/currencies/keytango/	TANGO	$0.01
2227	EveryCoin 	https://coinmarketcap.com/currencies/everycoin/	EVY	$0.00
2228	Cryptojacks	https://coinmarketcap.com/currencies/cryptojacks/	CJ	$0.00
2229	Yocoin	https://coinmarketcap.com/currencies/yocoin/	YOC	$0.00
2230	MenaPay	https://coinmarketcap.com/currencies/menapay/	MPAY	$0.00
2231	Freedomcoin	https://coinmarketcap.com/currencies/trumpcoin/	FREED	$0.01
2232	BarterTrade	https://coinmarketcap.com/currencies/bartertrade/	BART	$0.00
2233	Warp Finance	https://coinmarketcap.com/currencies/warp-finance/	WARP	$16.46
2234	uPlexa	https://coinmarketcap.com/currencies/uplexa/	UPX	$0.00
2235	Commercium	https://coinmarketcap.com/currencies/commercium/	CMM	$0.00
2236	Bunicorn	https://coinmarketcap.com/currencies/bunicorn/	BUNI	$0.00
2237	UniFarm	https://coinmarketcap.com/currencies/unifarm/	UFARM	$0.00
2238	NativeCoin	https://coinmarketcap.com/currencies/native-coin/	N8V	$0.00
2239	Landbox	https://coinmarketcap.com/currencies/landbox/	LAND	$0.00
2240	ZeuxCoin	https://coinmarketcap.com/currencies/zeuxcoin/	ZUC	$0.00
2241	Insight Protocol	https://coinmarketcap.com/currencies/insight-protocol/	INX	$0.00
2242	BidiPass	https://coinmarketcap.com/currencies/bidipass/	BDP	$0.00
2243	Matryx	https://coinmarketcap.com/currencies/matryx/	MTX	$0.00
2244	GokuMarket Credit	https://coinmarketcap.com/currencies/gokumarket-credit/	GMC	$0.02
2245	Bitgear	https://coinmarketcap.com/currencies/bitgear/	GEAR	$0.00
2246	InvestFeed	https://coinmarketcap.com/currencies/investfeed/	IFT	$0.00
2247	Moniwar	https://coinmarketcap.com/currencies/moniwar/	MOWA	$0.01
2248	SeChain	https://coinmarketcap.com/currencies/sechain/	SNN	$0.00
2249	Samusky	https://coinmarketcap.com/currencies/samusky/	SAMU	$0.00
2250	HeroFi	https://coinmarketcap.com/currencies/herofi/	HEROEGG	$0.00
2251	Swap	https://coinmarketcap.com/currencies/swap/	XWP	$0.00
2252	IQ.cash	https://coinmarketcap.com/currencies/iqcash/	IQ	$0.01
2253	ZCore	https://coinmarketcap.com/currencies/zcore/	ZCR	$0.01
2254	MojoCoin	https://coinmarketcap.com/currencies/mojocoin/	MOJO	$0.01
2255	GoldenPyrex	https://coinmarketcap.com/currencies/goldenpyrex/	GPYX	$0.01
2256	ShoeFy	https://coinmarketcap.com/currencies/shoefy/	SHOE	$0.01
2257	reflect.finance	https://coinmarketcap.com/currencies/reflect-finance/	RFI	$0.01
2258	Novara Calcio Fan Token	https://coinmarketcap.com/currencies/novara-calcio-fan-token/	NOV	$0.35
2259	SHIELD	https://coinmarketcap.com/currencies/shield-xsh/	XSH	$0.00
2260	DeFi Degen Land	https://coinmarketcap.com/currencies/defi-degen-land/	DDL	$0.00
2261	Fabwelt	https://coinmarketcap.com/currencies/fabwelt/	WELT	$0.00
2262	Digitalcoin	https://coinmarketcap.com/currencies/digitalcoin/	DGC	$0.00
2263	CafeSwap Token	https://coinmarketcap.com/currencies/cafeswap-token/	BREW	$0.00
2264	Vox.Finance	https://coinmarketcap.com/currencies/vox-finance/	VOX	$0.89
2265	TrezarCoin	https://coinmarketcap.com/currencies/trezarcoin/	TZC	$0.00
2266	Zoracles	https://coinmarketcap.com/currencies/zoracles/	ZORA	$12.24
2267	Zuki Moba	https://coinmarketcap.com/currencies/zuki-moba/	ZUKI	$0.00
2268	POLKARARE	https://coinmarketcap.com/currencies/polkarare/	PRARE	$0.01
2269	CryptoTask	https://coinmarketcap.com/currencies/cryptotask/	CTASK	$0.06
2270	Decentrahub Coin	https://coinmarketcap.com/currencies/decentrahub-coin/	DCNTR	$0.04
2271	Devery	https://coinmarketcap.com/currencies/devery/	EVE	$0.00
2272	Double-A Chain	https://coinmarketcap.com/currencies/acute-angle-cloud/	AAC	$0.00
2273	AidCoin	https://coinmarketcap.com/currencies/aidcoin/	AID	$0.00
2274	Gourmet Galaxy	https://coinmarketcap.com/currencies/gourmet-galaxy/	GUM	$0.02
2275	Paybswap	https://coinmarketcap.com/currencies/paybswap/	PAYB	$0.00
2276	Lympo Market Token	https://coinmarketcap.com/currencies/lympo-market-token/	LMT	$0.00
2277	ANON	https://coinmarketcap.com/currencies/anon/	ANON	$0.01
2278	ArGo	https://coinmarketcap.com/currencies/argoapp/	ARGO	$0.01
2279	BonFi	https://coinmarketcap.com/currencies/bonfi/	BNF	$0.00
2280	Non-Fungible Yearn	https://coinmarketcap.com/currencies/non-fungible-yearn/	NFY	$0.67
2281	Dogeswap	https://coinmarketcap.com/currencies/dogeswap/	DOGES	$3.08
2282	Method Finance	https://coinmarketcap.com/currencies/method-finance/	MTHD	$0.00
2283	YVS.Finance	https://coinmarketcap.com/currencies/yvs-finance/	YVS	$0.05
2284	Evil Coin	https://coinmarketcap.com/currencies/evil-coin/	EVIL	$0.00
2285	Arata	https://coinmarketcap.com/currencies/arata/	ARATA	$0.06
2286	srnArt Gallery	https://coinmarketcap.com/currencies/srnartgallery/	SACT	$0.02
2287	Font	https://coinmarketcap.com/currencies/font/	FONT	$0.12
2288	Goose Finance	https://coinmarketcap.com/currencies/goose-finance/	EGG	$0.03
2289	Smoothy	https://coinmarketcap.com/currencies/smoothy/	SMTY	$0.01
2290	InsaneCoin	https://coinmarketcap.com/currencies/insanecoin-insn/	INSN	$0.00
2291	StrongHands Masternode	https://coinmarketcap.com/currencies/stronghands-masternode/	SHMN	$0.02
2292	aWSB	https://coinmarketcap.com/currencies/awsb/	aWSB	$9.67
2293	KIMCHI.finance	https://coinmarketcap.com/currencies/kimchi-finance/	KIMCHI	$0.00
2294	Phoneum	https://coinmarketcap.com/currencies/phoneum/	PHT	$0.00
2295	KanadeCoin	https://coinmarketcap.com/currencies/kanadecoin/	KNDC	$0.00
2296	InvestDigital	https://coinmarketcap.com/currencies/investdigital/	IDT	$0.00
2297	Step Hero	https://coinmarketcap.com/currencies/step-hero/	HERO	$0.00
2298	FNB Protocol	https://coinmarketcap.com/currencies/fnb-protocol/	FNB	$0.00
2299	ZumCoin	https://coinmarketcap.com/currencies/zumcoin/	ZUM	$0.00
2300	rASKO	https://coinmarketcap.com/currencies/rasko/	RASKO	$0.00
2301	Vipstar Coin	https://coinmarketcap.com/currencies/vipstar-coin/	VIPS	$0.000001162
2302	Scholarship Coin	https://coinmarketcap.com/currencies/scholarship-coin/	SCHO	$0.005453
2303	AiLink Token	https://coinmarketcap.com/currencies/ailink-token/	ALI	$0.00001091
2304	ION	https://coinmarketcap.com/currencies/ion/	ION	$0.004066
2305	Playkey	https://coinmarketcap.com/currencies/playkey/	PKT	$0.003233
2306	0xcert	https://coinmarketcap.com/currencies/0xcert/	ZXC	$0.0001653
2307	Chi Gastoken	https://coinmarketcap.com/currencies/chi-gastoken/	CHI	$0.06397
2308	LHT	https://coinmarketcap.com/currencies/lighthouse-token/	LHT	$0.001089
2309	MidasProtocol	https://coinmarketcap.com/currencies/midasprotocol/	MAS	$0.0002781
2310	Solaris	https://coinmarketcap.com/currencies/solaris/	XLR	$0.03749
2311	CorionX	https://coinmarketcap.com/currencies/corionx/	CORX	$0.00
2312	pEOS	https://coinmarketcap.com/currencies/peos/	PEOS	$0.00
2313	Roush Fenway Racing Fan Token	https://coinmarketcap.com/currencies/roush-fenway-racing-fan-token/	ROUSH	$0.14
2314	BitGuild PLAT	https://coinmarketcap.com/currencies/bitguild-plat/	PLAT	$0.00
2315	Megacoin	https://coinmarketcap.com/currencies/megacoin/	MEC	$0.00
2316	Wolves of Wall Street	https://coinmarketcap.com/currencies/wolves-of-wall-street/	WOWS	$4.42
2317	Switch	https://coinmarketcap.com/currencies/switch/	ESH	$0.00
2318	Playermon	https://coinmarketcap.com/currencies/playermon/	PYM	$0.00
2319	YENTEN	https://coinmarketcap.com/currencies/yenten/	YTN	$0.00
2320	Jade Currency	https://coinmarketcap.com/currencies/jade-currency/	JADE	$0.00
2321	Timechain Swap Token	https://coinmarketcap.com/currencies/timechain-swap-token/	TCS	$0.01
2322	Auxilium	https://coinmarketcap.com/currencies/auxilium/	AUX	$0.00
2323	Meridian Network	https://coinmarketcap.com/currencies/meridian-network/	LOCK	$0.00
2324	Bitblocks	https://coinmarketcap.com/currencies/bitblocks/	BBK	$0.00
2325	Sportcash One	https://coinmarketcap.com/currencies/sportcash-one/	SCONEX	$0.00
2326	Fortuna Sittard Fan Token	https://coinmarketcap.com/currencies/fortuna-sittard-fan-token/	FOR	$0.35
2327	Levante U.D. Fan Token	https://coinmarketcap.com/currencies/levante-ud-fan-token/	LEV	$0.50
2328	Cubiex	https://coinmarketcap.com/currencies/cubiex/	CBIX	$0.00
2329	Transcodium	https://coinmarketcap.com/currencies/transcodium/	TNS	$0.00
2330	OWNDATA	https://coinmarketcap.com/currencies/owndata/	OWN	$0.00
2331	Triall	https://coinmarketcap.com/currencies/triall/	TRL	$0.02
2332	Netbox Coin	https://coinmarketcap.com/currencies/netbox-coin/	NBX	$0.00
2333	Kush Finance	https://coinmarketcap.com/currencies/kush-finance/	KSEED	$0.19
2334	Islander	https://coinmarketcap.com/currencies/islander/	ISA	$0.00
2335	Kalata	https://coinmarketcap.com/currencies/kalata/	KALA	$0.00
2336	GoNetwork	https://coinmarketcap.com/currencies/gonetwork/	GOT	$0.00
2337	Synergy	https://coinmarketcap.com/currencies/synergy/	SNRG	$0.01
2338	Fire Lotto	https://coinmarketcap.com/currencies/fire-lotto/	FLOT	$0.00
2339	ATBCoin	https://coinmarketcap.com/currencies/atbcoin/	ATB	$0.00
2340	MultiCoinCasino	https://coinmarketcap.com/currencies/multicoincasino/	MCC	$0.01
2341	Italian Lira	https://coinmarketcap.com/currencies/italian-lira/	ITL	$0.00
2342	USDX [Lighthouse]	https://coinmarketcap.com/currencies/usdx-lighthouse/	USDX	$0.01
2343	SparkPoint Fuel	https://coinmarketcap.com/currencies/sparkpoint-fuel/	SFUEL	$0.00
2344	$LONDON	https://coinmarketcap.com/currencies/london/	LONDON	$0.00
2345	Matrexcoin	https://coinmarketcap.com/currencies/matrexcoin/	MAC	$0.00
2346	Bolivarcoin	https://coinmarketcap.com/currencies/bolivarcoin/	BOLI	$0.00
2347	VEKTOR	https://coinmarketcap.com/currencies/vektor/	VEKTOR	$0.00
2348	Heron Asia	https://coinmarketcap.com/currencies/heron-asia/	HERON	$0.00
2349	Winco	https://coinmarketcap.com/currencies/winco/	WCO	$0.00
2350	PegNet	https://coinmarketcap.com/currencies/pegnet/	PEG	$0.00
2351	Castweet	https://coinmarketcap.com/currencies/castweet/	CTT	$0.03
2352	MoonTools	https://coinmarketcap.com/currencies/moontools/	MOONS	$1.66
2353	Bitcoin Confidential	https://coinmarketcap.com/currencies/bitcoin-confidential/	BC	$0.00
2354	StrongHands	https://coinmarketcap.com/currencies/stronghands/	SHND	$0.00
2355	ROAD	https://coinmarketcap.com/currencies/road/	ROAD	$0.00
2356	Datarius Credit	https://coinmarketcap.com/currencies/datarius-credit/	DTRC	$0.00
2357	Alphacat	https://coinmarketcap.com/currencies/alphacat/	ACAT	$0.00
2358	Axe	https://coinmarketcap.com/currencies/axe/	AXE	$0.01
2359	Chonk	https://coinmarketcap.com/currencies/chonk/	CHONK	$1.12
2360	CREDIT	https://coinmarketcap.com/currencies/credit/	CREDIT	$0.00
2361	MicroMoney	https://coinmarketcap.com/currencies/micromoney/	AMM	$0.00
2362	2local	https://coinmarketcap.com/currencies/2local/	2LC	$0.00
2363	Lunyr	https://coinmarketcap.com/currencies/lunyr/	LUN	$0.02
2364	Unify	https://coinmarketcap.com/currencies/unify/	UNIFY	$0.00
2365	Celeum	https://coinmarketcap.com/currencies/celeum/	CLX	$0.01
2366	Membrana	https://coinmarketcap.com/currencies/membrana/	MBN	$0.00
2367	Pancake Bunny	https://coinmarketcap.com/currencies/pancakebunny/	BUNNY	$0.08
2368	Tendies	https://coinmarketcap.com/currencies/tendies/	TEND	$0.01
2369	Kawaii Islands	https://coinmarketcap.com/currencies/kawaii-islands/	KWT	$0.00
2370	yTSLA Finance	https://coinmarketcap.com/currencies/ytsla-finance/	yTSLA	$0.62
2371	BERNcash	https://coinmarketcap.com/currencies/berncash/	BERN	$0.00
2372	Fireball	https://coinmarketcap.com/currencies/fireball/	FIRE	$2.08
2373	Fundamenta	https://coinmarketcap.com/currencies/fundamenta/	FMTA	$0.03
2374	GamyFi Platform	https://coinmarketcap.com/currencies/gamyfi-platform/	GFX	$0.05
2375	SwiftCash	https://coinmarketcap.com/currencies/swiftcash/	SWIFT	$0.00
2376	Luna Rush	https://coinmarketcap.com/currencies/luna-rush/	LUS	$0.01
2377	Qrkita Token	https://coinmarketcap.com/currencies/qrkita-token/	QRT	$0.00
2378	Wolf Safe Poor People (Polygon)	https://coinmarketcap.com/currencies/wolf-safe-poor-people-polygon/	WSPP	$0.00
2379	VikkyToken	https://coinmarketcap.com/currencies/vikkytoken/	VIKKY	$0.00
2380	Xion Finance	https://coinmarketcap.com/currencies/xion-finance/	XGT	$0.00
2381	Cheesecoin	https://coinmarketcap.com/currencies/cheesecoin/	CHEESE	$0.00
2382	Cash Tech	https://coinmarketcap.com/currencies/cash-tech/	CATE	$0.00
2383	Donu	https://coinmarketcap.com/currencies/donu/	DONU	$0.01
2384	Ritocoin	https://coinmarketcap.com/currencies/ritocoin/	RITO	$0.00
2385	NevaCoin	https://coinmarketcap.com/currencies/nevacoin/	NEVA	$0.01
2386	UpToken	https://coinmarketcap.com/currencies/uptoken/	UP	$0.00
2387	WinCash	https://coinmarketcap.com/currencies/wincash/	WCC	$0.03
2388	Sociall	https://coinmarketcap.com/currencies/sociall/	SCL	$0.00
2389	GlobalToken	https://coinmarketcap.com/currencies/globaltoken/	GLT	$0.00
2390	Rimbit	https://coinmarketcap.com/currencies/rimbit/	RBT	$0.00
2391	Showcase	https://coinmarketcap.com/currencies/showcase/	SHO	$0.00
2392	Spectre.ai Utility Token	https://coinmarketcap.com/currencies/spectre-utility/	SXUT	$0.00
2393	Maecenas	https://coinmarketcap.com/currencies/maecenas/	ART	$0.00
2394	Scrypta	https://coinmarketcap.com/currencies/scrypta/	LYRA	$0.00
2395	MELX	https://coinmarketcap.com/currencies/melalie/	MEL	$0.00
2396	MMOCoin	https://coinmarketcap.com/currencies/mmocoin/	MMO	$0.00
2397	LUXCoin	https://coinmarketcap.com/currencies/luxcoin/	LUX	$0.00
2398	Eroscoin	https://coinmarketcap.com/currencies/eroscoin/	ERO	$0.00
2399	EchoLink	https://coinmarketcap.com/currencies/echolink/	EKO	$0.00
2400	BBSCoin	https://coinmarketcap.com/currencies/bbscoin/	BBS	$0.00
2401	Kurrent	https://coinmarketcap.com/currencies/kurrent/	KURT	$0.000577
2402	Anoncoin	https://coinmarketcap.com/currencies/anoncoin/	ANC	$0.01673
2403	Boosted Finance	https://coinmarketcap.com/currencies/boosted-finance/	BOOST	$0.5894
2404	Decentralized Machine Learning	https://coinmarketcap.com/currencies/decentralized-machine-learning/	DML	$0.0001292
2405	EventChain	https://coinmarketcap.com/currencies/eventchain/	EVC	$0.001123
2406	Privatix	https://coinmarketcap.com/currencies/privatix/	PRIX	$0.03115
2407	Yellow Road	https://coinmarketcap.com/currencies/yellow-road/	ROAD	$0.01153
2408	Knekted	https://coinmarketcap.com/currencies/knekted/	KNT	$0.0000636
2409	SteepCoin	https://coinmarketcap.com/currencies/steepcoin/	STEEP	$0.0001923
2410	Graft	https://coinmarketcap.com/currencies/graft/	GRFT	$0.00005795
2411	Worldcore	https://coinmarketcap.com/currencies/worldcore/	WRC	$0.00
2412	BitWhite	https://coinmarketcap.com/currencies/bitwhite/	BTW	$0.00
2413	DecentBet	https://coinmarketcap.com/currencies/decent-bet/	DBET	$0.00
2414	SkinCoin	https://coinmarketcap.com/currencies/skincoin/	SKIN	$0.00
2415	PiplCoin	https://coinmarketcap.com/currencies/piplcoin/	PIPL	$0.00
2416	Yield Stake Finance	https://coinmarketcap.com/currencies/yield-stake-finance/	YI12	$2.96
2417	HaloDAO	https://coinmarketcap.com/currencies/halodao/	RNBW	$0.01
2418	WABnetwork	https://coinmarketcap.com/currencies/wabnetwork/	WAB	$0.00
2419	ArbitrageCT	https://coinmarketcap.com/currencies/arbitragect/	ARCT	$0.00
2420	Opal	https://coinmarketcap.com/currencies/opal/	OPAL	$0.00
2421	Chronologic	https://coinmarketcap.com/currencies/chronologic/	DAY	$0.03
2422	Uptrennd	https://coinmarketcap.com/currencies/uptrennd/	1UP	$0.00
2423	EUNOMIA	https://coinmarketcap.com/currencies/eunomia/	ENTS	$0.00
2424	MyBit	https://coinmarketcap.com/currencies/mybit/	MYB	$0.00
2425	Agora	https://coinmarketcap.com/currencies/agora/	VOTE	$0.00
2426	NeoWorld Cash	https://coinmarketcap.com/currencies/neoworld-cash/	NASH	$0.00
2427	SORA Validator Token	https://coinmarketcap.com/currencies/sora-validator-token/	VAL	$0.08
2428	Deutsche eMark	https://coinmarketcap.com/currencies/deutsche-emark/	DEM	$0.00
2429	Axis DeFi	https://coinmarketcap.com/currencies/axis-defi/	AXIS	$0.01
2430	Infinity Esaham	https://coinmarketcap.com/currencies/infinity-esaham/	INFS	$0.05
2431	Vivid Coin	https://coinmarketcap.com/currencies/vivid-coin/	VIVID	$0.00
2432	Rapidz	https://coinmarketcap.com/currencies/rapidz/	RPZX	$0.00
2433	TrustDAO	https://coinmarketcap.com/currencies/trustdao/	TRUST	$0.00
2434	AllSafe	https://coinmarketcap.com/currencies/allsafe/	ASAFE	$0.00
2435	Cryptobuyer	https://coinmarketcap.com/currencies/cryptobuyer/	XPT	$0.00
2436	Taklimakan Network	https://coinmarketcap.com/currencies/taklimakan-network/	TAN	$0.00
2437	Crypto Kombat	https://coinmarketcap.com/currencies/crypto-kombat/	KOMBAT	$2.90
2438	TRAXIA	https://coinmarketcap.com/currencies/traxia/	TM2	$0.00
2439	BoutsPro	https://coinmarketcap.com/currencies/boutspro/	BOUTS	$0.00
2440	Zero Utility Token	https://coinmarketcap.com/currencies/zero-utility-token/	ZUT	$28.89
2441	DMScript	https://coinmarketcap.com/currencies/dmscript/	DMST	$0.00
2442	Horde	https://coinmarketcap.com/currencies/horde/	HOR	$0.00
2443	Tokenbox	https://coinmarketcap.com/currencies/tokenbox/	TBX	$0.00
2444	PostCoin	https://coinmarketcap.com/currencies/postcoin/	POST	$0.00
2445	IGToken	https://coinmarketcap.com/currencies/igtoken/	IG	$0.00
2446	AI Doctor	https://coinmarketcap.com/currencies/aidoc/	AIDOC	$0.00
2447	Rate3	https://coinmarketcap.com/currencies/rate3/	RTE	$0.00
2448	Squirrel Finance	https://coinmarketcap.com/currencies/squirrel-finance/	NUTS	$0.06
2449	GoldBlocks	https://coinmarketcap.com/currencies/goldblocks/	GB	$0.00
2450	More Coin	https://coinmarketcap.com/currencies/more-coin/	MORE	$0.01
2451	Aditus	https://coinmarketcap.com/currencies/aditus/	ADI	$0.00
2452	BSCView	https://coinmarketcap.com/currencies/bscview/	BSCV	$0.00
2453	PKG Token	https://coinmarketcap.com/currencies/pkg-token/	PKG	$0.00
2454	Curio	https://coinmarketcap.com/currencies/curio/	CUR	$0.01
2455	Block-Logic	https://coinmarketcap.com/currencies/block-logic/	BLTG	$0.00
2456	Unicly Chris McCann Collection	https://coinmarketcap.com/currencies/unicly-chris-mccann-collection/	UCM	$0.03
2457	Startcoin	https://coinmarketcap.com/currencies/startcoin/	START	$0.00
2458	Collective	https://coinmarketcap.com/currencies/collective/	CO2	$0.10
2459	ChartEx	https://coinmarketcap.com/currencies/chartex/	CHART	$0.00
2460	Novacoin	https://coinmarketcap.com/currencies/novacoin/	NVC	$0.01
2461	BitScreener Token	https://coinmarketcap.com/currencies/bitscreener-token/	BITX	$0.00
2462	Elysian	https://coinmarketcap.com/currencies/elysian/	ELY	$0.00
2463	BitSend	https://coinmarketcap.com/currencies/bitsend/	BSD	$0.00
2464	DEJAVE	https://coinmarketcap.com/currencies/dejave/	DJV	$9.41
2465	Arionum	https://coinmarketcap.com/currencies/arionum/	ARO	$0.00
2466	PureVidz	https://coinmarketcap.com/currencies/purevidz/	VIDZ	$0.00
2467	TrueDeck	https://coinmarketcap.com/currencies/truedeck/	TDP	$0.00
2468	ProxyNode	https://coinmarketcap.com/currencies/proxynode/	PRX	$0.00
2469	1MillionNFTs	https://coinmarketcap.com/currencies/1millionnfts/	1MIL	$0.20
2470	Opus	https://coinmarketcap.com/currencies/opus/	OPT	$0.00
2471	GCN Coin	https://coinmarketcap.com/currencies/gcn-coin/	GCN	$0.00
2472	Rope	https://coinmarketcap.com/currencies/rope/	$ROPE	$0.85
2473	FantasyGold	https://coinmarketcap.com/currencies/fantasygold/	FGC	$0.00
2474	Ratecoin	https://coinmarketcap.com/currencies/ratecoin/	XRA	$0.00
2475	Netrum	https://coinmarketcap.com/currencies/netrum/	NTR	$0.01
2476	CoinAlpha	https://coinmarketcap.com/currencies/coinalpha/	ALP	$0.00
2477	Aigang	https://coinmarketcap.com/currencies/aigang/	AIX	$0.00
2478	ACA Token	https://coinmarketcap.com/currencies/aca-token/	ACA	$0.00
2479	Tourist Token	https://coinmarketcap.com/currencies/tourist-token/	TOTO	$0.00
2480	Blocktix	https://coinmarketcap.com/currencies/blocktix/	TIX	$0.00
2481	megaBONK	https://coinmarketcap.com/currencies/bonk/	MBONK	$0.01
2482	Blockburn	https://coinmarketcap.com/currencies/blockburn/	BURN	$0.00
2483	NestEGG Coin	https://coinmarketcap.com/currencies/nestegg-coin/	EGG	$0.00
2484	Rogue Coin	https://coinmarketcap.com/currencies/rogue-west/	ROGUE	$0.00
2485	Open Governance Token	https://coinmarketcap.com/currencies/open-governance-token/	OPEN	$0.01
2486	Universal Currency	https://coinmarketcap.com/currencies/universal-currency/	UNIT	$0.00
2487	BitCash	https://coinmarketcap.com/currencies/bitcash/	BITC	$0.00
2488	Alphr finance	https://coinmarketcap.com/currencies/alphr-finance/	ALPHR	$0.01
2489	XPA	https://coinmarketcap.com/currencies/xpa/	XPA	$0.00
2490	Digitex	https://coinmarketcap.com/currencies/digitex/	DGTX	$0.00
2491	ELTCOIN	https://coinmarketcap.com/currencies/eltcoin/	ELTCOIN	$0.00
2492	Nasdacoin	https://coinmarketcap.com/currencies/nasdacoin/	NSD	$0.00
2493	BLOC.MONEY	https://coinmarketcap.com/currencies/bloc-money/	BLOC	$0.00
2494	Litecoin Plus	https://coinmarketcap.com/currencies/litecoin-plus/	LCP	$0.01
2495	Onix	https://coinmarketcap.com/currencies/onix/	ONX	$0.00
2496	ICOBID	https://coinmarketcap.com/currencies/icobid/	ICOB	$0.00
2497	UBU Finance	https://coinmarketcap.com/currencies/ubu-finance/	UBU	$0.00
2498	Global Currency Reserve	https://coinmarketcap.com/currencies/global-currency-reserve/	GCR	$0.00
2499	SparksPay	https://coinmarketcap.com/currencies/sparkspay/	SPK	$0.00
2500	Island Coin	https://coinmarketcap.com/currencies/island-coin/	ISLE	$0.00
2501	ShowHand	https://coinmarketcap.com/currencies/showhand/	HAND	$0.000000318
2502	Ormeus Ecosystem	https://coinmarketcap.com/currencies/ormeus-ecosystem/	ECO	$0.000008808
2503	GuccioneCoin	https://coinmarketcap.com/currencies/guccionecoin/	GCC	$0.0009617
2504	Theresa May Coin	https://coinmarketcap.com/currencies/theresa-may-coin/	MAY	$0.0001923
2505	WeBlock	https://coinmarketcap.com/currencies/weblock/	WON	$0.004246
2506	Bela	https://coinmarketcap.com/currencies/belacoin/	BELA	$0.0003846
2507	ImageCoin	https://coinmarketcap.com/currencies/imagecoin/	IMG	$0.001494
2508	FUTURAX	https://coinmarketcap.com/currencies/futurax/	FTXT	$0.000005547
2509	Depth Token	https://coinmarketcap.com/currencies/depth-token/	DEP	$0.00003554
2510	Ignition	https://coinmarketcap.com/currencies/ignition/	IC	$0.01204
2511	Unicly Genesis Collection	https://coinmarketcap.com/currencies/unicly-genesis-collection/	UUNICLY	$0.02
2512	Arepacoin	https://coinmarketcap.com/currencies/arepacoin/	AREPA	$0.00
2513	SF Capital	https://coinmarketcap.com/currencies/sf-capital/	SFCP	$0.00
2514	PayCoin	https://coinmarketcap.com/currencies/paycoin2/	XPY	$0.00
2515	Civitas	https://coinmarketcap.com/currencies/civitas/	CIV	$0.00
2516	Bitcoin 21	https://coinmarketcap.com/currencies/bitcoin-21/	XBTC21	$0.02
2517	Rupee	https://coinmarketcap.com/currencies/rupee/	RUP	$0.00
2518	Desire	https://coinmarketcap.com/currencies/desire/	DSR	$0.00
2519	Feellike	https://coinmarketcap.com/currencies/feellike/	FLL	$0.01
2520	CustomContractNetwork	https://coinmarketcap.com/currencies/customcontractnetwork/	CCN	$0.00
2521	GenesisX	https://coinmarketcap.com/currencies/genesisx/	XGS	$0.00
2522	Knit Finance	https://coinmarketcap.com/currencies/knit-finance/	KFT	$0.00
2523	Dreamcoin	https://coinmarketcap.com/currencies/dreamcoin/	DRM	$0.01
2524	FuzzBalls	https://coinmarketcap.com/currencies/fuzzballs/	FUZZ	$0.00
2525	Rivetz	https://coinmarketcap.com/currencies/rivetz/	RVT	$0.00
2526	4NEW	https://coinmarketcap.com/currencies/4new/	KWATT	$0.00
2527	Neutron	https://coinmarketcap.com/currencies/neutron/	NTRN	$0.00
2528	ZPER	https://coinmarketcap.com/currencies/zper/	ZPR	$0.00
2529	Grimm	https://coinmarketcap.com/currencies/grimm/	GRIMM	$0.00
2530	yAxis	https://coinmarketcap.com/currencies/yaxis/	YAXIS	$0.02
2531	Ormeus Coin	https://coinmarketcap.com/currencies/ormeus-coin/	ORMEUS	$0.00
2532	Gentarium	https://coinmarketcap.com/currencies/gentarium/	GTM	$0.00
2533	Coin2.1	https://coinmarketcap.com/currencies/coin2-1/	C2	$0.00
2534	Centurion	https://coinmarketcap.com/currencies/centurion/	CNT	$0.00
2535	MDtoken	https://coinmarketcap.com/currencies/mdtoken/	MDTK	$0.00
2536	BackPacker Coin	https://coinmarketcap.com/currencies/backpacker-coin/	BPC	$0.00
2537	Bitzeny	https://coinmarketcap.com/currencies/bitzeny/	ZNY	$0.00
2538	ERC20	https://coinmarketcap.com/currencies/erc20/	ERC20	$0.00
2539	Fyooz	https://coinmarketcap.com/currencies/fyooz/	FYZ	$0.00
2540	Truegame	https://coinmarketcap.com/currencies/tgame/	TGAME	$0.00
2541	HashNet BitEco	https://coinmarketcap.com/currencies/hashnet-biteco/	HNB	$0.00
2542	BitRewards	https://coinmarketcap.com/currencies/bitrewards/	BIT	$0.00
2543	Bitcoin Classic	https://coinmarketcap.com/currencies/bitcoin-classic/	BXC	$0.02
2544	BoatPilot Token	https://coinmarketcap.com/currencies/boat-pilot-token/	NAVY	$0.00
2545	ZeusNetwork	https://coinmarketcap.com/currencies/zeusnetwork/	ZEUS	$0.00
2546	PosEx	https://coinmarketcap.com/currencies/posex/	PEX	$0.01
2547	Twinci	https://coinmarketcap.com/currencies/twinci/	TWIN	$0.06
2548	Arbidex	https://coinmarketcap.com/currencies/arbidex/	ABX	$0.00
2549	Xuez	https://coinmarketcap.com/currencies/xuez/	XUEZ	$0.00
2550	Zuflo Coin	https://coinmarketcap.com/currencies/zuflo-coin/	ZFL	$0.00
2551	FirstCoin	https://coinmarketcap.com/currencies/firstcoin/	FRST	$0.00
2552	MustangCoin	https://coinmarketcap.com/currencies/mustangcoin/	MST	$0.02
2553	BiShares	https://coinmarketcap.com/currencies/bishares/	BISON	$0.03
2554	ICE ROCK MINING	https://coinmarketcap.com/currencies/ice-rock-mining/	ROCK2	$0.00
2555	Elementeum	https://coinmarketcap.com/currencies/elementeum/	ELET	$0.00
2556	BSClaunch	https://coinmarketcap.com/currencies/bsclaunch/	BSL	$0.01
2557	Plus-Coin	https://coinmarketcap.com/currencies/plus-coin/	NPLC	$0.00
2558	Fivebalance	https://coinmarketcap.com/currencies/fivebalance/	FBN	$0.00
2559	PAYCENT	https://coinmarketcap.com/currencies/paycent/	PYN	$0.00
2560	Helix	https://coinmarketcap.com/currencies/helix/	HLIX	$0.00
2561	Kebab Token	https://coinmarketcap.com/currencies/kebab-token/	KEBAB	$0.01
2562	Fox Trading	https://coinmarketcap.com/currencies/fox-trading/	FOXT	$0.00
2563	Kind Ads Token	https://coinmarketcap.com/currencies/kind-ads-token/	KIND	$0.00
2564	DATx	https://coinmarketcap.com/currencies/datx/	DATX	$0.00
2565	TajCoin	https://coinmarketcap.com/currencies/tajcoin/	TAJ	$0.00
2566	Escroco Emerald	https://coinmarketcap.com/currencies/escroco-emerald/	ESCE	$0.00
2567	Rewardiqa	https://coinmarketcap.com/currencies/rewardiqa/	REW	$0.00
2568	Decentralized Crypto Token	https://coinmarketcap.com/currencies/decentralized-crypto-token/	DCTO	$0.00
2569	Yearn Finance Bit	https://coinmarketcap.com/currencies/yearn-finance-bit/	YFBT	$9.63
2570	DistX	https://coinmarketcap.com/currencies/distx/	DISTX	$0.00
2571	Shivers	https://coinmarketcap.com/currencies/shivers/	SHVR	$0.00
2572	Gaj Finance	https://coinmarketcap.com/currencies/gaj-finance/	GAJ	$0.01
2573	SuperCoin	https://coinmarketcap.com/currencies/supercoin/	SUPER	$0.00
2574	CyberMusic	https://coinmarketcap.com/currencies/cybermusic/	CYMT	$0.00
2575	UNICORN Token	https://coinmarketcap.com/currencies/unicorn-token/	UNI	$0.00
2576	Crypto Piece	https://coinmarketcap.com/currencies/crypto-piece/	BELLY	$0.00
2577	BitBlocks Finance	https://coinmarketcap.com/currencies/bitblocks-finance/	BBKFI	$0.00
2578	The Currency Analytics	https://coinmarketcap.com/currencies/the-currency-analytics/	TCAT	$0.00
2579	Castle	https://coinmarketcap.com/currencies/castle/	CSTL	$0.00
2580	KUN	https://coinmarketcap.com/currencies/kun/	KUN	$4.94
2581	FidexToken	https://coinmarketcap.com/currencies/fidex-token/	FEX	$0.00
2582	AmsterdamCoin	https://coinmarketcap.com/currencies/amsterdamcoin/	AMS	$0.00
2583	FUZE Token	https://coinmarketcap.com/currencies/fuze-token/	FUZE	$12.79
2584	Adzcoin	https://coinmarketcap.com/currencies/adzcoin/	ADZ	$0.00
2585	SpeedCash	https://coinmarketcap.com/currencies/speedcash/	SCS	$0.02
2586	StarterCoin	https://coinmarketcap.com/currencies/startercoin/	STAC	$0.00
2587	DraftCoin	https://coinmarketcap.com/currencies/draftcoin/	DFT	$0.00
2588	Kemacoin	https://coinmarketcap.com/currencies/kemacoin/	KEMA	$0.00
2589	Phantomx	https://coinmarketcap.com/currencies/phantomx/	PNX	$0.00
2590	ETHplode	https://coinmarketcap.com/currencies/ethplode/	ETHPLO	$0.00
2591	Beetlecoin	https://coinmarketcap.com/currencies/beetle-coin/	BEET	$0.00
2592	Hyper Finance	https://coinmarketcap.com/currencies/hyper-finance/	HYFI	$0.00
2593	BLAST	https://coinmarketcap.com/currencies/blast/	BLAST	$0.00
2594	Mchain	https://coinmarketcap.com/currencies/mchain/	MAR	$0.00
2595	Digiwage	https://coinmarketcap.com/currencies/digiwage/	WAGE	$0.00
2596	AceD (old)	https://coinmarketcap.com/currencies/aced/	ACED	$0.00
2597	Halving Token	https://coinmarketcap.com/currencies/halving-coin/	HALV	$0.00
2598	ARAW	https://coinmarketcap.com/currencies/araw/	ARAW	$0.00
2599	Cryptrust	https://coinmarketcap.com/currencies/cryptrust/	CTRT	$0.00
2600	EvenCoin	https://coinmarketcap.com/currencies/evencoin/	EVN	$0.00
2601	SCRIV NETWORK	https://coinmarketcap.com/currencies/scriv-network/	SCRIV	$0.0003462
2602	BowsCoin	https://coinmarketcap.com/currencies/bowscoin/	BSC	$0.001539
2603	NFT Alley	https://coinmarketcap.com/currencies/nft-alley/	ALLEY	$0.01645
2604	EDRCoin	https://coinmarketcap.com/currencies/edrcoin/	EDRC	$0.002885
2605	PYRO Network	https://coinmarketcap.com/currencies/pyro-network/	PYRO	$0.0000106
2606	Sparkle Loyalty	https://coinmarketcap.com/currencies/sparkle-loyalty/	SPRKL	$0.000636
2607	ParkByte	https://coinmarketcap.com/currencies/parkbyte/	PKB	$0.001731
2608	Mesefa	https://coinmarketcap.com/currencies/mesefa/	SEFA	$0.01898
2609	UChain	https://coinmarketcap.com/currencies/uchain/	UCN	$0.00002629
2610	JavaScript Token	https://coinmarketcap.com/currencies/javascript-token/	JS	$0.001
2611	ModiHost	https://coinmarketcap.com/currencies/modihost/	AIM	$0.01
2612	Defis	https://coinmarketcap.com/currencies/defis/	XGM	$0.00
2613	CCUniverse	https://coinmarketcap.com/currencies/ccuniverse/	UVU	$0.00
2614	Quantis Network	https://coinmarketcap.com/currencies/quantis-network/	QUAN	$0.00
2615	Datacoin	https://coinmarketcap.com/currencies/datacoin/	DTC	$0.00
2616	Zenswap Network Token	https://coinmarketcap.com/currencies/zenswap-network-token/	ZNT	$0.00
2617	Bitcloud	https://coinmarketcap.com/currencies/bitcloud/	BTDX	$0.00
2618	YoloCash	https://coinmarketcap.com/currencies/yolocash/	YLC	$0.00
2619	SafeInsure	https://coinmarketcap.com/currencies/safeinsure/	SINS	$0.00
2620	Neuromorphic.io	https://coinmarketcap.com/currencies/neuromorphic-io/	NMP	$0.00
2621	Havy	https://coinmarketcap.com/currencies/havy/	HAVY	$0.00
2622	Akroma	https://coinmarketcap.com/currencies/akroma/	AKA	$0.00
2623	EveriToken	https://coinmarketcap.com/currencies/everitoken/	EVT	$0.00
2624	Gene Source Code Chain	https://coinmarketcap.com/currencies/gene-source-code-chain/	GENE	$0.00
2625	Zayedcoin	https://coinmarketcap.com/currencies/zayedcoin/	ZYD	$0.00
2626	Eurocoin	https://coinmarketcap.com/currencies/eurocoin/	EUC	$0.00
2627	X-Coin	https://coinmarketcap.com/currencies/x-coin/	XCO	$0.00
2628	HOMIHELP	https://coinmarketcap.com/currencies/homihelp/	HOMI	$0.01
2629	Californium	https://coinmarketcap.com/currencies/californium/	CF	$0.00
2630	HyperAlloy	https://coinmarketcap.com/currencies/hyper-alloy/	ALLOY	$0.00
2631	Dollarcoin	https://coinmarketcap.com/currencies/dollarcoin/	DLC	$0.00
2632	CrevaCoin	https://coinmarketcap.com/currencies/crevacoin/	CREVA	$0.00
2633	Thore Cash	https://coinmarketcap.com/currencies/thore-cash/	TCH	$0.00
2634	Bonpay	https://coinmarketcap.com/currencies/bonpay/	BON	$0.00
2635	Zealium	https://coinmarketcap.com/currencies/zealium/	NZL	$0.00
2636	Quebecoin	https://coinmarketcap.com/currencies/quebecoin/	QBC	$0.00
2637	SpreadCoin	https://coinmarketcap.com/currencies/spreadcoin/	SPR	$0.00
2638	ALL BEST ICO	https://coinmarketcap.com/currencies/all-best-ico/	ALLBI	$0.00
2639	Arion	https://coinmarketcap.com/currencies/arion/	ARION	$0.00
2640	Ccore	https://coinmarketcap.com/currencies/ccore/	CCO	$0.00
2641	Cream	https://coinmarketcap.com/currencies/cream/	CRM	$0.00
2642	SongCoin	https://coinmarketcap.com/currencies/songcoin/	SONG	$0.00
2643	Gossip Coin	https://coinmarketcap.com/currencies/gossipcoin/	GOSS	$0.00
2644	Gold Poker	https://coinmarketcap.com/currencies/gold-poker/	GPKR	$0.00
2645	Thingschain	https://coinmarketcap.com/currencies/thingschain/	TIC	$0.00
2646	BitCoal	https://coinmarketcap.com/currencies/bitcoal/	COAL	$0.00
2647	Veltor	https://coinmarketcap.com/currencies/veltor/	VLT	$0.01
2648	LCMS	https://coinmarketcap.com/currencies/lcms/	LCMS	$0.00
2649	WXCOINS	https://coinmarketcap.com/currencies/wxcoins/	WXC	$0.00
2650	Martkist	https://coinmarketcap.com/currencies/martkist/	MARTK	$0.00
2651	Bitcoin Adult	https://coinmarketcap.com/currencies/bitcoin-adult/	BTAD	$0.00
2652	Litecred	https://coinmarketcap.com/currencies/litecred/	LTCR	$0.00
2653	MedicCoin	https://coinmarketcap.com/currencies/mediccoin/	MEDIC	$0.00
2654	S.Finance	https://coinmarketcap.com/currencies/s-finance/	SFG	$0.07
2655	iBTC	https://coinmarketcap.com/currencies/ibtc/	IBTC	$0.00
2656	SkyHub Coin	https://coinmarketcap.com/currencies/skyhub-coin/	SHB	$0.01
2657	Guider	https://coinmarketcap.com/currencies/guider/	GDR	$0.00
2658	Kwikswap Protocol	https://coinmarketcap.com/currencies/kwikswap/	KWIK	$0.00
2659	HeartBout	https://coinmarketcap.com/currencies/heartbout/	HB	$0.00
2660	Multiplier	https://coinmarketcap.com/currencies/bmultiplier/	BMXX	$0.01
2661	Bitcoin Incognito	https://coinmarketcap.com/currencies/bitcoin-incognito/	XBI	$0.00
2662	TravelNote	https://coinmarketcap.com/currencies/travelnote/	TVNT	$0.00
2663	Streamit Coin	https://coinmarketcap.com/currencies/streamit-coin/	STREAM	$0.00
2664	SBank	https://coinmarketcap.com/currencies/sbank/	STS	$0.00
2665	Klimatas	https://coinmarketcap.com/currencies/klimatas/	KTS	$0.01
2666	Bionic	https://coinmarketcap.com/currencies/bionic/	BNC	$0.00
2667	HeroFi (ROFI)	https://coinmarketcap.com/currencies/rofi/	ROFI	$0.06
2668	Pyrk	https://coinmarketcap.com/currencies/pyrk/	PYRK	$0.00
2669	Dynamite	https://coinmarketcap.com/currencies/dynamite/	DYNMT	$0.01
2670	XOVBank	https://coinmarketcap.com/currencies/xovbank/	XOV	$0.00
2671	Diligence	https://coinmarketcap.com/currencies/diligence/	IRA	$0.00
2672	Veles	https://coinmarketcap.com/currencies/veles/	VLS	$0.00
2673	DNotes	https://coinmarketcap.com/currencies/dnotes/	NOTE	$0.00
2674	Waletoken	https://coinmarketcap.com/currencies/waletoken/	WTN	$0.00
2675	Prime-XI	https://coinmarketcap.com/currencies/prime-xi/	PXI	$0.00
2676	High Voltage	https://coinmarketcap.com/currencies/high-voltage/	HVCO	$0.00
2677	Vortex Defi	https://coinmarketcap.com/currencies/vortex-defi/	VTX	$0.00
2678	Independent Money System	https://coinmarketcap.com/currencies/independent-money-system/	IMS	$0.00
2679	Italo	https://coinmarketcap.com/currencies/italo/	XTA	$0.00
2680	Spectrum	https://coinmarketcap.com/currencies/spectrum/	SPT	$0.00
2681	Cabbage	https://coinmarketcap.com/currencies/cabbage/	CAB	$0.00
2682	Bitcoin CZ	https://coinmarketcap.com/currencies/bitcoin-cz/	BCZ	$0.00
2683	Kalkulus	https://coinmarketcap.com/currencies/kalkulus/	KLKS	$0.00
2684	Innovative Bioresearch Coin	https://coinmarketcap.com/currencies/innovative-bioresearch-coin/	INNBC	$0.00
2685	Micromines	https://coinmarketcap.com/currencies/micromines/	MICRO	$0.00
2686	VectorAI	https://coinmarketcap.com/currencies/vector/	VEC2	$0.00
2687	CaluraCoin	https://coinmarketcap.com/currencies/caluracoin/	CLC	$0.00
2688	PAXEX	https://coinmarketcap.com/currencies/paxex/	PAXEX	$0.00
2689	Rigel Finance	https://coinmarketcap.com/currencies/rigel-finance/	RIGEL	$0.79
2690	PLNcoin	https://coinmarketcap.com/currencies/plncoin/	PLNC	$0.00
2691	CRDT	https://coinmarketcap.com/currencies/crdt/	CRDT	$0.00
2692	Scanetchain	https://coinmarketcap.com/currencies/scanetchain/	SWC	$0.00
2693	STRAKS	https://coinmarketcap.com/currencies/straks/	STAK	$0.00
2694	Bitvolt	https://coinmarketcap.com/currencies/bitvolt/	VOLT	$0.00
2695	Paypex	https://coinmarketcap.com/currencies/paypex/	PAYX	$0.00
2696	Cubiex Power	https://coinmarketcap.com/currencies/cubiex-power/	CBIX-P	$0.02
2697	HyperQuant	https://coinmarketcap.com/currencies/hyperquant/	HQT	$0.00
2698	ZINC	https://coinmarketcap.com/currencies/zinc/	ZINC	$0.00
2699	Carebit	https://coinmarketcap.com/currencies/carebit/	CARE	$0.00
2700	Herbalist Token	https://coinmarketcap.com/currencies/herbalist-token/	HERB	$0.00
2701	Herbalist Token	https://coinmarketcap.com/currencies/herbalist-token/	HERB	$0.0000003179
2702	GravityCoin	https://coinmarketcap.com/currencies/gravitycoin/	GXX	$0.0003846
2703	IFX24	https://coinmarketcap.com/currencies/ifx24/	IFX24	$0.0009614
2704	Apollon	https://coinmarketcap.com/currencies/apollon/	XAP	$0.00001923
2705	LitecoinToken	https://coinmarketcap.com/currencies/litecoin-token/	LTK	$0.00000003002
2706	Ultragate	https://coinmarketcap.com/currencies/ultragate/	ULG	$0.0001923
2707	Alpha Coin	https://coinmarketcap.com/currencies/alpha-coin/	APC	$0.00007691
2708	Comet	https://coinmarketcap.com/currencies/comet/	CMT	$0.003076
2709	Bitcoin Token	https://coinmarketcap.com/currencies/bitcoin-token/	BTCT	$0.0001923
2710	iBank	https://coinmarketcap.com/currencies/ibank/	IBANK	$0.0005768
2711	XDNA	https://coinmarketcap.com/currencies/xdna/	XDNA	$0.00
2712	Merebel	https://coinmarketcap.com/currencies/merebel/	MERI	$0.00
2713	SafeCapital	https://coinmarketcap.com/currencies/safecapital/	SCAP	$0.00
2714	GoHelpFund	https://coinmarketcap.com/currencies/gohelpfund/	HELP	$0.00
2715	Decentralized Asset Trading Platform	https://coinmarketcap.com/currencies/decentralized-asset-trading-platform/	DATP	$0.00
2716	Mobile Crypto Pay Coin	https://coinmarketcap.com/currencies/mobile-crypto-pay-coin/	MCPC	$0.00
2717	Impleum	https://coinmarketcap.com/currencies/impleum/	IMPL	$0.00
2718	Tutti Frutti	https://coinmarketcap.com/currencies/tutti-frutti/	TFF	$0.00
2719	ARbit	https://coinmarketcap.com/currencies/arbit/	ARB	$0.00
2720	Iconic	https://coinmarketcap.com/currencies/iconic/	ICON	$0.00
2721	Blizzard Network	https://coinmarketcap.com/currencies/blizzard-network/	BLIZZ	$0.00
2722	Cannation	https://coinmarketcap.com/currencies/cannation/	CNNC	$0.00
2723	Acoin	https://coinmarketcap.com/currencies/acoin/	ACOIN	$0.00
2724	ECOSC	https://coinmarketcap.com/currencies/ecosc/	ECU	$0.00
2725	Coinonat	https://coinmarketcap.com/currencies/coinonat/	CXT	$0.00
2726	SocialCoin	https://coinmarketcap.com/currencies/socialcoin-socc/	SOCC	$0.00
2727	Wild Beast Block	https://coinmarketcap.com/currencies/wild-beast-block/	WBB	$0.01
2728	Save and Gain	https://coinmarketcap.com/currencies/save-and-gain/	SANDG	$0.00
2729	LiteCoin Ultra	https://coinmarketcap.com/currencies/litecoin-ultra/	LTCU	$0.00
2730	Dash Green	https://coinmarketcap.com/currencies/dash-green/	DASHG	$0.00
2731	FinNexus	https://coinmarketcap.com/currencies/finnexus/	FNX	$0.00
2732	MarteXcoin	https://coinmarketcap.com/currencies/martexcoin/	MXT	$0.00
2733	Exosis	https://coinmarketcap.com/currencies/exosis/	EXO	$0.00
2734	SharedStake	https://coinmarketcap.com/currencies/sharedstake/	SGT	$0.01
2735	Webcoin	https://coinmarketcap.com/currencies/webcoin/	WEB	$0.00
2736	KZ Cash	https://coinmarketcap.com/currencies/kz-cash/	KZC	$0.00
2737	Dinero	https://coinmarketcap.com/currencies/dinero/	DIN	$0.00
2738	CashHand	https://coinmarketcap.com/currencies/cashhand/	CHND	$0.00
2739	ITO Utility Token	https://coinmarketcap.com/currencies/ito-utility-token/	IUT	$0.00
2740	Joint Ventures	https://coinmarketcap.com/currencies/joint-ventures/	JOINT	$0.00
2741	Mate	https://coinmarketcap.com/currencies/mate/	MATE	$0.00
2742	Crystal Token	https://coinmarketcap.com/currencies/crystal-token/	CYL	$0.00
2743	PlatinumBAR	https://coinmarketcap.com/currencies/platinumbar/	XPTX	$0.00
2744	IBStoken	https://coinmarketcap.com/currencies/ibstoken/	IBS	$0.00
2745	Concoin	https://coinmarketcap.com/currencies/concoin/	CONX	$0.00
2746	Staker	https://coinmarketcap.com/currencies/staker/	STR	$0.00
2747	GeyserCoin	https://coinmarketcap.com/currencies/geysercoin/	GSR	$0.00
2748	PonziCoin	https://coinmarketcap.com/currencies/ponzicoin/	PONZI	$0.00
2749	Abulaba	https://coinmarketcap.com/currencies/abulaba/	AAA	$0.00
2750	Argus	https://coinmarketcap.com/currencies/argus/	ARGUS	$0.00
2751	Newton Coin Project	https://coinmarketcap.com/currencies/newton-coin-project/	NCP	$0.00
2752	SONO	https://coinmarketcap.com/currencies/altcommunity-coin/	SONO	$0.00
2753	Electrum Dark	https://coinmarketcap.com/currencies/electrum-dark-eld/	ELD	$0.00
2754	Helpico	https://coinmarketcap.com/currencies/helpico/	HELP	$0.01
2755	DOWCOIN	https://coinmarketcap.com/currencies/dowcoin/	DOW	$0.00
2756	Storeum	https://coinmarketcap.com/currencies/storeum/	STO	$0.00
2757	Nexalt	https://coinmarketcap.com/currencies/nexalt/	XLT	$0.00
2758	Bulleon	https://coinmarketcap.com/currencies/bulleon/	BUL	$0.00
2759	Trexcoin	https://coinmarketcap.com/currencies/trexcoin/	TREX	$0.00
2760	CryptoVerificationCoin	https://coinmarketcap.com/currencies/cryptoverificationcoin/	CVCC	$0.00
2761	Nibble	https://coinmarketcap.com/currencies/nibble/	NBXC	$0.00
2762	CryptoPlanes	https://coinmarketcap.com/currencies/cryptoplanes/	CPAN	$0.00
2763	Degenerator Meme	https://coinmarketcap.com/currencies/degenerator-meme/	MEME	$0.00
2764	YFFII Finance	https://coinmarketcap.com/currencies/yffii-finance/	YFFII	$0.00
2765	Innovative Bioresearch Classic	https://coinmarketcap.com/currencies/innovative-bioresearch-classic/	INNBCL	$0.00
2766	Mainstream For The Underground	https://coinmarketcap.com/currencies/mainstream-for-the-underground/	MFTU	$0.00
2767	WETH	https://coinmarketcap.com/currencies/weth/	WETH	$1057.63
2768	Try.Finance	https://coinmarketcap.com/currencies/try-finance/	TRY	$0.06
2769	Gains Network	https://coinmarketcap.com/currencies/gains-network/	GNS	$0.96
2770	KingDeFi	https://coinmarketcap.com/currencies/kingdefi/	KRW	$0.00
2771	BiLira	https://coinmarketcap.com/currencies/bilira/	TRYB	$0.06
2772	Fistbump	https://coinmarketcap.com/currencies/fistbump-vip/	FIST	$1.39
2773	XT.com Token	https://coinmarketcap.com/currencies/xtcom-token/	XT	$1.91
2774	Multichain	https://coinmarketcap.com/currencies/multichain/	MULTI	$3.71
2775	Wrapped Solana	https://coinmarketcap.com/currencies/wrapped-solana/	SOL	$32.82
2776	Optimism	https://coinmarketcap.com/currencies/optimism-ethereum/	OP	$0.52
2777	StreamCoin	https://coinmarketcap.com/currencies/stream-coin/	STRM	$0.07
2778	Orbler	https://coinmarketcap.com/currencies/orbler/	ORBR	$21.35
2779	Maya Preferred	https://coinmarketcap.com/currencies/maya-preferred/	MAYP	$26069.75
2780	OSK	https://coinmarketcap.com/currencies/osk-token/	OSK	$23.23
2781	Wrapped AVAX	https://coinmarketcap.com/currencies/wavax/	WAVAX	$16.22
2782	Gold Coin Reserve	https://coinmarketcap.com/currencies/gold-coin-reserve/	GCR	$1173.66
2783	Wrapped Matic	https://coinmarketcap.com/currencies/wmatic/	WMATIC	$0.46
2784	Grove	https://coinmarketcap.com/currencies/grove/	GVR	$0.00
2785	MinePlex	https://coinmarketcap.com/currencies/mineplex/	PLEX	$0.49
2786	Edgecoin	https://coinmarketcap.com/currencies/edgecoin/	EDGT	$1.00
2787	ANIVERSE	https://coinmarketcap.com/currencies/aniverse/	ANV	$1.00
2788	Terra Classic USD (Wormhole)	https://coinmarketcap.com/currencies/terrausd-wormhole/	USTC	$0.06
2789	Step App	https://coinmarketcap.com/currencies/step-app/	FITFI	$0.08
2790	CloudChat	https://coinmarketcap.com/currencies/cloudchat/	CC	$0.00
2791	Beacon ETH	https://coinmarketcap.com/currencies/beacon-eth/	BETH	$1029.14
2792	Global AEX Token	https://coinmarketcap.com/currencies/global-aex-token/	GAT	$0.02
2793	REVOLAND TOKEN	https://coinmarketcap.com/currencies/revoland-token/	REVO	$1.09
2794	THORChain (ERC20)	https://coinmarketcap.com/currencies/thorchain-erc20/	RUNE	$1.85
2795	Decentralized USD(Defichain)	https://coinmarketcap.com/currencies/decentralized-usd/	DUSD	$0.73
2796	Bitget Token	https://coinmarketcap.com/currencies/bitget-token-new/	BGB	$0.14
2797	Celestial	https://coinmarketcap.com/currencies/celestial/	CELT	$0.01
2798	ThetaDrop	https://coinmarketcap.com/currencies/thetadrop/	TDROP	$0.01
2799	Everdome	https://coinmarketcap.com/currencies/everdome/	DOME	$0.01
2800	Minifootball	https://coinmarketcap.com/currencies/minifootball/	MINIFOOTBALL	$0.00
2801	Fame MMA	https://coinmarketcap.com/currencies/fame-mma/	FAME	$0.02801
2802	Wrapped CRO	https://coinmarketcap.com/currencies/wrapped-cro/	WCRO	$0.1121
2803	Australian Dollar Token	https://coinmarketcap.com/currencies/australian-dollar-token/	AUDT	$0.6826
2804	Compound USDT	https://coinmarketcap.com/currencies/compound-usdt/	CUSDT	$0.02187
2805	Millimeter	https://coinmarketcap.com/currencies/millimeter/	MM	$0.06851
2806	Compound Dai	https://coinmarketcap.com/currencies/compound-dai/	CDAI	$0.02204
2807	PointPay	https://coinmarketcap.com/currencies/pointpay/	PXP	$0.022
2808	Asia Pacific Electronic Coin	https://coinmarketcap.com/currencies/asia-pacific-electronic-coin/	APECOIN	$4.59
2809	Ellipsis	https://coinmarketcap.com/currencies/ellipsis-epx/	EPX	$0.0005407
2810	Anonverse	https://coinmarketcap.com/currencies/anonverse/	ANON	$0.0003453
2811	USD Coin Bridged	https://coinmarketcap.com/currencies/usd-coin-avalanche-bridged-usdc-e/	USDCE	$1.00
2812	Dotori	https://coinmarketcap.com/currencies/dotori/	DTR	$1.58
2813	Goat Gang	https://coinmarketcap.com/currencies/goat-gang/	GGT	$25.97
2814	Value Liquidity	https://coinmarketcap.com/currencies/value-defi/	VALUE	$0.38
2815	NYM	https://coinmarketcap.com/currencies/nym/	NYM	$0.40
2816	Magic Internet Money	https://coinmarketcap.com/currencies/magic-internet-money/	MIM	$0.99
2817	Compound USD Coin	https://coinmarketcap.com/currencies/compound-usd-coin/	CUSDC	$0.02
2818	MSQUARE GLOBAL	https://coinmarketcap.com/currencies/msquare-global/	MSQ	$0.29
2819	Shibnobi	https://coinmarketcap.com/currencies/shibnobi/	SHINJA	$0.00
2820	Volt Inu V2	https://coinmarketcap.com/currencies/volt-inu-v2/	VOLT	$0.00
2821	BlockAura	https://coinmarketcap.com/currencies/blockaura/	TBAC	$23.67
2822	WeWay	https://coinmarketcap.com/currencies/weway/	WWY	$0.03
2823	Tidex Token	https://coinmarketcap.com/currencies/tidex-token/	TDX	$0.26
2824	SuperStep	https://coinmarketcap.com/currencies/superstep/	SGMT	$0.01
2825	Fellaz	https://coinmarketcap.com/currencies/fellaz/	FLZ	$1.01
2826	Euler Finance	https://coinmarketcap.com/currencies/euler-finance/	EUL	$3.53
2827	Jumbo Exchange	https://coinmarketcap.com/currencies/jumbo-exchange/	JUMBO	$1.38
2828	JOCK	https://coinmarketcap.com/currencies/jock-token/	JOCK	$0.02
2829	Bxmi Token	https://coinmarketcap.com/currencies/bxmi-token/	BXMI	$0.66
2830	Polkacity	https://coinmarketcap.com/currencies/polkacity/	POLC	$0.06
2831	WeBuy	https://coinmarketcap.com/currencies/webuy/	WE	$5.22
2832	Cube Network	https://coinmarketcap.com/currencies/cube-network/	CUBE	$1.08
2833	MM Finance	https://coinmarketcap.com/currencies/mm-finance/	MMF	$0.05
2834	OVR	https://coinmarketcap.com/currencies/ovr/	OVR	$0.82
2835	BTCDOWN	https://coinmarketcap.com/currencies/btcdown/	BTCDOWN	$0.05
2836	ZEDXION	https://coinmarketcap.com/currencies/zedxion/	ZEDXION	$0.10
2837	Freedom Protocol	https://coinmarketcap.com/currencies/freedom-protocol/	FREE	$0.05
2838	Petals	https://coinmarketcap.com/currencies/petals/	PTS	$0.00
2839	XELS	https://coinmarketcap.com/currencies/xels/	XELS	$3.72
2840	Walken	https://coinmarketcap.com/currencies/walken/	WLKN	$0.07
2841	Undead Blocks	https://coinmarketcap.com/currencies/undead-blocks/	UNDEAD	$1.09
2842	Tenset	https://coinmarketcap.com/currencies/tenset/	10SET	$3.84
2843	RUSH COIN	https://coinmarketcap.com/currencies/rush-coin/	RUSH	$0.01
2844	CELEBPLUS	https://coinmarketcap.com/currencies/celebplus/	CELEB	$0.04
2845	MeconCash	https://coinmarketcap.com/currencies/meconcash/	MCH	$0.04
2846	I will poop it NFT	https://coinmarketcap.com/currencies/i-will-poop-it-nft/	SHIT	$0.00
2847	Freedom God Dao	https://coinmarketcap.com/currencies/freedom-god-dao/	FGD	$6.86
2848	Tari World	https://coinmarketcap.com/currencies/tari-world/	TARI	$15.94
2849	Choise.com	https://coinmarketcap.com/currencies/choise/	CHO	$1.14
2850	Nexus Dubai	https://coinmarketcap.com/currencies/nexus-dubai/	NXD	$0.97
2851	Carbon Credit	https://coinmarketcap.com/currencies/carbon-credit/	CCT	$0.53
2852	Galaxy Heroes	https://coinmarketcap.com/currencies/galaxy-heroes-coin-new/	GHC	$0.00
2853	Got Guaranteed	https://coinmarketcap.com/currencies/got-guaranteed/	GOTG	$5.91
2854	Angle Protocol	https://coinmarketcap.com/currencies/angle-protocol/	AGEUR	$1.04
2855	Quantum Assets	https://coinmarketcap.com/currencies/quantum-assets/	QA	$0.00
2856	OryxFi	https://coinmarketcap.com/currencies/oryxfi/	ORYX	$0.06
2857	LYO Credit	https://coinmarketcap.com/currencies/lyo-credit/	LYO	$1.60
2858	Saitama V2	https://coinmarketcap.com/currencies/saitama-inu-new/	SAITAMA	$0.00
2859	Green Satoshi Token (BSC)	https://coinmarketcap.com/currencies/green-satoshi-token-bsc/	GST	$0.21
2860	TomTomCoin	https://coinmarketcap.com/currencies/tomtomcoin/	TOMS	$0.01
2861	Stargate Finance	https://coinmarketcap.com/currencies/stargate-finance/	STG	$0.36
2862	Floki Inu	https://coinmarketcap.com/currencies/floki-inu/	FLOKI	$0.00
2863	CyberDragon Gold	https://coinmarketcap.com/currencies/cyberdragon-gold/	GOLD	$0.01
2864	Plugin	https://coinmarketcap.com/currencies/plugin/	PLI	$0.07
2865	Luffy	https://coinmarketcap.com/currencies/luffy/	LUFFY	$0.00
2866	Wrapped Fantom	https://coinmarketcap.com/currencies/wrapped-fantom/	WFTM	$0.25
2867	GM Wagmi	https://coinmarketcap.com/currencies/gm/	GM	$0.00
2868	MARBLEX	https://coinmarketcap.com/currencies/marblex/	MBX	$8.50
2869	MAGIC	https://coinmarketcap.com/currencies/magic-token/	MAGIC	$0.24
2870	Supreme Finance	https://coinmarketcap.com/currencies/hype/	HYPE	$0.15
2871	Revolt 2 Earn	https://coinmarketcap.com/currencies/revolt-2-earn/	RVLT	$0.00
2872	Wrapped Harmony	https://coinmarketcap.com/currencies/wrapped-one/	WONE	$0.12
2873	DarkShield Games Studio	https://coinmarketcap.com/currencies/darkshield/	DKS	$0.02
2874	DeFi Kingdoms	https://coinmarketcap.com/currencies/defi-kingdoms/	JEWEL	$0.62
2875	fantomGO	https://coinmarketcap.com/currencies/fantomgo/	FTG	$0.04
2876	Octopus Network	https://coinmarketcap.com/currencies/octopus-network/	OCT	$0.33
2877	IX Token	https://coinmarketcap.com/currencies/ix-token/	IXT	$1.39
2878	FIT Token	https://coinmarketcap.com/currencies/calo/	FIT	$3.93
2879	3X Short Bitcoin Token	https://coinmarketcap.com/currencies/3x-short-bitcoin-token/	BEAR	$0.00
2880	CAW(A Hunters Dream)	https://coinmarketcap.com/currencies/caw/	CAW	$0.00
2881	Melos Studio	https://coinmarketcap.com/currencies/melos-studio/	MELOS	$0.03
2882	Natural Farm Union Protocol	https://coinmarketcap.com/currencies/natural-farm-union-protocol/	NFUP	$0.12
2883	BlueBenx	https://coinmarketcap.com/currencies/bluebenx/	BENX	$0.23
2884	DappRadar	https://coinmarketcap.com/currencies/dappradar/	RADAR	$0.02
2885	Ecowatt	https://coinmarketcap.com/currencies/ecowatt/	EWT	$0.21
2886	CORE MultiChain	https://coinmarketcap.com/currencies/core-multichain/	CMCX	$0.00
2887	Koi Network	https://coinmarketcap.com/currencies/koi-network/	KOI	$0.04
2888	Element.Black	https://coinmarketcap.com/currencies/element-black/	ELT	$0.01
2889	BTCUP	https://coinmarketcap.com/currencies/btcup/	BTCUP	$4.25
2890	Block Commerce Protocol	https://coinmarketcap.com/currencies/block-commerce-protocol/	BCP	$0.01
2891	LINKUP	https://coinmarketcap.com/currencies/linkup/	LINKUP	$0.01
2892	Milo Inu	https://coinmarketcap.com/currencies/milo-inu/	MILO	$0.00
2893	OKC Token	https://coinmarketcap.com/currencies/okt/	OKT	$16.51
2894	Oceanland	https://coinmarketcap.com/currencies/oceanland/	OLAND	$0.04
2895	ISLAMICOIN	https://coinmarketcap.com/currencies/islamicoin/	ISLAMI	$0.00
2896	Amaze World	https://coinmarketcap.com/currencies/amaze-world/	AMZE	$1.58
2897	SpaceMine	https://coinmarketcap.com/currencies/spacemine/	MINE	$0.49
2898	Pikaster	https://coinmarketcap.com/currencies/pikaster/	MLS	$0.41
2899	Bit.Store	https://coinmarketcap.com/currencies/bit-store/	STORE	$0.02
2900	DRAC Network	https://coinmarketcap.com/currencies/teddydoge/	TEDDY	$0.00
2901	Carbon	https://coinmarketcap.com/currencies/carbon-co2/	CO2	$0.1363
2902	BITMIC	https://coinmarketcap.com/currencies/bitmic/	BMIC	$1.84
2903	Decentralized Eternal Virtual Traveller	https://coinmarketcap.com/currencies/decentralized-eternal-virtual-traveller/	DEVT	$0.06142
2904	LINKDOWN	https://coinmarketcap.com/currencies/linkdown/	LINKDOWN	$0.01486
2905	Meta Ruffy	https://coinmarketcap.com/currencies/meta-ruffy/	MR	$0.00007066
2906	FUTUREXCRYPTO	https://coinmarketcap.com/currencies/futurexcrypto/	FXC	$1.05
2907	KlayUniverse	https://coinmarketcap.com/currencies/klayuniverse/	KUT	$4.91
2908	Domain	https://coinmarketcap.com/currencies/domain-coin/	DMN	$0.003425
2909	BTRIPS	https://coinmarketcap.com/currencies/btrips/	BTR	$0.06956
2910	Gamestarter	https://coinmarketcap.com/currencies/gamestarter/	GAME	$0.165
2911	DRC Mobility	https://coinmarketcap.com/currencies/drc-mobility/	DRC	$0.01
2912	Xfinite Entertainment Token	https://coinmarketcap.com/currencies/xfinite-entertainment-token/	XET	$0.00
2913	RadioShack	https://coinmarketcap.com/currencies/radioshack/	RADIO	$0.01
2914	Saitama	https://coinmarketcap.com/currencies/saitama-inu/	SAITAMA	$0.00
2915	GreenCoin.AI	https://coinmarketcap.com/currencies/greencoin-ai/	GRC	$0.00
2916	Gold Secured Currency	https://coinmarketcap.com/currencies/gold-secured-currency/	GSX	$0.02
2917	GOMA Finance	https://coinmarketcap.com/currencies/goma/	GOMA	$0.00
2918	Opyn Squeeth	https://coinmarketcap.com/currencies/opyn-squeeth/	OSQTH	$65.72
2919	Rubix	https://coinmarketcap.com/currencies/rubix/	RBT	$118.51
2920	Olympus v2	https://coinmarketcap.com/currencies/olympus/	OHM	$13.70
2921	CanaryX	https://coinmarketcap.com/currencies/canaryx/	CNYX	$0.00
2922	Kishu Inu	https://coinmarketcap.com/currencies/kishu-inu/	KISHU	$0.00
2923	SymVerse	https://coinmarketcap.com/currencies/symverse/	SYM	$0.01
2924	Legion Network	https://coinmarketcap.com/currencies/legion-network/	LGX	$0.01
2925	Biconomy Exchange Token	https://coinmarketcap.com/currencies/biconomy-token/	BIT	$0.00
2926	ADAUP	https://coinmarketcap.com/currencies/adaup/	ADAUP	$0.89
2927	Plug Chain	https://coinmarketcap.com/currencies/plug-chain/	PLUGCN	$0.02
2928	PLC Ultima	https://coinmarketcap.com/currencies/plc-ultima/	PLCU	$14076.01
2929	Hurricane NFT	https://coinmarketcap.com/currencies/hurricane-nft/	NHCT	$0.09
2930	Smart Reward Token	https://coinmarketcap.com/currencies/smart-reward-token/	SRT	$0.02
2931	Pastel	https://coinmarketcap.com/currencies/pastel/	PSL	$0.00
2932	Infinity Rocket Token	https://coinmarketcap.com/currencies/infinity-rocket-token/	IRT	$0.01
2933	Gari Network	https://coinmarketcap.com/currencies/gari/	GARI	$0.75
2934	Bobcoin	https://coinmarketcap.com/currencies/bobcoin/	BOBC	$1.14
2935	JackPool.finance	https://coinmarketcap.com/currencies/jackpool-finance/	JFI	$48.71
2936	Optimus	https://coinmarketcap.com/currencies/optimus/	OPTCM	$0.00
2937	Uncharted	https://coinmarketcap.com/currencies/uncharted/	UNC	$0.05
2938	AladdinDAO	https://coinmarketcap.com/currencies/aladdindao/	ALD	$0.03
2939	Lido Staked SOL	https://coinmarketcap.com/currencies/lido-for-solana/	stSOL	$34.25
2940	Ronin	https://coinmarketcap.com/currencies/ronin/	RON	$0.33
2941	Best Fintech Investment Coin	https://coinmarketcap.com/currencies/best-fintech-investment-coin/	BFIC	$14.95
2942	JFIN	https://coinmarketcap.com/currencies/jfin/	JFC	$0.69
2943	Bikerush	https://coinmarketcap.com/currencies/bikerush/	BRT	$0.07
2944	ADADOWN	https://coinmarketcap.com/currencies/adadown/	ADADOWN	$0.01
2945	My Liquidity Partner	https://coinmarketcap.com/currencies/my-liquidity-partner/	MLP	$0.02
2946	Metavisa Protocol	https://coinmarketcap.com/currencies/metavisa-protocol/	MESA	$0.01
2947	EscoinToken	https://coinmarketcap.com/currencies/escointoken/	ELG	$3.17
2948	Treecle	https://coinmarketcap.com/currencies/treecle/	TRCL	$0.00
2949	Wonderful Memories	https://coinmarketcap.com/currencies/wrapped-memory/	WMEMO	$30552.41
2950	TAI	https://coinmarketcap.com/currencies/tai/	TAI	$0.33
2951	MetaMerce	https://coinmarketcap.com/currencies/metamerce/	MERCE	$0.00
2952	FloorDAO	https://coinmarketcap.com/currencies/floordao/	FLOOR	$3.68
2953	Polaris Share	https://coinmarketcap.com/currencies/polaris-share/	POLA	$0.03
2954	3X Long Bitcoin Token	https://coinmarketcap.com/currencies/3x-long-bitcoin-token/	BULL	$117.70
2955	Pkoin	https://coinmarketcap.com/currencies/pocketnet/	PKOIN	$0.97
2956	Wrapped Elrond	https://coinmarketcap.com/currencies/wrapped-elrond-egld/	WEGLD	$50.71
2957	Hop Exchange	https://coinmarketcap.com/currencies/hop-exchange/	HOP	$0.09
2958	Moonwell Artemis	https://coinmarketcap.com/currencies/moonwell-artemis/	WELL	$0.02
2959	Izumi Finance	https://coinmarketcap.com/currencies/izumi-finance/	IZI	$0.03
2960	Synapse	https://coinmarketcap.com/currencies/synapse-2/	SYN	$0.58
2961	Crypto Snack	https://coinmarketcap.com/currencies/crypto-snack/	SNACK	$0.02
2962	POPKON	https://coinmarketcap.com/currencies/popkon/	POPK	$0.02
2963	Lovely Inu	https://coinmarketcap.com/currencies/lovely-inu/	LOVELY	$0.00
2964	Rainmaker Games	https://coinmarketcap.com/currencies/rainmaker-games/	RAIN	$0.06
2965	LuxTTO	https://coinmarketcap.com/currencies/luxtto/	LXTO	$47.76
2966	Vault Hill City	https://coinmarketcap.com/currencies/vault-hill-city/	VHC	$0.01
2967	X2Y2	https://coinmarketcap.com/currencies/x2y2/	X2Y2	$0.17
2968	NPICK BLOCK	https://coinmarketcap.com/currencies/npick-block/	NPICK	$0.02
2969	Cryptogodz	https://coinmarketcap.com/currencies/cryptogodz/	GODZ	$0.03
2970	Dark Frontiers	https://coinmarketcap.com/currencies/dark-frontiers/	DARK	$0.06
2971	PolyDoge	https://coinmarketcap.com/currencies/polydoge/	POLYDOGE	$0.00
2972	Pocket Network	https://coinmarketcap.com/currencies/pocket-network/	POKT	$0.10
2973	OpenBlox	https://coinmarketcap.com/currencies/openblox/	OBX	$0.02
2974	Bitkub Coin	https://coinmarketcap.com/currencies/bitkub-coin/	KUB	$2.59
2975	Safuu	https://coinmarketcap.com/currencies/safuu/	SAFUU	$17.50
2976	Deesse	https://coinmarketcap.com/currencies/deesse/	LOVE	$0.01
2977	Evulus Token	https://coinmarketcap.com/currencies/evulus-token/	EVU	$0.09
2978	Beldex	https://coinmarketcap.com/currencies/beldex/	BDX	$0.07
2979	Sapphire	https://coinmarketcap.com/currencies/sapphire/	SAPP	$0.71
2980	Bitcoin God	https://coinmarketcap.com/currencies/bitcoin-god/	GOD	$1.70
2981	dexSHARE	https://coinmarketcap.com/currencies/dexshare/	DEXSHARE	$313.48
2982	Brother Music Platform	https://coinmarketcap.com/currencies/brother-music-platform/	BMP	$0.00
2983	Plastiks	https://coinmarketcap.com/currencies/plastiks/	PLASTIK	$0.03
2984	Vow	https://coinmarketcap.com/currencies/vow/	VOW	$1.07
2985	Meta MVRS	https://coinmarketcap.com/currencies/meta-mvrs/	MVRS	$0.00
2986	DOTDOWN	https://coinmarketcap.com/currencies/dotdown/	DOTDOWN	$24.91
2987	SANGKARA MISA	https://coinmarketcap.com/currencies/sangkara-misa/	MISA	$0.00
2988	BKEX Chain	https://coinmarketcap.com/currencies/bkex-chain/	BKK	$0.07
2989	DefiDollar	https://coinmarketcap.com/currencies/defidollar/	DUSD	$1.03
2990	ritestream	https://coinmarketcap.com/currencies/ritestream/	RITE	$0.01
2991	MyWorld	https://coinmarketcap.com/currencies/myworld/	MWT	$1.02
2992	Battle World	https://coinmarketcap.com/currencies/battle-world/	BWO	$0.22
2993	Dreamverse	https://coinmarketcap.com/currencies/dreamverse/	DV	$0.02
2994	ETHUP	https://coinmarketcap.com/currencies/ethup/	ETHUP	$2.39
2995	AstroGrow	https://coinmarketcap.com/currencies/astrogrow/	ATG	$0.00
2996	ZEDXION	https://coinmarketcap.com/currencies/usdz/	USDZ	$1.00
2997	Berry	https://coinmarketcap.com/currencies/berry/	BERRY	$0.00
2998	Aleph Zero	https://coinmarketcap.com/currencies/aleph-zero/	AZERO	$0.66
2999	Empire Token	https://coinmarketcap.com/currencies/empire-token/	EMPIRE	$0.01
3000	Inflation Hedging Coin	https://coinmarketcap.com/currencies/inflation-hedging-coin/	IHC	$0.00
3001	SafeMoon V2	https://coinmarketcap.com/currencies/safemoon-v2/	SFM	$0.0004852
3002	Unicly	https://coinmarketcap.com/currencies/unicly/	UNIC	$4.88
3003	WaykiChain Governance Coin	https://coinmarketcap.com/currencies/waykichain-governance-coin/	WGRT	$0.004787
3004	Edain	https://coinmarketcap.com/currencies/edain/	EAI	$0.09639
3005	Unipilot	https://coinmarketcap.com/currencies/unipilot/	PILOT	$0.7472
3006	Savanna	https://coinmarketcap.com/currencies/savanna/	SVN	$0.03705
3007	NuriFootBall	https://coinmarketcap.com/currencies/nurifootball/	NRFB	$0.04191
3008	Welups Blockchain	https://coinmarketcap.com/currencies/welups-blockchain/	WELUPS	$0.0001042
3009	Daikicoin	https://coinmarketcap.com/currencies/daikicoin/	DIC	$0.03253
3010	Beau Cat	https://coinmarketcap.com/currencies/beau-cat/	BUC	$76.83
3011	Tiny Coin	https://coinmarketcap.com/currencies/tiny-coin/	TINC	$0.13
3012	Gulf Coin	https://coinmarketcap.com/currencies/gulf-coin/	GULF	$0.03
3013	Sleep Future	https://coinmarketcap.com/currencies/sleep-future/	SLEEPEE	$0.03
3014	Marble Heroes	https://coinmarketcap.com/currencies/marble-heroes/	MBH	$0.50
3015	Coinweb	https://coinmarketcap.com/currencies/coinweb/	CWEB	$0.01
3016	Seek Tiger	https://coinmarketcap.com/currencies/seek-tiger/	STI	$0.08
3017	FODL Finance	https://coinmarketcap.com/currencies/fodl-finance/	FODL	$0.02
3018	Comtech Gold	https://coinmarketcap.com/currencies/comtech-gold/	CGO	$57.93
3019	Nody	https://coinmarketcap.com/currencies/nody/	NODY	$0.00
3020	Pylon Eco Token	https://coinmarketcap.com/currencies/pylon-eco-token/	PETN	$0.68
3021	HelpSeed	https://coinmarketcap.com/currencies/helpseed/	HELPS	$0.00
3022	Dot Finance	https://coinmarketcap.com/currencies/dot-finance/	PINK	$0.01
3023	USDH Hubble Stablecoin	https://coinmarketcap.com/currencies/usdh-hubble-stablecoin/	USDH	$1.00
3024	BoomSpace	https://coinmarketcap.com/currencies/boomspace/	SPACE	$0.01
3025	Zamzam	https://coinmarketcap.com/currencies/zamzam/	ZAMZAM	$0.00
3026	Bytus	https://coinmarketcap.com/currencies/bytus/	BYTS	$0.06
3027	CherrySwap	https://coinmarketcap.com/currencies/cherryswap/	CHE	$0.03
3028	Hawksight	https://coinmarketcap.com/currencies/hawksight/	HAWK	$0.01
3029	Lucretius	https://coinmarketcap.com/currencies/lucretius/	LUC	$0.00
3030	CryptoMines	https://coinmarketcap.com/currencies/cryptomines/	ETERNAL	$0.18
3031	Qfora	https://coinmarketcap.com/currencies/qfora/	QUROZ	$0.27
3032	XBIT	https://coinmarketcap.com/currencies/4xbit/	XBT	$0.01
3033	Monopolon	https://coinmarketcap.com/currencies/monopolon/	MGM	$0.13
3034	DOTUP	https://coinmarketcap.com/currencies/dotup/	DOTUP	$0.20
3035	Metacoin	https://coinmarketcap.com/currencies/metacoin/	MTC	$0.07
3036	Gateway Protocol	https://coinmarketcap.com/currencies/gateway-protocol/	GWP	$3.13
3037	Rare Ball Shares	https://coinmarketcap.com/currencies/rare-ball-shares/	RBS	$0.09
3038	Forta	https://coinmarketcap.com/currencies/forta/	FORT	$0.26
3039	BURNZ	https://coinmarketcap.com/currencies/burnz/	BURNZ	$0.28
3040	Bitcicoin	https://coinmarketcap.com/currencies/bitcicoin/	BITCI	$0.00
3041	EdenLoop	https://coinmarketcap.com/currencies/edenloop/	ELT	$0.17
3042	Saber	https://coinmarketcap.com/currencies/saber/	SBR	$0.00
3043	Guild of Guardians	https://coinmarketcap.com/currencies/guild-of-guardians/	GOG	$0.12
3044	Alkimi	https://coinmarketcap.com/currencies/alkimi/	$ADS	$0.09
3045	GMX	https://coinmarketcap.com/currencies/gmx/	GMX	$16.29
3046	StarFish OS	https://coinmarketcap.com/currencies/starfish-os/	SFO	$0.33
3047	Hillstone Finance	https://coinmarketcap.com/currencies/hillstone/	HSF	$0.26
3048	MonkeyLeague	https://coinmarketcap.com/currencies/monkeyball/	MBS	$0.10
3049	MoonDAO	https://coinmarketcap.com/currencies/mooney/	MOONEY	$0.00
3050	CoinViewCap	https://coinmarketcap.com/currencies/coinviewcap/	CVC	$0.00
3051	MRHB DeFi	https://coinmarketcap.com/currencies/marhabadefi/	MRHB	$0.01
3052	Meter Governance	https://coinmarketcap.com/currencies/meter-governance/	MTRG	$1.80
3053	BoringDAO	https://coinmarketcap.com/currencies/boringdao-new/	BORING	$0.01
3054	UltronGlow	https://coinmarketcap.com/currencies/ultronglow/	UTG	$40.36
3055	Kollect	https://coinmarketcap.com/currencies/kollect/	KOL	$0.01
3056	Lend Flare	https://coinmarketcap.com/currencies/lend-flare/	LFT	$0.00
3057	SIGN	https://coinmarketcap.com/currencies/signin/	SIGN	$0.03
3058	StrongHands Finance	https://coinmarketcap.com/currencies/stronghands-finance/	ISHND	$0.02
3059	Xiden	https://coinmarketcap.com/currencies/xiden/	XDEN	$34.61
3060	Universe Crystal Gene	https://coinmarketcap.com/currencies/universe-crystal-gene/	UCG	$0.00
3061	Tokemak	https://coinmarketcap.com/currencies/tokemak/	TOKE	$1.06
3062	TAP FANTASY	https://coinmarketcap.com/currencies/tap-fantasy/	TAP	$0.01
3063	JUNO	https://coinmarketcap.com/currencies/juno/	JUNO	$2.52
3064	TopManager	https://coinmarketcap.com/currencies/topmanager/	TMT	$0.23
3065	Plato Farm (PLATO)	https://coinmarketcap.com/currencies/plato-farm-plato/	PLATO	$0.00
3066	Fit&Beat	https://coinmarketcap.com/currencies/fit-beat/	FTB	$0.06
3067	GoldMiner	https://coinmarketcap.com/currencies/goldminer/	GM	$0.00
3068	StarSharks (SSS)	https://coinmarketcap.com/currencies/starsharks-sss/	SSS	$0.73
3069	SB GROUP	https://coinmarketcap.com/currencies/dragonsb/	SB	$0.02
3070	MetaFinance	https://coinmarketcap.com/currencies/metafinance/	MFI	$37.71
3071	Metasens	https://coinmarketcap.com/currencies/metasens/	MSU	$0.32
3072	DMD	https://coinmarketcap.com/currencies/dmd/	DMD	$10.50
3073	Calo	https://coinmarketcap.com/currencies/calo-app/	CALO	$0.09
3074	Ratscoin	https://coinmarketcap.com/currencies/ratscoin/	RATS	$0.00
3075	UniX Gaming	https://coinmarketcap.com/currencies/unix-gaming/	UNIX	$0.09
3076	Truebit	https://coinmarketcap.com/currencies/truebit/	TRU	$0.18
3077	Wirtual	https://coinmarketcap.com/currencies/wirtual/	WIRTUAL	$0.22
3078	Whole Network	https://coinmarketcap.com/currencies/whole-network/	NODE	$0.00
3079	Bombcrypto	https://coinmarketcap.com/currencies/bombcrypto/	BCOIN	$0.03
3080	Kilo Shiba Inu	https://coinmarketcap.com/currencies/kilo-shiba-inu/	KSHIB	$0.01
3081	Socaverse	https://coinmarketcap.com/currencies/socaverse/	SOCA	$0.00
3082	Super Rare Ball Shares	https://coinmarketcap.com/currencies/super-rare-ball-shares/	SRBS	$1.22
3083	Stader	https://coinmarketcap.com/currencies/stader/	SD	$0.51
3084	Leonicorn Swap	https://coinmarketcap.com/currencies/leonicorn-swap/	LEOS	$0.12
3085	Export Mortos Platform	https://coinmarketcap.com/currencies/export-mortos-platform/	EMP	$0.10
3086	SpacePi	https://coinmarketcap.com/currencies/spacepi/	SPACEPI	$0.00
3087	STOA Network	https://coinmarketcap.com/currencies/defi-stoa/	STA	$0.41
3088	MMPRO Token	https://coinmarketcap.com/currencies/mmpro-token/	MMPRO	$0.12
3089	BOT	https://coinmarketcap.com/currencies/bot-planet/	BOT	$0.00
3090	Gode Chain	https://coinmarketcap.com/currencies/gode-chain/	GODE	$0.01
3091	pSTAKE Finance	https://coinmarketcap.com/currencies/pstake-finance/	PSTAKE	$0.10
3092	Ferro	https://coinmarketcap.com/currencies/ferro/	FER	$0.16
3093	ETH Shiba	https://coinmarketcap.com/currencies/eth-shiba/	ETHSHIB	$0.00
3094	Bitgert	https://coinmarketcap.com/currencies/bitrise-token/	BRISE	$0.00
3095	SPDR S&P 500 ETF tokenized stock FTX	https://coinmarketcap.com/currencies/spdr-sp-500-etf-tokenized-stock-ftx/	SPY	$390.69
3096	Radix	https://coinmarketcap.com/currencies/radix-protocol/	XRD	$0.06
3097	MixTrust	https://coinmarketcap.com/currencies/mixtrust/	MXT	$0.00
3098	XRUN	https://coinmarketcap.com/currencies/xrun/	XRUN	$0.39
3099	Scallop	https://coinmarketcap.com/currencies/scallop/	SCLP	$0.21
3100	InpulseX	https://coinmarketcap.com/currencies/inpulsex/	IPX	$0.00
3101	Smile Coin	https://coinmarketcap.com/currencies/smile-coin/	SMILE	$0.0005625
3102	Calaswap	https://coinmarketcap.com/currencies/calaswap/	CLS	$1.14
3103	Findora	https://coinmarketcap.com/currencies/findora/	FRA	$0.001002
3104	Dimitra	https://coinmarketcap.com/currencies/dimitra/	DMTR	$0.03289
3105	Lumenswap	https://coinmarketcap.com/currencies/lumenswap/	LSP	$0.01395
3106	BRN Metaverse	https://coinmarketcap.com/currencies/brn-metaverse/	BRN	$0.4166
3107	KLAYswap Protocol	https://coinmarketcap.com/currencies/klayswap-protocol/	KSP	$0.8015
3108	ShibaDoge	https://coinmarketcap.com/currencies/shibadoge/	SHIBDOGE	$0.0...00069
3109	SMART MONEY COIN	https://coinmarketcap.com/currencies/smart-money-coin/	SMC	$0.01129
3110	Duckie Land	https://coinmarketcap.com/currencies/duckie-land/	MMETA	$0.04137
3111	MICROCOSM	https://coinmarketcap.com/currencies/microcosm/	MIC	$65.58
3112	Wrapped Centrifuge	https://coinmarketcap.com/currencies/wrapped-centrifuge/	WCFG	$0.25
3113	Axl Inu	https://coinmarketcap.com/currencies/axl-inu/	AXL	$0.00
3114	Lendhub	https://coinmarketcap.com/currencies/lendhub/	LHB	$0.00
3115	MetaMUI	https://coinmarketcap.com/currencies/metamui/	MMUI	$0.25
3116	Okratech Token	https://coinmarketcap.com/currencies/okratech-token/	ORT	$0.00
3117	Gas DAO	https://coinmarketcap.com/currencies/gas-dao/	GAS	$0.00
3118	Musk Gold	https://coinmarketcap.com/currencies/musk-gold/	MUSK	$0.03
3119	Reltime	https://coinmarketcap.com/currencies/reltime/	RTC	$0.00
3120	Gaming Stars	https://coinmarketcap.com/currencies/gaming-stars/	GAMES	$1.39
3121	Launchpool	https://coinmarketcap.com/currencies/launchpool/	LPOOL	$0.18
3122	BNBDOWN	https://coinmarketcap.com/currencies/bnbdown/	BNBDOWN	$0.10
3123	Chronicum	https://coinmarketcap.com/currencies/chronicum/	CHRO	$0.00
3124	MContent	https://coinmarketcap.com/currencies/mcontent/	MCONTENT	$0.00
3125	Sheesha Finance [BEP20]	https://coinmarketcap.com/currencies/sheesha-finance-bep20/	SHEESHA	$23.73
3126	Ulti Arena	https://coinmarketcap.com/currencies/ulti-arena/	ULTI	$0.00
3127	ApeX Protocol	https://coinmarketcap.com/currencies/apex-token/	APEX	$0.21
3128	Umee	https://coinmarketcap.com/currencies/umee/	UMEE	$0.02
3129	Acala Dollar	https://coinmarketcap.com/currencies/acala-dollar/	AUSD	$1.02
3130	Katana Inu	https://coinmarketcap.com/currencies/katana-inu/	KATA	$0.00
3131	VIIIDA Gold	https://coinmarketcap.com/currencies/viiida-gold/	AUV	$58.19
3132	Bitcoin Latinum	https://coinmarketcap.com/currencies/bitcoin-latinum/	LTNM	$7.11
3133	Erugo World Coin	https://coinmarketcap.com/currencies/erugo-world-coin/	EWC	$1.94
3134	Paycoin	https://coinmarketcap.com/currencies/payprotocol/	PCI	$0.30
3135	Concordium	https://coinmarketcap.com/currencies/concordium/	CCD	$0.02
3136	LUCA	https://coinmarketcap.com/currencies/luca/	LUCA	$2.80
3137	HitBTC Token	https://coinmarketcap.com/currencies/hitbtc-token/	HIT	$0.11
3138	VeUSD	https://coinmarketcap.com/currencies/veusd/	VEUSD	$1.00
3139	DracooMaster	https://coinmarketcap.com/currencies/dracoomaster-bas/	BAS	$0.09
3140	TRXDOWN	https://coinmarketcap.com/currencies/trxdown/	TRXDOWN	$1.48
3141	Thinkium	https://coinmarketcap.com/currencies/thinkium/	TKM	$0.04
3142	Manifold Finance	https://coinmarketcap.com/currencies/manifold-finance/	FOLD	$8.16
3143	XRPDOWN	https://coinmarketcap.com/currencies/xrpdown/	XRPDOWN	$0.00
3144	CatCoin	https://coinmarketcap.com/currencies/catcoin/	CATCOIN	$0.00
3145	Nakamoto Games	https://coinmarketcap.com/currencies/nakamoto-games/	NAKA	$0.09
3146	YIN Finance	https://coinmarketcap.com/currencies/yin-finance/	YIN	$0.11
3147	Hector Finance	https://coinmarketcap.com/currencies/hector-dao/	HEC	$10.38
3148	LEMONCHAIN	https://coinmarketcap.com/currencies/lemonchain/	LEMC	$1.50
3149	FireStarter	https://coinmarketcap.com/currencies/firestarter/	FLAME	$0.03
3150	MetFi	https://coinmarketcap.com/currencies/metfi/	MFI	$5407.84
3151	Black Whale	https://coinmarketcap.com/currencies/black-whale/	BLK	$0.66
3152	Proof Of Liquidity	https://coinmarketcap.com/currencies/proof-of-liquidity/	POL	$0.02
3153	SORA Synthetic USD	https://coinmarketcap.com/currencies/sora-synthetic-usd/	XSTUSD	$1.01
3154	Catgirl	https://coinmarketcap.com/currencies/catgirl/	CATGIRL	$0.00
3155	Luxurious Pro Network Token	https://coinmarketcap.com/currencies/luxurious-pro-network-token/	LPNT	$8.02
3156	BNBUP	https://coinmarketcap.com/currencies/bnbup/	BNBUP	$21.67
3157	GazeTV	https://coinmarketcap.com/currencies/gazetv/	GAZE	$0.00
3158	Infinity Skies	https://coinmarketcap.com/currencies/infinity-skies/	ISKY	$0.02
3159	blockWRK	https://coinmarketcap.com/currencies/blockwrk/	WRK	$0.18
3160	Doge Killer	https://coinmarketcap.com/currencies/doge-killer/	LEASH	$331.98
3161	Cloudname	https://coinmarketcap.com/currencies/cloudname/	CNAME	$0.00
3162	Wrapped WAN	https://coinmarketcap.com/currencies/wrapped-wan/	WWAN	$0.19
3163	Quidd	https://coinmarketcap.com/currencies/quidd/	QUIDD	$0.05
3164	Bubblefong	https://coinmarketcap.com/currencies/bubblefong/	BBF	$12.61
3165	Filda	https://coinmarketcap.com/currencies/filda/	FILDA	$0.01
3166	USDEX	https://coinmarketcap.com/currencies/usdex-token/	USDEX	$1.42
3167	CATCOIN	https://coinmarketcap.com/currencies/catcoin-token/	CATS	$0.00
3168	Chainflix	https://coinmarketcap.com/currencies/chainflix/	CFXT	$0.00
3169	The Coop Network	https://coinmarketcap.com/currencies/the-coop-network/	GMD	$0.01
3170	Whole Earth Coin	https://coinmarketcap.com/currencies/whole-earth-coin/	WEC	$0.15
3171	GRN	https://coinmarketcap.com/currencies/grn/	G	$0.22
3172	Gafa	https://coinmarketcap.com/currencies/gafa/	GAFA	$0.01
3173	300FIT NETWORK	https://coinmarketcap.com/currencies/300fit-network/	FIT	$0.00
3174	Rocket Pool ETH	https://coinmarketcap.com/currencies/rocket-pool-eth/	RETH	$1076.54
3175	Metis	https://coinmarketcap.com/currencies/metis/	MTS	$0.01
3176	EMP Shares	https://coinmarketcap.com/currencies/emp-shares/	ESHARE	$369.09
3177	Kasta	https://coinmarketcap.com/currencies/kasta/	KASTA	$0.07
3178	Metafluence	https://coinmarketcap.com/currencies/metafluence/	METO	$0.00
3179	SocialGood	https://coinmarketcap.com/currencies/socialgood/	SG	$0.12
3180	Iron Bank	https://coinmarketcap.com/currencies/iron-bank/	IB	$3.94
3181	coreDAO	https://coinmarketcap.com/currencies/coredao/	COREDAO	$1.02
3182	MAI	https://coinmarketcap.com/currencies/mai/	MIMATIC	$0.99
3183	sBTC	https://coinmarketcap.com/currencies/sbtc/	SBTC	$19257.08
3184	Songbird	https://coinmarketcap.com/currencies/songbird/	SGB	$0.03
3185	Orca	https://coinmarketcap.com/currencies/orca/	ORCA	$0.73
3186	Cryptostone	https://coinmarketcap.com/currencies/cryptostone/	CPS	$0.00
3187	Three Kingdoms	https://coinmarketcap.com/currencies/three-kingdoms/	RTK	$0.01
3188	Pieme	https://coinmarketcap.com/currencies/pieme/	PIE	$0.07
3189	Defi For You	https://coinmarketcap.com/currencies/defi-for-you/	DFY	$0.00
3190	Donnie Finance	https://coinmarketcap.com/currencies/donnie-finance/	DON	$0.39
3191	KwikTrust	https://coinmarketcap.com/currencies/kwiktrust/	KTX	$0.05
3192	dHealth	https://coinmarketcap.com/currencies/dhealth/	DHP	$0.01
3193	Galaxy Fight Club	https://coinmarketcap.com/currencies/galaxy-fight-club/	GCOIN	$0.07
3194	xWIN Finance	https://coinmarketcap.com/currencies/xwin-finance/	XWIN	$0.74
3195	HyperVerse	https://coinmarketcap.com/currencies/hyperverse/	HVT	$0.01
3196	PolkaPets	https://coinmarketcap.com/currencies/polkapets/	PETS	$0.02
3197	Affyn	https://coinmarketcap.com/currencies/affyn/	FYN	$0.05
3198	Fantasy Token	https://coinmarketcap.com/currencies/fantasy-token/	FTSY	$0.01
3199	Aurigami	https://coinmarketcap.com/currencies/aurigami/	PLY	$0.00
3200	Terran Coin	https://coinmarketcap.com/currencies/terran-coin/	TRR	$4.37
3201	Aurigami	https://coinmarketcap.com/currencies/aurigami/	PLY	$0.001393
3202	Horde Token	https://coinmarketcap.com/currencies/horde-token/	$HORDE	$98.90
3203	MetaShooter	https://coinmarketcap.com/currencies/metashooter/	MHUNT	$0.03721
3204	BreederDAO	https://coinmarketcap.com/currencies/breederdao/	BREED	$0.07204
3205	XRPUP	https://coinmarketcap.com/currencies/xrpup/	XRPUP	$0.1054
3206	Galaxy War	https://coinmarketcap.com/currencies/galaxy-war/	GWT	$0.002373
3207	ZigZag	https://coinmarketcap.com/currencies/zigzag/	ZZ	$3.17
3208	GogolCoin	https://coinmarketcap.com/currencies/gogolcoin/	GOL	$0.5183
3209	Invitoken	https://coinmarketcap.com/currencies/invitoken/	INVI	$1.33
3210	X Protocol	https://coinmarketcap.com/currencies/x-protocol/	POT	$0.04723
3211	Lunr Token	https://coinmarketcap.com/currencies/lunr-token/	LUNR	$0.17
3212	XIDO FINANCE	https://coinmarketcap.com/currencies/xido-finance/	XIDO	$8.49
3213	Zombie Inu	https://coinmarketcap.com/currencies/zombie-inu/	ZINU	$0.00
3214	KonPay	https://coinmarketcap.com/currencies/konpay/	KON	$0.54
3215	Crypto International	https://coinmarketcap.com/currencies/crypto-international/	CRI	$0.60
3216	ROGin AI	https://coinmarketcap.com/currencies/rogin-ai/	ROG	$0.34
3217	LEDGIS	https://coinmarketcap.com/currencies/ledgis/	LED	$0.05
3218	Wonderland	https://coinmarketcap.com/currencies/wonderland/	TIME	$29.77
3219	KINE	https://coinmarketcap.com/currencies/kine/	KINE	$0.13
3220	holoride	https://coinmarketcap.com/currencies/holoride/	RIDE	$0.18
3221	Giddy	https://coinmarketcap.com/currencies/giddy/	GDDY	$0.06
3222	Nominex	https://coinmarketcap.com/currencies/nominex-token/	NMX	$0.98
3223	The Forbidden Forest	https://coinmarketcap.com/currencies/the-forbidden-forest/	FORESTPLUS	$0.01
3224	Tether EURt	https://coinmarketcap.com/currencies/tether-eurt/	EURT	$1.03
3225	GAMETREE	https://coinmarketcap.com/currencies/gametree/	GTCOIN	$0.39
3226	CropBytes	https://coinmarketcap.com/currencies/cropbytes/	CBX	$0.06
3227	ADAX	https://coinmarketcap.com/currencies/adax/	ADAX	$0.07
3228	PROXI	https://coinmarketcap.com/currencies/proxi/	CREDIT	$0.01
3229	ImpactXP	https://coinmarketcap.com/currencies/impactxp/	IMPACTXP	$0.00
3230	BTS Chain	https://coinmarketcap.com/currencies/bts-chain/	BTSC	$0.26
3231	DeFi Kingdoms Crystal	https://coinmarketcap.com/currencies/defi-kingdoms-crystal/	CRYSTAL	$0.22
3232	DogeKing	https://coinmarketcap.com/currencies/dogeking/	DOGEKING	$0.00
3233	Aquarius	https://coinmarketcap.com/currencies/aquarius/	AQUA	$0.00
3234	Spellfire	https://coinmarketcap.com/currencies/spellfire-re-master-the-magic/	SPELLFIRE	$0.00
3235	Metaverse VR	https://coinmarketcap.com/currencies/metaversevr/	MEVR	$0.09
3236	PLT	https://coinmarketcap.com/currencies/plt-token/	PLT	$0.19
3237	Robo Inu Finance	https://coinmarketcap.com/currencies/robo-inu-finance/	RBIF	$0.00
3238	Akita Inu	https://coinmarketcap.com/currencies/akita-inu/	AKITA	$0.00
3239	Musk Melon	https://coinmarketcap.com/currencies/musk-melon/	MELON	$0.16
3240	Nfans	https://coinmarketcap.com/currencies/nfans/	NFS	$0.03
3241	AmazingDoge	https://coinmarketcap.com/currencies/amazingdoge/	ADOGE	$0.00
3242	LBK	https://coinmarketcap.com/currencies/lbk/	LBK	$0.01
3243	Evmos	https://coinmarketcap.com/currencies/evmos/	EVMOS	$2.25
3244	Bridge Network	https://coinmarketcap.com/currencies/bridge-network/	BRDG	$0.10
3245	Senspark	https://coinmarketcap.com/currencies/senspark/	SEN	$0.01
3246	Ziktalk	https://coinmarketcap.com/currencies/ziktalk/	ZIK	$0.01
3247	Roseon World	https://coinmarketcap.com/currencies/roseon-world/	ROSN	$0.02
3248	Gelato	https://coinmarketcap.com/currencies/gelato/	GEL	$0.29
3249	Invesco QQQ Trust Defichain	https://coinmarketcap.com/currencies/qqq-tokenized-stock-defichain/	DQQQ	$202.09
3250	SpiceUSD	https://coinmarketcap.com/currencies/spiceusd/	USDS	$0.97
3251	NVIDIA tokenized stock FTX	https://coinmarketcap.com/currencies/nvidia-tokenized-stock-ftx/	NVDA	$138.18
3252	Duel Network	https://coinmarketcap.com/currencies/duel-network/	DUEL	$0.11
3253	Continuum Finance	https://coinmarketcap.com/currencies/continuum-finance/	CTN	$0.44
3254	Microsoft Tokenized Stock Defichain	https://coinmarketcap.com/currencies/microsoft-tokenized-stock-defichain/	DMSFT	$181.58
3255	REV3AL	https://coinmarketcap.com/currencies/rev3al/	REV3L	$0.01
3256	Glasscoin	https://coinmarketcap.com/currencies/glass-coin/	GLS	$0.50
3257	EdgeSwap	https://coinmarketcap.com/currencies/edgeswap/	EGS	$0.01
3258	Hedron	https://coinmarketcap.com/currencies/hedron/	HDRN	$0.00
3259	ArbiSmart	https://coinmarketcap.com/currencies/arbismart/	RBIS	$0.43
3260	Meanfi	https://coinmarketcap.com/currencies/meanfi/	MEAN	$0.23
3261	Chain Games	https://coinmarketcap.com/currencies/chain-games/	CHAIN	$0.03
3262	Modex	https://coinmarketcap.com/currencies/modex/	MODEX	$0.05
3263	Vector Finance	https://coinmarketcap.com/currencies/vector-finance/	VTX	$0.17
3264	MAD Bucks	https://coinmarketcap.com/currencies/mad-bucks/	MAD	$1.08
3265	QITMEER NETWORK	https://coinmarketcap.com/currencies/qitmeer-network/	MEER	$11.45
3266	Wonderman Nation	https://coinmarketcap.com/currencies/wonderman-nation/	WNDR	$0.03
3267	VAIOT	https://coinmarketcap.com/currencies/vaiot/	VAI	$0.01
3268	FastSwap (BSC)	https://coinmarketcap.com/currencies/fastswap-bsc/	FAST	$0.00
3269	Revuto	https://coinmarketcap.com/currencies/revuto/	REVU	$0.05
3270	GenesysGo Shadow	https://coinmarketcap.com/currencies/genesysgo-shadow/	SHDW	$0.57
3271	Avalaunch	https://coinmarketcap.com/currencies/avalaunch/	XAVA	$0.46
3272	Brazilian Digital Token	https://coinmarketcap.com/currencies/brz/	BRZ	$0.19
3273	Crypto Legions Bloodstone	https://coinmarketcap.com/currencies/crypto-legions-bloodstone/	BLST	$0.78
3274	BHAX Token	https://coinmarketcap.com/currencies/bithashex/	BHAX	$0.01
3275	WELD	https://coinmarketcap.com/currencies/weld-money/	WELD	$0.02
3276	Dejitaru Tsuka	https://coinmarketcap.com/currencies/dejitaru-tsuka/	TSUKA	$0.01
3277	Silent Notary	https://coinmarketcap.com/currencies/silent-notary/	UBSN	$0.00
3278	Poollotto.finance	https://coinmarketcap.com/currencies/poollotto-finance/	PLT	$5.23
3279	CROWD	https://coinmarketcap.com/currencies/crowd/	CWD	$0.00
3280	Fidlecoin	https://coinmarketcap.com/currencies/fidlecoin/	FIDLE	$0.02
3281	Alchemy	https://coinmarketcap.com/currencies/alchemy/	ACOIN	$0.02
3282	dAppstore	https://coinmarketcap.com/currencies/dappstore/	DAPPX	$0.00
3283	Kiba Inu	https://coinmarketcap.com/currencies/kiba-inu/	KIBA	$0.00
3284	VLaunch	https://coinmarketcap.com/currencies/vlaunch/	VPAD	$0.09
3285	Animal Concerts	https://coinmarketcap.com/currencies/animal-concerts/	ANML	$0.00
3286	Humans.ai	https://coinmarketcap.com/currencies/humans-ai/	HEART	$0.01
3287	Scorefam	https://coinmarketcap.com/currencies/scorefam/	SFT	$0.00
3288	MBD Financials	https://coinmarketcap.com/currencies/mbd-financials/	MBD	$0.00
3289	DNAxCAT Token	https://coinmarketcap.com/currencies/dnaxcat-token/	DXCT	$0.11
3290	Mecha Morphing	https://coinmarketcap.com/currencies/mecha-morphing/	MAPE	$0.10
3291	Realms of Ethernity	https://coinmarketcap.com/currencies/realms-of-ethernity/	RETH	$0.02
3292	Wrapped Huobi Token	https://coinmarketcap.com/currencies/wrapped-huobi-token/	WHT	$4.37
3293	Strip Finance	https://coinmarketcap.com/currencies/strip-finance/	STRIP	$0.02
3294	Starly	https://coinmarketcap.com/currencies/starly/	$STARLY	$0.18
3295	Value Finance	https://coinmarketcap.com/currencies/value-finance/	VFT	$0.00
3296	wanUSDT	https://coinmarketcap.com/currencies/wanusdt/	WANUSDT	$1.01
3297	Frz Solar System	https://coinmarketcap.com/currencies/frz-solar-system/	FRZSS	$0.00
3298	FolgoryUSD	https://coinmarketcap.com/currencies/folgoryusd/	USDF	$1.00
3299	Brazil National Fan Token	https://coinmarketcap.com/currencies/brazil-national-football-team-fan-token/	BFT	$0.20
3300	Interlay	https://coinmarketcap.com/currencies/interlay-intr/	INTR	$0.07
3301	Traxx	https://coinmarketcap.com/currencies/traxx/	TRAXX	$0.2345
3302	TRXUP	https://coinmarketcap.com/currencies/trxup/	TRXUP	$0.05486
3303	Meta Utopia	https://coinmarketcap.com/currencies/meta-utopia/	LAND	$32.23
3304	Wizardia	https://coinmarketcap.com/currencies/wizardia/	WZRD	$0.07688
3305	QMALL TOKEN	https://coinmarketcap.com/currencies/qmall-token/	QMALL	$0.3079
3306	Puli	https://coinmarketcap.com/currencies/puli-inu/	PULI	$0.01413
3307	Realy	https://coinmarketcap.com/currencies/realy/	REAL	$0.6227
3308	QATAR 2022 TOKEN	https://coinmarketcap.com/currencies/qatar-2022-token/	FWC	$0.0...04744
3309	Soy Finance	https://coinmarketcap.com/currencies/soy-finance/	SOY	$0.02628
3310	Arker	https://coinmarketcap.com/currencies/arker/	ARKER	$0.002622
3311	Interlay	https://coinmarketcap.com/currencies/interlay-intr/	INTR	$0.07
3312	BFG Token	https://coinmarketcap.com/currencies/betfury/	BFG	$0.01
3313	HUPAYX	https://coinmarketcap.com/currencies/hupayx/	HPX	$0.06
3314	Index Cooperative	https://coinmarketcap.com/currencies/index-cooperative/	INDEX	$3.02
3315	TAKI	https://coinmarketcap.com/currencies/taki/	TAKI	$0.02
3316	SPORT	https://coinmarketcap.com/currencies/sport/	SPORT	$0.03
3317	Luna Inu	https://coinmarketcap.com/currencies/luna-inu-/	LINU	$0.00
3318	GooseFX	https://coinmarketcap.com/currencies/goosefx/	GOFX	$0.05
3319	Symbiosis Finance	https://coinmarketcap.com/currencies/symbiosis-finance/	SIS	$0.23
3320	GhostMarket	https://coinmarketcap.com/currencies/ghostmarket/	GM	$0.05
3321	ARCS	https://coinmarketcap.com/currencies/arcs/	ARX	$0.00
3322	Reflex Finance	https://coinmarketcap.com/currencies/reflex-finance/	REFLEX V2	$0.00
3323	STEMX	https://coinmarketcap.com/currencies/stemx/	STEMX	$0.02
3324	MetaSwap	https://coinmarketcap.com/currencies/metaswap/	MSC	$118.83
3325	Gold Fever	https://coinmarketcap.com/currencies/gold-fever/	NGL	$0.22
3326	SX Network	https://coinmarketcap.com/currencies/sportx/	SX	$0.19
3327	Ludena Protocol	https://coinmarketcap.com/currencies/ludena-protocol/	LDN	$0.18
3328	PsyOptions	https://coinmarketcap.com/currencies/psy-options/	PSY	$0.05
3329	Andus Chain	https://coinmarketcap.com/currencies/andus-chain-daon/	DEB	$0.07
3330	Class Coin	https://coinmarketcap.com/currencies/class-coin/	CLASS	$0.05
3331	MoonStarter	https://coinmarketcap.com/currencies/moonstarter/	MNST	$0.01
3332	Gold Rush Community	https://coinmarketcap.com/currencies/gold-rush-community/	GRUSH	$173.99
3333	Green Climate World	https://coinmarketcap.com/currencies/green-climate-world/	WGC	$0.38
3334	Zyro	https://coinmarketcap.com/currencies/zyro/	ZYRO	$0.00
3335	Takamaka Green Coin	https://coinmarketcap.com/currencies/takamaka-green-coin/	TKG	$4.16
3336	Aeterna	https://coinmarketcap.com/currencies/aeterna/	AETERNA	$0.42
3337	Shack Token	https://coinmarketcap.com/currencies/shack-token/	SHACK	$0.00
3338	Techpay Coin	https://coinmarketcap.com/currencies/techpay/	TPC	$0.24
3339	zkTube Protocol	https://coinmarketcap.com/currencies/zktube-protocol/	ZKT	$2.53
3340	Global China Cash	https://coinmarketcap.com/currencies/global-china-cash/	CNC	$0.15
3341	Liquid Crowdloan DOT	https://coinmarketcap.com/currencies/liquid-crowdloan-dot/	LCDOT	$5.11
3342	WingStep	https://coinmarketcap.com/currencies/wingstep/	WST	$0.02
3343	QUINT	https://coinmarketcap.com/currencies/quint/	QUINT	$1.39
3344	WiBX	https://coinmarketcap.com/currencies/wibx/	WBX	$0.01
3345	Copiosa Coin	https://coinmarketcap.com/currencies/copiosa-coin/	COP	$0.01
3346	Loon Network	https://coinmarketcap.com/currencies/loon-network/	LOON	$0.00
3347	Gera Coin	https://coinmarketcap.com/currencies/gera-coin/	GERA	$0.89
3348	Peace DAO	https://coinmarketcap.com/currencies/peace-dao/	PEACE	$3.95
3349	ReFork	https://coinmarketcap.com/currencies/refork/	EFK	$0.03
3350	Zeitgeist	https://coinmarketcap.com/currencies/zeitgeist/	ZTG	$0.31
3351	EQIFI	https://coinmarketcap.com/currencies/eqifi/	EQX	$0.02
3352	Plutonians	https://coinmarketcap.com/currencies/plutonians-tech/	PLD	$0.09
3353	HurricaneSwap Token	https://coinmarketcap.com/currencies/hurricaneswap-token/	HCT	$0.00
3354	Port Finance	https://coinmarketcap.com/currencies/port-finance/	PORT	$0.13
3355	Pollchain	https://coinmarketcap.com/currencies/pollchain/	POLL	$0.04
3356	MagicCraft	https://coinmarketcap.com/currencies/magiccraft/	MCRT	$0.00
3357	AAptitude	https://coinmarketcap.com/currencies/aaptitude/	AAPT	$0.00
3358	StorX Network	https://coinmarketcap.com/currencies/storx-network/	SRX	$0.05
3359	Sphynx BSC	https://coinmarketcap.com/currencies/sphynx-bsc/	SPHYNX	$0.00
3360	KStarCoin	https://coinmarketcap.com/currencies/kstarcoin/	KSC	$0.01
3361	MemePad	https://coinmarketcap.com/currencies/memepad/	MEPAD	$0.00
3362	UniWorld	https://coinmarketcap.com/currencies/uniworld/	UNW	$0.02
3363	CryptoArt.Ai	https://coinmarketcap.com/currencies/cryptoart-ai/	CART	$0.03
3364	DAO Invest	https://coinmarketcap.com/currencies/dao-invest/	VEST	$0.01
3365	Zugacoin	https://coinmarketcap.com/currencies/zugacoin/	SZCB	$84.59
3366	DocuChain	https://coinmarketcap.com/currencies/docuchain/	DCCT	$0.01
3367	MarX	https://coinmarketcap.com/currencies/marx/	MARX	$0.02
3368	Hurrian Network	https://coinmarketcap.com/currencies/hurrian-network/	MLD	$0.00
3369	AgeOfGods	https://coinmarketcap.com/currencies/ageofgods/	AOG	$0.05
3370	Square Token	https://coinmarketcap.com/currencies/square-token/	SQUA	$11.20
3371	MARS4	https://coinmarketcap.com/currencies/mars4/	MARS4	$0.00
3372	Mad Viking Games	https://coinmarketcap.com/currencies/mad-viking-games/	MVG	$0.00
3373	MetaGaming Guild	https://coinmarketcap.com/currencies/metagaming-guild/	MGG	$0.02
3374	Cronospad	https://coinmarketcap.com/currencies/cronospad/	CPAD	$0.00
3375	QiSwap	https://coinmarketcap.com/currencies/qiswap/	QI	$0.02
3376	Good Games Guild	https://coinmarketcap.com/currencies/good-games-guild/	GGG	$0.09
3377	Netflix Tokenized Stock Defichain	https://coinmarketcap.com/currencies/netflix-tokenized-stock-defichain/	DNFLX	$123.08
3378	Tune.FM	https://coinmarketcap.com/currencies/tune-fm/	JAM	$0.00
3379	CrownSterling	https://coinmarketcap.com/currencies/crownsterling/	WCSOV	$0.03
3380	3X Long Ethereum Token	https://coinmarketcap.com/currencies/3x-long-ethereum-token/	ETHBULL	$4.04
3381	QUASA	https://coinmarketcap.com/currencies/quasa/	QUA	$0.00
3382	FunFi	https://coinmarketcap.com/currencies/funfi/	FNF	$0.00
3383	Titi Financial	https://coinmarketcap.com/currencies/titi-financial/	TITI	$0.00
3384	CUBE	https://coinmarketcap.com/currencies/itam-cube/	ITAMCUBE	$0.13
3385	MAI	https://coinmarketcap.com/currencies/mai/	MIMATIC	$0.99
3386	Spherium	https://coinmarketcap.com/currencies/spherium/	SPHRI	$0.02
3387	SOUNI	https://coinmarketcap.com/currencies/sovi-universe/	SON	$0.00
3388	Decimal	https://coinmarketcap.com/currencies/decimal/	DEL	$0.04
3389	Belrium	https://coinmarketcap.com/currencies/belrium/	BEL	$7.34
3390	Heroes & Empires	https://coinmarketcap.com/currencies/heroes-and-empires/	HE	$0.00
3391	Sportium	https://coinmarketcap.com/currencies/sportium/	SPRT	$0.34
3392	Zambesigold	https://coinmarketcap.com/currencies/zambesigold/	ZGD	$0.49
3393	Blueshift	https://coinmarketcap.com/currencies/blueshift/	BLUES	$1.12
3394	AVNRich Token	https://coinmarketcap.com/currencies/avnrich-token/	AVN	$0.00
3395	Philcoin	https://coinmarketcap.com/currencies/philcoin/	PHL	$0.12
3396	FaceDAO	https://coinmarketcap.com/currencies/facedao/	FACEDAO	$0.00
3397	IPVERSE	https://coinmarketcap.com/currencies/ipverse/	IPV	$0.88
3398	MarsDAO	https://coinmarketcap.com/currencies/marsdao/	MDAO	$0.15
3399	Dinoland	https://coinmarketcap.com/currencies/dinoland/	DNL	$0.00
3400	WAXE	https://coinmarketcap.com/currencies/waxe/	WAXE	$90.93
3401	Earncraft	https://coinmarketcap.com/currencies/earncraft/	PLOT	$0.002479
3402	MESSIER	https://coinmarketcap.com/currencies/messier/	M87	$0.000004312
3403	FaceDAO	https://coinmarketcap.com/currencies/facedao/	FACEDAO	$0.0000002163
3404	Voxel X Network	https://coinmarketcap.com/currencies/voxel-x-network/	VXL	$0.01706
3405	TBCC	https://coinmarketcap.com/currencies/tbcc-labs/	TBCC	$0.05699
3406	GreenZoneX	https://coinmarketcap.com/currencies/greenzonex/	GZX	$0.0001506
3407	ToxicDeer Finance	https://coinmarketcap.com/currencies/toxicdeer-finance/	DEER	$0.6906
3408	Ethica	https://coinmarketcap.com/currencies/ethica/	ETHICA	$0.1658
3409	Massive Protocol	https://coinmarketcap.com/currencies/massive-protocol/	MAV	$0.432
3410	Battle Saga	https://coinmarketcap.com/currencies/battlesaga/	BTL	$0.00234
3411	Mad USD	https://coinmarketcap.com/currencies/mad-usd/	MUSD	$1.00
3412	Fuji	https://coinmarketcap.com/currencies/fuji/	FJT	$0.57
3413	Squawk	https://coinmarketcap.com/currencies/squawk/	SQUAWK	$0.00
3414	Human	https://coinmarketcap.com/currencies/human/	HMT	$0.19
3415	Arowana Token	https://coinmarketcap.com/currencies/arowana-token/	ARW	$0.28
3416	Cryowar	https://coinmarketcap.com/currencies/cryowar/	CWAR	$0.03
3417	Grape Finance	https://coinmarketcap.com/currencies/grape-finance/	GRAPE	$1.02
3418	PDX Coin	https://coinmarketcap.com/currencies/pdx-coin/	PDX	$21.62
3419	Arenum	https://coinmarketcap.com/currencies/arenum/	ARN	$0.17
3420	Inflation Adjusted USDS	https://coinmarketcap.com/currencies/inflation-adjusted-usds/	IUSDS	$0.99
3421	xNFT Protocol	https://coinmarketcap.com/currencies/xnft-protocol/	XNFT	$0.00
3422	ARTL	https://coinmarketcap.com/currencies/artl/	ARTL	$0.27
3423	Wrapped LUNA Classic	https://coinmarketcap.com/currencies/wrapped-luna-token/	WLUNC	$0.00
3424	Bitcoin Avalanche Bridged	https://coinmarketcap.com/currencies/bitcoin-avalanche-bridged/	BTC.b	$19278.50
3425	Space Crypto	https://coinmarketcap.com/currencies/space-crypto/	SPG	$0.01
3426	Lego Coin	https://coinmarketcap.com/currencies/lego-coin/	LEGO	$0.00
3427	GAIA Everworld	https://coinmarketcap.com/currencies/gaia-everworld/	GAIA	$0.01
3428	STING	https://coinmarketcap.com/currencies/sting/	STN	$0.54
3429	Tesla tokenized stock FTX	https://coinmarketcap.com/currencies/tesla-tokenized-stock-ftx/	TSLA	$682.00
3430	Libcoin	https://coinmarketcap.com/currencies/libcoin/	LIB	$1.97
3431	Vee Finance	https://coinmarketcap.com/currencies/vee-finance/	VEE	$0.00
3432	Avocado DAO Token	https://coinmarketcap.com/currencies/avocado-dao-token/	AVG	$0.06
3433	Ertha	https://coinmarketcap.com/currencies/ertha/	ERTHA	$0.01
3434	Divergence	https://coinmarketcap.com/currencies/divergence/	DIVER	$0.02
3435	Netvrk	https://coinmarketcap.com/currencies/netvrk/	NTVRK	$0.35
3436	Monsters Clan	https://coinmarketcap.com/currencies/monsters-clan/	MONS	$0.05
3437	Bit2Me	https://coinmarketcap.com/currencies/bit2me/	B2M	$0.01
3438	CraneMiners.co	https://coinmarketcap.com/currencies/craneminers/	CRANE	$0.00
3439	GamesPad	https://coinmarketcap.com/currencies/gamespad/	GMPD	$0.02
3440	TOR	https://coinmarketcap.com/currencies/tor/	TOR	$1.00
3441	SolRazr	https://coinmarketcap.com/currencies/solrazr/	SOLR	$0.06
3442	HALO network	https://coinmarketcap.com/currencies/halo-network/	HO	$2.70
3443	Annex Finance	https://coinmarketcap.com/currencies/annex-finance/	ANN	$0.03
3444	Stronger	https://coinmarketcap.com/currencies/stronger/	STRNGR	$2.35
3445	Altrucoin	https://coinmarketcap.com/currencies/altrucoin-new/	ALTRU	$0.36
3446	Globiance Exchange Token	https://coinmarketcap.com/currencies/globiance-exchange-token/	GBEX	$0.00
3447	Chedda Token	https://coinmarketcap.com/currencies/chedda-token/	CHEDDA	$0.00
3448	Para	https://coinmarketcap.com/currencies/parainu-v2/	PARA	$0.00
3449	Ctomorrow Platform	https://coinmarketcap.com/currencies/ctomorrow-platform/	CTP	$0.02
3450	Ambire Wallet	https://coinmarketcap.com/currencies/ambire-wallet/	WALLET	$0.03
3451	H3RO3S	https://coinmarketcap.com/currencies/h3ro3s/	H3RO3S	$0.00
3452	SoldierNodes	https://coinmarketcap.com/currencies/soldiernodes/	SLD	$0.22
3453	LunchDAO	https://coinmarketcap.com/currencies/lunchdao/	LUNCH	$0.00
3454	OSK	https://coinmarketcap.com/currencies/osk/	OSK	$17.64
3455	Moonwell	https://coinmarketcap.com/currencies/moonwell/	MFAM	$0.01
3456	C2X	https://coinmarketcap.com/currencies/c2x/	CTX	$0.72
3457	ImpulseVen	https://coinmarketcap.com/currencies/impulseven/	VEN	$0.03
3458	UpOnly	https://coinmarketcap.com/currencies/uponly/	UPO	$0.03
3459	HITOP	https://coinmarketcap.com/currencies/hitop/	HITOP	$0.01
3460	WonderHero	https://coinmarketcap.com/currencies/wonderhero/	WND	$0.19
3461	Zeptacoin	https://coinmarketcap.com/currencies/zeptacoin/	ZPTC	$0.12
3462	Nitro League	https://coinmarketcap.com/currencies/nitro-league/	NITRO	$0.01
3463	UkraineDAO Flag NFT	https://coinmarketcap.com/currencies/ukrainedao-flag-nft/	LOVE	$0.45
3464	EMOGI Network	https://coinmarketcap.com/currencies/emogi-network/	LOL	$0.00
3465	Asva	https://coinmarketcap.com/currencies/asva-finance/	ASVA	$0.02
3466	DeVolution	https://coinmarketcap.com/currencies/devolution/	DEVO	$0.00
3467	MITA	https://coinmarketcap.com/currencies/legends-of-mitra/	MITA	$0.01
3468	FEG Token	https://coinmarketcap.com/currencies/fegtoken/	FEG	$0.00
3469	April	https://coinmarketcap.com/currencies/april/	APRIL	$0.08
3470	Galeon	https://coinmarketcap.com/currencies/galeon/	GALEON	$0.02
3471	Geopoly	https://coinmarketcap.com/currencies/geopoly/	GEO$	$0.00
3472	Artube	https://coinmarketcap.com/currencies/artube/	ATT	$0.00
3473	Pesabase	https://coinmarketcap.com/currencies/pesabase/	PESA	$0.16
3474	Drip Network	https://coinmarketcap.com/currencies/drip-network/	DRIP	$6.51
3475	Bee Token	https://coinmarketcap.com/currencies/bee-gift-card/	BGC	$0.01
3476	Lien	https://coinmarketcap.com/currencies/lien/	LIEN	$0.71
3477	United Bitcoin	https://coinmarketcap.com/currencies/united-bitcoin/	UBTC	$0.02
3478	Malinka	https://coinmarketcap.com/currencies/malinka/	MLNK	$0.00
3479	Terareum	https://coinmarketcap.com/currencies/terareum/	TERA	$0.00
3480	Premia	https://coinmarketcap.com/currencies/premia/	PREMIA	$0.60
3481	Verlux	https://coinmarketcap.com/currencies/verlux/	VLX	$0.00
3482	MYCE	https://coinmarketcap.com/currencies/my-ceremonial-event/	MYCE	$0.00
3483	Parex	https://coinmarketcap.com/currencies/parex/	PRX	$0.34
3484	Utility NFT Coin	https://coinmarketcap.com/currencies/utility-nft-coin/	UNC	$0.00
3485	PLAYA3ULL GAMES	https://coinmarketcap.com/currencies/playa3ull-games/	3ULL	$0.00
3486	i Money Crypto	https://coinmarketcap.com/currencies/i-money-crypto/	IMC	$0.15
3487	Altered State Token	https://coinmarketcap.com/currencies/altered-state-token/	ASTO	$0.12
3488	Neopin	https://coinmarketcap.com/currencies/neopin/	NPT	$1.56
3489	WadzPay Token	https://coinmarketcap.com/currencies/wadzpay-token/	WTK	$0.02
3490	Kyberdyne	https://coinmarketcap.com/currencies/kyberdyne/	KBD	$0.01
3491	Crime Cash Game	https://coinmarketcap.com/currencies/crime-cash-game/	CRIME	$64.83
3492	BlueSparrow Token	https://coinmarketcap.com/currencies/bluesparrow-token-new/	BlueSparrow	$0.13
3493	CHI Coin	https://coinmarketcap.com/currencies/cryptosandwiches/	CHI	$0.00
3494	Mytrade	https://coinmarketcap.com/currencies/mytrade/	MYT	$0.02
3495	Kingdom Karnage	https://coinmarketcap.com/currencies/kingdom-karnage/	KKT	$0.00
3496	The Recharge	https://coinmarketcap.com/currencies/recharge/	RCG	$1.41
3497	Hubble Protocol	https://coinmarketcap.com/currencies/hubble-protocol/	HBB	$0.24
3498	SeedOn	https://coinmarketcap.com/currencies/seedon/	SEON	$0.01
3499	FreeRossDAO	https://coinmarketcap.com/currencies/freerossdao/	FREE	$0.00
3500	Frontrow	https://coinmarketcap.com/currencies/frontrow/	FRR	$0.00
3501	Wojak Finance	https://coinmarketcap.com/currencies/wojak-finance/	WOJ	$0.008636
3502	Scream	https://coinmarketcap.com/currencies/scream/	SCREAM	$1.67
3503	Pando	https://coinmarketcap.com/currencies/pando/	PANDO	$0.01998
3504	Megatech	https://coinmarketcap.com/currencies/megatech/	MGT	$0.00377
3505	Crypto Holding Frank Token	https://coinmarketcap.com/currencies/crypto-holding-frank-token/	CHFT	$1.01
3506	Guardian	https://coinmarketcap.com/currencies/guardian/	GUARD	$1.52
3507	TRVL	https://coinmarketcap.com/currencies/trvl/	TRVL	$0.05285
3508	Outer Ring MMO (GQ)	https://coinmarketcap.com/currencies/outer-ring-mmo-gq/	GQ	$0.002691
3509	IoTex Pad	https://coinmarketcap.com/currencies/iotex-pad/	TEX	$0.0281
3510	Dragoma	https://coinmarketcap.com/currencies/dragoma/	DMA	$0.07917
3511	INTERSTELLAR DOMAIN ORDER	https://coinmarketcap.com/currencies/interstellar-domain-order/	IDO	$0.00
3512	Zamio	https://coinmarketcap.com/currencies/zamio/	ZAM	$0.01
3513	DOGAM├Н	https://coinmarketcap.com/currencies/dogami/	DOGA	$0.08
3514	BambooDeFi	https://coinmarketcap.com/currencies/bamboo-defi/	BAMBOO	$0.04
3515	Castello Coin	https://coinmarketcap.com/currencies/castello-coin/	CAST	$0.17
3516	MOBLAND	https://coinmarketcap.com/currencies/syn-city/	SYNR	$0.02
3517	Gains Associates	https://coinmarketcap.com/currencies/gains-associates/	GAINS	$0.11
3518	BitBook	https://coinmarketcap.com/currencies/bitbook/	BBT	$0.00
3519	XRdoge	https://coinmarketcap.com/currencies/xrdoge/	XRDOGE	$0.00
3520	Hudi	https://coinmarketcap.com/currencies/hudi/	HUDI	$0.33
3521	Antex	https://coinmarketcap.com/currencies/antex/	ANTEX	$0.00
3522	CryptoTanks	https://coinmarketcap.com/currencies/cryptotanks/	TANK	$0.02
3523	Wine Shares	https://coinmarketcap.com/currencies/wine-shares/	WINE	$247.92
3524	Animal Farm Pigs	https://coinmarketcap.com/currencies/animal-farm-pigs/	AFP	$65.79
3525	LoopNetwork	https://coinmarketcap.com/currencies/loopnetwork/	LOOP	$0.01
3526	JERITEX	https://coinmarketcap.com/currencies/jeritex/	JRIT	$0.18
3527	MyRichFarm	https://coinmarketcap.com/currencies/myrichfarm/	RCH	$0.05
3528	StarSharks SEA	https://coinmarketcap.com/currencies/starsharks-sea/	SEA	$0.02
3529	OwlDAO	https://coinmarketcap.com/currencies/owldao/	OWL	$0.02
3530	Frontrow	https://coinmarketcap.com/currencies/frontrow/	FRR	$0.00
3531	Apple Tokenized Stock Defichain	https://coinmarketcap.com/currencies/apple-tokenized-stock-defichain/	DAAPL	$95.17
3532	Kyoko	https://coinmarketcap.com/currencies/kyoko/	KYOKO	$0.10
3533	NetFlowCoin	https://coinmarketcap.com/currencies/netflowcoin/	NFC	$7.25
3534	Ravendex	https://coinmarketcap.com/currencies/ravendex/	RAVE	$0.00
3535	Sentre Protocol	https://coinmarketcap.com/currencies/sentre-protocol/	SNTR	$0.00
3536	AmazingTeamDAO	https://coinmarketcap.com/currencies/amazingteamdao/	AMAZINGTEAM	$54.27
3537	Source Token	https://coinmarketcap.com/currencies/source-token/	SRCX	$0.01
3538	Davis Cup Fan Token	https://coinmarketcap.com/currencies/davis-cup-fan-token/	DAVIS	$1.44
3539	ShibElon	https://coinmarketcap.com/currencies/shibelon/	SHIBELON	$0.00
3540	Bonded Cronos	https://coinmarketcap.com/currencies/bonded-cronos/	BCRO	$0.11
3541	AEN Smart Token	https://coinmarketcap.com/currencies/aen-smart-token/	AENS	$0.02
3542	Metarun	https://coinmarketcap.com/currencies/metarun/	MRUN	$0.00
3543	GoldeFy	https://coinmarketcap.com/currencies/goldefy/	GOD	$0.02
3544	ToxicDeer Share	https://coinmarketcap.com/currencies/toxicdeer-share/	XDSHARE	$162.50
3545	Protocon	https://coinmarketcap.com/currencies/protocon/	PEN	$0.04
3546	LeisureMeta	https://coinmarketcap.com/currencies/leisuremeta/	LM	$0.45
3547	NFTDAO	https://coinmarketcap.com/currencies/nftdao/	NAO	$0.00
3548	Cykura	https://coinmarketcap.com/currencies/cyclos/	CYS	$0.03
3549	Sealem Token	https://coinmarketcap.com/currencies/sealem-token/	ST	$0.41
3550	MLAND Token	https://coinmarketcap.com/currencies/mland-token/	MLAND	$0.27
3551	Cornucopias	https://coinmarketcap.com/currencies/cornucopias/	COPI	$0.02
3552	Sifu Vision	https://coinmarketcap.com/currencies/sifu-vision/	SIFU	$42.56
3553	QANplatform	https://coinmarketcap.com/currencies/qanplatform/	QANX	$0.01
3554	Cypherium	https://coinmarketcap.com/currencies/cypherium/	CPH	$0.02
3555	Round Dollar	https://coinmarketcap.com/currencies/round-dollar/	RD	$14.16
3556	SingMon Token	https://coinmarketcap.com/currencies/singmon-token/	SM	$0.01
3557	Safle	https://coinmarketcap.com/currencies/safle/	SAFLE	$0.02
3558	Zone of Avoidance	https://coinmarketcap.com/currencies/zone-of-avoidance/	ZOA	$0.01
3559	Crown Sovereign	https://coinmarketcap.com/currencies/crown-sovereign/	CSOV	$0.01
3560	Nation3	https://coinmarketcap.com/currencies/nation3/	NATION	$957.19
3561	Krypton Galaxy Coin	https://coinmarketcap.com/currencies/krypton-galaxy-coin/	KGC	$0.00
3562	Endless Battlefield	https://coinmarketcap.com/currencies/endless-battlefield/	EB	$0.01
3563	CateCoin	https://coinmarketcap.com/currencies/catecoin/	CATE	$0.00
3564	GoMeat	https://coinmarketcap.com/currencies/gomeat/	GOMT	$0.56
3565	Dreams Quest	https://coinmarketcap.com/currencies/dreams-quest/	DREAMS	$0.00
3566	GeniuX	https://coinmarketcap.com/currencies/geniux/	IUX	$0.31
3567	EVE Token	https://coinmarketcap.com/currencies/eve-exchange/	EVE	$0.02
3568	Gem Guardian	https://coinmarketcap.com/currencies/gemguardian/	GEMG	$0.02
3569	Ripio Coin	https://coinmarketcap.com/currencies/ripio-coin/	RPC	$0.01
3570	Keeps Coin	https://coinmarketcap.com/currencies/keeps-blockchain/	KVERSE	$0.02
3571	Falcon Swaps	https://coinmarketcap.com/currencies/falcon-swaps/	FALCONS	$0.01
3572	Lootex	https://coinmarketcap.com/currencies/lootex/	LOOT	$0.63
3573	Elk Finance	https://coinmarketcap.com/currencies/elk-finance/	ELK	$0.26
3574	Golden Ball	https://coinmarketcap.com/currencies/golden-ball/	GLB	$0.00
3575	New Order	https://coinmarketcap.com/currencies/new-order/	NEWO	$0.02
3576	IAGON	https://coinmarketcap.com/currencies/iagon/	IAG	$0.01
3577	Tribalpunk Cryptoverse	https://coinmarketcap.com/currencies/tribalpunk-cryptoverse/	ANTA	$0.06
3578	2022MOON	https://coinmarketcap.com/currencies/2022moon/	2022M	$0.00
3579	JustCarbon Removal	https://coinmarketcap.com/currencies/justcarbon-removal/	JCR	$22.55
3580	DFX Finance	https://coinmarketcap.com/currencies/dfx-finance/	DFX	$0.52
3581	Hive Dollar	https://coinmarketcap.com/currencies/hive-dollar/	HBD	$0.99
3582	Waves.Exchange Token	https://coinmarketcap.com/currencies/waves-exchange-token/	WX	$1.74
3583	Chumbi Valley	https://coinmarketcap.com/currencies/chumbi-valley/	CHMB	$0.00
3584	Bezoge Earth	https://coinmarketcap.com/currencies/bezoge-earth/	BEZOGE	$0.00
3585	ONINO	https://coinmarketcap.com/currencies/oni-token/	ONI	$0.07
3586	Frax Price Index Share	https://coinmarketcap.com/currencies/frax-price-index-share/	FPIS	$0.97
3587	Karmaverse	https://coinmarketcap.com/currencies/karmaverse/	KNOT	$0.24
3588	BLOCKS	https://coinmarketcap.com/currencies/blocks/	BLOCKS	$0.01
3589	Parrot Protocol	https://coinmarketcap.com/currencies/parrot-protocol/	PRT	$0.00
3590	VicMove	https://coinmarketcap.com/currencies/vicmove/	VIM	$0.02
3591	7Pixels	https://coinmarketcap.com/currencies/7pixels/	7PXS	$5.56
3592	Bee Capital	https://coinmarketcap.com/currencies/bee-capital/	BEE	$0.16
3593	Crypto Gladiator Shards	https://coinmarketcap.com/currencies/crypto-gladiator-shards/	CGS	$0.03
3594	Woozoo Music	https://coinmarketcap.com/currencies/woozoo-music/	WZM	$2.55
3595	KYCCOIN	https://coinmarketcap.com/currencies/kyccoin/	KYCC	$0.08
3596	Realm	https://coinmarketcap.com/currencies/realm/	REALM	$0.03
3597	Rake Finance	https://coinmarketcap.com/currencies/rake-finance/	RAK	$6.69
3598	Kermit Inu	https://coinmarketcap.com/currencies/kermit-inu/	KTI	$0.00
3599	Kaizen Finance	https://coinmarketcap.com/currencies/kaizen-finance/	KZEN	$0.07
3600	GamingShiba	https://coinmarketcap.com/currencies/gamingshiba/	GAMINGSHIBA	$0.00
3601	Terra World Token	https://coinmarketcap.com/currencies/terra-world-token/	TWD	$0.03362
3602	Art Rino	https://coinmarketcap.com/currencies/art-rino/	ARTRINO	$0.001829
3603	Homeros	https://coinmarketcap.com/currencies/homeros/	HMR	$0.004752
3604	Eterna	https://coinmarketcap.com/currencies/eterna/	EHX	$0.001199
3605	Astra Guild Ventures	https://coinmarketcap.com/currencies/astra-guild-ventures/	AGV	$0.001252
3606	youves uUSD	https://coinmarketcap.com/currencies/youves/	UUSD	$0.9899
3607	Frozen Walrus Share	https://coinmarketcap.com/currencies/frozen-walrus-share/	WSHARE	$222.25
3608	Globe Derivative Exchange	https://coinmarketcap.com/currencies/globe-derivative-exchange/	GDT	$0.1734
3609	Virtual Tourist	https://coinmarketcap.com/currencies/virtual-tourist/	VT	$0.02531
3610	Ltradex	https://coinmarketcap.com/currencies/ltradex/	LTEX	$0.00000009135
3611	LaEeb	https://coinmarketcap.com/currencies/laeeb/	LAEEB	$0.00
3612	IndiGG	https://coinmarketcap.com/currencies/indigg/	INDI	$0.16
3613	AdaSwap	https://coinmarketcap.com/currencies/adaswap/	ASW	$0.00
3614	Tomb	https://coinmarketcap.com/currencies/tomb/	TOMB	$0.04
3615	Channels	https://coinmarketcap.com/currencies/channels/	CAN	$0.00
3616	ENTERBUTTON	https://coinmarketcap.com/currencies/enterbutton/	ENTC	$4.04
3617	Ratio Finance	https://coinmarketcap.com/currencies/ratio-finance/	RATIO	$0.74
3618	Moola Celo USD	https://coinmarketcap.com/currencies/moola-celo-usd/	mCUSD	$0.99
3619	Mononoke Inu	https://coinmarketcap.com/currencies/mononoke-inu/	Mononoke-Inu	$0.00
3620	Griffin Art	https://coinmarketcap.com/currencies/griffin-art/	GART	$0.00
3621	Neighbourhoods	https://coinmarketcap.com/currencies/neighbourhoods/	NHT	$0.00
3622	SaunaFinance Token	https://coinmarketcap.com/currencies/saunafinance-token/	SAUNA	$0.00
3623	Graphen	https://coinmarketcap.com/currencies/graphen/	ELTG	$0.00
3624	Tectonic	https://coinmarketcap.com/currencies/tectonic/	TONIC	$0.00
3625	CoW Protocol	https://coinmarketcap.com/currencies/cow-protocol/	COW	$0.08
3626	WEDEX TOKEN V2	https://coinmarketcap.com/currencies/wedex-token-v2/	DEX	$0.44
3627	Titan Hunters	https://coinmarketcap.com/currencies/titan-hunters/	TITA	$0.01
3628	Walrus	https://coinmarketcap.com/currencies/walrus/	WLRS	$1.39
3629	Lost Worlds	https://coinmarketcap.com/currencies/lost-worlds/	LOST	$0.07
3630	Faith Tribe	https://coinmarketcap.com/currencies/faith-tribe/	FTRB	$0.01
3631	Yuse	https://coinmarketcap.com/currencies/yuse/	YUSE	$0.04
3632	New Paradigm Assets Solution	https://coinmarketcap.com/currencies/new-paradigm-assets-solution/	NPAS	$6.14
3633	Echoin	https://coinmarketcap.com/currencies/echoin/	EC	$0.00
3634	Metapad	https://coinmarketcap.com/currencies/metapad/	MPD	$0.01
3635	Your Future Exchange	https://coinmarketcap.com/currencies/your-future-exchange/	YFX	$0.03
3636	Uhive	https://coinmarketcap.com/currencies/uhive/	HVE2	$0.00
3637	Bedrock	https://coinmarketcap.com/currencies/bedrock/	ROCK	$0.03
3638	Secretum	https://coinmarketcap.com/currencies/secretum/	SER	$0.09
3639	Ndau	https://coinmarketcap.com/currencies/ndau/	NDAU	$15.40
3640	Toucan Protocol: Base Carbon Tonne	https://coinmarketcap.com/currencies/toucan-protocol-base-carbon-tonne/	BCT	$1.92
3641	Vera	https://coinmarketcap.com/currencies/vera-network/	VERA	$0.03
3642	Edge	https://coinmarketcap.com/currencies/edge/	EDGE	$0.07
3643	Metahub Coin	https://coinmarketcap.com/currencies/metahub-coin/	MHB	$0.04
3644	Torii Finance	https://coinmarketcap.com/currencies/torii-finance/	TORII	$15.78
3645	Prime Numbers	https://coinmarketcap.com/currencies/prime-numbers/	PRNT	$0.74
3646	QiDao	https://coinmarketcap.com/currencies/qidao/	QI	$0.24
3647	Goldario	https://coinmarketcap.com/currencies/goldario/	GLD	$0.22
3648	Ref Finance	https://coinmarketcap.com/currencies/ref-finance/	REF	$0.26
3649	BinStarter	https://coinmarketcap.com/currencies/binstarter/	BSR	$0.09
3650	TokenAsset	https://coinmarketcap.com/currencies/tokenasset/	NTB	$0.10
3651	iNFTspace	https://coinmarketcap.com/currencies/inftspace/	INS	$0.00
3652	Muu Inu	https://coinmarketcap.com/currencies/muu-inu/	MINU	$0.00
3653	Dopex	https://coinmarketcap.com/currencies/dopex/	DPX	$119.35
3654	BunnyPark	https://coinmarketcap.com/currencies/bunnypark/	BP	$0.01
3655	SideShift Token	https://coinmarketcap.com/currencies/sideshift-token/	XAI	$0.17
3656	Zenith Coin	https://coinmarketcap.com/currencies/zenith-coin/	ZENITH	$0.05
3657	Cindrum	https://coinmarketcap.com/currencies/cindrum/	CIND	$0.00
3658	Bend DAO	https://coinmarketcap.com/currencies/bend-dao/	BEND	$0.01
3659	Alchemist	https://coinmarketcap.com/currencies/alchemist/	MIST	$2.88
3660	Smart Block Chain City	https://coinmarketcap.com/currencies/smart-block-chain-city/	SBCC	$1.39
3661	OBRok Token	https://coinmarketcap.com/currencies/obrok-token/	OBROK	$0.00
3662	Platypus Finance	https://coinmarketcap.com/currencies/platypus-finance/	PTP	$0.19
3663	LeisurePay	https://coinmarketcap.com/currencies/leisurepay/	LPY	$0.00
3664	ChainCade	https://coinmarketcap.com/currencies/chaincade/	CHAINCADE	$0.00
3665	Wrapped Ampleforth	https://coinmarketcap.com/currencies/wrapped-ampleforth/	WAMPL	$3.63
3666	Fringe Finance	https://coinmarketcap.com/currencies/fringe-finance/	FRIN	$0.01
3667	LavaX Labs	https://coinmarketcap.com/currencies/launchx/	LAVAX	$0.01
3668	Metagalaxy Land	https://coinmarketcap.com/currencies/metagalaxy-land/	MEGALAND	$0.00
3669	DefiBox	https://coinmarketcap.com/currencies/defibox/	BOX	$0.85
3670	KlayCity	https://coinmarketcap.com/currencies/klaycity/	ORB	$0.09
3671	Lenda	https://coinmarketcap.com/currencies/lenda/	LENDA	$0.00
3672	Fishy Tank Token	https://coinmarketcap.com/currencies/fishy-tank-token/	FTE	$0.01
3673	Planet	https://coinmarketcap.com/currencies/planet-finance/	AQUA	$57.58
3674	JPEG'd	https://coinmarketcap.com/currencies/jpeg-d/	JPEG	$0.00
3675	CaliCoin	https://coinmarketcap.com/currencies/calicoin/	CALI	$0.02
3676	METANOA	https://coinmarketcap.com/currencies/noa-play/	NOA	$0.03
3677	Moonie NFT	https://coinmarketcap.com/currencies/moonie-nft/	MNY	$0.00
3678	CPCoin	https://coinmarketcap.com/currencies/cpcoin/	CPC	$0.33
3679	RoboFi	https://coinmarketcap.com/currencies/robofi/	VICS	$0.10
3680	FuruKuru	https://coinmarketcap.com/currencies/furukuru/	FUKU	$0.00
3681	Zipmex	https://coinmarketcap.com/currencies/zipmex/	ZMT	$0.61
3682	Colony Network Token	https://coinmarketcap.com/currencies/colony-network-token/	CLNY	$0.08
3683	Lucky Block	https://coinmarketcap.com/currencies/lucky-block/	LBLOCK	$0.00
3684	wanETH	https://coinmarketcap.com/currencies/waneth/	WANETH	$1062.34
3685	Covenant	https://coinmarketcap.com/currencies/covenant-child/	COVN	$6.92
3686	GFORCE	https://coinmarketcap.com/currencies/gforce/	GFCE	$0.48
3687	Uno Re	https://coinmarketcap.com/currencies/unore/	UNO	$0.05
3688	BlockStream Mining Notes	https://coinmarketcap.com/currencies/blockstream-mining-notes/	BMN	$148652.22
3689	Starbots	https://coinmarketcap.com/currencies/starbots/	BOT	$0.03
3690	TribeOne	https://coinmarketcap.com/currencies/tribe-one/	HAKA	$0.01
3691	Yoshi.exchange	https://coinmarketcap.com/currencies/yoshi-exchange/	YOSHI	$0.32
3692	Game Coin	https://coinmarketcap.com/currencies/game-coin/	GMEX	$0.00
3693	Savage	https://coinmarketcap.com/currencies/savage/	SAVG	$0.01
3694	Jet Protocol	https://coinmarketcap.com/currencies/jet-protocol/	JET	$0.14
3695	BSCStation	https://coinmarketcap.com/currencies/bsc-station/	BSCS	$0.02
3696	CoinsPaid	https://coinmarketcap.com/currencies/coinspaid/	CPD	$0.01
3697	PathDAO	https://coinmarketcap.com/currencies/pathdao/	PATH	$0.01
3698	Quickswap[New]	https://coinmarketcap.com/currencies/quickswap-new/	QUICK	$0.05
3699	CoolHash	https://coinmarketcap.com/currencies/coolmining-cooha/	COOHA	$1.05
3700	LynKey	https://coinmarketcap.com/currencies/lynkey/	LYNK	$0.12
3701	LynKey	https://coinmarketcap.com/currencies/lynkey/	LYNK	$0.1169
3702	PayNet Coin	https://coinmarketcap.com/currencies/paynet-coin/	PAYN	$0.09405
3703	Pig Finance	https://coinmarketcap.com/currencies/pig-finance/	PIG	$0.00000001575
3704	Zomfi	https://coinmarketcap.com/currencies/zomfi/	ZOMFI	$0.005575
3705	Kyrrex	https://coinmarketcap.com/currencies/kyrrex/	KRRX	$0.2978
3706	BITONE	https://coinmarketcap.com/currencies/bitone/	BIO	$0.9191
3707	Thor	https://coinmarketcap.com/currencies/thor/	THOR	$1.71
3708	Heal The World	https://coinmarketcap.com/currencies/heal-the-world/	HEAL	$0.0000002362
3709	CPUcoin	https://coinmarketcap.com/currencies/cpucoin/	CPU	$0.03327
3710	Mineral	https://coinmarketcap.com/currencies/mineral/	MNR	$0.002031
3711	TrustBase	https://coinmarketcap.com/currencies/trustbase/	TBE	$0.00
3712	Spain National Fan Token	https://coinmarketcap.com/currencies/spain-national-fan-token/	SNFT	$0.08
3713	Bitcoiva	https://coinmarketcap.com/currencies/bitcoiva/	BCA	$8.14
3714	PayAccept	https://coinmarketcap.com/currencies/payaccept/	PAYT	$0.08
3715	MetaWear	https://coinmarketcap.com/currencies/metawear/	WEAR	$0.00
3716	xDAI	https://coinmarketcap.com/currencies/xdaistable/	xDAI	$0.99
3717	Cardence	https://coinmarketcap.com/currencies/cardence-io/	CRDN	$0.01
3718	VersalNFT	https://coinmarketcap.com/currencies/versalnft/	VER	$0.00
3719	Ocavu Network Token	https://coinmarketcap.com/currencies/ocavu-network-token/	OCAVU	$0.02
3720	Blocto Token	https://coinmarketcap.com/currencies/blocto/	BLT	$0.09
3721	DIAMOND	https://coinmarketcap.com/currencies/diamond-xrpl/	DIAMOND	$22.15
3722	TCGCoin 2.0	https://coinmarketcap.com/currencies/tcgcoin-2-0/	TCG2	$0.20
3723	Bullieverse	https://coinmarketcap.com/currencies/bullieverse/	$BULL	$0.01
3724	Wrapped IoTeX	https://coinmarketcap.com/currencies/wrapped-iotex/	WIOTX	$0.02
3725	RCCCToken	https://coinmarketcap.com/currencies/rccctoken/	RCCC	$0.02
3726	e-Money EUR	https://coinmarketcap.com/currencies/e-money/	EEUR	$0.99
3727	Bit Hotel	https://coinmarketcap.com/currencies/bit-hotel/	BTH	$0.01
3728	YachtX	https://coinmarketcap.com/currencies/yachtx/	YACHTX	$0.01
3729	Apollo Inu	https://coinmarketcap.com/currencies/apollo-inu/	APOLLO	$0.00
3730	QToken	https://coinmarketcap.com/currencies/lobstex-new/	QTO	$0.01
3731	NvirWorld	https://coinmarketcap.com/currencies/nvirworld/	NVIR	$0.04
3732	Cherry Network	https://coinmarketcap.com/currencies/cherry-network/	CHER	$0.05
3733	Bullshit Inu	https://coinmarketcap.com/currencies/bullshit-inu/	BULL	$0.00
3734	UnderMineGold	https://coinmarketcap.com/currencies/underinegold/	UMG	$0.00
3735	Connect	https://coinmarketcap.com/currencies/connect-token/	CNT	$0.16
3736	ByteDex	https://coinmarketcap.com/currencies/bytedex/	BEXT	$0.02
3737	Tycoon Zone	https://coinmarketcap.com/currencies/tycoon-zone/	TYCOON	$0.01
3738	SUPE	https://coinmarketcap.com/currencies/supe/	SUPE	$0.34
3739	Bitpaid Token	https://coinmarketcap.com/currencies/bitpaid-token/	BTP	$0.86
3740	AlgoBlocks	https://coinmarketcap.com/currencies/algoblocks/	ALGOBLK	$0.02
3741	MicroStrategy tokenized stock FTX	https://coinmarketcap.com/currencies/microstrategy-tokenized-stock-ftx/	MSTR	$123.22
3742	Supersonic Finance	https://coinmarketcap.com/currencies/supersonic-finance/	SSN	$0.00
3743	CheckerChain	https://coinmarketcap.com/currencies/checkerchain/	CHECKR	$0.00
3744	ARTM	https://coinmarketcap.com/currencies/artm/	ARTM	$0.00
3745	MetaOneVerse	https://coinmarketcap.com/currencies/metaoneverse/	M1VERSE	$0.00
3746	Universal Store of Value	https://coinmarketcap.com/currencies/universal-store-of-value/	USV	$186.20
3747	YAM V2	https://coinmarketcap.com/currencies/yam-v2/	YAMV2	$5.14
3748	Legacy ICHI	https://coinmarketcap.com/currencies/legacy-ichi/	ICHI	$4.22
3749	Learning Cash	https://coinmarketcap.com/currencies/learning-cash/	EAD	$0.00
3750	Open Rights Exchange	https://coinmarketcap.com/currencies/ore-network/	ORE	$0.01
3751	Cosplay Token	https://coinmarketcap.com/currencies/cosplay-token/	COT	$0.04
3752	Emp Money	https://coinmarketcap.com/currencies/emp-money/	EMP	$0.23
3753	EverGrow Coin	https://coinmarketcap.com/currencies/evergrowcoin/	EGC	$0.00
3754	Block Ape Scissors	https://coinmarketcap.com/currencies/block-ape-scissors/	BAS	$0.10
3755	Meblox Protocol	https://coinmarketcap.com/currencies/meblox-protocol/	MEB	$0.10
3756	ETHDOWN	https://coinmarketcap.com/currencies/eth-down/	ETHDOWN	$2.75
3757	USD+	https://coinmarketcap.com/currencies/usd/	USD+	$1.00
3758	Gnome Mines	https://coinmarketcap.com/currencies/gnome-mines/	GMINES	$0.33
3759	Sincere Doge	https://coinmarketcap.com/currencies/sincere-doge/	SDOGE	$0.00
3760	Cardiocoin	https://coinmarketcap.com/currencies/cardiocoin/	CRDC	$0.01
3761	French Connection Finance	https://coinmarketcap.com/currencies/french-connection-finance/	FCF	$0.00
3762	EZChain	https://coinmarketcap.com/currencies/ezchain/	EZC	$0.10
3763	Connect Financial	https://coinmarketcap.com/currencies/connect-financial/	CNFI	$0.11
3764	Gym Network	https://coinmarketcap.com/currencies/gym-network/	GYMNET	$0.07
3765	iShares 20+ Year Treasury Bond ETF Defichain	https://coinmarketcap.com/currencies/treasury-bond-eth-tokenized-stock-defichain/	DTLT	$86.54
3766	AlphaDEX	https://coinmarketcap.com/currencies/alphadex/	ROAR	$0.02
3767	Brise Paradise	https://coinmarketcap.com/currencies/brise-paradise/	PRDS	$0.00
3768	MiraQle	https://coinmarketcap.com/currencies/miraqle/	MQL	$0.02
3769	Wrapped Rose	https://coinmarketcap.com/currencies/wrapped-rose/	wROSE	$0.05
3770	Moss Carbon Credit	https://coinmarketcap.com/currencies/moss-carbon-credit/	MCO2	$4.39
3771	Amazon Tokenized Stock Defichain	https://coinmarketcap.com/currencies/amazon-tokenized-stock-defichain/	DAMZN	$75.22
3772	SnowCrash Token	https://coinmarketcap.com/currencies/snowcrash-token/	NORA	$0.01
3773	DeFi Warrior (FIWA)	https://coinmarketcap.com/currencies/defi-warrior/	FIWA	$0.00
3774	Ardana	https://coinmarketcap.com/currencies/ardana/	DANA	$0.20
3775	Midas	https://coinmarketcap.com/currencies/midas/	MIDAS	$26.84
3776	Finance Blocks	https://coinmarketcap.com/currencies/finance-blocks/	FBX	$0.01
3777	Fidira	https://coinmarketcap.com/currencies/fidira/	FID	$0.01
3778	MetaPlay	https://coinmarketcap.com/currencies/metaplay/	MPLAY	$4.65
3779	Saltmarble	https://coinmarketcap.com/currencies/saltmarble/	SML	$11.70
3780	Compendium Finance	https://coinmarketcap.com/currencies/compendium-finance/	CMFI	$0.04
3781	SmartLOX	https://coinmarketcap.com/currencies/smartlox/	SMARTLOX	$0.00
3782	KList Protocol	https://coinmarketcap.com/currencies/klist-protocol/	LIST	$0.01
3783	Mobipad	https://coinmarketcap.com/currencies/mobipad/	MBP	$0.03
3784	Heavenland	https://coinmarketcap.com/currencies/heavenland/	HTO	$0.11
3785	Binance Wrapped DOT	https://coinmarketcap.com/currencies/binance-wrapped-dot/	BDOT	$5.07
3786	Flare Finance	https://coinmarketcap.com/currencies/flare-finance/	EXFI	$0.38
3787	UnitedCoins	https://coinmarketcap.com/currencies/unitedcoins/	UNITS	$1.45
3788	Sipher	https://coinmarketcap.com/currencies/sipher/	SIPHER	$0.15
3789	Temtum	https://coinmarketcap.com/currencies/temtum/	TEM	$0.19
3790	DeSpace Protocol	https://coinmarketcap.com/currencies/despace-protocol/	DES	$0.02
3791	KnightSwap	https://coinmarketcap.com/currencies/knightswap/	KNIGHT	$0.13
3792	Chain Pet	https://coinmarketcap.com/currencies/chain-pet/	CPET	$0.00
3793	Pancake Games	https://coinmarketcap.com/currencies/pancake-games/	GCAKE	$0.00
3794	Energy8	https://coinmarketcap.com/currencies/energy8/	E8	$0.00
3795	Galaxy Coin	https://coinmarketcap.com/currencies/galaxycoin/	GALAXY	$0.00
3796	Solvent	https://coinmarketcap.com/currencies/solvent/	SVT	$0.06
3797	Equilibrium Games	https://coinmarketcap.com/currencies/eq/	EQ	$0.07
3798	Metaverse Face	https://coinmarketcap.com/currencies/metaverse-face/	MEFA	$0.00
3799	Z7DAO	https://coinmarketcap.com/currencies/z7dao/	Z7	$0.07
3800	Liquid Staking Dot	https://coinmarketcap.com/currencies/liquid-staking-dot/	LDOT	$0.73
3801	Pexcoin	https://coinmarketcap.com/currencies/pexcoin/	PEX	$0.000524
3802	Plethori	https://coinmarketcap.com/currencies/plethori/	PLE	$0.003368
3803	LunaGens	https://coinmarketcap.com/currencies/lunagens/	LUNG	$0.0004466
3804	Pacific	https://coinmarketcap.com/currencies/pacific/	PAF	$0.001409
3805	TeraBlock	https://coinmarketcap.com/currencies/terablock/	TBC	$0.006026
3806	WealthSecrets	https://coinmarketcap.com/currencies/wealthsecrets/	WSC	$0.00004988
3807	LuckyDoge	https://coinmarketcap.com/currencies/luckydoge/	LUCKYDOGE	$0.000002115
3808	StepG	https://coinmarketcap.com/currencies/stepg/	STEPG	$0.003386
3809	MLOKY	https://coinmarketcap.com/currencies/mloky/	MLOKY	$0.0006874
3810	DEIP Protocol	https://coinmarketcap.com/currencies/deip-protocol/	DEIP	$0.001808
3811	Larix	https://coinmarketcap.com/currencies/larix/	LARIX	$0.00
3812	Lumerin	https://coinmarketcap.com/currencies/lumerin/	LMR	$0.02
3813	Metavie	https://coinmarketcap.com/currencies/metavie/	METAVIE	$2.06
3814	Neos Credits	https://coinmarketcap.com/currencies/neos-credits/	NCR	$0.31
3815	J9CASINO	https://coinmarketcap.com/currencies/j9casino/	J9BC	$0.02
3816	ViCA Token	https://coinmarketcap.com/currencies/vica-token/	VICA	$0.49
3817	MM Optimizer	https://coinmarketcap.com/currencies/mm-optimizer/	MMO	$1.69
3818	Dark Energy Crystals	https://coinmarketcap.com/currencies/dark-energy-crystals/	DEC	$0.00
3819	Burp	https://coinmarketcap.com/currencies/bigtownchef/	BURP	$0.01
3820	BlueSparrow Token (Old)	https://coinmarketcap.com/currencies/bluesparrow-token/	BLUESPARROW	$0.00
3821	Galaxy Finance	https://coinmarketcap.com/currencies/galaxy-finance/	GFT	$1.35
3822	Ratio Stable Coin	https://coinmarketcap.com/currencies/ratio-stable-coin/	USDR	$1.00
3823	random	https://coinmarketcap.com/currencies/random/	RND	$0.00
3824	Memeverse	https://coinmarketcap.com/currencies/memeverse/	MEME	$0.01
3825	Franklin	https://coinmarketcap.com/currencies/franklin/	FLY	$0.00
3826	Phantom Protocol	https://coinmarketcap.com/currencies/phantom-protocol/	PHM	$0.00
3827	NanoByte Token	https://coinmarketcap.com/currencies/nanobyte-token/	NBT	$0.01
3828	Media Network	https://coinmarketcap.com/currencies/media-network/	MEDIA	$21.09
3829	Radar	https://coinmarketcap.com/currencies/radar/	RADAR	$0.05
3830	Banana Task Force Ape	https://coinmarketcap.com/currencies/banana-task-force-ape/	BTFA	$0.00
3831	cheqd	https://coinmarketcap.com/currencies/cheqd/	CHEQ	$0.03
3832	Metaverse Index	https://coinmarketcap.com/currencies/metaverse-index/	MVI	$35.70
3833	Centcex	https://coinmarketcap.com/currencies/centcex/	CENX	$0.00
3834	WAGMI Game	https://coinmarketcap.com/currencies/wagmi-game-2/	WAGMIGAMES	$0.00
3835	Sienna	https://coinmarketcap.com/currencies/sienna/	SIENNA	$0.88
3836	Dragon War	https://coinmarketcap.com/currencies/dragon-war/	DRAW	$0.01
3837	KiKi.finance	https://coinmarketcap.com/currencies/kiki-finance/	KIKI	$0.78
3838	Wrapped KuCoin Token	https://coinmarketcap.com/currencies/wrapped-kucoin-token/	WKCS	$8.24
3839	XcelDefi	https://coinmarketcap.com/currencies/xcel-swap/	XLD	$0.01
3840	Torah Network	https://coinmarketcap.com/currencies/torah-network/	VP	$15.41
3841	DumpBuster	https://coinmarketcap.com/currencies/dumpbuster/	GTFO	$0.00
3842	FantomPAD	https://coinmarketcap.com/currencies/fantompad/	FPAD	$0.03
3843	Colony	https://coinmarketcap.com/currencies/colony/	CLY	$0.06
3844	Fat Cat Killer	https://coinmarketcap.com/currencies/fat-cat-killer/	KILLER	$0.00
3845	Dominium	https://coinmarketcap.com/currencies/dominium/	DOM	$2.30
3846	Maxonrow	https://coinmarketcap.com/currencies/maxonrow/	MXW	$0.00
3847	ETH 2x Flexible Leverage Index	https://coinmarketcap.com/currencies/eth-2x-flexible-leverage-index/	ETH2X-FLI	$0.00
3848	DUST Protocol	https://coinmarketcap.com/currencies/dust-protocol/	DUST	$1.16
3849	Enegra (EGX)	https://coinmarketcap.com/currencies/enegra-egx/	EGX	$159.15
3850	Supercars	https://coinmarketcap.com/currencies/supercars/	CAR	$1.08
3851	Moonseer	https://coinmarketcap.com/currencies/moonseer/	MOON	$0.00
3852	PayPal tokenized stock FTX	https://coinmarketcap.com/currencies/paypal-tokenized-stock-ftx/	PYPL	$74.55
3853	Gro DAO Token	https://coinmarketcap.com/currencies/gro-dao-token/	GRO	$0.18
3854	NitroEX	https://coinmarketcap.com/currencies/nitroex/	NTX	$0.00
3855	Nel Hydrogen	https://coinmarketcap.com/currencies/nel-hydrogen/	NEL	$0.02
3856	Battle Pets	https://coinmarketcap.com/currencies/battle-pets/	PET	$0.03
3857	TrusterCoin	https://coinmarketcap.com/currencies/trustercoin/	TSC	$0.00
3858	ImminentVerse	https://coinmarketcap.com/currencies/imminentverse/	IMV	$0.00
3859	Morcilla War	https://coinmarketcap.com/currencies/morcilla-war/	MOR	$0.00
3860	The Doge NFT	https://coinmarketcap.com/currencies/the-doge-nft/	DOG	$0.00
3861	Bee Financial	https://coinmarketcap.com/currencies/bee-financial/	BEE	$0.00
3862	OpenLive NFT	https://coinmarketcap.com/currencies/openlive-nft/	OPV	$0.12
3863	EDDASwap	https://coinmarketcap.com/currencies/eddaswap/	EDDA	$160.63
3864	Yawww	https://coinmarketcap.com/currencies/yawww/	YAW	$0.04
3865	Comdex	https://coinmarketcap.com/currencies/comdex/	CMDX	$0.22
3866	Genshiro	https://coinmarketcap.com/currencies/genshiro/	GENS	$0.00
3867	KridaFans	https://coinmarketcap.com/currencies/kridafans/	KRIDA	$0.03
3868	DeltaFi	https://coinmarketcap.com/currencies/deltafi/	DELFI	$0.16
3869	KleeKai	https://coinmarketcap.com/currencies/kleekai/	KLEE	$0.00
3870	xcDOT	https://coinmarketcap.com/currencies/xcdot/	XCDOT	$6.74
3871	SONIC INU	https://coinmarketcap.com/currencies/sonic-inu/	SONIC	$0.00
3872	GamiFi.GG	https://coinmarketcap.com/currencies/gamifi-gg/	GMI	$0.00
3873	MyOwnItem	https://coinmarketcap.com/currencies/myownitem-v2/	MOI	$0.04
3874	KAINET	https://coinmarketcap.com/currencies/kainet/	KAINET	$0.00
3875	Digital Financial Exchange	https://coinmarketcap.com/currencies/digital-financial-exchange/	DIFX	$0.30
3876	Talent	https://coinmarketcap.com/currencies/talent/	TNT	$0.16
3877	KOLnet	https://coinmarketcap.com/currencies/kolnet/	KOLNET	$0.01
3878	Bird Bro	https://coinmarketcap.com/currencies/bird-bro/	BIRDBRO	$0.00
3879	The Wasted Lands	https://coinmarketcap.com/currencies/the-wasted-lands/	WAL	$0.05
3880	AssetMantle	https://coinmarketcap.com/currencies/assetmantle/	MNTL	$0.09
3881	BlockNoteX	https://coinmarketcap.com/currencies/blocknotex/	BNOX	$0.61
3882	Pleasure Coin	https://coinmarketcap.com/currencies/pleasure-coin/	NSFW	$0.00
3883	NFT Champions	https://coinmarketcap.com/currencies/nft-champions/	CHAMP	$0.02
3884	ASSAPLAY	https://coinmarketcap.com/currencies/assaplay/	ASSA	$0.02
3885	Burn	https://coinmarketcap.com/currencies/burn/	BURN	$0.00
3886	Buff Doge Coin	https://coinmarketcap.com/currencies/buff-doge-coin/	DOGECOIN	$0.00
3887	Hokkaido Inu	https://coinmarketcap.com/currencies/hokkaido-inu/	HOKK	$0.00
3888	Falcon 9	https://coinmarketcap.com/currencies/falcon-9/	F9	$0.00
3889	CV SHOTS	https://coinmarketcap.com/currencies/cv-shots/	CVSHOT	$32.03
3890	Lox Network	https://coinmarketcap.com/currencies/lox-network/	LOX	$0.00
3891	BattleVerse	https://coinmarketcap.com/currencies/battleverse/	BVC	$0.01
3892	Brayzin Heist	https://coinmarketcap.com/currencies/brayzin-heist/	BRZH	$0.02
3893	Paragen	https://coinmarketcap.com/currencies/paragen/	RGEN	$0.04
3894	Shade Protocol	https://coinmarketcap.com/currencies/shade-protocol/	SHD	$8.22
3895	MeetPle	https://coinmarketcap.com/currencies/meetple/	MPT	$0.06
3896	Yeti Finance	https://coinmarketcap.com/currencies/yeti-finance/	YETI	$0.03
3897	Bitsubishi	https://coinmarketcap.com/currencies/bitsubishi/	BITSU	$136.39
3898	Final Frontier	https://coinmarketcap.com/currencies/final-frontier/	FRNT	$0.00
3899	Lucidao	https://coinmarketcap.com/currencies/lucidao/	LCD	$0.07
3900	Wizarre Scroll	https://coinmarketcap.com/currencies/wizarre/	SCRL	$0.00
3901	THORSwap	https://coinmarketcap.com/currencies/thorswap/	THOR	$0.2181
3902	Millennium Sapphire	https://coinmarketcap.com/currencies/millennium-sapphire/	MSTO	$0.5895
3903	INGRESS	https://coinmarketcap.com/currencies/ingress/	IGR	$0.001365
3904	Day By Day	https://coinmarketcap.com/currencies/day-by-day/	DBD	$0.006852
3905	Coinerr	https://coinmarketcap.com/currencies/coinerr/	ERR	$0.0004315
3906	Space Misfits	https://coinmarketcap.com/currencies/space-misfits/	SMCW	$0.04034
3907	SIMBA Storage Token	https://coinmarketcap.com/currencies/simba-storage-token/	SST	$0.04805
3908	Plutonians	https://coinmarketcap.com/currencies/plutonians/	RPC	$0.0001446
3909	Crypviser	https://coinmarketcap.com/currencies/crypviser/	CVNX	$0.01714
3910	Quarashi	https://coinmarketcap.com/currencies/quarashi/	QUA	$0.008674
3911	Moomonster	https://coinmarketcap.com/currencies/moomonster/	MOO	$0.01
3912	Wiki Cat	https://coinmarketcap.com/currencies/wiki-cat/	WKC	$0.00
3913	Pi INU	https://coinmarketcap.com/currencies/pi-inu/	PINU	$0.00
3914	RaceFi	https://coinmarketcap.com/currencies/racefi/	RACEFI	$0.03
3915	Freela	https://coinmarketcap.com/currencies/freela/	FREL	$0.00
3916	Kishimoto Inu	https://coinmarketcap.com/currencies/kishimoto-inu/	Kishimoto	$0.00
3917	LAW TOKEN	https://coinmarketcap.com/currencies/law-token/	LAW	$0.01
3918	ElevenToken	https://coinmarketcap.com/currencies/11minutes/	ELVN	$0.01
3919	ShibaNFT	https://coinmarketcap.com/currencies/shibanft/	SHIBANFT	$0.00
3920	Lido wstETH	https://coinmarketcap.com/currencies/lido-finance-wsteth/	WSTETH	$1095.62
3921	Artverse Token	https://coinmarketcap.com/currencies/artverse-token/	AVT	$0.00
3922	Algodex Token	https://coinmarketcap.com/currencies/algodex-token/	ALGX	$0.00
3923	AZ World SocialFi	https://coinmarketcap.com/currencies/az-world/	AZW	$0.00
3924	Itheum	https://coinmarketcap.com/currencies/itheum/	ITHEUM	$0.13
3925	IDK	https://coinmarketcap.com/currencies/idk/	IDK	$0.07
3926	iShares MSCI Emerging Markets ETF Defichain	https://coinmarketcap.com/currencies/energy-efficient-mortgage-tokenized-stock-defichain/	DEEM	$29.29
3927	MVP Coin	https://coinmarketcap.com/currencies/mvp-coin/	MVP	$0.01
3928	PlayPad	https://coinmarketcap.com/currencies/playpad/	PPAD	$0.01
3929	WTF Token	https://coinmarketcap.com/currencies/wtf-token/	WTF	$0.00
3930	3X Long Theta Network Token	https://coinmarketcap.com/currencies/3x-long-theta-network-token/	THETABULL	$0.00
3931	Luna Inu	https://coinmarketcap.com/currencies/luna-inu/	$LUNAINU	$0.00
3932	Revenue Coin	https://coinmarketcap.com/currencies/revenue-coin/	RVC	$0.00
3933	Nova finance	https://coinmarketcap.com/currencies/nova-finance/	NOVA	$0.48
3934	PayFlow	https://coinmarketcap.com/currencies/payflow/	PFT	$0.01
3935	AssangeDAO	https://coinmarketcap.com/currencies/assangedao/	JUSTICE	$0.00
3936	Bandot Protocol	https://coinmarketcap.com/currencies/bandot-protocol/	BDT	$0.00
3937	Hungarian Vizsla Inu	https://coinmarketcap.com/currencies/hungarian-vizsla-inu/	HVI	$0.00
3938	Two Monkey Juice Bar	https://coinmarketcap.com/currencies/two-monkey-juice-bar/	TMON	$0.01
3939	Conscious Value Network	https://coinmarketcap.com/currencies/content-value-network/	CVNT	$0.61
3940	Totally A Rug Pull	https://coinmarketcap.com/currencies/totally-a-rug-pull/	TARP	$0.00
3941	AOK	https://coinmarketcap.com/currencies/aok/	AOK	$0.00
3942	CryptoZoo  (new)	https://coinmarketcap.com/currencies/zoo/	ZOO	$0.00
3943	ZENFI AI	https://coinmarketcap.com/currencies/zenfi-ai/	ZENFI	$0.00
3944	Mute	https://coinmarketcap.com/currencies/mute/	MUTE	$0.14
3945	Panda DAO	https://coinmarketcap.com/currencies/pandadao/	PANDA	$0.00
3946	Dexioprotocol	https://coinmarketcap.com/currencies/dexioprotocol/	DEXI	$0.00
3947	NSUR COIN	https://coinmarketcap.com/currencies/nsur-coin/	NSUR	$0.00
3948	3X Long Matic Token	https://coinmarketcap.com/currencies/3x-long-matic-token/	MATICBULL	$0.00
3949	Millonarios FC Fan Token	https://coinmarketcap.com/currencies/millonarios-fc-fan-token/	MFC	$0.59
3950	GroupDao	https://coinmarketcap.com/currencies/groupdao/	GDO	$0.00
3951	Lil Floki	https://coinmarketcap.com/currencies/lil-floki/	LILFLOKI	$0.00
3952	Yearn Classic Finance	https://coinmarketcap.com/currencies/yearn-classic-finance/	EARN	$2.27
3953	Burn Floki	https://coinmarketcap.com/currencies/burn-floki/	BFLOKI	$0.00
3954	Baby Lovely Inu	https://coinmarketcap.com/currencies/baby-lovely-inu/	BLOVELY	$0.00
3955	MoonBear.finance	https://coinmarketcap.com/currencies/moonbear-finance/	MBF	$0.00
3956	ARize	https://coinmarketcap.com/currencies/arize/	ARZ	$0.00
3957	BlueArk	https://coinmarketcap.com/currencies/blueark/	BRK	$0.00
3958	Kryxivia	https://coinmarketcap.com/currencies/kryxivia/	KXA	$0.02
3959	Blockify.Games	https://coinmarketcap.com/currencies/blockify-games/	BLOCKIFY	$0.00
3960	ETHAX	https://coinmarketcap.com/currencies/ethax/	ETHAX	$0.05
3961	VELOREX	https://coinmarketcap.com/currencies/velorex/	VEX	$0.00
3962	Elumia Crowns	https://coinmarketcap.com/currencies/legends-of-elumia/	ELU	$0.03
3963	RealLink	https://coinmarketcap.com/currencies/reallink/	REAL	$0.03
3964	MetaMate	https://coinmarketcap.com/currencies/metamatenft/	MTM	$0.00
3965	M7V2	https://coinmarketcap.com/currencies/m7v2/	M7V2	$15.67
3966	Great Bounty Dealer	https://coinmarketcap.com/currencies/great-bounty-dealer/	GBD	$0.00
3967	SaylorMoon	https://coinmarketcap.com/currencies/saylormoon/	SMOON	$0.00
3968	Tessla Coin	https://coinmarketcap.com/currencies/tessla-coin/	TSLA	$1.21
3969	iShares Silver Trust Defichain	https://coinmarketcap.com/currencies/silver-tokenized-stock-defichain/	DSLV	$12.72
3970	Kitty Coin Solana	https://coinmarketcap.com/currencies/kitty-coin-solana/	KITTY	$0.00
3971	WeStarter	https://coinmarketcap.com/currencies/westarter/	WAR	$0.01
3972	LuxFi	https://coinmarketcap.com/currencies/luxfi/	LXF	$0.04
3973	iStep	https://coinmarketcap.com/currencies/istep/	ISTEP	$0.02
3974	MetaVPad	https://coinmarketcap.com/currencies/metavpad/	METAV	$0.01
3975	The Commission	https://coinmarketcap.com/currencies/the-commission/	CMSN	$0.00
3976	SumSwap	https://coinmarketcap.com/currencies/sumswap/	SUM	$0.02
3977	Max Revive	https://coinmarketcap.com/currencies/max-revive/	MAXR	$0.00
3978	Super Whale DAO	https://coinmarketcap.com/currencies/super-whale-dao/	SWDAO	$0.00
3979	Shiba Lite	https://coinmarketcap.com/currencies/shiba-lite/	SHIBLITE	$0.00
3980	EverSAFU	https://coinmarketcap.com/currencies/eversafu/	EVERSAFU	$0.71
3981	Coinscope	https://coinmarketcap.com/currencies/coinscope/	COINSCOPE	$0.00
3982	iShares MSCI World ETF Tokenized Stock Defichain	https://coinmarketcap.com/currencies/ishares-msci-world-etf-tokenized-stock-defichain/	DURTH	$74.25
3983	ZionTopia	https://coinmarketcap.com/currencies/ziontopia/	ZION	$0.00
3984	Market Ledger	https://coinmarketcap.com/currencies/market-ledger/	ML	$0.14
3985	Avaxtars Token	https://coinmarketcap.com/currencies/avaxtars-token/	AVXT	$0.00
3986	Kawakami	https://coinmarketcap.com/currencies/kawakami-inu/	KAWA	$0.00
3987	MMM7	https://coinmarketcap.com/currencies/mmm7/	MMM7	$0.01
3988	Grom	https://coinmarketcap.com/currencies/grom/	GR	$0.02
3989	BITCOIN ADDITIONAL	https://coinmarketcap.com/currencies/bitcoin-additional/	BTCA	$19230.86
3990	Trustpad	https://coinmarketcap.com/currencies/trustpad/	TPAD	$0.10
3991	Wrapped OKT	https://coinmarketcap.com/currencies/wrapped-okt/	WOKT	$16.53
3992	Idexo Token	https://coinmarketcap.com/currencies/idexo-token/	IDO	$0.05
3993	SHINJIRO	https://coinmarketcap.com/currencies/shinjiro/	SHOX	$0.00
3994	MoonTrustBSC	https://coinmarketcap.com/currencies/moontrustbsc/	MNTTBSC	$0.00
3995	Liquid KSM	https://coinmarketcap.com/currencies/liquid-ksm/	LKSM	$5.72
3996	Redacted Cartel	https://coinmarketcap.com/currencies/butterflydao/	BTRFLY	$16.32
3997	Ridge	https://coinmarketcap.com/currencies/ridge/	RIDGE	$0.00
3998	Nemesis DAO	https://coinmarketcap.com/currencies/nemesis-dao/	NMS	$7.41
3999	Guzzler	https://coinmarketcap.com/currencies/guzzler/	GZLR	$0.00
4000	LOL	https://coinmarketcap.com/currencies/lol/	LOL	$0.00
4001	EarnGuild	https://coinmarketcap.com/currencies/earnguild/	EARN	$0.02727
4002	DexGame	https://coinmarketcap.com/currencies/dexgame/	DXGM	$0.008334
4003	Kling	https://coinmarketcap.com/currencies/kling/	KLING	$0.0003993
4004	CoinGhost	https://coinmarketcap.com/currencies/coinghost/	GST	$0.01381
4005	DUKE INU TOKEN	https://coinmarketcap.com/currencies/duke-inu-token/	DUKE	$0.0000003684
4006	Sunny Aggregator	https://coinmarketcap.com/currencies/sunny-aggregator/	SUNNY	$0.0002349
4007	Dibs Share	https://coinmarketcap.com/currencies/dibs-share/	DSHARE	$19.68
4008	The Phoenix	https://coinmarketcap.com/currencies/the-phoenix/	FIRE	$2.35
4009	DogeCola	https://coinmarketcap.com/currencies/dogecola/	DOGECOLA	$0.0...09826
4010	Kaspa	https://coinmarketcap.com/currencies/kaspa/	KAS	$0.0002879
4011	Avaxtars Token	https://coinmarketcap.com/currencies/avaxtars-token/	AVXT	$0.00
4012	Biometric Financial	https://coinmarketcap.com/currencies/biometric-financial/	BIOFI	$0.00
4013	NuNet	https://coinmarketcap.com/currencies/nunet/	NTX	$0.01
4014	DigiFinexToken	https://coinmarketcap.com/currencies/digifinextoken/	DFT	$0.03
4015	Nirvana ANA	https://coinmarketcap.com/currencies/nirvana-ana/	ANA	$8.47
4016	Unizen	https://coinmarketcap.com/currencies/unizen/	ZCX	$0.38
4017	Runner Land	https://coinmarketcap.com/currencies/runner-land/	RLT	$0.06
4018	SonarWatch	https://coinmarketcap.com/currencies/sonarwatch/	SONAR	$0.01
4019	Nether NFT	https://coinmarketcap.com/currencies/nether-nft/	NTR	$0.02
4020	Mission Helios	https://coinmarketcap.com/currencies/mission-helios/	HELIOS	$0.00
4021	Akt.io	https://coinmarketcap.com/currencies/akt-io/	AKTIO	$2.18
4022	MetaGods	https://coinmarketcap.com/currencies/metagods/	MGOD	$0.04
4023	Pintu Token	https://coinmarketcap.com/currencies/pintu-token/	PTU	$0.42
4024	MotoGP Fan Token	https://coinmarketcap.com/currencies/motogp-fan-token/	MGPT	$0.06
4025	Transient	https://coinmarketcap.com/currencies/transient/	TSCT	$0.00
4026	Tr3zor	https://coinmarketcap.com/currencies/tr3zor/	TR3	$0.00
4027	GINZA NETWORK	https://coinmarketcap.com/currencies/ginza-network/	GINZA	$0.08
4028	Sheesha Finance [ERC20]	https://coinmarketcap.com/currencies/sheesha-finance-erc20/	SHEESHA	$23.94
4029	Canadian Inuit Dog	https://coinmarketcap.com/currencies/canadian-inuit-dog/	CADINU	$0.00
4030	SmartNFT	https://coinmarketcap.com/currencies/smartnft/	SMARTNFT	$0.00
4031	KAKA NFT World	https://coinmarketcap.com/currencies/kaka-nft-world/	KAKA	$0.07
4032	Solice	https://coinmarketcap.com/currencies/solice/	SLC	$0.07
4033	VEROX	https://coinmarketcap.com/currencies/verox/	VRX	$22.54
4034	Synchrony	https://coinmarketcap.com/currencies/synchrony/	SCY	$0.00
4035	Derived	https://coinmarketcap.com/currencies/derived/	DVDX	$0.00
4036	Secured MoonRat Token	https://coinmarketcap.com/currencies/secured-moonrat-token/	SMRAT	$0.00
4037	Quartz	https://coinmarketcap.com/currencies/sandclock/	QUARTZ	$1.95
4038	Popsicle Finance	https://coinmarketcap.com/currencies/popsicle-finance/	ICE	$0.28
4039	Dash Diamond	https://coinmarketcap.com/currencies/dash-diamond/	DASHD	$0.18
4040	Coreum	https://coinmarketcap.com/currencies/coreum/	CORE	$0.31
4041	LunaFi	https://coinmarketcap.com/currencies/lunafi/	LFI	$0.02
4042	Archethic	https://coinmarketcap.com/currencies/uniris/	UCO	$0.06
4043	Winry Inu	https://coinmarketcap.com/currencies/winry-inu/	WINRY	$0.00
4044	CoinRadr	https://coinmarketcap.com/currencies/coinradr/	RADR	$0.00
4045	Libera Financial	https://coinmarketcap.com/currencies/libera-financial/	LIBERA	$1.66
4046	forbitspace	https://coinmarketcap.com/currencies/forbitspace/	FBS	$0.01
4047	Ducato Finance Token	https://coinmarketcap.com/currencies/ducato-protocol-token/	DUCATO	$0.03
4048	Lean Management Token	https://coinmarketcap.com/currencies/lean-management-token/	LEAN	$2.22
4049	PolyPad	https://coinmarketcap.com/currencies/polypad/	POLYPAD	$0.01
4050	EVERY GAME	https://coinmarketcap.com/currencies/every-game/	EGAME	$0.00
4051	Frog Inu	https://coinmarketcap.com/currencies/frog-inu/	FGI	$0.00
4052	Orbitau Taureum	https://coinmarketcap.com/currencies/orbitau/	TAUM	$0.01
4053	SYL	https://coinmarketcap.com/currencies/xsl-labs/	SYL	$0.00
4054	dexIRA	https://coinmarketcap.com/currencies/dexira/	DEX	$0.01
4055	Battle of Guardians	https://coinmarketcap.com/currencies/battle-of-guardians/	BGS	$0.00
4056	SHIBIC	https://coinmarketcap.com/currencies/shiba-inu-classic/	SHIBIC	$0.00
4057	Wizards And Dragons	https://coinmarketcap.com/currencies/wizards-and-dragons/	GP	$0.00
4058	AvaXlauncher	https://coinmarketcap.com/currencies/avaxlauncher/	AVXL	$0.00
4059	HubCoin	https://coinmarketcap.com/currencies/hubcoin/	HUB	$0.00
4060	SaharaDAO	https://coinmarketcap.com/currencies/saharadao/	MNG	$0.30
4061	MetaversePay	https://coinmarketcap.com/currencies/metaversepay/	MVP	$0.00
4062	Youclout	https://coinmarketcap.com/currencies/youclout/	YCT	$0.00
4063	iOWN Token	https://coinmarketcap.com/currencies/iown-token/	iOWN	$0.03
4064	ParagonsDAO	https://coinmarketcap.com/currencies/paragonsdao/	PDT	$0.05
4065	Maiar DEX	https://coinmarketcap.com/currencies/maiar/	MEX	$0.00
4066	SwapAll	https://coinmarketcap.com/currencies/swapall/	SAP	$0.04
4067	Pontoon	https://coinmarketcap.com/currencies/pontoon/	TOON	$0.02
4068	Unicap.finance	https://coinmarketcap.com/currencies/unicap-finance/	UCAP	$0.62
4069	PinkSale	https://coinmarketcap.com/currencies/pinksale/	PINKSALE	$198.68
4070	Instadapp	https://coinmarketcap.com/currencies/instadapp/	INST	$0.75
4071	Feyorra	https://coinmarketcap.com/currencies/feyorra/	FEY	$0.00
4072	Singularity	https://coinmarketcap.com/currencies/singularity-gold/	SGLY	$1.23
4073	Attack Wagon	https://coinmarketcap.com/currencies/attack-wagon/	ATK	$0.00
4074	The Neko	https://coinmarketcap.com/currencies/the-neko/	NEKO	$0.00
4075	Anji	https://coinmarketcap.com/currencies/anji/	ANJI	$0.00
4076	MarketMove	https://coinmarketcap.com/currencies/marketmove/	MOVE	$0.00
4077	AirCoin	https://coinmarketcap.com/currencies/air/	AIR	$0.00
4078	Railgun	https://coinmarketcap.com/currencies/railgun/	RAIL	$0.92
4079	Interest Protocol (USDI)	https://coinmarketcap.com/currencies/interest-protocol/	USDI	$1.00
4080	Zodium	https://coinmarketcap.com/currencies/zodium/	ZODI	$0.01
4081	SatoshiSwap	https://coinmarketcap.com/currencies/satoshiswap/	SWAP	$0.00
4082	Galactic Arena: The NFTverse	https://coinmarketcap.com/currencies/galatic-arena/	GAN	$0.00
4083	Wakanda Inu	https://coinmarketcap.com/currencies/wakanda-inu/	WKD	$0.00
4084	Okuru	https://coinmarketcap.com/currencies/okuru/	XOT	$29.69
4085	iTrust.Finance	https://coinmarketcap.com/currencies/itrust-finance/	ITG	$0.00
4086	Embr	https://coinmarketcap.com/currencies/embr/	EMBR	$0.01
4087	India Coin	https://coinmarketcap.com/currencies/india-coin-world/	INDIA	$0.00
4088	AizaWorld	https://coinmarketcap.com/currencies/aizaworld/	AIZA	$0.01
4089	Betswap.gg	https://coinmarketcap.com/currencies/betswap-gg/	BSGG	$0.01
4090	3X Long Cardano Token	https://coinmarketcap.com/currencies/3x-long-cardano-token/	ADABULL	$0.47
4091	bloXmove Token	https://coinmarketcap.com/currencies/bloxmove/	BLXM	$0.35
4092	Armor NXM	https://coinmarketcap.com/currencies/armor-nxm/	arNXM	$14.35
4093	Etermon	https://coinmarketcap.com/currencies/etermon/	ETM	$0.00
4094	BlockchainSpace	https://coinmarketcap.com/currencies/blockchainspace/	GUILD	$0.08
4095	Sports 2K75	https://coinmarketcap.com/currencies/sports-2k75/	S2K	$0.00
4096	Numitor	https://coinmarketcap.com/currencies/numitor/	NUMI	$0.16
4097	Terra Name Service	https://coinmarketcap.com/currencies/terra-name-service/	TNS	$0.01
4098	Spool DAO	https://coinmarketcap.com/currencies/spool-dao/	SPOOL	$0.38
4099	BullionFx	https://coinmarketcap.com/currencies/bullionfx/	BULL	$0.23
4100	MyToken	https://coinmarketcap.com/currencies/mytoken/	MT	$0.00
4101	Terra Name Service	https://coinmarketcap.com/currencies/terra-name-service/	TNS	$0.009947
4102	DeCredit	https://coinmarketcap.com/currencies/decredit/	CDTC	$0.001813
4103	Oobit	https://coinmarketcap.com/currencies/oobit/	OBT	$0.344
4104	OkLetsPlay	https://coinmarketcap.com/currencies/okletsplay/	OKLP	$0.006354
4105	Sadbaby	https://coinmarketcap.com/currencies/sadbaby/	SDBY	$0.000005207
4106	RunBlox	https://coinmarketcap.com/currencies/runblox/	RUX	$2.55
4107	QuackInu	https://coinmarketcap.com/currencies/quackinu/	QUACK	$0.000000003219
4108	FUTURECOIN	https://coinmarketcap.com/currencies/futurecoin/	FUTURE	$0.06119
4109	NeoFi	https://coinmarketcap.com/currencies/neofi/	NEOFI	$0.007143
4110	Marvelous NFTs (Bad Days)	https://coinmarketcap.com/currencies/marvelous-nfts-bad-days/	MNFT	$0.01671
4111	Ridotto	https://coinmarketcap.com/currencies/ridotto/	RDT	$0.02
4112	SKY FRONTIER	https://coinmarketcap.com/currencies/sky-frontier/	GSKY	$0.00
4113	MojitoSwap	https://coinmarketcap.com/currencies/mojitoswap/	MJT	$0.25
4114	Stargaze	https://coinmarketcap.com/currencies/stargaze/	STARS	$0.02
4115	EnterDAO	https://coinmarketcap.com/currencies/enterdao/	ENTR	$0.04
4116	Enjinstarter	https://coinmarketcap.com/currencies/enjinstarter/	EJS	$0.00
4117	Tom Coin	https://coinmarketcap.com/currencies/tom-coin/	TMC	$0.00
4118	Defira	https://coinmarketcap.com/currencies/defira/	FIRA	$1.25
4119	Dexfin	https://coinmarketcap.com/currencies/dexfin/	DXF	$0.02
4120	Unique Venture Clubs	https://coinmarketcap.com/currencies/unqclub/	UNQ	$0.01
4121	Hachiko	https://coinmarketcap.com/currencies/hachiko/	HACHIKO	$0.00
4122	Monsoon Finance	https://coinmarketcap.com/currencies/monsoon-finance/	MCASH	$0.01
4123	Jointer	https://coinmarketcap.com/currencies/jointer/	JNTR	$0.02
4124	TAFToken	https://coinmarketcap.com/currencies/taf-token/	TAF	$0.01
4125	Bee Inu	https://coinmarketcap.com/currencies/bee-inu/	BEEINU	$0.00
4126	GOGOcoin	https://coinmarketcap.com/currencies/gogocoin/	GOGO	$0.08
4127	veDAO	https://coinmarketcap.com/currencies/vedao/	WEVE	$0.01
4128	Crypto Media Network	https://coinmarketcap.com/currencies/crypto-media-network/	CMN	$0.20
4129	Jinbi Token	https://coinmarketcap.com/currencies/jinbi-token/	JNB	$1607.01
4130	CryptoBank	https://coinmarketcap.com/currencies/cryptobank/	CBANK	$0.00
4131	Listen To Earn	https://coinmarketcap.com/currencies/listen-to-earn/	LTE	$0.00
4132	HUGHUG Coin	https://coinmarketcap.com/currencies/hughug-coin/	HGHG	$0.02
4133	Zenlink	https://coinmarketcap.com/currencies/zenlink/	ZLK	$0.06
4134	Compound Uni	https://coinmarketcap.com/currencies/compound-uniswap/	CUNI	$0.10
4135	StoneDAO	https://coinmarketcap.com/currencies/stonedao/	SDT	$0.18
4136	Coinbase tokenized stock FTX	https://coinmarketcap.com/currencies/coinbase-pre-ipo-tokenized-stock-ftx/	COIN	$48.30
4137	Txbit Token	https://coinmarketcap.com/currencies/txbit-token/	TXBIT	$0.00
4138	Piggy Finance	https://coinmarketcap.com/currencies/piggy-finance/	PIGGY	$0.00
4139	Echelon	https://coinmarketcap.com/currencies/echelon/	ECH	$0.01
4140	Aonea Coin	https://coinmarketcap.com/currencies/aonea-coin/	A1A	$0.25
4141	Stelia	https://coinmarketcap.com/currencies/stelia/	STELIA	$0.00
4142	Demeter	https://coinmarketcap.com/currencies/demeter-usd/	DUSD	$0.66
4143	Pochi Inu	https://coinmarketcap.com/currencies/pochi-inu/	POCHI	$0.00
4144	JPool Staked SOL (JSOL)	https://coinmarketcap.com/currencies/jpool/	JSOL	$34.03
4145	The Nature Token	https://coinmarketcap.com/currencies/the-nature-token/	NATURE	$0.20
4146	Fistiana	https://coinmarketcap.com/currencies/fistiana-circulates/	FCT	$0.57
4147	MaticVerse	https://coinmarketcap.com/currencies/maticverse/	Mverse	$0.00
4148	Degree Crypto Token	https://coinmarketcap.com/currencies/degree-crypto-token/	DCT	$204.07
4149	Cloudbric	https://coinmarketcap.com/currencies/cloudbric/	CLBK	$0.01
4150	HKD.com DAO	https://coinmarketcap.com/currencies/hkd-com-dao/	HDAO	$0.35
4151	CoFiX	https://coinmarketcap.com/currencies/cofix/	COFI	$0.07
4152	Flurry Finance	https://coinmarketcap.com/currencies/flurry/	FLURRY	$0.00
4153	Cpos Cloud Payment	https://coinmarketcap.com/currencies/cpos-cloud-payment/	CPOS	$0.00
4154	XUSD Stable	https://coinmarketcap.com/currencies/xusd-stable/	XUSD	$0.93
4155	Black Phoenix	https://coinmarketcap.com/currencies/black-phoenix/	BPX	$0.00
4156	3X Long Chainlink Token	https://coinmarketcap.com/currencies/3x-long-chainlink-token/	LINKBULL	$0.00
4157	Imperium Empires	https://coinmarketcap.com/currencies/imperium-empires/	IME	$0.00
4158	Paycer Protocol	https://coinmarketcap.com/currencies/paycer-protocol/	PCR	$0.01
4159	Stripto	https://coinmarketcap.com/currencies/stripto/	STRIP	$0.00
4160	TDEX Token	https://coinmarketcap.com/currencies/tdex-token/	TT	$2.08
4161	LIQ Protocol	https://coinmarketcap.com/currencies/liq-protocol/	LIQ	$0.00
4162	Monopoly Millionaire Game	https://coinmarketcap.com/currencies/monopoly-millionaire-game/	MMG	$0.01
4163	Mycro	https://coinmarketcap.com/currencies/mycro/	MYO	$0.01
4164	CollectCoin	https://coinmarketcap.com/currencies/collectcoin/	CLCT	$0.04
4165	BT.Finance	https://coinmarketcap.com/currencies/bt-finance/	BT	$0.21
4166	Sienna (ERC20)	https://coinmarketcap.com/currencies/sienna-erc20/	wSIENNA	$0.93
4167	EmiSwap	https://coinmarketcap.com/currencies/emiswap/	ESW	$0.00
4168	Aimedis	https://coinmarketcap.com/currencies/aimedis/	AIMX	$0.02
4169	Tomb Shares	https://coinmarketcap.com/currencies/tomb-shares/	TSHARE	$141.87
4170	The Winkyverse	https://coinmarketcap.com/currencies/the-winkyverse/	WNK	$0.00
4171	ExchangeCoin	https://coinmarketcap.com/currencies/exchange-coin/	EXCC	$0.03
4172	CryptoBlades Kingdoms	https://coinmarketcap.com/currencies/cryptoblades-kingdoms/	KING	$0.00
4173	DfiStarter	https://coinmarketcap.com/currencies/dfistarter/	DFI	$0.03
4174	Popcorn	https://coinmarketcap.com/currencies/popcorn-network/	POP	$1.01
4175	Defi Coin	https://coinmarketcap.com/currencies/defi-coin/	DEFC	$0.11
4176	KittyCake	https://coinmarketcap.com/currencies/kittycake/	KCAKE	$0.00
4177	XRPayNet	https://coinmarketcap.com/currencies/xrpaynet/	XRPAYNET	$0.00
4178	BFK Warzone	https://coinmarketcap.com/currencies/bfk-warzone/	BFK	$0.00
4179	TaleCraft	https://coinmarketcap.com/currencies/talecraft/	CRAFT	$0.05
4180	Glitter Finance	https://coinmarketcap.com/currencies/glitter-finance/	XGLI	$0.01
4181	TTX METAVERSE	https://coinmarketcap.com/currencies/ttx-games/	XMETA	$0.00
4182	Web3 Doge	https://coinmarketcap.com/currencies/web3-doge/	WEB3	$0.00
4183	Crypto Chip Token	https://coinmarketcap.com/currencies/crypto-chip-token/	BVC	$0.00
4184	Astroport Classic	https://coinmarketcap.com/currencies/astroport-classic/	ASTRO	$0.02
4185	NAGA	https://coinmarketcap.com/currencies/naga/	NGC	$0.19
4186	IRON Titanium Token	https://coinmarketcap.com/currencies/iron-titanium-token/	TITAN	$0.00
4187	Treasure Under Sea	https://coinmarketcap.com/currencies/treasure-under-sea/	TUS	$0.00
4188	FileStar	https://coinmarketcap.com/currencies/filestar/	STAR	$0.01
4189	Taroverse	https://coinmarketcap.com/currencies/taroverse/	TARO	$0.01
4190	Enrex	https://coinmarketcap.com/currencies/enrex/	ENRX	$0.00
4191	SO CAL Token	https://coinmarketcap.com/currencies/so-cal-token/	SCT	$0.00
4192	Probinex	https://coinmarketcap.com/currencies/probinex/	PBX	$0.04
4193	Ryoshis Vision	https://coinmarketcap.com/currencies/ryoshis-vision/	RYOSHI	$0.00
4194	SmartX	https://coinmarketcap.com/currencies/smartxone/	SAT	$0.00
4195	Bitcoin Asia	https://coinmarketcap.com/currencies/bitcoin-asia/	BTCA	$0.00
4196	ZURRENCY	https://coinmarketcap.com/currencies/zurrency/	ZURR	$2.74
4197	VYNK CHAIN	https://coinmarketcap.com/currencies/vynk-chain/	VYNC	$0.03
4198	Nunu Spirits	https://coinmarketcap.com/currencies/nunu-spirits/	NNT	$0.04
4199	Porta	https://coinmarketcap.com/currencies/porta/	KIAN	$0.00
4200	Pearl	https://coinmarketcap.com/currencies/pearl/	PEARL	$19.25
4201	Lovelace World	https://coinmarketcap.com/currencies/lovelace/	LACE	$0.008748
4202	Mars Inu	https://coinmarketcap.com/currencies/mars-inu/	MARSINU	$0.0...02689
4203	Evanesco Network	https://coinmarketcap.com/currencies/evanesco-network/	EVA	$0.002281
4204	Release Project	https://coinmarketcap.com/currencies/release-project/	REL	$0.000006249
4205	Mimo Governance Token	https://coinmarketcap.com/currencies/parallel-protocol/	MIMO	$0.0181
4206	METALANDZ	https://coinmarketcap.com/currencies/metalandz/	$METAZ	$0.00000005811
4207	ZOO Crypto World	https://coinmarketcap.com/currencies/zoo-crypto-world/	ZOO	$0.001828
4208	DEVITA	https://coinmarketcap.com/currencies/devita-global/	LIFE	$0.06646
4209	MoneySwap	https://coinmarketcap.com/currencies/moneyswap/	MSWAP	$0.0004252
4210	MetaFighter	https://coinmarketcap.com/currencies/metafighter/	MF	$0.001586
4211	DriftDelivery.CC	https://coinmarketcap.com/currencies/driftdelivery-cc/	DRIFT	$0.00
4212	GOAL token	https://coinmarketcap.com/currencies/goal-token/	GOAL	$0.31
4213	YuzuSwap	https://coinmarketcap.com/currencies/yuzuswap/	YUZU	$0.01
4214	xJEWEL	https://coinmarketcap.com/currencies/xjewel/	XJEWEL	$0.21
4215	UPFI Network	https://coinmarketcap.com/currencies/upfi-network/	UPS	$0.00
4216	sETH2	https://coinmarketcap.com/currencies/seth2/	SETH2	$1043.40
4217	OnX Finance	https://coinmarketcap.com/currencies/onx-finance/	ONX	$0.05
4218	1peco	https://coinmarketcap.com/currencies/1peco/	1PECO	$2.87
4219	INME SWAP	https://coinmarketcap.com/currencies/inme-swap/	INMES	$0.02
4220	0xDAO	https://coinmarketcap.com/currencies/0xdao/	OXD	$0.00
4221	Time Raiders	https://coinmarketcap.com/currencies/time-raiders/	XPND	$0.01
4222	Twoge Inu	https://coinmarketcap.com/currencies/twoge-inu/	TWOGE	$0.00
4223	Shina Inu	https://coinmarketcap.com/currencies/shina-inu/	SHI	$0.00
4224	Envoy	https://coinmarketcap.com/currencies/envoy-network/	ENV	$0.01
4225	Ginoa	https://coinmarketcap.com/currencies/ginoa/	GINOA	$0.29
4226	MDsquare	https://coinmarketcap.com/currencies/mdsquare/	TMED	$0.00
4227	Graviton Zero	https://coinmarketcap.com/currencies/graviton-zero/	GRAV	$0.00
4228	MetaRim	https://coinmarketcap.com/currencies/metarim/	RIM	$0.00
4229	Theos	https://coinmarketcap.com/currencies/theos/	THEOS	$0.00
4230	Solidex	https://coinmarketcap.com/currencies/solidex/	SEX	$0.07
4231	Privapp Network	https://coinmarketcap.com/currencies/privapp-network/	bPRIVA	$0.25
4232	TOM Finance	https://coinmarketcap.com/currencies/tom-finance/	TOM	$90.48
4233	Cub Finance	https://coinmarketcap.com/currencies/cub-finance/	CUB	$0.03
4234	Poken	https://coinmarketcap.com/currencies/poken/	PKN	$0.00
4235	Marginswap	https://coinmarketcap.com/currencies/marginswap/	MFI	$0.04
4236	ViralUp	https://coinmarketcap.com/currencies/viralup/	VIRAL	$0.00
4237	The Meebits	https://coinmarketcap.com/currencies/the-meebits/	NMEEBITS	$0.00
4238	FansCoin	https://coinmarketcap.com/currencies/fanscoin/	FC	$0.09
4239	Olympus v1	https://coinmarketcap.com/currencies/olympus-v1/	OHM	$51.06
4240	Learning Star	https://coinmarketcap.com/currencies/learning-star/	LSTAR	$0.00
4241	Metastrike	https://coinmarketcap.com/currencies/metastrike/	MTS	$0.01
4242	JIMNGAME	https://coinmarketcap.com/currencies/jimngame/	JIMN	$0.07
4243	3X Long Cosmos Token	https://coinmarketcap.com/currencies/3x-long-cosmos-token/	ATOMBULL	$0.00
4244	Satoshi	https://coinmarketcap.com/currencies/satoshi/	SATS	$0.00
4245	Alium Finance	https://coinmarketcap.com/currencies/alium-finance/	ALM	$0.01
4246	SolDoge	https://coinmarketcap.com/currencies/soldoge/	SDOGE	$0.00
4247	Paribu Net	https://coinmarketcap.com/currencies/paribu-net/	PRB	$1.25
4248	Starpad	https://coinmarketcap.com/currencies/starpad/	SRP	$0.01
4249	SappChat	https://coinmarketcap.com/currencies/sappchat/	APP	$0.00
4250	Busy DAO	https://coinmarketcap.com/currencies/busy/	BUSY	$0.00
4251	PDBC Defichain	https://coinmarketcap.com/currencies/pdbc-defichain/	DPDBC	$12.40
4252	DONASWAP	https://coinmarketcap.com/currencies/donaswap/	DONA	$0.00
4253	Elvantis	https://coinmarketcap.com/currencies/elvantis/	ELV	$0.00
4254	Alpaca City	https://coinmarketcap.com/currencies/alpaca-city/	ALPA	$0.03
4255	Moola Celo EUR	https://coinmarketcap.com/currencies/moola-celo-eur/	mCEUR	$1.04
4256	Polygonum Online	https://coinmarketcap.com/currencies/polygonum-online/	POG	$0.10
4257	Squid Game 2.0	https://coinmarketcap.com/currencies/squid-game-2/	SQUID	$0.00
4258	LOT.TRADE	https://coinmarketcap.com/currencies/lot-trade/	LOTT	$0.07
4259	PlaceWar	https://coinmarketcap.com/currencies/placewar/	PLACE	$0.00
4260	Khaos Finance	https://coinmarketcap.com/currencies/khaos-finance/	KHAOS	$0.00
4261	ECOMI	https://coinmarketcap.com/currencies/ecomi-new/	OMI	$0.00
4262	LocalTrade	https://coinmarketcap.com/currencies/localtrade/	LTT	$0.08
4263	Flux	https://coinmarketcap.com/currencies/flux-dao/	FLX	$0.10
4264	Crafting Finance	https://coinmarketcap.com/currencies/crafting-finance/	CRF	$0.00
4265	Meta Spatial	https://coinmarketcap.com/currencies/meta-spatial/	SPAT	$0.01
4266	BelecX Protocol	https://coinmarketcap.com/currencies/belecx-protocol/	BEX	$0.00
4267	BOY X HIGHSPEED	https://coinmarketcap.com/currencies/boy-x-highspeed/	BXH	$0.03
4268	Giftedhands	https://coinmarketcap.com/currencies/giftedhands/	GHD	$0.00
4269	Alpha5	https://coinmarketcap.com/currencies/alpha5/	A5T	$0.01
4270	RunNode	https://coinmarketcap.com/currencies/runnode/	RUN	$0.01
4271	Amplify Protocol	https://coinmarketcap.com/currencies/amplify-protocol/	AMPT	$0.07
4272	Squirt Game	https://coinmarketcap.com/currencies/squirt-game/	SQUIRT	$0.00
4273	Meme Lordz	https://coinmarketcap.com/currencies/meme-lordz/	$LORDZ	$0.01
4274	BSC TOOLS	https://coinmarketcap.com/currencies/bsc-tools/	TOOLS	$0.02
4275	Exen Coin	https://coinmarketcap.com/currencies/exen-coin/	BTXN	$0.41
4276	The Luxury Coin	https://coinmarketcap.com/currencies/the-luxury-coin/	TLB	$0.20
4277	Shera Tokens	https://coinmarketcap.com/currencies/shera-token/	SHR	$0.00
4278	CoPuppy	https://coinmarketcap.com/currencies/copuppy/	CP	$0.00
4279	SpaceY	https://coinmarketcap.com/currencies/spacey/	SPAY	$0.49
4280	First Ever NFT	https://coinmarketcap.com/currencies/first-ever-nft/	FEN	$0.00
4281	IlliquidDAO	https://coinmarketcap.com/currencies/illiquiddao/	JPEGS	$0.00
4282	Chain Estate DAO	https://coinmarketcap.com/currencies/chain-estate-dao/	CHES	$0.00
4283	Jones DAO	https://coinmarketcap.com/currencies/jones-dao/	JONES	$0.62
4284	Jenny Metaverse DAO Token	https://coinmarketcap.com/currencies/jenny-metaverse-dao-token/	UJENNY	$0.19
4285	My Crypto Heroes	https://coinmarketcap.com/currencies/my-crypto-heroes/	MCHC	$0.03
4286	AVATA Network	https://coinmarketcap.com/currencies/avata-network/	AVAT	$0.02
4287	Blind Boxes	https://coinmarketcap.com/currencies/blind-boxes/	BLES	$0.01
4288	Aldrin	https://coinmarketcap.com/currencies/aldrin/	RIN	$0.33
4289	DefiDollar DAO	https://coinmarketcap.com/currencies/defidollar-dao/	DFD	$0.02
4290	Sunflower Farm	https://coinmarketcap.com/currencies/sunflower-farm/	SFF	$0.01
4291	ALYATTES	https://coinmarketcap.com/currencies/alyattes/	ALYA	$0.34
4292	Dinosaureggs	https://coinmarketcap.com/currencies/dinosaureggs/	DSG	$0.01
4293	LegioDAO	https://coinmarketcap.com/currencies/legiodao/	LGO	$0.05
4294	Yaki Gold	https://coinmarketcap.com/currencies/yaki-gold/	YAG	$0.00
4295	Vanguard Real Estate Tokenized Stock Defichain	https://coinmarketcap.com/currencies/vanguard-real-estate-tokenized-stock-defichain/	DVNQ	$64.55
4296	SafeMars	https://coinmarketcap.com/currencies/smars/	SMARS	$0.00
4297	DDDX Protocol	https://coinmarketcap.com/currencies/dddx-protocol/	DDDX	$0.00
4298	NFTMart Token	https://coinmarketcap.com/currencies/nftmart-token/	NMT	$0.00
4299	Bomb Money	https://coinmarketcap.com/currencies/bshare/	BSHARE	$13.72
4300	Solyard Finance	https://coinmarketcap.com/currencies/solyard-finance/	YARD	$0.00
4301	Bomb Money	https://coinmarketcap.com/currencies/bomb-money/	BOMB	$1.10
4302	Solyard Finance	https://coinmarketcap.com/currencies/solyard-finance/	YARD	$0.0004221
4303	Game Ace Token	https://coinmarketcap.com/currencies/game-ace-token/	GAT	$1.18
4304	Baby Shiba Inu	https://coinmarketcap.com/currencies/baby-shiba-inu/	BABYSHIBAINU	$0.000000003777
4305	Idle Cyber	https://coinmarketcap.com/currencies/iddle-cyber/	AFK	$0.0006908
4306	MOON	https://coinmarketcap.com/currencies/moontoken/	MOON	$0.0...00079
4307	MiniDOGE	https://coinmarketcap.com/currencies/minidoge/	MINIDOGE	$0.000000002471
4308	Moonlana	https://coinmarketcap.com/currencies/moonlana/	MOLA	$0.00006653
4309	JPEG	https://coinmarketcap.com/currencies/jpegvault/	JPEG	$0.0006804
4310	YetiSwap	https://coinmarketcap.com/currencies/yetiswap/	YTS	$0.0009466
4311	Merkle Network	https://coinmarketcap.com/currencies/merkle-network/	MERKLE	$0.04
4312	B20	https://coinmarketcap.com/currencies/b20/	B20	$0.14
4313	Jade Protocol	https://coinmarketcap.com/currencies/jade-protocol/	JADE	$21.10
4314	BLACKHOLE PROTOCOL	https://coinmarketcap.com/currencies/blackhole-protocol/	BLACK	$0.00
4315	EvilSquidGame	https://coinmarketcap.com/currencies/evilsquidgame/	EVILSQUID	$0.00
4316	Miracle Universe	https://coinmarketcap.com/currencies/miracle-universe/	MU	$0.01
4317	DEUS Finance	https://coinmarketcap.com/currencies/deus-finance-2/	DEUS	$35.88
4318	DEI	https://coinmarketcap.com/currencies/dei/	DEI	$0.46
4319	Bogged	https://coinmarketcap.com/currencies/bogged-finance/	BOG	$0.25
4320	LoopSwap	https://coinmarketcap.com/currencies/loopswap/	LSWAP	$0.00
4321	Echidna	https://coinmarketcap.com/currencies/echidna/	ECD	$0.00
4322	Hope	https://coinmarketcap.com/currencies/hope-token/	HOPE	$0.00
4323	Eco DeFi	https://coinmarketcap.com/currencies/eco-defi/	ECOP	$0.63
4324	HyperOne	https://coinmarketcap.com/currencies/hyperone/	HOT	$4.29
4325	Yieldly	https://coinmarketcap.com/currencies/yieldly/	YLDY	$0.00
4326	Sheesha Finance Polygon	https://coinmarketcap.com/currencies/sheesha-finance-polygon/	MSHEESHA	$0.00
4327	Quantfury Token	https://coinmarketcap.com/currencies/quantfury-token/	QTF	$5.30
4328	Space Corsair Key	https://coinmarketcap.com/currencies/space-corsair-key/	SCK	$0.02
4329	Merge	https://coinmarketcap.com/currencies/project-merge/	MERGE	$0.01
4330	Golden Token	https://coinmarketcap.com/currencies/golden-token/	GOLD	$0.00
4331	Hundred Finance	https://coinmarketcap.com/currencies/hundred-finance/	HND	$0.06
4332	AnteDAO	https://coinmarketcap.com/currencies/antedao/	ANTE	$0.88
4333	Doubloon	https://coinmarketcap.com/currencies/doubloon-token/	DBL	$0.03
4334	Tranquil Finance	https://coinmarketcap.com/currencies/tranquil-finance/	TRANQ	$0.06
4335	Meta Business	https://coinmarketcap.com/currencies/meta-business/	MEFI	$0.00
4336	Global Digital Content	https://coinmarketcap.com/currencies/global-digital-content/	GDC	$0.00
4337	Irena Green Energy	https://coinmarketcap.com/currencies/irena-green-energy/	IRENA	$0.00
4338	JumpToken	https://coinmarketcap.com/currencies/jumptoken/	JMPT	$1.94
4339	Dingocoin	https://coinmarketcap.com/currencies/dingocoin/	DINGO	$0.00
4340	HashBridge Oracle	https://coinmarketcap.com/currencies/hashbridge-oracle/	HBO	$0.00
4341	Witnet	https://coinmarketcap.com/currencies/witnet/	WIT	$0.01
4342	Blocksport	https://coinmarketcap.com/currencies/blocksport/	BSPT	$0.00
4343	Block Forest	https://coinmarketcap.com/currencies/block-forest/	BFT	$0.00
4344	NFTLaunch	https://coinmarketcap.com/currencies/nftlaunch/	NFTL	$0.01
4345	Piston	https://coinmarketcap.com/currencies/piston/	PSTN	$6.29
4346	Compound Basic Attention Token	https://coinmarketcap.com/currencies/compound-basic-attention-token/	CBAT	$0.01
4347	Kripto koin	https://coinmarketcap.com/currencies/kripto-koin/	KRIPTO	$0.00
4348	Consensus Cell Network	https://coinmarketcap.com/currencies/consensus-cell-network/	ECELL	$0.01
4349	ProSwap	https://coinmarketcap.com/currencies/proswap/	PROS	$0.10
4350	Elysian	https://coinmarketcap.com/currencies/elysian-els/	ELS	$0.01
4351	Credefi	https://coinmarketcap.com/currencies/credefi/	CREDI	$0.00
4352	ShinobiVerse	https://coinmarketcap.com/currencies/shinobiverse/	SHINO	$0.00
4353	Stable ICHI	https://coinmarketcap.com/currencies/stable-ichi/	ONEICHI	$1.00
4354	dFund	https://coinmarketcap.com/currencies/dfund/	DFND	$0.00
4355	ZoidPay	https://coinmarketcap.com/currencies/zoidpay/	ZPAY	$0.13
4356	Crypto Gaming United	https://coinmarketcap.com/currencies/crypto-gaming-united/	CGU	$0.18
4357	Jetfuel Finance	https://coinmarketcap.com/currencies/jetfuel-finance/	FUEL	$16.74
4358	Elephant Money	https://coinmarketcap.com/currencies/elephant-money/	ELEPHANT	$0.00
4359	PornVerse	https://coinmarketcap.com/currencies/pornverse/	PVERSE	$0.00
4360	Sunflower Land	https://coinmarketcap.com/currencies/sunflower-land/	SFL	$0.15
4361	Bancambios AX	https://coinmarketcap.com/currencies/bancambios-ax/	BXS	$0.00
4362	KICK.IO	https://coinmarketcap.com/currencies/kick-io/	KICK	$0.01
4363	Qitcoin	https://coinmarketcap.com/currencies/qitchain-network/	QTC	$1.51
4364	iCommunity Labs	https://coinmarketcap.com/currencies/icommunity-blockchain-solutions-ibs/	ICOM	$0.41
4365	3X Long Dogecoin Token	https://coinmarketcap.com/currencies/3x-long-dogecoin-token/	DOGEBULL	$0.04
4366	VitaDAO	https://coinmarketcap.com/currencies/vitadao/	VITA	$0.67
4367	Microtuber	https://coinmarketcap.com/currencies/microtuber/	MCT	$0.00
4368	MADworld	https://coinmarketcap.com/currencies/madworld/	UMAD	$0.01
4369	BXTB Foundation	https://coinmarketcap.com/currencies/bxtb-foundation/	BXTB	$0.00
4370	DragonBnB.co	https://coinmarketcap.com/currencies/dragonbnb-co/	BNBDRAGON	$0.00
4371	En-Tan-Mo	https://coinmarketcap.com/currencies/en-tan-mo/	ETM	$0.03
4372	PeaceTokenFinance	https://coinmarketcap.com/currencies/peacetokenfinance/	PET	$0.00
4373	Actifit	https://coinmarketcap.com/currencies/actifit/	AFIT	$0.05
4374	Wise Token	https://coinmarketcap.com/currencies/wise/	WISE	$0.10
4375	Propel	https://coinmarketcap.com/currencies/propel-token/	PEL	$0.01
4376	Chihuahua	https://coinmarketcap.com/currencies/chihuahua-wtf/	HUAHUA	$0.00
4377	Anonverse Gaming Token	https://coinmarketcap.com/currencies/anonverse-gaming-token/	VVV	$0.00
4378	4JNET	https://coinmarketcap.com/currencies/4jnet/	4JNET	$0.00
4379	Doont Buy	https://coinmarketcap.com/currencies/doont-buy/	DBUY	$0.00
4380	RankerDAO	https://coinmarketcap.com/currencies/rankerdao/	RANKER	$0.01
4381	Tweet To Earn	https://coinmarketcap.com/currencies/tweet-to-earn/	TTE	$0.00
4382	ISTARDUST	https://coinmarketcap.com/currencies/istardust/	ISDT	$0.00
4383	BitBase Token	https://coinmarketcap.com/currencies/bitbase-token/	BTBS	$0.26
4384	Froyo Games	https://coinmarketcap.com/currencies/froyo-games/	FROYO	$0.02
4385	Frenchie Network	https://coinmarketcap.com/currencies/frenchie-network/	FREN	$0.00
4386	xSPECTAR	https://coinmarketcap.com/currencies/xspectar/	XSPECTAR	$0.10
4387	Leonicorn Swap ( LEON )	https://coinmarketcap.com/currencies/leon-token/	LEON	$0.00
4388	Zoro Inu	https://coinmarketcap.com/currencies/zoro-inu/	ZORO	$0.00
4389	Wasder	https://coinmarketcap.com/currencies/wasder/	WAS	$0.01
4390	xSUSHI	https://coinmarketcap.com/currencies/xsushi/	XSUSHI	$1.29
4391	xFund	https://coinmarketcap.com/currencies/xfund/	XFUND	$410.29
4392	POLYSPORTS	https://coinmarketcap.com/currencies/polysports/	PS1	$0.01
4393	Let's Go Brandon Token	https://coinmarketcap.com/currencies/letsgobrandontoken/	LGBT	$0.00
4394	dForce USD	https://coinmarketcap.com/currencies/token-force-usd/	USX	$0.98
4395	Wrapped VeChain	https://coinmarketcap.com/currencies/wrapped-vechain/	WVET	$0.02
4396	UncleMine	https://coinmarketcap.com/currencies/unclemine/	UM	$0.01
4397	Dungeon	https://coinmarketcap.com/currencies/dungeon/	DGN	$0.00
4398	BitShiba	https://coinmarketcap.com/currencies/bitshiba-token/	SHIBA	$0.00
4399	G999	https://coinmarketcap.com/currencies/g999/	G999	$0.00
4400	MetaGear	https://coinmarketcap.com/currencies/metagear/	GEAR	$0.01013
4401	Golden Doge	https://coinmarketcap.com/currencies/golden-doge/	GDOGE	$0.0...06941
4402	Mancium	https://coinmarketcap.com/currencies/mancium/	MANC	$0.2323
4403	DoubleDice	https://coinmarketcap.com/currencies/doubledice-token/	DODI	$0.0009089
4404	Wrapped XDAI	https://coinmarketcap.com/currencies/wxdai/	wxDai	$1.00
4405	BITGATTI	https://coinmarketcap.com/currencies/bitgatti/	BITGATTI	$0.0...01638
4406	Solster Finance	https://coinmarketcap.com/currencies/solster-finance/	STR	$0.006406
4407	IVOGEL	https://coinmarketcap.com/currencies/ivogel/	IVG	$0.00001215
4408	Kitty Inu	https://coinmarketcap.com/currencies/kitty-inu/	kitty	$0.000007939
4409	XNP	https://coinmarketcap.com/currencies/exenpay-token/	XNP	$0.5995
4410	DogeZilla	https://coinmarketcap.com/currencies/dogezilla/	DOGEZILLA	$0.00
4411	Realfinance Network	https://coinmarketcap.com/currencies/realfinance-network/	REFI	$0.00
4412	Llamaverse	https://coinmarketcap.com/currencies/llamaverse/	SPIT	$0.09
4413	Pollux Coin	https://coinmarketcap.com/currencies/pollux-coin/	POX	$6.54
4414	Valas Finance	https://coinmarketcap.com/currencies/valas-finance/	VALAS	$0.00
4415	CrossFi	https://coinmarketcap.com/currencies/crossfi/	CRFI	$0.02
4416	HobbsNetworkToken	https://coinmarketcap.com/currencies/hobbsnetworktoken/	HNW	$1.80
4417	Ruyi	https://coinmarketcap.com/currencies/ruyi/	RUYI	$0.00
4418	XBE Token	https://coinmarketcap.com/currencies/xbe-token/	XBE	$59.25
4419	Supernova	https://coinmarketcap.com/currencies/supernova-sunday-games/	LFC	$0.05
4420	DELOT.IO	https://coinmarketcap.com/currencies/delot-io/	DELOT	$0.00
4421	CleanCarbon	https://coinmarketcap.com/currencies/clean-carbon/	CARBO	$0.04
4422	ERON	https://coinmarketcap.com/currencies/eron-project/	ERON	$0.00
4423	Geojam Token	https://coinmarketcap.com/currencies/geojam-token/	JAM	$0.00
4424	Xtremcoin	https://coinmarketcap.com/currencies/xtremcoin/	XTR	$0.30
4425	Vent Finance	https://coinmarketcap.com/currencies/vent-finance/	VENT	$0.03
4426	POKELON	https://coinmarketcap.com/currencies/pokelon/	POKELON	$0.00
4427	Tartarus Finance	https://coinmarketcap.com/currencies/tartarus-finance/	TART	$0.00
4428	StellaSwap	https://coinmarketcap.com/currencies/stellaswap/	STELLA	$0.17
4429	Viblos	https://coinmarketcap.com/currencies/viblos/	VIBLO	$0.00
4430	Howl City	https://coinmarketcap.com/currencies/howl-city/	HWL	$0.00
4431	GameFi Protocol	https://coinmarketcap.com/currencies/gamefi-token/	GFI	$0.02
4432	Punk Vault (NFTX)	https://coinmarketcap.com/currencies/punk-vault-nftx/	PUNK	$69497.77
4433	AMDG Token	https://coinmarketcap.com/currencies/amdg-token/	AMDG	$0.08
4434	Morphie Network	https://coinmarketcap.com/currencies/morphie-network/	MRFI	$0.00
4435	Rijent Coin	https://coinmarketcap.com/currencies/rijent-coin/	RTC	$0.04
4436	Medifakt	https://coinmarketcap.com/currencies/medifakt/	FAKT	$0.03
4437	Tracer DAO	https://coinmarketcap.com/currencies/tracer-dao/	TCR	$0.03
4438	WAM	https://coinmarketcap.com/currencies/wam-app/	WAM	$0.01
4439	Ruby Currency	https://coinmarketcap.com/currencies/ruby-currency/	RBC	$2.87
4440	Trading Membership Community	https://coinmarketcap.com/currencies/trading-membership-community/	TMC	$0.00
4441	VaporNodes	https://coinmarketcap.com/currencies/vapornodes/	VPND	$0.00
4442	Oath	https://coinmarketcap.com/currencies/oath/	OATH	$0.07
4443	World of Masters	https://coinmarketcap.com/currencies/world-of-masters/	WOFM	$0.00
4444	Torekko (NEW)	https://coinmarketcap.com/currencies/torekko-new/	TRK	$0.01
4445	Era7: Game of Truth	https://coinmarketcap.com/currencies/era7-game-of-truth/	GOT	$0.06
4446	ESG	https://coinmarketcap.com/currencies/esg/	ESG	$0.53
4447	Shelling	https://coinmarketcap.com/currencies/shelling/	SHL	$0.00
4448	Fancy Games	https://coinmarketcap.com/currencies/fancy-games/	FNC	$0.02
4449	Crypto Carbon Energy	https://coinmarketcap.com/currencies/crypto-carbon-energy/	CYCE	$0.47
4450	ASSARA	https://coinmarketcap.com/currencies/assara/	ASSA	$0.00
4451	Bozkurt Token	https://coinmarketcap.com/currencies/bozkurt-token/	BT	$0.00
4452	META WORLD	https://coinmarketcap.com/currencies/meta-world/	METAD	$0.00
4453	ArcadeNetwork	https://coinmarketcap.com/currencies/arcadenetwork/	ARC	$0.00
4454	KuSwap	https://coinmarketcap.com/currencies/kuswap/	KUS	$0.07
4455	Kuma Inu	https://coinmarketcap.com/currencies/kuma-inu/	KUMA	$0.00
4456	Rikkei Finance	https://coinmarketcap.com/currencies/rikkei-finance/	RIFI	$0.01
4457	Empire Capital Token	https://coinmarketcap.com/currencies/empire-capital-token/	ECC	$0.02
4458	ZUNA	https://coinmarketcap.com/currencies/zuna/	ZUNA	$0.00
4459	ViteX Coin	https://coinmarketcap.com/currencies/vitex-coin/	VX	$0.05
4460	Umami Finance	https://coinmarketcap.com/currencies/umami-finance/	UMAMI	$14.26
4461	The Killbox	https://coinmarketcap.com/currencies/the-killbox/	KBOX	$0.00
4462	Litedex	https://coinmarketcap.com/currencies/litedex/	LDX	$0.05
4463	Carnomaly	https://coinmarketcap.com/currencies/carnomaly/	CARR	$0.00
4464	Kenshi	https://coinmarketcap.com/currencies/kenshi/	KENSHI	$0.00
4465	AtEM	https://coinmarketcap.com/currencies/atem/	ATEM	$0.00
4466	TopChain	https://coinmarketcap.com/currencies/topchain/	TOPC	$0.00
4467	Scrap	https://coinmarketcap.com/currencies/scrap/	SCRAP	$0.95
4468	Cairo Finance	https://coinmarketcap.com/currencies/cairo-finance/	CAIRO	$1.11
4469	SundaeSwap	https://coinmarketcap.com/currencies/sundaeswap/	SUNDAE	$0.03
4470	MINE Network	https://coinmarketcap.com/currencies/mine-network/	MNET	$0.00
4471	Crogecoin	https://coinmarketcap.com/currencies/crogecoin/	CROGE	$0.00
4472	Golfrochain	https://coinmarketcap.com/currencies/golfrochain/	GOLF	$0.07
4473	DeFi11	https://coinmarketcap.com/currencies/defi11/	D11	$0.00
4474	Nelore Coin	https://coinmarketcap.com/currencies/nelore-coin/	NLC	$0.00
4475	Restore Truth Token	https://coinmarketcap.com/currencies/restoretruthtoken/	RTT	$0.00
4476	Polylastic	https://coinmarketcap.com/currencies/polylastic/	POLX	$0.00
4477	Demole	https://coinmarketcap.com/currencies/demole/	DMLG	$0.00
4478	Mogu	https://coinmarketcap.com/currencies/mogu/	MOGX	$0.01
4479	GridZone.io	https://coinmarketcap.com/currencies/gridzone/	ZONE	$0.04
4480	wLitiDAO	https://coinmarketcap.com/currencies/wlitidao/	WLD	$0.02
4481	Y-5 FINANCE	https://coinmarketcap.com/currencies/y-5-finance/	Y-5	$0.00
4482	POLARNODES	https://coinmarketcap.com/currencies/polar-finance/	POLAR	$0.03
4483	Dog Boss	https://coinmarketcap.com/currencies/dog-boss/	DOGBOSS	$0.81
4484	WidiLand	https://coinmarketcap.com/currencies/widiland/	WIDI	$0.01
4485	Universe.XYZ	https://coinmarketcap.com/currencies/universe-xyz/	XYZ	$0.01
4486	Defi Shopping Stake	https://coinmarketcap.com/currencies/defi-shopping-stake/	DSS	$0.01
4487	LEOPARD	https://coinmarketcap.com/currencies/leopard/	LEOPARD	$0.00
4488	Lyra	https://coinmarketcap.com/currencies/lyra-finance/	LYRA	$0.04
4489	Smarty Pay	https://coinmarketcap.com/currencies/smarty-pay/	SPY	$0.05
4490	CheeseSwap	https://coinmarketcap.com/currencies/cheese-swap/	CHEESE	$0.00
4491	Firdaos	https://coinmarketcap.com/currencies/firdaos/	FDO	$0.03
4492	Pledge Coin	https://coinmarketcap.com/currencies/pledge-coin/	PLG	$0.00
4493	Sukhavati Network	https://coinmarketcap.com/currencies/sukhavati-network/	SKT	$0.01
4494	STMAN | Stickman's Battleground NFT Game	https://coinmarketcap.com/currencies/stman-stickmans-battleground-nft-game/	STMAN	$0.01
4495	Marshall Rogan Inu	https://coinmarketcap.com/currencies/marshall-rogan-inu/	MRI	$0.01
4496	Rowan Token	https://coinmarketcap.com/currencies/rowan-token/	RWN	$0.00
4497	Dapp Token	https://coinmarketcap.com/currencies/dapp-token/	DAPPT	$0.00
4498	Ecoreal Estate	https://coinmarketcap.com/currencies/ecoreal-estate/	ECOREAL	$0.13
4499	Babylon Finance	https://coinmarketcap.com/currencies/babylon-finance/	BABL	$5.43
4500	Coinmetro Token	https://coinmarketcap.com/currencies/coinmetro-token/	XCM	$0.6257
4501	Acet	https://coinmarketcap.com/currencies/acet/	ACT	$0.01702
4502	UKA DOGE COIN	https://coinmarketcap.com/currencies/uka-doge-coin/	UDOGE	$0.0000000053
4503	LIF3 LSHARE	https://coinmarketcap.com/currencies/lif3-lshare/	LSHARE	$370.60
4504	Fisco Coin	https://coinmarketcap.com/currencies/fisco/	FSCC	$2.86
4505	Dapp Token	https://coinmarketcap.com/currencies/dapp-token/	DAPPT	$0.00054
4506	Protofi	https://coinmarketcap.com/currencies/protofi/	PROTO	$0.004616
4507	Yuan Chain Coin	https://coinmarketcap.com/currencies/yuan-chain-coin/	YCC	$0.002426
4508	Bitcoin Bam	https://coinmarketcap.com/currencies/bitcoin-bam/	BTCBAM	$0.7187
4509	Baskonia Fan Token	https://coinmarketcap.com/currencies/baskonia-fan-token/	BKN	$0.1192
4510	Metagame Arena	https://coinmarketcap.com/currencies/metagame-arena/	MGA	$0.04
4511	Birb	https://coinmarketcap.com/currencies/birb/	BIRB	$0.01
4512	Maneki-neko	https://coinmarketcap.com/currencies/maneki-neko/	NEKI	$0.00
4513	Sugar Kingdom	https://coinmarketcap.com/currencies/sugar-kingdom/	CANDY	$0.09
4514	BlockWarrior	https://coinmarketcap.com/currencies/blockwarrior/	BLWA	$0.00
4515	DaFIN	https://coinmarketcap.com/currencies/dafin/	DAF	$0.04
4516	Laqira Protocol	https://coinmarketcap.com/currencies/laqira-protocol/	LQR	$0.03
4517	Story	https://coinmarketcap.com/currencies/story/	STORY	$0.00
4518	WoopMoney	https://coinmarketcap.com/currencies/woopmoney/	WMW	$0.00
4519	MAIN	https://coinmarketcap.com/currencies/main-community/	MAIN	$0.00
4520	War Bond Token	https://coinmarketcap.com/currencies/tank-wars-zone/	WBOND	$0.00
4521	DOEX	https://coinmarketcap.com/currencies/doex/	DOEX	$0.00
4522	Pige Inu	https://coinmarketcap.com/currencies/pige-inu/	PINU	$0.00
4523	The Web3 Project	https://coinmarketcap.com/currencies/the-web3-project/	WEB3	$57.95
4524	Apricot Finance	https://coinmarketcap.com/currencies/apricot/	APT	$0.01
4525	Allbridge	https://coinmarketcap.com/currencies/allbridge/	ABR	$1.14
4526	Snap Token	https://coinmarketcap.com/currencies/snapex/	SNAP	$0.00
4527	Safemars	https://coinmarketcap.com/currencies/safemars/	SAFEMARS	$0.00
4528	Occam.Fi	https://coinmarketcap.com/currencies/occamfi/	OCC	$0.32
4529	Blockasset	https://coinmarketcap.com/currencies/blockasset/	BLOCK	$0.08
4530	Tranquil Staked ONE	https://coinmarketcap.com/currencies/tranquil-staked-one/	STONE	$0.12
4531	GAMI World	https://coinmarketcap.com/currencies/gami-world/	GAMI	$0.37
4532	Blitz Labs	https://coinmarketcap.com/currencies/blitz-labs/	BLITZ	$0.01
4533	Lux Bio Cell	https://coinmarketcap.com/currencies/lux-bio-cell/	LBXC	$0.00
4534	Xiglute Coin	https://coinmarketcap.com/currencies/xiglute-coin/	XGC	$0.00
4535	NirvanaMeta	https://coinmarketcap.com/currencies/nirvanameta/	MNU	$0.00
4536	Nowar	https://coinmarketcap.com/currencies/nowar/	NOWAR	$0.00
4537	LUXO	https://coinmarketcap.com/currencies/luxochain/	LUXO	$0.10
4538	MOTIV Protocol	https://coinmarketcap.com/currencies/motiv-protocol/	MOV	$0.01
4539	Crypto Vault	https://coinmarketcap.com/currencies/crypto-vault/	CVT	$0.00
4540	Rbicycle	https://coinmarketcap.com/currencies/rbicycle/	CYCLE	$0.00
4541	Bancor Governance Token	https://coinmarketcap.com/currencies/bancor-governance-token/	VBNT	$0.35
4542	Pylon Protocol	https://coinmarketcap.com/currencies/pylon-protocol/	MINE	$0.00
4543	Metroverse	https://coinmarketcap.com/currencies/metroverse/	MET	$0.00
4544	Dhabi Coin	https://coinmarketcap.com/currencies/dhabi-coin/	DBC	$0.00
4545	CZshares	https://coinmarketcap.com/currencies/czshares/	CZSHARES	$39.47
4546	Opennity	https://coinmarketcap.com/currencies/opennity/	OPNN	$0.00
4547	OEC ETH	https://coinmarketcap.com/currencies/ethk/	ETHK	$1057.89
4548	Wrapped Bitcoin Cash	https://coinmarketcap.com/currencies/wrapped-bitcoin-cash/	WBCH	$77.36
4549	PureFi Protocol	https://coinmarketcap.com/currencies/purefi-protocol/	UFI	$0.01
4550	Vulture Peak	https://coinmarketcap.com/currencies/vulture-peak/	VPK	$0.05
4551	Spintop	https://coinmarketcap.com/currencies/spintop/	SPIN	$0.02
4552	Sanin Inu	https://coinmarketcap.com/currencies/sanin-inu/	SANI	$0.00
4553	VR Blocks	https://coinmarketcap.com/currencies/vr-blocks/	VRBLOCKS	$0.17
4554	GoCryptoMe	https://coinmarketcap.com/currencies/gocryptome/	GCME	$0.00
4555	Joystick	https://coinmarketcap.com/currencies/joystick-2/	JOY	$0.01
4556	GreenFuel	https://coinmarketcap.com/currencies/greenfuel/	GREENFUEL	$0.00
4557	Upfire	https://coinmarketcap.com/currencies/upfire/	UPR	$0.00
4558	Duelist King	https://coinmarketcap.com/currencies/duelist-king/	DKT	$0.10
4559	BH Network	https://coinmarketcap.com/currencies/bh-network/	BHAT	$0.14
4560	LUXY	https://coinmarketcap.com/currencies/luxy/	LUXY	$0.03
4561	PumpETH	https://coinmarketcap.com/currencies/pumpeth/	PETH	$0.00
4562	YFIONE	https://coinmarketcap.com/currencies/yfione/	YFO	$9.31
4563	DataHighway	https://coinmarketcap.com/currencies/datahighway/	DHX	$3.71
4564	ManuFactory	https://coinmarketcap.com/currencies/manufactory-2/	MNFT	$0.01
4565	Raptoreum	https://coinmarketcap.com/currencies/raptoreum/	RTM	$0.00
4566	Super Soccer	https://coinmarketcap.com/currencies/super-soccer/	SPS	$0.00
4567	NEXTYPE	https://coinmarketcap.com/currencies/nextype/	NT	$0.01
4568	Kusunoki Samurai	https://coinmarketcap.com/currencies/kusunoki-samurai/	KUSUNOKI	$0.00
4569	Solar	https://coinmarketcap.com/currencies/solardex/	SOLAR	$0.02
4570	CasinoCoin	https://coinmarketcap.com/currencies/casinocoin/	CSC	$0.00
4571	SpritzMoon Crypto Token	https://coinmarketcap.com/currencies/spritzmoon-crypto-token/	Spritzmoon	$0.00
4572	LondonCoinGold	https://coinmarketcap.com/currencies/londoncoingold/	LDXG	$0.03
4573	THEORY	https://coinmarketcap.com/currencies/theory/	THRY	$0.01
4574	Sperax USD	https://coinmarketcap.com/currencies/sperax-usd/	USDs	$0.99
4575	Scotty Beam	https://coinmarketcap.com/currencies/scottybeam/	SCOTTY	$0.00
4576	Banana Index	https://coinmarketcap.com/currencies/banana-index/	BANDEX	$0.00
4577	Cheems Inu	https://coinmarketcap.com/currencies/cheems-inu/	CINU	$0.00
4578	Google Tokenized Stock Zipmex	https://coinmarketcap.com/currencies/google-tokenized-stock-zipmex/	GOOGL	$2060.74
4579	UNCL	https://coinmarketcap.com/currencies/uncl/	UNCL	$10.54
4580	Million Dollar Baby	https://coinmarketcap.com/currencies/million-dollar-baby/	MDB	$0.00
4581	Homerun Token	https://coinmarketcap.com/currencies/homerun-token/	HMRN	$0.00
4582	VKENAF	https://coinmarketcap.com/currencies/vkenaf/	VKNF	$0.01
4583	NELO Metaverse	https://coinmarketcap.com/currencies/nelo-metaverse/	NELO	$0.00
4584	Pegaxy	https://coinmarketcap.com/currencies/pegaxy/	PGX	$0.02
4585	Magic Power	https://coinmarketcap.com/currencies/magic-power/	MGP	$0.00
4586	Parallel	https://coinmarketcap.com/currencies/parallel/	PAR	$1.05
4587	CARD.STARTER	https://coinmarketcap.com/currencies/card-starter/	CARDS	$0.37
4588	Freecash	https://coinmarketcap.com/currencies/freecash/	FCH	$0.01
4589	DoDreamChain	https://coinmarketcap.com/currencies/dodreamchain/	DRM	$0.00
4590	Omnisphere DAO	https://coinmarketcap.com/currencies/omnisphere-dao/	OSPD	$0.00
4591	Tag Protocol	https://coinmarketcap.com/currencies/tag-protocol/	TAG	$0.04
4592	Grinbit	https://coinmarketcap.com/currencies/grinbit/	GRBT	$0.02
4593	Bodrumspor Fan Token	https://coinmarketcap.com/currencies/bodrumspor-fan-token/	BDRM	$0.13
4594	3x Long Litecoin Token	https://coinmarketcap.com/currencies/3x-long-litecoin-token/	LTCBULL	$0.00
4595	Last Survivor	https://coinmarketcap.com/currencies/last-survivor/	LSC	$0.00
4596	StepD	https://coinmarketcap.com/currencies/stepd/	STEPD	$0.00
4597	Maximus Token	https://coinmarketcap.com/currencies/maximus-token/	MAXI	$0.06
4598	PoolTogether	https://coinmarketcap.com/currencies/pooltogether/	POOL	$0.59
4599	Australian Safe Shepherd	https://coinmarketcap.com/currencies/australian-safe-shepherd/	ASS	$0.00
4600	Australian Safe Shepherd	https://coinmarketcap.com/currencies/australian-safe-shepherd/	ASS	$0.0...00061
4601	Marvin Inu	https://coinmarketcap.com/currencies/marvin-inu/	MARVIN	$0.000001216
4602	Vaulty	https://coinmarketcap.com/currencies/vaulty-finance/	VLTY	$0.01091
4603	Totem	https://coinmarketcap.com/currencies/totem-new-earth-systems/	CTZN	$0.006763
4604	Futureswap	https://coinmarketcap.com/currencies/futureswap/	FST	$0.09306
4605	Hanzo	https://coinmarketcap.com/currencies/hanzo-inu/	HANZO	$0.000000009385
4606	Boring Protocol	https://coinmarketcap.com/currencies/boring-protocol/	BOP	$0.01622
4607	Kintsugi	https://coinmarketcap.com/currencies/kintsugi/	KINT	$4.12
4608	MobieCoin	https://coinmarketcap.com/currencies/mobiepay/	MBX	$0.0009866
4609	Day Of Defeat	https://coinmarketcap.com/currencies/day-of-defeat/	DOD	$0.00000009916
4610	Mammoth	https://coinmarketcap.com/currencies/mammoth/	MMT	$1.80
4611	DarkCrypto	https://coinmarketcap.com/currencies/darkcrypto/	DARK	$0.06
4612	ShibaPup	https://coinmarketcap.com/currencies/shibapup/	SHIBAPUP	$0.19
4613	Polygen	https://coinmarketcap.com/currencies/polygen/	PGEN	$0.00
4614	CrossWallet	https://coinmarketcap.com/currencies/crosswallet/	CWT	$0.01
4615	OBORTECH	https://coinmarketcap.com/currencies/obortech/	OBOT	$0.01
4616	Folder Protocol	https://coinmarketcap.com/currencies/folder-protocol/	FOL	$0.01
4617	Shardus	https://coinmarketcap.com/currencies/shardus/	ULT	$0.17
4618	FOX TOKEN	https://coinmarketcap.com/currencies/fox-coxswap/	FOX	$0.00
4619	Vagabond	https://coinmarketcap.com/currencies/vagabond/	VGO	$0.04
4620	Secret	https://coinmarketcap.com/currencies/secret-blockchain/	SIE	$0.03
4621	ACU Platform	https://coinmarketcap.com/currencies/acu-platform/	ACU	$3.37
4622	Cross-Chain Bridge Token	https://coinmarketcap.com/currencies/cross-chain-bridge-token/	BRIDGE	$0.01
4623	VICSTEP	https://coinmarketcap.com/currencies/vicstep/	VIC	$0.00
4624	ChoccySwap	https://coinmarketcap.com/currencies/choccyswap/	CCY	$0.01
4625	NOSHIT	https://coinmarketcap.com/currencies/noshit/	NSH	$0.00
4626	VeldoraBSC	https://coinmarketcap.com/currencies/veldorabsc/	VDORA	$0.00
4627	PL^Gnet	https://coinmarketcap.com/currencies/plgnet/	PLUG	$0.00
4628	SmartFi	https://coinmarketcap.com/currencies/smartfi/	SMTF	$0.91
4629	Dripto	https://coinmarketcap.com/currencies/dripto/	DRYP	$0.01
4630	DYAKON	https://coinmarketcap.com/currencies/dyakon/	DYN	$0.00
4631	Artery Network	https://coinmarketcap.com/currencies/artery-network/	ARTR	$0.01
4632	Polaris Finance Orbital	https://coinmarketcap.com/currencies/polaris-finance-orbital/	ORBITAL	$19240.66
4633	Talent Token	https://coinmarketcap.com/currencies/talent-token/	TTX	$0.00
4634	Shiny Ore	https://coinmarketcap.com/currencies/shiny-ore/	SO	$0.00
4635	Vires Finance	https://coinmarketcap.com/currencies/vires-finance/	VIRES	$42.09
4636	botXcoin	https://coinmarketcap.com/currencies/botxcoin/	BOTX	$0.03
4637	Karmaverse Zombie	https://coinmarketcap.com/currencies/karmaverse-zombie/	SERUM	$0.04
4638	Supernova Token	https://coinmarketcap.com/currencies/snt/	SNT	$0.01
4639	MetaniaGames	https://coinmarketcap.com/currencies/metaniagames/	METANIA	$0.00
4640	Skate Metaverse Coin	https://coinmarketcap.com/currencies/skate-metaverse-coin/	SMC	$0.00
4641	VeraOne	https://coinmarketcap.com/currencies/veraone/	VRO	$55.97
4642	MagnetGold	https://coinmarketcap.com/currencies/magnet-gold/	MTG	$0.52
4643	DarleyGo Essence	https://coinmarketcap.com/currencies/darleygo-essence/	DGE	$0.02
4644	Angle	https://coinmarketcap.com/currencies/angle/	ANGLE	$0.04
4645	Petoverse	https://coinmarketcap.com/currencies/petoverse/	PETO	$0.36
4646	Unicorn Milk	https://coinmarketcap.com/currencies/unicorn-milk-token/	UNIM	$0.01
4647	ChargeDefi	https://coinmarketcap.com/currencies/chargedefi/	CHARGE	$3.15
4648	WanSwap	https://coinmarketcap.com/currencies/wanswap/	WASP	$0.00
4649	LimoCoin Swap	https://coinmarketcap.com/currencies/limocoin-swap/	LMCSWAP	$0.01
4650	GameYoo	https://coinmarketcap.com/currencies/gameyoo/	GYC	$0.00
4651	ForthBox	https://coinmarketcap.com/currencies/forthbox/	FBX	$0.00
4652	junca Cash	https://coinmarketcap.com/currencies/junca-cash/	JCC	$0.19
4653	Gold Nugget	https://coinmarketcap.com/currencies/cryptomines-classic/	NGT	$0.02
4654	Trisolaris	https://coinmarketcap.com/currencies/trisolaris/	TRI	$0.03
4655	YAY Games	https://coinmarketcap.com/currencies/yay-games/	YAY	$0.00
4656	InPoker	https://coinmarketcap.com/currencies/inpoker/	INP	$0.00
4657	Compound 0x	https://coinmarketcap.com/currencies/compound-0x/	CZRX	$0.01
4658	CashBackPro	https://coinmarketcap.com/currencies/cashbackpro/	CBP	$1.62
4659	DOOR	https://coinmarketcap.com/currencies/door/	DOOR	$0.05
4660	1Sol	https://coinmarketcap.com/currencies/1sol/	1SOL	$0.08
4661	ShibaWallet	https://coinmarketcap.com/currencies/shiba-wallet/	SHWA	$0.00
4662	Survival Game Online	https://coinmarketcap.com/currencies/survival-game-online/	SURV	$0.00
4663	3X Short Ethereum Token	https://coinmarketcap.com/currencies/3x-short-ethereum-token/	ETHBEAR	$0.00
4664	Multiverse	https://coinmarketcap.com/currencies/multiverse/	AI	$0.00
4665	Puriever	https://coinmarketcap.com/currencies/puriever/	PURE	$0.02
4666	Tesla tokenized stock Bittrex	https://coinmarketcap.com/currencies/tesla-tokenized-stock-bittrex/	TSLA	$658.12
4667	Domi Online	https://coinmarketcap.com/currencies/domi-online/	DOMI	$0.02
4668	NFT Starter	https://coinmarketcap.com/currencies/nft-starter/	NST	$0.00
4669	Dii Coin	https://coinmarketcap.com/currencies/dii-coin/	DIIC	$0.19
4670	Blatform	https://coinmarketcap.com/currencies/blatform/	BFORM	$0.18
4671	Stilton	https://coinmarketcap.com/currencies/stilton-musk/	STILT	$0.00
4672	Juicebox	https://coinmarketcap.com/currencies/juicebox/	JBX	$0.00
4673	Pippi Finance	https://coinmarketcap.com/currencies/pippi-finance/	PIPI	$0.00
4674	DeFlyBall	https://coinmarketcap.com/currencies/deflyball/	DEFLY	$0.01
4675	Convex CRV	https://coinmarketcap.com/currencies/convex-crv/	CVXCRV	$0.78
4676	TFS Token	https://coinmarketcap.com/currencies/tfs-token/	TFS	$0.00
4677	NYCCoin	https://coinmarketcap.com/currencies/nyccoin/	NYC	$0.00
4678	Balkari	https://coinmarketcap.com/currencies/balkari/	BKR	$0.09
4679	Travel Coin	https://coinmarketcap.com/currencies/travel-coin/	TCOIN	$0.00
4680	Baby Tiger King	https://coinmarketcap.com/currencies/baby-tiger-king/	BABYTK	$0.00
4681	Beethoven X	https://coinmarketcap.com/currencies/beethoven-x/	BEETS	$0.07
4682	JoyStick Games	https://coinmarketcap.com/currencies/joystick-games/	JOY	$0.41
4683	Shabu Shabu Finance	https://coinmarketcap.com/currencies/shabu-shabu-finance/	KOBE	$0.25
4684	MetaBomb	https://coinmarketcap.com/currencies/metabomb/	MTB	$0.00
4685	WalkN	https://coinmarketcap.com/currencies/walkn/	WALKN	$0.01
4686	JPY Coin	https://coinmarketcap.com/currencies/jpy-coin/	JPYC	$0.01
4687	Liquidus	https://coinmarketcap.com/currencies/liquidus/	LIQ	$0.25
4688	League of Ancients	https://coinmarketcap.com/currencies/league-of-ancients/	LOA	$0.02
4689	Tutellus	https://coinmarketcap.com/currencies/tutellus/	TUT	$0.18
4690	Fanspel	https://coinmarketcap.com/currencies/fanspel/	FAN	$0.02
4691	Nomad Exiles	https://coinmarketcap.com/currencies/nomad-exiles/	PRIDE	$0.01
4692	Whalmart	https://coinmarketcap.com/currencies/whalmart/	WMART	$0.00
4693	Azit	https://coinmarketcap.com/currencies/azit/	AZIT	$0.10
4694	Vanguard S&P 500 ETF Tokenized Stock Defichain	https://coinmarketcap.com/currencies/vanguard-sp-500-etf-tokenized-stock-defichain/	DVOO	$250.56
4695	UNION Protocol Governance Token	https://coinmarketcap.com/currencies/union-protocol-governance-token/	UNN	$0.00
4696	Thetan Coin	https://coinmarketcap.com/currencies/thetan-coin/	THC	$0.00
4697	Blockmason Link	https://coinmarketcap.com/currencies/blockmason-link/	BLINK	$0.00
4698	Monster of God	https://coinmarketcap.com/currencies/monster-of-god/	MONX	$0.00
4699	ReSource Protocol	https://coinmarketcap.com/currencies/resource-protocol/	SOURCE	$0.66
4700	ReSource Protocol	https://coinmarketcap.com/currencies/resource-protocol/	SOURCE	$0.6601
4701	Nesten	https://coinmarketcap.com/currencies/nesten/	NIT	$0.07829
4702	Witch Token	https://coinmarketcap.com/currencies/witch-token/	WITCH	$0.2835
4703	VidyX	https://coinmarketcap.com/currencies/vidyx/	VIDYX	$0.002159
4704	AFKDAO	https://coinmarketcap.com/currencies/afkdao/	AFK	$0.008971
4705	B.Protocol	https://coinmarketcap.com/currencies/b-protocol/	BPRO	$1.01
4706	iAssets	https://coinmarketcap.com/currencies/iassets/	ASSET	$0.0000003597
4707	DexBrowser	https://coinmarketcap.com/currencies/dexbrowser/	BRO	$0.004866
4708	Bent Finance	https://coinmarketcap.com/currencies/bent-finance/	BENT	$0.1883
4709	Ramifi Protocol	https://coinmarketcap.com/currencies/ramifi-protocol/	RAM	$0.02933
4710	Church Dao	https://coinmarketcap.com/currencies/church-dao/	CHURCH	$0.00
4711	Single Finance	https://coinmarketcap.com/currencies/single-finance/	SINGLE	$0.01
4712	Float Protocol: Float	https://coinmarketcap.com/currencies/float-protocol-float/	FLOAT	$1.16
4713	Everlens	https://coinmarketcap.com/currencies/everlens/	ELEN	$0.00
4714	Geist Finance	https://coinmarketcap.com/currencies/geist-finance/	GEIST	$0.01
4715	Trillium	https://coinmarketcap.com/currencies/trillium/	TT	$0.00
4716	Solanax	https://coinmarketcap.com/currencies/solanax/	SOLD	$0.01
4717	ADAM Oracle	https://coinmarketcap.com/currencies/adam-oracle/	ADAM	$5.61
4718	Starmon Metaverse	https://coinmarketcap.com/currencies/starmon-metaverse/	SMON	$0.05
4719	Shinjiru Inu	https://coinmarketcap.com/currencies/shinjiru-inu/	SHINJI	$0.00
4720	CryptoCoinPay	https://coinmarketcap.com/currencies/cryptocoinpay/	CCP	$0.05
4721	POOMOON	https://coinmarketcap.com/currencies/poomoon/	POO	$0.00
4722	BLOKPAD	https://coinmarketcap.com/currencies/blokpad/	BPAD	$0.00
4723	Potentiam	https://coinmarketcap.com/currencies/potentiam/	PTM	$0.02
4724	KingdomX	https://coinmarketcap.com/currencies/kingdomx/	KT	$0.00
4725	Infinite Launch	https://coinmarketcap.com/currencies/infinite-launch/	ILA	$0.00
4726	LiveNFT	https://coinmarketcap.com/currencies/livenft/	LIVENFT	$0.00
4727	Beeuda	https://coinmarketcap.com/currencies/beeuda/	BDA	$0.04
4728	IDEAS	https://coinmarketcap.com/currencies/ideas/	IDS	$0.00
4729	BTC 2x Flexible Leverage Index	https://coinmarketcap.com/currencies/index-coop/	BTC2X-FLI	$4.64
4730	Pollen	https://coinmarketcap.com/currencies/pollen/	PLN	$0.04
4731	smolting inu	https://coinmarketcap.com/currencies/smolting-inu/	SMOL	$0.99
4732	Ninneko (Mata)	https://coinmarketcap.com/currencies/ninneko-mata/	MATA	$0.00
4733	Smartchem	https://coinmarketcap.com/currencies/smartchem/	SMAC	$0.01
4734	XDAG	https://coinmarketcap.com/currencies/xdag/	XDAG	$0.01
4735	NFT Global	https://coinmarketcap.com/currencies/nft-global/	NFTG	$0.00
4736	NDN Link	https://coinmarketcap.com/currencies/ndn-link/	NDN	$0.00
4737	Farmers World Wood	https://coinmarketcap.com/currencies/farmers-world-wood/	FWW	$0.00
4738	Walk Dogs	https://coinmarketcap.com/currencies/walk-dogs/	WLD	$0.08
4739	Madagascar	https://coinmarketcap.com/currencies/madagascar/	$TIME	$0.00
4740	Solcial	https://coinmarketcap.com/currencies/solcial/	SLCL	$0.13
4741	Etherconnect	https://coinmarketcap.com/currencies/etherconnect/	ECC	$0.00
4742	Lillion	https://coinmarketcap.com/currencies/lillion/	LIL	$4.98
4743	POTENT	https://coinmarketcap.com/currencies/potent/	PTT	$0.00
4744	Chellitcoin	https://coinmarketcap.com/currencies/chellitcoin/	CHLT	$0.06
4745	Good Person Coin	https://coinmarketcap.com/currencies/good-person-coin/	GPCX	$0.00
4746	AnySniper	https://coinmarketcap.com/currencies/anysniper/	SNIPE	$0.00
4747	Shiba Interstellar	https://coinmarketcap.com/currencies/shiba-interstellar/	SHINT	$0.00
4748	TipsyCoin	https://coinmarketcap.com/currencies/tipsycoin/	$TIPSY	$0.00
4749	HollaEx Token	https://coinmarketcap.com/currencies/hollaex-token/	XHT	$0.16
4750	LinkPool	https://coinmarketcap.com/currencies/linkpool/	LPL	$2.74
4751	Samurai Legends	https://coinmarketcap.com/currencies/samurai-legends/	SMG	$0.01
4752	Lunar Flare	https://coinmarketcap.com/currencies/lunar-flare/	LFG	$0.00
4753	CRIR MSH	https://coinmarketcap.com/currencies/crir-msh/	MSH	$0.00
4754	Toobcoin	https://coinmarketcap.com/currencies/toobemi/	TOOB	$0.15
4755	Dibs Money	https://coinmarketcap.com/currencies/dibs-money/	DIBS	$0.31
4756	Libero Financial	https://coinmarketcap.com/currencies/libero-financial/	LIBERO	$0.00
4757	OREN Game	https://coinmarketcap.com/currencies/oren-game/	OREN	$0.00
4758	CryptoXpress	https://coinmarketcap.com/currencies/cryptoxpress/	XPRESS	$0.14
4759	AnchorSwap	https://coinmarketcap.com/currencies/anchorswap/	ANCHOR	$0.02
4760	Pirate X Pirate	https://coinmarketcap.com/currencies/pirate-x-pirate/	PXP	$0.00
4761	Ethermon	https://coinmarketcap.com/currencies/ethermon/	EMON	$0.00
4762	KEY	https://coinmarketcap.com/currencies/key/	KEY	$0.00
4763	Pledge	https://coinmarketcap.com/currencies/pledge/	PLGR	$0.00
4764	MetaKeeper	https://coinmarketcap.com/currencies/metakeeper/	MKP	$0.01
4765	RCD Espanyol Fan Token	https://coinmarketcap.com/currencies/rcd-espanyol-fan-token/	ENFT	$0.02
4766	Aurix	https://coinmarketcap.com/currencies/aurix/	AUR	$0.23
4767	Greenheart CBD	https://coinmarketcap.com/currencies/greenheart-cbd/	CBD	$0.02
4768	Pussy Financial	https://coinmarketcap.com/currencies/pussy-financial/	PUSSY	$0.00
4769	Ojamu	https://coinmarketcap.com/currencies/ojamu/	OJA	$0.01
4770	ROI Token	https://coinmarketcap.com/currencies/roi-token/	ROI	$0.00
4771	Dope Wars Paper	https://coinmarketcap.com/currencies/dope-wars-paper/	PAPER	$0.00
4772	APWine Finance	https://coinmarketcap.com/currencies/apwine-finance/	APW	$0.12
4773	Mercurial Finance	https://coinmarketcap.com/currencies/mercurial-finance/	MER	$0.03
4774	Marsupilamii	https://coinmarketcap.com/currencies/marsupilamii/	MARS	$0.00
4775	JK Coin	https://coinmarketcap.com/currencies/jk-coin/	JK	$0.25
4776	TokenSwap	https://coinmarketcap.com/currencies/tokenswap-dex/	TP	$0.00
4777	Crypto Cavemen Club	https://coinmarketcap.com/currencies/crypto-cavemen-club/	CAVE	$0.15
4778	Wrapped Cardano	https://coinmarketcap.com/currencies/wrapped-cardano/	WADA	$0.45
4779	Kintsugi BTC	https://coinmarketcap.com/currencies/kintsugi-btc/	KBTC	$20205.11
4780	RC Celta de Vigo Fan Token	https://coinmarketcap.com/currencies/rc-celta-de-vigo-fan-token/	CFT	$0.03
4781	Mr.FOX TOKEN	https://coinmarketcap.com/currencies/mr-fox-token/	MRFOX	$0.03
4782	Lum Network	https://coinmarketcap.com/currencies/lum-network/	LUM	$0.00
4783	Saitoki Inu	https://coinmarketcap.com/currencies/saitoki-inu/	SAITOKI	$0.00
4784	Starcoin	https://coinmarketcap.com/currencies/starcoin-stc/	STC	$0.06
4785	Crypto Soccer	https://coinmarketcap.com/currencies/crypto-soccer/	CSC	$0.00
4786	xPTP	https://coinmarketcap.com/currencies/xptp/	XPTP	$0.15
4787	Vigorus	https://coinmarketcap.com/currencies/vigorus/	VIS	$0.00
4788	VinDax Coin	https://coinmarketcap.com/currencies/vindax-coin/	VD	$0.01
4789	Moonpot	https://coinmarketcap.com/currencies/moonpot/	POTS	$0.19
4790	Idle Ninja Online	https://coinmarketcap.com/currencies/idle-ninja-online/	NINKY	$0.00
4791	Seba	https://coinmarketcap.com/currencies/seba/	SEBA	$0.00
4792	Altbase	https://coinmarketcap.com/currencies/altbase/	ALTB	$0.00
4793	DODbase	https://coinmarketcap.com/currencies/dodbase/	DODB	$0.00
4794	Doren	https://coinmarketcap.com/currencies/doren/	DRE	$0.33
4795	Moon Nation Game	https://coinmarketcap.com/currencies/moon-nation-game/	MNG	$0.01
4796	Spring	https://coinmarketcap.com/currencies/spring/	SPRING	$0.01
4797	Liquid Driver	https://coinmarketcap.com/currencies/liquid-driver/	LQDR	$1.44
4798	JustCarbon	https://coinmarketcap.com/currencies/justcarbon/	JCG	$0.02
4799	Nekocoin	https://coinmarketcap.com/currencies/nekocoin/	NEKOS	$0.00
4800	Cake Monster	https://coinmarketcap.com/currencies/cake-monster/	MONSTA	$0.001001
4801	Socialswap	https://coinmarketcap.com/currencies/socialswap/	SST	$0.02308
4802	Mishka	https://coinmarketcap.com/currencies/mishka-badbears/	MSK	$0.001402
4803	Vodka Token	https://coinmarketcap.com/currencies/vodka-token/	VODKA	$0.0002555
4804	Bright Token	https://coinmarketcap.com/currencies/bright-token/	BRIGHT	$0.06736
4805	SokuSwap	https://coinmarketcap.com/currencies/sokuswap/	SOKU	$0.007324
4806	X-Metaverse	https://coinmarketcap.com/currencies/x-metaverse/	XMETA	$0.007149
4807	Supremacy	https://coinmarketcap.com/currencies/supremacy/	SUPS	$0.01817
4808	HalfPizza	https://coinmarketcap.com/currencies/halfpizza/	PIZA	$0.0000331
4809	Infinite Arcade	https://coinmarketcap.com/currencies/infinite-arcade/	TIC	$0.03637
4810	Movey Token	https://coinmarketcap.com/currencies/movey-token/	MOVEY	$0.05
4811	DeFiHorse	https://coinmarketcap.com/currencies/defihorse/	DFH	$0.01
4812	Infinity DAO	https://coinmarketcap.com/currencies/infinity-dao/	IND	$1.21
4813	Basis Gold Share	https://coinmarketcap.com/currencies/basis-gold-share/	BAGS	$1.09
4814	Boss Token	https://coinmarketcap.com/currencies/boss-token/	BOSS	$0.00
4815	BENQI Liquid Staked AVAX	https://coinmarketcap.com/currencies/benqi-liquid-staked-avax/	SAVAX	$16.60
4816	Airbloc	https://coinmarketcap.com/currencies/airbloc/	ABL	$0.01
4817	Jetset	https://coinmarketcap.com/currencies/jetset/	JTS	$0.00
4818	PixelVerse	https://coinmarketcap.com/currencies/pixelverse/	PIXEL	$0.00
4819	1X Short Ethereum Token	https://coinmarketcap.com/currencies/1x-short-ethereum-token/	ETHHEDGE	$31.70
4820	HashLand Coin	https://coinmarketcap.com/currencies/hashland/	HC	$0.66
4821	Paypolitan Token	https://coinmarketcap.com/currencies/paypolitan-token/	EPAN	$0.01
4822	Omax Token	https://coinmarketcap.com/currencies/omax-token/	OMAX	$0.00
4823	Vulkania	https://coinmarketcap.com/currencies/vulkania/	VLK	$0.05
4824	Meter Stable	https://coinmarketcap.com/currencies/meter-stable/	MTR	$0.85
4825	EYES Protocol	https://coinmarketcap.com/currencies/eyes-protocol/	EYES	$0.01
4826	The APIS	https://coinmarketcap.com/currencies/the-apis/	API	$0.01
4827	OEC BTC	https://coinmarketcap.com/currencies/oec-btc/	BTCK	$19209.07
4828	Lion Token	https://coinmarketcap.com/currencies/lion-token/	LION	$0.00
4829	Oceans Finance	https://coinmarketcap.com/currencies/oceans-finance/	OCEANS	$0.17
4830	Equilibria	https://coinmarketcap.com/currencies/equilibria/	XEQ	$0.11
4831	Minds	https://coinmarketcap.com/currencies/minds/	MINDS	$0.19
4832	Talken	https://coinmarketcap.com/currencies/talken/	TALK	$0.15
4833	ASYAGRO	https://coinmarketcap.com/currencies/asyagro/	ASY	$0.05
4834	HZM Coin	https://coinmarketcap.com/currencies/hzm-coin/	HZM	$0.00
4835	Heroes of NFT	https://coinmarketcap.com/currencies/heroes-of-nft/	HON	$0.01
4836	Mobius Finance	https://coinmarketcap.com/currencies/mobius-finance/	MOT	$0.01
4837	Creator Platform	https://coinmarketcap.com/currencies/creator-platform/	CTR	$0.00
4838	MarsRise	https://coinmarketcap.com/currencies/marsrise/	MARSRISE	$0.00
4839	Neton	https://coinmarketcap.com/currencies/neton/	NTO	$0.97
4840	XSwap Protocol	https://coinmarketcap.com/currencies/xswap-protocol/	XSP	$0.00
4841	Yoda Coin Swap	https://coinmarketcap.com/currencies/yoda-coin-swap/	JEDALS	$0.07
4842	StarkMeta	https://coinmarketcap.com/currencies/starkmeta/	SMETA	$1.50
4843	API INU	https://coinmarketcap.com/currencies/api-inu/	API	$0.00
4844	Revest Finance	https://coinmarketcap.com/currencies/revest-finance/	RVST	$0.01
4845	Vision Metaverse	https://coinmarketcap.com/currencies/vision-metaverse/	VS	$1.11
4846	DXBPay	https://coinmarketcap.com/currencies/dxbpay/	DXB	$0.00
4847	Wrapped Arweave	https://coinmarketcap.com/currencies/wrapped-arweave/	WAR	$10.45
4848	Portuma	https://coinmarketcap.com/currencies/portuma/	POR	$0.00
4849	Titano	https://coinmarketcap.com/currencies/titano/	TITANO	$0.00
4850	NIL Coin	https://coinmarketcap.com/currencies/nil-coin/	NIL	$0.00
4851	Summer	https://coinmarketcap.com/currencies/summer/	SUMMER	$0.01
4852	CZbomb	https://coinmarketcap.com/currencies/czbomb/	CZBOMB	$1.10
4853	Yieldzilla	https://coinmarketcap.com/currencies/yieldzilla/	YDZ	$0.29
4854	Bonfire	https://coinmarketcap.com/currencies/bonfire/	BONFIRE	$0.00
4855	Cricket Star Manager	https://coinmarketcap.com/currencies/cricket-star-manager/	CSM	$0.12
4856	Copycat Finance	https://coinmarketcap.com/currencies/copycat-finance/	COPYCAT	$0.01
4857	3x Long XRP Token	https://coinmarketcap.com/currencies/3x-long-xrp-token/	XRPBULL	$0.00
4858	LCG	https://coinmarketcap.com/currencies/lcg/	LCG	$0.01
4859	Perion	https://coinmarketcap.com/currencies/perion/	PERC	$0.17
4860	Koda Cryptocurrency	https://coinmarketcap.com/currencies/summit-koda-token-new/	KODA	$0.00
4861	Vetter Token	https://coinmarketcap.com/currencies/vetter-token/	VETTER	$0.00
4862	Koreadoge	https://coinmarketcap.com/currencies/koreadoge/	KDOGE	$0.00
4863	Friends With Benefits Pro	https://coinmarketcap.com/currencies/friends-with-benefits-pro/	FWB	$11.90
4864	Cryptomeda	https://coinmarketcap.com/currencies/cryptomeda/	TECH	$0.00
4865	Dystopia	https://coinmarketcap.com/currencies/dystopia/	DYST	$0.01
4866	Mainston	https://coinmarketcap.com/currencies/mainston/	STON	$0.02
4867	Tempus	https://coinmarketcap.com/currencies/tempus/	TEMP	$0.03
4868	$FiPi	https://coinmarketcap.com/currencies/fipi/	FIPI	$0.02
4869	Aalto Protocol	https://coinmarketcap.com/currencies/aalto-protocol/	AALTO	$5.58
4870	Silo Finance	https://coinmarketcap.com/currencies/silo-finance/	SILO	$0.05
4871	Mars	https://coinmarketcap.com/currencies/mars/	Mars	$0.00
4872	Magik Finance	https://coinmarketcap.com/currencies/magik-finance/	MAGIK	$0.25
4873	Starter	https://coinmarketcap.com/currencies/bscstarter/	START	$0.20
4874	MovingOn Finance	https://coinmarketcap.com/currencies/movingon-finance/	MOVON	$0.00
4875	Musk Metaverse	https://coinmarketcap.com/currencies/musk-metaverse/	METAMUSK	$0.00
4876	Exobots	https://coinmarketcap.com/currencies/exobots/	EXOS	$0.07
4877	Unit Protocol Duck	https://coinmarketcap.com/currencies/unit-protocol-duck/	DUCK	$0.01
4878	Electric Vehicle Direct Currency	https://coinmarketcap.com/currencies/electric-vehicle-direct-currency/	EVDC	$0.00
4879	CLIMB TOKEN FINANCE	https://coinmarketcap.com/currencies/climb-token-finance/	CLIMB	$0.45
4880	GranX Chain	https://coinmarketcap.com/currencies/cranx-chain/	GRANX	$0.01
4881	Shibaverse	https://coinmarketcap.com/currencies/shibaverse/	VERSE	$0.00
4882	rLoop	https://coinmarketcap.com/currencies/rloop/	RLOOP	$0.01
4883	Bincentive	https://coinmarketcap.com/currencies/bincentive/	BCNT	$0.02
4884	Future1coin	https://coinmarketcap.com/currencies/future1coin/	F1C	$0.00
4885	Duzce Token	https://coinmarketcap.com/currencies/duzce-token/	DUZCE	$0.59
4886	Traders coin	https://coinmarketcap.com/currencies/traders-coin/	TRDC	$0.00
4887	Crypto Classic	https://coinmarketcap.com/currencies/crypto-classic/	CRC	$0.03
4888	Zeus Finance	https://coinmarketcap.com/currencies/zeus-node-finance/	ZEUS	$0.37
4889	MonoX Protocol	https://coinmarketcap.com/currencies/monox-protocol-token/	MONO	$0.34
4890	Footie Plus	https://coinmarketcap.com/currencies/footie-plus/	FOOTIE	$0.00
4891	BicycleFi	https://coinmarketcap.com/currencies/bicyclefi/	BCF	$0.00
4892	Meshswap Protocol	https://coinmarketcap.com/currencies/meshswap-protocol/	MESH	$0.33
4893	CoinWind	https://coinmarketcap.com/currencies/coinwind/	COW	$0.40
4894	YEL.Finance	https://coinmarketcap.com/currencies/yel-finance/	YEL	$0.00
4895	Widi Soul	https://coinmarketcap.com/currencies/wso/	WSO	$0.00
4896	Lemond	https://coinmarketcap.com/currencies/lemond/	LEMD	$0.00
4897	Medicalveda	https://coinmarketcap.com/currencies/medicalveda/	MVEDA	$0.00
4898	Shibrobi	https://coinmarketcap.com/currencies/shibrobi/	SHIBORG	$0.00
4899	XMINE	https://coinmarketcap.com/currencies/xmine/	XMN	$0.00
4900	Shambala	https://coinmarketcap.com/currencies/shambala/	BALA	$0.000000007818
4901	Minato	https://coinmarketcap.com/currencies/minato/	MNTO	$12.34
4902	Honey	https://coinmarketcap.com/currencies/honey-hive-investments/	HNY	$24.10
4903	BR34P	https://coinmarketcap.com/currencies/br34p/	BR34P	$63.69
4904	GN	https://coinmarketcap.com/currencies/gn/	GN	$0.0000002203
4905	Hydranet	https://coinmarketcap.com/currencies/hydranet/	HDX	$0.00986
4906	LEVELG	https://coinmarketcap.com/currencies/levelg/	LEVELG	$0.03528
4907	Atlas DEX	https://coinmarketcap.com/currencies/atlas-dex/	ATS	$0.0697
4908	Megaweapon	https://coinmarketcap.com/currencies/megaweapon/	$WEAPON	$0.6594
4909	Dragon Mainland Shards	https://coinmarketcap.com/currencies/dragon-mainland-shards/	DMS	$0.0003626
4910	Crypto Inu	https://coinmarketcap.com/currencies/crypto-inu/	ABCD	$0.00
4911	Smart Wallet Token	https://coinmarketcap.com/currencies/smart-wallet-token/	SWT	$0.00
4912	PolyCub	https://coinmarketcap.com/currencies/polycub/	POLYCUB	$0.14
4913	Regen Network	https://coinmarketcap.com/currencies/regen-network/	REGEN	$0.20
4914	FC Sion Fan Token	https://coinmarketcap.com/currencies/fc-sion-fan-token/	SION	$0.02
4915	LIF3	https://coinmarketcap.com/currencies/lif3/	LIF3	$0.16
4916	Bali Coin	https://coinmarketcap.com/currencies/bali-coin/	BALI	$0.00
4917	XIDR	https://coinmarketcap.com/currencies/straitsx-indonesia-rupiah/	XIDR	$0.00
4918	X Doge	https://coinmarketcap.com/currencies/x-doge/	X	$0.00
4919	1x Short Bitcoin Token	https://coinmarketcap.com/currencies/1x-short-bitcoin-token/	HEDGE	$150.95
4920	тДУUSD	https://coinmarketcap.com/currencies/linear-finance/	LUSD	$1.16
4921	ftm.guru	https://coinmarketcap.com/currencies/elite-1337/	ELITE	$760.04
4922	Gravis Finance	https://coinmarketcap.com/currencies/gravis-finance/	GRVS	$0.02
4923	Grayscale Bitcoin Trust tokenized stock FTX	https://coinmarketcap.com/currencies/grayscale-bitcoin-trust-tokenized-stock-ftx/	GBTC	$12.23
4924	MuesliSwap MILK	https://coinmarketcap.com/currencies/muesliswap/	MILK	$0.96
4925	AAG Ventures	https://coinmarketcap.com/currencies/aag-ventures/	AAG	$0.01
4926	BOX	https://coinmarketcap.com/currencies/box/	BOX	$0.04
4927	WallStreetBets DApp	https://coinmarketcap.com/currencies/wallstreetbets-dapp/	WSB	$0.00
4928	Perpetuum	https://coinmarketcap.com/currencies/perpetuum/	PRP	$0.01
4929	Verasaw Plant Token	https://coinmarketcap.com/currencies/verasaw-plant-token/	VRS	$0.00
4930	Charlie Finance	https://coinmarketcap.com/currencies/charlie-finance/	CHT	$0.00
4931	Chikn Egg	https://coinmarketcap.com/currencies/chikn-egg/	EGG	$0.16
4932	The Crypto You	https://coinmarketcap.com/currencies/the-crypto-you/	MILK	$0.00
4933	Based Finance	https://coinmarketcap.com/currencies/based-finance/	BASED	$0.03
4934	BighBull	https://coinmarketcap.com/currencies/bighbull/	BIGB	$0.32
4935	World of Defish	https://coinmarketcap.com/currencies/world-of-defish/	WOD	$0.00
4936	OptionPanda	https://coinmarketcap.com/currencies/option-panda/	OPA	$0.00
4937	KOLO Market	https://coinmarketcap.com/currencies/kolo-market/	KOLO	$0.12
4938	Phaeton	https://coinmarketcap.com/currencies/phaeton/	PHAE	$0.04
4939	Nest Arcade	https://coinmarketcap.com/currencies/nest-arcade/	NESTA	$0.00
4940	Banana	https://coinmarketcap.com/currencies/banana-cyberkongz/	BANANA	$0.87
4941	Huny	https://coinmarketcap.com/currencies/huny/	HUNY	$0.02
4942	Picipo	https://coinmarketcap.com/currencies/picipo/	PICIPO	$0.00
4943	Cryptoindex.com 100	https://coinmarketcap.com/currencies/cryptoindex-com-100/	CIX100	$0.05
4944	Metan Evolutions	https://coinmarketcap.com/currencies/metan-evolutions/	METAN	$0.01
4945	MiamiCoin	https://coinmarketcap.com/currencies/miamicoin/	MIA	$0.00
4946	Gods and Legends	https://coinmarketcap.com/currencies/gods-and-legends/	GNLR	$0.00
4947	Cope	https://coinmarketcap.com/currencies/cope/	COPE	$0.06
4948	MsgSender	https://coinmarketcap.com/currencies/msgsender/	MSG	$0.10
4949	Charli3	https://coinmarketcap.com/currencies/charli3/	C3	$0.11
4950	Palantir Tokenized Stock Defichain	https://coinmarketcap.com/currencies/palantir-tokenized-stock-defichain/	DPLTR	$6.35
4951	Kingdom Coin	https://coinmarketcap.com/currencies/kingdom-coin-/	KDC	$0.00
4952	Project Quantum	https://coinmarketcap.com/currencies/project-quantum/	QBIT	$0.00
4953	Sanji Inu	https://coinmarketcap.com/currencies/sanji-inu/	SANJI	$0.00
4954	ETH Fan Token Ecosystem	https://coinmarketcap.com/currencies/eth-fan-token/	EFT	$0.00
4955	UNIUM	https://coinmarketcap.com/currencies/unium/	UNM	$94.14
4956	T├╝rkiye Motosiklet Federasyonu Fan Token	https://coinmarketcap.com/currencies/turkiye-motosiklet-federasyonu-fan-token/	TMFT	$0.01
4957	Duet Protocol	https://coinmarketcap.com/currencies/duet-protocol/	DUET	$0.03
4958	Rollbit Coin	https://coinmarketcap.com/currencies/rollbit-coin/	RLB	$0.00
4959	Instrumental Finance	https://coinmarketcap.com/currencies/instrumental-finance/	STRM	$0.03
4960	DoragonLand	https://coinmarketcap.com/currencies/doragonland/	DOR	$0.00
4961	HunnyDAO	https://coinmarketcap.com/currencies/hunnydao/	LOVE	$0.05
4962	Moonlight Token	https://coinmarketcap.com/currencies/moonlight-token/	MOONLIGHT	$0.00
4963	Enhance	https://coinmarketcap.com/currencies/enhancetoken/	ENH	$0.00
4964	Project X Finance	https://coinmarketcap.com/currencies/project-x-nodes/	PXT	$0.27
4965	LUNA DOGE TOKEN	https://coinmarketcap.com/currencies/luna-doge-token/	LDT	$0.00
4966	CouponBay	https://coinmarketcap.com/currencies/couponbay/	CUP	$0.00
4967	GrimaceCoinCrypto	https://coinmarketcap.com/currencies/grimace-net/	GRIMACE	$0.43
4968	Comb Finance	https://coinmarketcap.com/currencies/comb-finance/	COMB	$9.33
4969	Cultiplan(CTPL)	https://coinmarketcap.com/currencies/cultiplan/	CTPL	$0.00
4970	CronosNode	https://coinmarketcap.com/currencies/cronosnode/	CRON	$1.45
4971	Soakmont	https://coinmarketcap.com/currencies/soakmont/	SKMT	$0.00
4972	Catapult	https://coinmarketcap.com/currencies/a2dao/	ATD	$0.13
4973	CareCoin	https://coinmarketcap.com/currencies/carecoin/	CARES	$0.00
4974	MetaSpets	https://coinmarketcap.com/currencies/metaspets/	MSP	$0.04
4975	KingSpeed	https://coinmarketcap.com/currencies/kingspeed/	KSC	$0.01
4976	Hippo Inu	https://coinmarketcap.com/currencies/hippo-inu/	HIPPO	$0.00
4977	TattooMoney	https://coinmarketcap.com/currencies/tattoomoney/	TAT2	$0.01
4978	xUSD Token	https://coinmarketcap.com/currencies/xusd-token/	XUSD	$1.19
4979	A4 Finance	https://coinmarketcap.com/currencies/a4/	A4	$0.03
4980	Asia Coin	https://coinmarketcap.com/currencies/asia-coin/	ASIA	$0.06
4981	UCX	https://coinmarketcap.com/currencies/utilies-cryptocurrency-exchange/	UCX	$0.33
4982	Stretch To Earn	https://coinmarketcap.com/currencies/stretch-to-earn/	STE	$1.22
4983	Metahero Universe (POW)	https://coinmarketcap.com/currencies/metahero-universe-pow/	POW	$0.02
4984	CURE Token	https://coinmarketcap.com/currencies/cure-token/	CURE	$0.00
4985	GemHUB	https://coinmarketcap.com/currencies/gemhub/	GHUB	$0.08
4986	Elon GOAT	https://coinmarketcap.com/currencies/elon-goat/	EGT	$0.00
4987	MAST	https://coinmarketcap.com/currencies/mast/	MAST	$25.47
4988	Vidiachange	https://coinmarketcap.com/currencies/vidiachange/	VIDA	$9.15
4989	governance ZIL	https://coinmarketcap.com/currencies/governance-zil/	GZIL	$11.40
4990	Adana Demirspor Token	https://coinmarketcap.com/currencies/adana-demirspor-token/	DEMIR	$8.24
4991	Swapz	https://coinmarketcap.com/currencies/swapz/	SWAPZ	$0.00
4992	Gyro	https://coinmarketcap.com/currencies/gyro/	GYRO	$6.71
4993	Vention	https://coinmarketcap.com/currencies/vention/	VENTION	$0.00
4994	Moonfarm Finance	https://coinmarketcap.com/currencies/moonfarm-finance/	MFO	$0.03
4995	Colizeum	https://coinmarketcap.com/currencies/colizeum/	ZEUM	$0.02
4996	Hintchain	https://coinmarketcap.com/currencies/hintchain/	HINT	$0.00
4997	3x Short Bitcoin SV Token	https://coinmarketcap.com/currencies/3x-short-bitcoin-sv-token/	BSVBEAR	$0.00
4998	VCGamers	https://coinmarketcap.com/currencies/vcgamers/	VCG	$0.03
4999	Luzion Protocol	https://coinmarketcap.com/currencies/luzion-protocol/	LZN	$0.30
5000	Chives Coin	https://coinmarketcap.com/currencies/chives-coin/	XCC	$0.001784
5001	NAOS Finance	https://coinmarketcap.com/currencies/naos-finance/	NAOS	$0.02904
5002	Kitsumon	https://coinmarketcap.com/currencies/kitsumon/	$KMC	$0.00008008
5003	Aavegotchi FOMO	https://coinmarketcap.com/currencies/aavegotchi-fomo/	FOMO	$0.01817
5004	Wenlambo	https://coinmarketcap.com/currencies/wenlambo/	WLBO	$0.0...02364
5005	SCARDust	https://coinmarketcap.com/currencies/scardust/	SCARD	$0.000000008974
5006	FreshCut Diamond	https://coinmarketcap.com/currencies/freshcut-diamond/	FCD	$0.03
5007	MilkshakeSwap	https://coinmarketcap.com/currencies/milkshakeswap-finance/	Milk	$0.355
5008	Governance OHM	https://coinmarketcap.com/currencies/governance-ohm/	GOHM	$2,420.92
5009	Metablackout	https://coinmarketcap.com/currencies/metablackout/	MBT	$0.001125
5010	Tethys	https://coinmarketcap.com/currencies/tethys/	TETHYS	$0.16
5011	WGMI	https://coinmarketcap.com/currencies/wgmi/	WGMI	$0.00
5012	Wrapped Near	https://coinmarketcap.com/currencies/wrapped-near/	WNEAR	$3.22
5013	DBX	https://coinmarketcap.com/currencies/dbx/	DBX	$0.00
5014	Poriverse	https://coinmarketcap.com/currencies/rigy/	RIGY	$0.00
5015	OTCBTC Token	https://coinmarketcap.com/currencies/otcbtc-token/	OTB	$0.00
5016	JPY Coin v1	https://coinmarketcap.com/currencies/jpycoin/	JPYC	$0.01
5017	Shakita Inu	https://coinmarketcap.com/currencies/shakita-inu/	SHAK	$0.00
5018	SwapX	https://coinmarketcap.com/currencies/swapx/	XWAP	$0.01
5019	Crosschain IOTX	https://coinmarketcap.com/currencies/crosschain-iotx/	CIOTX	$0.02
5020	TemplarDAO	https://coinmarketcap.com/currencies/templardao/	TEM	$1.15
5021	Speed Star SPEED	https://coinmarketcap.com/currencies/speed-star-speed/	SPEED	$0.00
5022	Rabbit Finance	https://coinmarketcap.com/currencies/rabbit-finance/	RABBIT	$0.00
5023	iinjaz	https://coinmarketcap.com/currencies/iinjaz/	IJZ	$0.01
5024	TRONbetDice	https://coinmarketcap.com/currencies/tronbetdice/	DICE	$0.02
5025	PANDAINU	https://coinmarketcap.com/currencies/pandainu/	PWT	$0.00
5026	ELONGATE	https://coinmarketcap.com/currencies/elongate/	ELONGATE	$0.00
5027	Monster Galaxy	https://coinmarketcap.com/currencies/monster-galaxy/	GGM	$0.02
5028	Brewlabs	https://coinmarketcap.com/currencies/brewlabs/	BREWLABS	$0.01
5029	SteakHut Finance	https://coinmarketcap.com/currencies/steakhut-finance/	STEAK	$0.08
5030	Star Wars Cat	https://coinmarketcap.com/currencies/star-wars-cat/	SWCAT	$0.00
5031	FomoETH	https://coinmarketcap.com/currencies/fomoeth/	FomoETH	$0.00
5032	Cannumo	https://coinmarketcap.com/currencies/cannumo/	CANU	$0.00
5033	Taxa Token	https://coinmarketcap.com/currencies/taxa-token/	TXT	$0.00
5034	Nahmii	https://coinmarketcap.com/currencies/nahmii/	NII	$0.00
5035	pETH18C	https://coinmarketcap.com/currencies/peth18c/	pETH18C	$1.44
5036	Buxcoin	https://coinmarketcap.com/currencies/buxcoin/	BUX	$0.00
5037	AquaGoat.Finance	https://coinmarketcap.com/currencies/aquagoat-finance-new/	AQUAGOAT	$0.00
5038	Galaxy Essential	https://coinmarketcap.com/currencies/galaxy-essential/	GXE	$0.01
5039	Blin Metaverse	https://coinmarketcap.com/currencies/blin-metaverse/	BLIN	$0.01
5040	EXMR FDN	https://coinmarketcap.com/currencies/exmr-fdn/	EXMR	$0.00
5041	MatrixETF	https://coinmarketcap.com/currencies/matrixetf/	MDF	$0.00
5042	Avocado	https://coinmarketcap.com/currencies/avocado/	AVO	$0.00
5043	Ankr Reward Bearing Staked BNB	https://coinmarketcap.com/currencies/ankr-reward-bearing-staked-bnb/	aBNBc	$218.35
5044	PACT community token	https://coinmarketcap.com/currencies/pact-community-token/	PACT	$0.00
5045	Draken	https://coinmarketcap.com/currencies/draken/	DRK	$0.00
5046	Cia Protocol	https://coinmarketcap.com/currencies/cia-protocol/	CIA	$0.00
5047	Ghost Trader	https://coinmarketcap.com/currencies/ghost-trader/	GTR	$0.02
5048	Liquidity Accelerator Token	https://coinmarketcap.com/currencies/liquidity-accelerator-token/	LAT	$1.72
5049	The Parallel	https://coinmarketcap.com/currencies/the-parallel/	PRL	$0.02
5050	Spice Trade	https://coinmarketcap.com/currencies/spice-trade/	SPICE	$0.03
5051	HiFi Gaming Society	https://coinmarketcap.com/currencies/hifi-gaming-society/	HIFI	$0.00
5052	Materium	https://coinmarketcap.com/currencies/materium/	MTRM	$0.16
5053	DAOLaunch	https://coinmarketcap.com/currencies/daolaunch/	DAL	$0.44
5054	Ki	https://coinmarketcap.com/currencies/ki-foundation/	XKI	$0.07
5055	Gooeys	https://coinmarketcap.com/currencies/gooeys/	GOO	$0.00
5056	Euro Shiba Inu	https://coinmarketcap.com/currencies/euro-shiba-inu/	EShib	$0.00
5057	Alibaba tokenized stock FTX	https://coinmarketcap.com/currencies/alibaba-tokenized-stock-ftx/	BABA	$115.15
5058	Peoplez	https://coinmarketcap.com/currencies/peoplez/	LEZ	$0.02
5059	Shido	https://coinmarketcap.com/currencies/shido-inu/	SHIDO	$0.00
5060	Frapped USDT	https://coinmarketcap.com/currencies/frapped-usdt/	fUSDT	$1.00
5061	Lina Network	https://coinmarketcap.com/currencies/lina-network/	LINA	$0.01
5062	MINDOL	https://coinmarketcap.com/currencies/mindol/	MIN	$0.03
5063	ENNO Cash	https://coinmarketcap.com/currencies/enno-cash/	ENNO	$0.47
5064	Facebook tokenized stock FTX	https://coinmarketcap.com/currencies/facebook-tokenized-stock-ftx/	FB	$163.00
5065	AlgoStake	https://coinmarketcap.com/currencies/algostake/	STKE	$0.00
5066	SoccerHub	https://coinmarketcap.com/currencies/soccerhub/	SCH	$0.00
5067	Shintama	https://coinmarketcap.com/currencies/shintama/	SHINTAMA	$0.00
5068	StrongNode Edge	https://coinmarketcap.com/currencies/strongnode-edge/	SNE	$0.00
5069	Hydraverse	https://coinmarketcap.com/currencies/hydraverse/	HDV	$0.00
5070	Starlink Inu	https://coinmarketcap.com/currencies/starlink-inu/	STARLNK	$0.00
5071	Sandwich Network	https://coinmarketcap.com/currencies/sandwich-network/	SANDWICH	$0.00
5072	Artex	https://coinmarketcap.com/currencies/artex/	ARTEX	$0.00
5073	Metapocket	https://coinmarketcap.com/currencies/metapocket/	METAPK	$2.24
5074	Million	https://coinmarketcap.com/currencies/million/	MM	$2.80
5075	MerchDAO	https://coinmarketcap.com/currencies/merchdao/	MRCH	$0.03
5076	Mixin	https://coinmarketcap.com/currencies/mixin/	XIN	$151.45
5077	3X Long Midcap Index Token	https://coinmarketcap.com/currencies/3x-long-midcap-index-token/	MIDBULL	$0.85
5078	Velhalla	https://coinmarketcap.com/currencies/velhalla/	SCAR	$0.00
5079	Tenshi	https://coinmarketcap.com/currencies/tenshi-new/	TENSHI	$0.00
5080	1irstGold	https://coinmarketcap.com/currencies/1irstgold/	1GOLD	$68.61
5081	Algebra	https://coinmarketcap.com/currencies/algebra/	ALGB	$0.01
5082	OpenStream World	https://coinmarketcap.com/currencies/openstream-world/	OSW	$0.01
5083	Noku	https://coinmarketcap.com/currencies/noku/	NOKU	$0.32
5084	R34P	https://coinmarketcap.com/currencies/r34p/	R34P	$57.80
5085	MetaUFO	https://coinmarketcap.com/currencies/metaufo/	METAUFO	$0.02
5086	NFTStyle	https://coinmarketcap.com/currencies/nftstyle/	NFTSTYLE	$0.00
5087	CyBloc Battery Token	https://coinmarketcap.com/currencies/cybloc-battery-token/	CBT	$0.00
5088	Infinite Metaverse Token	https://coinmarketcap.com/currencies/idle-mystic-token/	IMT	$0.05
5089	ALL.ART protocol	https://coinmarketcap.com/currencies/all-art-protocol/	AART	$0.00
5090	Proxy	https://coinmarketcap.com/currencies/proxy/	PRXY	$0.35
5091	Pizza Game	https://coinmarketcap.com/currencies/pizza-game/	PIZZA	$0.00
5092	Son of Shib	https://coinmarketcap.com/currencies/sonofshib/	SON	$0.00
5093	ParaState	https://coinmarketcap.com/currencies/parastate/	STATE	$0.03
5094	CheckDot	https://coinmarketcap.com/currencies/checkdot/	CDT	$0.02
5095	Worthwhile	https://coinmarketcap.com/currencies/worthwhile/	WHE	$0.01
5096	Viva Classic	https://coinmarketcap.com/currencies/viva-classic/	VIVA	$0.00
5097	Ape Fun Token	https://coinmarketcap.com/currencies/ape-fun-token/	AFT	$0.00
5098	ASIX+	https://coinmarketcap.com/currencies/asix/	ASIX+	$0.00
5099	ShibaSpaceToken	https://coinmarketcap.com/currencies/shibaspacetoken/	SST	$0.00
5100	ShibaSpaceToken	https://coinmarketcap.com/currencies/shibaspacetoken/	SST	$0.001437
5101	Bolide	https://coinmarketcap.com/currencies/bolide/	BLID	$0.02182
5102	Metaverse Exchange	https://coinmarketcap.com/currencies/metaverse-exchange/	METACEX	$0.0001275
5103	Kyber Network Crystal Legacy	https://coinmarketcap.com/currencies/kyber-network-crystal-legacy/	KNCL	$1.22
5104	HEADLINE	https://coinmarketcap.com/currencies/headline-inc/	HDL	$0.1327
5105	3x Long Tezos Token	https://coinmarketcap.com/currencies/3x-long-tezos-token/	XTZBULL	$0.00003635
5106	Muslim Coins	https://coinmarketcap.com/currencies/muslim-coins/	MUSC	$0.009391
5107	ASH	https://coinmarketcap.com/currencies/ash/	ASH	$1.24
5108	Himo World	https://coinmarketcap.com/currencies/himo-world/	HIMO	$0.0103
5109	Xtra Fund	https://coinmarketcap.com/currencies/xtra-fund/	XTRA	$0.001203
5110	The Reaper	https://coinmarketcap.com/currencies/the-reaper/	RPR	$0.02
5111	SpiderDAO	https://coinmarketcap.com/currencies/spiderdao/	SPDR	$0.00
5112	KLAYMETA	https://coinmarketcap.com/currencies/klaymeta/	META	$0.04
5113	Uberstate RIT 2.0	https://coinmarketcap.com/currencies/uberstate-inc/	RIT20	$0.00
5114	Ethereans	https://coinmarketcap.com/currencies/ethereans/	OS	$6.54
5115	Pollen Coin	https://coinmarketcap.com/currencies/pollen-coin/	PCN	$0.24
5116	PRISM Protocol	https://coinmarketcap.com/currencies/prism-protocol/	PRISM	$0.00
5117	TEN	https://coinmarketcap.com/currencies/ten/	TENFI	$0.01
5118	NftyPlay	https://coinmarketcap.com/currencies/nftyplay/	POLO	$0.00
5119	Charged Particles	https://coinmarketcap.com/currencies/charged-particles/	IONX	$0.03
5120	WOW-token	https://coinmarketcap.com/currencies/wow-token/	WOW	$0.28
5121	Flying Colours	https://coinmarketcap.com/currencies/flying-colours/	OURS	$3.48
5122	MetaFabric	https://coinmarketcap.com/currencies/metafabric/	FABRIC	$0.00
5123	Lottonation	https://coinmarketcap.com/currencies/lottonation/	LNT	$0.05
5124	Wolf Game Wool	https://coinmarketcap.com/currencies/wolf-game-wool/	WOOL	$0.02
5125	InfinityCake	https://coinmarketcap.com/currencies/infinitycake/	INCAKE	$0.00
5126	Shiba Fame	https://coinmarketcap.com/currencies/shiba-fame/	SHIBA FAME	$0.00
5127	Lydia Finance	https://coinmarketcap.com/currencies/lydia-finance/	LYD	$0.00
5128	DogeGF	https://coinmarketcap.com/currencies/dogegf/	DOGEGF	$0.00
5129	Simbcoin Swap	https://coinmarketcap.com/currencies/simbcoin-swap/	SMBSWAP	$0.01
5130	Puff	https://coinmarketcap.com/currencies/puff/	PUFF	$0.05
5131	Ape In Records	https://coinmarketcap.com/currencies/ape-in-records/	AIR	$0.00
5132	Winerz	https://coinmarketcap.com/currencies/winerz/	WNZ	$0.01
5133	Arabian Doge	https://coinmarketcap.com/currencies/arabian-doge/	$ADOGE	$0.00
5134	LESLARVERSE	https://coinmarketcap.com/currencies/leslarverse/	LLVERSE	$0.00
5135	Spantale	https://coinmarketcap.com/currencies/spantale/	AEL	$0.05
5136	Earthling	https://coinmarketcap.com/currencies/earthling/	ETLG	$0.00
5137	MemeNFT	https://coinmarketcap.com/currencies/memenft/	MNFT	$0.00
5138	Ari10	https://coinmarketcap.com/currencies/ari10/	ARI10	$0.01
5139	Smart Donation Coin	https://coinmarketcap.com/currencies/smart-donation/	SDC	$0.12
5140	Konstellation Network	https://coinmarketcap.com/currencies/konstellation-network/	DARC	$0.01
5141	Evoverse Power	https://coinmarketcap.com/currencies/evoverse-power/	EPW	$0.01
5142	StaySAFU	https://coinmarketcap.com/currencies/staysafu/	SAFU	$4.57
5143	Mars Ecosystem Token	https://coinmarketcap.com/currencies/mars-ecosystem-governance-token/	XMS	$0.00
5144	Behodler	https://coinmarketcap.com/currencies/beholder/	EYE	$0.10
5145	ALTER	https://coinmarketcap.com/currencies/alter/	ALTER	$0.11
5146	Cosmic Champs	https://coinmarketcap.com/currencies/cosmic-champs/	COSG	$0.08
5147	BOHR	https://coinmarketcap.com/currencies/bohr/	BR	$0.09
5148	HK Coin	https://coinmarketcap.com/currencies/hk-coin/	HKC	$0.13
5149	Aavegotchi KEK	https://coinmarketcap.com/currencies/aavegotchi-kek/	KEK	$0.07
5150	MetaverseMGL	https://coinmarketcap.com/currencies/metaversemgl/	MGLC	$0.01
5151	CortexDAO	https://coinmarketcap.com/currencies/cortexdao/	CXD	$0.02
5152	SmarterCoin (SMRTr)	https://coinmarketcap.com/currencies/smartcoin-farm-smrtr/	SMRTR	$0.00
5153	UBU	https://coinmarketcap.com/currencies/ubu/	UBU	$0.02
5154	Sakaryaspor Token	https://coinmarketcap.com/currencies/sakaryaspor-token/	SKRY	$0.93
5155	Drawshop Kingdom Reverse	https://coinmarketcap.com/currencies/drawshop-kingdom-reverse/	JOY	$0.03
5156	BabyDogeZilla	https://coinmarketcap.com/currencies/babydogezilla/	BABYDOGEZILLA	$0.00
5157	Xodex	https://coinmarketcap.com/currencies/xodex/	XODEX	$0.00
5158	Baby Doug	https://coinmarketcap.com/currencies/baby-doug/	BABYDOUG	$0.00
5159	Aavegotchi FUD	https://coinmarketcap.com/currencies/aavegotchi-fud/	FUD	$0.01
5160	GAMER	https://coinmarketcap.com/currencies/gamer/	GMR	$0.01
5161	Immutable	https://coinmarketcap.com/currencies/immutable/	DARA	$0.01
5162	PlatinX	https://coinmarketcap.com/currencies/platinx/	PTX	$0.04
5163	Tokenize Xchange	https://coinmarketcap.com/currencies/tokenize-xchange/	TKX	$3.30
5164	Multi-Chain Capital (new)	https://coinmarketcap.com/currencies/multi-chain-capital-new/	MCC	$0.00
5165	Affinity	https://coinmarketcap.com/currencies/safeaffinity/	AFFINITY	$0.00
5166	Citizen Finance V2	https://coinmarketcap.com/currencies/citizen-finance-v2/	CIFI	$0.05
5167	Kodi Coin	https://coinmarketcap.com/currencies/kodicoin/	KODI	$0.00
5168	DeFinity	https://coinmarketcap.com/currencies/definity/	DEFX	$0.01
5169	Metavice	https://coinmarketcap.com/currencies/metavice/	SERVE	$0.00
5170	Uplift	https://coinmarketcap.com/currencies/uplift/	LIFT	$0.04
5171	TruBadger	https://coinmarketcap.com/currencies/trubadger/	TRUBGR	$0.00
5172	Vader Protocol	https://coinmarketcap.com/currencies/vader-protocol/	VADER	$0.00
5173	Hesman Shard	https://coinmarketcap.com/currencies/hesman-legend/	HES	$0.01
5174	MetaTariff	https://coinmarketcap.com/currencies/metatariff/	RIFF	$0.01
5175	Boba Brewery	https://coinmarketcap.com/currencies/boba-brewery/	BRE	$0.00
5176	ELYFI	https://coinmarketcap.com/currencies/elyfi/	ELFI	$0.02
5177	Alpha Coin	https://coinmarketcap.com/currencies/alpha/	ALPHA	$0.01
5178	HarmonyPad	https://coinmarketcap.com/currencies/harmonypad/	HPAD	$0.00
5179	Transaction Service fee	https://coinmarketcap.com/currencies/transaction-service-fee/	TSF	$0.06
5180	Digichain	https://coinmarketcap.com/currencies/digichain/	DIGICHAIN	$0.00
5181	ELEF  WORLD	https://coinmarketcap.com/currencies/elef--world/	ELEF	$0.00
5182	KlayFi Finance	https://coinmarketcap.com/currencies/klayfi-finance/	KFI	$0.00
5183	Creature Hunters	https://coinmarketcap.com/currencies/creature-hunters/	CHTS	$0.05
5184	Pantos	https://coinmarketcap.com/currencies/pantos/	PAN	$0.05
5185	cCOMP	https://coinmarketcap.com/currencies/ccomp/	CCOMP	$1.00
5186	Farmland Protocol	https://coinmarketcap.com/currencies/farmland-protocol/	FAR	$0.01
5187	Satozhi	https://coinmarketcap.com/currencies/satozhi/	SATOZ	$0.03
5188	SwapTracker	https://coinmarketcap.com/currencies/swaptracker/	SWPT	$0.00
5189	Pando Token	https://coinmarketcap.com/currencies/pando-token/	PTX	$0.03
5190	All Coins Yield Capital	https://coinmarketcap.com/currencies/all-coins-yield-capital/	ACYC	$0.00
5191	Liquid Collectibles	https://coinmarketcap.com/currencies/liquid-collectibles/	LICO	$0.01
5192	NBG Finance	https://coinmarketcap.com/currencies/ninebot/	NBG	$0.15
5193	Artwork NFT	https://coinmarketcap.com/currencies/artwork-nft/	ANFT	$0.00
5194	Polymesh	https://coinmarketcap.com/currencies/polymesh/	POLYX	$0.13
5195	Portify	https://coinmarketcap.com/currencies/portify/	PFY	$0.00
5196	Kalissa V2	https://coinmarketcap.com/currencies/kalissa-v2/	KALI	$0.02
5197	Aavegotchi ALPHA	https://coinmarketcap.com/currencies/aavegotchi-alpha/	ALPHA	$0.03
5198	Effort Economy	https://coinmarketcap.com/currencies/effort-economy/	EFFORT	$0.02
5199	Dentrocoin	https://coinmarketcap.com/currencies/dentrocoin/	DENTRO	$0.00
5200	Mercor Finance	https://coinmarketcap.com/currencies/mercor-finance/	MRCR	$0.001843
5201	Dentrocoin	https://coinmarketcap.com/currencies/dentrocoin/	DENTRO	$0.0000002298
5202	3X Long BNB Token	https://coinmarketcap.com/currencies/3x-long-bnb-token/	BNBBULL	$10.22
5203	MyBricks	https://coinmarketcap.com/currencies/mybricks/	$BRICKS	$0.002116
5204	Burn To Earn	https://coinmarketcap.com/currencies/burn-to-earn/	BTE	$0.00000007408
5205	Kanga Exchange Token	https://coinmarketcap.com/currencies/kanga-exchange-token/	KNG	$1.05
5206	Stater	https://coinmarketcap.com/currencies/stater/	STR	$0.00536
5207	CORN	https://coinmarketcap.com/currencies/corn/	CORN	$13.06
5208	CreDA	https://coinmarketcap.com/currencies/creda/	CREDA	$0.3258
5209	Ftribe Fighters (F2 NFT)	https://coinmarketcap.com/currencies/ftribe-fighters/	F2C	$0.004906
5210	TabTrader Token	https://coinmarketcap.com/currencies/tabtrader-token/	TTT	$0.03
5211	Community Business Token	https://coinmarketcap.com/currencies/community-business-token/	CBT	$0.00
5212	MODA DAO	https://coinmarketcap.com/currencies/moda-dao/	MODA	$0.46
5213	VoltSwap	https://coinmarketcap.com/currencies/voltswap/	VOLT	$0.02
5214	Game Fantasy Token	https://coinmarketcap.com/currencies/game-fantasy-token/	GFT	$0.57
5215	Goldex Token	https://coinmarketcap.com/currencies/goldex-token/	GLDX	$0.12
5216	BOBAMASK	https://coinmarketcap.com/currencies/bobatama/	BOBA	$0.00
5217	Green Life Energy	https://coinmarketcap.com/currencies/green-life-energy-token/	GLE	$0.02
5218	PUBLISH	https://coinmarketcap.com/currencies/publish/	NEWS	$0.02
5219	LOA Protocol	https://coinmarketcap.com/currencies/loa-protocol/	LOA	$0.00
5220	Speed Star JOC	https://coinmarketcap.com/currencies/speed-star-joc/	JOC	$0.00
5221	Bolt Share	https://coinmarketcap.com/currencies/bat-true-share/	BTS	$2.31
5222	Web3 Inu	https://coinmarketcap.com/currencies/web3-inu/	WEB3	$0.00
5223	Swinca	https://coinmarketcap.com/currencies/swinca/	SWI	$0.00
5224	Kronos DAO	https://coinmarketcap.com/currencies/kronos-dao/	KRNO	$2.09
5225	KittenFinance	https://coinmarketcap.com/currencies/kittenfinance/	KIF	$16.47
5226	Voice Street	https://coinmarketcap.com/currencies/voice-street/	VST	$0.05
5227	PulseDoge	https://coinmarketcap.com/currencies/pulsedoge/	PULSEDOGE	$0.00
5228	Streamer Inu	https://coinmarketcap.com/currencies/streamer-inu/	STREAMERINU	$0.00
5229	Vegasino	https://coinmarketcap.com/currencies/vegasino/	VEGAS	$0.00
5230	Vulcano	https://coinmarketcap.com/currencies/vulcano/	VULC	$0.02
5231	BNPL Pay	https://coinmarketcap.com/currencies/bnpl-pay/	BNPL	$0.01
5232	UXD Protocol	https://coinmarketcap.com/currencies/uxd-protocol/	UXP	$0.04
5233	Moss Governance Token	https://coinmarketcap.com/currencies/moss-governance-token/	MOSS	$0.44
5234	BerylBit	https://coinmarketcap.com/currencies/berylbit/	BRB	$0.00
5235	ByteEx	https://coinmarketcap.com/currencies/byteex/	BX	$0.01
5236	HODL	https://coinmarketcap.com/currencies/hodl/	HODL	$0.00
5237	HappyFans	https://coinmarketcap.com/currencies/happy-fans/	HAPPY	$0.00
5238	TrustFi Network	https://coinmarketcap.com/currencies/trustfi-network/	TFI	$0.01
5239	Moonscape	https://coinmarketcap.com/currencies/moonscape/	MSCP	$0.00
5240	Community Vote Power	https://coinmarketcap.com/currencies/community-vote-power/	CVP	$0.13
5241	Launchpad TG DAO 3.0	https://coinmarketcap.com/currencies/launchpad-tg-dao-3/	TGDAO	$0.00
5242	Gennix	https://coinmarketcap.com/currencies/gennix/	GNNX	$0.01
5243	Eska	https://coinmarketcap.com/currencies/eska/	ESK	$0.01
5244	Infomatix	https://coinmarketcap.com/currencies/informatix/	INFO	$0.00
5245	MetaCash	https://coinmarketcap.com/currencies/metacash/	META	$0.00
5246	DeepSpace Token	https://coinmarketcap.com/currencies/deepspace-token/	DXO	$0.00
5247	Triveum	https://coinmarketcap.com/currencies/triveum/	TRV	$0.00
5248	Surviving Soldiers	https://coinmarketcap.com/currencies/surviving-soldiers/	SSG	$0.04
5249	PlayNity	https://coinmarketcap.com/currencies/playnity/	PLY	$0.02
5250	CZodiac Stabletoken	https://coinmarketcap.com/currencies/czodiac-stabletoken/	CZUSD	$1.00
5251	Metria	https://coinmarketcap.com/currencies/metria/	METR	$11.18
5252	chikn feed	https://coinmarketcap.com/currencies/chikn-feed/	FEED	$0.00
5253	Bit Castle War	https://coinmarketcap.com/currencies/bit-castle-war/	BCW	$0.00
5254	CSR	https://coinmarketcap.com/currencies/csr/	CSR	$0.04
5255	Snook	https://coinmarketcap.com/currencies/snook/	SNK	$0.14
5256	Pika	https://coinmarketcap.com/currencies/pika/	PIKA	$0.00
5257	FRMx Token	https://coinmarketcap.com/currencies/frmx-token/	FRMX	$422.38
5258	Stabledoc	https://coinmarketcap.com/currencies/stabledoc/	SDT	$0.00
5259	Babylons	https://coinmarketcap.com/currencies/babylons/	BABI	$0.01
5260	FibSWAP DEx	https://coinmarketcap.com/currencies/fibswap-dex/	FIBO	$0.00
5261	HUH Token	https://coinmarketcap.com/currencies/huh/	HUH	$0.00
5262	BlackPearl Token	https://coinmarketcap.com/currencies/blackpearl-chain/	BPLC	$0.00
5263	Crypto Stake Token	https://coinmarketcap.com/currencies/crypto-stake-token/	CST	$0.01
5264	Koinos	https://coinmarketcap.com/currencies/koinos/	KOIN	$0.18
5265	SideKick Token	https://coinmarketcap.com/currencies/sidekick-token/	SK	$0.08
5266	HIPPO TOKEN	https://coinmarketcap.com/currencies/hippo-token/	HIP	$0.00
5267	Fire Protocol	https://coinmarketcap.com/currencies/fire-protocol/	FIRE	$0.01
5268	LordToken	https://coinmarketcap.com/currencies/lordtoken/	LTT	$0.01
5269	Crypto Perx	https://coinmarketcap.com/currencies/crypto-perx/	CPRX	$0.01
5270	basis.markets	https://coinmarketcap.com/currencies/basis-markets/	BASIS	$0.00
5271	Weave	https://coinmarketcap.com/currencies/weave/	WEAVE	$0.26
5272	Reimagined Finance	https://coinmarketcap.com/currencies/refi/	REFI	$0.01
5273	Forus	https://coinmarketcap.com/currencies/forus/	FORS	$0.00
5274	TrustKeys Network	https://coinmarketcap.com/currencies/trustkeys-network/	TRUSTK	$0.08
5275	Mimir Token	https://coinmarketcap.com/currencies/mimir-token/	MIMIR	$0.01
5276	X-HASH	https://coinmarketcap.com/currencies/x-hash/	XSH	$1.24
5277	Piccolo Inu	https://coinmarketcap.com/currencies/piccolo-inu/	PINU	$0.00
5278	DogemonGo	https://coinmarketcap.com/currencies/dogemon-go/	DOGO	$0.00
5279	Feisty Doge NFT	https://coinmarketcap.com/currencies/feisty-doge-nft/	NFD	$0.00
5280	Gamma	https://coinmarketcap.com/currencies/gamma-strategies/	GAMMA	$0.05
5281	Quantic	https://coinmarketcap.com/currencies/quantic/	QUANTIC	$0.00
5282	Beyond Meat tokenized stock FTX	https://coinmarketcap.com/currencies/beyond-meat-tokenized-stock-ftx/	BYND	$25.90
5283	Chikn Fert	https://coinmarketcap.com/currencies/chikn-fert/	FERT	$0.01
5284	DOLA	https://coinmarketcap.com/currencies/inverse-finance-dola-stablecoin/	DOLA	$0.99
5285	DragonBall Coin	https://coinmarketcap.com/currencies/dragonball-coin/	DBC	$0.00
5286	Degis	https://coinmarketcap.com/currencies/degis/	DEG	$0.06
5287	Nirvana prANA	https://coinmarketcap.com/currencies/nirvana-prana/	PRANA	$1.47
5288	3x Short Litecoin Token	https://coinmarketcap.com/currencies/3x-short-litecoin-token/	LTCBEAR	$0.00
5289	JD Coin	https://coinmarketcap.com/currencies/jd-coin/	JDC	$0.04
5290	Crypto Fight Club	https://coinmarketcap.com/currencies/crypto-fight-club/	FIGHT	$0.00
5291	100 Days Ventures	https://coinmarketcap.com/currencies/100-days-ventures/	ASTRO	$0.00
5292	Adalend	https://coinmarketcap.com/currencies/adalend/	ADAL	$0.06
5293	Aidi Finance (BSC)	https://coinmarketcap.com/currencies/aidi-finance-bsc/	AIDI	$0.00
5294	SYA x Flooz	https://coinmarketcap.com/currencies/save-your-assets/	SYA	$0.00
5295	BabyDoge ETH	https://coinmarketcap.com/currencies/babydoge-coin/	BABYDOGE	$0.00
5296	Kronos Dao	https://coinmarketcap.com/currencies/kronosdao/	KRONOS	$0.00
5297	CasperPad	https://coinmarketcap.com/currencies/casperpad/	CSPD	$0.00
5298	WeGro	https://coinmarketcap.com/currencies/wegro-coin/	WEGRO	$0.00
5299	Graphene	https://coinmarketcap.com/currencies/graphene/	GFN	$0.01
5300	Based Token	https://coinmarketcap.com/currencies/based-token/	BDC	$0.00001663
5301	Alchemix USD	https://coinmarketcap.com/currencies/alchemix-usd/	ALUSD	$0.9864
5302	Shuna Inuverse	https://coinmarketcap.com/currencies/shuna-inuverse/	SHUNAV2	$0.00000001272
5303	Magic Metaverse	https://coinmarketcap.com/currencies/magic-metaverse/	MAC	$0.01329
5304	GuitarSwap	https://coinmarketcap.com/currencies/guitarswap/	GUT	$0.00003671
5305	HeroBook	https://coinmarketcap.com/currencies/herobook/	HBG	$0.03346
5306	IFToken	https://coinmarketcap.com/currencies/iftoken/	IFT	$0.0004519
5307	SafeLaunch	https://coinmarketcap.com/currencies/safelaunch/	SFEX	$0.1246
5308	MonoMoney	https://coinmarketcap.com/currencies/monomoney/	MONO	$0.01404
5309	Only Gems Finance	https://coinmarketcap.com/currencies/only-gems-finance/	OGEM	$0.000003177
5310	Metamall	https://coinmarketcap.com/currencies/metamall/	MALL	$0.00
5311	Adanaspor Fan Token	https://coinmarketcap.com/currencies/adanaspor-fan-token/	ADANA	$0.12
5312	Pocket	https://coinmarketcap.com/currencies/pocket-doge/	PCKT	$0.00
5313	Penrose Finance	https://coinmarketcap.com/currencies/penrose-finance/	PEN	$0.01
5314	Firebird Finance	https://coinmarketcap.com/currencies/firebird-finance/	HOPE	$0.00
5315	EHash	https://coinmarketcap.com/currencies/ehash/	EHASH	$0.03
5316	Aloha	https://coinmarketcap.com/currencies/aloha/	ALOHA	$0.00
5317	Rising Sun	https://coinmarketcap.com/currencies/rising-sun/	SUN	$0.00
5318	MarsColony	https://coinmarketcap.com/currencies/marscolony/	CLNY	$0.03
5319	NewB.Farm	https://coinmarketcap.com/currencies/newb-farm/	NEWB	$6.56
5320	reBaked	https://coinmarketcap.com/currencies/rebaked/	BAKED	$0.00
5321	Konnect	https://coinmarketcap.com/currencies/konnect/	KCT	$0.05
5322	Marinade	https://coinmarketcap.com/currencies/mnde/	MNDE	$0.07
5323	ProjectOasis	https://coinmarketcap.com/currencies/projectoasis/	OASIS	$0.10
5324	Memecoin	https://coinmarketcap.com/currencies/meme-coin/	MEM	$0.03
5325	Synapse Network	https://coinmarketcap.com/currencies/synapse-network/	SNP	$0.02
5326	ITAM Games	https://coinmarketcap.com/currencies/itam-games/	ITAM	$0.02
5327	Mover	https://coinmarketcap.com/currencies/mover/	MOVE	$0.17
5328	Favor	https://coinmarketcap.com/currencies/favor/	FAVOR	$0.14
5329	One World	https://coinmarketcap.com/currencies/one-world/	OWO	$0.01
5330	linSpirit	https://coinmarketcap.com/currencies/linspirit/	LINSPIRIT	$0.01
5331	3X Long TRX Token	https://coinmarketcap.com/currencies/3x-long-trx-token/	TRXBULL	$0.02
5332	MetaDog Racing	https://coinmarketcap.com/currencies/metadog-racing/	DOG$	$0.00
5333	Matrix Token	https://coinmarketcap.com/currencies/matrix-token/	MTIX	$0.00
5334	Pokmonsters	https://coinmarketcap.com/currencies/pokmonsters/	POK	$0.00
5335	CharityDAO	https://coinmarketcap.com/currencies/charitydao/	CHD	$0.06
5336	GaStream	https://coinmarketcap.com/currencies/gastream/	GSTRM	$0.00
5337	ORIGYN Foundation	https://coinmarketcap.com/currencies/origyn-foundation/	OGY	$0.03
5338	Jurassic Crypto	https://coinmarketcap.com/currencies/jurassic-crypto/	JRSC	$0.02
5339	Aidi Finance	https://coinmarketcap.com/currencies/aidi-finance/	AIDI	$0.00
5340	Phuture	https://coinmarketcap.com/currencies/phuture/	PHTR	$0.03
5341	Bankless BED Index	https://coinmarketcap.com/currencies/bankless-bed-index/	BED	$44.02
5342	SquidGameToken	https://coinmarketcap.com/currencies/squidgametoken/	SGT	$0.00
5343	Panther Protocol	https://coinmarketcap.com/currencies/panther-protocol/	ZKP	$0.06
5344	Sanshu Inu	https://coinmarketcap.com/currencies/sanshu-inu/	SANSHU	$0.00
5345	Cherry Token	https://coinmarketcap.com/currencies/cherry-token/	YT	$0.26
5346	Dragon Crypto Aurum	https://coinmarketcap.com/currencies/dragon-crypto-aurum/	DCAU	$9.26
5347	Notional Finance	https://coinmarketcap.com/currencies/notional-finance/	NOTE	$0.29
5348	Coinary Token	https://coinmarketcap.com/currencies/coinary-token/	CYT	$0.00
5349	Helena Financial	https://coinmarketcap.com/currencies/helena-financial/	HELENA	$0.67
5350	MELI	https://coinmarketcap.com/currencies/meli-games/	MELI	$0.00
5351	Fatih Karag├╝mr├╝k SK Fan Token	https://coinmarketcap.com/currencies/fatih-karagumruk-sk-fan-token/	FKSK	$0.01
5352	MyKingdom	https://coinmarketcap.com/currencies/mykingdom/	MYK	$0.03
5353	Billibilli Inc tokenized stock FTX	https://coinmarketcap.com/currencies/billibilli-inc-tokenized-stock-ftx/	BILI	$26.73
5354	BLACK SHIBA INU	https://coinmarketcap.com/currencies/black-shiba-inu/	SHIBB	$0.00
5355	BALI TOKEN	https://coinmarketcap.com/currencies/bali-token/	BLI	$0.00
5356	DragonMaster	https://coinmarketcap.com/currencies/dragonmaster/	TOTEM	$0.01
5357	Meta World Game	https://coinmarketcap.com/currencies/meta-world-game/	MTW	$0.00
5358	Fantom USD	https://coinmarketcap.com/currencies/fantom-usd/	FUSD	$0.53
5359	Rainbow Token	https://coinmarketcap.com/currencies/rainbowtoken/	RBW	$0.14
5360	MetaSoccer	https://coinmarketcap.com/currencies/metasoccer/	MSU	$0.08
5361	BookShib	https://coinmarketcap.com/currencies/bookshib/	BOOKSHIB	$0.00
5362	Bribe Protocol	https://coinmarketcap.com/currencies/bribe-protocol/	BRIBE	$0.05
5363	PayBolt	https://coinmarketcap.com/currencies/paybolt/	PAY	$0.00
5364	Hololoot	https://coinmarketcap.com/currencies/hololoot/	HOL	$0.03
5365	Meta Rewards Token	https://coinmarketcap.com/currencies/meta-rewards-token/	MRT	$0.00
5366	GOGO.finance	https://coinmarketcap.com/currencies/gogo-finance/	GOGO	$6.16
5367	Energyfi	https://coinmarketcap.com/currencies/energyfi/	EFT	$0.00
5368	FANC	https://coinmarketcap.com/currencies/fanc/	FANC	$1.99
5369	FrogSwap	https://coinmarketcap.com/currencies/frogswap/	FROG	$0.12
5370	iDeFiYieldProtocol	https://coinmarketcap.com/currencies/idefiyieldprotocol/	IDYP	$0.00
5371	Structure finance	https://coinmarketcap.com/currencies/structure-finance/	STF	$0.01
5372	Polkaswap	https://coinmarketcap.com/currencies/polkaswap/	PSWAP	$0.00
5373	Cylum Finance	https://coinmarketcap.com/currencies/cylum-finance/	CYM	$0.01
5374	CoinMooner	https://coinmarketcap.com/currencies/coinmooner/	MOONER	$0.00
5375	Crypto Raiders	https://coinmarketcap.com/currencies/crypto-raider/	RAIDER	$0.19
5376	Akoin	https://coinmarketcap.com/currencies/akoin/	AKN	$0.02
5377	SportsIcon	https://coinmarketcap.com/currencies/sportsicon/	ICONS	$0.06
5378	AutoCrypto	https://coinmarketcap.com/currencies/autocrypto/	AU	$0.02
5379	DekBox	https://coinmarketcap.com/currencies/dekbox/	DEK	$0.00
5380	NKCL Classic	https://coinmarketcap.com/currencies/nkcl-classic/	NKCLC	$5.69
5381	Doctors Coin	https://coinmarketcap.com/currencies/doctors-coin/	DRS	$0.00
5382	UniDex	https://coinmarketcap.com/currencies/unidex/	UNIDX	$0.52
5383	Alien Wars Gold	https://coinmarketcap.com/currencies/alien-wars-gold/	AWG	$0.01
5384	OLOID	https://coinmarketcap.com/currencies/oloid/	OLOID	$0.01
5385	Lever Token	https://coinmarketcap.com/currencies/lever-token/	LEV	$0.01
5386	CoShi Inu	https://coinmarketcap.com/currencies/coshi-inu/	COSHI	$0.00
5387	Momo Protocol	https://coinmarketcap.com/currencies/momo-protocol/	MOMO	$0.00
5388	3X Long DeFi Index Token	https://coinmarketcap.com/currencies/3x-long-defi-index-token/	DEFIBULL	$0.02
5389	DisciplesDAO	https://coinmarketcap.com/currencies/disciplesdao/	DCT	$0.00
5390	DoKEN	https://coinmarketcap.com/currencies/doken/	DOKEN	$0.00
5391	BitSong	https://coinmarketcap.com/currencies/bitsong/	BTSG	$0.01
5392	Bal─▒kesirspor Token	https://coinmarketcap.com/currencies/balikesirspor-token/	BLKS	$1.15
5393	Mars Doge	https://coinmarketcap.com/currencies/mars-doge/	MARSDOGE	$0.00
5394	DEGEN Index	https://coinmarketcap.com/currencies/degen-index/	DEGEN	$0.94
5395	IDM Token	https://coinmarketcap.com/currencies/idm-token/	IDM	$0.00
5396	Diamond DND	https://coinmarketcap.com/currencies/diamond-dnd/	DND	$0.00
5397	Ripae AVAX	https://coinmarketcap.com/currencies/ripae-avax/	PAVAX	$9.55
5398	DeFIL	https://coinmarketcap.com/currencies/defil/	DFL	$0.01
5399	Dog Collar	https://coinmarketcap.com/currencies/dog-collar/	COLLAR	$0.00
5400	Ripae AVAX	https://coinmarketcap.com/currencies/ripae-avax/	PAVAX	$9.56
5401	Diamond DND	https://coinmarketcap.com/currencies/diamond-dnd/	DND	$0.000008954
5402	DeFIL	https://coinmarketcap.com/currencies/defil/	DFL	$0.005584
5403	Dog Collar	https://coinmarketcap.com/currencies/dog-collar/	COLLAR	$0.000000002891
5404	Diamond Love	https://coinmarketcap.com/currencies/diamond-love/	LOVE	$0.0000005295
5405	PooCoin	https://coinmarketcap.com/currencies/poocoin/	POOCOIN	$0.216
5406	Rolaz Gold	https://coinmarketcap.com/currencies/rolaz-gold/	rGLD	$0.2056
5407	Dogira	https://coinmarketcap.com/currencies/dogira-new/	DOGIRA	$0.001096
5408	NoLimitCoin	https://coinmarketcap.com/currencies/nolimitcoin/	NLC	$0.0007389
5409	Hibiki Finance	https://coinmarketcap.com/currencies/hibiki-finance/	HIBIKI	$0.05664
5410	Trodl	https://coinmarketcap.com/currencies/trodl/	TRO	$0.00
5411	JEDSTAR	https://coinmarketcap.com/currencies/jedstar/	JED	$0.03
5412	Nimbus Governance Token	https://coinmarketcap.com/currencies/nimbus-governance-token/	GNBU	$0.04
5413	Choice Coin	https://coinmarketcap.com/currencies/choice-coin/	CHOICE	$0.00
5414	Wrapped Elastos	https://coinmarketcap.com/currencies/wrapped-elastos/	WELA	$1.36
5415	Broovs Projects	https://coinmarketcap.com/currencies/broovs-projects/	BRS	$0.00
5416	AstroElon	https://coinmarketcap.com/currencies/astroelon/	ELONONE	$0.00
5417	Keys Token	https://coinmarketcap.com/currencies/keys-token/	KEYS	$0.01
5418	Gem Pad	https://coinmarketcap.com/currencies/gem/	GEMS	$0.00
5419	Metaverse Miner	https://coinmarketcap.com/currencies/metaverse-miner/	META	$0.02
5420	ImmortalDAO Finance	https://coinmarketcap.com/currencies/immortaldao-finance/	IMMO	$3.57
5421	CryptoSaga	https://coinmarketcap.com/currencies/cryptosaga/	SAGA	$0.02
5422	GADGETWAR	https://coinmarketcap.com/currencies/gadgetwar/	GWAR	$0.00
5423	WEYU	https://coinmarketcap.com/currencies/weyu/	WEYU	$0.00
5424	Omni Consumer Protocols	https://coinmarketcap.com/currencies/omni-consumer-protocols/	OCP	$0.01
5425	CircleSwap	https://coinmarketcap.com/currencies/circleswap/	CIR	$0.11
5426	Euphoria	https://coinmarketcap.com/currencies/wagmi/	WAGMI	$1.93
5427	Voice Token	https://coinmarketcap.com/currencies/nix-bridge-token/	VOICE	$24.15
5428	OmniaVerse	https://coinmarketcap.com/currencies/omniaverse/	OMNIA	$0.00
5429	Oly Sport	https://coinmarketcap.com/currencies/oly-sport/	OLY	$0.01
5430	Poriverse	https://coinmarketcap.com/currencies/poriverse/	RIKEN	$0.00
5431	P2P Taxi Token	https://coinmarketcap.com/currencies/p2p-taxi-token/	P2PTXT	$0.00
5432	Pandora Spirit	https://coinmarketcap.com/currencies/pandora/	PSR	$3.60
5433	Alpha Kongs Club	https://coinmarketcap.com/currencies/alpha-kongs-club/	AKC	$0.02
5434	Trendsy	https://coinmarketcap.com/currencies/trendsy/	TRNDZ	$0.00
5435	Green Beli	https://coinmarketcap.com/currencies/green-beli/	GRBE	$0.00
5436	Rise of Defenders	https://coinmarketcap.com/currencies/rise-of-defenders/	RDR	$0.00
5437	Generous Robots DAO	https://coinmarketcap.com/currencies/generous-robots-dao/	GEAR	$0.04
5438	Quid Ika	https://coinmarketcap.com/currencies/quid-ika/	QUID	$0.00
5439	IZE	https://coinmarketcap.com/currencies/ize/	IZE	$0.01
5440	FastSwap	https://coinmarketcap.com/currencies/fastswap/	FAST	$0.00
5441	GameStop tokenized stock FTX	https://coinmarketcap.com/currencies/gamestop-tokenized-stock-ftx/	GME	$123.10
5442	EverEarn	https://coinmarketcap.com/currencies/everearn/	EARN	$0.00
5443	WOLF PUPS	https://coinmarketcap.com/currencies/wolf-pups-new/	WOLFIES	$0.00
5444	ISALCOIN	https://coinmarketcap.com/currencies/isalcoin/	ISAL	$0.00
5445	Renewable Energy	https://coinmarketcap.com/currencies/ret/	RET	$0.00
5446	Quidax Token	https://coinmarketcap.com/currencies/quidax/	QDX	$0.00
5447	MOVE Network	https://coinmarketcap.com/currencies/move-network/	MOVD	$0.00
5448	Age of Tanks	https://coinmarketcap.com/currencies/age-of-tanks/	A.O.T	$0.00
5449	Probably Nothing	https://coinmarketcap.com/currencies/probably-nothing-v2/	PRBLY	$0.01
5450	CronaSwap	https://coinmarketcap.com/currencies/cronaswap/	CRONA	$0.01
5451	RFOX Finance	https://coinmarketcap.com/currencies/rfox-finance/	VFOX	$0.15
5452	Apple tokenized stock FTX	https://coinmarketcap.com/currencies/apple-tokenized-stock-ftx/	AAPL	$138.82
5453	Wanaka Farm	https://coinmarketcap.com/currencies/wanaka-farm/	WANA	$0.03
5454	Polybius	https://coinmarketcap.com/currencies/polybius/	PLBT	$0.82
5455	SWAPP Protocol	https://coinmarketcap.com/currencies/swapp-protocol/	SWAPP	$0.00
5456	Unbound Dollar	https://coinmarketcap.com/currencies/unbound-dollar/	UND	$0.96
5457	Light DeFi	https://coinmarketcap.com/currencies/light-defi/	LIGHT	$0.00
5458	MEME KONG	https://coinmarketcap.com/currencies/meme-kong/	MKONG	$0.03
5459	TTcoin	https://coinmarketcap.com/currencies/ttcoin/	TC	$0.00
5460	HeroCatGamefi	https://coinmarketcap.com/currencies/herocatgamefi/	HCT	$0.01
5461	Cashera	https://coinmarketcap.com/currencies/cashera/	CSR	$0.00
5462	Operon Origins	https://coinmarketcap.com/currencies/operon-origins/	ORO	$0.01
5463	Lazy Horse Race Club	https://coinmarketcap.com/currencies/lazy-horse-race-club/	LHRC	$0.01
5464	Serum Ecosystem Token	https://coinmarketcap.com/currencies/serum-ecosystem-token/	SECO	$3.63
5465	AnonToken	https://coinmarketcap.com/currencies/anontoken-v2/	AT	$0.04
5466	Ultra Clear	https://coinmarketcap.com/currencies/ultra-clear/	UCR	$0.02
5467	VNDC	https://coinmarketcap.com/currencies/vndc/	VNDC	$0.00
5468	X ECOSYSTEM	https://coinmarketcap.com/currencies/x-ecosystem/	XECO	$0.00
5469	Bursaspor Fan Token	https://coinmarketcap.com/currencies/bursaspor-fan-token/	TMSH	$0.01
5470	GG TOKEN	https://coinmarketcap.com/currencies/gg-token/	GGTKN	$0.04
5471	JOJO	https://coinmarketcap.com/currencies/jojo/	JOJO	$0.00
5472	Shkreli Inu	https://coinmarketcap.com/currencies/shkreli-inu/	SHKI	$0.00
5473	Qube Crypto Space	https://coinmarketcap.com/currencies/qube-crypto-space/	QUBE	$0.00
5474	Darkness Share	https://coinmarketcap.com/currencies/darkness-share/	NESS	$0.02
5475	Agro Global	https://coinmarketcap.com/currencies/agro-global/	AGRO	$0.00
5476	B21 Invest	https://coinmarketcap.com/currencies/b21-invest/	B21	$0.01
5477	Afyonspor Fan Token	https://coinmarketcap.com/currencies/afyonspor-fan-token/	AFYON	$0.02
5478	Beefy Escrowed Fantom	https://coinmarketcap.com/currencies/beefy-escrowed-fantom/	BEFTM	$0.25
5479	IOEX	https://coinmarketcap.com/currencies/ioex/	IOEX	$0.00
5480	FiboDex	https://coinmarketcap.com/currencies/fibodex/	FIBO	$0.00
5481	PolkaEx	https://coinmarketcap.com/currencies/polkaex/	PKEX	$0.01
5482	WMT	https://coinmarketcap.com/currencies/wmt/	WMT	$0.00
5483	MultiPlanetary Inus	https://coinmarketcap.com/currencies/multiplanetary-inus/	INUS	$0.00
5484	SupremeX	https://coinmarketcap.com/currencies/supremex/	SXC	$0.01
5485	Polars	https://coinmarketcap.com/currencies/polars/	POL	$0.00
5486	DarkMatter	https://coinmarketcap.com/currencies/darkmatter-token/	DMT	$0.06
5487	FarmPoly	https://coinmarketcap.com/currencies/farmpoly/	POLY	$0.01
5488	Yield Yak	https://coinmarketcap.com/currencies/yield-yak/	YAK	$227.47
5489	Flourishing AI	https://coinmarketcap.com/currencies/flourishing-ai/	AI	$0.01
5490	XDoge Network	https://coinmarketcap.com/currencies/xdoge-network/	XDOGE	$0.00
5491	PODO	https://coinmarketcap.com/currencies/podo/	POD	$0.00
5492	PokerFI.Finance	https://coinmarketcap.com/currencies/pokerfi/	POKERFI	$0.00
5493	PIBBLE	https://coinmarketcap.com/currencies/pibble/	PIB	$0.00
5494	Gemlink	https://coinmarketcap.com/currencies/gemlink/	GLINK	$0.01
5495	Income Island Token	https://coinmarketcap.com/currencies/income-island-token/	INCOME	$0.00
5496	Space Token	https://coinmarketcap.com/currencies/space-token/	SPACE	$0.01
5497	Corgiswap	https://coinmarketcap.com/currencies/corgiswap/	CORIS	$0.01
5498	Bitcoin City Coin	https://coinmarketcap.com/currencies/bitcoin-city-coin/	BCITY	$0.00
5499	Green Shiba Inu (new)	https://coinmarketcap.com/currencies/green-shiba-inu-new/	GINUX	$0.00
5500	Dot Dot Finance	https://coinmarketcap.com/currencies/dot-dot-finance/	DDD	$0.002514
5501	Daily COP	https://coinmarketcap.com/currencies/daily-cop/	DLYCOP	$0.000002579
5502	Metakings	https://coinmarketcap.com/currencies/metakings/	MTK	$0.0004976
5503	Slam Token	https://coinmarketcap.com/currencies/slam-token-new/	SLAM	$0.206
5504	Fuse Dollar	https://coinmarketcap.com/currencies/fuse-dollar/	FUSD	$0.9971
5505	The Tokenized Bitcoin	https://coinmarketcap.com/currencies/the-tokenized-bitcoin/	imBTC	$18,986.48
5506	3x Long Bitcoin Cash Token	https://coinmarketcap.com/currencies/3x-long-bitcoin-cash-token/	BCHBULL	$0.000006258
5507	SavePlanetEarth	https://coinmarketcap.com/currencies/saveplanetearth/	SPE	$0.006171
5508	Moby Dick V2	https://coinmarketcap.com/currencies/moby-dick-new/	MOBY	$0.005271
5509	Boji	https://coinmarketcap.com/currencies/boji/	BOJI	$0.000000001663
5510	BlockBlend	https://coinmarketcap.com/currencies/blockblend/	BBL	$0.01
5511	Combo	https://coinmarketcap.com/currencies/combo/	COMB	$0.00
5512	Drunk Robots	https://coinmarketcap.com/currencies/drunk-robots/	METAL	$0.01
5513	MacaronSwap	https://coinmarketcap.com/currencies/macaronswap/	MCRN	$0.14
5514	Suteku	https://coinmarketcap.com/currencies/suteku/	SUTEKU	$0.00
5515	Invictus	https://coinmarketcap.com/currencies/invictus/	IN	$37.56
5516	UnitedCrowd	https://coinmarketcap.com/currencies/unitedcrowd/	UCT	$0.00
5517	BankSocial	https://coinmarketcap.com/currencies/banksocial/	BSL	$0.00
5518	NUDES	https://coinmarketcap.com/currencies/nudes/	NUDES	$0.00
5519	AlgoDAO	https://coinmarketcap.com/currencies/algodao/	ADAO	$0.70
5520	HeroVerse	https://coinmarketcap.com/currencies/heroverse/	HER	$0.00
5521	VRYNT	https://coinmarketcap.com/currencies/vrynt/	VRYNT	$0.00
5522	Nimbus	https://coinmarketcap.com/currencies/nimbus/	NBU	$0.00
5523	MetaBET	https://coinmarketcap.com/currencies/metabet/	MBET	$0.00
5524	Steam Exchange	https://coinmarketcap.com/currencies/steam-exchange/	STEAMX	$0.00
5525	Artemis Protocol	https://coinmarketcap.com/currencies/artemis-protocol/	MIS	$0.00
5526	Etherlite	https://coinmarketcap.com/currencies/etherlite/	ETL	$0.00
5527	PlaceWar	https://coinmarketcap.com/currencies/placewar-gear/	GEAR	$0.00
5528	Pikachu Inu	https://coinmarketcap.com/currencies/pikachu-inu/	PIKACHU	$0.00
5529	RadioLife	https://coinmarketcap.com/currencies/radiolife/	RDL	$0.00
5530	HUNNY FINANCE	https://coinmarketcap.com/currencies/pancake-hunny/	HUNNY	$0.00
5531	─░stanbul Wild Cats Fan Token	https://coinmarketcap.com/currencies/istanbul-wild-cats-fan-token/	IWFT	$0.00
5532	NextEarth	https://coinmarketcap.com/currencies/nextearth/	NXTT	$0.00
5533	EXIP	https://coinmarketcap.com/currencies/exip/	EXIP	$1.32
5534	OracleCapital	https://coinmarketcap.com/currencies/oraclecapital/	OC	$0.96
5535	Kounotori	https://coinmarketcap.com/currencies/kounotori/	KTO	$0.00
5536	ZenSports	https://coinmarketcap.com/currencies/zensports/	SPORTS	$0.00
5537	Investin	https://coinmarketcap.com/currencies/investin/	IVN	$0.13
5538	Saja	https://coinmarketcap.com/currencies/saja/	SJA	$0.00
5539	WOOP	https://coinmarketcap.com/currencies/woop/	WOOP	$0.07
5540	CryptoDrop	https://coinmarketcap.com/currencies/cryptodrop/	JUICE	$0.00
5541	Flare Token	https://coinmarketcap.com/currencies/flare-token/	1FLR	$0.00
5542	Alaya	https://coinmarketcap.com/currencies/alaya/	ATP	$0.05
5543	Metaderby Hoof	https://coinmarketcap.com/currencies/metaderby-hoof/	HOOF	$0.01
5544	Penguin Finance	https://coinmarketcap.com/currencies/penguin-finance/	PEFI	$0.03
5545	Don't KYC	https://coinmarketcap.com/currencies/dont-kyc/	DKYC	$0.00
5546	Decentralized Nations	https://coinmarketcap.com/currencies/decentralized-nations/	DENA	$0.63
5547	MStation	https://coinmarketcap.com/currencies/mstation/	MST	$0.01
5548	ScarySwap.Io	https://coinmarketcap.com/currencies/scaryswap/	SCARYSWAP	$0.00
5549	Zelda Inu	https://coinmarketcap.com/currencies/zelda-inu/	ZLDA	$0.01
5550	Doom Hero Dao	https://coinmarketcap.com/currencies/doom-hero-dao/	DHD	$0.05
5551	Community Token	https://coinmarketcap.com/currencies/community-token-comt/	COMT	$0.00
5552	Hunter Crypto Coin	https://coinmarketcap.com/currencies/hunter-crypto-coin/	HCC	$0.00
5553	Monstock	https://coinmarketcap.com/currencies/monstock/	MON	$0.00
5554	DiveWallet Token	https://coinmarketcap.com/currencies/divewallet-token/	DWT	$0.00
5555	1X Short BNB Token	https://coinmarketcap.com/currencies/1x-short-bnb-token/	BNBHEDGE	$10.30
5556	ZilSwap	https://coinmarketcap.com/currencies/zilswap/	ZWAP	$3.99
5557	International Blockchain Technology	https://coinmarketcap.com/currencies/international-blockchain-technology/	IBT	$0.65
5558	OneRing	https://coinmarketcap.com/currencies/onering/	RING	$0.04
5559	WOLVERINU	https://coinmarketcap.com/currencies/wolverinu/	WOLVERINU	$0.00
5560	BlackPool	https://coinmarketcap.com/currencies/blackpool/	BPT	$0.54
5561	GeroWallet	https://coinmarketcap.com/currencies/gerowallet/	GERO	$0.01
5562	LinkCoin Token	https://coinmarketcap.com/currencies/linkcoin-token/	LKN	$0.00
5563	OneSwap DAO Token	https://coinmarketcap.com/currencies/oneswap-dao-token/	ONES	$0.24
5564	Eco Value Coin	https://coinmarketcap.com/currencies/eco-value-coin/	EVC	$0.00
5565	WaultSwap Polygon	https://coinmarketcap.com/currencies/waultswap-polygon/	WEXPOLY	$0.00
5566	CHHIPSCOIN	https://coinmarketcap.com/currencies/chhipscoin/	CHH	$0.00
5567	Knights & Peasants	https://coinmarketcap.com/currencies/knights-peasants/	KNIGHT	$0.15
5568	Tiger shares	https://coinmarketcap.com/currencies/tiger-shares/	Tiger	$31.97
5569	Sukuna Inu	https://coinmarketcap.com/currencies/sukuna-inu/	SUKUNA	$0.00
5570	Zasset zUSD	https://coinmarketcap.com/currencies/zasset-zusd/	ZUSD	$1.04
5571	Crystl Finance	https://coinmarketcap.com/currencies/polycrystal-finance/	CRYSTL	$0.03
5572	Bitcashpay (new)	https://coinmarketcap.com/currencies/bitcashpay-new/	BCP	$0.00
5573	MetalSwap	https://coinmarketcap.com/currencies/metalswap/	XMT	$0.13
5574	MinerBlox	https://coinmarketcap.com/currencies/minerblox/	MBLOX	$0.01
5575	Solidly	https://coinmarketcap.com/currencies/solidly/	SOLID	$0.09
5576	Billionaire Plus	https://coinmarketcap.com/currencies/billionaire-plus/	BPLUS	$0.00
5577	Mouse Haunt Token	https://coinmarketcap.com/currencies/mouse-haunt-token/	MHT	$0.10
5578	Giveth	https://coinmarketcap.com/currencies/giveth/	GIV	$0.05
5579	Exchange Genesis Ethlas Medium	https://coinmarketcap.com/currencies/exchange-genesis-ethlas-medium/	XGEM	$0.00
5580	Mexican Peso Tether	https://coinmarketcap.com/currencies/tether-mxnt/	MXNT	$0.05
5581	KogeCoin.io	https://coinmarketcap.com/currencies/kogecoin/	KOGECOIN	$0.00
5582	MuesliSwap Yield Token	https://coinmarketcap.com/currencies/muesliswap-yield-token/	MYIELD	$0.01
5583	ASIMI	https://coinmarketcap.com/currencies/asimi/	ASIMI	$0.00
5584	TYCHE Lotto	https://coinmarketcap.com/currencies/tyche-lotto/	TYCHE	$0.00
5585	Vehicle Mining System	https://coinmarketcap.com/currencies/vehicle-mining-system/	VMS	$0.10
5586	Euler Tools	https://coinmarketcap.com/currencies/euler-tools/	EULER	$0.04
5587	Coin of champions	https://coinmarketcap.com/currencies/coin-of-champions/	COC	$0.00
5588	Flag Network	https://coinmarketcap.com/currencies/flag-network/	FLAG	$0.00
5589	BabyEthereum	https://coinmarketcap.com/currencies/babyethereum/	BBETH	$0.00
5590	MintySwap	https://coinmarketcap.com/currencies/mintyswap/	MINTYS	$0.00
5591	Rematic	https://coinmarketcap.com/currencies/rematic/	RMTX	$0.00
5592	Shibking Inu	https://coinmarketcap.com/currencies/shibking-inu/	SHIBKING	$0.00
5593	BrowniesSwap	https://coinmarketcap.com/currencies/browniesswap/	BROWN	$0.00
5594	FoodChain Global	https://coinmarketcap.com/currencies/foodchain-global/	FOOD	$0.08
5595	MCFinance	https://coinmarketcap.com/currencies/mcfinance/	MCF	$0.01
5596	TRONPAD	https://coinmarketcap.com/currencies/tronpad/	TRONPAD	$0.00
5597	The Flash Currency	https://coinmarketcap.com/currencies/flash-currency/	TFC	$0.00
5598	Evodefi	https://coinmarketcap.com/currencies/evodefi/	GENX	$0.02
5599	GambleFi	https://coinmarketcap.com/currencies/gamblefi/	BETIFY	$0.29
5600	The Flash Currency	https://coinmarketcap.com/currencies/flash-currency/	TFC	$0.00005376
5601	Evodefi	https://coinmarketcap.com/currencies/evodefi/	GENX	$0.02465
5602	GambleFi	https://coinmarketcap.com/currencies/gamblefi/	BETIFY	$0.2927
5603	ElonTech	https://coinmarketcap.com/currencies/elontech/	ETCH	$0.000000004248
5604	LEMON	https://coinmarketcap.com/currencies/lemon/	LEMN	$0.2356
5605	ELON BUYS TWITTER	https://coinmarketcap.com/currencies/elon-buys-twitter/	EBT	$0.0000002342
5606	Kocaelispor Fan Token	https://coinmarketcap.com/currencies/kocaelispor-fan-token/	KSTT	$0.006165
5607	Harmonylauncher	https://coinmarketcap.com/currencies/harmonylauncher/	HARL	$0.001547
5608	Delta	https://coinmarketcap.com/currencies/delta-finance/	DELTA	$0.7672
5609	Baby Bitcoin	https://coinmarketcap.com/currencies/baby-bitcoin/	BBTC	$0.0...08778
5610	BITCOLOJIX	https://coinmarketcap.com/currencies/bitcolojix/	BTCIX	$1.11
5611	Football Battle	https://coinmarketcap.com/currencies/football-battle/	FBL	$0.17
5612	TOAD.Network	https://coinmarketcap.com/currencies/toad-network/	TOAD	$2.24
5613	Varen	https://coinmarketcap.com/currencies/varen/	VRN	$29.72
5614	ZionLabs Token	https://coinmarketcap.com/currencies/rasta-finance/	RASTA	$0.02
5615	CZodiac Farming Token	https://coinmarketcap.com/currencies/czfarm/	CZF	$0.00
5616	Charactbit	https://coinmarketcap.com/currencies/charactbit/	CHB	$0.00
5617	GYSR	https://coinmarketcap.com/currencies/gysr/	GYSR	$0.09
5618	FireBotToken	https://coinmarketcap.com/currencies/firebottoken/	FBX	$0.40
5619	CFX Quantum	https://coinmarketcap.com/currencies/cfx-quantum/	CFXQ	$0.01
5620	MetaWars	https://coinmarketcap.com/currencies/metawars/	WARS	$0.00
5621	MoonLift Capital	https://coinmarketcap.com/currencies/moonlift-protocol/	MLTPX	$0.00
5622	Marnotaur	https://coinmarketcap.com/currencies/marnotaur/	TAUR	$0.01
5623	Changer	https://coinmarketcap.com/currencies/changer/	CNG	$0.05
5624	Ecoin Finance	https://coinmarketcap.com/currencies/e-coin-finance-new/	ECOIN	$0.00
5625	AddMeFast	https://coinmarketcap.com/currencies/addmefast/	AMF	$0.00
5626	Dohrnii	https://coinmarketcap.com/currencies/dohrnii/	DHN	$0.21
5627	The Everlasting Parachain	https://coinmarketcap.com/currencies/the-everlasting-parachain/	ELP	$0.06
5628	ZCore Finance	https://coinmarketcap.com/currencies/zcore-finance/	ZEFI	$0.01
5629	Doom Hero Game	https://coinmarketcap.com/currencies/doom-hero-game/	DHG	$0.00
5630	Relay Token	https://coinmarketcap.com/currencies/relay-token/	RELAY	$0.16
5631	V3S Share	https://coinmarketcap.com/currencies/v3s-share/	VSHARE	$0.11
5632	Jackpot	https://coinmarketcap.com/currencies/jackpot/	777	$0.02
5633	TORG	https://coinmarketcap.com/currencies/torg/	TORG	$0.00
5634	Brixel War	https://coinmarketcap.com/currencies/brixel-war/	BXS	$0.00
5635	Epanus	https://coinmarketcap.com/currencies/epanus/	EPS	$0.02
5636	ABEY	https://coinmarketcap.com/currencies/abeychain/	ABEY	$0.66
5637	Octopus Protocol	https://coinmarketcap.com/currencies/octopus-protocol/	OPS	$0.00
5638	Kitten Coin	https://coinmarketcap.com/currencies/kitten-coin/	KITTENS	$0.00
5639	Diamond Cash	https://coinmarketcap.com/currencies/diamond-cash/	DCASH	$0.00
5640	Panda Girl	https://coinmarketcap.com/currencies/panda-girl/	PGIRL	$0.00
5641	CNNS	https://coinmarketcap.com/currencies/cnns/	CNNS	$0.00
5642	Multiverse	https://coinmarketcap.com/currencies/multiverse-token/	MVS	$0.00
5643	Takemichi Inu	https://coinmarketcap.com/currencies/takemichi-inu/	TAKE	$0.00
5644	XREATORS	https://coinmarketcap.com/currencies/xreators/	ORT	$0.13
5645	Ally Direct Token	https://coinmarketcap.com/currencies/ally-direct-token/	DRCT	$0.00
5646	inheritance Art	https://coinmarketcap.com/currencies/inheritance-art/	IAI	$0.11
5647	Vconomics - Decentralized Digital Economy	https://coinmarketcap.com/currencies/vconomics-decentralized-digital-economy/	MICS	$0.00
5648	SCROOGE	https://coinmarketcap.com/currencies/scrooge/	SCROOGE	$0.00
5649	Secret (ERC20)	https://coinmarketcap.com/currencies/secret-erc20/	WSCRT	$0.94
5650	WatchDO	https://coinmarketcap.com/currencies/watchdo/	WDO	$0.00
5651	Desmos	https://coinmarketcap.com/currencies/desmos/	DSM	$0.01
5652	BigShortBets	https://coinmarketcap.com/currencies/bigshortbets/	BIGSB	$1.85
5653	DeFiato	https://coinmarketcap.com/currencies/defiato/	DFIAT	$0.02
5654	LovePot Token	https://coinmarketcap.com/currencies/lovepot-token/	LOVE	$0.00
5655	United Emirate Coin	https://coinmarketcap.com/currencies/united-emirate-coin/	UEC	$0.00
5656	Karus Starter	https://coinmarketcap.com/currencies/ksm-starter/	KST	$0.00
5657	TRONbetLive	https://coinmarketcap.com/currencies/tronbetlive/	LIVE	$0.02
5658	Libre DeFi	https://coinmarketcap.com/currencies/libre-defi/	LIBRE	$0.00
5659	Freedom. Jobs. Business.	https://coinmarketcap.com/currencies/letsgobrandoncoin/	FJB	$0.00
5660	PlutusDAO	https://coinmarketcap.com/currencies/plutusdao/	PLS	$0.12
5661	Helkin	https://coinmarketcap.com/currencies/helkin/	HK	$4.13
5662	Clear Water	https://coinmarketcap.com/currencies/clear-water/	$CLEAR	$0.00
5663	DogeFather	https://coinmarketcap.com/currencies/dogefather-token/	FATHER	$0.00
5664	SurfMoon	https://coinmarketcap.com/currencies/surfmoon/	SURFMOON	$0.00
5665	SuperDoge	https://coinmarketcap.com/currencies/superdoge/	SUPDOG	$0.00
5666	Sivasspor Token	https://coinmarketcap.com/currencies/sivasspor-token/	SIV	$3.96
5667	OLA	https://coinmarketcap.com/currencies/ola-city/	OLA	$0.00
5668	The Three Kingdoms	https://coinmarketcap.com/currencies/the-three-kingdoms/	TTK	$0.00
5669	Pampther	https://coinmarketcap.com/currencies/pampther/	PAMPTHER	$0.00
5670	Ethos Project	https://coinmarketcap.com/currencies/ethos-project/	ETHOS	$0.00
5671	YYE Energy	https://coinmarketcap.com/currencies/yye-energy/	YYE	$0.00
5672	LimeOdysseyM with ITAM	https://coinmarketcap.com/currencies/limeodyssey/	LOM	$0.01
5673	NFTD Protocol	https://coinmarketcap.com/currencies/nftd-protocol/	NFTD	$0.15
5674	LITTLE RABBIT	https://coinmarketcap.com/currencies/little-rabbit/	LTRBT	$0.00
5675	NFTBooks	https://coinmarketcap.com/currencies/nftbooks/	NFTBS	$0.00
5676	Moonshots Farm	https://coinmarketcap.com/currencies/moonshots-farm/	BONES	$0.02
5677	BitoPro Exchange Token	https://coinmarketcap.com/currencies/bitopro-exchange-token/	BITO	$0.05
5678	AggregatedFinance	https://coinmarketcap.com/currencies/aggregatedfinance/	AGFI	$0.00
5679	StarLink	https://coinmarketcap.com/currencies/starlink/	SLNV2	$0.00
5680	Crystal Powder	https://coinmarketcap.com/currencies/crystal-powder/	CP	$0.00
5681	Baby WOJ	https://coinmarketcap.com/currencies/baby-woj/	BWJ	$0.00
5682	Olive Cash	https://coinmarketcap.com/currencies/olive-cash/	OLIVE	$0.00
5683	ChargeDeFi Static	https://coinmarketcap.com/currencies/chargedefi-static/	STATIC	$0.48
5684	AmpleSwap	https://coinmarketcap.com/currencies/ampleswap/	AMPLE	$0.00
5685	Alephium	https://coinmarketcap.com/currencies/alephium/	ALPH	$0.07
5686	Aerochain V2	https://coinmarketcap.com/currencies/aerochain/	AERO-V2	$0.00
5687	Metoshi	https://coinmarketcap.com/currencies/metoshi/	METO	$0.00
5688	SPACE SIP	https://coinmarketcap.com/currencies/space-sip/	SIP	$0.00
5689	Baby Pokemoon	https://coinmarketcap.com/currencies/baby-pokemoon/	BPM	$0.03
5690	Apple	https://coinmarketcap.com/currencies/apple-binemon/	AMB	$0.08
5691	Dx	https://coinmarketcap.com/currencies/dxsale-network/	SALE	$0.15
5692	Holy Trinity	https://coinmarketcap.com/currencies/holy-trinity/	HOLY	$5.75
5693	Metaverse NFT Index	https://coinmarketcap.com/currencies/metaverse-nft-index/	PLAY	$0.78
5694	Crystal Of Dragon	https://coinmarketcap.com/currencies/crystal-of-dragon/	COD	$0.00
5695	Chintai	https://coinmarketcap.com/currencies/chex-token/	CHEX	$0.02
5696	NEXTEP	https://coinmarketcap.com/currencies/nextep/	NEXTEP	$0.00
5697	Eifi FInance	https://coinmarketcap.com/currencies/eifi-finance/	EIFI	$0.01
5698	Sway Social	https://coinmarketcap.com/currencies/sway-social-protocol/	SWAY	$0.00
5699	Luna-Pad	https://coinmarketcap.com/currencies/luna-pad/	LUNAPAD	$0.00
5700	INLOCK	https://coinmarketcap.com/currencies/inlock/	ILK	$0.004581
5701	BTC Proxy	https://coinmarketcap.com/currencies/btc-proxy/	BTCPX	$19,236.82
5702	Drover Inu	https://coinmarketcap.com/currencies/drover-inu/	DROVERS	$0.00001294
5703	ShibaCorgi	https://coinmarketcap.com/currencies/shibacorgi/	SHICO	$0.0...00075
5704	Mithril Share	https://coinmarketcap.com/currencies/mithril-share/	MIS	$0.4096
5705	Myteamcoin	https://coinmarketcap.com/currencies/myteamcoin/	MYC	$0.0001288
5706	Rentible	https://coinmarketcap.com/currencies/rentible/	RNB	$0.06166
5707	Dogewhale	https://coinmarketcap.com/currencies/dogewhale/	DOGEWHALE	$0.000001172
5708	EthereumMax	https://coinmarketcap.com/currencies/ethereummax/	EMAX	$0.000000002902
5709	Fenomy	https://coinmarketcap.com/currencies/fenomy/	FENOMY	$0.002277
5710	tBTC	https://coinmarketcap.com/currencies/tbtc/	TBTC	$20262.98
5711	Moox	https://coinmarketcap.com/currencies/moox/	MOOX	$0.48
5712	KickPad	https://coinmarketcap.com/currencies/kickpad/	KPAD	$0.00
5713	Alien Shiba Inu	https://coinmarketcap.com/currencies/alien-shiba-inu/	ASHIB	$0.00
5714	Bold Point	https://coinmarketcap.com/currencies/bold-point/	BPT	$0.00
5715	ICHELLO Music & Technology	https://coinmarketcap.com/currencies/ichello-music-technology/	ELLO	$0.00
5716	eShark Token	https://coinmarketcap.com/currencies/eshark-token/	ESHK	$0.00
5717	City of Dream	https://coinmarketcap.com/currencies/city-of-dream/	COD	$0.00
5718	Starchi	https://coinmarketcap.com/currencies/starchi/	ELIXIR	$0.00
5719	Cougar	https://coinmarketcap.com/currencies/cougar/	CGS	$0.00
5720	Cirrus	https://coinmarketcap.com/currencies/cirrus/	CIRRUS	$0.86
5721	MetaBrands	https://coinmarketcap.com/currencies/metabrands/	MAGE	$0.04
5722	FEG Wrapped USDT	https://coinmarketcap.com/currencies/feg-wrapped-usdt/	fUSDT	$0.99
5723	DUSD Network	https://coinmarketcap.com/currencies/dusd-network/	DUSD	$0.00
5724	THORWallet DEX	https://coinmarketcap.com/currencies/thorwallet/	TGT	$0.01
5725	3x Short XRP Token	https://coinmarketcap.com/currencies/3x-short-xrp-token/	XRPBEAR	$0.00
5726	DogeMoon	https://coinmarketcap.com/currencies/dogemoon/	DGMOON	$0.00
5727	MoonRock V2	https://coinmarketcap.com/currencies/moonrock-v2/	ROCK	$0.00
5728	Arcane Token	https://coinmarketcap.com/currencies/arcane-token/	ARCANE	$0.00
5729	Niob Finance	https://coinmarketcap.com/currencies/niob-finance/	NIOB	$0.00
5730	Sexn	https://coinmarketcap.com/currencies/sexn/	SST	$0.00
5731	Gami Studio	https://coinmarketcap.com/currencies/gami/	GAMI	$0.00
5732	Polar Sync	https://coinmarketcap.com/currencies/polar-sync/	POLAR	$0.02
5733	Dexalot	https://coinmarketcap.com/currencies/dexalot/	ALOT	$0.42
5734	TryHards	https://coinmarketcap.com/currencies/tryhards/	TRY	$0.00
5735	Realital Metaverse	https://coinmarketcap.com/currencies/realital-metaverse/	RETA	$0.39
5736	Tarality	https://coinmarketcap.com/currencies/tarality/	TARAL	$0.00
5737	NCAT Token	https://coinmarketcap.com/currencies/ncat-token/	NCAT	$0.00
5738	Cogecoin	https://coinmarketcap.com/currencies/cogecoin/	COGE	$0.00
5739	The Bend	https://coinmarketcap.com/currencies/the-bend/	BEND	$0.61
5740	GenshinFlokiInu	https://coinmarketcap.com/currencies/genshinflokiinu-token/	GFloki	$0.00
5741	ARTII Token	https://coinmarketcap.com/currencies/artii-token/	ARTII	$0.00
5742	Aureus Nummus Gold	https://coinmarketcap.com/currencies/aureus-nummus-gold/	ANG	$0.00
5743	Club Donkey	https://coinmarketcap.com/currencies/club-donkey/	CDONK	$0.00
5744	Cowboy Snake	https://coinmarketcap.com/currencies/cowboy-snake/	COWS	$0.00
5745	Shar Pei	https://coinmarketcap.com/currencies/shar-pei/	SHARPEI	$0.00
5746	HNC COIN	https://coinmarketcap.com/currencies/hnccoin/	HNC	$0.02
5747	Mead	https://coinmarketcap.com/currencies/mead/	MEAD	$0.11
5748	MoonWay	https://coinmarketcap.com/currencies/moonway/	MOONWAY	$0.00
5749	IOTEN	https://coinmarketcap.com/currencies/ioten/	IOTN	$0.00
5750	MeebitsDAO Pool	https://coinmarketcap.com/currencies/meebitsdao-pool/	MBBT	$2.62
5751	Parma Token	https://coinmarketcap.com/currencies/parma-token/	PARMA	$0.00
5752	Demeter	https://coinmarketcap.com/currencies/demeter-deo/	DEO	$0.52
5753	Shiba Girlfriend	https://coinmarketcap.com/currencies/shiba-girlfriend/	SHIBGF	$0.00
5754	Blox Token	https://coinmarketcap.com/currencies/blox-token/	BLOX	$0.06
5755	Speed Star STAR	https://coinmarketcap.com/currencies/speed-star-star/	STAR	$0.26
5756	Stash	https://coinmarketcap.com/currencies/stash-capital/	STASH	$0.07
5757	SEKUYA	https://coinmarketcap.com/currencies/sekuya/	SKUY	$0.00
5758	ARC	https://coinmarketcap.com/currencies/depo/	ARC	$0.01
5759	Blizzard.money	https://coinmarketcap.com/currencies/blizzard-money/	xBLZD	$0.07
5760	CryptoMines Reborn	https://coinmarketcap.com/currencies/cryptomines-reborn/	CRUX	$0.05
5761	KOMPETE	https://coinmarketcap.com/currencies/kompete/	KOMPETE	$0.00
5762	MarbleVerse	https://coinmarketcap.com/currencies/marbleverse/	RLM	$0.01
5763	BunnyVerse	https://coinmarketcap.com/currencies/bunnyverse/	BNV	$0.00
5764	BNS Token	https://coinmarketcap.com/currencies/bns-token/	BNS	$0.00
5765	Chihiro Inu	https://coinmarketcap.com/currencies/chihiro-inu/	CHIRO	$0.00
5766	Decentralized data crypto system	https://coinmarketcap.com/currencies/decentralized-data-crypto-system/	DCS	$0.07
5767	Lonelyfans (NEW)	https://coinmarketcap.com/currencies/lonelyfans-new/	LOF	$0.00
5768	ETHFan Burn	https://coinmarketcap.com/currencies/ethfan-burn/	$EFB	$0.00
5769	Uniqly	https://coinmarketcap.com/currencies/uniqly/	UNIQ	$0.08
5770	1X Short XRP Token	https://coinmarketcap.com/currencies/1x-short-xrp-token/	XRPHEDGE	$78.13
5771	Real Realm	https://coinmarketcap.com/currencies/real-realm/	REAL	$0.00
5772	Flits	https://coinmarketcap.com/currencies/flits/	FLS	$0.23
5773	Darwinia Crab Network	https://coinmarketcap.com/currencies/darwinia-crab-network/	CRAB	$0.00
5774	Victory Gem	https://coinmarketcap.com/currencies/victory-gem/	VTG	$0.00
5775	WhaleGirl	https://coinmarketcap.com/currencies/whalegirl/	WGIRL	$0.00
5776	KoaCombat	https://coinmarketcap.com/currencies/koakombat/	KOACOMBAT	$0.00
5777	Polycat Finance	https://coinmarketcap.com/currencies/polycat-finance/	FISH	$0.15
5778	SafuTitano	https://coinmarketcap.com/currencies/safutitano/	SAFTI	$0.02
5779	LavaSwap	https://coinmarketcap.com/currencies/lavaswap/	LAVA	$0.00
5780	Bitcoin Metaverse	https://coinmarketcap.com/currencies/bitcoin-metaverse/	BITMETA	$0.00
5781	Moma Protocol	https://coinmarketcap.com/currencies/moma-protocol/	MOMAT	$0.01
5782	The LoveChain	https://coinmarketcap.com/currencies/the-lovechain/	LOV	$0.09
5783	Metaficial World	https://coinmarketcap.com/currencies/metaficial-world/	MW	$0.45
5784	Hat Swap City	https://coinmarketcap.com/currencies/hat-swap-city/	HTC	$0.00
5785	NFTBlackMarket	https://coinmarketcap.com/currencies/nftblackmarket/	NBM	$0.00
5786	The Swappery	https://coinmarketcap.com/currencies/the-swappery/	SWPR	$0.00
5787	CityStates: Medieval	https://coinmarketcap.com/currencies/citystates-medieval/	CSM	$0.00
5788	Cryptotem	https://coinmarketcap.com/currencies/cryptotem/	TOTEM	$0.00
5789	Thought	https://coinmarketcap.com/currencies/thought/	THT	$0.02
5790	LockTrip	https://coinmarketcap.com/currencies/lockchain/	LOC	$1.22
5791	Mt Pelerin Shares	https://coinmarketcap.com/currencies/mt-pelerin/	MPS	$7.71
5792	ShibKiller	https://coinmarketcap.com/currencies/shibkiller/	SHIBKILLER	$0.00
5793	Husky Avax	https://coinmarketcap.com/currencies/husky-avax/	HUSKY	$0.00
5794	MetaCars	https://coinmarketcap.com/currencies/metacars/	MTC	$0.00
5795	Sportoken	https://coinmarketcap.com/currencies/sportoken/	SPT	$0.00
5796	Darkness Dollar	https://coinmarketcap.com/currencies/darkness-dollar/	DUSD	$0.83
5797	Paralink Network	https://coinmarketcap.com/currencies/paralink-network/	PARA	$0.00
5798	Gbrick	https://coinmarketcap.com/currencies/gbrick/	GBX	$0.00
5799	ACryptoS	https://coinmarketcap.com/currencies/acryptos/	ACS	$0.99
5800	CluCoin	https://coinmarketcap.com/currencies/clucoin/	CLU	$0.000000004199
5801	Newsolution2.0	https://coinmarketcap.com/currencies/newsolution-token/	NSTE	$0.03981
5802	Immortl	https://coinmarketcap.com/currencies/immortl/	IMRTL	$0.000298
5803	Qubit	https://coinmarketcap.com/currencies/qubit/	QBT	$0.00009244
5804	Crypto Island	https://coinmarketcap.com/currencies/crypto-island/	CISLA	$0.0000001988
5805	Panda Coin	https://coinmarketcap.com/currencies/panda-coin/	PANDA	$0.00001378
5806	delta.theta	https://coinmarketcap.com/currencies/delta-theta/	DLTA	$0.009496
5807	Cubo	https://coinmarketcap.com/currencies/cubo/	CUBO	$0.1294
5808	Rizespor Token	https://coinmarketcap.com/currencies/rizespor-token/	RIZE	$0.6747
5809	PackagePortal	https://coinmarketcap.com/currencies/packageportal/	PORT	$0.5616
5810	AK12	https://coinmarketcap.com/currencies/ak12/	AK12	$0.11
5811	Sombra Network	https://coinmarketcap.com/currencies/sombra-network/	SMBR	$0.01
5812	KaraStar UMY	https://coinmarketcap.com/currencies/karastar-umy/	UMY	$0.00
5813	RIFI United	https://coinmarketcap.com/currencies/rifi-united/	RU	$0.00
5814	pBTC35A	https://coinmarketcap.com/currencies/pbtc35a/	pBTC35A	$15.32
5815	XR Shiba Inu	https://coinmarketcap.com/currencies/xr-shiba-inu/	XRSHIB	$0.00
5816	MAFIA DOGE	https://coinmarketcap.com/currencies/mafia-doge/	MDOGE	$0.00
5817	Ascend Node Club	https://coinmarketcap.com/currencies/ascend-node-club/	ASND	$0.02
5818	Seesaw	https://coinmarketcap.com/currencies/seesaw/	SSW	$0.00
5819	Wallet Swap	https://coinmarketcap.com/currencies/wallet-swap/	WSWAP	$0.00
5820	Shilly Bar	https://coinmarketcap.com/currencies/shilly-bar/	SHBAR	$0.00
5821	DRIVENx	https://coinmarketcap.com/currencies/drivenx/	DVX	$0.00
5822	EVAI	https://coinmarketcap.com/currencies/evai-io/	EV	$0.03
5823	BitCanna	https://coinmarketcap.com/currencies/bitcanna/	BCNA	$0.01
5824	La Casa De Papel	https://coinmarketcap.com/currencies/la-casa-de-papel/	LCDP	$0.00
5825	Alpha Shares	https://coinmarketcap.com/currencies/alpha-nodes/	$ALPHA	$0.00
5826	Thales	https://coinmarketcap.com/currencies/thales/	THALES	$0.20
5827	Dot Arcade	https://coinmarketcap.com/currencies/dot-arcade/	ADT	$0.02
5828	OEC UNI	https://coinmarketcap.com/currencies/oec-uni/	UNIK	$4.80
5829	Swole Doge	https://coinmarketcap.com/currencies/swole-doge/	SWOLE	$0.00
5830	No one	https://coinmarketcap.com/currencies/no-one/	NOONE	$0.00
5831	ZoomSwap	https://coinmarketcap.com/currencies/zoomswap/	ZM	$0.01
5832	Quartz	https://coinmarketcap.com/currencies/quartz-token/	QTZ	$0.00
5833	CRODEX	https://coinmarketcap.com/currencies/crodex/	CRX	$4.51
5834	SatoshiStreetBets Token	https://coinmarketcap.com/currencies/satoshistreetbets/	SSB	$0.00
5835	JoinCoin	https://coinmarketcap.com/currencies/join-coin/	JOIN	$0.00
5836	Smart Marketing Token	https://coinmarketcap.com/currencies/smart-marketing-token/	SMT	$0.22
5837	Metaplace	https://coinmarketcap.com/currencies/metaplace/	MPC	$0.00
5838	LocoMeta	https://coinmarketcap.com/currencies/locometa/	LOCO	$0.03
5839	MEV Repellent	https://coinmarketcap.com/currencies/mev-repellent/	MEVREPEL	$0.00
5840	Predictcoin	https://coinmarketcap.com/currencies/predictcoin/	PRED	$1.09
5841	SpartaCats	https://coinmarketcap.com/currencies/spartacats/	PURR	$0.00
5842	Clifford Inu	https://coinmarketcap.com/currencies/clifford-inu/	CLIFF	$0.00
5843	DeHero	https://coinmarketcap.com/currencies/dehero/	HEROES	$0.05
5844	CyOp Protocol	https://coinmarketcap.com/currencies/cyop-protocol/	CYOP	$0.00
5845	KillSwitch	https://coinmarketcap.com/currencies/killswitch/	KSW	$0.04
5846	Blockcloud	https://coinmarketcap.com/currencies/blockcloud/	BLOC	$0.00
5847	Vision Network	https://coinmarketcap.com/currencies/vision-network/	VSN	$0.00
5848	Buffer Finance	https://coinmarketcap.com/currencies/buffer-finance/	iBFR	$0.02
5849	Arkadiko Finance	https://coinmarketcap.com/currencies/arkadiko-finance/	DIKO	$0.04
5850	MoonRaise	https://coinmarketcap.com/currencies/moonraise/	MRT	$0.00
5851	AliCoin	https://coinmarketcap.com/currencies/alixconnect/	ALICN	$0.00
5852	Wrapped Syscoin	https://coinmarketcap.com/currencies/wrapped-syscoin/	WSYS	$0.13
5853	Outrace	https://coinmarketcap.com/currencies/outrace/	ORE	$0.00
5854	PlayPoseidon NFT	https://coinmarketcap.com/currencies/playposeidon-nft/	PPP	$0.03
5855	99Starz	https://coinmarketcap.com/currencies/99starz/	STZ	$0.05
5856	One Cash	https://coinmarketcap.com/currencies/one-cash/	ONC	$0.10
5857	Coinflect	https://coinmarketcap.com/currencies/coinflect/	CFLT	$0.00
5858	MOR	https://coinmarketcap.com/currencies/mor/	MOR	$0.99
5859	Ark Of The Universe	https://coinmarketcap.com/currencies/ark-of-the-universe/	ARKS	$0.00
5860	Lilly Finance	https://coinmarketcap.com/currencies/lillyfinance/	Ly	$0.00
5861	MetaPlayers.gg	https://coinmarketcap.com/currencies/metaplayers-gg/	FPS	$0.00
5862	Bomb US Money	https://coinmarketcap.com/currencies/bomb-us-money/	BUSM	$0.21
5863	Kakashi Sensei	https://coinmarketcap.com/currencies/kakashi-sensei/	KAKASHI	$0.00
5864	Crossing the Yellow Blocks	https://coinmarketcap.com/currencies/crossing-the-yellow-blocks/	CBK	$0.01
5865	Metars	https://coinmarketcap.com/currencies/metars/	MTSC	$0.00
5866	Altair	https://coinmarketcap.com/currencies/altair/	AIR	$0.02
5867	DreamDAO	https://coinmarketcap.com/currencies/dreamdao/	DREAM	$7.80
5868	Elitheum	https://coinmarketcap.com/currencies/elitheum/	ELTHM	$0.00
5869	GlowV2	https://coinmarketcap.com/currencies/glow-v2/	GlowV2	$0.00
5870	Artificial Intelligence	https://coinmarketcap.com/currencies/artificial-intelligence/	AI	$0.00
5871	Ark Rivals	https://coinmarketcap.com/currencies/ark-rivals/	ARKN	$0.00
5872	Galaxy	https://coinmarketcap.com/currencies/galaxy-dao/	GLXY	$0.03
5873	AnonyDoxx	https://coinmarketcap.com/currencies/anonydoxx/	ADXX	$0.00
5874	DeXit Network	https://coinmarketcap.com/currencies/dexit-finance/	DXT	$0.00
5875	KingMoney	https://coinmarketcap.com/currencies/kingmoney/	KIM	$11.54
5876	Topshelf Finance	https://coinmarketcap.com/currencies/topshelf-finance/	LIQR	$0.00
5877	Shibaken Finance	https://coinmarketcap.com/currencies/shibaken-finance/	SHIBAKEN	$0.00
5878	Dcoin Token	https://coinmarketcap.com/currencies/dcoin-token/	DT	$0.00
5879	bitcci Cash	https://coinmarketcap.com/currencies/bitcci-cash/	BITCCA	$0.00
5880	Lucky Lion	https://coinmarketcap.com/currencies/lucky-lion/	LUCKY	$0.00
5881	HotMoon Token	https://coinmarketcap.com/currencies/hotmoon-token/	HOTMOON	$0.00
5882	USD mars	https://coinmarketcap.com/currencies/usd-mars/	USDm	$0.43
5883	Data Economy Index	https://coinmarketcap.com/currencies/data-economy-index/	DATA	$18.40
5884	Adadao	https://coinmarketcap.com/currencies/adadao/	ADAO	$0.01
5885	Defilancer token	https://coinmarketcap.com/currencies/defilancer-token/	DEFILANCER	$0.00
5886	Obsidium	https://coinmarketcap.com/currencies/obsidium/	OBS	$0.01
5887	Riot Racers	https://coinmarketcap.com/currencies/riot-racers/	RIOT	$0.01
5888	Magic Beasties	https://coinmarketcap.com/currencies/magic-beasties/	BSTS	$0.00
5889	GameStation	https://coinmarketcap.com/currencies/gamestation/	GAMER	$0.00
5890	Gains Farm	https://coinmarketcap.com/currencies/gains-farm-v2/	GFARM2	$910.04
5891	Plant Empires	https://coinmarketcap.com/currencies/plant-empires/	PEFI	$0.00
5892	VersaGames	https://coinmarketcap.com/currencies/versagames/	VERSA	$0.07
5893	FluidFi	https://coinmarketcap.com/currencies/fluidfi/	FLUID	$0.27
5894	Poodl Token	https://coinmarketcap.com/currencies/poodle/	POODL	$0.00
5895	Xriba	https://coinmarketcap.com/currencies/xriba/	XRA	$0.01
5896	Fluffy Coin	https://coinmarketcap.com/currencies/fluffy-coin/	FLUF	$0.00
5897	DreamN	https://coinmarketcap.com/currencies/dreamn/	$DREAMN	$0.09
5898	ProjectMars	https://coinmarketcap.com/currencies/projectmars/	MARS	$0.00
5899	GameStar	https://coinmarketcap.com/currencies/gamestar/	GMS	$0.00
5900	RugZombie	https://coinmarketcap.com/currencies/rugzombie/	ZMBE	$0.001325
5901	BetSwirl	https://coinmarketcap.com/currencies/betswirl/	BETS	$0.00006331
5902	Ethernal Finance	https://coinmarketcap.com/currencies/ethernal-finance/	ETHFIN	$0.000003153
5903	BUSD Buffet	https://coinmarketcap.com/currencies/busd-buffet/	BBFT	$0.000000001461
5904	Orakuru	https://coinmarketcap.com/currencies/orakuru/	ORK	$0.00151
5905	Floshin Token	https://coinmarketcap.com/currencies/floshin-token/	FLOSHIN	$0.0...03969
5906	BIZZCOIN	https://coinmarketcap.com/currencies/bizzcoin/	BIZZ	$0.03053
5907	DaddyBabyDoge	https://coinmarketcap.com/currencies/daddybabydoge/	DBDOGE	$0.0001681
5908	Pi Network DeFi	https://coinmarketcap.com/currencies/pi-network-defi/	PI NETWORK DEFI	$0.0000253
5909	Aerovek Aviation	https://coinmarketcap.com/currencies/aerovek-aviation/	AERO	$0.04728
5910	Peruvian National Football Team Fan Token	https://coinmarketcap.com/currencies/peruvian-national-football-team-fan-token/	FPFT	$0.04
5911	KSwap	https://coinmarketcap.com/currencies/kswap/	KST	$0.00
5912	Pera Finance	https://coinmarketcap.com/currencies/pera-finance/	PERA	$0.00
5913	impactMarket	https://coinmarketcap.com/currencies/impactmarket/	PACT	$0.00
5914	Gorilla Diamond	https://coinmarketcap.com/currencies/gorilla-diamond/	GDT	$0.00
5915	AMMYI Coin	https://coinmarketcap.com/currencies/ammyi-coin/	AMI	$0.16
5916	XQuake	https://coinmarketcap.com/currencies/xquake/	XQK	$0.00
5917	Siren	https://coinmarketcap.com/currencies/siren/	SI	$0.06
5918	YieldLock	https://coinmarketcap.com/currencies/yieldlock/	YLF	$0.00
5919	Coalculus	https://coinmarketcap.com/currencies/coalculus/	COAL	$0.00
5920	Vexchange	https://coinmarketcap.com/currencies/vexchange/	VEX	$0.19
5921	Abell Coin	https://coinmarketcap.com/currencies/abell-coin/	ABC	$0.00
5922	Nifty League	https://coinmarketcap.com/currencies/nifty-league/	NFTL	$0.00
5923	Haven token	https://coinmarketcap.com/currencies/haven-token/	HAVEN	$0.06
5924	Doge Protocol	https://coinmarketcap.com/currencies/doge-protocol/	DOGEP	$0.00
5925	Flokimooni	https://coinmarketcap.com/currencies/flokimooni/	FLOKIM	$0.00
5926	BitOrbit	https://coinmarketcap.com/currencies/bitorbit/	BITORB	$0.01
5927	Bored Floki Yacht Club	https://coinmarketcap.com/currencies/bored-floki-yacht-club/	BFYC	$0.00
5928	Impermax	https://coinmarketcap.com/currencies/impermax/	IMX	$0.02
5929	Lyfe Land	https://coinmarketcap.com/currencies/lyfe-land/	LLAND	$4.20
5930	WonderHero	https://coinmarketcap.com/currencies/wonderhero-hon/	HON	$0.00
5931	3x Short EOS Token	https://coinmarketcap.com/currencies/3x-short-eos-token/	EOSBEAR	$0.00
5932	HeroesTD CGC	https://coinmarketcap.com/currencies/heroestd-cgc/	CGC	$0.01
5933	CASHTHAI	https://coinmarketcap.com/currencies/cashthai/	CTHAI	$0.00
5934	CoinScan	https://coinmarketcap.com/currencies/coinscan/	SCAN	$0.00
5935	3x Long Bitcoin SV Token	https://coinmarketcap.com/currencies/3x-long-bitcoin-sv-token/	BSVBULL	$0.00
5936	Fanadise	https://coinmarketcap.com/currencies/fanadise/	FAN	$0.01
5937	EverReflect	https://coinmarketcap.com/currencies/everreflect/	EVRF	$0.00
5938	Exohood	https://coinmarketcap.com/currencies/exohood/	EXO	$0.00
5939	Kaby Gaming Token	https://coinmarketcap.com/currencies/kaby-gaming-token/	KGT	$0.00
5940	Oogear	https://coinmarketcap.com/currencies/oogear/	OG	$0.00
5941	NestSwap	https://coinmarketcap.com/currencies/hummingbird-egg-token/	HEGG	$0.00
5942	iPay	https://coinmarketcap.com/currencies/ipay/	IPAY	$0.00
5943	ZelaaPayAE	https://coinmarketcap.com/currencies/zelaapayae/	ZPAE	$0.00
5944	Yobit Token	https://coinmarketcap.com/currencies/yobit-token/	YO	$823.99
5945	Arabian City	https://coinmarketcap.com/currencies/arabian-city/	ACITY	$0.00
5946	DAIN	https://coinmarketcap.com/currencies/dain/	DAIN	$0.01
5947	Axia Protocol	https://coinmarketcap.com/currencies/axia-protocol/	AXIA	$0.08
5948	Autobusd	https://coinmarketcap.com/currencies/autobusd/	ABS	$0.06
5949	SOLIDsex: Tokenized veSOLID	https://coinmarketcap.com/currencies/solidsex-tokenized-vesolid/	SOLIDSEX	$0.02
5950	Good Luck Token	https://coinmarketcap.com/currencies/good-luck-token/	GLT	$0.00
5951	One Basis	https://coinmarketcap.com/currencies/one-basis-cash/	OBS	$0.22
5952	Ninja Protocol	https://coinmarketcap.com/currencies/ninja-protocol/	NINJA	$0.01
5953	Medican Coin	https://coinmarketcap.com/currencies/medican-coin/	MCAN	$0.01
5954	Arkania Protocol	https://coinmarketcap.com/currencies/arkania-protocol/	ANIA	$0.00
5955	Whalemap	https://coinmarketcap.com/currencies/whalemap/	WMP	$0.02
5956	SNAPN Go Out Now	https://coinmarketcap.com/currencies/snapn-go-out-now/	GON	$0.00
5957	LemoChain	https://coinmarketcap.com/currencies/lemochain/	LEMO	$0.00
5958	LYFE	https://coinmarketcap.com/currencies/lyfe/	LYFE	$0.01
5959	CZbusd	https://coinmarketcap.com/currencies/czbusd/	CZBUSD	$0.98
5960	SMART SHIBA	https://coinmarketcap.com/currencies/smart-shiba/	SMARTSHIB	$0.00
5961	Euphoria	https://coinmarketcap.com/currencies/euphoriagames/	EUPH	$0.00
5962	Doshi	https://coinmarketcap.com/currencies/doshi/	DOSHI	$0.00
5963	Gunstar Metaverse Currency	https://coinmarketcap.com/currencies/gunstar-metaverse-currency/	GSC	$0.00
5964	Candela Coin	https://coinmarketcap.com/currencies/candelacoin/	CLA	$0.00
5965	Hellsing Inu	https://coinmarketcap.com/currencies/hellsing-inu/	HELLSING	$0.00
5966	Aircoins	https://coinmarketcap.com/currencies/aircoins/	AIRX	$0.00
5967	Adsense Token	https://coinmarketcap.com/currencies/adsense-token/	ADT	$0.00
5968	Vacay	https://coinmarketcap.com/currencies/vacay/	VACAY	$0.00
5969	DeFi Land Gold	https://coinmarketcap.com/currencies/defi-land-gold/	GOLDY	$0.00
5970	Petaverse	https://coinmarketcap.com/currencies/petaverse/	PETA	$0.00
5971	Green Chart	https://coinmarketcap.com/currencies/green-chart/	GREEN	$0.00
5972	DMEX (Decentralized Mining Exchange)	https://coinmarketcap.com/currencies/decentralized-mining-exchange/	DMC	$0.01
5973	PayRue (Propel)	https://coinmarketcap.com/currencies/payrue-propel/	PROPEL	$0.00
5974	Wrapped Fuse	https://coinmarketcap.com/currencies/wrapped-fuse-network/	WFUSE	$0.09
5975	Shiftal	https://coinmarketcap.com/currencies/shiftal/	SFL	$0.06
5976	Weentar	https://coinmarketcap.com/currencies/weentar/	$WNTR	$0.00
5977	Chainlist	https://coinmarketcap.com/currencies/chainlist/	CLIST	$0.00
5978	WifeDoge	https://coinmarketcap.com/currencies/wifedoge/	WIFEDOGE	$0.00
5979	CowCoin	https://coinmarketcap.com/currencies/cowcoin/	CC	$0.12
5980	Amun Polygon Ecosystem Index	https://coinmarketcap.com/currencies/amun-polygon-ecosystem-index/	PECO	$1.75
5981	Ubeswap	https://coinmarketcap.com/currencies/ubeswap/	UBE	$0.04
5982	XFUEL	https://coinmarketcap.com/currencies/xfuel/	XFUEL	$0.00
5983	NiiFi	https://coinmarketcap.com/currencies/niifi/	NIIFI	$0.01
5984	TRYC	https://coinmarketcap.com/currencies/tryc/	TRYC	$0.06
5985	UCROWDME	https://coinmarketcap.com/currencies/ucrowdme/	UCM	$0.00
5986	HeroPark	https://coinmarketcap.com/currencies/heropark/	HP	$0.00
5987	Inu Wars	https://coinmarketcap.com/currencies/inu-wars/	IWR	$0.00
5988	Xrpalike Gene	https://coinmarketcap.com/currencies/xrpalike-gene/	XAG	$0.01
5989	GScarab	https://coinmarketcap.com/currencies/gscarab/	GSCARAB	$2.87
5990	DeMon Token	https://coinmarketcap.com/currencies/dmz-token/	DMZ	$0.10
5991	Solpad Finance	https://coinmarketcap.com/currencies/solpad-finance/	SOLPAD	$0.00
5992	Artrade	https://coinmarketcap.com/currencies/artrade/	ATR	$0.01
5993	Safety	https://coinmarketcap.com/currencies/safety/	SFT	$0.00
5994	Meta	https://coinmarketcap.com/currencies/meta-bsc/	META	$0.00
5995	Meland.ai	https://coinmarketcap.com/currencies/meland/	MELD	$0.00
5996	Dipper Network	https://coinmarketcap.com/currencies/dipper-network/	DIP	$0.00
5997	Fountain Protocol	https://coinmarketcap.com/currencies/fountain-protocol/	FTP	$0.00
5998	MaskDoge	https://coinmarketcap.com/currencies/maskdoge/	MASKDOGE	$0.00
5999	Famous Fox Federation	https://coinmarketcap.com/currencies/famous-fox-federation/	FOXY	$0.00
6000	Famous Fox Federation	https://coinmarketcap.com/currencies/famous-fox-federation/	FOXY	$0.003888
6001	Niros	https://coinmarketcap.com/currencies/niros/	NIROS	$0.01754
6002	TruePNL	https://coinmarketcap.com/currencies/truepnl/	PNL	$0.03078
6003	AvocadoCoin	https://coinmarketcap.com/currencies/avocadocoin/	AVDO	$1,819.99
6004	Lava Financial	https://coinmarketcap.com/currencies/lava-financial/	LAVA	$0.3359
6005	APY Vision	https://coinmarketcap.com/currencies/apy-vision/	VISION	$0.4827
6006	DragonMaster	https://coinmarketcap.com/currencies/dragonmaster-dmt/	DMT	$0.09145
6007	HEROES OF THE LAND RUBY	https://coinmarketcap.com/currencies/heroes-of-the-land-ruby/	RUBY	$0.005725
6008	Verve	https://coinmarketcap.com/currencies/verve/	VERVE	$0.001053
6009	Crinet	https://coinmarketcap.com/currencies/crinet/	CNT	$0.00007031
6010	CatzCoin	https://coinmarketcap.com/currencies/catzcoin/	CATZ	$0.00
6011	Gamesta	https://coinmarketcap.com/currencies/gamesta/	GSG	$0.00
6012	OragonX	https://coinmarketcap.com/currencies/oragonx/	ORGN	$0.00
6013	Golden Roots	https://coinmarketcap.com/currencies/golden-roots/	GDR	$0.00
6014	SocialsFi	https://coinmarketcap.com/currencies/socialsfi/	SCFL	$0.00
6015	Project X	https://coinmarketcap.com/currencies/projectx/	XIL	$0.01
6016	3x Short Bitcoin Cash Token	https://coinmarketcap.com/currencies/3x-short-bitcoin-cash-token/	BCHBEAR	$0.00
6017	Baby Saitama Inu	https://coinmarketcap.com/currencies/baby-saitama-inu/	BABYSAITAMA	$0.00
6018	Metaverse ALL BEST ICO	https://coinmarketcap.com/currencies/metaverse-all-best-ico/	METAALLBI	$0.00
6019	$HULK	https://coinmarketcap.com/currencies/hulk/	$HULK	$0.00
6020	AurusGOLD	https://coinmarketcap.com/currencies/aurusgold/	AWG	$58.41
6021	Firework Games	https://coinmarketcap.com/currencies/firework-games/	FIRE	$0.02
6022	MicroPee	https://coinmarketcap.com/currencies/micropee/	PEE	$0.00
6023	EvoCardano	https://coinmarketcap.com/currencies/evocardano/	EVOC	$0.00
6024	Manyswap	https://coinmarketcap.com/currencies/manyswap/	MANY	$0.00
6025	Urubit	https://coinmarketcap.com/currencies/urubit/	URUB	$0.00
6026	Hoppers Game	https://coinmarketcap.com/currencies/hoppers-game/	FLY	$0.01
6027	CAT	https://coinmarketcap.com/currencies/cat/	CAT	$0.78
6028	GoldenWspp	https://coinmarketcap.com/currencies/goldenwspp/	GWSPP	$0.00
6029	TATA Coin	https://coinmarketcap.com/currencies/tata-coin/	TATA	$0.01
6030	YouLive Coin	https://coinmarketcap.com/currencies/youlive-coin/	UC	$0.00
6031	Magic Elpis Gem	https://coinmarketcap.com/currencies/magic-elpis-gem/	MEG	$0.00
6032	VentiSwap Token	https://coinmarketcap.com/currencies/ventiswap-token/	VST	$0.11
6033	DragonSea	https://coinmarketcap.com/currencies/dragonsea/	DGE	$0.00
6034	Minter HUB	https://coinmarketcap.com/currencies/minter-hub/	HUB	$19.50
6035	Transhuman Coin	https://coinmarketcap.com/currencies/transhuman-coin/	THC	$0.00
6036	KRED	https://coinmarketcap.com/currencies/kred/	KRED	$0.00
6037	Haino	https://coinmarketcap.com/currencies/haino/	HE	$0.00
6038	Jax.Network	https://coinmarketcap.com/currencies/jax-network/	WJXN	$0.88
6039	Flashloans.com	https://coinmarketcap.com/currencies/flashloans/	FLASH	$0.00
6040	Merchant Token	https://coinmarketcap.com/currencies/merchant-token/	MTO	$0.05
6041	XTblock	https://coinmarketcap.com/currencies/xtblock/	XTT-B20	$0.07
6042	NiftyPays	https://coinmarketcap.com/currencies/niftypays/	NIFTY	$0.00
6043	Around Network	https://coinmarketcap.com/currencies/around-network/	ART	$0.00
6044	Mystic Poker	https://coinmarketcap.com/currencies/mystic-poker/	MYP	$0.00
6045	Synesis One	https://coinmarketcap.com/currencies/synesis-one/	SNS	$0.01
6046	Oxbull Solana	https://coinmarketcap.com/currencies/oxbull-solana/	OXS	$0.04
6047	Feeder.finance	https://coinmarketcap.com/currencies/feeder-finance/	FEED	$0.00
6048	OnlyCam	https://coinmarketcap.com/currencies/onlycam/	$ONLY	$0.00
6049	HonorLand	https://coinmarketcap.com/currencies/honorland/	HONOR	$0.01
6050	Magnet	https://coinmarketcap.com/currencies/magnet-dao/	MAG	$0.44
6051	Lithium Ventures	https://coinmarketcap.com/currencies/lithium-ventures/	IONS	$0.02
6052	UNIVERSE ISLAND	https://coinmarketcap.com/currencies/universe-island/	UIM	$0.00
6053	HEdpAY	https://coinmarketcap.com/currencies/hedpay/	HDP.╤Д	$0.17
6054	Deblox	https://coinmarketcap.com/currencies/deblox/	DGS	$0.02
6055	Dragon Pool	https://coinmarketcap.com/currencies/dragon-pool/	DP	$0.00
6056	Meta Plane	https://coinmarketcap.com/currencies/meta-plane/	MPL	$0.00
6057	NASDEX	https://coinmarketcap.com/currencies/nasdex/	NSDX	$0.03
6058	3X Long Huobi Token Token	https://coinmarketcap.com/currencies/3x-long-huobi-token-token/	HTBULL	$0.07
6059	Infinity Arena	https://coinmarketcap.com/currencies/infinity-arena/	INAZ	$0.00
6060	REU (BSC)	https://coinmarketcap.com/currencies/reu-bsc/	REU	$0.00
6061	PremiumBlock	https://coinmarketcap.com/currencies/premiumblock/	PRB	$0.00
6062	DareNFT	https://coinmarketcap.com/currencies/darenft/	DNFT	$0.00
6063	Communifty	https://coinmarketcap.com/currencies/communifty/	CNFT	$0.02
6064	IjasCoin	https://coinmarketcap.com/currencies/ijascoin/	IJC	$0.00
6065	YoleeUniverse	https://coinmarketcap.com/currencies/yoleeuniverse/	YUS	$0.01
6066	Orclands Metaverse	https://coinmarketcap.com/currencies/orclands-metaverse/	ORC	$0.00
6067	Matrix Labs	https://coinmarketcap.com/currencies/matrixswap/	MATRIX	$0.00
6068	Anypad	https://coinmarketcap.com/currencies/anypad/	APAD	$0.00
6069	WingSwap	https://coinmarketcap.com/currencies/wingswap/	WIS	$0.00
6070	Yeni Malatyaspor Token	https://coinmarketcap.com/currencies/yeni-malatyaspor-token/	YMS	$0.58
6071	Argo Finance	https://coinmarketcap.com/currencies/argo-finance/	ARGO	$0.01
6072	TON Token	https://coinmarketcap.com/currencies/tontoken/	TON	$0.01
6073	Adroverse	https://coinmarketcap.com/currencies/adroverse/	ADR	$0.00
6074	Katsumi	https://coinmarketcap.com/currencies/katsumi/	KATSUMI	$0.00
6075	G.O.A.T Token	https://coinmarketcap.com/currencies/goat-token/	G.O.A.T	$0.00
6076	Coinstox	https://coinmarketcap.com/currencies/coinstox/	CSX	$0.00
6077	CryptoCart V2	https://coinmarketcap.com/currencies/cryptocart-v2/	CCV2	$0.62
6078	Moonpoly	https://coinmarketcap.com/currencies/moonpoly/	CMP	$0.00
6079	PECULIUM	https://coinmarketcap.com/currencies/peculium-v2/	PCL	$0.04
6080	Snail Trail	https://coinmarketcap.com/currencies/snail-trail/	SLIME	$0.01
6081	Continuum World	https://coinmarketcap.com/currencies/continuum-world/	UM	$0.00
6082	YOKcoin	https://coinmarketcap.com/currencies/yokcoin/	YOK	$0.01
6083	Rebel Bots	https://coinmarketcap.com/currencies/rebel-bots/	RBLS	$0.13
6084	DOGEFOOD	https://coinmarketcap.com/currencies/dogefood/	DOGEFOOD	$0.00
6085	Thoreum V2	https://coinmarketcap.com/currencies/thoreum-v2/	THOREUM	$0.10
6086	Croking	https://coinmarketcap.com/currencies/croking/	CRK	$0.00
6087	3x Long EOS Token	https://coinmarketcap.com/currencies/3x-long-eos-token/	EOSBULL	$0.00
6088	ESR Coin	https://coinmarketcap.com/currencies/esr-coin/	ESRC	$0.17
6089	Diyarbekirspor Token	https://coinmarketcap.com/currencies/diyarbekirspor-token/	DIYAR	$0.49
6090	My┼Нbu	https://coinmarketcap.com/currencies/myobu/	MYOBU	$0.00
6091	Aarma	https://coinmarketcap.com/currencies/aarma/	ARMA	$0.10
6092	ZeldaVerse	https://coinmarketcap.com/currencies/zeldaverse/	ZVRS	$0.00
6093	Ride To Earn	https://coinmarketcap.com/currencies/ride-to-earn/	RD2E	$0.00
6094	EagonSwap Token	https://coinmarketcap.com/currencies/eagonswap-token/	EAGON	$0.00
6095	Oiler Network	https://coinmarketcap.com/currencies/oiler-network/	OIL	$0.21
6096	RBX	https://coinmarketcap.com/currencies/rbx/	RBX	$0.04
6097	Historia	https://coinmarketcap.com/currencies/historia/	HTA	$0.02
6098	Iotex Monster Go	https://coinmarketcap.com/currencies/iotex-monster-go/	MTGO	$0.01
6099	DefiPlaza	https://coinmarketcap.com/currencies/defiplaza/	DFP2	$0.01
6100	IOU	https://coinmarketcap.com/currencies/iou/	IOUX	$0.3703
6101	AceStarter	https://coinmarketcap.com/currencies/acestarter/	ASTAR	$0.005744
6102	TosDis	https://coinmarketcap.com/currencies/tosdis/	DIS	$2.90
6103	MetaVerse-M	https://coinmarketcap.com/currencies/metaverse-m/	M	$0.01066
6104	Redlight Node District	https://coinmarketcap.com/currencies/redlight-node-district/	PLAYMATES	$0.7191
6105	Chirp	https://coinmarketcap.com/currencies/chirp/	CHIRP	$0.00000003896
6106	MetaQ	https://coinmarketcap.com/currencies/metaq/	METAQ	$0.8594
6107	3X Long Altcoin Index Token	https://coinmarketcap.com/currencies/3x-long-altcoin-index-token/	ALTBULL	$0.1284
6108	Mu Continent	https://coinmarketcap.com/currencies/mu-continent/	MU	$0.000003767
6109	FIDELIS	https://coinmarketcap.com/currencies/fidelis/	FDLS	$0.002937
6110	Shiro Inu	https://coinmarketcap.com/currencies/shiro-inu/	SHIR	$0.00
6111	Mech Master	https://coinmarketcap.com/currencies/mech-master/	MECH	$0.00
6112	Candylad	https://coinmarketcap.com/currencies/candylad/	CANDYLAD	$0.00
6113	Seedling Token	https://coinmarketcap.com/currencies/seedling/	SDLN	$0.03
6114	CorgiNFTGame	https://coinmarketcap.com/currencies/corginftgame/	COR	$0.03
6115	BitValley	https://coinmarketcap.com/currencies/bitvalley/	BITV	$0.00
6116	Jelly	https://coinmarketcap.com/currencies/jelly/	JELLY	$0.01
6117	Nexum	https://coinmarketcap.com/currencies/nexum/	NEXM	$0.31
6118	Sensi	https://coinmarketcap.com/currencies/sensi/	SENSI	$0.00
6119	Kirobo	https://coinmarketcap.com/currencies/kirobo/	KIRO	$0.03
6120	Bulldogswap	https://coinmarketcap.com/currencies/bulldogswap/	BUDG	$0.00
6121	Defi Connect	https://coinmarketcap.com/currencies/defi-connect/	DFC	$0.00
6122	Jubi Token	https://coinmarketcap.com/currencies/jubi-token/	JT	$0.07
6123	Paras	https://coinmarketcap.com/currencies/paras/	PARAS	$0.04
6124	Nuketoken	https://coinmarketcap.com/currencies/nuketoken/	NUKE	$0.00
6125	Mean Tamato	https://coinmarketcap.com/currencies/mean-tamato/	MEANTAMATO	$0.00
6126	Lots Gaming	https://coinmarketcap.com/currencies/lots-gaming/	LTSG	$0.00
6127	Decubate	https://coinmarketcap.com/currencies/decubate/	DCB	$0.00
6128	Healthify	https://coinmarketcap.com/currencies/healthify/	HTF	$0.00
6129	Flash Technologies	https://coinmarketcap.com/currencies/flash-technologies/	FLASH	$0.00
6130	OneRare	https://coinmarketcap.com/currencies/onerare/	ORARE	$0.03
6131	Bumper	https://coinmarketcap.com/currencies/bumper/	BUMP	$0.03
6132	DiversiFi Blue	https://coinmarketcap.com/currencies/diversifi-blue/	DVFB	$0.00
6133	EverestCoin	https://coinmarketcap.com/currencies/everestcoin/	EVCoin	$0.00
6134	Minto	https://coinmarketcap.com/currencies/minto/	BTCMT	$0.99
6135	Metaverse-Dao	https://coinmarketcap.com/currencies/metaversedao/	METADAO	$0.00
6136	Centaurify	https://coinmarketcap.com/currencies/centaurify/	CENT	$0.00
6137	PhotoChromic	https://coinmarketcap.com/currencies/photochromic/	PHCR	$0.00
6138	USD Open Dollar	https://coinmarketcap.com/currencies/usd-open-dollar/	USDO	$0.51
6139	Monsta Infinite	https://coinmarketcap.com/currencies/stt/	STT	$0.00
6140	MondayClub	https://coinmarketcap.com/currencies/mondayclub/	MONDAY	$0.22
6141	SafeMoneyBSC	https://coinmarketcap.com/currencies/safemoneybsc/	SAFEMONEY	$0.00
6142	Eternal Cash	https://coinmarketcap.com/currencies/eternal-cash/	EC	$0.01
6143	Astronos	https://coinmarketcap.com/currencies/astronos/	ASTRO	$0.00
6144	Defactor	https://coinmarketcap.com/currencies/defactor/	FACTR	$0.01
6145	HarryPotterObamaSonic10Inu	https://coinmarketcap.com/currencies/harrypotterobamasonic10inu/	BITCOIN	$0.00
6146	MULTIFI	https://coinmarketcap.com/currencies/multifi/	MLM	$0.03
6147	Cryption Network	https://coinmarketcap.com/currencies/cryption-network/	CNT	$0.00
6148	Carbon	https://coinmarketcap.com/currencies/carb/	CARB	$0.15
6149	ANTIS INU	https://coinmarketcap.com/currencies/antis-inu/	ANTIS	$0.00
6150	Husky	https://coinmarketcap.com/currencies/husky/	HUSKY	$0.00
6151	Glide Finance	https://coinmarketcap.com/currencies/glide-finance/	GLIDE	$0.04
6152	Decentralized Community Investment Protocol	https://coinmarketcap.com/currencies/decentralized-community-investment-protocol/	DCIP	$0.00
6153	Acumen	https://coinmarketcap.com/currencies/aucume/	ACM	$4.90
6154	RPS LEAGUE	https://coinmarketcap.com/currencies/rps-league/	RPS	$0.01
6155	Wifi Coin	https://coinmarketcap.com/currencies/wifi-coin/	WIFI	$0.02
6156	BSCEX	https://coinmarketcap.com/currencies/bscex/	BSCX	$0.89
6157	pTokens BTC	https://coinmarketcap.com/currencies/ptokens-btc/	pBTC	$10453.78
6158	Bountie Hunter	https://coinmarketcap.com/currencies/bountie/	BOUNTIE	$0.00
6159	Crypto Volatility Token	https://coinmarketcap.com/currencies/crypto-volatility-token/	CVOL	$97.14
6160	gotEM	https://coinmarketcap.com/currencies/gotem/	GOTEM	$0.00
6161	Gric Coin	https://coinmarketcap.com/currencies/gric-coin/	GC	$0.08
6162	Zoo Token	https://coinmarketcap.com/currencies/zoo-token/	ZOOT	$0.00
6163	Metalk	https://coinmarketcap.com/currencies/metalk/	META	$0.04
6164	Orica	https://coinmarketcap.com/currencies/orica/	ORI	$0.00
6165	Felix	https://coinmarketcap.com/currencies/felix-token/	FLX	$0.00
6166	MetaBUSDCoin	https://coinmarketcap.com/currencies/metabusdcoin/	MBC	$0.00
6167	DogeSwap	https://coinmarketcap.com/currencies/dogeswap-heco/	DOG	$0.00
6168	Santa Floki v2.0	https://coinmarketcap.com/currencies/santa-floki-v2/	HOHOHO V2.0	$0.00
6169	Totoro Inu	https://coinmarketcap.com/currencies/totoro-inu/	TOTORO	$0.00
6170	Joe Hat Token	https://coinmarketcap.com/currencies/joe-hat-token/	HAT	$356.11
6171	Small Fish Cookie	https://coinmarketcap.com/currencies/small-fish-cookie/	SFC	$0.00
6172	Orkan	https://coinmarketcap.com/currencies/orkan/	ORKAN	$0.38
6173	Hanu Yokia	https://coinmarketcap.com/currencies/goji-crypto/	HANU	$0.00
6174	PAZ	https://coinmarketcap.com/currencies/paz-token/	PAZ	$0.00
6175	Walk To Earn	https://coinmarketcap.com/currencies/walk-to-earn/	W2E	$0.00
6176	Farmageddon	https://coinmarketcap.com/currencies/farmageddon/	FG	$0.00
6177	Lets Go Brandon	https://coinmarketcap.com/currencies/lgb/	LETSGO	$0.00
6178	Revolution	https://coinmarketcap.com/currencies/revolution/	REV	$0.51
6179	NFT STARS	https://coinmarketcap.com/currencies/nft-stars/	NFTS	$0.04
6180	Kyte.One	https://coinmarketcap.com/currencies/kyte-one/	KTE	$0.04
6181	Antalyaspor Token	https://coinmarketcap.com/currencies/antalyaspor-token/	AKREP	$4.42
6182	Turtles Token	https://coinmarketcap.com/currencies/turtles-token/	TRTLS	$0.09
6183	xMooney	https://coinmarketcap.com/currencies/xmooney/	XM	$0.00
6184	Scaleswap	https://coinmarketcap.com/currencies/scaleswap/	SCA	$0.02
6185	Wrapped PKT	https://coinmarketcap.com/currencies/wrapped-pkt/	WPKT	$0.00
6186	Moola	https://coinmarketcap.com/currencies/moola/	MLA	$0.01
6187	YES||NO	https://coinmarketcap.com/currencies/yes-no/	YON	$0.00
6188	Adamant	https://coinmarketcap.com/currencies/adamant/	ADMC	$0.00
6189	PhoenixDefi.Finance	https://coinmarketcap.com/currencies/phoenixdefi-finance/	PNIX	$0.00
6190	Foliowatch	https://coinmarketcap.com/currencies/foliowatch/	FWATCH	$0.00
6191	Kittens & Puppies	https://coinmarketcap.com/currencies/kittens-puppies/	KAP	$0.00
6192	Manga Token	https://coinmarketcap.com/currencies/manga-token/	$MANGA	$0.00
6193	ElonBank	https://coinmarketcap.com/currencies/elonbank/	ELONBANK	$0.11
6194	Unlock Protocol	https://coinmarketcap.com/currencies/unlock-protocol/	UDT	$13.17
6195	MUD Guild Game	https://coinmarketcap.com/currencies/mud-guild-game/	MGG	$0.09
6196	Fantasy War	https://coinmarketcap.com/currencies/fantasy-war/	FAWA	$0.01
6197	MilkySwap	https://coinmarketcap.com/currencies/milkyswap/	MILKY	$0.02
6198	Wisteria Swap	https://coinmarketcap.com/currencies/wisteria-swap/	WST	$0.67
6199	myMessage	https://coinmarketcap.com/currencies/mymessage/	MESA	$0.00
6200	myMessage	https://coinmarketcap.com/currencies/mymessage/	MESA	$0.00000003949
6201	Nosana	https://coinmarketcap.com/currencies/nosana/	NOS	$0.04322
6202	Lord Arena	https://coinmarketcap.com/currencies/lord-arena/	LORDA	$0.0001006
6203	Rocket	https://coinmarketcap.com/currencies/rocket/	ROCKET	$0.002294
6204	ZYX	https://coinmarketcap.com/currencies/zyx/	ZYX	$0.01663
6205	Overmoon	https://coinmarketcap.com/currencies/overmoon/	OVM	$0.0...01395
6206	DOJO	https://coinmarketcap.com/currencies/dojo/	DOJO	$0.000000001876
6207	Wanda Exchange	https://coinmarketcap.com/currencies/wanda-exchange/	WE	$0.008677
6208	Capital DAO Protocol	https://coinmarketcap.com/currencies/capital-dao-protocol/	CDS	$0.001478
6209	Algomint	https://coinmarketcap.com/currencies/gomint/	GOMINT	$0.04201
6210	BABYOKX	https://coinmarketcap.com/currencies/babyokx-token/	BABYOKX	$0.00
6211	Jur	https://coinmarketcap.com/currencies/jur/	JUR	$0.01
6212	bDollar	https://coinmarketcap.com/currencies/bdollar/	BDO	$0.04
6213	Solana Ecosystem Index	https://coinmarketcap.com/currencies/solana-ecosystem-index/	SOLI	$1.82
6214	DAO Farmer DFW	https://coinmarketcap.com/currencies/dao-farmer-dfw/	DFW	$0.00
6215	Mongoose	https://coinmarketcap.com/currencies/mongoose/	MONGOOSE	$0.00
6216	MetaDoge	https://coinmarketcap.com/currencies/metadoge-token/	METADOGE	$0.00
6217	Monfter	https://coinmarketcap.com/currencies/monfter-token/	MON	$0.00
6218	Agricoin	https://coinmarketcap.com/currencies/agricoin/	AGX	$0.01
6219	Bidao	https://coinmarketcap.com/currencies/bidao/	BID	$0.00
6220	Intelligent Investment Chain	https://coinmarketcap.com/currencies/intelligent-investment-chain/	IIC	$0.00
6221	Pay It Now	https://coinmarketcap.com/currencies/pay-it-now/	PIN	$0.01
6222	PDDOLLAR	https://coinmarketcap.com/currencies/pddollar/	PDD	$0.00
6223	Hatayspor Token	https://coinmarketcap.com/currencies/hatayspor-token/	HATAY	$3.64
6224	DChess	https://coinmarketcap.com/currencies/dchess/	KING	$0.00
6225	CryptoVsZombie	https://coinmarketcap.com/currencies/cryptovszombie/	CVZ	$0.00
6226	OEC FIL	https://coinmarketcap.com/currencies/oec-fil/	FILK	$5.24
6227	Military Finance	https://coinmarketcap.com/currencies/military-finance/	MIL	$0.00
6228	Filecoin Standard Hashrate Token	https://coinmarketcap.com/currencies/filecoin-standard-hashrate-token/	FILST	$0.58
6229	Defrost Finance	https://coinmarketcap.com/currencies/defrost-finance/	MELT	$0.02
6230	Sport Investing	https://coinmarketcap.com/currencies/sport-investing/	SITX	$0.03
6231	ZAT Project	https://coinmarketcap.com/currencies/zatcoin/	ZPRO	$0.00
6232	Kitty Finance	https://coinmarketcap.com/currencies/kitty-finance/	KITTY	$3.43
6233	Socean Staked Sol	https://coinmarketcap.com/currencies/socean-staked-sol/	SCNSOL	$33.97
6234	Nano Dogecoin	https://coinmarketcap.com/currencies/nano-dogecoin/	INDC	$0.00
6235	ProjectFeenix	https://coinmarketcap.com/currencies/projectfeenix/	FEENIXV2	$0.00
6236	Hodl4Gold	https://coinmarketcap.com/currencies/hodl4gold/	H4G	$0.00
6237	Sekuritance	https://coinmarketcap.com/currencies/sekuritance/	SKRT	$0.00
6238	Shitcoin	https://coinmarketcap.com/currencies/shitcoin/	STC	$0.00
6239	HappyLand	https://coinmarketcap.com/currencies/happy-land/	HPL	$0.01
6240	RocketBUSD	https://coinmarketcap.com/currencies/rocketbusd/	RocketBUSD	$0.00
6241	Bmail	https://coinmarketcap.com/currencies/bmail/	BML	$0.00
6242	TOYO	https://coinmarketcap.com/currencies/toyo/	TOYO	$0.09
6243	Erzurumspor Token	https://coinmarketcap.com/currencies/erzurumspor-token/	ERZ	$0.63
6244	ChinaOM	https://coinmarketcap.com/currencies/chinaom/	COM	$0.00
6245	SafeBull	https://coinmarketcap.com/currencies/safebull/	SAFEBULL	$0.00
6246	Oh! Finance	https://coinmarketcap.com/currencies/oh-finance/	OH	$0.00
6247	XRP-BF2	https://coinmarketcap.com/currencies/xrp-bf2/	XRP-BF2	$0.32
6248	HolderMoon	https://coinmarketcap.com/currencies/holdermoon/	HLM	$0.00
6249	Piratera	https://coinmarketcap.com/currencies/piratera/	PIRA	$0.00
6250	Meishu	https://coinmarketcap.com/currencies/meishu/	MEISHU	$0.00
6251	TETU	https://coinmarketcap.com/currencies/tetu/	TETU	$0.01
6252	Cometh	https://coinmarketcap.com/currencies/cometh/	MUST	$9.69
6253	Polygon HBD	https://coinmarketcap.com/currencies/polygon-hbd/	pHBD	$1.00
6254	Travel Care	https://coinmarketcap.com/currencies/travel-care-v2/	TRAVEL	$0.00
6255	CatBoy	https://coinmarketcap.com/currencies/catboy-token/	CATBOY	$0.00
6256	4INT	https://coinmarketcap.com/currencies/4int/	4INT	$0.01
6257	CryptoCars	https://coinmarketcap.com/currencies/cryptocars/	CCAR	$0.00
6258	Baby Moon Floki	https://coinmarketcap.com/currencies/baby-moon-floki/	FLOKI	$0.00
6259	Nurse Cat	https://coinmarketcap.com/currencies/nurse-cat/	NCAT	$0.00
6260	Shib Army	https://coinmarketcap.com/currencies/shib-army/	SHIBARMY	$0.00
6261	Scarab Finance	https://coinmarketcap.com/currencies/scarab-finance/	SCARAB	$0.04
6262	DopeWarz	https://coinmarketcap.com/currencies/dopewarz/	DRUG	$0.00
6263	PoorQuack	https://coinmarketcap.com/currencies/poorquack-com/	POOR	$0.00
6264	Farmers Only	https://coinmarketcap.com/currencies/farmers-only/	FOX	$0.39
6265	Stone DeFi	https://coinmarketcap.com/currencies/stone-token/	STN	$0.03
6266	Shiba Floki Inu	https://coinmarketcap.com/currencies/shiba-floki/	FLOKI	$0.00
6267	Dappsy	https://coinmarketcap.com/currencies/dappsy/	APP	$0.00
6268	renZEC	https://coinmarketcap.com/currencies/renzec/	RENZEC	$54.28
6269	Wrapped Staked HEC	https://coinmarketcap.com/currencies/wrapped-staked-hec/	WSHEC	$116.04
6270	CATpay	https://coinmarketcap.com/currencies/catpay/	CATPAY	$0.00
6271	Derify Protocol	https://coinmarketcap.com/currencies/derify-protocol/	DRF	$0.05
6272	Provenance Blockchain	https://coinmarketcap.com/currencies/provenance-blockchain/	HASH	$0.04
6273	Tank Battle	https://coinmarketcap.com/currencies/tank-battle/	TBL	$0.00
6274	Quadency	https://coinmarketcap.com/currencies/quadency/	QUAD	$0.02
6275	ImpactX	https://coinmarketcap.com/currencies/impactx/	IMPACTX	$0.00
6276	Decentral Games Governance (xDG)	https://coinmarketcap.com/currencies/decentral-games-governance-xdg/	xDG	$0.04
6277	ETNA Metabolism	https://coinmarketcap.com/currencies/etna-metabolism/	MTB	$0.00
6278	Iron	https://coinmarketcap.com/currencies/iron-finance/	IRON	$0.99
6279	Turtle Racing	https://coinmarketcap.com/currencies/turtle-racing/	TURT	$0.00
6280	Netswap	https://coinmarketcap.com/currencies/netswap/	NETT	$0.27
6281	CZbnb	https://coinmarketcap.com/currencies/czbnb/	CZBNB	$210.33
6282	Maximizer	https://coinmarketcap.com/currencies/maximizer/	MAXI	$13.06
6283	NFTBomb	https://coinmarketcap.com/currencies/nftbomb/	NBP	$0.00
6284	Chain Wars	https://coinmarketcap.com/currencies/chain-wars/	CWE	$0.00
6285	TokenBank	https://coinmarketcap.com/currencies/tokenbank/	TBANK	$0.00
6286	Waves Ducks	https://coinmarketcap.com/currencies/waves-ducks/	EGG	$33.87
6287	Hare	https://coinmarketcap.com/currencies/hare/	HARE	$0.00
6288	FanVerse	https://coinmarketcap.com/currencies/fanverse/	FANV	$0.01
6289	FOMO Chronicles Manga	https://coinmarketcap.com/currencies/fomo-chronicles/	OTAKU	$0.00
6290	Sea Token	https://coinmarketcap.com/currencies/seatoken/	SEA	$0.05
6291	ZONE	https://coinmarketcap.com/currencies/zone/	ZONE	$0.01
6292	DEEPMAZE Finance	https://coinmarketcap.com/currencies/deepmaze-finance/	DPZ	$0.00
6293	Step Hero Soul	https://coinmarketcap.com/currencies/step-hero-step/	STEP	$0.00
6294	Lemonn	https://coinmarketcap.com/currencies/lemonn/	LMN	$0.02
6295	Decentralized Universal Basic Income	https://coinmarketcap.com/currencies/decentralized-universal-basic-income/	DUBI	$9.88
6296	5KM	https://coinmarketcap.com/currencies/5km/	KMT	$0.00
6297	Plutos Network	https://coinmarketcap.com/currencies/plutos-network/	PLUT	$0.00
6298	Hero Arena	https://coinmarketcap.com/currencies/hero-arena/	HERA	$0.01
6299	One Pearl	https://coinmarketcap.com/currencies/one-pearl/	(╬Ф)	$0.00
6300	Plutos Network	https://coinmarketcap.com/currencies/plutos-network/	PLUT	$0.004949
6301	Hero Arena	https://coinmarketcap.com/currencies/hero-arena/	HERA	$0.01177
6302	One Pearl	https://coinmarketcap.com/currencies/one-pearl/	(╬Ф)	$0.00000001474
6303	Stay In Destiny World	https://coinmarketcap.com/currencies/stay-in-destiny-world/	SIW	$0.00953
6304	Kragger Inu	https://coinmarketcap.com/currencies/kragger-inu/	KINU	$0.00002026
6305	Piggy Share	https://coinmarketcap.com/currencies/piggy-share/	PSHARE	$2.77
6306	EternalFlow	https://coinmarketcap.com/currencies/eternalflow/	EFT	$0.000000001131
6307	Web2 Inu	https://coinmarketcap.com/currencies/web2-inu/	WEB2	$0.000000002973
6308	Librium Tech	https://coinmarketcap.com/currencies/librium-tech/	LIB	$0.001085
6309	Hero Cat Key	https://coinmarketcap.com/currencies/herocatkey/	HCK	$1.35
6310	EZDex	https://coinmarketcap.com/currencies/ezdex/	EZX	$0.13
6311	ChinaZilla	https://coinmarketcap.com/currencies/chinazilla/	CHINAZILLA	$0.00
6312	Rens Token	https://coinmarketcap.com/currencies/rens-token/	RENS	$0.00
6313	Anomus	https://coinmarketcap.com/currencies/anomus/	ANOM	$0.00
6314	MetaNFT	https://coinmarketcap.com/currencies/metanft/	MNFT	$0.00
6315	Baby Cat Coin	https://coinmarketcap.com/currencies/baby-cat-coin/	BABYCATS	$0.00
6316	Sing To Earn	https://coinmarketcap.com/currencies/sing-to-earn/	S2E	$0.00
6317	DEFIAI	https://coinmarketcap.com/currencies/defiai/	DFAI	$0.00
6318	Aetherius	https://coinmarketcap.com/currencies/aetherius/	AETH	$0.00
6319	Universal Basic Income	https://coinmarketcap.com/currencies/universal-basic-income/	UBI	$0.01
6320	Whive Protocol	https://coinmarketcap.com/currencies/the-whive-protocol/	WHIVE	$0.01
6321	The Neighbours	https://coinmarketcap.com/currencies/the-neighbours/	NEIBR	$5.16
6322	Snowbank	https://coinmarketcap.com/currencies/snowbank/	SB	$217.68
6323	Blockster	https://coinmarketcap.com/currencies/blockster/	BXR	$0.01
6324	Universe Finance	https://coinmarketcap.com/currencies/universe-finance/	UNT	$0.00
6325	Fragments of arker	https://coinmarketcap.com/currencies/fragments-of-arker/	FOA	$0.00
6326	OtherDAO	https://coinmarketcap.com/currencies/otherdao/	OTHR	$0.23
6327	SOS Amazonia	https://coinmarketcap.com/currencies/sos-amazonia/	SOSAMZ	$0.00
6328	InfinityPad	https://coinmarketcap.com/currencies/infinitypad/	INFP	$0.00
6329	Viper Protocol	https://coinmarketcap.com/currencies/viper-protocol/	VIPER	$0.00
6330	Bitcoin File	https://coinmarketcap.com/currencies/bitcoin-file/	BIFI	$0.00
6331	Moonarch.app	https://coinmarketcap.com/currencies/moonarch-app/	MOONARCH	$0.00
6332	Egoras Credit	https://coinmarketcap.com/currencies/egoras-credit/	EGC	$71.64
6333	ZodiacsV2	https://coinmarketcap.com/currencies/zodiacs-v2/	ZDCV2	$0.00
6334	Teddy Cash	https://coinmarketcap.com/currencies/teddy-cash/	TEDDY	$0.00
6335	BattleMechs	https://coinmarketcap.com/currencies/battlemechs/	GEMZ	$0.11
6336	Alkemi Network DAO Token	https://coinmarketcap.com/currencies/alkemi-network-dao-token/	ALK	$0.01
6337	CROC BOY	https://coinmarketcap.com/currencies/croc-boy/	CROC	$0.00
6338	Cosmik Finance	https://coinmarketcap.com/currencies/cosmik-finance/	COSMIK	$0.15
6339	SafeHamsters	https://coinmarketcap.com/currencies/safehamsters/	SAFEHAMSTERS	$0.00
6340	GNFT	https://coinmarketcap.com/currencies/gnft/	GNFT	$2.78
6341	One Share	https://coinmarketcap.com/currencies/one-share/	ONS	$1.90
6342	Space Pig Coin	https://coinmarketcap.com/currencies/space-pig-coin/	SPACEPIG	$0.00
6343	BecoSwap Token	https://coinmarketcap.com/currencies/becoswap-token/	BECO	$0.00
6344	Parabolic	https://coinmarketcap.com/currencies/parabolic/	PARA	$0.00
6345	CoinxPad	https://coinmarketcap.com/currencies/coinxpad/	CXPAD	$0.00
6346	TrustNFT	https://coinmarketcap.com/currencies/trustnft/	TRUSTNFT	$0.00
6347	Munch Token	https://coinmarketcap.com/currencies/munch-token/	MUNCH	$0.00
6348	Dynasty Global Investments	https://coinmarketcap.com/currencies/dynasty-global-investments/	DYN	$33.58
6349	Umi Digital	https://coinmarketcap.com/currencies/umi-digital/	UMI	$0.00
6350	Retrogression	https://coinmarketcap.com/currencies/retrogression/	RTGN	$0.00
6351	MineCrypto	https://coinmarketcap.com/currencies/minecrypto/	MCR	$0.02
6352	DogeQueen	https://coinmarketcap.com/currencies/dogequeen/	DOGEQUEEN	$0.00
6353	Shinji Inu	https://coinmarketcap.com/currencies/shinji-inu/	SHINJI	$0.00
6354	Forge Finance	https://coinmarketcap.com/currencies/forge-finance/	FORGE	$0.01
6355	Sashimi	https://coinmarketcap.com/currencies/sashimi/	SASHIMI	$0.00
6356	GOMA Finance [OLD]	https://coinmarketcap.com/currencies/goma-finance/	GOMA	$0.00
6357	ORE Token	https://coinmarketcap.com/currencies/ore-token/	ORE	$0.00
6358	Fantom Maker	https://coinmarketcap.com/currencies/fantom-maker/	FAME	$0.01
6359	Pagan Gods	https://coinmarketcap.com/currencies/pagan-gods/	FUR	$0.00
6360	Ashward	https://coinmarketcap.com/currencies/ashward/	ASC	$0.01
6361	Dreamy Undersea World	https://coinmarketcap.com/currencies/dreamy-undersea-world/	DUW	$0.00
6362	Ninja Squad Token	https://coinmarketcap.com/currencies/ninja-squad-token/	NST	$0.20
6363	nSights DeFi Trader	https://coinmarketcap.com/currencies/nsights-defi-trader/	NSI	$0.00
6364	Planet Sandbox	https://coinmarketcap.com/currencies/planet-sandbox/	PSB	$0.02
6365	Vira-lata Finance	https://coinmarketcap.com/currencies/vira-lata-finance/	REAU	$0.00
6366	Bostrom	https://coinmarketcap.com/currencies/bostrom/	BOOT	$0.00
6367	Talkado	https://coinmarketcap.com/currencies/talkado/	TALK	$0.00
6368	Emit Water Element	https://coinmarketcap.com/currencies/emit-water-element/	WATER	$0.01
6369	Jaiho Crypto	https://coinmarketcap.com/currencies/jaiho-crypto/	JAIHO	$0.00
6370	Luniverse	https://coinmarketcap.com/currencies/lady-uni/	LUNI	$0.00
6371	DPK	https://coinmarketcap.com/currencies/dpk/	DPK TOKEN	$0.00
6372	Wanaka Farm WAIRERE Token	https://coinmarketcap.com/currencies/wairere-token/	WAI	$0.00
6373	XGOLD COIN	https://coinmarketcap.com/currencies/xgold-coin/	XGOLD	$0.00
6374	APEcoin.dev	https://coinmarketcap.com/currencies/apecoin/	APE	$0.00
6375	Silverway	https://coinmarketcap.com/currencies/silverway/	SLV	$0.00
6376	Ballswapper Accelerator Reflection Token	https://coinmarketcap.com/currencies/ballswapper-accelerator-reflection-token/	BART	$0.00
6377	ok.lets.go.	https://coinmarketcap.com/currencies/ok-lets-go/	OKLG	$0.00
6378	IceCream Shares	https://coinmarketcap.com/currencies/icecream-shares/	CSHARE	$0.31
6379	Tanks For Playing	https://coinmarketcap.com/currencies/tanks-for-playing/	TANKS	$0.00
6380	CryptoBattles	https://coinmarketcap.com/currencies/cryptobattles/	CBT	$0.00
6381	OEC SHIB	https://coinmarketcap.com/currencies/oec-shib/	SHIBK	$0.00
6382	Amazon tokenized stock FTX	https://coinmarketcap.com/currencies/amazon-tokenized-stock-ftx/	AMZN	$109.20
6383	TUNE TOKEN	https://coinmarketcap.com/currencies/tune-token/	TUNE	$0.00
6384	CAPITAL X CELL	https://coinmarketcap.com/currencies/capital-x-cell/	CXC	$0.00
6385	TraDAO	https://coinmarketcap.com/currencies/tradao/	TOD	$0.55
6386	Bitlocus	https://coinmarketcap.com/currencies/bitlocus/	BTL	$0.01
6387	Metakillers	https://coinmarketcap.com/currencies/metakillers/	KILL	$0.00
6388	DFS MAFIA	https://coinmarketcap.com/currencies/dfs-mafia/	DFSM	$0.00
6389	Medano	https://coinmarketcap.com/currencies/medano/	MDO	$0.00
6390	bePAY Finance	https://coinmarketcap.com/currencies/bepay/	BECOIN	$0.00
6391	Bitcrush	https://coinmarketcap.com/currencies/bitcrush/	CRUSH	$0.00
6392	Shisha	https://coinmarketcap.com/currencies/shisha/	SHISH	$0.00
6393	CryptoPlants Club	https://coinmarketcap.com/currencies/cryptoplants/	CPC	$0.02
6394	Rocket Race	https://coinmarketcap.com/currencies/defihorse-rocket-race/	RR	$0.04
6395	EverETH	https://coinmarketcap.com/currencies/evereth/	EVERETH	$0.00
6396	Atlantis Loans	https://coinmarketcap.com/currencies/atlantis-loans/	ATL	$0.17
6397	Kally	https://coinmarketcap.com/currencies/polkally/	KALLY	$0.00
6398	Citrus	https://coinmarketcap.com/currencies/citrus/	CTS	$0.26
6399	Mindfolk Wood	https://coinmarketcap.com/currencies/mindfolk-wood/	$WOOD	$0.08
6400	UltraSafe Token	https://coinmarketcap.com/currencies/ultrasafe/	ULTRA	$0.0...00877
6401	Kyuubi	https://coinmarketcap.com/currencies/kyuubi/	$KYUB	$0.00000005423
6402	ORBIS	https://coinmarketcap.com/currencies/orbis/	ORBC	$0.3904
6403	META Gaming	https://coinmarketcap.com/currencies/real-metagaming/	RMG	$0.00000001724
6404	DeathRoad	https://coinmarketcap.com/currencies/deathroad/	DRACE	$0.003143
6405	Multiverse Capital	https://coinmarketcap.com/currencies/multiverse-capital/	MVC	$0.0000001188
6406	CrypterToken	https://coinmarketcap.com/currencies/cryptertoken/	CRYPT	$0.0...05088
6407	Pixel Swap	https://coinmarketcap.com/currencies/pixel-swap/	PIXEL	$0.00001887
6408	ZION	https://coinmarketcap.com/currencies/zion/	ZION	$0.001389
6409	PolkaParty	https://coinmarketcap.com/currencies/polkaparty/	POLP	$0.004662
6410	Wild Island Game	https://coinmarketcap.com/currencies/wild-island-game/	WILD	$0.00
6411	Hypersign identity	https://coinmarketcap.com/currencies/hypersign-identity/	HID	$0.01
6412	Joltify	https://coinmarketcap.com/currencies/joltify/	JOLT	$0.04
6413	Shiba Inu Mother	https://coinmarketcap.com/currencies/shiba-inu-mother/	SHIBM	$0.00
6414	Curve.fi gDAI/gUSDC/gUSDT	https://coinmarketcap.com/currencies/curve-fi-gdai-gusdc-gusdt/	G3CRV	$1.04
6415	Metaxy	https://coinmarketcap.com/currencies/metaxy/	MXY	$0.00
6416	NFT ROYAL TOKEN	https://coinmarketcap.com/currencies/nft-royal-token/	NRT	$0.38
6417	Dogggo	https://coinmarketcap.com/currencies/dogggo/	DOGGGO	$0.00
6418	Diamond Boyz Coin	https://coinmarketcap.com/currencies/diamond-boyz-coin/	DBZ	$0.00
6419	Artik	https://coinmarketcap.com/currencies/artik/	ARTK	$0.00
6420	MELONx	https://coinmarketcap.com/currencies/melonx/	MLNX	$0.00
6421	BLOCKMAX	https://coinmarketcap.com/currencies/blockmax/	OCB	$0.03
6422	Fitness Instructor	https://coinmarketcap.com/currencies/fitness-instructor/	FITI	$0.00
6423	AutoShark DEX	https://coinmarketcap.com/currencies/autoshark-dex/	FINS	$0.00
6424	The Monopolist	https://coinmarketcap.com/currencies/the-monopolist/	MONO	$0.00
6425	Agrinoble	https://coinmarketcap.com/currencies/agrinoble/	AGN	$0.00
6426	ARTi Project	https://coinmarketcap.com/currencies/arti-project/	ARTI	$0.03
6427	MetaGin	https://coinmarketcap.com/currencies/metagin/	METAGIN	$0.00
6428	QuinCoin	https://coinmarketcap.com/currencies/quincoin/	QIN	$0.00
6429	Snowy Owl	https://coinmarketcap.com/currencies/snowy-owl/	SNO	$0.00
6430	AetherV2	https://coinmarketcap.com/currencies/aetherv2/	ATH	$0.00
6431	Elfworld	https://coinmarketcap.com/currencies/elfworld/	ELFT	$0.03
6432	DeFido	https://coinmarketcap.com/currencies/defido/	DEFIDO	$0.00
6433	Barter	https://coinmarketcap.com/currencies/barter/	BRTR	$0.00
6434	Starname	https://coinmarketcap.com/currencies/starname/	IOV	$0.01
6435	BeforeCoinMarketCap	https://coinmarketcap.com/currencies/beforecoinmarketcap/	BCMC1	$0.00
6436	SoulSwap Finance	https://coinmarketcap.com/currencies/soulswap-finance/	SOUL	$0.01
6437	Walter Inu	https://coinmarketcap.com/currencies/walterinu/	$WINU	$0.00
6438	ZeroHybrid Network	https://coinmarketcap.com/currencies/zerohybrid-network/	ZHT	$0.00
6439	Ezillion	https://coinmarketcap.com/currencies/ezillion/	EZI	$0.00
6440	SolChicks Shards	https://coinmarketcap.com/currencies/solchicks-shards/	SHARDS	$0.00
6441	Total Crypto Market Cap Token	https://coinmarketcap.com/currencies/total-crypto-market-cap-token/	TCAP	$108.98
6442	Sriracha Inu	https://coinmarketcap.com/currencies/sriracha-inu/	SRIRACHA	$0.00
6443	Boryoku Dragonz	https://coinmarketcap.com/currencies/boku/	BOKU	$0.25
6444	Sleep Ecosystem	https://coinmarketcap.com/currencies/sleep-ecosystem/	SLEEP	$0.00
6445	Chickenkebab Finance	https://coinmarketcap.com/currencies/chickenkebab-finance/	CHIK	$0.00
6446	Avaware	https://coinmarketcap.com/currencies/avaware/	AVE	$0.01
6447	Hashmasks	https://coinmarketcap.com/currencies/hashmasks/	MASK20	$16.84
6448	MoneydefiSwap	https://coinmarketcap.com/currencies/moneydefiswap/	MSD	$0.00
6449	Bluca	https://coinmarketcap.com/currencies/bluca/	BLUC	$0.00
6450	Hosky Token	https://coinmarketcap.com/currencies/hosky-token/	HOSKY	$0.00
6451	Uzyth	https://coinmarketcap.com/currencies/uzyth/	ZYTH	$0.06
6452	Basis Share	https://coinmarketcap.com/currencies/basis-share/	BAS	$0.28
6453	Harambe Protocol	https://coinmarketcap.com/currencies/harambe-protocol/	RIPH	$0.00
6454	Baby Squid Game	https://coinmarketcap.com/currencies/baby-squid-game/	BSG	$0.00
6455	xUSD	https://coinmarketcap.com/currencies/xusd/	XUSD	$0.46
6456	Mobius Money	https://coinmarketcap.com/currencies/mobius-money/	MOBI	$0.00
6457	GenCoin Capital	https://coinmarketcap.com/currencies/gencoin-capital/	GENCAP	$0.00
6458	Medium	https://coinmarketcap.com/currencies/medium/	MDM	$0.24
6459	NFTY DeFi Protocol	https://coinmarketcap.com/currencies/nifty-defi-protocol/	NFTY	$0.04
6460	FANG Token	https://coinmarketcap.com/currencies/fang-token/	FANG	$0.12
6461	BIG ETH	https://coinmarketcap.com/currencies/big-eth/	BIGETH	$0.00
6462	Shoppi Coin	https://coinmarketcap.com/currencies/shoppi-coin/	SHOP	$0.00
6463	MetaDoge V2	https://coinmarketcap.com/currencies/metadoge/	METADOGEV2	$0.00
6464	ARTIC Foundation	https://coinmarketcap.com/currencies/artic-foundation/	ARTIC	$0.06
6465	concertVR-Token	https://coinmarketcap.com/currencies/concertvr-token/	CVT	$0.02
6466	METAWORLD	https://coinmarketcap.com/currencies/metaworld-token/	METAWORLD	$0.00
6467	Milk	https://coinmarketcap.com/currencies/milk/	MILK	$0.00
6468	Zada	https://coinmarketcap.com/currencies/zada/	ZADA	$0.00
6469	Vikings Inu	https://coinmarketcap.com/currencies/vikings-inu/	VIKINGS	$0.00
6470	Web3 ALL BEST ICO	https://coinmarketcap.com/currencies/web3-all-best-ico/	WEB3ALLBI	$0.00
6471	Gale Network	https://coinmarketcap.com/currencies/gale-network/	GALE	$0.00
6472	BrandPad Finance	https://coinmarketcap.com/currencies/brandpad-finance/	BRAND	$0.01
6473	Pocket Arena	https://coinmarketcap.com/currencies/pocket-arena/	POC	$0.09
6474	GoodDollar	https://coinmarketcap.com/currencies/gooddollar/	G$	$0.00
6475	PDSHARE	https://coinmarketcap.com/currencies/pdshare/	PDSHARE	$0.27
6476	Vanity	https://coinmarketcap.com/currencies/vanity/	VNY	$0.00
6477	WallStreet Finance	https://coinmarketcap.com/currencies/wallstreet-finance-app/	WSF	$0.01
6478	Butterfly Protocol	https://coinmarketcap.com/currencies/butterfly-protocol-2/	BFLY	$0.03
6479	Greyhound	https://coinmarketcap.com/currencies/greyhound/	GREYHOUND	$0.00
6480	Prometheus	https://coinmarketcap.com/currencies/prometheus/	PHI	$1.16
6481	SnakeCity	https://coinmarketcap.com/currencies/snakecity/	SNCT	$0.01
6482	Omni Real Estate Token	https://coinmarketcap.com/currencies/omni-real-estate-token/	ORT	$0.02
6483	Health Potion	https://coinmarketcap.com/currencies/health-potion/	HEP	$0.00
6484	Arable Protocol	https://coinmarketcap.com/currencies/arable-protocol/	ACRE	$0.01
6485	Grape Network	https://coinmarketcap.com/currencies/grape-network/	GRAPE	$0.01
6486	Omni Cash	https://coinmarketcap.com/currencies/omni-cash/	OCA$H	$0.01
6487	Unobtanium	https://coinmarketcap.com/currencies/unobtanium/	UNO	$13.62
6488	Moshiheads	https://coinmarketcap.com/currencies/moshiheads/	MOSHI	$0.15
6489	Tuzlaspor Token	https://coinmarketcap.com/currencies/tuzlaspor-token/	TUZLA	$0.57
6490	ZilStream	https://coinmarketcap.com/currencies/zilstream/	STREAM	$0.02
6491	Ethereum Meta	https://coinmarketcap.com/currencies/ethereum-meta/	ETHM	$0.00
6492	Gambit	https://coinmarketcap.com/currencies/gambit-finance/	GMT	$0.82
6493	Hyperchain X	https://coinmarketcap.com/currencies/hyperchain-x/	HYPER	$0.00
6494	Unobtainium	https://coinmarketcap.com/currencies/unobtainium/	UNO	$0.01
6495	Vancat	https://coinmarketcap.com/currencies/vancat-v2/	VANCAT	$0.00
6496	Mother of Memes	https://coinmarketcap.com/currencies/mother-of-memes/	MOM	$0.00
6497	ARK Innovation ETF tokenized stock FTX	https://coinmarketcap.com/currencies/ark-innovation-etf-tokenized-stock-ftx/	ARKK	$41.63
6498	0xDAO V2	https://coinmarketcap.com/currencies/0xdao-v2/	OXD V2	$0.15
6499	Airbnb tokenized stock FTX	https://coinmarketcap.com/currencies/airbnb-tokenized-stock-ftx/	ABNB	$91.67
6500	Coinversation	https://coinmarketcap.com/currencies/coinversation/	CTO	$0.02897
6501	SOLCash	https://coinmarketcap.com/currencies/solcash/	SOLCASH	$0.0005419
6502	ClassZZ	https://coinmarketcap.com/currencies/classzz/	CZZ	$0.01719
6503	Amasa	https://coinmarketcap.com/currencies/amasa/	AMAS	$0.01158
6504	MDB Plus	https://coinmarketcap.com/currencies/mdb-plus/	MDB+	$1.14
6505	Dragon	https://coinmarketcap.com/currencies/dragon/	DRAGON	$0.0009498
6506	H2Finance	https://coinmarketcap.com/currencies/h2finance/	YFIH2	$1.42
6507	ROPE Token	https://coinmarketcap.com/currencies/rope-token/	ROPE	$0.03523
6508	Wallet Plus X	https://coinmarketcap.com/currencies/wallet-plus-x/	WPX	$0.00007403
6509	srnArtGallery Tokenized Arts	https://coinmarketcap.com/currencies/srnartgallery-tokenized-arts/	SISTA	$0.000469
6510	Bolt Dollar	https://coinmarketcap.com/currencies/bat-true-dollar/	BTD	$0.02
6511	peachfolio	https://coinmarketcap.com/currencies/peachfolio/	PCHF	$0.00
6512	LYFE GOLD	https://coinmarketcap.com/currencies/lyfe-gold/	LGOLD	$51.50
6513	fBomb	https://coinmarketcap.com/currencies/fbomb/	BOMB	$0.00
6514	Shuey Rhon Inu	https://coinmarketcap.com/currencies/shuey-rhon-inu/	SHUEY	$0.00
6515	Unified Society Quantum	https://coinmarketcap.com/currencies/unified-society-quantum/	USX	$0.00
6516	Atlantis Metaverse	https://coinmarketcap.com/currencies/atlantis-metaverse/	TAU	$0.00
6517	AUREO	https://coinmarketcap.com/currencies/age-of-cryptology/	AUR	$0.00
6518	Avaware USD	https://coinmarketcap.com/currencies/avaware-usd/	AUSD	$0.99
6519	Severe Rise Games Token	https://coinmarketcap.com/currencies/severe-rise-games-token/	SRGT	$0.00
6520	Kaiken Shiba	https://coinmarketcap.com/currencies/kaiken-shiba/	KSHIB	$0.00
6521	Akitavax	https://coinmarketcap.com/currencies/akitavax/	AKITAX	$0.00
6522	Baby Floki (BSC)	https://coinmarketcap.com/currencies/baby-floki/	BABYFLOKI	$0.00
6523	Ethera Black	https://coinmarketcap.com/currencies/ethera-black/	ETB	$0.00
6524	Floki Musk	https://coinmarketcap.com/currencies/floki-musk/	FLOKI	$0.00
6525	Nerian Network	https://coinmarketcap.com/currencies/nerian-network/	NERIAN	$0.03
6526	NumisMe	https://coinmarketcap.com/currencies/numisme/	NUME	$0.03
6527	H2O	https://coinmarketcap.com/currencies/h2o-poseidon/	PSDN	$2.59
6528	PYRAMIDWALK	https://coinmarketcap.com/currencies/pyramidwalk/	PYRA	$0.01
6529	FOHO Coin	https://coinmarketcap.com/currencies/foho-coin/	FOHO	$0.01
6530	TacoCat Token	https://coinmarketcap.com/currencies/tacocat-token/	TCT	$0.00
6531	Dogecolony	https://coinmarketcap.com/currencies/dogecolony/	DOGECO	$0.00
6532	AppleSwap	https://coinmarketcap.com/currencies/appleswap-token/	APPLE	$0.00
6533	Haruno Inu	https://coinmarketcap.com/currencies/haruno-inu/	HARUNO	$0.00
6534	TOKEN SHELBY	https://coinmarketcap.com/currencies/token-shelby/	TSY	$0.00
6535	MetaGalaxy	https://coinmarketcap.com/currencies/metagalaxy/	MGXY	$0.00
6536	GLYPH Vault (NFTX)	https://coinmarketcap.com/currencies/glyph-vault-nftx/	GLYPH	$51971.43
6537	PathFundV2	https://coinmarketcap.com/currencies/pathfundv2/	PATH	$0.01
6538	Metaverse Network	https://coinmarketcap.com/currencies/metaverse-network/	METANET	$0.00
6539	Contracto	https://coinmarketcap.com/currencies/contracto/	LOCK	$0.00
6540	Greed	https://coinmarketcap.com/currencies/greed-ecosystem/	GREED	$0.00
6541	Defrost Finance	https://coinmarketcap.com/currencies/defrost-finance-h20/	H2O	$0.88
6542	3X Short TRX Token	https://coinmarketcap.com/currencies/3x-short-trx-token/	TRXBEAR	$0.00
6543	STREETH	https://coinmarketcap.com/currencies/streeth/	STREETH	$0.01
6544	Unilab	https://coinmarketcap.com/currencies/unilab/	ULAB	$0.01
6545	Influencer	https://coinmarketcap.com/currencies/imi/	IMI	$0.02
6546	ZeroFi	https://coinmarketcap.com/currencies/zerofi/	ZERI	$0.01
6547	Jacy	https://coinmarketcap.com/currencies/jacy/	JACY	$0.00
6548	Squid Moon	https://coinmarketcap.com/currencies/squid-moon/	SQM	$0.05
6549	Ecio	https://coinmarketcap.com/currencies/ecio/	ECIO	$0.00
6550	ArchAngel Token	https://coinmarketcap.com/currencies/archangel-token/	ARCHA	$0.00
6551	Honey Deluxe Token	https://coinmarketcap.com/currencies/honey-deluxe-token/	HONEYD	$0.20
6552	IterationSyndicate	https://coinmarketcap.com/currencies/iterationsyndicate/	ITS	$5.63
6553	UNITED EMIRATE DECENTRALIZED COIN.	https://coinmarketcap.com/currencies/united-emirate-decentralized-coin/	UEDC	$0.01
6554	MetaFame	https://coinmarketcap.com/currencies/metafame/	BMF	$0.00
6555	CPLAY Network	https://coinmarketcap.com/currencies/cplay-network/	CPLAY	$0.00
6556	Unreal Finance	https://coinmarketcap.com/currencies/unreal-finance/	UGT	$0.00
6557	XStorage	https://coinmarketcap.com/currencies/xstorage/	XSTX	$0.00
6558	Mollector	https://coinmarketcap.com/currencies/mollector/	MOL	$0.00
6559	Boo Finance	https://coinmarketcap.com/currencies/boo-finance/	BOOFI	$0.02
6560	EpicHero 3D NFT	https://coinmarketcap.com/currencies/epichero-3d-nft/	EPICHERO	$0.00
6561	OASISBloc	https://coinmarketcap.com/currencies/oasisbloc/	OSB	$0.02
6562	Arena Token	https://coinmarketcap.com/currencies/arena-token/	ARENA	$0.04
6563	DAO Farmer DFG	https://coinmarketcap.com/currencies/dao-farmer-dfg/	DFG	$0.00
6564	HappyLand Reward	https://coinmarketcap.com/currencies/happyland/	HPW	$0.00
6565	ZeLoop Eco Reward	https://coinmarketcap.com/currencies/zeloop-eco-reward/	ERW	$0.00
6566	Squishiverse	https://coinmarketcap.com/currencies/squishiverse/	SLIME	$0.00
6567	oxSOLID	https://coinmarketcap.com/currencies/oxsolid/	OXSOLID	$0.02
6568	Nabob	https://coinmarketcap.com/currencies/nabob/	NABOB	$0.00
6569	GinSpirit	https://coinmarketcap.com/currencies/ginspirit/	GINSPIRIT	$0.00
6570	Zombie World Z	https://coinmarketcap.com/currencies/zombie-world-z/	ZWZ	$0.01
6571	Kaiba DeFi	https://coinmarketcap.com/currencies/kaiba-inu/	KAIBA	$0.01
6572	South African Tether	https://coinmarketcap.com/currencies/south-african-tether/	xZAR	$0.06
6573	Kingdomswap (New)	https://coinmarketcap.com/currencies/kingdomswap-2/	KS2	$0.00
6574	Amaterasu Finance	https://coinmarketcap.com/currencies/amaterasu-finance/	IZA	$0.14
6575	CatBonk	https://coinmarketcap.com/currencies/catbonk/	CABO	$0.00
6576	ExzoCoin 2.0	https://coinmarketcap.com/currencies/exzocoin-2/	EXZO	$0.00
6577	Metacyber	https://coinmarketcap.com/currencies/metacyber/	METAC	$0.00
6578	Empower	https://coinmarketcap.com/currencies/empower/	MPWR	$3.58
6579	Litecoin TRC20	https://coinmarketcap.com/currencies/litecoin-trc20/	LTCT	$50.13
6580	blocsport.one	https://coinmarketcap.com/currencies/blocsport-one/	BLS	$0.00
6581	Chicken	https://coinmarketcap.com/currencies/chicken/	KFC	$0.00
6582	Credmark	https://coinmarketcap.com/currencies/credmark/	CMK	$0.11
6583	K-Tune	https://coinmarketcap.com/currencies/k-tune/	KTT	$0.03
6584	KOROMARU	https://coinmarketcap.com/currencies/koromaru/	KOROMARU	$0.00
6585	Sovi Finance	https://coinmarketcap.com/currencies/sovi-finance/	SOVI	$0.72
6586	Content Coin	https://coinmarketcap.com/currencies/content-coin/	CONT	$0.00
6587	WaultSwap	https://coinmarketcap.com/currencies/waultswap/	WEX	$0.00
6588	Infinite Ecosystem	https://coinmarketcap.com/currencies/infinite-ecosystem/	INFINITY	$2.49
6589	Boorio	https://coinmarketcap.com/currencies/boorio/	ORIO	$0.00
6590	Quoth	https://coinmarketcap.com/currencies/quoth/	QUOTH	$0.03
6591	Eroverse	https://coinmarketcap.com/currencies/eroverse/	ERO	$0.00
6592	Dexigas	https://coinmarketcap.com/currencies/dexigas/	DXG	$0.00
6593	WOLFCOIN	https://coinmarketcap.com/currencies/wolfcoin-wolf/	WOLF	$0.00
6594	Daddy Doge	https://coinmarketcap.com/currencies/daddy-doge/	DADDYDOGE	$0.00
6595	Doge Gay Son	https://coinmarketcap.com/currencies/dogegayson/	GOGE	$0.00
6596	SIN COIN	https://coinmarketcap.com/currencies/sin-coin/	SIN	$0.00
6597	Boxch	https://coinmarketcap.com/currencies/naxar/	BOXCH	$0.01
6598	SamuraiBattle	https://coinmarketcap.com/currencies/samuraibattle/	SMB	$0.00
6599	FamilyParty	https://coinmarketcap.com/currencies/familyparty/	FPC	$0.00
6600	DeFIRE	https://coinmarketcap.com/currencies/defire/	CWAP	$0.03478
6601	onLEXpa	https://coinmarketcap.com/currencies/onlexpa/	onLEXpa	$0.000001893
6602	Lobby	https://coinmarketcap.com/currencies/lobby/	LBY	$0.0001442
6603	SingMe	https://coinmarketcap.com/currencies/singme/	SINGME	$0.00007567
6604	Hodl Finance	https://coinmarketcap.com/currencies/hodl-finance/	HFT	$0.00000911
6605	Shaman King Inu	https://coinmarketcap.com/currencies/shaman-king-inu/	SHAMAN	$0.0...07808
6606	DPWK	https://coinmarketcap.com/currencies/dpwk/	DPWK	$0.02955
6607	MegaToken	https://coinmarketcap.com/currencies/megatoken/	MEGA	$0.000001745
6608	The Realm Defenders	https://coinmarketcap.com/currencies/the-realm-defenders/	TRD	$0.001149
6609	Onyx	https://coinmarketcap.com/currencies/onyx/	ONYX	$0.0006401
6610	TWEELON	https://coinmarketcap.com/currencies/tweelon/	TWEELON	$0.00
6611	StakeWise	https://coinmarketcap.com/currencies/stakewise/	SWISE	$0.05
6612	Light Year	https://coinmarketcap.com/currencies/light-year/	LC	$0.01
6613	0x_nodes	https://coinmarketcap.com/currencies/0x-nodes/	BIOS	$0.09
6614	Stopelon	https://coinmarketcap.com/currencies/stopelon/	STOPELON	$0.00
6615	SHKOOBY INU	https://coinmarketcap.com/currencies/shkooby-inu/	SHKOOBY	$0.00
6616	1Doge	https://coinmarketcap.com/currencies/1doge/	1DOGE	$0.00
6617	Score Token	https://coinmarketcap.com/currencies/score-token/	SCO	$0.01
6618	Hashtagger.com	https://coinmarketcap.com/currencies/hashtagger-com/	MOOO	$0.05
6619	Lockness	https://coinmarketcap.com/currencies/lockness/	LKN	$0.00
6620	Alita Finance	https://coinmarketcap.com/currencies/alita-finance/	ALI	$0.09
6621	CorgiCoin	https://coinmarketcap.com/currencies/corgicoin-net/	CORGI	$0.00
6622	ZooCoin	https://coinmarketcap.com/currencies/zoocoin/	ZOO	$0.00
6623	La Peseta	https://coinmarketcap.com/currencies/la-peseta/	PTA	$0.00
6624	UangMarket	https://coinmarketcap.com/currencies/uangmarket/	UANG	$0.00
6625	Tokenarium	https://coinmarketcap.com/currencies/tokenarium/	TKNRM	$0.00
6626	Kabosu	https://coinmarketcap.com/currencies/kabosu/	KABOSU	$0.00
6627	Somnium	https://coinmarketcap.com/currencies/somnium/	SOM	$0.00
6628	CrossSwap	https://coinmarketcap.com/currencies/crossswap/	CSWAP	$0.01
6629	AurusDeFi	https://coinmarketcap.com/currencies/aurusdefi/	AWX	$0.96
6630	IXO	https://coinmarketcap.com/currencies/ixo/	IXO	$0.03
6631	H2O	https://coinmarketcap.com/currencies/h2o-token/	H2O	$1.47
6632	Kokoswap	https://coinmarketcap.com/currencies/kokoswap/	KOKO	$1.00
6633	IceCream Finance	https://coinmarketcap.com/currencies/icecream-finance/	CREAM	$0.78
6634	Verify DeFi	https://coinmarketcap.com/currencies/verify-defi/	VERIFY	$0.00
6635	French Digital Reserve	https://coinmarketcap.com/currencies/french-digital-reserve/	FDR	$0.19
6636	Salary Mining	https://coinmarketcap.com/currencies/salary-mining/	SLRM	$0.00
6637	KILLTHEZERO	https://coinmarketcap.com/currencies/killthezero/	KTZ	$0.00
6638	PeeCoin Charts	https://coinmarketcap.com/currencies/peecoin-charts/	PEECOIN	$0.00
6639	Fortune	https://coinmarketcap.com/currencies/fortune/	FORTUNE	$0.00
6640	Shiba Heist	https://coinmarketcap.com/currencies/shiba-heist/	HEIST	$0.00
6641	Mundo	https://coinmarketcap.com/currencies/mundo/	$MUNDO	$0.02
6642	Defily Finance	https://coinmarketcap.com/currencies/defily-finance/	DFL	$0.00
6643	pSTAKE Staked ATOM	https://coinmarketcap.com/currencies/pstake/	STKATOM	$7.69
6644	My Crypto City	https://coinmarketcap.com/currencies/my-crypto-city/	MYCTY	$0.42
6645	Life DAO	https://coinmarketcap.com/currencies/life-dao/	LF	$3.16
6646	Baby Ripple	https://coinmarketcap.com/currencies/baby-ripple/	BABYXRP	$0.00
6647	Hermes Shares	https://coinmarketcap.com/currencies/hermes-shares/	HSHARES	$0.13
6648	Connector Coin	https://coinmarketcap.com/currencies/connector-coin/	CTCO	$0.00
6649	PolyGod	https://coinmarketcap.com/currencies/polygod/	GULL	$0.02
6650	Hungry Bees	https://coinmarketcap.com/currencies/hungry-bees/	HBEE	$0.02
6651	Vicewrld	https://coinmarketcap.com/currencies/vicewrld/	VICE	$0.00
6652	American Shiba	https://coinmarketcap.com/currencies/american-shiba/	USHIBA	$0.00
6653	Captain Planet	https://coinmarketcap.com/currencies/captain-planet/	CTP	$0.00
6654	ARTH [polygon]	https://coinmarketcap.com/currencies/arth-new/	ARTH	$1.66
6655	Metapplay	https://coinmarketcap.com/currencies/metapplay/	METAP	$0.01
6656	Valor	https://coinmarketcap.com/currencies/valor/	V$	$0.00
6657	Idea Chain Coin	https://coinmarketcap.com/currencies/idea-chain-coin/	ICH	$0.01
6658	Matic Launchpad	https://coinmarketcap.com/currencies/matic-launchpad/	MATICPAD	$0.00
6659	Bankless DAO	https://coinmarketcap.com/currencies/bankless-dao/	BANK	$0.01
6660	RingFi	https://coinmarketcap.com/currencies/ring/	RING	$0.05
6661	HOMT	https://coinmarketcap.com/currencies/homt/	HOMT	$0.00
6662	xToken	https://coinmarketcap.com/currencies/xtoken/	XTK	$0.00
6663	Blocks Space	https://coinmarketcap.com/currencies/blockspace-token/	BLS	$0.01
6664	Bulk	https://coinmarketcap.com/currencies/bulk/	BULK	$0.00
6665	Metanoom	https://coinmarketcap.com/currencies/metanoom/	MTN	$0.00
6666	Earn Defi Coin	https://coinmarketcap.com/currencies/earn-defi/	EDC	$3.97
6667	Blue Baikal	https://coinmarketcap.com/currencies/blue-baikal/	BBC	$0.00
6668	Clam Island	https://coinmarketcap.com/currencies/clam-island/	GEM	$0.00
6669	DAO Farmer DFM	https://coinmarketcap.com/currencies/dao-farmer-dfm/	DFM	$0.00
6670	Greenhouse	https://coinmarketcap.com/currencies/greenhouse/	GREEN	$0.11
6671	MoonEdge	https://coinmarketcap.com/currencies/moonedge/	MOONED	$0.00
6672	MemeBank	https://coinmarketcap.com/currencies/memebank/	MBK	$0.04
6673	Ricnatum	https://coinmarketcap.com/currencies/ricnatum/	RCNT	$0.00
6674	FireZard	https://coinmarketcap.com/currencies/firezard/	ZARD	$0.00
6675	Metra	https://coinmarketcap.com/currencies/metra/	METRA	$0.00
6676	EnreachDAO	https://coinmarketcap.com/currencies/enreachdao/	NRCH	$2.88
6677	KingPad	https://coinmarketcap.com/currencies/kingpad/	CROWN	$0.09
6678	Spark Finance	https://coinmarketcap.com/currencies/spark-finance/	SPARK	$0.00
6679	Bamboonium	https://coinmarketcap.com/currencies/bamboonium/	BAMB	$0.00
6680	Tales Of Chain	https://coinmarketcap.com/currencies/tales-of-chain/	TALE	$0.00
6681	CryptoDiceHero	https://coinmarketcap.com/currencies/cryptodicehero/	HRO	$0.00
6682	NanoMeter Bitcoin	https://coinmarketcap.com/currencies/nanometer-bitcoin/	NMBTC	$0.00
6683	Relevant	https://coinmarketcap.com/currencies/relevant/	REL	$0.12
6684	Lyra	https://coinmarketcap.com/currencies/lyra/	LYR	$0.00
6685	Sharity	https://coinmarketcap.com/currencies/sharity/	$SHARI	$0.00
6686	Monetas	https://coinmarketcap.com/currencies/monetas/	MNTG	$0.34
6687	AutoShark	https://coinmarketcap.com/currencies/autoshark/	JAWS	$0.00
6688	Dpad Finance	https://coinmarketcap.com/currencies/dpad-finance/	DPAD	$0.00
6689	Potato	https://coinmarketcap.com/currencies/potato/	POTATO	$0.00
6690	GOMAx	https://coinmarketcap.com/currencies/gomax/	GOMAX	$0.00
6691	Virtus Finance	https://coinmarketcap.com/currencies/virtus-finance/	VAP	$0.01
6692	Corgidoge	https://coinmarketcap.com/currencies/corgidoge-real-estate-payment/	CORGI	$0.00
6693	Sponsee	https://coinmarketcap.com/currencies/sponsee/	SPON	$0.00
6694	FarmerDoge	https://coinmarketcap.com/currencies/farmerdoge/	CROP	$0.00
6695	Definix	https://coinmarketcap.com/currencies/definix/	FINIX	$0.03
6696	Xfinance	https://coinmarketcap.com/currencies/xfinance/	XFI	$31.36
6697	Woofy	https://coinmarketcap.com/currencies/woofy/	WOOFY	$0.02
6698	Eclipse	https://coinmarketcap.com/currencies/eclipse-ecp/	ECP	$0.00
6699	Dig Chain	https://coinmarketcap.com/currencies/dig-chain/	DIG	$0.00
6700	Eclipse	https://coinmarketcap.com/currencies/eclipse-ecp/	ECP	$0.000000001381
6701	Woofy	https://coinmarketcap.com/currencies/woofy/	WOOFY	$0.01998
6702	Dig Chain	https://coinmarketcap.com/currencies/dig-chain/	DIG	$0.0004795
6703	tudaBirds	https://coinmarketcap.com/currencies/tudabirds/	BURD	$0.001194
6704	Dinastycoin	https://coinmarketcap.com/currencies/dinastycoin/	DCY	$0.0005264
6705	JUMPN	https://coinmarketcap.com/currencies/jumpn/	JST	$0.01126
6706	ELON BUYS COKE COLA	https://coinmarketcap.com/currencies/elon-buys-coke-cola/	EBCC	$0.00000002409
6707	SafuFide	https://coinmarketcap.com/currencies/safufide/	SAFEST	$0.0001296
6708	Pundi X PURSE	https://coinmarketcap.com/currencies/purse/	PURSE	$0.0003632
6709	Monaco Planet	https://coinmarketcap.com/currencies/mona/	MONA	$0.01383
6710	BasketCoin	https://coinmarketcap.com/currencies/basketcoin/	BSKT	$0.05
6711	BuffSwap	https://coinmarketcap.com/currencies/buffswap/	BUFFS	$0.03
6712	Doge King	https://coinmarketcap.com/currencies/doge-king/	DOGEK	$0.00
6713	KelVPN	https://coinmarketcap.com/currencies/kelvpn/	KEL	$0.00
6714	Teneo	https://coinmarketcap.com/currencies/teneo/	TEN	$0.01
6715	TreeDefi	https://coinmarketcap.com/currencies/treedefi/	SEED	$0.16
6716	EQO	https://coinmarketcap.com/currencies/eqo/	EQO	$0.08
6717	Green Life Energy	https://coinmarketcap.com/currencies/green-life-energy/	GNL	$0.00
6718	Shibtoro	https://coinmarketcap.com/currencies/shibtoro/	SHIBTORO	$0.00
6719	Royal Gold	https://coinmarketcap.com/currencies/royal-gold/	RGOLD	$0.07
6720	LunaChow	https://coinmarketcap.com/currencies/lunachow/	LUCHOW	$0.00
6721	Gonewild Token	https://coinmarketcap.com/currencies/gonewild-token/	GWG	$0.00
6722	Fuma Finance	https://coinmarketcap.com/currencies/fuma-finance/	FUMA	$0.05
6723	UNIFEES	https://coinmarketcap.com/currencies/unifees/	FEES	$0.02
6724	Vanspor Token	https://coinmarketcap.com/currencies/vanspor-token/	VAN	$0.51
6725	Domani Protocol	https://coinmarketcap.com/currencies/dextf-protocol/	DEXTF	$0.01
6726	Floki Cat	https://coinmarketcap.com/currencies/floki-cat/	FCT	$0.00
6727	PurrNFT	https://coinmarketcap.com/currencies/purrnft/	PURRX	$0.00
6728	SUP	https://coinmarketcap.com/currencies/sup/	SUP	$6.73
6729	MYSTERY	https://coinmarketcap.com/currencies/mystery/	MYST	$0.00
6730	Revolotto	https://coinmarketcap.com/currencies/revolotto/	RVL	$0.05
6731	EarnX V2	https://coinmarketcap.com/currencies/earnx-v2/	EARNX	$0.00
6732	Piggy Finance	https://coinmarketcap.com/currencies/piggy-finance-io/	PIGGY	$14.73
6733	GGDApp	https://coinmarketcap.com/currencies/ggdapp/	GGTK	$0.04
6734	CocktailBar	https://coinmarketcap.com/currencies/cocktail-bar/	COC	$12.56
6735	Baby Samo Coin	https://coinmarketcap.com/currencies/baby-samo-coin/	BABY	$0.00
6736	NFT11	https://coinmarketcap.com/currencies/nft11/	NFT11	$0.21
6737	Pet Games	https://coinmarketcap.com/currencies/pet-games/	PETG	$0.00
6738	Gamma	https://coinmarketcap.com/currencies/metawars-gam/	GAM	$0.00
6739	Taiwan Semiconductor Mfg tokenized stock FTX	https://coinmarketcap.com/currencies/taiwan-semiconductor-mfg-tokenized-stock-ftx/	TSM	$77.30
6740	Dark Matter DeFi	https://coinmarketcap.com/currencies/dark-matter-defi/	DMD	$0.01
6741	3X Long VeChain Token	https://coinmarketcap.com/currencies/3x-long-vechain-token/	VETBULL	$0.00
6742	Hello Gophers	https://coinmarketcap.com/currencies/hello-gophers/	SHARD	$0.00
6743	Dragon Verse	https://coinmarketcap.com/currencies/dragon-verse/	DRV	$0.00
6744	SoMee.Social	https://coinmarketcap.com/currencies/somee-social/	SOMEE	$0.01
6745	3X Long Ethereum Classic Token	https://coinmarketcap.com/currencies/3x-long-ethereum-classic-token/	ETCBULL	$0.00
6746	Asian Fintech	https://coinmarketcap.com/currencies/asian-fintech/	AFIN	$0.02
6747	MiniSwap	https://coinmarketcap.com/currencies/miniswap/	MINI	$0.02
6748	Bone	https://coinmarketcap.com/currencies/bone-2/	BONE	$0.06
6749	KeySwap	https://coinmarketcap.com/currencies/keyswap/	KEYSWAP	$0.00
6750	BarbecueSwap Finance	https://coinmarketcap.com/currencies/barbecueswap-finance/	BBQ	$0.00
6751	PulseMoon	https://coinmarketcap.com/currencies/pulsemoon/	PULSEMOON	$0.00
6752	DotOracle	https://coinmarketcap.com/currencies/dotoracle/	DTO	$0.02
6753	Piggy Protocol	https://coinmarketcap.com/currencies/piggy-protocol/	PIGGY	$0.02
6754	DYOR Token	https://coinmarketcap.com/currencies/dyor-token/	DYOR	$0.00
6755	ONE PIECE	https://coinmarketcap.com/currencies/one-piece/	ONEPIECE	$0.00
6756	CheersLand	https://coinmarketcap.com/currencies/cheersland/	CHEERS	$0.00
6757	5STAR Protocol	https://coinmarketcap.com/currencies/5star-protocol/	5STAR	$0.00
6758	Algory Project	https://coinmarketcap.com/currencies/algory-project/	ALG	$0.04
6759	Retire Token	https://coinmarketcap.com/currencies/retire-token/	RETIRE	$0.16
6760	Rose Finance	https://coinmarketcap.com/currencies/rose-finance/	ROF	$0.00
6761	Milky Token	https://coinmarketcap.com/currencies/milky-token/	MILKY	$0.00
6762	BYTZ	https://coinmarketcap.com/currencies/bytz/	BYTZ	$0.00
6763	Defiville	https://coinmarketcap.com/currencies/defiville/	ISLA	$0.13
6764	Animverse	https://coinmarketcap.com/currencies/animverse/	ANM	$0.01
6765	CashCow	https://coinmarketcap.com/currencies/cashcow/	COW	$0.22
6766	Chopper Inu	https://coinmarketcap.com/currencies/chopper-inu/	CHOPPER	$0.00
6767	Loot Token	https://coinmarketcap.com/currencies/loot-token/	LOOT	$0.00
6768	ShibaBNB.org	https://coinmarketcap.com/currencies/shibabnb-org/	SHIBABNB	$0.00
6769	BurningMoon	https://coinmarketcap.com/currencies/burningmoon/	BM	$0.00
6770	Plato Farm (MARK)	https://coinmarketcap.com/currencies/plato-farm-mark/	MARK	$0.00
6771	Akita Inu	https://coinmarketcap.com/currencies/akita-inu-akta/	AKTA	$0.00
6772	Life Token V2	https://coinmarketcap.com/currencies/life-token-v2/	LTNV2	$0.00
6773	HedgePay	https://coinmarketcap.com/currencies/hedgepay/	HPAY	$0.00
6774	AvaxDAO	https://coinmarketcap.com/currencies/avaxdao/	AVAXD	$0.00
6775	BABY DOGE INU	https://coinmarketcap.com/currencies/baby-doge-inu/	$BABYDOGEINU	$0.00
6776	BinaHero	https://coinmarketcap.com/currencies/binahero/	HERO	$0.00
6777	AlgoVest	https://coinmarketcap.com/currencies/algovest/	AVS	$0.21
6778	Google tokenized stock FTX	https://coinmarketcap.com/currencies/google-tokenized-stock-ftx/	GOOGL	$2182.00
6779	Identity	https://coinmarketcap.com/currencies/identity/	IDTT	$0.00
6780	Super Bitcoin	https://coinmarketcap.com/currencies/super-bitcoin/	SBTC	$0.44
6781	eFin Decentralized	https://coinmarketcap.com/currencies/efin-decentralized/	WEFIN	$0.00
6782	Spartans	https://coinmarketcap.com/currencies/spartan-token/	SPA	$0.00
6783	Heros Token	https://coinmarketcap.com/currencies/hero-inu/	HEROS	$0.00
6784	Neco Fun	https://coinmarketcap.com/currencies/neco-fun/	NECO	$0.11
6785	Salary	https://coinmarketcap.com/currencies/salary/	SLR	$0.14
6786	Bro Token	https://coinmarketcap.com/currencies/bro-token/	BRO	$0.00
6787	Crypto Shield	https://coinmarketcap.com/currencies/crypto-shield/	SHIELD	$0.00
6788	Voltage	https://coinmarketcap.com/currencies/voltage/	VOLT	$0.02
6789	NerveFlux	https://coinmarketcap.com/currencies/nerveflux/	NERVE	$0.00
6790	Indian Shiba Inu	https://coinmarketcap.com/currencies/indian-shiba-inu/	INDSHIB	$0.00
6791	Notable	https://coinmarketcap.com/currencies/notable-nft/	NBL	$0.02
6792	LittleGhosts Ectoplasm	https://coinmarketcap.com/currencies/littleghosts/	ECTO	$0.00
6793	Alnassr FC fan token	https://coinmarketcap.com/currencies/alnassr-fc-fan-token/	NASSR	$0.00
6794	BabyApe	https://coinmarketcap.com/currencies/babyape/	BAPE	$0.00
6795	Inverse Protocol	https://coinmarketcap.com/currencies/inverse-protocol/	INVERSE	$0.03
6796	CroMoon	https://coinmarketcap.com/currencies/cromoon/	MOON	$0.00
6797	SoPay	https://coinmarketcap.com/currencies/sopay/	SOP	$0.00
6798	Wolf Town Wool	https://coinmarketcap.com/currencies/wolf-town-wool/	WTWOOL	$0.00
6799	MOONEYE	https://coinmarketcap.com/currencies/mooneye/	ME	$0.00
6800	BUMooN	https://coinmarketcap.com/currencies/bumoon/	BUMN	$0.0...03277
6801	MY IDENTITY COIN	https://coinmarketcap.com/currencies/my-identity-coin/	MYID	$0.0001532
6802	Kardia Info	https://coinmarketcap.com/currencies/info-token/	INFO	$0.09965
6803	Chaincorn	https://coinmarketcap.com/currencies/chaincorn/	CORNX	$0.001399
6804	PanicSwap	https://coinmarketcap.com/currencies/panicswap/	PANIC	$0.008947
6805	Bikearn	https://coinmarketcap.com/currencies/bikearn/	RTE	$0.004543
6806	Windfall Token	https://coinmarketcap.com/currencies/windfall-token/	WFT	$0.03529
6807	PURR Vault (NFTX)	https://coinmarketcap.com/currencies/purr-vault-nftx/	PURR	$224.18
6808	renFIL	https://coinmarketcap.com/currencies/renfil/	RENFIL	$5.32
6809	Dollo Coin	https://coinmarketcap.com/currencies/dollo-coin/	DOLLO	$0.0...09689
6810	Trace Network Labs	https://coinmarketcap.com/currencies/trace-network-labs/	TRACE	$0.03
6811	Tardigrades Finance (BSC)	https://coinmarketcap.com/currencies/tardigrades-finance-bsc/	TRDG	$0.00
6812	PokeDX	https://coinmarketcap.com/currencies/pokedx/	PDX	$0.01
6813	FeelCoin	https://coinmarketcap.com/currencies/feelcoin/	FEEL	$0.00
6814	ForceCowBoy	https://coinmarketcap.com/currencies/forcecowboy/	FCB	$0.00
6815	MagicDOGE	https://coinmarketcap.com/currencies/magicdoge/	MAGICDOGE	$0.00
6816	Fortress Lending	https://coinmarketcap.com/currencies/fortress-lending/	FTS	$0.01
6817	Spartans	https://coinmarketcap.com/currencies/spartan-token/	SPA	$0.00
6818	RedChillies	https://coinmarketcap.com/currencies/redchillies/	REDC	$0.09
6819	AntGold	https://coinmarketcap.com/currencies/antgold/	ANTG	$0.00
6820	FONE	https://coinmarketcap.com/currencies/fone/	FONE	$0.00
6821	Lithosphere	https://coinmarketcap.com/currencies/lithosphere/	LITHO	$0.00
6822	New Frontier Presents	https://coinmarketcap.com/currencies/new-frontier-presents/	NFP	$0.01
6823	Cryptogram	https://coinmarketcap.com/currencies/cryptogram/	CRYPTOGRAM	$0.00
6824	Matrix Protocol	https://coinmarketcap.com/currencies/matrix-protocol/	MTX	$0.00
6825	Magic Of Universe	https://coinmarketcap.com/currencies/magic-of-universe-cra/	CRA	$0.00
6826	CAKEPAD LaunchPAD	https://coinmarketcap.com/currencies/cakepad/	CKP	$0.00
6827	YUSD Stablecoin	https://coinmarketcap.com/currencies/yusd-stablecoin/	YUSD	$0.99
6828	DeltaFlip	https://coinmarketcap.com/currencies/deltaflip/	DELTAF	$0.00
6829	Octans	https://coinmarketcap.com/currencies/octans/	OCTA	$0.00
6830	50x.com	https://coinmarketcap.com/currencies/50x-com/	50X	$0.05
6831	Drachma	https://coinmarketcap.com/currencies/drachma/	DRA	$0.00
6832	SpaceGrime	https://coinmarketcap.com/currencies/spacegrime/	GRIMEX	$0.00
6833	Scientia	https://coinmarketcap.com/currencies/scientia/	SCIE	$0.00
6834	BabyAETH	https://coinmarketcap.com/currencies/babyaeth/	$BAETH	$0.00
6835	Binapet	https://coinmarketcap.com/currencies/binapet/	BPET	$0.00
6836	JokerManor Metaverse	https://coinmarketcap.com/currencies/jokermanor-metaverse/	JKT	$0.00
6837	MoMo KEY	https://coinmarketcap.com/currencies/momo-key/	KEY	$36.56
6838	Morpher	https://coinmarketcap.com/currencies/morpher/	MPH	$0.01
6839	Fertilizer	https://coinmarketcap.com/currencies/fertilizer/	FRT	$0.01
6840	CryptoBlast	https://coinmarketcap.com/currencies/cryptoblast/	CBT	$0.00
6841	Grim Finance	https://coinmarketcap.com/currencies/grim-finance/	REAPER	$0.00
6842	Cyber Crystal	https://coinmarketcap.com/currencies/cyber-crystal/	CRYSTAL	$0.32
6843	Kassandra	https://coinmarketcap.com/currencies/kassandra/	KACY	$0.07
6844	LORDS	https://coinmarketcap.com/currencies/lords/	LORDS	$0.04
6845	MemeWars	https://coinmarketcap.com/currencies/memewars/	MWAR	$0.00
6846	Rice Wallet	https://coinmarketcap.com/currencies/rice-wallet/	RICE	$0.00
6847	Blurt	https://coinmarketcap.com/currencies/blurt/	BLURT	$0.01
6848	Dar├╝┼Я┼Яafaka Spor Kul├╝b├╝ Token	https://coinmarketcap.com/currencies/darussafaka-sports-club-token/	DSK	$1.12
6849	FishingTown	https://coinmarketcap.com/currencies/fishingtown/	FHTN	$0.01
6850	Axus Coin Project	https://coinmarketcap.com/currencies/axus-coin-project/	AXUS	$0.00
6851	EGOH Finance	https://coinmarketcap.com/currencies/egoh-finance/	EGOH	$0.00
6852	Baby Bali	https://coinmarketcap.com/currencies/baby-bali/	BB	$0.00
6853	SIF Token	https://coinmarketcap.com/currencies/sif/	SIF	$0.00
6854	TigerQueen	https://coinmarketcap.com/currencies/tigerqueen/	TQUEEN	$0.00
6855	TriipMiles	https://coinmarketcap.com/currencies/triipmiles/	TIIM	$0.00
6856	SURF Finance	https://coinmarketcap.com/currencies/surf/	SURF	$0.04
6857	Bafi Finance	https://coinmarketcap.com/currencies/bafi-finance/	BAFI	$0.94
6858	Power Cash	https://coinmarketcap.com/currencies/power-cash/	PRCH	$0.00
6859	CeloLaunch	https://coinmarketcap.com/currencies/celolaunch/	cLA	$0.01
6860	Will Liu	https://coinmarketcap.com/currencies/will-liu/	LIU	$0.00
6861	Uranium Finance	https://coinmarketcap.com/currencies/uranium-finance/	URF	$0.00
6862	Ecochaintoken	https://coinmarketcap.com/currencies/ecochaintoken/	ECT	$0.00
6863	UpDeFi	https://coinmarketcap.com/currencies/updefi/	UP	$0.00
6864	Metawar	https://coinmarketcap.com/currencies/metawar/	METAWAR	$0.03
6865	3X Long Shitcoin Index Token	https://coinmarketcap.com/currencies/3x-long-shitcoin-index-token/	BULLSHIT	$0.08
6866	RBXS Marketing Samurai	https://coinmarketcap.com/currencies/matrix-samurai-rbxs/	RBXSamurai	$0.01
6867	Insureum	https://coinmarketcap.com/currencies/insureum/	ISR	$0.01
6868	Lanuna	https://coinmarketcap.com/currencies/lanuna/	LUNU	$0.03
6869	Polychain Monsters Land Genesis Token	https://coinmarketcap.com/currencies/polychain-monsters-land/	PMLG	$0.00
6870	Dark Land Survival	https://coinmarketcap.com/currencies/dark-land-survival/	BIG	$0.01
6871	Octaplex Network	https://coinmarketcap.com/currencies/octaplex-network/	PLX	$0.62
6872	Afrostar	https://coinmarketcap.com/currencies/afrostar/	AFRO	$0.00
6873	ShibRWD	https://coinmarketcap.com/currencies/shibrwd/	SRWD	$0.00
6874	AltSwitch	https://coinmarketcap.com/currencies/altswitch/	ALTS	$0.00
6875	DAWG	https://coinmarketcap.com/currencies/dawg/	DAWG	$0.02
6876	BuckHathCoin	https://coinmarketcap.com/currencies/buck-hath-coin/	BHIG	$0.02
6877	Artem Coin	https://coinmarketcap.com/currencies/artem-coin/	ARTEM	$0.01
6878	Krill	https://coinmarketcap.com/currencies/krill-token/	KRILL	$0.01
6879	Carrot	https://coinmarketcap.com/currencies/carrot/	CRT	$0.13
6880	Belka	https://coinmarketcap.com/currencies/belka-project/	BELKA	$0.00
6881	LuckyChip	https://coinmarketcap.com/currencies/luckychip/	LC	$0.01
6882	Square tokenized stock FTX	https://coinmarketcap.com/currencies/square-tokenized-stock-ftx/	SQ	$64.33
6883	Counos Coin	https://coinmarketcap.com/currencies/counos-coin/	CCA	$0.93
6884	CWallet	https://coinmarketcap.com/currencies/cardwallet/	CW	$0.00
6885	Metabolic	https://coinmarketcap.com/currencies/metabolic/	MTBC	$0.00
6886	Dali	https://coinmarketcap.com/currencies/dali/	DALI	$0.00
6887	Stone Age NFT Marketplace	https://coinmarketcap.com/currencies/stone-age-nft-marketplace/	GES	$0.00
6888	Catchy	https://coinmarketcap.com/currencies/catchy/	CATCHY	$0.00
6889	Astro Verse	https://coinmarketcap.com/currencies/astro-verse/	ASV	$0.00
6890	POP Network Token	https://coinmarketcap.com/currencies/pop-network-token/	POP	$0.00
6891	DeFi Hunters DAO	https://coinmarketcap.com/currencies/defi-hunters-dao/	DDAO	$0.12
6892	Stepup	https://coinmarketcap.com/currencies/stepup/	STP	$0.00
6893	SOLVIEW	https://coinmarketcap.com/currencies/solview/	SOLV	$0.00
6894	Doxed	https://coinmarketcap.com/currencies/doxed/	DOX	$0.00
6895	Metaverse lab	https://coinmarketcap.com/currencies/metaverse-lab/	MVP	$0.00
6896	YieldZard	https://coinmarketcap.com/currencies/yieldzard/	YLZ	$0.01
6897	Loomi	https://coinmarketcap.com/currencies/loomi/	LOOMI	$0.00
6898	OXO.Farm	https://coinmarketcap.com/currencies/oxo-farm/	OXO	$0.00
6899	Dungeonswap	https://coinmarketcap.com/currencies/dungeonswap/	DND	$0.02
6900	Kitty	https://coinmarketcap.com/currencies/kitty/	KIT	$0.000000001761
6901	ElonHype	https://coinmarketcap.com/currencies/elonhype/	ELONHYPE	$0.00002549
6902	Aerdrop	https://coinmarketcap.com/currencies/aerdrop/	AER	$0.000162
6903	Kayserispor Token	https://coinmarketcap.com/currencies/kayserispor-token/	KYSR	$3.49
6904	Harmonyville	https://coinmarketcap.com/currencies/harmonyville/	HVILLE	$0.2507
6905	BSC MemePad	https://coinmarketcap.com/currencies/bsc-memepad/	BSCM	$0.001073
6906	H-Space Metaverse	https://coinmarketcap.com/currencies/h-space-metaverse/	HKSM	$0.000004459
6907	BUSDX	https://coinmarketcap.com/currencies/busdx/	BUSDX	$0.0006204
6908	Alligatork	https://coinmarketcap.com/currencies/alligatork/	TORK	$0.007577
6909	SafeWages	https://coinmarketcap.com/currencies/safewages/	SAFEW	$0.00000015
6910	BlockSwap Network	https://coinmarketcap.com/currencies/blockswap-network/	CBSN	$0.00
6911	Jumbo	https://coinmarketcap.com/currencies/jumbo/	JUB	$0.00
6912	Dogecoin 2.0	https://coinmarketcap.com/currencies/dogecoin-2/	DOGE2	$0.00
6913	Reflex	https://coinmarketcap.com/currencies/reflex/	RFX	$0.00
6914	Tokyo AU	https://coinmarketcap.com/currencies/tokyo-au/	TOKAU	$0.00
6915	WorldCoin	https://coinmarketcap.com/currencies/worldcoin/	WDC	$0.01
6916	SafeMoonCash	https://coinmarketcap.com/currencies/safemooncash/	SAFEMOONCASH	$0.00
6917	Magic Of Universe	https://coinmarketcap.com/currencies/magic-of-universe/	MGC	$0.00
6918	Studyum	https://coinmarketcap.com/currencies/studyum/	STUD	$0.01
6919	Sake	https://coinmarketcap.com/currencies/sake/	SAK3	$1150.55
6920	Alpaca USD	https://coinmarketcap.com/currencies/alpaca-usd/	AUSD	$0.95
6921	BULL FINANCE	https://coinmarketcap.com/currencies/bull-finance/	BULL	$0.00
6922	BlockSAFU	https://coinmarketcap.com/currencies/blocksafu/	BSAFU	$0.00
6923	Schrodinger	https://coinmarketcap.com/currencies/schrodinger/	KITTY DINGER	$0.00
6924	DePocket	https://coinmarketcap.com/currencies/depocket/	DEPO	$0.06
6925	iPulse	https://coinmarketcap.com/currencies/ipulse/	PLS	$0.00
6926	RamenSwap	https://coinmarketcap.com/currencies/ramenswap/	RAMEN	$0.00
6927	HASH Token	https://coinmarketcap.com/currencies/hash-token/	HASH	$0.00
6928	Smart Music	https://coinmarketcap.com/currencies/smart-music/	MUSIC	$0.00
6929	aggle.io	https://coinmarketcap.com/currencies/aggle-io/	AGGL	$0.04
6930	Lightcoin	https://coinmarketcap.com/currencies/lightcoin-lhc/	LHC	$0.03
6931	Nintia Estate	https://coinmarketcap.com/currencies/nintia-estate/	NINTI	$0.00
6932	Zuplo	https://coinmarketcap.com/currencies/zuplo/	ZLP	$0.00
6933	SalmonSwap	https://coinmarketcap.com/currencies/salmonswap/	SAL	$1.14
6934	Crypto Klash	https://coinmarketcap.com/currencies/crypto-klash/	KLH	$0.00
6935	MyTVchain [New]	https://coinmarketcap.com/currencies/mytvchain-2/	MYTV	$0.01
6936	BLOOM  Protocol	https://coinmarketcap.com/currencies/bloom-token-protocol/	BLOOM	$0.00
6937	Hina Inu	https://coinmarketcap.com/currencies/hina-inu/	HINA	$0.00
6938	Salmonation	https://coinmarketcap.com/currencies/salmonation/	SUI	$0.00
6939	Useless (V3)	https://coinmarketcap.com/currencies/useless-new/	USE	$0.00
6940	Seeder Finance	https://coinmarketcap.com/currencies/seeder-finance/	LEAF	$0.00
6941	More Token	https://coinmarketcap.com/currencies/moremoney-finance/	MORE	$0.00
6942	Aqua Pig	https://coinmarketcap.com/currencies/aqua-pig/	AQUAPIG	$0.00
6943	Fish Crypto	https://coinmarketcap.com/currencies/fish-crypto/	FICO	$0.00
6944	Boost Love Potion	https://coinmarketcap.com/currencies/boost-love-potion/	BLP	$0.00
6945	BODA Token	https://coinmarketcap.com/currencies/boda-token/	BODAV2	$0.00
6946	KlimaDAO	https://coinmarketcap.com/currencies/klimadao/	KLIMA	$2.96
6947	XCF Token	https://coinmarketcap.com/currencies/cenfura-token/	XCF	$0.01
6948	SpaceSHIB	https://coinmarketcap.com/currencies/spaceshib/	SPACESHIB	$0.00
6949	Asuna	https://coinmarketcap.com/currencies/asuna-inu/	ASUNAINU	$0.00
6950	Compound Wrapped BTC	https://coinmarketcap.com/currencies/compound-wrapped-btc/	CWBTC	$387.37
6951	Aufin Protocol	https://coinmarketcap.com/currencies/aufin-protocol/	AUN	$0.02
6952	Ruby Play Network	https://coinmarketcap.com/currencies/ruby-play-network/	RUBY	$0.00
6953	Ulgen Hash Power	https://coinmarketcap.com/currencies/ulgen-hash-power/	UHP	$0.01
6954	GameX	https://coinmarketcap.com/currencies/gamex/	GMX	$0.00
6955	Spinada.cash	https://coinmarketcap.com/currencies/spinada-cash/	SPIN	$0.01
6956	Kross Chain LaunchPad	https://coinmarketcap.com/currencies/kucoin-launchpad/	KCLP	$0.00
6957	DuckDuck	https://coinmarketcap.com/currencies/duckduck/	DUCK	$167.06
6958	Miyazaki Inu	https://coinmarketcap.com/currencies/miyazaki-inu/	MIYAZAKI	$0.00
6959	The Spartans	https://coinmarketcap.com/currencies/the-spartans/	TSP	$0.00
6960	SuperBonds	https://coinmarketcap.com/currencies/superbonds/	SB	$0.00
6961	iBG Finance	https://coinmarketcap.com/currencies/ibg-finance/	IBG	$0.04
6962	BitGoo	https://coinmarketcap.com/currencies/bitgoo/	BTG	$0.00
6963	Timeleap Finance	https://coinmarketcap.com/currencies/timeleap/	TIME	$0.20
6964	UMI	https://coinmarketcap.com/currencies/umi/	UMI	$0.00
6965	Shiba Rewards	https://coinmarketcap.com/currencies/shiba-rewards/	SHREW	$0.00
6966	VSolidus	https://coinmarketcap.com/currencies/vsolidus/	VSOL	$0.00
6967	Meta Speed Game	https://coinmarketcap.com/currencies/meta-speed-game/	MTSG	$0.00
6968	Icel Idman Yurdu Token	https://coinmarketcap.com/currencies/icel-idman-yurdu-token/	MIY	$0.47
6969	SolanaSail	https://coinmarketcap.com/currencies/solanasail/	SAIL	$0.01
6970	Puzzle And Dragons X	https://coinmarketcap.com/currencies/puzzle-and-dragons-x/	PADX	$0.00
6971	Crusaders of Crypto	https://coinmarketcap.com/currencies/crusaders-of-crypto/	CRUSADER	$0.00
6972	Auditchain	https://coinmarketcap.com/currencies/auditchain/	AUDT	$0.05
6973	Europa	https://coinmarketcap.com/currencies/europa/	ORBIT	$0.41
6974	CenterPrime	https://coinmarketcap.com/currencies/center-prime-token/	CPX	$0.86
6975	ETHEKing	https://coinmarketcap.com/currencies/etheking/	ETHE	$0.00
6976	Webfour	https://coinmarketcap.com/currencies/webfour/	WEBFOUR	$0.00
6977	MetaGold Rewards	https://coinmarketcap.com/currencies/metagold-rewards/	METAGOLD	$0.00
6978	OOGI	https://coinmarketcap.com/currencies/oogi/	OOGI	$0.00
6979	Goblin	https://coinmarketcap.com/currencies/goblin/	GOBLIN	$0.00
6980	Articoin solana	https://coinmarketcap.com/currencies/articoin-solana/	ATC	$0.00
6981	SolAPE Token	https://coinmarketcap.com/currencies/solapefinance/	SOLAPE	$0.00
6982	Devour Token	https://coinmarketcap.com/currencies/devour-token/	RESTAURANTS	$0.00
6983	GovWorld	https://coinmarketcap.com/currencies/govworld/	GOV	$0.01
6984	Ainu Token	https://coinmarketcap.com/currencies/ainu-token/	AINU	$0.00
6985	Advanced Micro Devices tokenized stock FTX	https://coinmarketcap.com/currencies/advanced-micro-devices-tokenized-stock-ftx/	AMD	$73.26
6986	Bulldog Billionaires	https://coinmarketcap.com/currencies/bulldog-billionaires/	BONE	$0.05
6987	Pixl Coin	https://coinmarketcap.com/currencies/pixl-coin/	PXLC	$0.00
6988	Shih Tzu	https://coinmarketcap.com/currencies/shih-tzu/	SHIH	$0.00
6989	PW-Gold	https://coinmarketcap.com/currencies/pw-gold/	PWG	$0.07
6990	Space Cow Boy	https://coinmarketcap.com/currencies/space-cow-boy/	SCB	$3.48
6991	SkyBridger	https://coinmarketcap.com/currencies/skybridger/	SKBR	$0.00
6992	GreenBioX	https://coinmarketcap.com/currencies/greenbiox/	GREENBIOX	$0.00
6993	Pomicoin	https://coinmarketcap.com/currencies/pomicoin/	POMI	$0.00
6994	Attrace	https://coinmarketcap.com/currencies/attrace/	ATTR	$0.00
6995	AirPay	https://coinmarketcap.com/currencies/airpay/	AIRPAY	$0.00
6996	A2A	https://coinmarketcap.com/currencies/a2a-50x-com/	A2A	$0.01
6997	Symmetric	https://coinmarketcap.com/currencies/symmetric/	SYMM	$1.11
6998	yVault LP-yCurve	https://coinmarketcap.com/currencies/yvault-lp-ycurve/	yVault LP-yCurve(YYCRV)	$1.32
6999	Dead Knight Metaverse	https://coinmarketcap.com/currencies/dead-knight/	DKM	$0.00
7000	yVault LP-yCurve	https://coinmarketcap.com/currencies/yvault-lp-ycurve/	yVault LP-yCurve(YYCRV)	$1.32
7001	Dead Knight Metaverse	https://coinmarketcap.com/currencies/dead-knight/	DKM	$0.001409
7002	Baby Zoro Inu	https://coinmarketcap.com/currencies/baby-zoro-inu/	BABYZOROINU	$0.0...07675
7003	Loot Dollar	https://coinmarketcap.com/currencies/loot-dollar/	LOOTDOLLAR	$0.01337
7004	Shiba Universe	https://coinmarketcap.com/currencies/shiba-universe/	SHIBU	<$0.0тАж00001
7005	Dx Spot	https://coinmarketcap.com/currencies/dx-spot/	DXS	$0.0001509
7006	Wrapped Staked Olympus	https://coinmarketcap.com/currencies/wrapped-staked-olympus/	WSOHM	$2,333.78
7007	ChorusX	https://coinmarketcap.com/currencies/chorusx/	CX1	$0.00007593
7008	Statik	https://coinmarketcap.com/currencies/statik/	STATIK	$0.9601
7084	EncrypGen	https://coinmarketcap.com/currencies/encrypgen/	DNA	$0.02
7009	MoveCash	https://coinmarketcap.com/currencies/movecash/	MCA	$0.004698
7010	IC DEFI	https://coinmarketcap.com/currencies/icdefi/	ICD	$0.00
7011	Civic Power	https://coinmarketcap.com/currencies/civic-power/	POWER	$0.13
7012	Pet Alliance	https://coinmarketcap.com/currencies/pet-alliance/	PAL	$0.00
7013	WardenSwap	https://coinmarketcap.com/currencies/wardenswap/	WAD	$0.03
7014	Arbis Finance	https://coinmarketcap.com/currencies/arbis-finance/	ARBIS	$0.00
7015	DEHR Network	https://coinmarketcap.com/currencies/dehr-network/	DHR	$0.00
7016	Bounty	https://coinmarketcap.com/currencies/bounty/	BNTY	$0.00
7017	Cheesus	https://coinmarketcap.com/currencies/cheesus/	CHEESUS	$0.00
7018	Wrapped Moonriver	https://coinmarketcap.com/currencies/wrapped-moonriver/	WMOVR	$11.54
7019	NuCoin	https://coinmarketcap.com/currencies/nucoin/	NUC	$0.20
7020	AGGREG8 FINANCE	https://coinmarketcap.com/currencies/aggreg8-finance/	AG8	$0.00
7021	Subawu Token	https://coinmarketcap.com/currencies/subawu-token/	SUBAWU	$0.00
7022	SEKOPAY	https://coinmarketcap.com/currencies/sekopay/	SEKO	$0.00
7023	Medi Token	https://coinmarketcap.com/currencies/medi-token/	MEDI	$0.00
7024	Solcubator	https://coinmarketcap.com/currencies/solcubator/	SOLC	$0.00
7025	BitOnyx	https://coinmarketcap.com/currencies/bitonyx/	BTNYX	$0.01
7026	The Citadel	https://coinmarketcap.com/currencies/the-citadel/	THECITADEL	$0.00
7027	OFI.CASH	https://coinmarketcap.com/currencies/ofi-cash/	OFI	$0.00
7028	AstroBirdz	https://coinmarketcap.com/currencies/astrobirdz/	ABZ	$0.00
7029	Oracolxor	https://coinmarketcap.com/currencies/oracolxor/	XOR	$0.00
7030	HecoFi	https://coinmarketcap.com/currencies/hecofi/	HFI	$0.00
7031	Tigerfinance	https://coinmarketcap.com/currencies/tigerfinance/	TIGER	$0.00
7032	Liti Capital	https://coinmarketcap.com/currencies/liti-capital/	WLITI	$0.00
7033	GM Holding	https://coinmarketcap.com/currencies/gm-holding/	GM	$0.00
7034	Miners Defi	https://coinmarketcap.com/currencies/miners-defi/	MINERS	$0.00
7035	BeglobalDAO	https://coinmarketcap.com/currencies/beglobaldao/	GLBD	$1.12
7036	F5 Sleep	https://coinmarketcap.com/currencies/f5-sleep/	F5S	$0.02
7037	Urfaspor Token	https://coinmarketcap.com/currencies/urfaspor-token/	URFA	$0.96
7038	Kauri	https://coinmarketcap.com/currencies/kauri-crypto/	KAU	$0.03
7039	DogyRace	https://coinmarketcap.com/currencies/dogyrace/	DOR	$0.00
7040	Waifer	https://coinmarketcap.com/currencies/waifer/	WAIFER	$0.00
7041	Sword Art Online	https://coinmarketcap.com/currencies/sword-art-online/	SAO	$0.00
7042	Cherish	https://coinmarketcap.com/currencies/cherish/	CHC	$0.09
7043	Moola Market	https://coinmarketcap.com/currencies/moola-market/	MOO	$0.04
7044	ROBOT SHIB	https://coinmarketcap.com/currencies/robot-shib/	RSHIB	$0.00
7045	Maximus	https://coinmarketcap.com/currencies/maximus/	MAXI	$0.01
7046	Orca AVAI	https://coinmarketcap.com/currencies/orca-avai/	AVAI	$0.95
7047	FANZY	https://coinmarketcap.com/currencies/fanzy/	FX1	$0.00
7048	Xave Coin	https://coinmarketcap.com/currencies/xave-coin/	XVC	$0.00
7049	1x Long Bitcoin Implied Volatility Token	https://coinmarketcap.com/currencies/1x-long-bitcoin-implied-volatility-token/	BVOL	$614.75
7050	Libonomy	https://coinmarketcap.com/currencies/libonomy/	LBY	$0.02
7051	CryptoJetski	https://coinmarketcap.com/currencies/cryptojetski/	CJET	$0.00
7052	LIFEBIRD	https://coinmarketcap.com/currencies/lifebird/	LIFEBIRD	$0.00
7053	SeaChain	https://coinmarketcap.com/currencies/seachain/	SEACHAIN	$0.00
7054	happy birthday coin	https://coinmarketcap.com/currencies/happy-birthday-coin/	HBDC	$0.00
7055	Himalayan Cat Coin	https://coinmarketcap.com/currencies/himalayan-cat-coin/	HIMA	$0.00
7056	MINT 2 EARN	https://coinmarketcap.com/currencies/mint-2-earn/	MTE	$0.00
7057	Vibe Token	https://coinmarketcap.com/currencies/vibe-token/	VIBE	$0.00
7058	Simply	https://coinmarketcap.com/currencies/simply/	SIMPLY	$0.00
7059	Jswap.Finance	https://coinmarketcap.com/currencies/jswap-finance/	JF	$0.10
7060	Solberg	https://coinmarketcap.com/currencies/solberg/	SLB	$0.01
7061	Tsuki Inu	https://coinmarketcap.com/currencies/tsuki-inu/	TKINU	$0.00
7062	CoreStarter	https://coinmarketcap.com/currencies/corestarter/	CSTR	$0.00
7063	Excalibur	https://coinmarketcap.com/currencies/excalibur-exchange/	EXC	$0.02
7064	XRE Global	https://coinmarketcap.com/currencies/xre-global/	XRE	$0.00
7065	Online Cold Wallet	https://coinmarketcap.com/currencies/online-cold-wallet/	OCW	$0.06
7066	Waste Digital Coin	https://coinmarketcap.com/currencies/waste-coin/	WACO	$0.00
7067	Bami	https://coinmarketcap.com/currencies/bami/	BAMI	$0.02
7068	Captain Inu	https://coinmarketcap.com/currencies/captain-inu/	CPTINU	$0.00
7069	GAMINGDOGE	https://coinmarketcap.com/currencies/gamingdoge/	GAMINGDOGE	$0.00
7070	Stadium	https://coinmarketcap.com/currencies/stadium/	STD	$0.00
7071	Thaicoin	https://coinmarketcap.com/currencies/thaicoin/	TAC	$0.00
7072	The Plant Dao	https://coinmarketcap.com/currencies/the-plant-dao/	SPROUT	$0.00
7073	Dtube Coin	https://coinmarketcap.com/currencies/dtube-coin/	DTUBE	$0.09
7074	Solar Bear	https://coinmarketcap.com/currencies/solar-bear/	SOLBEAR	$0.00
7075	Galatic Kitty Fighters	https://coinmarketcap.com/currencies/galatic-kitty-fighters/	GKF	$0.00
7076	SolClout	https://coinmarketcap.com/currencies/solclout/	SCT	$0.00
7077	Survive	https://coinmarketcap.com/currencies/survive/	SURV	$0.00
7078	Bloggercoin	https://coinmarketcap.com/currencies/bloggercoin/	BLOGGER	$0.00
7079	PancakePoll	https://coinmarketcap.com/currencies/pancakepoll/	PPOLL	$0.00
7080	Police and Thief Game	https://coinmarketcap.com/currencies/police-and-thief-game/	LOOT	$0.00
7081	Pitquidity-BSC	https://coinmarketcap.com/currencies/pitquidity-bsc/	PITQD	$0.00
7082	Hare Plus	https://coinmarketcap.com/currencies/hare-plus/	HARE PLUS	$0.00
7083	HAPY Coin	https://coinmarketcap.com/currencies/hapy-coin/	HAPY	$0.00
7085	GalaxyGoggle DAO	https://coinmarketcap.com/currencies/galaxygoggle-dao/	GG	$0.09
7086	Camp	https://coinmarketcap.com/currencies/camp/	CAMP	$0.00
7087	Doge Floki Coin	https://coinmarketcap.com/currencies/doge-floki-coin/	DOFI	$0.00
7088	BunnyPark Game	https://coinmarketcap.com/currencies/bunnypark-bg/	BG	$0.00
7089	PomPom	https://coinmarketcap.com/currencies/pompom/	POM	$0.00
7090	1NFT	https://coinmarketcap.com/currencies/1nft/	1NFT	$0.00
7091	PlayChip	https://coinmarketcap.com/currencies/playchip/	PLA	$0.00
7092	Kephi Gallery	https://coinmarketcap.com/currencies/kephi-gallery/	KPHI	$0.00
7093	The Garden	https://coinmarketcap.com/currencies/the-garden/	TGC	$0.00
7094	MultiversePad	https://coinmarketcap.com/currencies/multiversepad/	MTVP	$0.00
7095	Sourceless	https://coinmarketcap.com/currencies/sourceless/	STR	$0.04
7096	MMScash	https://coinmarketcap.com/currencies/mmscash/	MCASH	$1.00
7097	Ourglass	https://coinmarketcap.com/currencies/ourglass/	GLASS	$0.00
7098	Giresunspor Token	https://coinmarketcap.com/currencies/giresunspor-token/	GRS	$1.44
7099	The Essential Coin	https://coinmarketcap.com/currencies/the-essential-coin/	ESC	$0.00
7100	CryptoBharatCoin	https://coinmarketcap.com/currencies/cryptobharatcoin/	CBC	$0.09691
7101	Revault Network	https://coinmarketcap.com/currencies/revault-network/	REVA	$0.07734
7102	Linkka	https://coinmarketcap.com/currencies/linkka/	IKA	$0.00009429
7103	Phoenix	https://coinmarketcap.com/currencies/phoenix/	PHX	$0.9171
7104	Minimals	https://coinmarketcap.com/currencies/minimals/	MMS	$0.0...05598
7105	SouloCoin	https://coinmarketcap.com/currencies/soulocoin/	SOULO	$0.001219
7106	Trickle	https://coinmarketcap.com/currencies/trickle/	H2O	$0.0008438
7107	Monster Slayer Cash	https://coinmarketcap.com/currencies/monster-slayer-finance/	MSC	$0.02006
7108	Emerald Nodes	https://coinmarketcap.com/currencies/emerald-nodes/	EM	$0.3018
7109	Eleven Finance	https://coinmarketcap.com/currencies/eleven-finance/	ELE	$0.003749
7110	MEDPING	https://coinmarketcap.com/currencies/medping/	MPG	$0.00
7111	MetaFootball	https://coinmarketcap.com/currencies/metafootball/	MTF	$0.00
7112	Clock 24	https://coinmarketcap.com/currencies/clock-24/	C24	$0.01
7113	0xPAD	https://coinmarketcap.com/currencies/0xpad/	0XPAD	$0.01
7114	Tokenfy	https://coinmarketcap.com/currencies/tokenfy/	TKNFY	$0.00
7115	Auroracoin	https://coinmarketcap.com/currencies/auroracoin/	AUR	$0.07
7116	YoCoin	https://coinmarketcap.com/currencies/yocoin-yoco/	YOCO	$0.00
7117	FUFU	https://coinmarketcap.com/currencies/fufu/	FUFU	$0.00
7118	Reforestation Mahogany	https://coinmarketcap.com/currencies/reforestation-mahogany/	RMOG	$0.00
7119	CumInu	https://coinmarketcap.com/currencies/cuminu/	CUMINU	$0.00
7120	Meta Age of Empires	https://coinmarketcap.com/currencies/meta-age-of-empires/	MAOE	$0.00
7121	Cens World	https://coinmarketcap.com/currencies/cens-world/	CENS	$0.00
7122	Octafarm	https://coinmarketcap.com/currencies/octafarm/	OCTF	$0.00
7123	AstroSpaces.io	https://coinmarketcap.com/currencies/astrospaces/	SPACES	$0.00
7124	NFT All Best ICO	https://coinmarketcap.com/currencies/nft-all-best-ico/	NFTALLBI	$0.00
7125	HELL HOUNDS	https://coinmarketcap.com/currencies/hell-hounds/	SOUL	$0.00
7126	Legend Of Galaxy	https://coinmarketcap.com/currencies/legend-of-galaxy/	GAE	$0.01
7127	Force For Fast	https://coinmarketcap.com/currencies/force-for-fast/	FFF	$0.00
7128	AVME	https://coinmarketcap.com/currencies/avme/	AVME	$0.03
7129	Conjee	https://coinmarketcap.com/currencies/conjee/	CONJ	$0.00
7130	DATACHAIN FOUNDATION (DC)	https://coinmarketcap.com/currencies/datachain-foundation/	DC	$0.08
7131	InvestDex	https://coinmarketcap.com/currencies/investdex/	INVEST	$0.01
7132	TEN Wallet	https://coinmarketcap.com/currencies/ten-wallet/	TENW	$0.00
7133	GreenAir	https://coinmarketcap.com/currencies/greenair/	GREEN	$0.00
7134	Tratok	https://coinmarketcap.com/currencies/tratok/	TRAT	$0.01
7135	TinyBits	https://coinmarketcap.com/currencies/tiny-colony/	TINY	$0.07
7136	DoveSwap Finance	https://coinmarketcap.com/currencies/doveswap-finance/	DOVE	$0.00
7137	Raider Token	https://coinmarketcap.com/currencies/raider-token/	RAID	$0.00
7138	Xstable.Protocol	https://coinmarketcap.com/currencies/xstable-protocol/	XST	$0.07
7139	Void	https://coinmarketcap.com/currencies/void-games/	VOID	$0.01
7140	DAOLand	https://coinmarketcap.com/currencies/daoland/	DLD	$0.00
7141	RaceX	https://coinmarketcap.com/currencies/racex/	RACEX	$0.00
7142	Ariadne	https://coinmarketcap.com/currencies/ariadne/	ARDN	$0.05
7143	Phuture DeFi Index	https://coinmarketcap.com/currencies/phuture-defi-index/	PDI	$66.08
7144	Dawn Wars	https://coinmarketcap.com/currencies/dawn-wars/	DW	$0.10
7145	Rooster Battle	https://coinmarketcap.com/currencies/rooster-battle/	RICE	$0.00
7146	Dough	https://coinmarketcap.com/currencies/dough/	DOUGH	$0.00
7147	Staked NEAR	https://coinmarketcap.com/currencies/staked-near/	STNEAR	$2.87
7148	Hearn.fi	https://coinmarketcap.com/currencies/hearn-fi/	HEARN	$0.00
7149	Ballswap	https://coinmarketcap.com/currencies/ballswap/	BSP	$0.00
7150	Pirate Coin Games	https://coinmarketcap.com/currencies/pirate-coin-games/	PirateCoinтШа	$0.00
7151	Tronipay	https://coinmarketcap.com/currencies/tronipay/	TRP	$0.00
7152	FADO Go	https://coinmarketcap.com/currencies/fado-go/	FADO	$0.00
7153	Tresor Finance	https://coinmarketcap.com/currencies/tresor-finance/	$TRESOR	$0.00
7154	MetaDerby	https://coinmarketcap.com/currencies/metaderby/	DBY	$0.01
7155	1BOX	https://coinmarketcap.com/currencies/1box/	1BOX	$0.00
7156	Sound BSC	https://coinmarketcap.com/currencies/sound-bsc/	SOUND	$0.00
7157	Synex Coin	https://coinmarketcap.com/currencies/synex-coin/	MINECRAFT	$0.00
7158	DART Inu	https://coinmarketcap.com/currencies/dart-inu/	DART	$0.00
7159	ILUS Coin	https://coinmarketcap.com/currencies/ilus-coin/	ILUS	$0.10
7160	Pfizer tokenized stock FTX	https://coinmarketcap.com/currencies/pfizer-tokenized-stock-ftx/	PFE	$52.12
7161	Early Bird	https://coinmarketcap.com/currencies/early-bird/	EBIRD	$0.00
7162	DNFT Protocol	https://coinmarketcap.com/currencies/dnft-protocol/	DNF	$0.00
7163	PAYZ PAYMENTS	https://coinmarketcap.com/currencies/payz-payments/	PAYZ	$0.00
7164	Black Eye Galaxy	https://coinmarketcap.com/currencies/black-eye-galaxy/	BYG	$0.00
7165	StartFi	https://coinmarketcap.com/currencies/startfi/	STFI	$0.02
7166	Space Game ORES	https://coinmarketcap.com/currencies/space-game-ores/	$ORES	$0.00
7167	Inverse Bitcoin Volatility Token	https://coinmarketcap.com/currencies/inverse-bitcoin-volatility-token/	IBVOL	$932.20
7168	Upper Pound	https://coinmarketcap.com/currencies/upper-pound/	GBPU	$0.28
7169	BNB Bank	https://coinmarketcap.com/currencies/bnb-bank/	BBK	$0.00
7170	Warena	https://coinmarketcap.com/currencies/warena-ware/	WARE	$0.00
7171	MONNOS	https://coinmarketcap.com/currencies/monnos/	MNS	$0.00
7172	Metaroid	https://coinmarketcap.com/currencies/metaroid/	METAROID	$0.00
7173	Diamond Platform Token	https://coinmarketcap.com/currencies/diamond-platform-token/	DPT	$0.40
7174	Mound Token	https://coinmarketcap.com/currencies/mound-token/	MND	$0.08
7175	La Doge de Papel	https://coinmarketcap.com/currencies/la-doge-de-papel/	LDDP	$0.00
7176	Crypto Birds	https://coinmarketcap.com/currencies/crypto-birds/	XCB	$0.00
7177	TasteNFT	https://coinmarketcap.com/currencies/tastenft/	TASTE	$0.00
7178	SONICR	https://coinmarketcap.com/currencies/sonicr/	SNR	$0.00
7179	Joke Community	https://coinmarketcap.com/currencies/joke-community/	$JOKE	$0.00
7180	StellarInu	https://coinmarketcap.com/currencies/stellarinu/	STELLARINU	$0.00
7181	Fairy Forest NFT	https://coinmarketcap.com/currencies/fairy-forest-nft/	FFN	$0.00
7182	Moremoney USD	https://coinmarketcap.com/currencies/moremoney-usd/	MONEY	$1.01
7183	3X Long OKB Token	https://coinmarketcap.com/currencies/3x-long-okb-token/	OKBBULL	$0.78
7184	Doge-1 Mission to the moon	https://coinmarketcap.com/currencies/doge-1-mission-to-the-moon/	DOGE-1	$0.00
7185	Baby Floki Doge	https://coinmarketcap.com/currencies/baby-floki-doge/	BABYFD	$0.00
7186	GLOBEX	https://coinmarketcap.com/currencies/globex/	GEX	$0.00
7187	Netflix tokenized stock FTX	https://coinmarketcap.com/currencies/netflix-tokenized-stock-ftx/	NFLX	$180.89
7188	FutureFi	https://coinmarketcap.com/currencies/futurefi/	FUFI	$0.00
7189	Secured Ship	https://coinmarketcap.com/currencies/secured-ship/	SHIP	$0.00
7190	Elon's Marvin	https://coinmarketcap.com/currencies/elons-marvin/	MARVIN	$0.00
7191	BAE	https://coinmarketcap.com/currencies/bae/	BAE	$0.00
7192	BitcoMine Token	https://coinmarketcap.com/currencies/bitcomine-token/	BME	$0.00
7193	Son of Doge	https://coinmarketcap.com/currencies/son-of-doge-v2/	SODV2	$0.00
7194	United	https://coinmarketcap.com/currencies/united/	UTED	$0.02
7195	Glimpse	https://coinmarketcap.com/currencies/glimpse/	GLMS	$0.00
7196	JDI Yield	https://coinmarketcap.com/currencies/jdi-yield/	JDI	$0.00
7197	TranslateMe Network Token	https://coinmarketcap.com/currencies/translateme-network-token/	TMN	$0.00
7198	Ari Swap	https://coinmarketcap.com/currencies/ari-swap/	ARI	$0.01
7199	Kurobi	https://coinmarketcap.com/currencies/kurobi/	KURO	$0.00
7200	Froggies	https://coinmarketcap.com/currencies/froggies/	FROGGIES	$0.0...01451
7201	VIP Token	https://coinmarketcap.com/currencies/vip-token/	VIP	$0.000000009798
7202	HornHub finance	https://coinmarketcap.com/currencies/hornhub-finance/	HHUB	$0.00003014
7203	MAGA Coin	https://coinmarketcap.com/currencies/maga-coin/	MAGA	$0.0003271
7204	Mercenary	https://coinmarketcap.com/currencies/mercenary/	MGOLD	$0.000002288
7205	Universal Floki Coin	https://coinmarketcap.com/currencies/universal-floki-coin/	UFLOKI	$0.000000001219
7206	MP3	https://coinmarketcap.com/currencies/mp3/	MP3	$0.003137
7207	Paladin dao	https://coinmarketcap.com/currencies/paladin-dao/	PAL	$0.009462
7208	Nacho	https://coinmarketcap.com/currencies/nacho-finance/	NACHO	$0.2661
7209	RARA	https://coinmarketcap.com/currencies/rara/	RARA	$0.0001244
7210	BabyCake	https://coinmarketcap.com/currencies/baby-cake/	BC2.1	$0.00
7211	RiskMoon	https://coinmarketcap.com/currencies/riskmoon/	RISKMOON	$0.00
7212	DeuxPad	https://coinmarketcap.com/currencies/deuxpad/	DEUX	$0.00
7213	Coin Discovery	https://coinmarketcap.com/currencies/coin-discovery/	CODI	$0.00
7214	REU	https://coinmarketcap.com/currencies/reu-earth/	REU	$0.01
7215	Metaloop Tech	https://coinmarketcap.com/currencies/metaloop-tech/	MLT	$0.00
7216	DGPayment	https://coinmarketcap.com/currencies/dgpayment/	DGP	$0.01
7217	Shield Network	https://coinmarketcap.com/currencies/shield-network/	SHIELDNET	$0.00
7218	JINDO INU	https://coinmarketcap.com/currencies/jindo-inu/	JIND	$0.00
7219	Liquidifty	https://coinmarketcap.com/currencies/liquidifty/	LQT	$0.02
7220	4ART Coin	https://coinmarketcap.com/currencies/4artechnologies/	4ART	$0.01
7221	BNBeer	https://coinmarketcap.com/currencies/bnbeer/	BNBEER	$0.00
7222	Carbonic	https://coinmarketcap.com/currencies/carbonic/	CO2	$0.14
7223	PhoenxiDefi Finance	https://coinmarketcap.com/currencies/phoenxidefi-finance/	PNIXS	$0.00
7224	Buni Universal Reward	https://coinmarketcap.com/currencies/buni-universal-reward/	BUR	$0.00
7225	Axial	https://coinmarketcap.com/currencies/axial/	AXIAL	$0.00
7226	ADACash	https://coinmarketcap.com/currencies/adacash/	ADACASH	$0.00
7227	Inu Base	https://coinmarketcap.com/currencies/inu-base/	INUB	$0.04
7228	Cry Cat Coin	https://coinmarketcap.com/currencies/cry-cat-coin/	CRYY	$0.00
7229	RXCGames	https://coinmarketcap.com/currencies/rxcgames/	RXCG	$0.00
7230	Gain Protocol	https://coinmarketcap.com/currencies/gain-protocol/	GAIN	$0.00
7231	DigiMetaverse	https://coinmarketcap.com/currencies/digimetaverse/	DGMV	$0.02
7232	Bitcurate	https://coinmarketcap.com/currencies/bitcurate/	BTCR	$0.01
7233	Cryptounit	https://coinmarketcap.com/currencies/cryptounit/	CRU	$0.00
7234	Nil DAO	https://coinmarketcap.com/currencies/nil-dao/	NIL	$0.04
7235	CVIP	https://coinmarketcap.com/currencies/cvip/	CVIP	$0.07
7236	DARTH	https://coinmarketcap.com/currencies/darth/	DAH	$0.38
7237	Ethersocks	https://coinmarketcap.com/currencies/ethersocks/	SOX	$28.58
7238	Unity Protocol	https://coinmarketcap.com/currencies/unity-protocol/	UNITY	$0.01
7239	NINJA INU	https://coinmarketcap.com/currencies/ninja-inu/	NINJA	$0.00
7240	Zippie	https://coinmarketcap.com/currencies/zippie/	ZIPT	$0.00
7241	VizslaSwap	https://coinmarketcap.com/currencies/vizslaswap/	VIZSLASWAP	$0.02
7242	Suuper	https://coinmarketcap.com/currencies/suuper/	SUUPER	$0.07
7243	CryptoHorse	https://coinmarketcap.com/currencies/cryptohorse/	CHORSE	$0.00
7244	PIXEL NFT	https://coinmarketcap.com/currencies/pixel-nft/	PNT	$0.00
7245	Asgardian Aereus	https://coinmarketcap.com/currencies/asgardian-aereus/	VOLT	$6.99
7246	Fuusion	https://coinmarketcap.com/currencies/fuusion/	FUU	$0.00
7247	EzyStayz	https://coinmarketcap.com/currencies/ezystayz/	EZY	$0.00
7248	Saitanobi	https://coinmarketcap.com/currencies/saitanobi/	SAITANOBI	$0.00
7249	ShibaZilla	https://coinmarketcap.com/currencies/shibazillacoin/	SHIBAZILLA	$0.00
7250	Medamon	https://coinmarketcap.com/currencies/medamon/	MON	$1.68
7251	ROCKET GLOBAL	https://coinmarketcap.com/currencies/rocket-global/	RCKC	$0.00
7252	BQT	https://coinmarketcap.com/currencies/bqt/	BQTX	$0.00
7253	OLYMPUS	https://coinmarketcap.com/currencies/olympus-token/	OLYMPUS	$0.00
7254	Battle Of Multiworld	https://coinmarketcap.com/currencies/battle-of-multiworld/	BMW	$0.00
7255	KarmaDao	https://coinmarketcap.com/currencies/karmadao/	KDAO	$0.01
7256	CMF DAO	https://coinmarketcap.com/currencies/cmf-dao/	CMF	$0.00
7257	Asia Reserve Currency Coin	https://coinmarketcap.com/currencies/asia-reserve-currency-coin/	ARCC	$0.00
7258	DynamicB	https://coinmarketcap.com/currencies/dynamicb/	DYNB	$0.00
7259	NVL	https://coinmarketcap.com/currencies/nvl-project/	NVL	$0.02
7260	FitScrypt	https://coinmarketcap.com/currencies/fitscrypt/	FIT	$0.00
7261	Oxfinance	https://coinmarketcap.com/currencies/oxfinance/	OXFI	$0.16
7262	Leonidas Token	https://coinmarketcap.com/currencies/leonidas-token/	LEONIDAS	$0.00
7263	Hero Essence	https://coinmarketcap.com/currencies/heroverse-hes/	HES	$0.00
7264	JPG NFT Index	https://coinmarketcap.com/currencies/jpg-nft-index/	JPG	$23.15
7265	Coin of Nature	https://coinmarketcap.com/currencies/coin-of-nature/	CON	$0.00
7266	Battle for Life	https://coinmarketcap.com/currencies/battle-for-life/	BFL	$0.00
7267	Meta Farmer Finance	https://coinmarketcap.com/currencies/meta-farmer-finance/	MFF	$0.00
7268	FirstHare	https://coinmarketcap.com/currencies/firsthare/	FirstHare	$0.00
7269	TheFutbolCoin	https://coinmarketcap.com/currencies/thefutbolcoin/	TFC	$0.01
7270	Tokenplay	https://coinmarketcap.com/currencies/tokenplay/	TOP	$0.00
7271	Betero	https://coinmarketcap.com/currencies/betero/	BTE	$0.01
7272	Odin Platform	https://coinmarketcap.com/currencies/odin-platform/	ODN	$0.00
7273	Metavault Trade	https://coinmarketcap.com/currencies/metavault-trade/	MVX	$0.80
7274	Starstream	https://coinmarketcap.com/currencies/starstream/	STARS	$0.00
7275	Minereum BSC	https://coinmarketcap.com/currencies/minereum-bsc/	MNEB	$0.01
7276	Oracle System	https://coinmarketcap.com/currencies/oracle-system/	ORC	$0.00
7277	Safechaintoken	https://coinmarketcap.com/currencies/safechaintoken/	SCT	$0.00
7278	Binamars	https://coinmarketcap.com/currencies/binamars/	BMARS	$0.00
7279	Pocoland	https://coinmarketcap.com/currencies/pocoland/	POCO	$0.00
7280	Tenet	https://coinmarketcap.com/currencies/tenet/	TEN	$0.14
7281	Boltt Coin 	https://coinmarketcap.com/currencies/boltt-coin/	BOLTT	$0.00
7282	Kintaman	https://coinmarketcap.com/currencies/kintaman/	KINTA	$0.00
7283	CATO	https://coinmarketcap.com/currencies/cato/	CATO	$0.00
7284	Crypto Jackpot	https://coinmarketcap.com/currencies/crypto-jackpot/	CJP	$0.00
7285	ElonDoge	https://coinmarketcap.com/currencies/elondoge/	EDOGE	$0.00
7286	Amara Finance	https://coinmarketcap.com/currencies/amara-finance/	MARA	$0.00
7287	Block Monsters	https://coinmarketcap.com/currencies/block-monsters/	MNSTRS	$0.00
7288	KuramaInu	https://coinmarketcap.com/currencies/kuramainu/	KUNU	$0.00
7289	Metaworld	https://coinmarketcap.com/currencies/metaworld/	MW	$0.00
7290	Keanu Inu	https://coinmarketcap.com/currencies/keanu-inu/	KEANU	$0.00
7291	Ara Blocks	https://coinmarketcap.com/currencies/ara-blocks/	ARA	$0.00
7292	Meta Basket VR	https://coinmarketcap.com/currencies/meta-basket-vr/	MBALL	$0.00
7293	PolyFarm EGG	https://coinmarketcap.com/currencies/polyfarm-egg/	EGG	$0.01
7294	BABYDRIP	https://coinmarketcap.com/currencies/babydrip/	BABYDRIP	$0.00
7295	Recovery Right Token	https://coinmarketcap.com/currencies/recovery-right-token/	RRT	$0.77
7296	Wrapped BIND	https://coinmarketcap.com/currencies/wrapped-bind/	WBIND	$0.00
7297	Dinger Token	https://coinmarketcap.com/currencies/dinger-token/	DINGER	$0.00
7298	Alias	https://coinmarketcap.com/currencies/alias/	ALIAS	$0.04
7299	Apocalypse	https://coinmarketcap.com/currencies/apocalypse/	APOC	$0.00
7300	Alias	https://coinmarketcap.com/currencies/alias/	ALIAS	$0.03933
7301	CorgiNFTGame	https://coinmarketcap.com/currencies/corginftgame-spet/	SPET	$0.00004696
7302	Happiness	https://coinmarketcap.com/currencies/happiness/	HPNS	$0.00002617
7303	Agave	https://coinmarketcap.com/currencies/agave/	AGVE	$42.92
7304	Random	https://coinmarketcap.com/currencies/random-token/	RNDM	$0.001269
7305	MilkyWayEx	https://coinmarketcap.com/currencies/milkywayex/	MILKY	$0.00001189
7306	BNSD Finance	https://coinmarketcap.com/currencies/bnsd-finance/	BNSD	$0.002047
7307	Space Game KLAYE	https://coinmarketcap.com/currencies/space-game-klaye/	$KLAYE	$0.00001047
7308	Fungie DAO	https://coinmarketcap.com/currencies/fungie-dao/	FNG	$0.02032
7309	Baby Yooshi	https://coinmarketcap.com/currencies/baby-yooshi/	BABY YOOSHI	$0.0...00465
7310	LifeTime	https://coinmarketcap.com/currencies/lifetime/	LFT	$0.02
7311	MORK	https://coinmarketcap.com/currencies/mork/	MORK	$0.36
7312	Dabb Doge	https://coinmarketcap.com/currencies/dabb-doge/	DDOGE	$0.01
7313	Hybrid Bank Cash	https://coinmarketcap.com/currencies/hybrid-bank-cash/	HBC	$0.00
7314	Quiz Arena	https://coinmarketcap.com/currencies/quiz-arena/	QZA	$0.00
7315	World of Cryptoids	https://coinmarketcap.com/currencies/world-of-cryptoids/	CAC	$0.06
7316	Moonshot	https://coinmarketcap.com/currencies/moonshot/	MSHOT	$0.00
7317	Ginza Eternity	https://coinmarketcap.com/currencies/ginza-eternity/	GER	$0.00
7318	HyperRun	https://coinmarketcap.com/currencies/hyperrun/	HYPERR	$0.00
7319	Pyrrho	https://coinmarketcap.com/currencies/pyrrho-defi/	PYO	$0.00
7320	Satopay Network	https://coinmarketcap.com/currencies/satopay-network/	STOP	$0.00
7321	GoldenDiamond9	https://coinmarketcap.com/currencies/goldendiamond9/	G9	$0.00
7322	Binopoly	https://coinmarketcap.com/currencies/binopoly/	BINO	$0.01
7323	Tundra Token	https://coinmarketcap.com/currencies/tundra-token/	TUNDRA	$0.23
7324	Zero	https://coinmarketcap.com/currencies/zero-tech/	ZERO	$0.03
7325	Baby Shark Tank	https://coinmarketcap.com/currencies/baby-shark-tank/	BASHTANK	$0.00
7326	FLOOF	https://coinmarketcap.com/currencies/floof/	FLOOF	$0.00
7327	SwapDEX	https://coinmarketcap.com/currencies/swapdex/	SDX	$0.00
7328	Little Angry Bunny v2	https://coinmarketcap.com/currencies/little-angry-bunny-v2/	LAB v2	$0.00
7329	Cosmic Coin	https://coinmarketcap.com/currencies/cosmic-coin/	COSMIC	$0.01
7330	X-Consoles	https://coinmarketcap.com/currencies/x-consoles/	GAME	$2.98
7331	Binance Multi-Chain Capital	https://coinmarketcap.com/currencies/binance-multi-chain-capital/	BMCC	$0.00
7332	Collector Coin	https://coinmarketcap.com/currencies/collector-coin/	AGS	$0.04
7333	Bright Union	https://coinmarketcap.com/currencies/bright-union/	BRIGHT	$0.02
7334	PopDoge	https://coinmarketcap.com/currencies/popdoge/	POPDOGE	$0.00
7335	moonwolf.io	https://coinmarketcap.com/currencies/moonwolf/	WOLF	$0.00
7336	Share NFT Token	https://coinmarketcap.com/currencies/share-nft-token/	SNT	$0.00
7337	Rogue Doge	https://coinmarketcap.com/currencies/rogue-doge/	ROGE	$0.00
7338	Pasta Finance	https://coinmarketcap.com/currencies/pasta-finance/	PASTA	$0.00
7339	SafeFloki	https://coinmarketcap.com/currencies/safefloki/	SFK	$0.00
7340	IFOSwap Token	https://coinmarketcap.com/currencies/ifoswap-token/	H2O	$0.02
7341	Bitcoin Asset	https://coinmarketcap.com/currencies/bitcoin-asset-new/	BTA	$0.00
7342	RobustSwap Token	https://coinmarketcap.com/currencies/robustswap-token/	RBS	$0.37
7343	ATTN	https://coinmarketcap.com/currencies/attn/	ATTN	$0.00
7344	Simpli Finance	https://coinmarketcap.com/currencies/simpli-finance/	SIMPLI	$0.00
7345	SOLA Token	https://coinmarketcap.com/currencies/sola/	SOLA	$0.00
7346	Alpha Pad	https://coinmarketcap.com/currencies/alpha-pad/	APAD	$0.00
7347	Emanate	https://coinmarketcap.com/currencies/emanate/	EMT	$0.01
7348	FoodPay	https://coinmarketcap.com/currencies/foodpay/	FOODPAY	$0.00
7349	ELON CAT COIN	https://coinmarketcap.com/currencies/elon-cat-coin/	ELONCAT	$0.00
7350	Swanlana	https://coinmarketcap.com/currencies/swanlana/	SWAN	$0.00
7351	LeagueDAO	https://coinmarketcap.com/currencies/leaguedao/	LEAG	$0.00
7352	SOMDEJ	https://coinmarketcap.com/currencies/somdej/	SDC	$0.14
7353	MvPad	https://coinmarketcap.com/currencies/mvpad/	MVD	$0.00
7354	IoTexShiba	https://coinmarketcap.com/currencies/iotexshiba/	IOSHIB	$0.00
7355	Jigen	https://coinmarketcap.com/currencies/jigen/	JIG	$0.00
7356	Overlord	https://coinmarketcap.com/currencies/overlord/	LORD	$0.00
7357	Intersola	https://coinmarketcap.com/currencies/intersola/	ISOLA	$0.01
7358	HAYFEVER	https://coinmarketcap.com/currencies/hayfever/	HAY	$0.00
7359	art├иQ	https://coinmarketcap.com/currencies/arteq/	ARTEQ	$0.01
7360	Crypto Realms War	https://coinmarketcap.com/currencies/crypto-realms-war/	YNY	$0.00
7361	Sherpa	https://coinmarketcap.com/currencies/sherpa/	SHERPA	$0.05
7362	Nausicaa-Inu	https://coinmarketcap.com/currencies/nausicaa-inu/	NAUSICAA	$0.00
7363	Fastest Alerts	https://coinmarketcap.com/currencies/fastest-alerts/	FA	$0.00
7364	Revive	https://coinmarketcap.com/currencies/revive/	RVE	$0.00
7365	Metaverse Future	https://coinmarketcap.com/currencies/metaverse-future/	METAF	$0.00
7366	Apple Network	https://coinmarketcap.com/currencies/apple-network/	ANK	$0.00
7367	Naffiti	https://coinmarketcap.com/currencies/naffiti/	NAFF	$0.01
7368	Theca	https://coinmarketcap.com/currencies/theca/	THECA	$0.02
7369	METAZONX	https://coinmarketcap.com/currencies/metazonx/	ZONX	$0.00
7370	Waggle Network	https://coinmarketcap.com/currencies/waggle-network/	WAG	$0.02
7371	LINKS Token	https://coinmarketcap.com/currencies/links-token/	LINKS	$0.01
7372	Keisuke Inu	https://coinmarketcap.com/currencies/keisuke-inu/	$KEI	$0.00
7373	handleFOREX	https://coinmarketcap.com/currencies/handle-fi/	FOREX	$0.01
7374	Meta Shiba	https://coinmarketcap.com/currencies/meta-shibaa/	METASHIB	$0.00
7375	SolanaPrime	https://coinmarketcap.com/currencies/solanaprime/	PRIME	$0.19
7376	808TA	https://coinmarketcap.com/currencies/808ta/	808TA	$0.00
7377	Baby Lambo Inu	https://coinmarketcap.com/currencies/baby-lambo-inu/	BLINU	$0.00
7378	Amgen	https://coinmarketcap.com/currencies/amgen/	AMG	$0.49
7379	Seismic	https://coinmarketcap.com/currencies/seismic/	SCB	$0.01
7380	AceD	https://coinmarketcap.com/currencies/aced-token/	ACED	$0.00
7381	Skillchain	https://coinmarketcap.com/currencies/skillchain/	SKI	$0.02
7382	BNBTiger	https://coinmarketcap.com/currencies/bnbtiger/	BNBTIGER	$0.00
7383	Avax Nodes	https://coinmarketcap.com/currencies/avax-nodes/	ANODE	$0.82
7384	Fino DAO	https://coinmarketcap.com/currencies/fino-dao/	FINO	$0.00
7385	Navigator	https://coinmarketcap.com/currencies/navigator/	NTTC	$0.00
7386	Netcoincapital	https://coinmarketcap.com/currencies/netcoincapital/	NCC	$0.02
7387	MeowSwap	https://coinmarketcap.com/currencies/meow-swap/	MEOW	$0.02
7388	BabyKitty	https://coinmarketcap.com/currencies/babykitty/	BABYKITTY	$0.00
7389	YellowHeart Protocol	https://coinmarketcap.com/currencies/yellowheart-protocol/	HRTS	$0.06
7390	Ravelin Finance	https://coinmarketcap.com/currencies/ravelin-finance/	RAV	$0.29
7391	Safe Energy	https://coinmarketcap.com/currencies/safe-energy/	EnergyX	$0.00
7392	The Dynasty	https://coinmarketcap.com/currencies/the-dynasty/	DYT	$0.00
7393	Metaseer	https://coinmarketcap.com/currencies/metaseer/	METAS	$0.01
7394	Yooshiba Inu	https://coinmarketcap.com/currencies/yooshiba-inu/	$YSHIBAINU	$0.00
7395	Meta Course	https://coinmarketcap.com/currencies/meta-course/	COURSE	$0.00
7396	Ecoin official	https://coinmarketcap.com/currencies/ecoin-2/	ECOIN	$0.00
7397	Green Meta	https://coinmarketcap.com/currencies/green-beli-gmeta/	GMETA	$0.00
7398	12Ships	https://coinmarketcap.com/currencies/12ships/	TSHP	$0.00
7399	DAO Farmer DAOF	https://coinmarketcap.com/currencies/dao-farmer-daof/	DAOF	$1.09
7400	Artemis Vision	https://coinmarketcap.com/currencies/artemis-vision/	ARV	$0.1745
7401	Funder One Capital	https://coinmarketcap.com/currencies/funder-one-capital/	FUNDX	$190.62
7402	Protector Roge	https://coinmarketcap.com/currencies/protector-roge/	PROGE	$0.0...06057
7403	Entropyfi	https://coinmarketcap.com/currencies/entropyfi/	ERP	$0.008615
7404	FREEMOON	https://coinmarketcap.com/currencies/freemoon/	FREEMOON	$0.0...03275
7405	Pizza Inu	https://coinmarketcap.com/currencies/pizza-inu/	PINU	$0.0000003606
7406	Baby Floki Billionaire	https://coinmarketcap.com/currencies/baby-floki-billionaire/	BabyFB	$0.0...08059
7407	FNK wallet	https://coinmarketcap.com/currencies/fnk-wallet/	FNK	$0.1287
7408	Orakler	https://coinmarketcap.com/currencies/orakler/	ORKL	$0.01619
7409	PolyBeta Finance	https://coinmarketcap.com/currencies/polybeta-finance/	BETA	$0.2883
7410	BuyMainStreet	https://coinmarketcap.com/currencies/buymainstreet/	$MAINST	$0.00
7411	Baby Shiba Coin	https://coinmarketcap.com/currencies/baby-shiba-coin/	BABYSHIBA	$0.00
7412	BuffedShiba	https://coinmarketcap.com/currencies/buffedshiba/	BSHIB	$0.00
7413	ARC Governance	https://coinmarketcap.com/currencies/arcx-token/	ARCX	$0.03
7414	ETH 2x Flexible Leverage Index (Polygon)	https://coinmarketcap.com/currencies/eth-2x-flexible-leverage-index-polygon/	ETH2X-FLI-P	$2.78
7415	UBGToken	https://coinmarketcap.com/currencies/ubgtoken/	UBG	$0.00
7416	BoleToken	https://coinmarketcap.com/currencies/boletoken/	BOLE	$0.00
7417	Lightbeam Courier Coin	https://coinmarketcap.com/currencies/lightbeam-courier-coin/	LBCC	$1.00
7418	3X Short Chainlink Token	https://coinmarketcap.com/currencies/3x-short-chainlink-token/	LINKBEAR	$0.00
7419	Cryptoids Game Coin	https://coinmarketcap.com/currencies/cryptoids-game-coin/	CGC	$0.00
7420	Web3 Game	https://coinmarketcap.com/currencies/web3-game/	WEB3	$0.00
7421	Carbon Coin	https://coinmarketcap.com/currencies/c-token/	C	$0.00
7422	SAFETREES	https://coinmarketcap.com/currencies/safetrees/	TREES	$0.00
7423	Demodyfi	https://coinmarketcap.com/currencies/demodyfi/	DMOD	$0.00
7424	Lunes	https://coinmarketcap.com/currencies/lunes/	LUNES	$0.00
7425	Viking Swap	https://coinmarketcap.com/currencies/viking-swap/	VIKING	$0.00
7426	Sincere Cate	https://coinmarketcap.com/currencies/sincere-cate/	$SCATE	$0.00
7427	Galaxy Doge	https://coinmarketcap.com/currencies/galaxy-doge/	$GALAXYDOGE	$0.00
7428	SwinCoin	https://coinmarketcap.com/currencies/swincoin/	SWIN	$0.00
7429	LOOF	https://coinmarketcap.com/currencies/loof/	LOOF	$1.15
7430	Force of Nature	https://coinmarketcap.com/currencies/force-of-nature/	FON	$0.00
7431	MetaMatic	https://coinmarketcap.com/currencies/metamatic/	META	$0.00
7432	PELE Network	https://coinmarketcap.com/currencies/pele-network/	PELE	$0.00
7433	Pearl	https://coinmarketcap.com/currencies/crypto-bay/	PEARL	$0.00
7434	Phantasia Sports	https://coinmarketcap.com/currencies/phantasia/	$FANT	$0.01
7435	Tokenoid	https://coinmarketcap.com/currencies/tokenoid/	NOID	$0.01
7436	Freight Trust & Clearing Network	https://coinmarketcap.com/currencies/freight-trust-clearing-network/	EDI	$0.00
7437	Equinox	https://coinmarketcap.com/currencies/equinox/	ENX	$0.00
7438	CloudCoin	https://coinmarketcap.com/currencies/cloudcoin/	CCE	$0.00
7439	FLEX	https://coinmarketcap.com/currencies/flex/	FLEX	$1.57
7440	Excavo Finance	https://coinmarketcap.com/currencies/excavo-finance/	CAVO	$31.97
7441	ClaimSwap	https://coinmarketcap.com/currencies/claimswap/	CLA	$0.08
7442	Anime Token	https://coinmarketcap.com/currencies/anime-token/	ANI	$0.00
7443	Blizz Finance	https://coinmarketcap.com/currencies/blizz-finance/	BLZZ	$0.00
7444	HTMOON	https://coinmarketcap.com/currencies/htmoon/	HTMOON	$0.00
7445	Vince chain	https://coinmarketcap.com/currencies/vince-chain/	VCE	$0.00
7446	Meta Shark	https://coinmarketcap.com/currencies/meta-shark/	MTS	$0.00
7447	FUMoney	https://coinmarketcap.com/currencies/fumoney/	FUM	$0.00
7448	ApeXit Finance	https://coinmarketcap.com/currencies/apexit-finance/	APEX	$0.01
7449	MoonStar	https://coinmarketcap.com/currencies/moonstar/	MOONSTAR	$0.00
7450	QUOTA	https://coinmarketcap.com/currencies/quota/	QTA	$0.00
7451	DCVC FINANCE	https://coinmarketcap.com/currencies/dcvc-finance/	DCVC	$0.00
7452	3X Long Tether Gold Token	https://coinmarketcap.com/currencies/3x-long-tether-gold-token/	XAUTBULL	$6295.00
7453	SpookyShiba	https://coinmarketcap.com/currencies/spooky-shiba/	SPOOKYSHIBA	$0.00
7454	ICE BEAR TOKEN	https://coinmarketcap.com/currencies/ice-bear-token/	IBT	$0.00
7455	Nomadland	https://coinmarketcap.com/currencies/nomadland/	NOMAD	$0.00
7456	Coin Fast Alert V2	https://coinmarketcap.com/currencies/coin-fast-alert/	CFA	$0.00
7457	AMC Entertainment Holdings tokenized stock FTX	https://coinmarketcap.com/currencies/amc-entertainment-holdings-tokenized-stock-ftx/	AMC	$13.63
7458	CakeSwap	https://coinmarketcap.com/currencies/cakeswap/	CAKESWAP	$0.00
7459	Limited USD	https://coinmarketcap.com/currencies/limited-usd/	LUSD	$0.00
7460	Shield	https://coinmarketcap.com/currencies/shield-dao/	SLD	$0.09
7461	1SAFU	https://coinmarketcap.com/currencies/1safu/	SAFU	$0.00
7462	Dick	https://coinmarketcap.com/currencies/dick/	DICK	$0.00
7463	ENERGY	https://coinmarketcap.com/currencies/energy/	NRGY	$0.00
7464	Plata Network	https://coinmarketcap.com/currencies/plata-network/	PLATA	$0.00
7465	MobiFi	https://coinmarketcap.com/currencies/mobi-finance/	MoFi	$0.00
7466	Women Empowerment Token	https://coinmarketcap.com/currencies/women-empowerment-token/	WEMP	$0.00
7467	Alibaba tokenized stock Bittrex	https://coinmarketcap.com/currencies/alibaba-tokenized-stock-bittrex/	BABA	$116.02
7468	ULAND	https://coinmarketcap.com/currencies/uland/	ULAND	$0.00
7469	Welnance finance	https://coinmarketcap.com/currencies/welnance-finance/	WEL	$0.02
7470	Intexcoin	https://coinmarketcap.com/currencies/intexcoin/	INTX	$0.00
7471	Godzilla LaunchPad	https://coinmarketcap.com/currencies/godzilla/	GODZ	$0.00
7472	Volt	https://coinmarketcap.com/currencies/volt/	ACDC	$0.00
7473	MultiPad	https://coinmarketcap.com/currencies/multipad/	MPAD	$0.00
7474	Havens Nook	https://coinmarketcap.com/currencies/havens-nook/	HXN	$0.04
7475	LooksCoin	https://coinmarketcap.com/currencies/lookscoin/	LOOKS	$0.00
7476	FLOV MARKET	https://coinmarketcap.com/currencies/flov-market/	FLOVM	$0.00
7477	FishingTownGilToken	https://coinmarketcap.com/currencies/fishingtowngiltoken/	GIL	$0.00
7478	R U Generous	https://coinmarketcap.com/currencies/r-u-generous/	RUG	$1.78
7479	Monster Battle	https://coinmarketcap.com/currencies/monster-battle/	MBS	$0.00
7480	STABLE ASSET	https://coinmarketcap.com/currencies/stable-asset/	STA	$0.88
7481	Envelop	https://coinmarketcap.com/currencies/envelop/	NIFTSY	$0.00
7482	Reptilian Coin	https://coinmarketcap.com/currencies/haildraconis/	RPTC	$0.00
7483	Chimeras	https://coinmarketcap.com/currencies/chimeras/	CHIM	$0.01
7484	ROBOT SHIB SWAP	https://coinmarketcap.com/currencies/robot-shib-swap/	RBSHIB	$0.00
7485	CryptoFantasy	https://coinmarketcap.com/currencies/cryptofantasy/	CFC	$0.00
7486	Beach Token BSC	https://coinmarketcap.com/currencies/beach-token-bsc/	BEACH	$0.00
7487	Catoshi	https://coinmarketcap.com/currencies/catoshi-nakamoto/	CZATS	$0.04
7488	SEED	https://coinmarketcap.com/currencies/seed/	SEED	$9.16
7489	ArtKit	https://coinmarketcap.com/currencies/artkit/	ARTI	$0.00
7490	PolyAlpha Finance	https://coinmarketcap.com/currencies/polyalpha-finance/	ALPHA	$0.40
7491	CryptoShips	https://coinmarketcap.com/currencies/cryptoships/	CSHIP	$0.00
7492	FlokiBonk	https://coinmarketcap.com/currencies/flokibonk/	FLOBO	$0.00
7493	Atlantis Loans Polygon	https://coinmarketcap.com/currencies/atlantis-loans-polygon/	ATLX	$0.03
7494	Cross Chain Farming	https://coinmarketcap.com/currencies/cross-chain-farming/	CCF	$0.00
7495	Hare Token	https://coinmarketcap.com/currencies/hare-token/	HARE	$0.00
7496	Trustworks	https://coinmarketcap.com/currencies/trustworks/	TRUST	$0.21
7497	AurusSILVER	https://coinmarketcap.com/currencies/aurussilver/	AWS	$0.64
7498	Cycling App	https://coinmarketcap.com/currencies/cycling-app/	CYC	$0.00
7499	Davincij15 Token	https://coinmarketcap.com/currencies/davincij15-token/	DJ15	$34.12
7500	OBToken	https://coinmarketcap.com/currencies/obtoken/	OBT	$0.0107
7501	Nami Corporation	https://coinmarketcap.com/currencies/nami-corporation-token/	NAMI	$0.00656
7502	Elo Inu	https://coinmarketcap.com/currencies/elo-inu/	ELO INU	$0.0...02283
7503	Baby DeFido	https://coinmarketcap.com/currencies/baby-defido/	BabyDeFido	$0.0...01222
7504	Shipit pro	https://coinmarketcap.com/currencies/shipit-pro/	SHPP	$0.0005602
7505	Sportemon-Go	https://coinmarketcap.com/currencies/sportemon-go/	SGO	$0.0000000143
7506	3X Short Cardano Token	https://coinmarketcap.com/currencies/3x-short-cardano-token/	ADABEAR	$0.000000009991
7507	LinkSync	https://coinmarketcap.com/currencies/linksync/	SYNC	$0.0...00639
7508	PaintSwap	https://coinmarketcap.com/currencies/paintswap/	BRUSH	$0.009849
7509	SafuYield Protocol	https://coinmarketcap.com/currencies/safuyield-protocol/	SAFUYIELD	$0.000000002138
7510	Degen Dex	https://coinmarketcap.com/currencies/degen-dex/	DEGN	$0.00
7511	Electric Cash	https://coinmarketcap.com/currencies/electric-cash/	ELCASH	$1.17
7512	Pofi	https://coinmarketcap.com/currencies/pofi/	POFI	$0.04
7513	Floki Rocket	https://coinmarketcap.com/currencies/floki-rocket/	RLOKI	$0.00
7514	DNA(RXC)	https://coinmarketcap.com/currencies/rxc-dna/	DNA	$0.04
7515	D3 Protocol	https://coinmarketcap.com/currencies/d3-protocol/	DEFI	$4.14
7516	REDMARS	https://coinmarketcap.com/currencies/redmars/	RMARS	$0.00
7517	OFFLINE	https://coinmarketcap.com/currencies/allohash/	OFF	$0.00
7518	Caketools	https://coinmarketcap.com/currencies/caketools/	CKT	$0.00
7519	MetaversePRO	https://coinmarketcap.com/currencies/metaversepro/	META	$1.62
7520	GemUni	https://coinmarketcap.com/currencies/gemuni/	GENI	$0.03
7521	Turnt Up Tikis	https://coinmarketcap.com/currencies/turnt-up-tikis/	TUT	$0.00
7522	BlockCDN	https://coinmarketcap.com/currencies/blockcdn/	BCDN	$0.00
7523	Surge Inu	https://coinmarketcap.com/currencies/surge-inu/	SURGE	$0.00
7524	Step C	https://coinmarketcap.com/currencies/step-c/	STC	$0.00
7525	Metaxiz	https://coinmarketcap.com/currencies/metaxiz/	MEXI	$0.00
7526	TSA NFT	https://coinmarketcap.com/currencies/tsa-nft/	TSA	$0.00
7527	Hungry Bear	https://coinmarketcap.com/currencies/hungry-bear/	HUNGRY	$0.00
7528	Recast1 Coin	https://coinmarketcap.com/currencies/recast1-coin/	R1	$0.00
7529	Neeva Defi	https://coinmarketcap.com/currencies/neeva-defi/	NVA	$0.15
7530	LaserEyes	https://coinmarketcap.com/currencies/lasereyes/	LSR	$0.00
7531	Go Ride	https://coinmarketcap.com/currencies/go-ride/	RIDE	$0.00
7532	SafeLight	https://coinmarketcap.com/currencies/safelight/	SAFELIGHT	$0.00
7533	RedFEG	https://coinmarketcap.com/currencies/redfeg/	REDFEG	$0.00
7534	MotionWreck Games	https://coinmarketcap.com/currencies/motionwreck-games/	MWG	$0.00
7535	Moola Celo	https://coinmarketcap.com/currencies/moola-celo/	mCELO	$0.86
7536	AlgoGems	https://coinmarketcap.com/currencies/algogems/	GEMS	$0.12
7537	Polka Classic	https://coinmarketcap.com/currencies/polka-classic/	DOTC	$0.00
7538	InsureDAO	https://coinmarketcap.com/currencies/insuredao/	INSURE	$0.04
7539	VIRAL	https://coinmarketcap.com/currencies/viral-token/	VIRAL	$0.00
7540	ONEMOON	https://coinmarketcap.com/currencies/onemoon/	ONEMOON	$0.00
7541	EXRT Network	https://coinmarketcap.com/currencies/exrt-network/	EXRT	$0.00
7542	NFTTONE	https://coinmarketcap.com/currencies/nfttone/	TONE	$0.00
7543	MegaMoon	https://coinmarketcap.com/currencies/megamoon/	MGMOON	$0.00
7544	Agora Defi	https://coinmarketcap.com/currencies/agora-defi/	AGORA	$0.00
7545	bDollar Share	https://coinmarketcap.com/currencies/bdollar-share/	SBDO	$3.56
7546	MIMOSA	https://coinmarketcap.com/currencies/mimosa/	MIMO	$0.02
7547	Dukecoin	https://coinmarketcap.com/currencies/dukecoin/	DKC	$0.00
7548	Disco Burn Token	https://coinmarketcap.com/currencies/disco-burn-token/	DBT	$0.00
7549	IDLE Token	https://coinmarketcap.com/currencies/idle-token/	IDLE	$0.00
7550	Itchiro Games	https://coinmarketcap.com/currencies/itchiro-games/	JEM	$0.80
7551	Mooni DeFi	https://coinmarketcap.com/currencies/mooni-defi/	MOONI	$0.00
7552	Mercury Tools	https://coinmarketcap.com/currencies/mercury-tools/	MERCURY	$0.00
7553	Yearn Finance Red Moon	https://coinmarketcap.com/currencies/yearn-finance-red-moon/	YFRM	$1.92
7554	ODEM	https://coinmarketcap.com/currencies/odem/	ODE	$0.00
7555	Limestone Network	https://coinmarketcap.com/currencies/limestone-network/	LIMEX	$0.00
7556	Buy-Sell	https://coinmarketcap.com/currencies/buy-sell/	BSE	$0.44
7557	DCD Ecosystem	https://coinmarketcap.com/currencies/dcd-ecosystem/	DCD	$0.00
7558	Bingo Game	https://coinmarketcap.com/currencies/bingo-game/	BINGO	$0.00
7559	LibreFreelencer	https://coinmarketcap.com/currencies/librefreelencer/	LIBREF	$0.00
7560	Hydraledger	https://coinmarketcap.com/currencies/internet-of-people/	HYD	$0.00
7561	T99 Token	https://coinmarketcap.com/currencies/t99-token/	TNN	$0.00
7562	Pinknode	https://coinmarketcap.com/currencies/pinknode/	PNODE	$0.01
7563	SHIBA LIGHT	https://coinmarketcap.com/currencies/shiba-light/	SHIBT	$0.00
7564	Cybertronchain	https://coinmarketcap.com/currencies/cybertronchain/	CTC	$0.08
7565	Unvaxxed Sperm	https://coinmarketcap.com/currencies/unvaxxed-sperm/	NUBTC	$0.00
7566	WHITEX	https://coinmarketcap.com/currencies/whitex/	WHX	$0.00
7567	Superciety	https://coinmarketcap.com/currencies/superciety/	SUPER	$0.01
7568	Fren	https://coinmarketcap.com/currencies/fren-token/	FREN	$0.00
7569	RO Slayers	https://coinmarketcap.com/currencies/ro-slayers/	SLYR	$0.01
7570	Teslafan	https://coinmarketcap.com/currencies/teslafan/	TESLF	$0.01
7571	NoVa	https://coinmarketcap.com/currencies/nova-battles/	NVA	$0.00
7572	World of Cryptia	https://coinmarketcap.com/currencies/world-of-cryptia/	CRYPT	$0.00
7573	Astronaut	https://coinmarketcap.com/currencies/astronaut/	NAUT	$0.03
7574	Twelve Legions	https://coinmarketcap.com/currencies/twelve-legions/	CTL	$0.00
7575	Rice	https://coinmarketcap.com/currencies/rice/	RICE	$0.01
7576	QuiverX	https://coinmarketcap.com/currencies/quiverx/	QRX	$0.00
7577	Doge Rise Up	https://coinmarketcap.com/currencies/doge-rise-up/	DOGERISEUP	$0.00
7578	Akropolis Delphi	https://coinmarketcap.com/currencies/akropolis-delphi/	ADEL	$0.01
7579	Aurora Token	https://coinmarketcap.com/currencies/aurora-token/	ADTX	$0.00
7580	CatBread	https://coinmarketcap.com/currencies/catbread/	CATBREAD	$0.00
7581	Stone	https://coinmarketcap.com/currencies/stone/	0NE	$0.00
7582	Ghospers Game	https://coinmarketcap.com/currencies/ghospers-game/	GHSP	$0.00
7583	MongolNFT Coin	https://coinmarketcap.com/currencies/mongolnft-coin/	MNFT	$0.00
7584	Zeedex	https://coinmarketcap.com/currencies/zeedex/	ZDEX	$0.04
7585	Kongtama	https://coinmarketcap.com/currencies/kongtama/	KONGTAMA	$0.00
7586	Parasol Finance	https://coinmarketcap.com/currencies/parasol-finance/	PSOL	$0.03
7587	Corsac	https://coinmarketcap.com/currencies/corsac/	CORSACV2	$0.00
7588	Ovato	https://coinmarketcap.com/currencies/ovato/	OVO	$2.75
7589	Louverture	https://coinmarketcap.com/currencies/louverture/	LVT	$0.00
7590	Zeppelin DAO	https://coinmarketcap.com/currencies/zeppelin-dao/	ZEP	$0.00
7591	Hippo Coin	https://coinmarketcap.com/currencies/hippo-coin/	HIPPO	$0.00
7592	Zoo Labs	https://coinmarketcap.com/currencies/zoo-labs/	ZOO	$0.00
7593	Dymmax	https://coinmarketcap.com/currencies/dymmax/	DMX	$0.01
7594	UltimoGG	https://coinmarketcap.com/currencies/ultimogg/	ULTGG	$0.00
7595	ShibaMask	https://coinmarketcap.com/currencies/shibamask/	SHBMA	$0.00
7596	ShibaMoon	https://coinmarketcap.com/currencies/shibamoon/	SHIBM	$0.00
7597	Regular Presale	https://coinmarketcap.com/currencies/regular-presale/	REGU	$0.00
7598	SatoshiCity	https://coinmarketcap.com/currencies/satoshicity/	$CITY	$0.00
7599	Stakemoon	https://coinmarketcap.com/currencies/stakemoon/	SMOON	$0.00
7600	Phant	https://coinmarketcap.com/currencies/phant/	PNT	$0.005458
7601	USD Bancor	https://coinmarketcap.com/currencies/usd-bancor/	USDB	$0.3621
7602	Enigma	https://coinmarketcap.com/currencies/enigma-token/	ENGM	$0.00003164
7603	HoneyFarm Finance	https://coinmarketcap.com/currencies/honeyfarm-finance/	HONEY	$1.78
7604	RevolutionGames	https://coinmarketcap.com/currencies/revolutiongames/	RVLNG	$0.002145
7605	YAM V1	https://coinmarketcap.com/currencies/yamv1/	YAM	$0.1034
7606	Asset Backed Protocol	https://coinmarketcap.com/currencies/asset-backed-protocol/	ABP	$0.001279
7607	LadderCaster	https://coinmarketcap.com/currencies/laddercaster/	LADA	$0.0008965
7608	Coin To Fish	https://coinmarketcap.com/currencies/coin-to-fish/	CTFT	$0.0...04951
7609	AtomPad	https://coinmarketcap.com/currencies/atompad/	ATPAD	$0.01437
7610	SMD COIN	https://coinmarketcap.com/currencies/smd-coin/	SMD	$0.00
7611	Litecash	https://coinmarketcap.com/currencies/litecash/	CASH	$0.00
7612	CFL 365 Finance	https://coinmarketcap.com/currencies/cfl-365-finance/	CFL365	$0.00
7613	MoonShine	https://coinmarketcap.com/currencies/moonshine/	Moon	$0.00
7614	Snoshares	https://coinmarketcap.com/currencies/snoshares/	SNOSHARE	$0.07
7615	MoonToken	https://coinmarketcap.com/currencies/moon-token/	MOONTOKEN	$0.00
7616	CHIBA INU	https://coinmarketcap.com/currencies/chiba-inu/	CHIBA	$0.00
7617	Fame Doge Coin	https://coinmarketcap.com/currencies/fame-doge-coin/	FAMEDOGE	$0.00
7618	Struggle Doge	https://coinmarketcap.com/currencies/struggle-doge/	SGDOGE	$0.00
7619	NEFTiPEDiA	https://coinmarketcap.com/currencies/neftipedia/	NFT	$0.00
7620	MagicofGold	https://coinmarketcap.com/currencies/magicofgold/	MAGIC	$0.00
7621	DAppNode	https://coinmarketcap.com/currencies/dappnode/	NODE	$0.05
7622	TokoNFT	https://coinmarketcap.com/currencies/tokonft/	TKN	$0.00
7623	WEB3 DEV	https://coinmarketcap.com/currencies/web3-dev/	WEB3	$0.00
7624	SatoShi Monsters	https://coinmarketcap.com/currencies/satoshi-monsters/	SSM	$0.00
7625	Bagus Wallet	https://coinmarketcap.com/currencies/bagus-wallet/	BG	$0.00
7626	Daikokuten Sama	https://coinmarketcap.com/currencies/daikokuten-sama/	DKKS	$0.00
7627	DinoEGG	https://coinmarketcap.com/currencies/dinoegg/	DINOEGG	$5.53
7628	SMILE	https://coinmarketcap.com/currencies/swapcoinz/	SMILE	$0.01
7629	Pandemia	https://coinmarketcap.com/currencies/pandemia-success/	SUCCESS	$0.00
7630	NftEyez	https://coinmarketcap.com/currencies/nfteyez/	EYE	$0.00
7631	SHiBGOTCHi	https://coinmarketcap.com/currencies/shibgotchi/	SHIBGOTCHI	$0.00
7632	BAPE Social Club	https://coinmarketcap.com/currencies/bored-ape-social-club/	BAPE	$0.02
7633	Polylauncher	https://coinmarketcap.com/currencies/polylauncher/	ANGEL	$0.01
7634	Universe	https://coinmarketcap.com/currencies/universe-2/	UNIV	$0.00
7635	Axie BCH - Gaming Guild	https://coinmarketcap.com/currencies/axie-bch---gaming-guild/	AXIEBCH	$0.00
7636	Utopia	https://coinmarketcap.com/currencies/utopia-bsc/	TOPIA	$0.00
7637	CryptoNeur Network foundation	https://coinmarketcap.com/currencies/cryptoneur-network-foundation/	CNF	$0.00
7638	Ixinium	https://coinmarketcap.com/currencies/ixinium/	XXA	$0.07
7639	Chainpay	https://coinmarketcap.com/currencies/chainpay/	CPAY	$0.01
7640	Crystal	https://coinmarketcap.com/currencies/crystal/	CRYSTAL	$0.00
7641	FreeRiver	https://coinmarketcap.com/currencies/freeriver/	FREE	$0.04
7642	Peakmines PEAK	https://coinmarketcap.com/currencies/peakmines-peak/	PEAK	$0.00
7643	My Pet Social	https://coinmarketcap.com/currencies/my-pet-social/	MPS	$0.00
7644	Metagamble	https://coinmarketcap.com/currencies/metagamble/	GAMBL	$0.00
7645	NFTSocial	https://coinmarketcap.com/currencies/nftsocial/	NSC	$0.00
7646	Chiwawa	https://coinmarketcap.com/currencies/chiwawa/	CHIWA	$0.00
7647	Fedora Gold	https://coinmarketcap.com/currencies/fedora-gold/	FED	$0.00
7648	CroxSwap	https://coinmarketcap.com/currencies/croxswap/	CROX	$0.01
7649	Equity	https://coinmarketcap.com/currencies/equity/	EQUITY	$0.17
7650	MiniGame	https://coinmarketcap.com/currencies/minigame/	MINIGAME	$0.00
7651	SHENG	https://coinmarketcap.com/currencies/sheng/	SHENG	$0.00
7652	Space Ore	https://coinmarketcap.com/currencies/space-ore/	SPO	$0.05
7653	RUN DOGE	https://coinmarketcap.com/currencies/run-doge/	RUNDOGE	$0.00
7654	Baby Manchester City	https://coinmarketcap.com/currencies/baby-manchester-city/	BCITY	$0.00
7655	Spywolf	https://coinmarketcap.com/currencies/spywolf/	$SPY	$0.00
7656	Maison Capital	https://coinmarketcap.com/currencies/maison-capital/	MSN	$0.01
7657	LaunchWall	https://coinmarketcap.com/currencies/launchwall/	WALL	$0.16
7658	Kangaroo Token	https://coinmarketcap.com/currencies/kangaroo/	GAR	$0.00
7659	Xaviera Techno Solutions	https://coinmarketcap.com/currencies/xaviera-techno-solutions/	XTS	$0.00
7660	Leprechaun Finance	https://coinmarketcap.com/currencies/leprechaun-finance/	LEP	$0.00
7661	Clash Of Cars	https://coinmarketcap.com/currencies/clash-of-cars/	CLASH	$0.00
7662	Dogs Kombat	https://coinmarketcap.com/currencies/dogs-kombat/	DK	$0.00
7663	Grim EVO	https://coinmarketcap.com/currencies/grim-evo/	GRIM EVO	$0.11
7664	Dune Network	https://coinmarketcap.com/currencies/dune-network/	DUN	$0.01
7665	indaHash	https://coinmarketcap.com/currencies/indahash/	IDH	$0.00
7666	King Arthur	https://coinmarketcap.com/currencies/king-arthur/	BKING	$0.00
7667	Petsneaker	https://coinmarketcap.com/currencies/petsneaker/	PSC	$0.00
7668	BitcoinX	https://coinmarketcap.com/currencies/bitcoinx/	BCX	$0.00
7669	Kalamint	https://coinmarketcap.com/currencies/kalamint/	KALAM	$0.02
7670	AMPnet Asset Platform and Exchange	https://coinmarketcap.com/currencies/ampnet-asset-platform-and-exchange/	AAPX	$0.07
7671	Pandora Finance	https://coinmarketcap.com/currencies/pandora-protocol/	PNDR	$0.01
7672	MetaZilla	https://coinmarketcap.com/currencies/metazilla/	MZ	$0.00
7673	BSCWIN Bulls	https://coinmarketcap.com/currencies/bscwin-bulls/	BSCWIN	$0.02
7674	Shibonk	https://coinmarketcap.com/currencies/shibonk/	SHIBO	$0.00
7675	GrimToken	https://coinmarketcap.com/currencies/grimtoken/	GRIM	$0.01
7676	Dopex Rebate Token	https://coinmarketcap.com/currencies/dopex-rdpx/	RDPX	$11.83
7677	BundlesBets	https://coinmarketcap.com/currencies/bundles/	BUND	$7.27
7678	REBASEAPY	https://coinmarketcap.com/currencies/rebaseapy/	REBASEAPY	$0.01
7679	Promodio	https://coinmarketcap.com/currencies/promodio/	PMD	$0.00
7680	Hermes Defi	https://coinmarketcap.com/currencies/hermes-defi/	IRIS	$0.02
7681	Moon Light Night	https://coinmarketcap.com/currencies/moon-light-night/	MLNT	$0.01
7682	Deliq Finance	https://coinmarketcap.com/currencies/deliq-finance/	DLQ	$0.01
7683	Crypto Accept	https://coinmarketcap.com/currencies/crypto-accept/	ACPT	$0.00
7684	MetaSafeMoon	https://coinmarketcap.com/currencies/metasafemoon/	METASFM	$0.00
7685	PocketNode	https://coinmarketcap.com/currencies/pocketnode/	NODE	$0.00
7686	The Fire Token	https://coinmarketcap.com/currencies/the-fire-token/	XFR	$0.00
7687	Reflecto	https://coinmarketcap.com/currencies/reflecto/	REFLECTO	$0.00
7688	ArbiNYAN	https://coinmarketcap.com/currencies/arbinyan/	NYAN	$0.00
7689	degemV2	https://coinmarketcap.com/currencies/degemv2/	DGMV2	$0.00
7690	Renascent Finance	https://coinmarketcap.com/currencies/renascent-finance/	RENASCENT	$0.11
7691	BattleRoyaleToken	https://coinmarketcap.com/currencies/battleroyaletoken/	BRTK	$0.00
7692	REALPAY	https://coinmarketcap.com/currencies/realpay/	RAP	$0.00
7693	Elite	https://coinmarketcap.com/currencies/elite/	ELITE	$0.00
7694	AngelsCreed	https://coinmarketcap.com/currencies/angelscreed/	ANGEL	$0.00
7695	CryptoSkates	https://coinmarketcap.com/currencies/cryptoskates/	CST	$0.00
7696	DegenFi	https://coinmarketcap.com/currencies/degenfi/	DEGEN	$0.07
7697	CitaDAO	https://coinmarketcap.com/currencies/citadao/	KNIGHT	$0.01
7698	Orbit	https://coinmarketcap.com/currencies/orbit1/	ORBIT	$0.00
7699	Highest Yield Savings Service	https://coinmarketcap.com/currencies/highest-yield-savings-service/	HYSS	$0.01
7700	Noah	https://coinmarketcap.com/currencies/noah/	NOAH	$0.0005065
7701	WigoSwap	https://coinmarketcap.com/currencies/wigoswap/	WIGO	$0.000314
7702	WePiggy Coin	https://coinmarketcap.com/currencies/wepiggy/	WPC	$0.0005249
7703	Nio tokenized stock FTX	https://coinmarketcap.com/currencies/nio-tokenized-stock-ftx/	NIO	$21.75
7704	BB Gaming	https://coinmarketcap.com/currencies/bb-gaming/	BB	$0.000005725
7705	WalletNow	https://coinmarketcap.com/currencies/walletnow/	WNOW	$0.01343
7706	Lyfe Silver	https://coinmarketcap.com/currencies/lyfe-silver/	LSILVER	$0.8147
7707	Weboo Swap	https://coinmarketcap.com/currencies/weboo-token/	WEBOO	$0.00007032
7708	Studio Shibli	https://coinmarketcap.com/currencies/studio-shibli/	SHIBLI	$0.0...01965
7709	AngryFloki	https://coinmarketcap.com/currencies/angryfloki/	$AFLOKI	$0.000000003762
7710	PicaArtMoney	https://coinmarketcap.com/currencies/picaartmoney/	PICA	$0.00
7711	Solabrador	https://coinmarketcap.com/currencies/solabrador/	SOLAB	$0.00
7712	XEUS	https://coinmarketcap.com/currencies/xeus/	XEUS	$0.11
7713	Blockchain Quotations Index Token	https://coinmarketcap.com/currencies/blockchain-quotations-index-token/	BQT	$0.01
7714	BitcoinBR	https://coinmarketcap.com/currencies/bitcoinbr/	BTCBR	$0.00
7715	Sishi Finance	https://coinmarketcap.com/currencies/sishi-finance/	SISHI	$0.01
7716	ChikinCoin	https://coinmarketcap.com/currencies/chikincoin/	CKC	$0.00
7717	Leafty	https://coinmarketcap.com/currencies/leafty/	LEAFTY	$0.01
7718	Scan DeFi	https://coinmarketcap.com/currencies/scan-defi/	SCAN	$0.00
7719	YDragon	https://coinmarketcap.com/currencies/ydragon/	YDR	$0.00
7720	Vase Token	https://coinmarketcap.com/currencies/vase-token/	VASE	$0.00
7721	OPPA Token	https://coinmarketcap.com/currencies/oppa-token/	OPPA	$0.00
7722	Gold Zilla	https://coinmarketcap.com/currencies/gold-zilla/	GLDZ	$0.01
7723	Dark Knight	https://coinmarketcap.com/currencies/darkknight/	DKNIGHT	$0.01
7724	DenDomains	https://coinmarketcap.com/currencies/dendomains/	DDN	$0.00
7725	RxC	https://coinmarketcap.com/currencies/rxc/	RXC	$0.00
7726	Touch Social	https://coinmarketcap.com/currencies/touch-social/	TST	$0.00
7727	D Community	https://coinmarketcap.com/currencies/d-community/	DILI	$0.00
7728	ARTE	https://coinmarketcap.com/currencies/arte/	ARTE	$0.00
7729	Nxtech Network	https://coinmarketcap.com/currencies/nxtech-network/	NX	$0.00
7730	Brickchain Finance	https://coinmarketcap.com/currencies/brickchain-finance/	BRICK	$0.00
7731	POLYX	https://coinmarketcap.com/currencies/polyx/	PXT	$0.00
7732	Bamboo Coin	https://coinmarketcap.com/currencies/bamboo-coin/	BMBO	$0.00
7733	PetsHelp Coin	https://coinmarketcap.com/currencies/petshelp-coin/	PETH	$0.00
7734	Cricket Foundation	https://coinmarketcap.com/currencies/cricket-foundation/	CRIC	$0.00
7735	TruckCompany	https://coinmarketcap.com/currencies/truckcompany/	TRK	$0.00
7736	War of Tribes	https://coinmarketcap.com/currencies/war-of-tribes/	WOTG	$0.00
7737	Blockchain Exchange Alliance	https://coinmarketcap.com/currencies/blockchain-exchange-alliance/	BXA	$0.00
7738	Empty Set Crypto	https://coinmarketcap.com/currencies/empty-set-crypto/	ESC	$0.00
7739	Ape Universe	https://coinmarketcap.com/currencies/ape-universe/	APEU	$0.00
7740	Stacy	https://coinmarketcap.com/currencies/stacy/	STACY	$0.00
7741	Ashera	https://coinmarketcap.com/currencies/ashera/	ASH	$0.00
7742	Kitty Kat Coin	https://coinmarketcap.com/currencies/kitty-kat-coin/	KATS	$0.03
7743	OTFINANCIAL	https://coinmarketcap.com/currencies/otfinancial/	OT	$0.00
7744	Bitpower	https://coinmarketcap.com/currencies/bitpower/	BPP	$0.00
7745	DeFi Gold	https://coinmarketcap.com/currencies/defi-gold/	DFGL	$0.05
7746	Crabada Amulet	https://coinmarketcap.com/currencies/crabada-amulet/	CRAM	$0.01
7747	MicroCreditToken	https://coinmarketcap.com/currencies/microcredittoken/	1MCT	$0.01
7748	RichCity	https://coinmarketcap.com/currencies/richcity/	RICH	$0.00
7749	Shibalana	https://coinmarketcap.com/currencies/shibalana/	SHIBA	$0.00
7750	Easter Floki	https://coinmarketcap.com/currencies/easter-floki/	EFLOKI	$0.00
7751	Digible	https://coinmarketcap.com/currencies/digible/	DIGI	$0.00
7752	Tranquility City	https://coinmarketcap.com/currencies/tranquility-city/	LUMEN	$0.09
7753	Cycle Finance	https://coinmarketcap.com/currencies/cycle-finance/	CYCLE	$0.20
7754	Xircus	https://coinmarketcap.com/currencies/xircus/	XIRCUS	$0.00
7755	PyramiDAO	https://coinmarketcap.com/currencies/pyramidao/	PYRA	$0.00
7756	The Philosophers Stone	https://coinmarketcap.com/currencies/the-philosophers-stone/	TPOS	$0.01
7757	CoviCoin	https://coinmarketcap.com/currencies/covicoin/	CVC	$0.00
7758	Canary	https://coinmarketcap.com/currencies/canary/	CNR	$0.00
7759	Space Dog	https://coinmarketcap.com/currencies/space-dog/	SPACEDOG	$0.00
7760	Neumark	https://coinmarketcap.com/currencies/neumark/	NEU	$0.02
7761	BNB CHAIN ALL BEST ICO	https://coinmarketcap.com/currencies/bnb-chain-all-best-ico/	BNBALLBI	$0.00
7762	Velox	https://coinmarketcap.com/currencies/velox/	VLX	$0.00
7763	ElonCola	https://coinmarketcap.com/currencies/eloncola/	COLA	$0.00
7764	BabyFlokiZilla	https://coinmarketcap.com/currencies/babyflokizilla/	BABYFLOKIZILLA	$0.00
7765	SoMee Advertising Token	https://coinmarketcap.com/currencies/somee-advertising-token/	SAT	$0.00
7766	Wiggly Finance	https://coinmarketcap.com/currencies/wiggly-finance/	WGL	$0.00
7767	HoneyBee	https://coinmarketcap.com/currencies/honeybee/	BEE	$0.13
7768	AnonPay	https://coinmarketcap.com/currencies/anonpay/	APAY	$0.00
7769	Microtick	https://coinmarketcap.com/currencies/microtick/	TICK	$0.33
7770	DOGEDI	https://coinmarketcap.com/currencies/dogedi/	DOGEDI	$0.00
7771	ORO	https://coinmarketcap.com/currencies/oro/	ORO	$0.01
7772	PEACOCKCOIN (BSC)	https://coinmarketcap.com/currencies/peacockcoin/	PEKC	$0.00
7773	BaTorrent	https://coinmarketcap.com/currencies/batorrent/	BA	$0.00
7774	OneBit	https://coinmarketcap.com/currencies/onebit/	1BIT	$0.00
7775	MetaWolf	https://coinmarketcap.com/currencies/metawolf/	MWOLF	$0.00
7776	MetaRacers	https://coinmarketcap.com/currencies/metaracers/	MRS	$0.00
7777	P2P	https://coinmarketcap.com/currencies/p2p/	P2P	$0.02
7778	Super Cat Coin	https://coinmarketcap.com/currencies/super-cat-coin/	SuperCat	$0.00
7779	WIVA by WiV Technology	https://coinmarketcap.com/currencies/wiva/	WIVA	$0.00
7780	Xbullion	https://coinmarketcap.com/currencies/xbullion/	GOLD	$57.52
7781	PearZap	https://coinmarketcap.com/currencies/pearzap/	PEAR	$0.00
7782	Basket Legends	https://coinmarketcap.com/currencies/basket-legends/	BBL	$0.00
7783	LuckyPig	https://coinmarketcap.com/currencies/luckypig/	LuckyPig	$0.00
7784	Shiba Elon	https://coinmarketcap.com/currencies/shiba-elon/	ESHIB	$0.00
7785	Mithrilverse	https://coinmarketcap.com/currencies/bsc-mithril/	MITHRIL	$0.00
7786	Mindsync	https://coinmarketcap.com/currencies/mindsync/	MAI	$0.03
7787	Prostarter	https://coinmarketcap.com/currencies/prostarter/	PROT	$0.01
7788	Solomon Defi	https://coinmarketcap.com/currencies/solomon-defi/	SLM	$0.00
7789	TEAL	https://coinmarketcap.com/currencies/teal/	TEAT	$0.00
7790	PeerEx	https://coinmarketcap.com/currencies/peerex/	PERX	$0.00
7791	3x Short Tezos Token	https://coinmarketcap.com/currencies/3x-short-tezos-token/	XTZBEAR	$0.00
7792	Crypto Royale	https://coinmarketcap.com/currencies/crypto-royale/	ROY	$0.04
7793	SafeShiba	https://coinmarketcap.com/currencies/safeshiba/	SAFESHIB	$0.00
7794	ELIS	https://coinmarketcap.com/currencies/elis/	XLS	$0.33
7795	Canon Crypto	https://coinmarketcap.com/currencies/canon-crypto/	CATO	$0.00
7796	Evergreen token	https://coinmarketcap.com/currencies/evergreen-token/	EGT	$0.00
7797	Vmates	https://coinmarketcap.com/currencies/vmates/	MATE	$0.05
7798	Blockius	https://coinmarketcap.com/currencies/blockpad/	BLOS	$0.03
7799	BuildUp	https://coinmarketcap.com/currencies/buildup/	BUP	$0.04
7800	FXT Token	https://coinmarketcap.com/currencies/fxt-token/	FXT	$0.000009991
7801	MOTHEREARTH	https://coinmarketcap.com/currencies/motherearth/	MOT	$0.000003667
7802	GOinfluencer	https://coinmarketcap.com/currencies/goinfluencer/	GOIN	$0.0004044
7803	Pangolin Swap	https://coinmarketcap.com/currencies/pangolin-swap/	PANGOLIN	$0.01573
7804	Joys Digital	https://coinmarketcap.com/currencies/joys-digital/	JOYS	$0.0004838
7805	Thorus	https://coinmarketcap.com/currencies/thorusfi/	THO	$0.06119
7806	SmashCash	https://coinmarketcap.com/currencies/smashcash/	SMASH	$0.0004245
7807	Parking Infinity	https://coinmarketcap.com/currencies/parking-infinity/	PARK	$0.0001087
7808	Seeded Network	https://coinmarketcap.com/currencies/seeded-network/	SEEDED	$0.002892
7809	Whirl Finance	https://coinmarketcap.com/currencies/whirl-finance/	WHIRL	$0.00006004
7810	Game X Change Potion	https://coinmarketcap.com/currencies/game-x-change-potion/	GXP	$0.00
7811	Monster Adventure Token	https://coinmarketcap.com/currencies/monster-adventure-token/	MAT	$0.01
7812	PumpIT Launchpad	https://coinmarketcap.com/currencies/pumpit-launchpad/	$PUMPIT	$0.00
7813	MOONGAME	https://coinmarketcap.com/currencies/moongame/	MGT	$0.00
7814	CamelToken	https://coinmarketcap.com/currencies/cameltoken/	CMLT	$0.00
7815	Bankless DeFi Innovation Index	https://coinmarketcap.com/currencies/bankless-defi-innovation-index/	GMI	$13.12
7816	4MOVE	https://coinmarketcap.com/currencies/4move/	4MOVE	$0.00
7817	Yucreat	https://coinmarketcap.com/currencies/yucreat/	YUCT	$0.00
7818	BLASTER TOKEN	https://coinmarketcap.com/currencies/blaster-token/	BLT	$0.00
7819	Everyonescrypto	https://coinmarketcap.com/currencies/everyonescrypto/	EOC	$0.00
7820	CollegeCoinNetwork	https://coinmarketcap.com/currencies/collegecoinnetwork/	CCN	$0.00
7821	Jomon Shiba	https://coinmarketcap.com/currencies/jomon-shiba/	JSHIBA	$0.00
7822	HighPoint Finance	https://coinmarketcap.com/currencies/highpoint-finance/	HPT	$0.00
7823	COXSWAP	https://coinmarketcap.com/currencies/coxswap/	COX	$0.00
7824	RISQ Protocol	https://coinmarketcap.com/currencies/risq-protocol/	RISQ	$0.00
7825	NFT Tech	https://coinmarketcap.com/currencies/nft-tech/	NFTT	$0.00
7826	Guapcoin	https://coinmarketcap.com/currencies/guapcoin/	GUAP	$0.01
7827	Roboots	https://coinmarketcap.com/currencies/roboots/	RBO	$0.00
7828	Beast NFT Token	https://coinmarketcap.com/currencies/beast-nft-token/	BNFT	$0.00
7829	Nobelium	https://coinmarketcap.com/currencies/nobelium/	NOBEL	$0.03
7830	Solum	https://coinmarketcap.com/currencies/solum/	SOLUM	$0.00
7831	AstroDonkey	https://coinmarketcap.com/currencies/astrodonkey/	DNKY	$0.00
7832	KING FOREVER	https://coinmarketcap.com/currencies/king-forever/	KFR	$0.00
7833	Camel Coin	https://coinmarketcap.com/currencies/camel-coin/	CMLCOIN	$0.05
7834	ACY FINANCE	https://coinmarketcap.com/currencies/acy-finance/	ACY	$0.01
7835	FIA Protocol	https://coinmarketcap.com/currencies/fia-protocol/	FIA	$0.00
7836	Bestay	https://coinmarketcap.com/currencies/bestay/	BSY	$0.01
7837	Vodi X	https://coinmarketcap.com/currencies/vodi-x/	VDX	$0.00
7838	The Three Kingdoms	https://coinmarketcap.com/currencies/the-three-kingdoms-chi/	CHI	$0.00
7839	MMA Gaming	https://coinmarketcap.com/currencies/mma-gaming/	MMA	$0.01
7840	LIT	https://coinmarketcap.com/currencies/lit/	LIT	$0.00
7841	Rebase Aggregator Capital	https://coinmarketcap.com/currencies/rebase-aggregator-capital/	$REACT	$0.00
7842	BEUROP	https://coinmarketcap.com/currencies/beurop/	BEPR	$0.01
7843	Twittelon BOSS	https://coinmarketcap.com/currencies/twittelon-boss/	TBOSS	$0.00
7844	Wallet Pay	https://coinmarketcap.com/currencies/wallet-pay/	XPAY	$0.00
7845	MetaRoyale	https://coinmarketcap.com/currencies/metaroyale/	MRVR	$0.00
7846	Dark Matter	https://coinmarketcap.com/currencies/vibranium-dkmt/	DKMT	$0.00
7847	XVIX	https://coinmarketcap.com/currencies/xvix/	XVIX	$8.60
7848	Staked TAROT	https://coinmarketcap.com/currencies/staked-tarot/	XTAROT	$0.07
7849	Web 3 Development	https://coinmarketcap.com/currencies/web-3-development/	3WEB	$0.00
7850	SafePizza	https://coinmarketcap.com/currencies/safepizza/	PIZZA	$0.00
7851	FarmHero	https://coinmarketcap.com/currencies/farm-hero/	HONOR	$0.00
7852	CroNodes	https://coinmarketcap.com/currencies/cronodes/	CRN	$0.66
7853	FQSwap	https://coinmarketcap.com/currencies/fqswap/	FQS	$0.00
7854	Adadex Tools	https://coinmarketcap.com/currencies/adadex-tools/	ADAT	$0.00
7855	Hero Floki	https://coinmarketcap.com/currencies/hero-floki/	HERO	$0.00
7856	DOOiT V2	https://coinmarketcap.com/currencies/dooit-token/	DOO	$0.00
7857	Baby CateCoin	https://coinmarketcap.com/currencies/baby-catecoin/	BABYCATE	$0.00
7858	Lotus Capital	https://coinmarketcap.com/currencies/lotus-capital/	LC	$0.00
7859	Trusted Node	https://coinmarketcap.com/currencies/trusted-node/	TNODE	$0.02
7860	Kripto Galaxy Battle	https://coinmarketcap.com/currencies/kripto-galaxy-battle/	KABA	$0.04
7861	swiss.finance	https://coinmarketcap.com/currencies/swiss-finance/	SWISS	$10.99
7862	DinoStep	https://coinmarketcap.com/currencies/dinostep/	DNS	$0.00
7863	BRCP TOKEN	https://coinmarketcap.com/currencies/brcp-token/	BRCP	$0.14
7864	ADToken	https://coinmarketcap.com/currencies/ad-token/	AD	$0.00
7865	Akamaru Inu	https://coinmarketcap.com/currencies/akamaru-inu/	AKAMARU	$0.00
7866	Shiba Inu Pay	https://coinmarketcap.com/currencies/shiba-inu-pay/	SHIBAY	$0.00
7867	DefiBay	https://coinmarketcap.com/currencies/defibay/	DBAY	$0.00
7868	Asgard Dao V2	https://coinmarketcap.com/currencies/asgard-dao-v2/	ASGARDV2	$0.02
7869	SPACE-iZ	https://coinmarketcap.com/currencies/space-iz/	SPIZ	$0.00
7870	Spacelens	https://coinmarketcap.com/currencies/spacelens/	SPACE	$0.00
7871	Eloin	https://coinmarketcap.com/currencies/eloin/	ELOIN	$0.00
7872	Leo	https://coinmarketcap.com/currencies/leo/	LEO	$10.67
7873	Bitmon	https://coinmarketcap.com/currencies/bitmon/	BIT	$0.00
7874	dFuture	https://coinmarketcap.com/currencies/dfuture/	DFT	$0.00
7875	mCat	https://coinmarketcap.com/currencies/mcat/	MCAT	$0.22
7876	TOURIST SHIBA INU	https://coinmarketcap.com/currencies/tourist-shiba-inu/	TOURISTS	$0.00
7877	Arbidoge	https://coinmarketcap.com/currencies/arbidoge/	ADOGE	$0.00
7878	Santa Coin	https://coinmarketcap.com/currencies/santa-coin-2/	SANTA	$0.00
7879	LOFI-DEFI	https://coinmarketcap.com/currencies/lofi-defi/	LOFI	$0.00
7880	Direwolf	https://coinmarketcap.com/currencies/direwolf/	DIREWOLF	$0.00
7881	Beach Token	https://coinmarketcap.com/currencies/beach-token/	BEACH	$0.00
7882	Shiba Dollars	https://coinmarketcap.com/currencies/shiba-dollars/	SHIBADOLLARS	$0.00
7883	Foxy Equilibrium	https://coinmarketcap.com/currencies/foxy-equilibrium/	Foxy	$0.00
7884	Eight Hours	https://coinmarketcap.com/currencies/eight-hours/	EHRT	$0.00
7885	Octane Finance	https://coinmarketcap.com/currencies/octane-finance/	OCTANE	$0.00
7886	Beskar	https://coinmarketcap.com/currencies/beskar/	BSK-BAA025	$0.00
7887	Gladian	https://coinmarketcap.com/currencies/gladian/	GLD	$0.00
7888	MoveX	https://coinmarketcap.com/currencies/movex/	MOVX	$0.00
7889	Experty Wisdom Token	https://coinmarketcap.com/currencies/experty-wisdom-token/	WIS	$0.02
7890	HoneyBadger	https://coinmarketcap.com/currencies/honeybadger/	HONEYBADGER	$0.00
7891	Silver Coin	https://coinmarketcap.com/currencies/silver-coin/	SC	$0.00
7892	DOOS TOKEN	https://coinmarketcap.com/currencies/doos-token/	DOOS	$0.00
7893	SPACELINK	https://coinmarketcap.com/currencies/spacelink/	SPLINK	$0.00
7894	Baby Vizsla Inu	https://coinmarketcap.com/currencies/baby-vizsla-inu/	BABYVIZSLA	$0.00
7895	AlgOil	https://coinmarketcap.com/currencies/algoil/	AGOLP	$0.00
7896	milestoneBased	https://coinmarketcap.com/currencies/milestonebased/	MILE	$1.83
7897	Princess Striker Gem	https://coinmarketcap.com/currencies/princess-striker-gem/	PRSG	$0.00
7898	Kekwcoin	https://coinmarketcap.com/currencies/kekwcoin/	KEKW	$0.00
7899	AMATERAS	https://coinmarketcap.com/currencies/amateras/	AMT	$0.01
7900	Medusa	https://coinmarketcap.com/currencies/medusa/	MEDUSA	$0.01398
7901	Solareum Wallet	https://coinmarketcap.com/currencies/solareum-wallet/	XSB	$0.0009174
7902	EverFight	https://coinmarketcap.com/currencies/everfight/	EF	$0.000003765
7903	Meowth Neko	https://coinmarketcap.com/currencies/meowth-neko/	MEWN	$0.0...01381
7904	AJEVERSE	https://coinmarketcap.com/currencies/ajeverse/	AJE	$0.0...09992
7905	PHILLIPS PAY COIN	https://coinmarketcap.com/currencies/philips-pay-coin/	PPC	$0.0005994
7906	Coral Swap	https://coinmarketcap.com/currencies/coral-swap/	CORAL	$0.09979
7907	CrazyMiner	https://coinmarketcap.com/currencies/crazyminer/	PWR	$0.0004931
7908	DNA Share	https://coinmarketcap.com/currencies/dna-share/	DSHARE	$0.04712
7909	Volatility Protocol Token	https://coinmarketcap.com/currencies/volatility-protocol-token/	VOL	$0.003906
7910	Yarloo	https://coinmarketcap.com/currencies/yarloo/	YARL	$0.01
7911	Digital Bank of Africa	https://coinmarketcap.com/currencies/digital-bank-of-africa/	DBA	$0.05
7912	ZilPay Wallet / Dragon Zil Token	https://coinmarketcap.com/currencies/zilpay-wallet/	ZLP	$0.12
7913	DeepBlueSea	https://coinmarketcap.com/currencies/deepbluesea/	DBEA	$0.14
7914	Gallant	https://coinmarketcap.com/currencies/gallant/	GAL	$0.00
7915	DoctorS Token	https://coinmarketcap.com/currencies/doctors-token/	DST	$0.00
7916	Atlas Cloud	https://coinmarketcap.com/currencies/atlas-cloud/	ATLAS	$0.33
7917	E1337	https://coinmarketcap.com/currencies/e1337/	1337	$0.21
7918	Yearn Finance DOT	https://coinmarketcap.com/currencies/yearn-finance-dot/	YFDOT	$2.70
7919	SolDate Token	https://coinmarketcap.com/currencies/soldate-token/	DATE	$0.00
7920	FLAMA	https://coinmarketcap.com/currencies/flama/	FMA	$0.02
7921	Tribeland	https://coinmarketcap.com/currencies/tribeland/	TRBL	$0.00
7922	ArmzLegends	https://coinmarketcap.com/currencies/armzlegends/	PROT	$0.00
7923	SaveToken	https://coinmarketcap.com/currencies/savetoken/	SAVE	$0.00
7924	Metarea VR	https://coinmarketcap.com/currencies/metarea-vr/	METAVR	$0.00
7925	DeFi of Thrones	https://coinmarketcap.com/currencies/defi-of-thrones/	DOTX	$0.02
7926	3X Long Dragon Index Token	https://coinmarketcap.com/currencies/3x-long-dragon-index-token/	DRGNBULL	$0.02
7927	MACH Project	https://coinmarketcap.com/currencies/mach-project/	MACH	$0.01
7928	Rivermount	https://coinmarketcap.com/currencies/rivermount/	RM	$0.00
7929	MOCHISWAP	https://coinmarketcap.com/currencies/mochiswap/	MOCHI	$0.00
7930	Melo Token	https://coinmarketcap.com/currencies/melo-token/	MELO	$0.00
7931	xDollar Stablecoin	https://coinmarketcap.com/currencies/xdollar-stablecoin/	XUSD	$1.06
7932	ITR.ETH Intercoin Investor	https://coinmarketcap.com/currencies/intercoin-itr-eth/	ITR	$0.10
7933	CitiOs	https://coinmarketcap.com/currencies/citios/	R2R	$0.00
7934	MonstaVerse	https://coinmarketcap.com/currencies/monstaverse/	MONSTR	$0.00
7935	Omega Protocol Money	https://coinmarketcap.com/currencies/omega-protocol-money/	OPM	$0.00
7936	FINANCIAL INVESTMENT TOKEN	https://coinmarketcap.com/currencies/financial-investment-token/	FIT	$0.00
7937	Malt Stablecoin V2	https://coinmarketcap.com/currencies/malt-stablecoin-v2/	MALT	$0.00
7938	Flux Protocol	https://coinmarketcap.com/currencies/flux-protocol/	FLUX	$0.03
7939	X AE A-12	https://coinmarketcap.com/currencies/x-ae-a-12/	XAEA12	$0.00
7940	BeeKan	https://coinmarketcap.com/currencies/beekan/	BKBT	$0.00
7941	PolyPup Finance	https://coinmarketcap.com/currencies/polypup-finance/	COLLAR	$0.00
7942	PRiVCY	https://coinmarketcap.com/currencies/privcy/	PRIV	$0.00
7943	YaySwap	https://coinmarketcap.com/currencies/yayswap/	YAY	$0.00
7944	3X Long TomoChain Token	https://coinmarketcap.com/currencies/3x-long-tomochain-token/	TOMOBULL	$0.00
7945	Compound Augur	https://coinmarketcap.com/currencies/compound-augur/	CREP	$0.16
7946	Pundi X (Old)	https://coinmarketcap.com/currencies/pundi-x/	NPXS	$0.00
7947	DigiDinar Token	https://coinmarketcap.com/currencies/digidinar-token/	DDRT	$0.00
7948	Imsmart	https://coinmarketcap.com/currencies/imsmart/	IMT	$0.09
7949	Extend Finance	https://coinmarketcap.com/currencies/extend-finance/	EXF	$0.00
7950	ZINJA	https://coinmarketcap.com/currencies/zinja/	Z	$0.00
7951	Yfi.mobi	https://coinmarketcap.com/currencies/yfi-mobi/	YFIM	$2.51
7952	SafeEarth	https://coinmarketcap.com/currencies/safeearth/	SAFEEARTH	$0.00
7953	GSENetwork	https://coinmarketcap.com/currencies/gsenetwork/	GSE	$0.00
7954	Bafe io	https://coinmarketcap.com/currencies/bafe-io/	BAFE	$0.00
7955	Holdex Finance	https://coinmarketcap.com/currencies/holdex-finance/	HOLDEX	$0.00
7956	Phoenix Global [old]	https://coinmarketcap.com/currencies/phoenix-global/	PHX	$0.00
7957	Midas Dollar	https://coinmarketcap.com/currencies/midas-dollar/	MDO	$0.03
7958	DigiDinar	https://coinmarketcap.com/currencies/digidinar/	DDR	$0.01
7959	Metatrone	https://coinmarketcap.com/currencies/metatrone/	MET	$0.00
7960	Star Chain	https://coinmarketcap.com/currencies/star-chain/	STAR1	$0.06
7961	Future	https://coinmarketcap.com/currencies/future/	FTR	$0.29
7962	Almond	https://coinmarketcap.com/currencies/almond/	ALM	$0.00
7963	The People's Coin	https://coinmarketcap.com/currencies/the-peoples-coin/	PEEPS	$0.00
7964	SolCondoms	https://coinmarketcap.com/currencies/solcondoms/	CONDOMS	$0.00
7965	Zenith Token	https://coinmarketcap.com/currencies/zenith-token/	ZENX	$0.00
7966	The Underground	https://coinmarketcap.com/currencies/the-underground/	BLOOD	$0.00
7967	Upper Euro	https://coinmarketcap.com/currencies/upper-euro/	EURU	$0.16
7968	Meta Inu Token	https://coinmarketcap.com/currencies/meta-inu-token/	META	$0.00
7969	Dexfolio	https://coinmarketcap.com/currencies/dexfolio/	DEXF	$0.00
7970	Tip.Blue	https://coinmarketcap.com/currencies/tip-blue/	BLUE	$0.00
7971	Profile Utility Token	https://coinmarketcap.com/currencies/profile-utility-token/	PUT	$0.00
7972	Moon Robots	https://coinmarketcap.com/currencies/moon-robots/	OIL	$0.00
7973	SkyDOS	https://coinmarketcap.com/currencies/skydos/	SDC	$0.00
7974	mKitty	https://coinmarketcap.com/currencies/mkitty/	MKITTY	$0.12
7975	YSL	https://coinmarketcap.com/currencies/ysl-io/	YSL	$0.00
7976	SatoExchange Token	https://coinmarketcap.com/currencies/satoexchange-token/	SATX	$0.00
7977	Spookeletons Token	https://coinmarketcap.com/currencies/spookeletons-token/	SPKL	$0.00
7978	MYX Network	https://coinmarketcap.com/currencies/myx-network/	MYX	$0.00
7979	Mondo Community Coin	https://coinmarketcap.com/currencies/mondo-community-coin/	MNDCC	$0.22
7980	DeVault	https://coinmarketcap.com/currencies/devault/	DVT	$0.00
7981	ACryptoSI	https://coinmarketcap.com/currencies/acryptosi/	ACSI	$0.49
7982	Rally (Solana)	https://coinmarketcap.com/currencies/rally-solana/	SRLY	$0.06
7983	Kepler Network	https://coinmarketcap.com/currencies/kepler-network/	KMW	$0.00
7984	NFTmall	https://coinmarketcap.com/currencies/nftmall/	GEM	$0.02
7985	Ankr Reward Earning Staked AVAX	https://coinmarketcap.com/currencies/ankr-avalanche-reward-earning-bond/	aAVAXb	$16.47
7986	TurboTrix Finance	https://coinmarketcap.com/currencies/turbotrix-finance/	TTF	$0.00
7987	JustYours	https://coinmarketcap.com/currencies/justyours/	JUST	$0.00
7988	01coin	https://coinmarketcap.com/currencies/01coin/	ZOC	$0.00
7989	Multi-Farm Capital	https://coinmarketcap.com/currencies/multi-farm-capital/	MFC	$0.00
7990	CRB Coin	https://coinmarketcap.com/currencies/crb-coin/	CRB	$0.00
7991	TakoDefi	https://coinmarketcap.com/currencies/takodefi/	TAKO	$0.00
7992	Chimp Fight	https://coinmarketcap.com/currencies/chimp-fight/	NANA	$0.00
7993	Global Gaming	https://coinmarketcap.com/currencies/global-gaming/	GMNG	$0.00
7994	Non-Fungible TOKE	https://coinmarketcap.com/currencies/non-fungible-toke/	TOKE	$0.00
7995	MeroeChain	https://coinmarketcap.com/currencies/meroechain/	MRC	$0.00
7996	Genie Protocol	https://coinmarketcap.com/currencies/genie-protocol/	GNP	$0.00
7997	SafeBitcoin	https://coinmarketcap.com/currencies/safebtc/	SAFEBTC	$0.00
7998	Kitty Coin	https://coinmarketcap.com/currencies/kitty-coin/	KITTY	$0.00
7999	Cipher	https://coinmarketcap.com/currencies/cipher-v2/	CPR	$0.00
8000	Cipher	https://coinmarketcap.com/currencies/cipher-v2/	CPR	$0.0000008344
8001	Universe Coin	https://coinmarketcap.com/currencies/universe-coin/	UNIS	$0.0003162
8002	LogiTron	https://coinmarketcap.com/currencies/logitron/	LTR	$0.02298
8003	Yield Parrot	https://coinmarketcap.com/currencies/yield-parrot/	LORY	$0.004248
8004	Vendit	https://coinmarketcap.com/currencies/vendit/	VNDT	$0.0009991
8005	DeFi Insurance Protocol	https://coinmarketcap.com/currencies/defi-insurance-protocol/	DFIP	$0.000001923
8006	RUSH	https://coinmarketcap.com/currencies/rush/	RUC	$0.004809
8007	TOZEX	https://coinmarketcap.com/currencies/tozex/	TOZ	$0.04993
8008	Documentchain	https://coinmarketcap.com/currencies/documentchain/	DMS	$0.00396
8009	Genebank Token	https://coinmarketcap.com/currencies/genebank-token/	GNBT	$0.007093
8010	PREDIQT	https://coinmarketcap.com/currencies/prediqt/	PQT	$0.00
8011	Kalkicoin	https://coinmarketcap.com/currencies/kalkicoin/	KLC	$0.02
8012	Xpansion Game	https://coinmarketcap.com/currencies/xpansion-game/	XPS	$0.00
8013	Sudan Gold Coin	https://coinmarketcap.com/currencies/sudan-gold-coin/	SGC	$0.01
8014	Hatch DAO	https://coinmarketcap.com/currencies/hatch-dao/	HATCH	$0.00
8015	ITEN	https://coinmarketcap.com/currencies/iten/	ITEN	$0.00
8016	TILWIKI	https://coinmarketcap.com/currencies/tilwiki/	TLW	$0.20
8017	Hamtaro	https://coinmarketcap.com/currencies/hamtaro/	HAMTARO	$0.00
8018	sKLAY	https://coinmarketcap.com/currencies/sklay/	SKLAY	$0.27
8019	Morpheus Token	https://coinmarketcap.com/currencies/morpheus-token/	MORPH	$0.01
8020	Upper Dollar	https://coinmarketcap.com/currencies/upper-dollar/	USDU	$0.48
8021	Dextoken	https://coinmarketcap.com/currencies/dextoken/	DEXG	$7.73
8022	Grok	https://coinmarketcap.com/currencies/grok/	GROK	$0.00
8023	Golden Ratio Coin	https://coinmarketcap.com/currencies/golden-ratio-coin/	GOLDR	$0.02
8024	PowerBalt	https://coinmarketcap.com/currencies/powerbalt/	PWRB	$0.19
8025	SAFESUN	https://coinmarketcap.com/currencies/safesun-crypto/	SAFESUN	$0.00
8026	GIVLY Coin	https://coinmarketcap.com/currencies/givly-coin/	GIV	$0.00
8027	CanYaCoin	https://coinmarketcap.com/currencies/canyacoin/	CAN	$0.01
8028	Fiscus.fyi	https://coinmarketcap.com/currencies/fiscus-fyi/	FFYI	$0.29
8029	Mochi Inu	https://coinmarketcap.com/currencies/mochi-inu/	MOCHI	$0.00
8030	Advanced Internet Blocks	https://coinmarketcap.com/currencies/advanced-internet-blocks/	AIB	$0.00
8031	BITCOIN INTERNATIONAL	https://coinmarketcap.com/currencies/bitcoin-international/	BTCI	$0.07
8032	Jolofcoin	https://coinmarketcap.com/currencies/jolofcoin/	JOL	$0.00
8033	DiamondToken	https://coinmarketcap.com/currencies/diamondtoken/	DIAMOND	$8.82
8034	Poof.cash	https://coinmarketcap.com/currencies/poof-cash/	POOF	$0.00
8035	MocktailSwap	https://coinmarketcap.com/currencies/mocktailswap/	MOK	$0.00
8036	Spear Finance	https://coinmarketcap.com/currencies/spear-finance/	SPEAR	$0.00
8037	Torex	https://coinmarketcap.com/currencies/torex/	TOR	$0.00
8038	Useless	https://coinmarketcap.com/currencies/useless/	USELESS	$0.00
8039	XTRM COIN	https://coinmarketcap.com/currencies/xtrm-coin/	XTRM	$0.00
8040	SleepEarn Finance	https://coinmarketcap.com/currencies/sleepearn-finance/	SEN	$0.06
8041	VooVoo	https://coinmarketcap.com/currencies/voovoo/	VOO	$0.00
8042	Fashion Coin	https://coinmarketcap.com/currencies/fashion-coin/	FSHN	$0.00
8043	MCF Token	https://coinmarketcap.com/currencies/max-crowdfund/	MCF	$0.00
8044	Monster	https://coinmarketcap.com/currencies/monster-metaland/	MST	$0.09
8045	Arbys Token	https://coinmarketcap.com/currencies/arbee-info/	ARBYS	$0.10
8046	Crypto Village Accelerator	https://coinmarketcap.com/currencies/new-crypto-village-accelerator/	CVAG	$0.00
8047	The Hustle App	https://coinmarketcap.com/currencies/the-hustle-app/	HUSL	$0.00
8048	ParadiseFi	https://coinmarketcap.com/currencies/paradisefi/	EDEN	$0.00
8049	Etherpay	https://coinmarketcap.com/currencies/etherpay/	ETHPY	$0.00
8050	Deez Nuts	https://coinmarketcap.com/currencies/deez-nuts/	DEEZNUTS	$0.00
8051	Ternio	https://coinmarketcap.com/currencies/ternio/	TERN	$0.01
8052	Demeter Chain	https://coinmarketcap.com/currencies/demeter-chain/	DMTC	$0.01
8053	Gondola Finance	https://coinmarketcap.com/currencies/gondola-finance/	GDL	$0.00
8054	HorizonDollar	https://coinmarketcap.com/currencies/horizondollar/	HZD	$0.00
8055	Jungle	https://coinmarketcap.com/currencies/jungle/	JUNGLE	$0.05
8056	ZUZ Protocol	https://coinmarketcap.com/currencies/zuz-protocol/	ZUZ	$0.04
8057	CreamPYE	https://coinmarketcap.com/currencies/creampye/	PYE	$0.00
8058	Snowtomb	https://coinmarketcap.com/currencies/snowtomb/	STOMB	$0.07
8059	Niobio	https://coinmarketcap.com/currencies/niobio/	NBR	$0.02
8060	TheSolanDAO	https://coinmarketcap.com/currencies/thesolandao/	SDO	$0.00
8061	LedgerScore	https://coinmarketcap.com/currencies/ledgerscore/	LED	$0.00
8062	PolygonFarm Finance	https://coinmarketcap.com/currencies/polygonfarm-finance/	SPADE	$0.01
8063	Doaibu	https://coinmarketcap.com/currencies/doaibu/	DOA	$0.00
8064	Again Project	https://coinmarketcap.com/currencies/again-project/	AGAIN	$0.02
8065	Absorber Protocol	https://coinmarketcap.com/currencies/absorber-protocol/	ABS	$0.04
8066	Golden Duck	https://coinmarketcap.com/currencies/golden-duck/	GOLDUCK	$0.00
8067	LegalBlock	https://coinmarketcap.com/currencies/legalblock/	LBK	$0.00
8068	Virgo	https://coinmarketcap.com/currencies/virgo/	VGO	$0.11
8069	Frey	https://coinmarketcap.com/currencies/frey/	FREY	$0.79
8070	SW DAO	https://coinmarketcap.com/currencies/sw-dao/	SWD	$4.08
8071	GreenTek	https://coinmarketcap.com/currencies/greentek/	GTE	$0.08
8072	Unlimited FiscusFYI	https://coinmarketcap.com/currencies/unlimited-fiscusfyi/	UFFYI	$0.00
8073	Hyper Deflate	https://coinmarketcap.com/currencies/hyper-deflate/	HDFL	$0.00
8074	Roar Soltigers Token	https://coinmarketcap.com/currencies/roar-token/	ROAR	$0.00
8075	BitValve	https://coinmarketcap.com/currencies/bitvalve/	BTV	$0.06
8076	Semitoken	https://coinmarketcap.com/currencies/semitoken/	SEMI	$0.00
8077	Strite	https://coinmarketcap.com/currencies/strite/	STRI	$0.01
8078	DKEY BANK	https://coinmarketcap.com/currencies/dkey-bank/	DKEY	$0.22
8079	Ticket Finance	https://coinmarketcap.com/currencies/ticket-finance/	TICKET	$0.00
8080	Goku	https://coinmarketcap.com/currencies/goku/	GOKU	$0.00
8081	Promise	https://coinmarketcap.com/currencies/promise/	PROMISE	$0.00
8082	Dark	https://coinmarketcap.com/currencies/dark/	D4RK	$0.11
8083	Easticoin	https://coinmarketcap.com/currencies/easticoin/	ESTI	$0.00
8084	LOLTOKEN	https://coinmarketcap.com/currencies/loltoken/	LOL	$0.00
8085	Binance Smart Chain Girl	https://coinmarketcap.com/currencies/binance-smart-chain-girl/	BSCGIRL	$0.00
8086	Open Swap	https://coinmarketcap.com/currencies/open-swap/	OPENX	$0.05
8087	Parrot Egg	https://coinmarketcap.com/currencies/parrot-egg/	IPEGG	$0.00
8088	Colibri Protocol	https://coinmarketcap.com/currencies/colibri/	CLBR	$0.00
8089	MCOBIT	https://coinmarketcap.com/currencies/mcobit/	MCT	$0.00
8090	THENODE	https://coinmarketcap.com/currencies/thenode/	THE	$0.00
8091	Rapids	https://coinmarketcap.com/currencies/rapids/	RPD	$0.00
8092	HUMAN	https://coinmarketcap.com/currencies/human-coin/	HUMAN	$0.00
8093	Durham Inu	https://coinmarketcap.com/currencies/durham-inu/	RBI	$0.00
8094	Theoscoin	https://coinmarketcap.com/currencies/theoscoin/	THS	$0.00
8095	Ubiner	https://coinmarketcap.com/currencies/ubiner/	UBIN	$0.00
8096	Solar Energy	https://coinmarketcap.com/currencies/solar-energy/	SEG	$0.00
8097	Big Fund Capital DAO	https://coinmarketcap.com/currencies/big-fund-capital-dao/	BFC	$0.00
8098	Libfx	https://coinmarketcap.com/currencies/libfx/	LIBFX	$0.01
8099	SKINCHAIN	https://coinmarketcap.com/currencies/skinchain/	SKC	$0.00
8100	Avalanche HoneyBee	https://coinmarketcap.com/currencies/avalanche-honeybee/	A.BEE	$0.0009708
8101	Kart Racing League	https://coinmarketcap.com/currencies/kart-racing-league/	KRL	$0.00003442
8102	NIFDO Protocol	https://coinmarketcap.com/currencies/nifdo-protocol/	NFD	$0.0001496
8103	Loot Network	https://coinmarketcap.com/currencies/loot-network/	LOOT	$0.00000008612
8104	Solcats	https://coinmarketcap.com/currencies/solcats/	MEOW	$0.00002698
8105	Dionpay	https://coinmarketcap.com/currencies/dionpay/	DION	$0.00002198
8106	ShibaBCH	https://coinmarketcap.com/currencies/shiba-bch/	SHIBBCH	$0.0...02484
8107	PolyDragon	https://coinmarketcap.com/currencies/polydragon/	DGOLD	$0.000008589
8108	SHD CASH	https://coinmarketcap.com/currencies/shd-cash/	SHDC	$0.00002744
8109	KOKA INU	https://coinmarketcap.com/currencies/koka-inu/	INU	$0.00000008092
8110	ZorgApp	https://coinmarketcap.com/currencies/zorgapp/	ZORG	$0.00
8111	UNIREALCHAIN	https://coinmarketcap.com/currencies/unirealchain/	UNR	$0.00
8112	OrcaDAO	https://coinmarketcap.com/currencies/orcadao/	ORCA	$0.00
8113	3X Short Tether Gold Token	https://coinmarketcap.com/currencies/3x-short-tether-gold-token/	XAUTBEAR	$4175.00
8114	ApeRocket	https://coinmarketcap.com/currencies/aperocket/	SPACE	$0.04
8115	Wheat Token (AVAX)	https://coinmarketcap.com/currencies/wheat-token-avax/	WHEAT	$0.24
8116	Answerly	https://coinmarketcap.com/currencies/answerly/	ANSR	$0.00
8117	MoonBeans	https://coinmarketcap.com/currencies/moonbeans/	BEANS	$0.19
8118	Flokiverse	https://coinmarketcap.com/currencies/flokiverse-token/	FLOKIV	$0.00
8119	CakeDAO	https://coinmarketcap.com/currencies/cake/	CAKE	$1.11
8120	ShibaCash	https://coinmarketcap.com/currencies/shibacash/	SHIBACASH	$0.00
8121	Solana Nut	https://coinmarketcap.com/currencies/solana-nut/	SOLNUT	$0.00
8122	THE BIG FIVE	https://coinmarketcap.com/currencies/the-big-five/	TBF	$0.00
8123	Far West Games	https://coinmarketcap.com/currencies/far-west-games/	CASH	$0.00
8124	Node Compiler AVAX	https://coinmarketcap.com/currencies/node-compiler-avax/	NODEC	$0.00
8125	REBIT	https://coinmarketcap.com/currencies/rebit/	KEYT	$0.00
8126	InflationCoin	https://coinmarketcap.com/currencies/inflationcoin/	IFLT	$0.00
8127	Duo	https://coinmarketcap.com/currencies/duo-2/	DUO	$0.00
8128	MiniFlokiADA	https://coinmarketcap.com/currencies/miniflokiada/	MFLOKIADA	$0.00
8129	SolX Gaming Guild	https://coinmarketcap.com/currencies/solx-gaming-guild/	SGG	$0.00
8130	Keeshond Coin	https://coinmarketcap.com/currencies/keeshond-coin/	KSH	$0.00
8131	Digital Swiss Franc	https://coinmarketcap.com/currencies/digital-swis-franc/	DSFR	$0.00
8132	Social Send	https://coinmarketcap.com/currencies/social-send/	SEND	$0.00
8133	SonicSwap	https://coinmarketcap.com/currencies/sonic-swap/	SONIC	$0.00
8134	Rugpull Prevention	https://coinmarketcap.com/currencies/rugpull-prevention/	RUGPULL	$0.02
8135	Totem Finance	https://coinmarketcap.com/currencies/totem-finance/	TOTEM	$0.00
8136	Ibiza Token	https://coinmarketcap.com/currencies/ibiza-token/	IBZ	$0.00
8137	HappyCoin	https://coinmarketcap.com/currencies/thehappycoin/	HAPPY	$0.00
8138	1X Short Dogecoin Token	https://coinmarketcap.com/currencies/1x-short-dogecoin-token/	DOGEHEDGE	$0.81
8139	Harmony Play	https://coinmarketcap.com/currencies/harmony-play/	HPLAY	$0.01
8140	Secure	https://coinmarketcap.com/currencies/secure/	SCR	$0.84
8141	Clams	https://coinmarketcap.com/currencies/clams/	CLAM	$0.11
8142	Baby Tiger GOLD	https://coinmarketcap.com/currencies/baby-tiger-gold/	BABYTIGER	$0.00
8143	Musk Doge	https://coinmarketcap.com/currencies/musk-doge/	MKD	$0.00
8144	ITSMYNE	https://coinmarketcap.com/currencies/itsmyne/	MYNE	$0.01
8145	Solex Finance	https://coinmarketcap.com/currencies/solex-finance/	SLX	$0.01
8146	SelfBar	https://coinmarketcap.com/currencies/selfbar/	SBAR	$0.60
8147	Shiba Fantom	https://coinmarketcap.com/currencies/shiba-fantom/	SHIBA	$0.00
8148	ArbiFarm	https://coinmarketcap.com/currencies/arbifarm/	AFARM	$0.01
8149	Family	https://coinmarketcap.com/currencies/family/	FAM	$1.24
8150	Solily Protocol	https://coinmarketcap.com/currencies/solily-protocol/	LILY	$0.00
8151	Axion	https://coinmarketcap.com/currencies/axion/	AXN	$0.00
8152	AvaOne Finance	https://coinmarketcap.com/currencies/avaone-finance/	AVAO	$0.00
8153	OMNI - People Driven	https://coinmarketcap.com/currencies/omni-token/	OAI	$0.00
8154	CROCASH	https://coinmarketcap.com/currencies/crocash/	CROCASH	$0.00
8155	Rocket Token	https://coinmarketcap.com/currencies/rocket-token-space/	RKTN	$0.00
8156	Nora Token	https://coinmarketcap.com/currencies/nora-token/	NRA	$0.00
8157	My DeFi Legends	https://coinmarketcap.com/currencies/my-defi-legends/	DLEGENDS	$0.00
8158	Sunny Side up	https://coinmarketcap.com/currencies/sunny-side-up/	SSU	$0.00
8159	SOL RUNE - Rune.Game	https://coinmarketcap.com/currencies/sol-rune---rune-game/	SOL	$0.12
8160	MoonRabbit	https://coinmarketcap.com/currencies/moonrabbit-money/	MOONRABBIT	$0.00
8161	Prize Coin	https://coinmarketcap.com/currencies/prize-coin/	PRZ	$0.01
8162	bitCEO	https://coinmarketcap.com/currencies/bitceo/	BCEO	$0.00
8163	Bullish AF	https://coinmarketcap.com/currencies/bullish-af/	BULLAF	$0.00
8164	BabyWhale	https://coinmarketcap.com/currencies/babywhale/	BBW	$0.00
8165	Zinari	https://coinmarketcap.com/currencies/zinari/	ZINA	$0.00
8166	Safeicarus	https://coinmarketcap.com/currencies/safeicarus/	SAFEICARUS	$0.00
8167	Charm	https://coinmarketcap.com/currencies/charm/	CHARM	$0.00
8168	Tsuzuki Inu	https://coinmarketcap.com/currencies/tsuzuki-inu/	TZKI	$0.00
8169	SUPA Foundation	https://coinmarketcap.com/currencies/supa-foundation/	SUPA	$0.01
8170	JSB FOUNDATION	https://coinmarketcap.com/currencies/jsb-foundation/	JSB	$0.00
8171	Deku Inu	https://coinmarketcap.com/currencies/deku-inu/	DEKU	$0.00
8172	Shiba Inu Empire	https://coinmarketcap.com/currencies/shiba-inu-empire/	SHIBEMP	$0.00
8173	Solit	https://coinmarketcap.com/currencies/solit/	SLT	$0.00
8174	AgaveCoin	https://coinmarketcap.com/currencies/agavecoin/	AGVC	$0.07
8175	RocketMoon	https://coinmarketcap.com/currencies/rocketmoon/	RMOON	$0.00
8176	Predix Network	https://coinmarketcap.com/currencies/predix-network/	PRDX	$0.05
8177	Islandswap	https://coinmarketcap.com/currencies/islandswap/	ISL	$0.00
8178	SingularFarm	https://coinmarketcap.com/currencies/singularfarm/	SING	$0.01
8179	Sucrecoin	https://coinmarketcap.com/currencies/sucrecoin/	XSR	$0.00
8180	SPRINK	https://coinmarketcap.com/currencies/sprink/	SPRINK	$0.01
8181	Shibana	https://coinmarketcap.com/currencies/shibana/	BANA	$0.00
8182	Agro-Matic	https://coinmarketcap.com/currencies/agro-matic/	AMT	$0.00
8183	BladeWarrior	https://coinmarketcap.com/currencies/bladewarrior/	BLADE	$0.01
8184	HDDcoin	https://coinmarketcap.com/currencies/hddcoin/	HDD	$0.08
8185	USNOTA	https://coinmarketcap.com/currencies/nota/	USNOTA	$0.24
8186	Dogelana	https://coinmarketcap.com/currencies/dogelana-com/	DGLN	$0.00
8187	HOGT	https://coinmarketcap.com/currencies/hogt/	HOGT	$0.00
8188	Digex	https://coinmarketcap.com/currencies/digex/	DIGEX	$0.00
8189	wanSUSHI	https://coinmarketcap.com/currencies/wansushi/	WANSUSHI	$0.86
8190	Steak Token	https://coinmarketcap.com/currencies/steak-token/	STEAK	$0.01
8191	XFai	https://coinmarketcap.com/currencies/xfai/	XFIT	$0.03
8192	EurocoinToken	https://coinmarketcap.com/currencies/eurocoin-token/	ECTE	$0.11
8193	Native Utility Token	https://coinmarketcap.com/currencies/native-utility-token/	NUT	$0.41
8194	Jurassic Nodes	https://coinmarketcap.com/currencies/jurassic-nodes/	DINO	$0.01
8195	Bananatok	https://coinmarketcap.com/currencies/bananatok/	BNA	$0.00
8196	Wipe My ASS	https://coinmarketcap.com/currencies/wipe-my-ass/	WIPE	$0.00
8197	wanEOS	https://coinmarketcap.com/currencies/waneos/	WANEOS	$0.86
8198	Zurcoin	https://coinmarketcap.com/currencies/zurcoin/	ZUR	$0.01
8199	Uniform Fiscal Object	https://coinmarketcap.com/currencies/uniform-fiscal-object/	UFO	$0.00
8200	Buzzshow	https://coinmarketcap.com/currencies/buzzshow/	GLDY	$0.007693
8201	Aquarius Protocol	https://coinmarketcap.com/currencies/aquarius-protocol/	AQU	$0.000112
8202	wanLINK	https://coinmarketcap.com/currencies/wanlink/	WANLINK	$4.74
8203	DoggyStyle Coin	https://coinmarketcap.com/currencies/doggystyle-coin/	DSC	$0.0000000288
8204	Everest Token	https://coinmarketcap.com/currencies/everest-token/	EVRT	$0.00001995
8205	Premio	https://coinmarketcap.com/currencies/premio/	PREMIO	$0.0002591
8206	Wrapped NewYorkCoin	https://coinmarketcap.com/currencies/wrapped-newyorkcoin/	WNYC	$0.000005108
8207	DogeWhisky	https://coinmarketcap.com/currencies/dogewhisky/	DOGEWHISKY	$0.0...01801
8208	Yup	https://coinmarketcap.com/currencies/yup-token/	YUP	$0.01229
8209	United Traders Token	https://coinmarketcap.com/currencies/uttoken/	UTT	$0.04827
8210	MongooseCoin	https://coinmarketcap.com/currencies/mongoosecoin/	MONGOOSE	$0.00
8211	wanBTC	https://coinmarketcap.com/currencies/wanbtc/	WANBTC	$97.62
8212	Aspire	https://coinmarketcap.com/currencies/aspire/	ASP	$0.00
8213	Amoveo	https://coinmarketcap.com/currencies/amoveo/	VEO	$3.00
8214	Dogeon	https://coinmarketcap.com/currencies/dogeon/	DON	$0.00
8215	AutoMatic Network	https://coinmarketcap.com/currencies/automatic-network/	AUMI	$0.00
8216	STPAY	https://coinmarketcap.com/currencies/stpay/	STP	$0.00
8217	Bedpage Coin	https://coinmarketcap.com/currencies/bedpage-coin/	BED	$0.01
8218	Circlepod	https://coinmarketcap.com/currencies/circlepod/	CPX	$0.00
8219	wanUNI	https://coinmarketcap.com/currencies/wanuni/	WANUNI	$0.89
8220	Bastion Protocol	https://coinmarketcap.com/currencies/bastion-protocol/	BSTN	$0.00
8221	MaticPad	https://coinmarketcap.com/currencies/maticpad/	MATPAD	$0.00
8222	Zenc Coin	https://coinmarketcap.com/currencies/zenc-coin/	ZENC	$0.01
8223	MMAON	https://coinmarketcap.com/currencies/mmaon/	MMAON	$0.02
8224	Etherstones	https://coinmarketcap.com/currencies/etherstones/	ETHS	$0.00
8225	Xank	https://coinmarketcap.com/currencies/xank/	XANK	$0.00
8226	WhaleRoom	https://coinmarketcap.com/currencies/whaleroom/	WHL	$1.15
8227	HoboNickels	https://coinmarketcap.com/currencies/hobonickels/	HBN	$0.00
8228	MintCoin	https://coinmarketcap.com/currencies/mintcoin/	MINT	$0.00
8229	Marscoin	https://coinmarketcap.com/currencies/marscoin/	MARS	$0.04
8230	ECC	https://coinmarketcap.com/currencies/eccoin/	ECC	$0.00
8231	Rubycoin	https://coinmarketcap.com/currencies/rubycoin/	RBY	$0.05
8232	RabbitCoin	https://coinmarketcap.com/currencies/rabbitcoin/	RBBT	$0.00
8233	Quotient	https://coinmarketcap.com/currencies/quotient/	XQN	$0.00
8234	Bubble	https://coinmarketcap.com/currencies/bubble/	BUB	$0.00
8235	Axiom	https://coinmarketcap.com/currencies/axiom/	AXIOM	$0.00
8236	ClubCoin	https://coinmarketcap.com/currencies/clubcoin/	CLUB	$0.00
8237	AvatarCoin	https://coinmarketcap.com/currencies/avatarcoin/	AV	$0.02
8238	SaluS	https://coinmarketcap.com/currencies/salus/	SLS	$5.54
8239	Francs	https://coinmarketcap.com/currencies/francs/	FRN	$0.00
8240	Aces	https://coinmarketcap.com/currencies/aces/	ACES	$0.00
8241	PROUD Money	https://coinmarketcap.com/currencies/proud-money/	PROUD	$0.00
8242	Lykke	https://coinmarketcap.com/currencies/lykke/	LKK	$0.01
8243	BlazerCoin	https://coinmarketcap.com/currencies/blazercoin/	BLAZR	$0.00
8244	Electra	https://coinmarketcap.com/currencies/electra/	ECA	$0.00
8245	Everus	https://coinmarketcap.com/currencies/everus/	EVR	$0.00
8246	Exchange Union	https://coinmarketcap.com/currencies/exchange-union/	XUC	$0.01
8247	SpankChain	https://coinmarketcap.com/currencies/spankchain/	SPANK	$0.00
8248	Hyper Pay	https://coinmarketcap.com/currencies/hyper-pay/	HPY	$0.00
8249	MOAC	https://coinmarketcap.com/currencies/moac/	MOAC	$0.00
8250	CoinMeet	https://coinmarketcap.com/currencies/coinmeet/	MEET	$0.00
8251	GreenPower	https://coinmarketcap.com/currencies/greenpower/	GRN	$0.02
8252	FuturoCoin	https://coinmarketcap.com/currencies/futurocoin/	FTO	$0.00
8253	Engine	https://coinmarketcap.com/currencies/engine/	EGCC	$0.00
8254	Karatgold Coin	https://coinmarketcap.com/currencies/karatgold-coin/	KBC	$0.00
8255	DACC	https://coinmarketcap.com/currencies/dacc/	DACC	$0.00
8256	ThingsOperatingSystem	https://coinmarketcap.com/currencies/thingsoperatingsystem/	TOS	$0.00
8257	Blocksquare Token	https://coinmarketcap.com/currencies/blocksquare-token/	BST	$0.06
8258	Promotion Coin	https://coinmarketcap.com/currencies/promotion-coin/	PC	$0.00
8259	Ino Coin	https://coinmarketcap.com/currencies/ino-coin/	INO	$0.06
8260	ThoreCoin	https://coinmarketcap.com/currencies/thorecoin/	THR	$865.50
8261	Netkoin	https://coinmarketcap.com/currencies/netkoin/	NTK	$0.00
8262	Obitan Chain	https://coinmarketcap.com/currencies/obitan-chain/	OBTC	$0.00
8263	KingXChain	https://coinmarketcap.com/currencies/kingxchain/	KXC	$0.00
8264	YUKI	https://coinmarketcap.com/currencies/yuki/	YUKI	$0.00
8265	ABCC Token	https://coinmarketcap.com/currencies/abcc-token/	AT	$0.05
8266	ShineChain	https://coinmarketcap.com/currencies/shinechain/	SHE	$0.00
8267	eosBLACK	https://coinmarketcap.com/currencies/eosblack/	BLACK	$0.00
8268	GazeCoin	https://coinmarketcap.com/currencies/gazecoin/	GZE	$0.00
8269	BitUP Token	https://coinmarketcap.com/currencies/bitup-token/	BUT	$0.00
8270	SaveNode	https://coinmarketcap.com/currencies/savenode/	SNO	$0.00
8271	MEX	https://coinmarketcap.com/currencies/mex/	MEX	$0.00
8272	BUMO	https://coinmarketcap.com/currencies/bumo/	BU	$0.00
8273	MobilinkToken	https://coinmarketcap.com/currencies/mobilinktoken/	MOLK	$0.00
8274	Robotina	https://coinmarketcap.com/currencies/robotina/	ROX	$0.00
8275	CMITCOIN	https://coinmarketcap.com/currencies/cmitcoin/	CMIT	$0.00
8276	CARAT	https://coinmarketcap.com/currencies/carat/	CARAT	$0.60
8277	TRONCLASSIC	https://coinmarketcap.com/currencies/tronclassic/	TRXC	$0.00
8278	Wixlar	https://coinmarketcap.com/currencies/wixlar/	WIX	$0.00
8279	PlusOneCoin	https://coinmarketcap.com/currencies/plusonecoin/	PLUS1	$0.00
8280	Dragon Token	https://coinmarketcap.com/currencies/dragon-token/	DT	$4.25
8281	HondaisCoin	https://coinmarketcap.com/currencies/hondaiscoin/	HNDC	$0.00
8282	MediBit	https://coinmarketcap.com/currencies/medibit/	MEDIBIT	$0.00
8283	Earneo	https://coinmarketcap.com/currencies/earneo/	RNO	$0.01
8284	TOKOK	https://coinmarketcap.com/currencies/tokok/	TOK	$0.00
8285	WEBN token	https://coinmarketcap.com/currencies/webn-token/	WEBN	$0.00
8286	DISCIPLINA	https://coinmarketcap.com/currencies/disciplina/	DSCPL	$0.00
8287	RoboCalls	https://coinmarketcap.com/currencies/robocalls/	RC20	$0.00
8288	Jewel	https://coinmarketcap.com/currencies/jewel/	JWL	$0.04
8289	Big Bang Game Coin	https://coinmarketcap.com/currencies/big-bang-game-coin/	BBGC	$0.00
8290	WHEN Token	https://coinmarketcap.com/currencies/when-token/	WHEN	$0.00
8291	V-Dimension	https://coinmarketcap.com/currencies/v-dimension/	VOLLAR	$0.34
8292	ThoreNext	https://coinmarketcap.com/currencies/thorenext/	THX	$0.00
8293	One DEX	https://coinmarketcap.com/currencies/one-dex/	ODEX	$0.00
8294	TCASH	https://coinmarketcap.com/currencies/tcash/	TCASH	$0.00
8295	BlockStamp	https://coinmarketcap.com/currencies/blockstamp/	BST	$0.01
8296	SpectreSecurityCoin	https://coinmarketcap.com/currencies/spectre-security-coin/	XSPC	$0.00
8297	USDQ	https://coinmarketcap.com/currencies/usdq/	USDQ	$0.99
8298	MGC Token	https://coinmarketcap.com/currencies/mgc-token/	MGC	$0.00
8299	NOIZ	https://coinmarketcap.com/currencies/noizchain/	NOIZ	$0.02
8300	Bitsten Token	https://coinmarketcap.com/currencies/bitsten-token/	BST	$0.007193
8301	BitcoinRegular	https://coinmarketcap.com/currencies/bitcoinregular/	BTRL	$0.1478
8302	Zer-Dex	https://coinmarketcap.com/currencies/zer-dex/	ZDX	$0.002914
8303	LinkToken	https://coinmarketcap.com/currencies/linktoken/	LTK	$0.005994
8304	Crex Token	https://coinmarketcap.com/currencies/crex-token/	CREX	$0.2307
8305	DeepCloud AI	https://coinmarketcap.com/currencies/deepcloud-ai/	DEEP	$0.0008182
8306	UltrAlpha	https://coinmarketcap.com/currencies/ultralpha/	UAT	$0.06892
8307	Cexland	https://coinmarketcap.com/currencies/cexland/	CEXY	$0.001561
8308	Defi	https://coinmarketcap.com/currencies/defi/	DEFI	$0.03797
8309	BitcoinSoV	https://coinmarketcap.com/currencies/bitcoinsov/	BSOV	$0.004067
8310	Junsonmingchncoin	https://coinmarketcap.com/currencies/junsonmingchncoin/	JMC	$0.00
8311	MYCE	https://coinmarketcap.com/currencies/myce/	YCE	$0.00
8312	BITICA COIN	https://coinmarketcap.com/currencies/bdcc-bitica-coin/	BDCC	$0.97
8313	Electronero	https://coinmarketcap.com/currencies/electronero/	ETNX	$0.00
8314	Secure Cash	https://coinmarketcap.com/currencies/secure-cash/	SCSX	$0.02
8315	VENA	https://coinmarketcap.com/currencies/vena/	VENA	$0.00
8316	Altbet	https://coinmarketcap.com/currencies/altbet/	ABET	$0.00
8317	Hotbit Token	https://coinmarketcap.com/currencies/hotbit-token/	HTB	$0.02
8318	Lightyears	https://coinmarketcap.com/currencies/lightyears/	YEAR	$0.01
8319	Sombe	https://coinmarketcap.com/currencies/sombe/	SBE	$0.00
8320	City Coin	https://coinmarketcap.com/currencies/city-coin/	CITY	$0.08
8321	Gomics	https://coinmarketcap.com/currencies/gomics/	GOM	$0.00
8322	Sierracoin	https://coinmarketcap.com/currencies/sierracoin/	SIERRA	$0.00
8323	Tepleton	https://coinmarketcap.com/currencies/tepleton/	TEP	$0.00
8324	Global X Change Token	https://coinmarketcap.com/currencies/global-x-change-token/	GXT	$0.00
8325	Rivex	https://coinmarketcap.com/currencies/rivex/	RVX	$0.00
8326	BitcoinV	https://coinmarketcap.com/currencies/bitcoinv/	BTCV	$0.00
8327	FinexboxToken	https://coinmarketcap.com/currencies/finexboxtoken/	FNB	$0.56
8328	Codex	https://coinmarketcap.com/currencies/codex/	CDEX	$0.00
8329	DMme	https://coinmarketcap.com/currencies/dmme/	DMME	$0.00
8330	NOVA	https://coinmarketcap.com/currencies/nova/	NOVA	$0.00
8331	Schilling-Coin	https://coinmarketcap.com/currencies/schilling-coin/	SCH	$0.00
8332	Marshal Lion Group Coin	https://coinmarketcap.com/currencies/marshal-lion-group-coin/	MLGC	$0.00
8333	Bankroll Network	https://coinmarketcap.com/currencies/bankroll-network/	BNKR	$0.03
8334	Aerotoken	https://coinmarketcap.com/currencies/aerotoken/	AET	$0.00
8335	Newsolution	https://coinmarketcap.com/currencies/newsolution/	NST	$0.00
8336	Axial Entertainment Digital Asset	https://coinmarketcap.com/currencies/axial-entertainment-digital-asset/	AXL	$0.00
8337	Global Reserve System	https://coinmarketcap.com/currencies/global-reserve-system/	GLOB	$0.81
8338	Global Game Coin	https://coinmarketcap.com/currencies/global-game-coin/	GGC	$96.11
8339	FRED Energy	https://coinmarketcap.com/currencies/fred-energy/	FRED	$0.00
8340	AfroDex	https://coinmarketcap.com/currencies/afrodex/	AfroX	$0.00
8341	Bitcoffeen	https://coinmarketcap.com/currencies/bitcoffeen/	BFF	$0.00
8342	Bitcoin Pro	https://coinmarketcap.com/currencies/bitcoin-pro/	BTCP	$60.74
8343	KONJUNGATE	https://coinmarketcap.com/currencies/konjungate/	KONJ	$0.00
8344	QURAS	https://coinmarketcap.com/currencies/quras/	XQC	$0.00
8345	LinkArt	https://coinmarketcap.com/currencies/linkart/	LAR	$0.00
8346	Emrals	https://coinmarketcap.com/currencies/emrals/	EMRALS	$0.01
8347	QUEENBEE	https://coinmarketcap.com/currencies/queenbee/	QBZ	$0.00
8348	Zent Cash	https://coinmarketcap.com/currencies/zent-cash/	ZTC	$0.00
8349	0cash	https://coinmarketcap.com/currencies/0cash/	ZCH	$0.00
8350	Bonorum	https://coinmarketcap.com/currencies/bonorum/	BONO	$0.44
8351	GermanCoin	https://coinmarketcap.com/currencies/germancoin/	GCX	$0.00
8352	Largo Coin	https://coinmarketcap.com/currencies/largo-coin/	LRG	$0.07
8353	Cofinex	https://coinmarketcap.com/currencies/cofinex-coin/	CNX	$0.04
8354	RAKUN	https://coinmarketcap.com/currencies/rakun/	RAKU	$0.00
8355	Five Star Coin	https://coinmarketcap.com/currencies/five-star-coin/	FSC	$0.01
8356	StellarPayGlobal	https://coinmarketcap.com/currencies/stellarpayglobal/	XLPG	$0.24
8357	Dexchain	https://coinmarketcap.com/currencies/mydexpay/	DXC	$0.00
8358	GoalTime N	https://coinmarketcap.com/currencies/goaltime-n/	GTX	$0.00
8359	ODE	https://coinmarketcap.com/currencies/ode/	ODE	$37.20
8360	B ONE PAYMENT	https://coinmarketcap.com/currencies/b-one-payment/	B1P	$0.00
8361	Scopuly	https://coinmarketcap.com/currencies/scopuly-coin/	SCOP	$0.05
8362	Charg Coin	https://coinmarketcap.com/currencies/charg-coin/	CHG	$0.13
8363	Unknown Fair Object	https://coinmarketcap.com/currencies/unknown-fair-object/	UFO	$0.29
8364	Latamcash	https://coinmarketcap.com/currencies/latamcash/	LMCH	$0.00
8365	Mega Lottery Services Global	https://coinmarketcap.com/currencies/mega-lottery-services-global/	MLR	$0.00
8366	Jack Token	https://coinmarketcap.com/currencies/jack-token/	JACK	$0.31
8367	EarnBet	https://coinmarketcap.com/currencies/earnbet/	BET	$0.01
8368	BLOCKIDCOIN	https://coinmarketcap.com/currencies/blockidcoin/	BID	$0.00
8369	Resfinex Token	https://coinmarketcap.com/currencies/resfinex-token/	RES	$0.01
8370	Litecoin SV	https://coinmarketcap.com/currencies/litecoin-sv/	LSV	$0.38
8371	VEHICLE DATA ARTIFICIAL INTELLIGENCE PLATFORM	https://coinmarketcap.com/currencies/vehicle-data-artificial-intelligence-platform/	VAIP	$0.14
8372	CryptoBet	https://coinmarketcap.com/currencies/cryptobet/	CBET	$0.00
8373	UniPower	https://coinmarketcap.com/currencies/unipower/	POWER	$0.09
8374	Vectorium	https://coinmarketcap.com/currencies/vectorium/	VECT	$242.27
8375	UniDollar	https://coinmarketcap.com/currencies/unidollar/	UNIUSD	$0.00
8376	DFOhub	https://coinmarketcap.com/currencies/dfohub/	BUIDL	$0.61
8377	SorachanCoin	https://coinmarketcap.com/currencies/sorachancoin/	SORA	$0.00
8378	ChainZ Arena	https://coinmarketcap.com/currencies/chainz-arena/	SOUL	$0.05
8379	BITCOINHEDGE	https://coinmarketcap.com/currencies/bitcoinhedge/	BTCHG	$2.80
8380	Aave TUSD	https://coinmarketcap.com/currencies/aave-tusd/	ATUSD	$1.00
8381	Aave LINK	https://coinmarketcap.com/currencies/aave-link/	ALINK	$6.13
8382	Aave SNX	https://coinmarketcap.com/currencies/aave-snx/	ASNX	$2.61
8383	Aave MKR	https://coinmarketcap.com/currencies/aave-mkr/	AMKR	$891.69
8384	Aave BAT	https://coinmarketcap.com/currencies/aave-bat/	ABAT	$0.39
8385	Aave BUSD	https://coinmarketcap.com/currencies/aave-busd/	ABUSD	$1.00
8386	Aave DAI	https://coinmarketcap.com/currencies/aave-dai/	ADAI	$1.00
8387	sETH	https://coinmarketcap.com/currencies/seth/	SETH	$1054.68
8388	Ystar	https://coinmarketcap.com/currencies/ystar/	YSR	$0.00
8389	Nokencoin	https://coinmarketcap.com/currencies/nokencoin/	NOKN	$0.05
8390	BitCherry	https://coinmarketcap.com/currencies/bitcherry/	BCHC	$0.00
8391	Cap	https://coinmarketcap.com/currencies/cap/	CAP	$59.44
8392	Gstcoin	https://coinmarketcap.com/currencies/gstcoin/	GST	$0.04
8393	AntiscamToken	https://coinmarketcap.com/currencies/antiscamtoken/	AST	$0.02
8394	VN Token	https://coinmarketcap.com/currencies/vn-token/	VN	$0.00
8395	PUML Better Health	https://coinmarketcap.com/currencies/puml-better-health/	PUML	$0.02
8396	STONK	https://coinmarketcap.com/currencies/stonk/	STONK	$0.00
8397	NoleCoin	https://coinmarketcap.com/currencies/nolecoin/	NOLE	$0.13
8398	Bitpayer Token	https://coinmarketcap.com/currencies/bitpayer-token/	BPT	$0.00
8399	Bankroll Vault	https://coinmarketcap.com/currencies/bankroll-vault/	VLT	$0.12
8400	Balloon-X	https://coinmarketcap.com/currencies/balloon-x/	BLX	$0.0001492
8401	Decurian	https://coinmarketcap.com/currencies/decurian/	ECU	$211.84
8402	EcoDollar	https://coinmarketcap.com/currencies/ecodollar/	ECOS	$0.0001922
8403	snglsDAO	https://coinmarketcap.com/currencies/snglsdao/	SGT	$0.00003714
8404	Index Chain	https://coinmarketcap.com/currencies/index-chain/	IDX	$0.001481
8405	BLOCKCLOUT	https://coinmarketcap.com/currencies/blockclout/	CLOUT	$0.00007737
8406	CoinZoom	https://coinmarketcap.com/currencies/coinzoom/	ZOOM	$0.02979
8407	eFIN	https://coinmarketcap.com/currencies/efin/	EFIN	$0.00005702
8408	Karma DAO	https://coinmarketcap.com/currencies/karma-dao/	KARMA	$0.005695
8409	FME	https://coinmarketcap.com/currencies/fme/	FME	$0.0001759
8410	Trendering	https://coinmarketcap.com/currencies/trendering/	TRND	$0.82
8411	KIWI TOKEN	https://coinmarketcap.com/currencies/kiwi-token/	KIWI	$0.00
8412	Lung Protocol	https://coinmarketcap.com/currencies/lung-protocol/	L2P	$0.00
8413	Kids Cash	https://coinmarketcap.com/currencies/kids-cash/	KASH	$0.03
8414	Bit World Token	https://coinmarketcap.com/currencies/bw-token/	BWB	$0.01
8415	DigiMax DGMT	https://coinmarketcap.com/currencies/digimax-dgmt/	DGMT	$0.00
8416	MDUKEY	https://coinmarketcap.com/currencies/mdu/	MDU	$0.00
8417	888tron	https://coinmarketcap.com/currencies/888tron/	888	$0.06
8418	EIDOS	https://coinmarketcap.com/currencies/eidos/	EIDOS	$0.00
8419	3X Short Ethereum Classic Token	https://coinmarketcap.com/currencies/3x-short-ethereum-classic-token/	ETCBEAR	$0.00
8420	KYSC Token	https://coinmarketcap.com/currencies/kysc-token/	KYSC	$0.00
8421	BTC Network Demand Set II	https://coinmarketcap.com/currencies/btc-network-demand-set-ii/	BYTE	$244.30
8422	ETH 20 Day MA Crossover Set	https://coinmarketcap.com/currencies/eth-20-day-ma-crossover-set/	ETH20SMACO	$921.12
8423	ETH 20 Day MA Crossover Yield Set	https://coinmarketcap.com/currencies/eth-20-day-ma-crossover-yield-set/	ETHMACOAPY	$871.18
8424	ETH/BTC RSI Ratio Trading Set	https://coinmarketcap.com/currencies/eth-btc-rsi-ratio-trading-set/	ETHBTCRSI	$480.90
8425	ETH/LINK Price Action Candlestick Set	https://coinmarketcap.com/currencies/eth-link-price-action-candlestick-set/	LINKETHPA	$1049.13
8426	ETH Price Action Candlestick Set	https://coinmarketcap.com/currencies/eth-price-action-candlestick-set/	ETHPA	$780.90
8427	ETH RSI 60/40 Crossover Set	https://coinmarketcap.com/currencies/eth-rsi-60-40-crossover-set/	ETHRSI6040	$449.47
8428	yffi finance	https://coinmarketcap.com/currencies/yffi-finance/	YFFI	$0.88
8429	Intelligent Ratio Set	https://coinmarketcap.com/currencies/intelligent-ratio-set/	INTRATIO	$973.26
8430	LINK/ETH RSI Ratio Trading Set	https://coinmarketcap.com/currencies/link-eth-rsi-ratio-trading-set/	LINKETHRSI	$303.89
8431	LINK Profit Taker Set	https://coinmarketcap.com/currencies/link-profit-taker-set/	LINKPT	$180.87
8432	Dice	https://coinmarketcap.com/currencies/dice/	DICE	$0.00
8433	DeFiPie	https://coinmarketcap.com/currencies/defipie/	PIE	$0.00
8434	YAS	https://coinmarketcap.com/currencies/yas/	YAS	$0.01
8435	SCC DIGforIT	https://coinmarketcap.com/currencies/scc-digforit/	SCC	$0.01
8436	X-Block	https://coinmarketcap.com/currencies/x-block/	IX	$0.00
8437	AVCCOIN	https://coinmarketcap.com/currencies/avccoin/	AVC	$0.01
8438	sBTC	https://coinmarketcap.com/currencies/softbtc/	sBTC	$0.01
8439	Dragonbit	https://coinmarketcap.com/currencies/dragonbit/	DRGB	$0.00
8440	Empow	https://coinmarketcap.com/currencies/empow/	EM	$0.00
8441	FANBI TOKEN	https://coinmarketcap.com/currencies/fanbi-token/	FBT	$0.00
8442	GLOBALTRUSTFUND TOKEN	https://coinmarketcap.com/currencies/globaltrustfund-token/	GTF	$0.00
8443	Infinite Ricks	https://coinmarketcap.com/currencies/infinite-ricks/	RICK	$0.00
8444	FXPay	https://coinmarketcap.com/currencies/fxpay/	FXP	$0.00
8445	Kevacoin	https://coinmarketcap.com/currencies/kevacoin/	KVA	$0.00
8446	Portal	https://coinmarketcap.com/currencies/portal/	PORTAL	$0.00
8447	Kulupu	https://coinmarketcap.com/currencies/kulupu/	KLP	$0.00
8448	Aludra Network	https://coinmarketcap.com/currencies/aludra-network/	ALD	$0.00
8449	Ludos Protocol	https://coinmarketcap.com/currencies/ludos/	LUD	$0.00
8450	NanTrade	https://coinmarketcap.com/currencies/nantrade/	NAN	$0.02
8451	Mandi Token	https://coinmarketcap.com/currencies/mandi-token/	MANDI	$0.00
8452	MONEY PARTY	https://coinmarketcap.com/currencies/money-party/	PARTY	$0.00
8453	ORBYT Token	https://coinmarketcap.com/currencies/orbyt-token/	ORBYT	$0.00
8454	TideBit Token	https://coinmarketcap.com/currencies/tidebit-token/	TBT	$0.28
8455	Equus Mining Token	https://coinmarketcap.com/currencies/equus-mining-token/	EQMT	$0.00
8456	WingShop	https://coinmarketcap.com/currencies/wingshop/	WING	$0.00
8457	Bitalgo	https://coinmarketcap.com/currencies/bitalgo/	ALG	$0.01
8458	Love Coin	https://coinmarketcap.com/currencies/love-coin/	LOVE	$0.00
8459	Keysians Network	https://coinmarketcap.com/currencies/keysians-network/	KEN	$0.20
8460	Meter Governance mapped by Meter.io	https://coinmarketcap.com/currencies/meter-governance-mapped-by-meter-io/	eMTRG	$1.83
8461	COIL	https://coinmarketcap.com/currencies/coil/	COIL	$0.29
8462	Crypto Price Index	https://coinmarketcap.com/currencies/crypto-price-index/	CPI	$0.05
8463	Krosscoin	https://coinmarketcap.com/currencies/krosscoin/	KSS	$1.03
8464	GRAP	https://coinmarketcap.com/currencies/grap/	GRAP	$0.02
8465	DeFi Omega	https://coinmarketcap.com/currencies/defi-omega/	DFIO	$1.47
8466	MIKS COIN	https://coinmarketcap.com/currencies/miks-coin/	MIKS	$0.00
8467	DegenVC	https://coinmarketcap.com/currencies/degenvc/	DGVC	$0.06
8468	OC Protocol	https://coinmarketcap.com/currencies/oc-protocol/	OCP	$0.00
8469	The Hash Speed	https://coinmarketcap.com/currencies/the-hash-speed/	THS	$0.01
8470	Libera	https://coinmarketcap.com/currencies/libera/	LIB	$0.30
8471	CAT.trade Protocol	https://coinmarketcap.com/currencies/cat-trade-protocol/	CATX	$0.00
8472	JBOX	https://coinmarketcap.com/currencies/jboxcoin/	JBX	$0.00
8473	YFIEXCHANGE.FINANCE	https://coinmarketcap.com/currencies/yfiexchange-finance/	YFIE	$1.22
8474	Dextrust	https://coinmarketcap.com/currencies/dextrust/	DETS	$0.01
8475	Deonex Token	https://coinmarketcap.com/currencies/deonex-token/	DON	$0.07
8476	Swapfolio	https://coinmarketcap.com/currencies/swapfolio/	SWFL	$0.03
8477	DeFiat	https://coinmarketcap.com/currencies/defiat/	DFT	$0.07
8478	YFFS Finance	https://coinmarketcap.com/currencies/yffs/	YFFS	$0.12
8479	yfBeta	https://coinmarketcap.com/currencies/yfbeta/	YFBETA	$2.68
8480	YFA Finance	https://coinmarketcap.com/currencies/yfa-finance/	YFA	$0.07
8481	The Forms	https://coinmarketcap.com/currencies/the-forms/	FRMS	$0.00
8482	Foresight	https://coinmarketcap.com/currencies/foresight/	FORS	$0.01
8483	Definitex	https://coinmarketcap.com/currencies/definitex/	DFX	$0.13
8484	Token CashPay	https://coinmarketcap.com/currencies/token-cashpay/	TCP	$0.00
8485	BEAR Coin	https://coinmarketcap.com/currencies/voytek-bear-coin/	BEAR	$0.00
8486	BUILD Finance	https://coinmarketcap.com/currencies/build-finance/	BUILD	$0.00
8487	HBTC Captain Token	https://coinmarketcap.com/currencies/hbtc-token/	HBC	$3.04
8488	i9 Coin	https://coinmarketcap.com/currencies/i9-coin/	I9C	$0.00
8489	OBIC	https://coinmarketcap.com/currencies/obic/	OBIC	$0.01
8490	Nyan Finance	https://coinmarketcap.com/currencies/nyan-finance/	NYAN	$1.16
8491	OFIN Token	https://coinmarketcap.com/currencies/ofin-token/	ON	$0.00
8492	Betherchip	https://coinmarketcap.com/currencies/betherchip/	BEC	$0.00
8493	Tribute	https://coinmarketcap.com/currencies/tribute/	TRBT	$0.15
8494	Zoom Protocol	https://coinmarketcap.com/currencies/zoom-protocol/	ZOM	$2.17
8495	UniFi Protocol	https://coinmarketcap.com/currencies/unifi-protocol/	UP	$1.27
8496	3X Long Sushi Token	https://coinmarketcap.com/currencies/3x-long-sushi-token/	SUSHIBULL	$0.00
8497	YFMoonshot	https://coinmarketcap.com/currencies/yfmoonshot/	YFMS	$4.31
8498	Markaccy	https://coinmarketcap.com/currencies/markaccy/	MKCY	$0.00
8499	Livenodes Token	https://coinmarketcap.com/currencies/livenodes-token/	LNOT	$0.00
8500	UNIFI DeFi	https://coinmarketcap.com/currencies/unifi-defi/	UNIFI	$0.0001269
8501	Finswap	https://coinmarketcap.com/currencies/finswap/	FNSP	$0.03664
8502	Axioms	https://coinmarketcap.com/currencies/axioms/	AXI	$0.006983
8503	Digital Currency Daily	https://coinmarketcap.com/currencies/digital-currency-daily/	DCD	$0.000005825
8504	YFIX Finance	https://coinmarketcap.com/currencies/yfix-finance/	YFIX	$0.3782
8505	Combine.finance	https://coinmarketcap.com/currencies/combine-finance/	COMB	$2.63
8506	SwapShip	https://coinmarketcap.com/currencies/swapship/	SWSH	$1.78
8507	SpokLottery	https://coinmarketcap.com/currencies/spoklottery/	SPKL	$0.00002524
8508	Antique Zombie Shards	https://coinmarketcap.com/currencies/antique-zombie-shards/	ZOMB	$380.15
8509	CryptoWater	https://coinmarketcap.com/currencies/cryptowater/	C2O	$0.7763
8510	CXN Network	https://coinmarketcap.com/currencies/cxn-network/	CXN	$0.00
8511	Wrapped LEO	https://coinmarketcap.com/currencies/wrapped-leo/	WLEO	$0.06
8512	Dfinance	https://coinmarketcap.com/currencies/dfinance/	XFI	$0.01
8513	QChi Chain	https://coinmarketcap.com/currencies/qchi-chain/	QHC	$0.00
8514	Timers	https://coinmarketcap.com/currencies/timers/	IPM	$0.01
8515	YFE Money	https://coinmarketcap.com/currencies/yfe-money/	YFE	$0.49
8516	HLP Token	https://coinmarketcap.com/currencies/help-coin/	HLP	$0.17
8517	BDCashProtocol Ecosystem	https://coinmarketcap.com/currencies/bdcash/	BDECO	$0.00
8518	YFOX FINANCE	https://coinmarketcap.com/currencies/yfox-finance/	YFOX	$2.04
8519	Cyclops Treasure	https://coinmarketcap.com/currencies/cyclops-treasure/	CYTR	$120.41
8520	Bellevue Network	https://coinmarketcap.com/currencies/bellevue-network/	BLV	$0.01
8521	YeaFinance	https://coinmarketcap.com/currencies/yeafinance/	YEA	$2.57
8522	YFPRO Finance	https://coinmarketcap.com/currencies/yfpro-finance/	YFPRO	$1.16
8523	Jiviz	https://coinmarketcap.com/currencies/jiviz/	JVZ	$0.40
8524	Stabilize	https://coinmarketcap.com/currencies/stabilize/	STBZ	$0.12
8525	LimitSwap	https://coinmarketcap.com/currencies/limitswap/	LIMIT	$6.56
8526	deCraft Finance	https://coinmarketcap.com/currencies/decraft-finance/	CRAFT	$12.51
8527	Star Pacific Coin	https://coinmarketcap.com/currencies/star-pacific-coin/	SPC	$0.71
8528	r/CryptoCurrency Moons	https://coinmarketcap.com/currencies/moon/	xMOON	$0.04
8529	YFi Management	https://coinmarketcap.com/currencies/yfi-management/	YEFIM	$4.55
8530	SWAG Finance	https://coinmarketcap.com/currencies/swag-finance/	SWAG	$0.01
8531	YFIA	https://coinmarketcap.com/currencies/yfia/	YFIA	$0.00
8532	GALAXY NETWORK	https://coinmarketcap.com/currencies/galaxy-network/	GNC	$0.00
8533	ETG Finance	https://coinmarketcap.com/currencies/etg-finance/	ETGF	$0.05
8534	Apiary Fund Coin	https://coinmarketcap.com/currencies/apiary-fund-coin/	AFC	$0.00
8535	Yearn Finance Network	https://coinmarketcap.com/currencies/yearn-finance-network/	YFN	$0.15
8536	Moonday Finance	https://coinmarketcap.com/currencies/moonday-finance/	MOONDAY	$26.78
8537	BananoDOS	https://coinmarketcap.com/currencies/bananodos/	yBAN	$68.64
8538	Enoki Finance	https://coinmarketcap.com/currencies/enoki-finance/	SPORE	$0.59
8539	DogDeFiCoin	https://coinmarketcap.com/currencies/dogdeficoin/	DOGDEFI	$0.17
8540	IDall	https://coinmarketcap.com/currencies/idall/	IDALL	$0.00
8541	YFI CREDITS GROUP	https://coinmarketcap.com/currencies/yfi-credits-group/	YFICG	$0.12
8542	Tsunami finance	https://coinmarketcap.com/currencies/tsunami/	NAMI	$38.23
8543	MegaCryptoPolis	https://coinmarketcap.com/currencies/megacryptopolis/	MEGA	$2.17
8544	YYFI.Protocol	https://coinmarketcap.com/currencies/yyfi-protocol/	YYFI	$0.08
8545	Hiz Finance	https://coinmarketcap.com/currencies/hiz-finance/	HIZ	$0.00
8546	Dollar on Chain	https://coinmarketcap.com/currencies/dollar-on-chain/	DOC	$1.01
8547	King Swap	https://coinmarketcap.com/currencies/kingswap/	$KING	$0.00
8548	Mars Network	https://coinmarketcap.com/currencies/mars-network/	MARS	$0.00
8549	Auric Network	https://coinmarketcap.com/currencies/auric-network/	AUSCM	$0.03
8550	Cryptochrome	https://coinmarketcap.com/currencies/cryptochrome/	CHM	$0.00
8551	CSP DAO	https://coinmarketcap.com/currencies/csp-dao/	NEBO	$1.26
8552	Fiola	https://coinmarketcap.com/currencies/fiola/	FLA	$0.00
8553	Yearn Finance Bit2	https://coinmarketcap.com/currencies/yearn-finance-bit2/	YFB2	$2.55
8554	Trade.win	https://coinmarketcap.com/currencies/trade-win/	TWI	$0.02
8555	Libartysharetoken	https://coinmarketcap.com/currencies/libartysharetoken/	LST	$0.02
8556	gAsp	https://coinmarketcap.com/currencies/gasp/	GASP	$0.00
8557	Future-Cash Digital	https://coinmarketcap.com/currencies/future-cash-digital/	FCD	$0.15
8558	Nyan V2	https://coinmarketcap.com/currencies/nyan-v2/	NYAN-2	$4.05
8559	LIQUID	https://coinmarketcap.com/currencies/liquidefi/	LIQUID	$5.10
8560	GARD Governance Token	https://coinmarketcap.com/currencies/gard-governance-token/	GGT	$0.00
8561	Blueshare Token	https://coinmarketcap.com/currencies/blueshare-token/	BST1	$0.00
8562	Sav3Token	https://coinmarketcap.com/currencies/sav3token/	SAV3	$0.02
8563	Your Finance Decentralized	https://coinmarketcap.com/currencies/yfdfi-finance/	YFD	$0.65
8564	TECRA	https://coinmarketcap.com/currencies/tecracoin/	TECRA	$0.13
8565	DefHold	https://coinmarketcap.com/currencies/defhold/	DEFO	$18.48
8566	Chemix Ecology Governance Token	https://coinmarketcap.com/currencies/qian-kun/	KUN	$0.02
8567	UniWhales	https://coinmarketcap.com/currencies/uniwhales/	UWL	$0.20
8568	DexKit	https://coinmarketcap.com/currencies/dexkit/	KIT	$0.21
8569	KP2R.Network	https://coinmarketcap.com/currencies/kp2r-network/	KP2R	$0.05
8570	BIOKKOIN	https://coinmarketcap.com/currencies/biokkoin/	BKKG	$18.98
8571	oBTC	https://coinmarketcap.com/currencies/obtc/	OBTC	$19215.44
8572	BlackDragon	https://coinmarketcap.com/currencies/blackdragon/	BDT	$1.77
8573	HoldToWin	https://coinmarketcap.com/currencies/holdtowin/	7ADD	$0.53
8574	XPToken.io	https://coinmarketcap.com/currencies/xptoken-io/	XPT	$0.78
8575	Yearn Loans Finance	https://coinmarketcap.com/currencies/yearn-loans-finance/	YLFI	$1.27
8576	Bullswap Exchange	https://coinmarketcap.com/currencies/bullswap-exchange/	BVL	$0.00
8577	DefiCliq	https://coinmarketcap.com/currencies/deficliq/	CLIQ	$0.00
8578	KING OF DEFI	https://coinmarketcap.com/currencies/king-of-defi/	KODX	$4.08
8579	Money of Tomorrow Today	https://coinmarketcap.com/currencies/money-of-tomorrow-today/	MTTCOIN	$1.88
8580	Adventure Token	https://coinmarketcap.com/currencies/adventure-token/	TWA	$0.00
8581	YearnAgnostic Finance	https://coinmarketcap.com/currencies/yearnagnostic-finance/	YFIAG	$0.95
8582	YFIDapp	https://coinmarketcap.com/currencies/yfidapp/	YFID	$1.60
8583	Elite Swap	https://coinmarketcap.com/currencies/elite-swap/	ELT	$0.00
8584	Glox Finance	https://coinmarketcap.com/currencies/glox-finance/	GLOX	$5.20
8585	Moderna tokenized stock FTX	https://coinmarketcap.com/currencies/moderna-tokenized-stock-ftx/	MRNA	$145.94
8586	Twitter tokenized stock FTX	https://coinmarketcap.com/currencies/twitter-tokenized-stock-ftx/	TWTR	$38.39
8587	Uber tokenized stock FTX	https://coinmarketcap.com/currencies/uber-tokenized-stock-ftx/	UBER	$21.25
8588	BioNTech tokenized stock FTX	https://coinmarketcap.com/currencies/biontech-tokenized-stock-ftx/	BNTX	$158.12
8589	Pfizer tokenized stock Bittrex	https://coinmarketcap.com/currencies/pfizer-tokenized-stock-bittrex/	PFE	$52.01
8590	Apple tokenized stock Bittrex	https://coinmarketcap.com/currencies/apple-tokenized-stock-bittrex/	AAPL	$135.18
8591	BioNTech tokenized stock Bittrex	https://coinmarketcap.com/currencies/biontech-tokenized-stock-bittrex/	BNTX	$147.51
8592	Facebook tokenized stock Bittrex	https://coinmarketcap.com/currencies/facebook-tokenized-stock-bittrex/	FB	$165.00
8593	Google tokenized stock Bittrex	https://coinmarketcap.com/currencies/google-tokenized-stock-bittrex/	GOOGL	$2134.76
8594	Netflix tokenized stock Bittrex	https://coinmarketcap.com/currencies/netflix-tokenized-stock-bittrex/	NFLX	$177.14
8595	Billibilli tokenized stock Bittrex	https://coinmarketcap.com/currencies/billibilli-tokenized-stock-bittrex/	BILI	$23.41
8596	Rank Token	https://coinmarketcap.com/currencies/rank-token/	RANK	$0.00
8597	Interfinex	https://coinmarketcap.com/currencies/interfinex/	IFEX	$0.00
8598	Venus XRP	https://coinmarketcap.com/currencies/venus-xrp/	vXRP	$0.01
8599	Honey	https://coinmarketcap.com/currencies/honey-token/	HNY	$36.80
8600	Deflect	https://coinmarketcap.com/currencies/deflect/	DEFLCT	$0.4562
8601	PIGX	https://coinmarketcap.com/currencies/pigx/	PIGX	$0.003101
8602	Hub - Human Trust Protocol	https://coinmarketcap.com/currencies/hub-human-trust-protocol/	HUB	$0.001816
8603	Richlab Token	https://coinmarketcap.com/currencies/richlab-token/	RLE	$0.00001223
8604	Yield	https://coinmarketcap.com/currencies/yield/	YLD	$0.3957
8605	Predictz	https://coinmarketcap.com/currencies/predictz/	PRDZ	$3.06
8606	MediconnectUk	https://coinmarketcap.com/currencies/mediconnectuk/	MEDI	$0.0000999
8607	N3RD Finance	https://coinmarketcap.com/currencies/n3rd-finance/	N3RDz	$4.85
8608	Golden Ratio Per Liquidity	https://coinmarketcap.com/currencies/goldenratioperliquidity/	GRPL	$28.52
8609	Basis Dollar	https://coinmarketcap.com/currencies/basis-dollar/	BSD	$0.006084
8610	Capital.Finance	https://coinmarketcap.com/currencies/capital-finance/	CAP	$9.83
8611	Rootkit Finance	https://coinmarketcap.com/currencies/rootkit-finance/	ROOT	$1051.03
8612	nHBTC	https://coinmarketcap.com/currencies/nhbtc/	N0001	$0.01
8613	DAPPCENTS	https://coinmarketcap.com/currencies/dappcents/	DPC	$0.00
8614	unilock.network	https://coinmarketcap.com/currencies/unilock-network/	UNL	$0.01
8615	Dynamic Set Dollar	https://coinmarketcap.com/currencies/dynamic-set-dollar/	DSD	$0.00
8616	Bankcoin	https://coinmarketcap.com/currencies/the-bank-coin/	BANK	$0.00
8617	Themis	https://coinmarketcap.com/currencies/themis-oracle/	MIS	$0.70
8618	Unique One	https://coinmarketcap.com/currencies/unique-one/	RARE	$0.01
8619	Keep3r BSC Network	https://coinmarketcap.com/currencies/keep3r-bsc-network/	KP3RB	$0.14
8620	Cryptokek	https://coinmarketcap.com/currencies/cryptokek/	KEK	$0.01
8621	MITH Cash	https://coinmarketcap.com/currencies/mith-cash/	MIC	$0.04
8622	Finance.Vote	https://coinmarketcap.com/currencies/finance-vote/	FVT	$0.00
8623	Utopia Genesis Foundation	https://coinmarketcap.com/currencies/utopia-genesis-foundation/	UOP	$0.00
8624	Action Coin	https://coinmarketcap.com/currencies/action-coin/	ACTN	$0.00
8625	Trism	https://coinmarketcap.com/currencies/trism/	TRISM	$0.06
8626	Banana.finance	https://coinmarketcap.com/currencies/banana-finance/	BANANA	$57.41
8627	BitDNS	https://coinmarketcap.com/currencies/bitdns/	DNS	$0.01
8628	Mantis	https://coinmarketcap.com/currencies/mantis/	MNTIS	$0.02
8629	HappinessToken	https://coinmarketcap.com/currencies/happinesstoken/	HPS	$0.16
8630	Delphi Chain Link	https://coinmarketcap.com/currencies/delphi-chain-link/	DCL	$0.00
8631	PlayAndLike	https://coinmarketcap.com/currencies/playandlike/	PAL	$0.10
8632	Venus Filecoin	https://coinmarketcap.com/currencies/venus-filecoin/	vFIL	$0.11
8633	CheeseSwap	https://coinmarketcap.com/currencies/cheeseswap/	CHS	$0.01
8634	Tronx Coin	https://coinmarketcap.com/currencies/tronx-coin/	TRONX	$0.00
8635	Dequant	https://coinmarketcap.com/currencies/dequant/	DEQ	$0.00
8636	AI Network	https://coinmarketcap.com/currencies/ai-network/	AIN	$0.03
8637	Hithotx	https://coinmarketcap.com/currencies/hithotx/	HITX	$0.00
8638	Basis Dollar Share	https://coinmarketcap.com/currencies/basis-dollar-share/	BSDS	$0.09
8639	Passive Income	https://coinmarketcap.com/currencies/passive-income/	PSI	$23.28
8640	PayYoda	https://coinmarketcap.com/currencies/payyoda/	YOT	$0.01
8641	LP 3pool Curve	https://coinmarketcap.com/currencies/lp-3pool-curve/	3CRV	$1.02
8642	Zero Exchange	https://coinmarketcap.com/currencies/zero-exchange/	ZERO	$0.00
8643	Nydronia	https://coinmarketcap.com/currencies/nydronia/	NIA	$0.00
8644	POC Blockchain	https://coinmarketcap.com/currencies/poc-blockchain/	POC	$0.58
8645	PieDAO Balanced Crypto Pie	https://coinmarketcap.com/currencies/piedao-balanced-crypto-pie/	BCP	$1.13
8646	EOX	https://coinmarketcap.com/currencies/eox/	EOX	$0.00
8647	Energy Ledger	https://coinmarketcap.com/currencies/energy-ledger/	ELX	$0.00
8648	Interop	https://coinmarketcap.com/currencies/interop/	TROP	$0.24
8649	BlackBerry tokenized stock FTX	https://coinmarketcap.com/currencies/blackberry-tokenized-stock-ftx/	BB	$5.42
8650	XNODE	https://coinmarketcap.com/currencies/xnode/	XNODE	$0.03
8651	Phoswap	https://coinmarketcap.com/currencies/phoswap/	PHO	$0.02
8652	Petrachor	https://coinmarketcap.com/currencies/petrachor/	PTA	$0.00
8653	Strudel Finance	https://coinmarketcap.com/currencies/strudel-finance/	$TRDL	$0.02
8654	Zytara dollar	https://coinmarketcap.com/currencies/zytara-dollar/	ZUSD	$0.84
8655	UniDexGas	https://coinmarketcap.com/currencies/unidexgas/	UNDG	$5.85
8656	Rug Proof	https://coinmarketcap.com/currencies/rug-proof/	RPT	$0.02
8657	Fairum	https://coinmarketcap.com/currencies/fairum/	FAI	$0.11
8658	Chow Chow	https://coinmarketcap.com/currencies/chow-chow/	CHOW	$0.00
8659	EthicHub	https://coinmarketcap.com/currencies/ethichub/	ETHIX	$0.17
8660	Coliquidity	https://coinmarketcap.com/currencies/shield-finance/	COLI	$0.00
8661	TAMA EGG NiftyGotchi	https://coinmarketcap.com/currencies/tama-egg-niftygotchi/	TME	$18.71
8662	PizzaSwap	https://coinmarketcap.com/currencies/pizzaswap/	PIZZA	$0.02
8663	YFBitcoin	https://coinmarketcap.com/currencies/yfbitcoin/	YFBTC	$6.17
8664	SCV.finance Token	https://coinmarketcap.com/currencies/super-coinview/	SCV	$0.00
8665	Midas Dollar Share	https://coinmarketcap.com/currencies/midas-dollar-share/	MDS	$1.56
8666	Previse	https://coinmarketcap.com/currencies/previse/	PRVS	$0.03
8667	Basix	https://coinmarketcap.com/currencies/basix/	BASX	$0.21
8668	DEVA TOKEN	https://coinmarketcap.com/currencies/deva-token/	DEVA	$2.00
8669	BiTToken	https://coinmarketcap.com/currencies/bittoken/	BITT	$0.03
8670	Hyper Credit Network	https://coinmarketcap.com/currencies/hyper-credit-network/	HPAY	$0.00
8671	ShuttleOne	https://coinmarketcap.com/currencies/shuttleone/	SZO	$0.01
8672	Tcoin	https://coinmarketcap.com/currencies/tcoin-token/	TCO	$0.00
8673	DexMex	https://coinmarketcap.com/currencies/dexmex/	DEXM	$0.00
8674	Pub Finance	https://coinmarketcap.com/currencies/pub-finance/	PINT	$0.34
8675	ProperSix	https://coinmarketcap.com/currencies/propersix/	PSIX	$0.00
8676	BigBoys Industry	https://coinmarketcap.com/currencies/bigboys-industry/	BBI	$1763.62
8677	Mirrored Bitcoin	https://coinmarketcap.com/currencies/mirrored-bitcoin/	mBTC	$16397.70
8678	Wault Finance (OLD)	https://coinmarketcap.com/currencies/wault-finance/	WAULT	$2.69
8679	Aave Enjin	https://coinmarketcap.com/currencies/aave-enjin/	aENJ	$0.47
8680	Aave Ethereum	https://coinmarketcap.com/currencies/aave-ethereum/	aETH	$1059.21
8681	SaltSwap Finance	https://coinmarketcap.com/currencies/saltswap-finance/	SALT	$0.00
8682	Stacker Ventures	https://coinmarketcap.com/currencies/stacker-ventures/	STACK	$0.31
8683	Nodestats	https://coinmarketcap.com/currencies/nodestats/	NS	$0.00
8684	Marsan Exchange token	https://coinmarketcap.com/currencies/marsan-exchange-token/	MRS	$0.01
8685	Kiwi Finance	https://coinmarketcap.com/currencies/kiwi-finance/	KIWI	$0.03
8686	VANCI FINANCE	https://coinmarketcap.com/currencies/vanci-finance/	VANCII	$0.36
8687	DEOR	https://coinmarketcap.com/currencies/deor/	DEOR	$0.00
8688	Warrior Token	https://coinmarketcap.com/currencies/warrior-token-spartan-casino/	WAR	$0.00
8689	CAD Coin	https://coinmarketcap.com/currencies/cad-coin/	CADC	$0.50
8690	YEARNYFI NETWORK	https://coinmarketcap.com/currencies/yearnyfi-network/	YNI	$2.79
8691	HyruleSwap	https://coinmarketcap.com/currencies/hyruleswap/	RUPEE	$0.00
8692	Toshimon	https://coinmarketcap.com/currencies/toshimon/	TOSHI	$2.87
8693	EsportsPro	https://coinmarketcap.com/currencies/esportspro/	ESPRO	$0.03
8694	Umbria Network	https://coinmarketcap.com/currencies/umbria-network/	UMBR	$0.83
8695	Kindcow Finance	https://coinmarketcap.com/currencies/kindcow-finance/	KIND	$0.00
8696	FlashX Ultra	https://coinmarketcap.com/currencies/flashx-ultra/	FSXU	$0.00
8697	DailySwap Token	https://coinmarketcap.com/currencies/dailyswap-token/	DAILYS	$0.00
8698	Arro Social	https://coinmarketcap.com/currencies/arro-social/	ARRO	$0.00
8699	EFT.finance	https://coinmarketcap.com/currencies/eft-finance/	EFT	$0.81
8700	UME Token	https://coinmarketcap.com/currencies/ume-token/	UME	$0.004835
8701	Mango Finance	https://coinmarketcap.com/currencies/mango-finance/	MANGO	$0.0006494
8702	CoffeeSwap	https://coinmarketcap.com/currencies/coffeeswap/	COFFEE	$0.04995
8703	Quam Network	https://coinmarketcap.com/currencies/quam-network/	QUAM	$0.0003343
8704	vBSWAP	https://coinmarketcap.com/currencies/vbswap/	VBSWAP	$11.30
8705	RYI Unity	https://coinmarketcap.com/currencies/ryi-unity/	RYIU	$0.007456
8706	USDP Stablecoin	https://coinmarketcap.com/currencies/usdp/	USDP	$1.01
8707	Cream ETH 2	https://coinmarketcap.com/currencies/cream-eth2/	CRETH2	$9.07
8708	Rare Pepe	https://coinmarketcap.com/currencies/rare-pepe/	RPEPE	$0.006845
8709	FM Gallery	https://coinmarketcap.com/currencies/fm-gallery/	FMG	$0.0008063
8710	Daily	https://coinmarketcap.com/currencies/daily/	DAILY	$0.00
8711	ebox	https://coinmarketcap.com/currencies/ebox/	EBOX	$0.01
8712	COPS FINANCE	https://coinmarketcap.com/currencies/cops-finance/	COPS	$72.59
8713	Farm Space	https://coinmarketcap.com/currencies/farm-space/	SPACE	$0.00
8714	Bitcoin Asset [OLD]	https://coinmarketcap.com/currencies/bitcoin-asset/	BTA	$0.28
8715	LNAsolution Coin	https://coinmarketcap.com/currencies/lnasolution-coin/	LAS	$0.00
8716	Connectico	https://coinmarketcap.com/currencies/connectico/	CON	$0.02
8717	SaturnV Gold v2	https://coinmarketcap.com/currencies/saturnv-gold/	SATVGv2	$0.00
8718	DAOhaus	https://coinmarketcap.com/currencies/daohaus/	HAUS	$3.39
8719	Bit	https://coinmarketcap.com/currencies/bit/	BITS	$0.02
8720	Meliora	https://coinmarketcap.com/currencies/meliora/	MORA	$0.03
8721	Pilot	https://coinmarketcap.com/currencies/pilot/	PTD	$0.00
8722	Swirl Cash	https://coinmarketcap.com/currencies/swirl-cash/	SWIRL	$0.03
8723	Robo Token	https://coinmarketcap.com/currencies/robo-token/	ROBO	$0.01
8724	BerrySwap	https://coinmarketcap.com/currencies/berryswap/	BERRY	$0.00
8725	Mero	https://coinmarketcap.com/currencies/mero/	MERO	$0.00
8726	Sting Defi	https://coinmarketcap.com/currencies/sting-defi/	SDFI	$0.07
8727	WasabiX	https://coinmarketcap.com/currencies/wasabix/	WASABI	$0.12
8728	Swampy	https://coinmarketcap.com/currencies/swampy/	SWAMP	$0.01
8729	Mixty Finance	https://coinmarketcap.com/currencies/mixty-finance/	MXF	$0.10
8730	ARTX Trading	https://coinmarketcap.com/currencies/artx-trading/	ARTX	$0.02
8731	RougeCoin	https://coinmarketcap.com/currencies/rougecoin/	XRGE	$0.00
8732	Yetucoin	https://coinmarketcap.com/currencies/yetucoin/	YETU	$0.00
8733	ShardingDAO	https://coinmarketcap.com/currencies/shardingdao/	SHD	$0.06
8734	Interest Bearing Defi Pulse Index	https://coinmarketcap.com/currencies/interest-bearing-dpi/	BDPI	$74.61
8735	BasketDAO	https://coinmarketcap.com/currencies/basketdao/	BASK	$1.82
8736	Linkflow Finance	https://coinmarketcap.com/currencies/linkflow-finance/	LF	$0.28
8737	FairEclipse	https://coinmarketcap.com/currencies/faireclipse/	FECLIPSE	$0.00
8738	Dark Matter	https://coinmarketcap.com/currencies/dark-matter/	DMT	$8.22
8739	Moon Stop	https://coinmarketcap.com/currencies/moon-stop/	MNSTP	$0.00
8740	ziot Coin	https://coinmarketcap.com/currencies/ziot-coin/	ZIOT	$0.01
8741	WHEAT	https://coinmarketcap.com/currencies/wheat/	WHEAT	$0.30
8742	IQONIQ FanEcoSystem	https://coinmarketcap.com/currencies/iqoniq-fanecosystem/	IQQ	$0.00
8743	FrogeX	https://coinmarketcap.com/currencies/frogex/	FROGEX	$0.00
8744	Mofi Finance	https://coinmarketcap.com/currencies/mofi-finance/	MOFI	$0.00
8745	Vangold	https://coinmarketcap.com/currencies/vangold-token/	VGD	$0.00
8746	One Get Coin	https://coinmarketcap.com/currencies/one-get-coin/	OGC	$0.00
8747	Waffle	https://coinmarketcap.com/currencies/waffle/	WAF	$0.00
8748	Bitsz	https://coinmarketcap.com/currencies/bitsz/	BITSZ	$0.38
8749	ENV Finance	https://coinmarketcap.com/currencies/env-finance/	ENV	$0.00
8750	The Lab Finance	https://coinmarketcap.com/currencies/the-lab-finance/	LABO	$0.00
8751	GrafenoCoin	https://coinmarketcap.com/currencies/grafeno/	GFNC	$0.00
8752	Crypto Excellence	https://coinmarketcap.com/currencies/crypto-excellence/	CE	$0.76
8753	BIXBCOIN	https://coinmarketcap.com/currencies/bixbcoin/	BIXB	$6.94
8754	APWars	https://coinmarketcap.com/currencies/apwars/	WGOLD	$0.00
8755	Donkey	https://coinmarketcap.com/currencies/donkey/	DONK	$0.00
8756	PandaSwap	https://coinmarketcap.com/currencies/pandaswap/	PND	$0.00
8757	CLAIM	https://coinmarketcap.com/currencies/claim/	CLAIM	$0.03
8758	Marshmallowdefi	https://coinmarketcap.com/currencies/marshmallowdefi/	MASH	$0.00
8759	Papel Token	https://coinmarketcap.com/currencies/papel-token/	PAPEL	$0.00
8760	Milktea.finance	https://coinmarketcap.com/currencies/milktea-finance/	MTF	$0.00
8761	Revo Network	https://coinmarketcap.com/currencies/revo-network/	REVO	$0.00
8762	Safetesla	https://coinmarketcap.com/currencies/safetesla/	SAFETESLA	$0.00
8763	NFTSwaps	https://coinmarketcap.com/currencies/nftswaps/	SWAPS	$0.00
8764	Babytoken	https://coinmarketcap.com/currencies/babytoken/	BABY	$0.00
8765	KLend	https://coinmarketcap.com/currencies/klend/	KLT	$0.07
8766	Venus Cardano	https://coinmarketcap.com/currencies/venus-cardano/	vADA	$0.01
8767	Wault [New]	https://coinmarketcap.com/currencies/wault-finance-new/	WAULTX	$0.00
8768	Dopple Finance	https://coinmarketcap.com/currencies/dopple-finance/	DOP	$0.02
8769	Evolution	https://coinmarketcap.com/currencies/evolution/	GEN	$0.24
8770	LabraCoin	https://coinmarketcap.com/currencies/labracoin/	LABRA	$0.00
8771	POP	https://coinmarketcap.com/currencies/pop/	POP!	$0.00
8772	GreenTrust	https://coinmarketcap.com/currencies/greentrust/	GNT	$0.00
8773	Anti-Lockdown	https://coinmarketcap.com/currencies/anti-lockdown/	FREE	$0.00
8774	EtherSmart	https://coinmarketcap.com/currencies/ethersmart/	ETM	$0.02
8775	UNILAYERX	https://coinmarketcap.com/currencies/unilayerx/	LAYERX	$1.17
8776	Evolution Finance	https://coinmarketcap.com/currencies/evolution-finance/	EVN	$9.96
8777	g9tro Crowdfunding Platform	https://coinmarketcap.com/currencies/g9tro-crowdfunding-platform/	G9TRO	$0.00
8778	Goat Coin	https://coinmarketcap.com/currencies/goat-coin/	GOAT	$0.00
8779	CompliFi	https://coinmarketcap.com/currencies/complifi/	COMFI	$0.24
8780	SEA	https://coinmarketcap.com/currencies/sea-token/	SEA	$0.00
8781	Wrapped Statera	https://coinmarketcap.com/currencies/wrapped-statera/	WSTA	$0.01
8782	Triforce Protocol	https://coinmarketcap.com/currencies/triforce-protocol/	TFC	$0.02
8783	Emblem	https://coinmarketcap.com/currencies/emblem/	EMB	$0.07
8784	Raptor Finance	https://coinmarketcap.com/currencies/raptor-token/	RPTR	$0.00
8785	Blocktyme	https://coinmarketcap.com/currencies/blocktyme/	BTYM	$0.00
8786	Parasset	https://coinmarketcap.com/currencies/parasset/	ASET	$0.10
8787	upBNB	https://coinmarketcap.com/currencies/upbnb/	UPBNB	$0.02
8788	Nadeshiko	https://coinmarketcap.com/currencies/nadeshiko/	NDSK	$0.00
8789	NFTCircle	https://coinmarketcap.com/currencies/nftcircle/	NFTC	$0.00
8790	Jindoge	https://coinmarketcap.com/currencies/jindoge/	JINDOGE	$0.00
8791	COLD FINANCE	https://coinmarketcap.com/currencies/cold-finance/	COLD	$0.00
8792	BSC Gold	https://coinmarketcap.com/currencies/bsc-gold/	BSCGOLD	$0.00
8793	Coco Swap	https://coinmarketcap.com/currencies/coco-swap/	COCO	$0.00
8794	Caramel Swap	https://coinmarketcap.com/currencies/caramel-swap/	MEL	$0.00
8795	Bakery Tools	https://coinmarketcap.com/currencies/bakery-tools/	TBAKE	$0.00
8796	SafeZone	https://coinmarketcap.com/currencies/safezone/	SAFEZONE	$0.00
8797	Lunar Highway	https://coinmarketcap.com/currencies/lunar-highway/	LUNAR	$0.00
8798	PalGold	https://coinmarketcap.com/currencies/palgold/	PALG	$0.05
8799	Shiba Corp	https://coinmarketcap.com/currencies/shiba-corp/	BSHIBA	$0.00
8800	Atlantic Finance Token	https://coinmarketcap.com/currencies/atlantic-finance-token/	ATFI	$0.00182
8801	GarudaSwap	https://coinmarketcap.com/currencies/garudaswap/	GARUDA	$0.000000001945
8802	MoonPirate	https://coinmarketcap.com/currencies/moonpirate/	MOONPIRATE	$0.0...03742
8803	Oviex	https://coinmarketcap.com/currencies/oviex/	OVI	$1.51
8804	Fundum Capital	https://coinmarketcap.com/currencies/fundum-capital/	FND	$0.001129
8805	Football Stars	https://coinmarketcap.com/currencies/football-stars/	FootballStars	$0.0000007347
8806	AzeusX	https://coinmarketcap.com/currencies/azeusx/	AZX	$0.00007973
8807	Aquari	https://coinmarketcap.com/currencies/aquari/	AQUARI	$0.000006687
8808	yBEARSwap	https://coinmarketcap.com/currencies/ybearswap/	SBEAR	$0.00006194
8809	Tena [new]	https://coinmarketcap.com/currencies/tena-new/	TENA	$0.0003996
8810	Chihuahua	https://coinmarketcap.com/currencies/chihuahua/	HUA	$0.00
8811	Chihua Token	https://coinmarketcap.com/currencies/chihua-token/	CHIHUA	$0.00
8812	Baby Shark	https://coinmarketcap.com/currencies/baby-shark/	SHARK	$0.00
8813	ApeHaven	https://coinmarketcap.com/currencies/apehaven/	APES	$0.00
8814	CARBON	https://coinmarketcap.com/currencies/carbon-token/	GEMS	$0.00
8815	Cerby Token	https://coinmarketcap.com/currencies/cerby-token/	CERBY	$0.00
8816	HOPPY	https://coinmarketcap.com/currencies/hoppy/	HOP	$0.00
8817	SAFESPACE	https://coinmarketcap.com/currencies/safespace/	SAFESPACE	$0.00
8818	Matador Token	https://coinmarketcap.com/currencies/matador-token/	MTDR	$0.00
8819	Fire Token	https://coinmarketcap.com/currencies/fire-token/	FIRE	$0.00
8820	NFT TOKEN PILOT	https://coinmarketcap.com/currencies/nft-token-pilot/	NFTP	$0.00
8821	SIL Finance	https://coinmarketcap.com/currencies/sil-finance/	SIL	$25.70
8822	Sustainable Energy Token	https://coinmarketcap.com/currencies/sustainable-energy-token/	SET	$0.00
8823	Swaperry	https://coinmarketcap.com/currencies/swaperry/	PERRY	$0.00
8824	Supermoon	https://coinmarketcap.com/currencies/supermoon/	OSM	$0.00
8825	Erotica	https://coinmarketcap.com/currencies/erotica-token/	EROTICA	$0.00
8826	ENERGY Token	https://coinmarketcap.com/currencies/energy-token/	ENERGY	$0.00
8827	Dobermann	https://coinmarketcap.com/currencies/dobermann/	DOBE	$0.00
8828	Pupper	https://coinmarketcap.com/currencies/pupper/	PUP	$0.00
8829	Mozart Finance	https://coinmarketcap.com/currencies/mozart-finance/	MELODY	$0.00
8830	GIVE GLOBAL	https://coinmarketcap.com/currencies/give-global/	GIVE	$0.00
8831	Catge coin	https://coinmarketcap.com/currencies/catge-coin/	CATGE	$0.00
8832	Daisy Launch Pad	https://coinmarketcap.com/currencies/daisy-launch-pad/	DAISY	$0.04
8833	Sunder Goverance Token	https://coinmarketcap.com/currencies/sunder-goverance-token/	Sunder	$0.00
8834	DragonBite	https://coinmarketcap.com/currencies/dragonbite/	BITE	$0.00
8835	Enedex	https://coinmarketcap.com/currencies/enedex/	ENE	$0.00
8836	Blockmine	https://coinmarketcap.com/currencies/blockmine/	GOLD NUGGET	$0.00
8837	DAO1	https://coinmarketcap.com/currencies/dao1/	DAO1	$0.04
8838	Star Foxx	https://coinmarketcap.com/currencies/star-foxx/	FOXX	$0.00
8839	sEUR	https://coinmarketcap.com/currencies/seur/	SEUR	$1.05
8840	UCoin	https://coinmarketcap.com/currencies/u-coin/	UCOIN	$0.09
8841	PuddingSwap	https://coinmarketcap.com/currencies/puddingswap/	PUD	$0.00
8842	Jomon Inu	https://coinmarketcap.com/currencies/jomon-inu/	JINU	$0.00
8843	Mammon	https://coinmarketcap.com/currencies/mammon/	MMON	$0.00
8844	PancakeFork Finance	https://coinmarketcap.com/currencies/pancakefork-finance/	CAKF	$0.00
8845	Hepa Finance	https://coinmarketcap.com/currencies/hepa-finance/	HEPA	$0.00
8846	Cavapoo	https://coinmarketcap.com/currencies/cavapoo/	CAVA	$0.00
8847	PinkPanda	https://coinmarketcap.com/currencies/pinkpanda/	PINKPANDA	$0.00
8848	BoomBaby.io	https://coinmarketcap.com/currencies/boombaby-io/	BOOMB	$0.00
8849	Curio Stable Coin	https://coinmarketcap.com/currencies/curio-stable-coin/	CSC	$0.05
8850	Jejudoge	https://coinmarketcap.com/currencies/jejudoge/	JEJUDOGE	$0.00
8851	Shibby	https://coinmarketcap.com/currencies/shibby/	SHIBBY	$0.00
8852	Xiasi Inu	https://coinmarketcap.com/currencies/xiasi-inu/	XIASI	$0.00
8853	Steel	https://coinmarketcap.com/currencies/steel/	STEEL	$0.00
8854	Night Life Crypto	https://coinmarketcap.com/currencies/night-life-crypto/	NLIFE	$0.34
8855	MoonRise	https://coinmarketcap.com/currencies/moonrise/	MOONRISE	$0.00
8856	Tiki Token	https://coinmarketcap.com/currencies/tiki-token/	TIKI	$0.00
8857	Whale Fall	https://coinmarketcap.com/currencies/whale-fall/	Whale	$0.00
8858	CoinSwap Space	https://coinmarketcap.com/currencies/coinswap-space/	CSS	$0.06
8859	SolarWind Token	https://coinmarketcap.com/currencies/solarwind-token/	SLW	$0.00
8860	CherryPick	https://coinmarketcap.com/currencies/cherrypick/	CHERRY	$0.15
8861	MCS Token	https://coinmarketcap.com/currencies/mcs-token/	MCS	$0.00
8862	SOCIETY OF GALACTIC EXPLORATION	https://coinmarketcap.com/currencies/society-of-galactic-exploration/	SGE	$0.00
8863	Locklet	https://coinmarketcap.com/currencies/locklet/	LKT	$0.01
8864	Tardigrades.Finance (ETH)	https://coinmarketcap.com/currencies/tardigrades-finance-eth/	TRDG	$0.00
8865	Arty's World	https://coinmarketcap.com/currencies/artys-world/	ARTY	$0.00
8866	SCIFI Index	https://coinmarketcap.com/currencies/scifi-index/	SCIFI	$0.83
8867	DashSports	https://coinmarketcap.com/currencies/dashsports/	DASS	$0.00
8868	CoinW Token	https://coinmarketcap.com/currencies/coinw-token/	CWT	$0.42
8869	Inari	https://coinmarketcap.com/currencies/inari/	INARI	$0.00
8870	Jetswap.finance	https://coinmarketcap.com/currencies/jetswap-finance/	WINGS	$0.00
8871	ZORT	https://coinmarketcap.com/currencies/zort/	ZORT	$0.03
8872	Zerogoki	https://coinmarketcap.com/currencies/zerogoki/	REI	$0.06
8873	Polyroll	https://coinmarketcap.com/currencies/polyroll/	ROLL	$0.00
8874	NAFTY	https://coinmarketcap.com/currencies/nafty/	NAFTY	$0.00
8875	Super Floki	https://coinmarketcap.com/currencies/super-floki/	SLOKI	$0.00
8876	Hachiko Inu	https://coinmarketcap.com/currencies/hachikoinu/	INU	$0.00
8877	Unicly Genesis MoonCats Collection	https://coinmarketcap.com/currencies/unicly-genesis-mooncats-collection/	UGMC	$0.05
8878	TreasureKey	https://coinmarketcap.com/currencies/treasurekey/	PIRATE	$0.00
8879	CBET Token	https://coinmarketcap.com/currencies/cbet-token/	CBET	$0.00
8880	SafeCap Token	https://coinmarketcap.com/currencies/safecap-token/	SFC	$0.00
8881	1TRONIC Network	https://coinmarketcap.com/currencies/1tronic-network/	1TRC	$0.03
8882	WIZARD	https://coinmarketcap.com/currencies/wizard/	WIZARD	$0.39
8883	Wolfystreetbets	https://coinmarketcap.com/currencies/wolfystreetbets/	WOLFY	$0.00
8884	XXT-Token	https://coinmarketcap.com/currencies/xxt-token/	XXT	$0.00
8885	PolkaCipher	https://coinmarketcap.com/currencies/polkacipher/	CPHR	$0.00
8886	Digies Coin	https://coinmarketcap.com/currencies/digies-coin/	DIGS	$0.00
8887	Diamonds Alaska Malamuted	https://coinmarketcap.com/currencies/diamonds-alaska-malamuted/	DAM	$0.00
8888	Bitcoin Banana	https://coinmarketcap.com/currencies/bitcoin-banana/	BIBA	$0.00
8889	Projekt Diamond	https://coinmarketcap.com/currencies/projekt-diamond/	DIAMND	$0.00
8890	AMC FIGHT NIGHT	https://coinmarketcap.com/currencies/amc-fight-night/	AMC	$0.02
8891	Gambler Shiba	https://coinmarketcap.com/currencies/gambler-shiba/	GSHIBA	$0.00
8892	The Pablo Token	https://coinmarketcap.com/currencies/the-pablo-token/	PABLO	$0.00
8893	SaveBritney	https://coinmarketcap.com/currencies/savebritney/	SBRT	$0.00
8894	Pyram Token	https://coinmarketcap.com/currencies/pyram-token/	PYRAM	$0.00
8895	Bimp.Finance	https://coinmarketcap.com/currencies/bimp-finance/	BIMP	$0.00
8896	Archimedes	https://coinmarketcap.com/currencies/archimedes/	ACMD	$0.00
8897	Orange	https://coinmarketcap.com/currencies/orange/	ORG	$0.00
8898	SubGame	https://coinmarketcap.com/currencies/subgame/	SGB	$0.03
8899	TABANK	https://coinmarketcap.com/currencies/tabank/	TAB	$0.04
8900	ViceToken	https://coinmarketcap.com/currencies/vicetoken/	VICEX	$0.000000001236
8901	Boost Coin	https://coinmarketcap.com/currencies/boost-coin/	BOOST	$0.001109
8902	PolkaMonster	https://coinmarketcap.com/currencies/polkamonster/	PKMON	$0.000008228
8903	The Grand Banks	https://coinmarketcap.com/currencies/the-grand-banks/	GRAND	$0.1025
8904	MaidCoin	https://coinmarketcap.com/currencies/maidcoin/	$MAID	$0.5655
8905	Beast Token	https://coinmarketcap.com/currencies/beast-token/	BEAST	$0.0000006447
8906	AfterBack	https://coinmarketcap.com/currencies/afterback/	AFTRBCK	$0.0003108
8907	Storage Area Network Anywhere	https://coinmarketcap.com/currencies/storage-area-network-anywhere/	SANA	$0.00003727
8908	BankEth	https://coinmarketcap.com/currencies/banketh/	BANKETH	$0.0001724
8909	Nobility	https://coinmarketcap.com/currencies/nobility-new/	NBL	$0.00000204
8910	Dragon Slayer	https://coinmarketcap.com/currencies/dragon-slayer/	DRS	$0.00
8911	AlinX	https://coinmarketcap.com/currencies/alinx/	ALIX	$0.00
8912	RoboDoge Coin	https://coinmarketcap.com/currencies/robodoge-coin/	ROBODOGE	$0.00
8913	CardSwap	https://coinmarketcap.com/currencies/cardswap/	CSWAP	$0.04
8914	Covid Token	https://coinmarketcap.com/currencies/covid-token/	COVIDTOKEN	$0.00
8915	People's Punk	https://coinmarketcap.com/currencies/peoples-punk/	DDDD	$0.00
8916	Pinkslip Finance	https://coinmarketcap.com/currencies/pinkslip-finance/	PSLIP	$0.00
8917	Kanaloa Network	https://coinmarketcap.com/currencies/kanaloa-network/	KANA	$0.00
8918	PUNK Floor	https://coinmarketcap.com/currencies/punk-floor/	FLOOR	$0.01
8919	MaticLaunch	https://coinmarketcap.com/currencies/maticlaunch/	MTCL	$0.01
8920	Shade Cash	https://coinmarketcap.com/currencies/shade-cash/	SHADE	$0.02
8921	Stable UNI	https://coinmarketcap.com/currencies/stable-uni/	ONEUNI	$0.99
8922	Wault USD	https://coinmarketcap.com/currencies/wault-usd/	WUSD	$0.76
8923	Mensa Protocol	https://coinmarketcap.com/currencies/mensa-protocol/	MENSA	$0.00
8924	Genesis Pool	https://coinmarketcap.com/currencies/genesis-pool/	GPOOL	$0.00
8925	Lumi Credits	https://coinmarketcap.com/currencies/lumi-credits/	LUMI	$0.02
8926	Raid Token	https://coinmarketcap.com/currencies/raid-token/	RAID	$0.01
8927	CRYPTO PHOENIX	https://coinmarketcap.com/currencies/crypto-phoenix/	CPHX	$0.00
8928	SLINK LABS	https://coinmarketcap.com/currencies/slink-labs/	SLAB	$0.00
8929	SNAP!	https://coinmarketcap.com/currencies/snap-token/	SNAP	$0.00
8930	Deswap	https://coinmarketcap.com/currencies/deswap/	DAW	$0.03
8931	KONG Land	https://coinmarketcap.com/currencies/kong-land/	$CITIZEN	$1069.51
8932	MUSO Finance	https://coinmarketcap.com/currencies/muso-finance/	MUSO	$0.00
8933	Storm Token	https://coinmarketcap.com/currencies/storm-token/	STORM	$0.00
8934	Zabu Finance	https://coinmarketcap.com/currencies/zabu-finance/	ZABU	$0.00
8935	SheBollETH Commerce	https://coinmarketcap.com/currencies/shebolleth-commerce/	SBECOM	$0.00
8936	Syfin	https://coinmarketcap.com/currencies/syfin/	SYF	$0.00
8937	Sentiment Token	https://coinmarketcap.com/currencies/sentiment-token/	SENT	$0.02
8938	Sona Network	https://coinmarketcap.com/currencies/sona-network/	SONA	$0.00
8939	WhaleStreet $hrimp Token	https://coinmarketcap.com/currencies/whalestreet-shrimp-token/	$HRIMP	$0.00
8940	The Red Order	https://coinmarketcap.com/currencies/the-red-order/	ORDR	$0.00
8941	Ledgity	https://coinmarketcap.com/currencies/ledgity/	LTY	$0.00
8942	Kranz Token	https://coinmarketcap.com/currencies/kranz-token/	KRZ	$0.00
8943	E-leven	https://coinmarketcap.com/currencies/e-leven/	ELV	$0.49
8944	BabyBoo	https://coinmarketcap.com/currencies/babyboo/	BABYBOO	$0.00
8945	Rewardeum	https://coinmarketcap.com/currencies/rewardeum/	REUM	$0.00
8946	Hoopoe	https://coinmarketcap.com/currencies/hoopoe/	HOOP	$69.69
8947	Scientix	https://coinmarketcap.com/currencies/scientix/	SCIX	$0.04
8948	DAO.vc	https://coinmarketcap.com/currencies/dao-vc/	DAOVC	$0.01
8949	Fantom Doge	https://coinmarketcap.com/currencies/fantom-doge/	RIP	$0.00
8950	Ethereum Wrapped Filecoin	https://coinmarketcap.com/currencies/ethereum-wrapped-filecoin/	EFIL	$5.41
8951	Eternal Oasis	https://coinmarketcap.com/currencies/eternal-oasis/	ETOS	$1.04
8952	Kaiju Worlds	https://coinmarketcap.com/currencies/kaiju-worlds/	KAIJU	$0.00
8953	PASV	https://coinmarketcap.com/currencies/pasv/	PASV	$0.00
8954	The Rare Antiquities Token	https://coinmarketcap.com/currencies/the-rare-antiquities-token/	RAT	$0.00
8955	Afreum	https://coinmarketcap.com/currencies/afreum/	AFR	$0.00
8956	MySwap	https://coinmarketcap.com/currencies/myswap/	MST	$0.00
8957	Good Bridging	https://coinmarketcap.com/currencies/good-bridging/	GB	$0.01
8958	Infinity Token	https://coinmarketcap.com/currencies/infinity-token/	IT	$0.00
8959	Ape-X	https://coinmarketcap.com/currencies/ape-x/	APE-X	$0.00
8960	WAIV Care	https://coinmarketcap.com/currencies/waiv-care/	WAIV	$0.00
8961	Arix	https://coinmarketcap.com/currencies/arix/	ARIX	$0.90
8962	Carbon Finance	https://coinmarketcap.com/currencies/carbon-finance/	CARBON	$0.00
8963	Arbucks	https://coinmarketcap.com/currencies/arbucks/	BUCK	$0.00
8964	Arctic Finance	https://coinmarketcap.com/currencies/arctic-finance/	AURORA	$0.00
8965	Okex Fly	https://coinmarketcap.com/currencies/okex-fly/	OKFLY	$0.00
8966	Solminter	https://coinmarketcap.com/currencies/solminter/	SMRT	$0.00
8967	Chihuahuax	https://coinmarketcap.com/currencies/chihuahuax/	CHIHUA	$0.00
8968	Dreamr	https://coinmarketcap.com/currencies/dreamr/	DMR	$0.00
8969	Fantom Oasis	https://coinmarketcap.com/currencies/fantom-oasis/	FTMO	$0.01
8970	Phat Doge Givings	https://coinmarketcap.com/currencies/phat-doge-givings/	GIVING	$0.00
8971	Minerva Wallet	https://coinmarketcap.com/currencies/minerva-wallet/	MIVA	$0.01
8972	KRYZA Network	https://coinmarketcap.com/currencies/kryza-network/	KRN	$0.00
8973	Doge Universe	https://coinmarketcap.com/currencies/doge-universe/	SPACEXDOGE	$0.00
8974	NFT Gallery	https://coinmarketcap.com/currencies/nft-gallery/	NFG	$0.00
8975	CAGE	https://coinmarketcap.com/currencies/cage/	C4G3	$0.00
8976	Lucky Unicorn Token	https://coinmarketcap.com/currencies/lucky-unicorn-token/	L99	$0.00
8977	bUKHI	https://coinmarketcap.com/currencies/bukh/	BUKH	$0.00
8978	EL RUNE - Rune.Game	https://coinmarketcap.com/currencies/el-rune---rune-game/	EL	$0.19
8979	Death Token	https://coinmarketcap.com/currencies/death-token/	DEATH	$0.00
8980	TIR RUNE - Rune.Game	https://coinmarketcap.com/currencies/tir-rune---rune-game/	TIR	$0.16
8981	NEF RUNE - Rune.Game	https://coinmarketcap.com/currencies/nef-rune---rune-game/	NEF	$0.12
8982	ITH RUNE - Rune.Game	https://coinmarketcap.com/currencies/ith-rune---rune-game/	ITH	$0.07
8983	RAL RUNE - Rune.Game	https://coinmarketcap.com/currencies/ral-rune---rune-game/	RAL	$0.10
8984	ORT RUNE - Rune.Game	https://coinmarketcap.com/currencies/ort-rune---rune-game/	ORT	$0.09
8985	THUL RUNE - Rune.Game	https://coinmarketcap.com/currencies/thul-rune---rune-game/	THUL	$0.11
8986	AMN RUNE - Rune.Game	https://coinmarketcap.com/currencies/amn-rune---rune-game/	AMN	$0.07
8987	SHAEL RUNE - Rune.Game	https://coinmarketcap.com/currencies/shael-rune---rune-game/	SHAEL	$0.15
8988	DOL RUNE - Rune.Game	https://coinmarketcap.com/currencies/dol-rune---rune-game/	DOL	$0.12
8989	HEL RUNE - Rune.Game	https://coinmarketcap.com/currencies/hel-rune---rune-game/	HEL	$0.07
8990	Lum Rune	https://coinmarketcap.com/currencies/lum-rune/	LUM	$0.10
8991	ZOD RUNE - Rune.Game	https://coinmarketcap.com/currencies/zod-rune---rune-game/	ZOD	$0.84
8992	HakunaMatata (new)	https://coinmarketcap.com/currencies/hakunamatata-new/	HKUN	$0.00
8993	Solbank Token	https://coinmarketcap.com/currencies/solbank-token/	SBNK	$0.00
8994	CarbonEco	https://coinmarketcap.com/currencies/carboneco/	c0	$0.00
8995	Kickstarter	https://coinmarketcap.com/currencies/kickstarter/	KSR	$0.00
8996	EPRO TOKEN	https://coinmarketcap.com/currencies/ethereum-pro-new/	EPRO	$0.00
8997	ShibaNova	https://coinmarketcap.com/currencies/shibanova/	NOVA	$0.01
8998	Amy Finance	https://coinmarketcap.com/currencies/amy-finance/	AMY	$0.00
8999	CDzExchange	https://coinmarketcap.com/currencies/cdzexchange/	CDZ	$0.00
9000	Instinct	https://coinmarketcap.com/currencies/instinct/	INSTINCT	$0.0004912
9001	LPI DAO	https://coinmarketcap.com/currencies/lpi-dao/	LPI	$0.02554
9002	AstroFarms Finance	https://coinmarketcap.com/currencies/astrofarms-finance/	LEO	$27.40
9003	Ecosystem Coin Network	https://coinmarketcap.com/currencies/ec-bet-network/	ECN	$0.5175
9004	SafeMoon-AVAX	https://coinmarketcap.com/currencies/safemoon-avax/	SAFEMOONA	$0.0...01397
9005	VPEX Exchange	https://coinmarketcap.com/currencies/vpex-exchange/	VPX	$0.02423
9006	Loki Variants Fan	https://coinmarketcap.com/currencies/loki-variants-fan/	VARIANTS	$0.001339
9007	ysoy chain farm	https://coinmarketcap.com/currencies/ysoy-chain-farm/	YSOY	$1.50
9008	Zeropay Finance	https://coinmarketcap.com/currencies/zeropay-finance/	ZEROPAY	$0.0005795
9009	XTRA Token	https://coinmarketcap.com/currencies/xtra-token/	XTRA	$0.000001109
9010	CryptoLion	https://coinmarketcap.com/currencies/cryptolion/	CLION	$0.00
9011	Uzumaki Inu	https://coinmarketcap.com/currencies/uzumaki-inu/	UZUMAKI	$0.00
9012	Bantu	https://coinmarketcap.com/currencies/bantu/	XBN	$0.00
9013	DFBTC	https://coinmarketcap.com/currencies/dfbtc/	AOM	$0.10
9014	Community Doge Coin	https://coinmarketcap.com/currencies/community-doge-coin/	CCDOGE	$0.00
9015	LatteSwap	https://coinmarketcap.com/currencies/latteswap/	LATTE	$0.00
9016	Space Hamster	https://coinmarketcap.com/currencies/space-hamster/	HAMS	$0.00
9017	SAVE CARDANO	https://coinmarketcap.com/currencies/save-cardano/	SADA	$0.00
9018	FlokiFrunkPuppy	https://coinmarketcap.com/currencies/flokifrunkpuppy-avax/	FloFru	$0.00
9019	Space Vikings	https://coinmarketcap.com/currencies/space-vikings/	SVT	$0.00
9020	AvaNyan	https://coinmarketcap.com/currencies/avanyan/	ANYAN	$0.00
9021	SOLBERRY	https://coinmarketcap.com/currencies/solberry/	SOLBERRY	$0.00
9022	Nezuko Inu	https://coinmarketcap.com/currencies/nezuko-inu/	NEZUKO	$0.00
9023	Litherium	https://coinmarketcap.com/currencies/litherium/	LITH	$0.02
9024	Magic Token	https://coinmarketcap.com/currencies/magicland/	MAGIC	$0.11
9025	Momento	https://coinmarketcap.com/currencies/momento/	MOMENTO	$0.00
9026	Sewer Rat Social Club CHIZ Token	https://coinmarketcap.com/currencies/sewer-rat-social-club-chiz-token/	CHIZ	$0.00
9027	Baddest Alpha Ape Bundle	https://coinmarketcap.com/currencies/baddest-alpha-ape-bundle/	APED	$8.61
9028	Colawork	https://coinmarketcap.com/currencies/colawork/	COLA	$0.16
9029	IceSlush Finance	https://coinmarketcap.com/currencies/iceslush-finance/	SLUSH	$0.01
9030	Project DogeX	https://coinmarketcap.com/currencies/project-dogex-v2/	$DOGEX	$0.00
9031	ESWAP.TUBE	https://coinmarketcap.com/currencies/tube2/	TUBE2	$2.04
9032	Lelouch Lamperouge	https://coinmarketcap.com/currencies/lelouch-lamperouge/	ZERO	$0.00
9033	ACCESSLAUNCHER	https://coinmarketcap.com/currencies/accesslauncher/	ACX	$0.00
9034	CheeseFry	https://coinmarketcap.com/currencies/chfry-finance/	CHEESE	$0.08
9035	Valkyrio	https://coinmarketcap.com/currencies/valkyrio/	VALK	$0.00
9036	BeatBind	https://coinmarketcap.com/currencies/beatbind/	BBND	$0.00
9037	Oculus Vision	https://coinmarketcap.com/currencies/oculus-vision/	OCV	$0.00
9038	Nami Inu	https://coinmarketcap.com/currencies/nami-inu/	NAMI	$0.00
9039	Wrapped Curio Ferrari F12tdf	https://coinmarketcap.com/currencies/wrapped-curio-ferrari-f12tdf/	WCT1	$0.09
9040	Swift Finance	https://coinmarketcap.com/currencies/swift-finance/	SWIFT	$0.00
9041	HashBit BlockChain	https://coinmarketcap.com/currencies/hashbit-blockchain/	HBIT	$0.00
9042	Moonbird	https://coinmarketcap.com/currencies/moonbird/	MBIRD	$0.00
9043	UniCandy	https://coinmarketcap.com/currencies/unicandy/	UCD	$0.03
9044	INU Token	https://coinmarketcap.com/currencies/inu-token/	INU	$0.00
9045	TAPME Token	https://coinmarketcap.com/currencies/taptoken/	TAP	$0.00
9046	Genesis Mana	https://coinmarketcap.com/currencies/genesis-mana/	MANA	$68.74
9047	Astronaut (Polygon)	https://coinmarketcap.com/currencies/astronaut-polygon/	pNAUT	$0.00
9048	Pulse Predictions Market	https://coinmarketcap.com/currencies/pulse-token/	PULSE	$0.02
9049	Ideanet Token	https://coinmarketcap.com/currencies/ideanet-token/	INET	$0.04
9050	RewardsCoin	https://coinmarketcap.com/currencies/rewardscoin/	RWSC	$0.00
9051	UniArts	https://coinmarketcap.com/currencies/uniarts/	UART	$0.02
9052	BitANT	https://coinmarketcap.com/currencies/bitant/	BITANT	$0.00
9053	Coffin Finance	https://coinmarketcap.com/currencies/coffin-finance/	COFFIN	$0.01
9054	Coffin Dollar	https://coinmarketcap.com/currencies/coffin-dollar/	COUSD	$0.95
9055	Red Floki	https://coinmarketcap.com/currencies/red-floki/	REDFLOKI	$0.00
9056	PocMon	https://coinmarketcap.com/currencies/pocmon-new/	MON	$0.00
9057	Nexus Crypto Services	https://coinmarketcap.com/currencies/nexus-folio/	$NEXUS	$0.02
9058	Futura Finance	https://coinmarketcap.com/currencies/futura-finance/	FFT	$0.00
9059	Imperial Obelisk	https://coinmarketcap.com/currencies/imperial-obelisk/	IMP	$0.00
9060	Metafish	https://coinmarketcap.com/currencies/metafish/	FISH	$0.00
9061	DAOSquare	https://coinmarketcap.com/currencies/daosquare/	RICE	$0.65
9062	Devikins	https://coinmarketcap.com/currencies/devikins/	DVK	$0.00
9063	Treat DAO [new]	https://coinmarketcap.com/currencies/treat-dao-new/	TREAT	$0.01
9064	ScareCrow	https://coinmarketcap.com/currencies/scarecrow/	SCARE	$0.04
9065	PAPPAY	https://coinmarketcap.com/currencies/pappay/	PAPPAY	$0.00
9066	Persistence Staked XPRT	https://coinmarketcap.com/currencies/persistence-staked-xprt/	STKXPRT	$0.85
9067	Staked Olympus	https://coinmarketcap.com/currencies/staked-olympus/	SOHM	$0.00
9068	KlayGames	https://coinmarketcap.com/currencies/klaygames/	KLAYG	$2.04
9069	Moby Dick	https://coinmarketcap.com/currencies/moby-dick/	WOT	$0.00
9070	DivineDAO	https://coinmarketcap.com/currencies/divine-dao/	DIVINE	$0.01
9071	SmartCoin (SMRT)	https://coinmarketcap.com/currencies/smartcoin-farm/	SMRT	$0.00
9072	Huckleberry	https://coinmarketcap.com/currencies/huckleberry/	FINN	$0.01
9073	Loop Finance	https://coinmarketcap.com/currencies/loop-finance/	LOOP	$0.00
9074	Little Bunny Rocket	https://coinmarketcap.com/currencies/little-bunny-rocket/	LBR	$0.00
9075	RickMortyDoxx	https://coinmarketcap.com/currencies/rickmortydoxx/	RICKMORTYDOXX	$0.00
9076	Gogeta Inu	https://coinmarketcap.com/currencies/gogeta-inu/	GOGETA	$0.00
9077	Nasa Doge	https://coinmarketcap.com/currencies/nasa-doge/	NASADOGE	$0.00
9078	Decentra-Lotto	https://coinmarketcap.com/currencies/decentra-lotto/	DELO	$0.00
9079	Rumito	https://coinmarketcap.com/currencies/rumito/	RUTC	$4.62
9080	MoneyTree	https://coinmarketcap.com/currencies/money-tree/	MONEY	$0.00
9081	Trade Fighter	https://coinmarketcap.com/currencies/trade-fighter/	TDF	$0.06
9082	zilSurvey	https://coinmarketcap.com/currencies/zilsurvey/	SRV	$0.01
9083	Axienomics	https://coinmarketcap.com/currencies/axienomics/	AXIN	$0.00
9084	Etherrock#72	https://coinmarketcap.com/currencies/etherrock-72/	PEBBLE	$0.00
9085	Dopple Finance	https://coinmarketcap.com/currencies/dopple-finance-/	DOPX	$0.00
9086	Solarbeam	https://coinmarketcap.com/currencies/solarbeam/	SOLAR	$0.10
9087	The Troller Coin	https://coinmarketcap.com/currencies/the-troller-coin/	TROLLER	$0.00
9088	Summit Defi	https://coinmarketcap.com/currencies/summit-defi/	SUMMIT	$0.00
9089	Shillit App	https://coinmarketcap.com/currencies/shillit-app/	SHILL	$0.00
9090	KnoxDAO	https://coinmarketcap.com/currencies/knoxedge/	KNOX	$0.01
9091	Zodiacs	https://coinmarketcap.com/currencies/zodiacs/	ZDC	$0.00
9092	Ethera	https://coinmarketcap.com/currencies/ethera/	ETA	$0.00
9093	Charizard Inu	https://coinmarketcap.com/currencies/charizard-inu/	CHARIZARD	$0.00
9094	PEANUTS	https://coinmarketcap.com/currencies/peanuts/	PEANUTS	$31.76
9095	FoxGirl	https://coinmarketcap.com/currencies/foxgirl/	FOXGIRL	$0.00
9096	Yukon	https://coinmarketcap.com/currencies/yukon/	$YUKON	$0.00
9097	ZilWall Paint	https://coinmarketcap.com/currencies/zilwall-paint/	ZPAINT	$0.00
9098	ZilWall	https://coinmarketcap.com/currencies/zilwall/	ZWALL	$0.27
9099	Nevada	https://coinmarketcap.com/currencies/nevada/	NEVADA	$0.00
9100	FantomMoon	https://coinmarketcap.com/currencies/fantommoon/	FMF	$0.001249
9101	SaitamaX	https://coinmarketcap.com/currencies/saitamax/	SAITAX	$0.0...06891
9102	Aureus Token	https://coinmarketcap.com/currencies/aureus-token/	AUREUSRH	$0.00001187
9103	WiseAvax	https://coinmarketcap.com/currencies/wiseavax/	WISE	$0.1724
9104	Sulgecoin	https://coinmarketcap.com/currencies/sulgecoin/	SUG	$0.3166
9105	PicArtNFT	https://coinmarketcap.com/currencies/picartnft/	PANFT	$0.00004396
9106	IceCubes Finance	https://coinmarketcap.com/currencies/icecubes-finance/	ICUBE	$0.03493
9107	Damn Token	https://coinmarketcap.com/currencies/damn-token/	DAMN	$0.000003012
9108	Island Inu	https://coinmarketcap.com/currencies/island-inu/	ISLAINU	$0.000001407
9109	Soltato FRIES	https://coinmarketcap.com/currencies/soltato-fries/	FRIES	$0.00105
9110	JoJo Inu	https://coinmarketcap.com/currencies/jojo-inu/	JOJO	$0.00
9111	Pizza Pug Coin	https://coinmarketcap.com/currencies/pizza-pug-coin/	PPUG	$0.00
9112	Eiichiro Oda Inu	https://coinmarketcap.com/currencies/eiichiro-oda-inu/	ODA	$0.00
9113	MetaDubai	https://coinmarketcap.com/currencies/metadubai/	MDB	$0.00
9114	Metti Inu	https://coinmarketcap.com/currencies/metti-inu/	METTI	$0.00
9115	The Seed Farm	https://coinmarketcap.com/currencies/the-seed-farm/	SEED	$0.06
9116	Augmented Finance	https://coinmarketcap.com/currencies/augmented-finance/	AGF	$0.00
9117	Pigeonsol	https://coinmarketcap.com/currencies/pigeonsol/	PGNT	$0.00
9118	KakashiInuV2	https://coinmarketcap.com/currencies/kakashiinuv2/	KKI	$0.00
9119	Bouje Token	https://coinmarketcap.com/currencies/bouje-token/	BOUJE	$0.03
9120	xDollar	https://coinmarketcap.com/currencies/xdollar/	XDO	$0.00
9121	ShibaZilla	https://coinmarketcap.com/currencies/shibazilla/	SHIBZ	$0.00
9122	Tsukiverse:Galactic Adventures	https://coinmarketcap.com/currencies/tsukiverse-galactic-adventures/	TSUGA	$0.00
9123	Moar Finance	https://coinmarketcap.com/currencies/moar-finance/	MOAR	$0.01
9124	Ponyo Impact	https://coinmarketcap.com/currencies/ponyo-inu/	PONYO	$0.00
9125	Shiba Watch	https://coinmarketcap.com/currencies/shiba-watch/	SHIBAW	$0.00
9126	Ray Network	https://coinmarketcap.com/currencies/ray-network/	XRAY	$0.02
9127	HEXAGON Pay	https://coinmarketcap.com/currencies/hexagon-pay/	HXP	$0.00
9128	CryptoBay	https://coinmarketcap.com/currencies/cryptobay/	BAY	$0.00
9129	SquidDao	https://coinmarketcap.com/currencies/squiddao/	SQUID	$566.46
9130	Tractor Joe	https://coinmarketcap.com/currencies/tractor-joe/	TRACTOR	$0.00
9131	Fantom Cake	https://coinmarketcap.com/currencies/fantom-cake/	FATCAKE	$0.00
9132	AlgoPad	https://coinmarketcap.com/currencies/algopad/	ALGOPAD	$0.01
9133	Exodia	https://coinmarketcap.com/currencies/exodia/	EXOD	$0.05
9134	ChilliSwap	https://coinmarketcap.com/currencies/chilliswap/	CHLI	$0.06
9135	Arrb Token	https://coinmarketcap.com/currencies/arrb-token/	ARRB	$0.00
9136	BABY WHITE HAMSTER	https://coinmarketcap.com/currencies/baby-white-hamster/	BWH	$0.00
9137	DogeMan	https://coinmarketcap.com/currencies/dogeman/	DGMAN	$0.00
9138	Mirai	https://coinmarketcap.com/currencies/mirai-labs/	MIRAI	$0.00
9139	Saint Inu	https://coinmarketcap.com/currencies/saint-inu/	SAINT	$0.00
9140	NovaXSolar	https://coinmarketcap.com/currencies/novaxsolar/	XSLR	$0.00
9141	Sola Ninja	https://coinmarketcap.com/currencies/sola-ninja/	SNJ	$0.09
9142	TaiChi	https://coinmarketcap.com/currencies/taichi/	TAC	$0.28
9143	Spartacus	https://coinmarketcap.com/currencies/spartacus/	SPA	$13.74
9144	BabyXape	https://coinmarketcap.com/currencies/babyxape/	BABYX	$0.00
9145	Baby Floki Up	https://coinmarketcap.com/currencies/baby-floki-up/	BFU	$0.00
9146	CardanoEvo	https://coinmarketcap.com/currencies/cardanoevo/	CEVO	$0.00
9147	Symbull	https://coinmarketcap.com/currencies/symbull/	SYMBULL	$0.00
9148	Little Tsuki Inu	https://coinmarketcap.com/currencies/little-tsuki-inu/	LILTK	$0.00
9149	Avaterra	https://coinmarketcap.com/currencies/avaterra/	TERRA	$0.64
9150	Cockapoo	https://coinmarketcap.com/currencies/cockapoo/	CPOO	$0.00
9151	OJE Token	https://coinmarketcap.com/currencies/oje-token/	OJE	$0.00
9152	Solana CUM	https://coinmarketcap.com/currencies/solana-cum/	SCUM	$0.00
9153	Luminos Mining Protocol	https://coinmarketcap.com/currencies/luminos-mining-protocol/	LUMI	$0.00
9154	Diviner Protocol	https://coinmarketcap.com/currencies/diviner-protocol/	DPT	$0.00
9155	Bunscake	https://coinmarketcap.com/currencies/bunscake/	BSCAKE	$0.00
9156	Blockchain Adventurers Guild	https://coinmarketcap.com/currencies/blockchain-adventurers-guild/	BAG	$0.25
9157	Mensa	https://coinmarketcap.com/currencies/mensa/	MSA	$0.00
9158	SpaceDawgs	https://coinmarketcap.com/currencies/spacedawgs/	DAWGS	$0.00
9159	Uniswap Finance	https://coinmarketcap.com/currencies/uniswap-finance/	UNFI	$0.03
9160	Treat	https://coinmarketcap.com/currencies/treat/	TREAT	$0.15
9161	SparkLab	https://coinmarketcap.com/currencies/sparklab/	Spark	$0.00
9162	P2P Solutions foundation	https://coinmarketcap.com/currencies/p2p-solutions-foundation/	P2PS	$11.86
9163	Island Doges	https://coinmarketcap.com/currencies/island-doges/	ISLAND	$0.00
9164	Shockwave Finance	https://coinmarketcap.com/currencies/shockwave-finance/	WAVE	$0.00
9165	1Swap	https://coinmarketcap.com/currencies/1swap/	1SWAP	$0.00
9166	Shibamon	https://coinmarketcap.com/currencies/shibamon/	SHIBAMON	$0.00
9167	Balisari	https://coinmarketcap.com/currencies/balisari/	BST	$0.00
9168	Catena X	https://coinmarketcap.com/currencies/catena-x/	CEX	$0.00
9169	Otter Finance	https://coinmarketcap.com/currencies/otter-finance/	OTR	$0.00
9170	Togashi Inu	https://coinmarketcap.com/currencies/togashi-inu/	TOGASHI	$0.00
9171	NFTASCII	https://coinmarketcap.com/currencies/nftascii/	NFTASCII	$0.00
9172	Ironman	https://coinmarketcap.com/currencies/ironman/	IRONMAN	$0.00
9173	DeFi Launch	https://coinmarketcap.com/currencies/defi-launch/	DLAUNCH	$0.10
9174	GEMIT.app	https://coinmarketcap.com/currencies/gemit-app/	GEMIT	$0.00
9175	Lizard Token	https://coinmarketcap.com/currencies/lizard-token/	LIZARD	$0.00
9176	Evagrow Coin	https://coinmarketcap.com/currencies/evagrow-coin/	EVA	$0.00
9177	Bork	https://coinmarketcap.com/currencies/bork/	BORK	$0.00
9178	Pirate Inu	https://coinmarketcap.com/currencies/pirate-inu/	PINU	$0.00
9179	Meta Shiba	https://coinmarketcap.com/currencies/meta-shiba/	MSHIBA	$0.00
9180	Doge Yellow Coin	https://coinmarketcap.com/currencies/doge-yellow-coin/	DOGEY	$0.00
9181	Bali Social Integrated	https://coinmarketcap.com/currencies/bali-social-integrated/	BSI	$1.50
9182	FantOHM DAO	https://coinmarketcap.com/currencies/fantohm/	FHM	$1.12
9183	Dickcoin	https://coinmarketcap.com/currencies/dickcoinmoon/	DICK	$0.00
9184	Follow Token	https://coinmarketcap.com/currencies/follow-token/	FOLO	$0.00
9185	Lorde Edge	https://coinmarketcap.com/currencies/lorde-edge/	EDGELON	$0.00
9186	The Mars Shiba	https://coinmarketcap.com/currencies/the-mars-shiba/	MARSSHIBA	$0.00
9187	Binancedog	https://coinmarketcap.com/currencies/binancedog/	Bidog	$0.00
9188	Omicron	https://coinmarketcap.com/currencies/omicron/	OMIC	$1.87
9189	Meta Inu	https://coinmarketcap.com/currencies/meta-inu/	METAINU	$0.00
9190	Superalgos	https://coinmarketcap.com/currencies/superalgos/	SA	$0.00
9191	Upper Swiss Franc	https://coinmarketcap.com/currencies/upper-swiss-franc/	CHFU	$0.98
9192	Let's Go Brandon	https://coinmarketcap.com/currencies/lets-go-brandon/	LGB	$0.00
9193	DogeBNB.org	https://coinmarketcap.com/currencies/dogebnb-org/	DOGEBNB	$0.00
9194	United Doge Finance	https://coinmarketcap.com/currencies/united-doge-finance/	UDOG	$0.00
9195	Mashima Inu	https://coinmarketcap.com/currencies/mashima-inu/	MASHIMA	$0.00
9196	PIDAO	https://coinmarketcap.com/currencies/pidao/	PID	$0.08
9197	Inuyasha	https://coinmarketcap.com/currencies/inuyasha/	INUYASHA	$0.00
9198	MetaAxis	https://coinmarketcap.com/currencies/metaaxis/	MTA	$0.00
9199	Succor Coin	https://coinmarketcap.com/currencies/succor-coin/	SUCCOR	$0.00
9200	Bitoshi	https://coinmarketcap.com/currencies/bitoshi/	BTI	$0.00000002435
9201	N-Word Pass	https://coinmarketcap.com/currencies/n-word-pass/	NWORDPASS	$0.00000000711
9202	eaglecoin	https://coinmarketcap.com/currencies/eagle-coin/	ELC	$0.0001998
9203	Spike Inu	https://coinmarketcap.com/currencies/spike-inu/	SPKI	$0.0...04792
9204	Columbus	https://coinmarketcap.com/currencies/columbus/	CBS	$0.0000004487
9205	ixirswap	https://coinmarketcap.com/currencies/ixirswap/	IXIR	$0.003039
9206	SHIBA CLASSIC	https://coinmarketcap.com/currencies/shiba-classic/	SHIBAC	$0.00000001898
9207	Snake Token	https://coinmarketcap.com/currencies/snake-token/	SNK	$0.0003824
9208	Low Float Gem	https://coinmarketcap.com/currencies/low-float-gem/	LFG	$0.5288
9209	QuizDrop	https://coinmarketcap.com/currencies/quizdrop/	QDROP	$0.2697
9210	KittyShiba	https://coinmarketcap.com/currencies/kittyshiba/	KSHIBA	$0.00
9211	Kimetsu Inu	https://coinmarketcap.com/currencies/kimetsu-inu/	KIMETSU	$0.00
9212	Panda Inu	https://coinmarketcap.com/currencies/panda-inu/	PANDA	$0.00
9213	ForeverBlast	https://coinmarketcap.com/currencies/foreverblast/	FEB	$0.00
9214	GM ETH	https://coinmarketcap.com/currencies/gm-coin/	GM	$0.00
9215	SmugDoge	https://coinmarketcap.com/currencies/smugdoge/	SMUG	$0.00
9216	Mishka Token	https://coinmarketcap.com/currencies/mishka-token/	MISHKA	$0.00
9217	Good Fire Token	https://coinmarketcap.com/currencies/good-fire-token/	GF	$0.00
9218	MagicBox	https://coinmarketcap.com/currencies/magicbox/	MBT	$0.00
9219	NFTFundArt	https://coinmarketcap.com/currencies/nftfundart/	NFA	$0.00
9220	ShinChan Token	https://coinmarketcap.com/currencies/shinchan-token/	SHINNOSUKE	$0.00
9221	Probably Nothing	https://coinmarketcap.com/currencies/probably-nothing/	PN	$0.00
9222	MEONG TOKEN	https://coinmarketcap.com/currencies/meong-token/	MEONG	$0.00
9223	PRELAX SWAP	https://coinmarketcap.com/currencies/prelax-swap/	PEAX	$0.00
9224	Kitty Solana	https://coinmarketcap.com/currencies/kitty-solana/	KITTY	$0.00
9225	Orbit Token	https://coinmarketcap.com/currencies/orbit-token/	ORBIT	$0.00
9226	ZillaMatrix	https://coinmarketcap.com/currencies/zillamatrix/	ZMAX	$0.00
9227	TRIBE	https://coinmarketcap.com/currencies/tribex/	TRIBEX	$0.00
9228	we love gm	https://coinmarketcap.com/currencies/we-love-gm/	GM	$0.00
9229	Council of Apes	https://coinmarketcap.com/currencies/council-of-apes/	COAPE	$0.00
9230	FanTerra	https://coinmarketcap.com/currencies/fanterra/	FTERRA	$0.03
9231	PlayersOnly	https://coinmarketcap.com/currencies/playersonly/	PO	$0.00
9232	AnpanSwap	https://coinmarketcap.com/currencies/anpanswap-token/	ANPAN	$0.00
9233	TokenBook	https://coinmarketcap.com/currencies/tokenbook/	TBK	$0.00
9234	Flesh Token	https://coinmarketcap.com/currencies/flesh-token/	FLESH	$0.00
9235	AxieDoge	https://coinmarketcap.com/currencies/axiedoge/	AXSD	$0.00
9236	Undead Finance	https://coinmarketcap.com/currencies/undead-finance/	UNDEAD	$0.01
9237	Shiba Inu Billionaire	https://coinmarketcap.com/currencies/shiba-inu-billionaire/	SHIBIB	$0.00
9238	Zoints	https://coinmarketcap.com/currencies/zoints/	ZEE	$0.00
9239	Sparrow Token	https://coinmarketcap.com/currencies/sparrow-token/	SPW	$0.00
9240	NPC DAO	https://coinmarketcap.com/currencies/npc-dao/	NPC	$0.00
9241	Falafel Coin	https://coinmarketcap.com/currencies/falafel/	FALAFEL	$0.00
9242	Nemesis	https://coinmarketcap.com/currencies/nms-token/	NMS	$0.00
9243	Sleepy-Shib	https://coinmarketcap.com/currencies/sleepy-shib/	SLEEPY-SHIB	$0.00
9244	FEED SYSTEM	https://coinmarketcap.com/currencies/feed-system/	FEEDTK	$0.01
9245	MILLIONSY	https://coinmarketcap.com/currencies/millionsy/	MILLI	$0.01
9246	Official Crypto Cowboy Token	https://coinmarketcap.com/currencies/official-crypto-cowboy-token/	OCCT	$0.00
9247	FIAT DAO	https://coinmarketcap.com/currencies/fiat-dao/	FDT	$0.01
9248	Rebellion Protocol	https://coinmarketcap.com/currencies/rebellion-protocol/	REBL	$0.00
9249	Quid Token	https://coinmarketcap.com/currencies/quid-token/	QUID	$0.00
9250	Hamdan Coin	https://coinmarketcap.com/currencies/hamdan-coin/	HMC	$0.00
9251	Titania Token	https://coinmarketcap.com/currencies/titania-token/	TITANIA	$0.00
9252	EFUN	https://coinmarketcap.com/currencies/e-fun-token/	EFUN	$0.00
9253	Zuki	https://coinmarketcap.com/currencies/zuki/	ZUKI	$0.00
9254	Unbanked	https://coinmarketcap.com/currencies/unbanked/	UNBNK	$1.68
9255	Refugees Token	https://coinmarketcap.com/currencies/refugees-token/	RFG	$0.00
9256	Plateau Finance	https://coinmarketcap.com/currencies/plateau-finance/	PLT	$0.00
9257	Naruto Inu	https://coinmarketcap.com/currencies/naruto-inu/	NARUTO	$0.00
9258	Blue Horizon	https://coinmarketcap.com/currencies/blue-horizon/	BLH	$0.00
9259	Yearn Cash	https://coinmarketcap.com/currencies/yearn-cash/	YFIC	$9.58
9260	Carbon Coin	https://coinmarketcap.com/currencies/carboncoin-token/	CXRBN	$0.40
9261	Snowdog	https://coinmarketcap.com/currencies/snowdog/	SDOG	$1.25
9262	Qubism	https://coinmarketcap.com/currencies/qubism/	QUB	$0.00
9263	BEM	https://coinmarketcap.com/currencies/bem/	BEMT	$0.00
9264	NFTPunk	https://coinmarketcap.com/currencies/nftpunk/	NFTPUNK2.0	$0.00
9265	PIggyBankDAO	https://coinmarketcap.com/currencies/piggybankdao/	PB	$0.94
9266	MUFTSwap	https://coinmarketcap.com/currencies/muftswap/	MSWAP	$0.00
9267	Project: One Whale	https://coinmarketcap.com/currencies/project-one-whale/	POW	$0.00
9268	Versus Farm	https://coinmarketcap.com/currencies/versus-farm/	VERSUS	$0.01
9269	BNB Hero Token	https://coinmarketcap.com/currencies/bnb-hero-token/	BNBH	$0.01
9270	Baby Meta	https://coinmarketcap.com/currencies/baby-meta/	BABYMETA	$0.00
9271	MetaGameHub DAO	https://coinmarketcap.com/currencies/metagamehub-dao/	MGH	$0.00
9272	Banana Bucks	https://coinmarketcap.com/currencies/banana-bucks/	BAB	$0.00
9273	Buff Samo	https://coinmarketcap.com/currencies/buff-samo/	BSAMO	$0.00
9274	Kanpeki	https://coinmarketcap.com/currencies/kanpeki/	KAE	$1.00
9275	ShineDAO	https://coinmarketcap.com/currencies/shinedao/	SHN	$0.00
9276	Fortress	https://coinmarketcap.com/currencies/fortressdao/	FORT	$0.50
9277	Tipsy	https://coinmarketcap.com/currencies/tipsy/	TIPSY	$0.01
9278	GoofyDoge	https://coinmarketcap.com/currencies/goofydoge/	GoofyDoge	$0.00
9279	Santa Inu	https://coinmarketcap.com/currencies/santa-inu/	SANINU	$0.00
9280	Microverse	https://coinmarketcap.com/currencies/microverse/	MVP	$0.00
9281	Multi-Chain Capital [old]	https://coinmarketcap.com/currencies/multi-chain-capital/	MCC	$0.00
9282	NFMonsters	https://coinmarketcap.com/currencies/nfmonsters/	NFMON	$0.05
9283	Oppa	https://coinmarketcap.com/currencies/oppa/	OPPA	$0.00
9284	Viral Inu	https://coinmarketcap.com/currencies/viral-inu/	VINU	$0.00
9285	8ight Finance	https://coinmarketcap.com/currencies/8ight-finance/	EIGHT	$0.72
9286	SOLFINA PROTOCOL	https://coinmarketcap.com/currencies/solfina-protocol/	SOLFI	$0.00
9287	Mermaid	https://coinmarketcap.com/currencies/mermaid/	MERMAID	$0.00
9288	Alien Inu	https://coinmarketcap.com/currencies/alien-inu/	ALIEN	$0.00
9289	CarsAutoFinance	https://coinmarketcap.com/currencies/carsautofinance/	CAF	$0.00
9290	Crystal Pro	https://coinmarketcap.com/currencies/crystal-pro/	CRPRO	$0.01
9291	MiniSportZilla	https://coinmarketcap.com/currencies/minisportzilla/	MINISPORTZ	$0.00
9292	JUST $APE	https://coinmarketcap.com/currencies/just-ape/	APE	$0.00
9293	Carbon Utility Token	https://coinmarketcap.com/currencies/carbon-utility-token/	CUT	$0.00
9294	MiniBTC	https://coinmarketcap.com/currencies/minibtc/	MINIBTC	$0.00
9295	Hatter	https://coinmarketcap.com/currencies/hatter/	HATTER	$0.00
9296	ZILLADOGE TOKEN	https://coinmarketcap.com/currencies/zilladoge-token/	ZILLADOGE	$0.00
9297	Snowball Snowbank	https://coinmarketcap.com/currencies/snowballxyz/	SNO	$0.00
9298	StormBringer	https://coinmarketcap.com/currencies/stormbringer/	STB	$0.00
9299	Timerr	https://coinmarketcap.com/currencies/timerr/	TIMERR	$0.00
9300	Lobis	https://coinmarketcap.com/currencies/lobis/	LOBI	$235.79
9301	WOLF PUPS [OLD]	https://coinmarketcap.com/currencies/wolf-pups/	WOLFIES	$0.000001074
9302	Shiny	https://coinmarketcap.com/currencies/shiny/	SHINY	$0.3087
9303	Angel Inu	https://coinmarketcap.com/currencies/angel-inu/	ANGEL	$0.0...03243
9304	Cross Chain Capital	https://coinmarketcap.com/currencies/cross-chain-capital/	CCC	$0.0000001044
9305	STIMMY	https://coinmarketcap.com/currencies/stimmy/	STIMMY	$0.00000005271
9306	Pyroblock	https://coinmarketcap.com/currencies/pyroblock/	PYR	$0.00004437
9307	SeamlessSwap	https://coinmarketcap.com/currencies/seamlessswap/	SEAMLESS	$0.0001674
9308	SWERVE Protocol	https://coinmarketcap.com/currencies/swerve-protocol/	SWERVE	$0.0001088
9309	LYS Capital	https://coinmarketcap.com/currencies/lys-capital/	LYS	$0.005214
9310	Sheep Game	https://coinmarketcap.com/currencies/sheep-game/	AWOOL	$0.00
9311	Ghost Farmer Capital	https://coinmarketcap.com/currencies/ghost-farmer-capital/	GFC	$0.00
9312	ApeFund	https://coinmarketcap.com/currencies/apefund/	APEFUND	$0.00
9313	Thors Mead	https://coinmarketcap.com/currencies/thors-mead/	MEAD	$0.00
9314	Safe Drive	https://coinmarketcap.com/currencies/safe-drive/	DRIVE	$0.00
9315	Kujira	https://coinmarketcap.com/currencies/kujira/	KUJI	$0.00
9316	Unus Dao	https://coinmarketcap.com/currencies/unus-dao/	UDO	$0.31
9317	FLOKI METAVERSE	https://coinmarketcap.com/currencies/floki-metaverse/	FLMT	$0.00
9318	Atlantis	https://coinmarketcap.com/currencies/atlantis/	ATLAS	$0.07
9319	marmaj	https://coinmarketcap.com/currencies/marmaj/	MARMAJ	$3.62
9320	Ginga Finance	https://coinmarketcap.com/currencies/ginga-finance/	GIN	$0.00
9321	VIVAL	https://coinmarketcap.com/currencies/vival/	VIV	$0.00
9322	Vari-Stable Capital	https://coinmarketcap.com/currencies/vari-stable-capital/	VSC	$0.00
9323	Crypto Mushroomz	https://coinmarketcap.com/currencies/crypto-mushroomz/	SHROOMZ	$0.00
9324	KING SAMO	https://coinmarketcap.com/currencies/king-samo/	KSAMO	$0.00
9325	Anchor bETH Token	https://coinmarketcap.com/currencies/anchor-beth-token/	BETH	$1138.43
9326	99DEFI.NETWORK	https://coinmarketcap.com/currencies/99defi-network/	99DEFI	$0.00
9327	Punk Shiba	https://coinmarketcap.com/currencies/punk-shiba/	PUNKS	$0.00
9328	YTizer	https://coinmarketcap.com/currencies/ytizer/	YTZ	$0.00
9329	Rocky Inu	https://coinmarketcap.com/currencies/rocky-inu/	ROCKY	$0.00
9330	Tempo DAO	https://coinmarketcap.com/currencies/tempo-dao/	TEMPO	$0.00
9331	Planet Inu	https://coinmarketcap.com/currencies/planet-inu/	PLANETINU	$0.00
9332	Luni	https://coinmarketcap.com/currencies/luni/	LUNI	$0.00
9333	Creator Protocol	https://coinmarketcap.com/currencies/creator-protocol/	CRE	$0.00
9334	Firulais	https://coinmarketcap.com/currencies/firulais/	FIRU	$0.00
9335	Rome	https://coinmarketcap.com/currencies/rome/	ROME	$12.98
9336	Spice DAO	https://coinmarketcap.com/currencies/spice-dao/	SPICE	$0.00
9337	Spaceship War	https://coinmarketcap.com/currencies/spaceship-war/	SPW	$0.00
9338	Meta Musk	https://coinmarketcap.com/currencies/meta-musk/	META	$0.00
9339	BaconCoin	https://coinmarketcap.com/currencies/bacon-protocol/	BACON	$0.01
9340	Slushie Capital	https://coinmarketcap.com/currencies/slushie-capital/	SLUSH	$0.00
9341	Bikini Finance	https://coinmarketcap.com/currencies/bikini-finance/	BIKINI	$0.00
9342	FireFlame Inu	https://coinmarketcap.com/currencies/fireflame-inu/	FIRE	$0.00
9343	GoldPesa Option	https://coinmarketcap.com/currencies/goldpesa/	GPO	$0.58
9344	GENIE token	https://coinmarketcap.com/currencies/genie-token/	GENIETOKEN	$0.00
9345	GizaDao	https://coinmarketcap.com/currencies/gizadao/	GIZA	$26.33
9346	MillionMonke	https://coinmarketcap.com/currencies/millionmonke/	MIMO	$0.00
9347	Engine	https://coinmarketcap.com/currencies/engine-token/	ENGN	$0.00
9348	humanDAO	https://coinmarketcap.com/currencies/humandao/	HDAO	$0.01
9349	Xeebster	https://coinmarketcap.com/currencies/xeebster/	XEEB	$0.00
9350	DaVinci Token	https://coinmarketcap.com/currencies/davinci-token/	VINCI	$0.00
9351	Smart Token	https://coinmarketcap.com/currencies/smart-token/	SMART	$0.36
9352	SuperMegaHyperDoge	https://coinmarketcap.com/currencies/supermegahyperdoge/	SMHDOGE	$0.00
9353	FREEMOON ETH	https://coinmarketcap.com/currencies/freemoon-eth/	EFREEMOON	$0.00
9354	Dogelana	https://coinmarketcap.com/currencies/dogelana/	DLANA	$0.00
9355	AvaPay	https://coinmarketcap.com/currencies/avapay/	AVAPAY	$0.00
9356	FarmersOnly Onion	https://coinmarketcap.com/currencies/farmersonly-onion/	ONION	$0.16
9357	Chipz	https://coinmarketcap.com/currencies/chipz/	CHPZ	$0.01
9358	BlackPoker	https://coinmarketcap.com/currencies/blackpoker/	BPKR	$0.00
9359	MidasDAO	https://coinmarketcap.com/currencies/midasdao/	CROWN	$0.65
9360	Vikings Finance	https://coinmarketcap.com/currencies/vikings-finance/	VAL	$6.94
9361	Ava MIM	https://coinmarketcap.com/currencies/ava-mim/	AVAMIM	$0.00
9362	Solar Full Cycle	https://coinmarketcap.com/currencies/solar-full-cycle/	SFC	$0.00
9363	Atrollcity	https://coinmarketcap.com/currencies/atrollcity/	PINE	$0.00
9364	Shiba Metaverse	https://coinmarketcap.com/currencies/shiba-metaverse-shim/	SHIM	$0.00
9365	KING SHIBA INU	https://coinmarketcap.com/currencies/king-shiba-inu/	KSHIBINU	$0.00
9366	IceFlake Finance	https://coinmarketcap.com/currencies/iceflake-finance/	FLAKE	$0.00
9367	InfinityCash	https://coinmarketcap.com/currencies/infinitycash/	IFC	$0.00
9368	Wasdaq Finance	https://coinmarketcap.com/currencies/wasdaq-finance/	WSDQ	$0.00
9369	Cardashift	https://coinmarketcap.com/currencies/cardashift/	CLAP	$0.01
9370	SOLACE	https://coinmarketcap.com/currencies/solace/	SOLACE	$0.01
9371	First Eleven	https://coinmarketcap.com/currencies/first-eleven/	F11	$0.00
9372	Encrypter	https://coinmarketcap.com/currencies/encrypter/	ERPT	$0.00
9373	WAGMI on Solana	https://coinmarketcap.com/currencies/wagmi-on-solana/	WAGMI	$0.00
9374	SolarMineX	https://coinmarketcap.com/currencies/solarminex/	SMX	$0.00
9375	Paricle Technology	https://coinmarketcap.com/currencies/paricle-technology/	PART	$0.01
9376	PAPA DAO	https://coinmarketcap.com/currencies/papa-dao/	PAPA	$0.01
9377	Chain Colosseum	https://coinmarketcap.com/currencies/chain-colosseum/	COLOS	$0.00
9378	Beast Masters	https://coinmarketcap.com/currencies/beast-masters/	MASTER	$0.00
9379	Ice DAO	https://coinmarketcap.com/currencies/ice-dao/	ICE	$0.29
9380	INFAM	https://coinmarketcap.com/currencies/infam/	INF	$0.28
9381	Yearnlab	https://coinmarketcap.com/currencies/yearnlab/	YLB	$0.00
9382	No Bull	https://coinmarketcap.com/currencies/no-bull/	NB	$0.00
9383	Meme Inu	https://coinmarketcap.com/currencies/meme-inu/	MEME	$0.00
9384	0xzx Token	https://coinmarketcap.com/currencies/0xzx-token/	0XZX	$0.00
9385	Metagochi	https://coinmarketcap.com/currencies/metagochi/	MGCHI	$0.00
9386	Crypto Indian Coin	https://coinmarketcap.com/currencies/crypto-indian-coin/	CIC	$0.00
9387	Etherprint	https://coinmarketcap.com/currencies/etherprint/	ETHP	$0.00
9388	Brig Finance	https://coinmarketcap.com/currencies/brig-finance/	BRIG	$0.02
9389	WormFi	https://coinmarketcap.com/currencies/wormfi/	WORM	$0.00
9390	MetaverseAir	https://coinmarketcap.com/currencies/metaverseair/	MVRS	$0.00
9391	Brainiac Farm	https://coinmarketcap.com/currencies/brainiac-farm/	BRAINS	$0.00
9392	ShibarmyZilla	https://coinmarketcap.com/currencies/shibarmyzilla/	SZILLA	$0.00
9393	Tremendous Coin	https://coinmarketcap.com/currencies/tremendouscoin/	TMDS	$0.07
9394	Eterland	https://coinmarketcap.com/currencies/eterland/	ETER	$0.00
9395	Akil Coin	https://coinmarketcap.com/currencies/akil-coin/	AKL	$0.00
9396	AltCoin	https://coinmarketcap.com/currencies/altcoin-token/	ALT	$0.00
9397	GigaChad	https://coinmarketcap.com/currencies/gigachad/	CHAD	$0.00
9398	Florida Man	https://coinmarketcap.com/currencies/florida-man/	FMAN	$0.00
9399	Dios Finance	https://coinmarketcap.com/currencies/dios-finance/	DIOS	$0.05
9400	GNAR TOKEN	https://coinmarketcap.com/currencies/gnar-token/	GNAR	$0.0000829
9401	HLTH Token	https://coinmarketcap.com/currencies/hlth-network/	HLTH	$0.003175
9402	APEX Protocol	https://coinmarketcap.com/currencies/apex-protocol/	APXP	$0.0001998
9403	DiamondQ	https://coinmarketcap.com/currencies/diamondq/	DIQ	$0.0001872
9404	NFTshootout	https://coinmarketcap.com/currencies/nftshootout/	SHOO	$0.0...08063
9405	WAMO	https://coinmarketcap.com/currencies/wamo/	WAMO	$0.0003874
9406	CobraGoose	https://coinmarketcap.com/currencies/cobragoose/	CBG	$0.00000001805
9407	Museo	https://coinmarketcap.com/currencies/museo/	MSE	$0.000008154
9408	Plunge	https://coinmarketcap.com/currencies/plunge/	PLG	$0.0002543
9409	Kori Inu	https://coinmarketcap.com/currencies/kori-inu/	KORI	$0.0000002534
9410	Shiba wolf	https://coinmarketcap.com/currencies/shiba-wolf/	SHIBAW	$0.00
9411	nUSD (HotBit)	https://coinmarketcap.com/currencies/nusd-token-hb/	nUSD	$0.00
9412	Doge Alliance	https://coinmarketcap.com/currencies/doge-alliance/	DOGEALLY	$0.00
9413	Scary Chain Capital v2	https://coinmarketcap.com/currencies/scary-chain-capital-new/	SCC	$0.00
9414	MetaMounts	https://coinmarketcap.com/currencies/metamounts/	MOUNT	$0.00
9415	The Starship Finance	https://coinmarketcap.com/currencies/the-starship-finance/	BIP	$0.00
9416	CoinField Coin	https://coinmarketcap.com/currencies/coinfield-coin/	CFC	$0.34
9417	BakerGuild	https://coinmarketcap.com/currencies/bakerguild/	BAKER	$0.00
9418	RagnarokDAO	https://coinmarketcap.com/currencies/ragnarokdao/	RGK	$0.00
9419	GameVerse	https://coinmarketcap.com/currencies/gameverse/	GMV	$0.00
9420	AnyPrinter	https://coinmarketcap.com/currencies/anyprinter/	ANYP	$0.00
9421	Senator Karen	https://coinmarketcap.com/currencies/senator-karen/	KAREN	$0.00
9422	Shib Generating	https://coinmarketcap.com/currencies/shib-generating/	SHG	$0.00
9423	Vortex DAO	https://coinmarketcap.com/currencies/vortex-dao/	SPACE	$0.02
9424	MONNFTS	https://coinmarketcap.com/currencies/monnfts/	MON	$0.00
9425	Filecoin Standard Full Hashrate	https://coinmarketcap.com/currencies/filecoin-standard-full-hashrate/	SFIL	$2.81
9426	METAFLIP	https://coinmarketcap.com/currencies/metaflip/	METAFLIP	$0.00
9427	Adene	https://coinmarketcap.com/currencies/adene/	ADEN	$0.00
9428	Baby Cheems Inu	https://coinmarketcap.com/currencies/baby-cheems-inu/	BCI	$0.00
9429	Master Floki	https://coinmarketcap.com/currencies/master-floki/	MASTER	$0.00
9430	EarnHub	https://coinmarketcap.com/currencies/earnhub/	EHB	$0.00
9431	TravGoPV	https://coinmarketcap.com/currencies/travgopv/	TPV	$0.00
9432	Xverse	https://coinmarketcap.com/currencies/xverse/	XVC	$0.00
9433	Ava Time	https://coinmarketcap.com/currencies/ava-time/	AVTIME	$0.00
9434	BofB	https://coinmarketcap.com/currencies/bofb/	BOFB	$0.00
9435	CryptoGuards	https://coinmarketcap.com/currencies/cryptoguards/	CGAR	$0.00
9436	Power Nodes	https://coinmarketcap.com/currencies/power-nodes/	POWER	$0.30
9437	CleanOcean (New)	https://coinmarketcap.com/currencies/cleanocean-new/	CLEAN	$0.00
9438	Node Squared	https://coinmarketcap.com/currencies/node-squared/	N2	$0.00
9439	INCOME	https://coinmarketcap.com/currencies/income/	INCOME	$0.00
9440	New Era	https://coinmarketcap.com/currencies/new-era/	NEC	$0.00
9441	Cryptowolf Finance	https://coinmarketcap.com/currencies/cryptowolf-finance/	$CWOLF	$0.01
9442	Hakuna Matata	https://coinmarketcap.com/currencies/hakuna-matata/	MATATA	$0.00
9443	LunaFox	https://coinmarketcap.com/currencies/lunafox/	LUFX	$0.00
9444	Comet Nodes	https://coinmarketcap.com/currencies/comet-nodes/	COMET	$0.00
9445	Escrowed Illuvium	https://coinmarketcap.com/currencies/escrowed-illuvium/	SILV	$0.01
9446	Snowbear	https://coinmarketcap.com/currencies/snowbear/	SBR	$0.51
9447	nOFTEN	https://coinmarketcap.com/currencies/noften/	NOF	$0.13
9448	Mickey	https://coinmarketcap.com/currencies/mickey/	MCK	$0.00
9449	Fluffy Inu	https://coinmarketcap.com/currencies/fluffy-inu/	FLUFFY	$0.00
9450	Invest Like Stakeborg Index	https://coinmarketcap.com/currencies/invest-like-stakeborg-index/	ILSI	$35.34
9451	ICEBERG	https://coinmarketcap.com/currencies/iceberg/	ICEBERG	$0.00
9452	Meta Apes	https://coinmarketcap.com/currencies/meta-apes/	MAPES	$0.00
9453	Clavis	https://coinmarketcap.com/currencies/clavis/	CLAVIS	$0.00
9454	InfinityGaming	https://coinmarketcap.com/currencies/infinitygaming/	PLAY	$0.00
9455	Blanc	https://coinmarketcap.com/currencies/blanc/	BLANC	$0.06
9456	Meta Decentraland	https://coinmarketcap.com/currencies/meta-decentraland/	MDL	$0.00
9457	Anons Network	https://coinmarketcap.com/currencies/anons-network/	ANONS	$0.00
9458	ParrotDao	https://coinmarketcap.com/currencies/parrotdao/	PARR	$0.00
9459	LaunchZone (LZP)	https://coinmarketcap.com/currencies/launchzone-lzp/	LZP	$0.00
9460	KunoichiX	https://coinmarketcap.com/currencies/kunoichix/	KUNO	$0.00
9461	Coinpad	https://coinmarketcap.com/currencies/coinpad/	CP	$0.00
9462	Solana Fren	https://coinmarketcap.com/currencies/solana-fren/	FREN	$0.00
9463	Poopsicle	https://coinmarketcap.com/currencies/poopsicle/	POOP	$0.00
9464	SpiritDAO Ghost	https://coinmarketcap.com/currencies/spiritdao-ghost/	GHOST	$0.00
9465	XX Platform	https://coinmarketcap.com/currencies/xx-platform/	XXP	$0.07
9466	Plant Exodus	https://coinmarketcap.com/currencies/plant-exodus/	PEXO	$0.02
9467	ICY MONEY	https://coinmarketcap.com/currencies/icy-money/	ICY	$0.00
9468	Talaria Inu	https://coinmarketcap.com/currencies/talaria-inu/	TALI	$0.00
9469	Frost	https://coinmarketcap.com/currencies/frost/	FROST	$0.03
9470	Higgs	https://coinmarketcap.com/currencies/higgs/	HIGGS	$0.00
9471	Bitcoin Classic	https://coinmarketcap.com/currencies/bitcoin-classic-bgh/	BGH	$0.26
9472	Incognito	https://coinmarketcap.com/currencies/incognito/	PRV	$0.37
9473	Coldbank	https://coinmarketcap.com/currencies/coldbank/	COLD	$0.00
9474	Shiba Samurai	https://coinmarketcap.com/currencies/shiba-samurai/	SHIBURAI	$0.23
9475	Many Worlds Token	https://coinmarketcap.com/currencies/many-worlds-token/	MANY	$0.00
9476	Earnfinex	https://coinmarketcap.com/currencies/earnfinex/	EFX	$0.01
9477	CryptoBike	https://coinmarketcap.com/currencies/cryptobike/	CB	$0.01
9478	SolanyxToken	https://coinmarketcap.com/currencies/solanyx/	SYXT	$0.00
9479	Krypto Kitty	https://coinmarketcap.com/currencies/krypto-kitty/	KTY	$0.00
9480	Revoluzion	https://coinmarketcap.com/currencies/revoluzion/	RVZ	$0.00
9481	Iotexchart	https://coinmarketcap.com/currencies/iotexchart/	IOTEXCHART	$0.00
9482	VOYCE TOKEN	https://coinmarketcap.com/currencies/voyce-token/	VOYCE	$0.00
9483	FTMlaunch	https://coinmarketcap.com/currencies/ftmlaunch/	FTML	$0.00
9484	Apes Token	https://coinmarketcap.com/currencies/apes-token/	APES	$0.00
9485	Binary Cat	https://coinmarketcap.com/currencies/binary-cat/	KITTY	$0.00
9486	NinjaFloki	https://coinmarketcap.com/currencies/ninjafloki/	NJF	$0.00
9487	Plebe Gaming	https://coinmarketcap.com/currencies/plebe-gaming/	PLEB	$0.00
9488	Solid Protocol	https://coinmarketcap.com/currencies/solid-protocol/	SOLID	$0.00
9489	Traverse	https://coinmarketcap.com/currencies/traverse/	VERSE	$0.00
9490	MetaSpace	https://coinmarketcap.com/currencies/metaspace/	MSPACE	$0.00
9491	Fisher Vs Pirate	https://coinmarketcap.com/currencies/fisher-vs-pirate/	FVP	$0.00
9492	PYE	https://coinmarketcap.com/currencies/pye/	PYE	$0.00
9493	Age Of Knights	https://coinmarketcap.com/currencies/age-of-knights/	GEM	$0.01
9494	Capybara	https://coinmarketcap.com/currencies/capybara/	CAPY	$0.00
9495	FlameMetaverse	https://coinmarketcap.com/currencies/flamemetaverse/	FMV	$0.00
9496	Coinsale	https://coinmarketcap.com/currencies/coinsale/	CSF	$0.04
9497	MoneyShow	https://coinmarketcap.com/currencies/moneyshow/	MYS	$0.00
9498	FlexQ	https://coinmarketcap.com/currencies/flexq/	FLQ	$0.00
9499	Chum Coin	https://coinmarketcap.com/currencies/chum-coin/	CHUM	$0.00
9500	DECENT Database	https://coinmarketcap.com/currencies/decent-database/	DECENT	$0.0...02262
9501	strong bull	https://coinmarketcap.com/currencies/strong-bull/	BULL	$0.0002897
9502	PirateDAO	https://coinmarketcap.com/currencies/piratedao/	JOLLY	$0.1307
9503	Exotix	https://coinmarketcap.com/currencies/exotix/	EXOTIX	$0.0...08514
9504	New Year Resolution	https://coinmarketcap.com/currencies/new-year-resolution/	NYR	$0.0000002011
9505	CACTUS	https://coinmarketcap.com/currencies/cactus/	CACTUS	$0.0...01014
9506	Pavia	https://coinmarketcap.com/currencies/pavia/	PAVIA	$0.01547
9507	X	https://coinmarketcap.com/currencies/x/	X	$0.0002592
9508	Nyx Token	https://coinmarketcap.com/currencies/nyx-token/	NYXT	$0.0...05492
9509	Digifit	https://coinmarketcap.com/currencies/digifit/	DGI	$0.00007387
9510	The Mask	https://coinmarketcap.com/currencies/the-mask/	DMASK	$0.00
9511	DogeVille	https://coinmarketcap.com/currencies/dogeville/	DVILLE	$0.00
9512	The Silent Sea	https://coinmarketcap.com/currencies/the-silent-sea/	TSSEA	$0.00
9513	SeanceCircle	https://coinmarketcap.com/currencies/seancecircle/	SEANCE	$0.00
9514	Whale Loans	https://coinmarketcap.com/currencies/humpback/	HUMP	$0.01
9515	SatoshiCrypto	https://coinmarketcap.com/currencies/satoshicrypto/	SATO	$0.00
9516	Terbo Game Coin	https://coinmarketcap.com/currencies/terbo-game-coin/	TGC	$0.00
9517	OUSE Token	https://coinmarketcap.com/currencies/ouse-token/	OUSE	$0.00
9518	Milk and Butter	https://coinmarketcap.com/currencies/milk-and-butter/	MB	$0.00
9519	BabylonDAO	https://coinmarketcap.com/currencies/babylondao/	BBY	$19.88
9520	FANTOM ETHPrinter	https://coinmarketcap.com/currencies/fantom-ethprinter/	FETHP	$0.00
9521	Kiki	https://coinmarketcap.com/currencies/kiki/	KIKI	$0.00
9522	TombPrinter	https://coinmarketcap.com/currencies/tombprinter/	TOMBP	$0.00
9523	Chip	https://coinmarketcap.com/currencies/chip-shambala/	CHIP	$0.00
9524	Solfire Protocol	https://coinmarketcap.com/currencies/solfire-protocol/	FIRE	$0.00
9525	AscentPad	https://coinmarketcap.com/currencies/ascentpad/	ASP	$0.01
9526	Phonon DAO	https://coinmarketcap.com/currencies/phonon-dao/	PHONON	$0.00
9527	Emocoin	https://coinmarketcap.com/currencies/emocoin/	EMO	$0.01
9528	2omb Finance	https://coinmarketcap.com/currencies/2omb-finance/	2OMB	$0.01
9529	2SHARE	https://coinmarketcap.com/currencies/2share/	2SHARES	$2.64
9530	Meta Capital	https://coinmarketcap.com/currencies/meta-capital/	MCAP	$0.00
9531	Frog	https://coinmarketcap.com/currencies/frog-token/	FROG	$0.00
9532	BullDog Coin	https://coinmarketcap.com/currencies/bulldog-coin/	BULLDOG	$0.00
9533	Swirl	https://coinmarketcap.com/currencies/swirl/	SWIRL	$0.00
9534	Aelin	https://coinmarketcap.com/currencies/aelin/	AELIN	$1614.33
9535	Island Girl	https://coinmarketcap.com/currencies/island-girl/	IGIRL	$0.00
9536	BAHA	https://coinmarketcap.com/currencies/baha/	BA	$0.00
9537	WATCHMEN	https://coinmarketcap.com/currencies/watchmen/	WTM	$0.00
9538	Lido Bonded LUNA	https://coinmarketcap.com/currencies/bonded-luna/	bLUNA	$0.00
9539	Metaverse Capital	https://coinmarketcap.com/currencies/metaverse-capital/	MVC	$0.00
9540	StakHolders	https://coinmarketcap.com/currencies/stakholders/	SH	$0.00
9541	BEAGLE INU	https://coinmarketcap.com/currencies/beagle-inu/	BEAGLE	$0.00
9542	Sierra	https://coinmarketcap.com/currencies/sierra-dao/	SRA	$0.00
9543	Ghost Inu	https://coinmarketcap.com/currencies/ghost-inu/	GHOST	$0.00
9544	Quantum	https://coinmarketcap.com/currencies/quantum-tech/	QUA	$6.06
9545	PSY Coin	https://coinmarketcap.com/currencies/psy-coin/	PSY	$0.00
9546	Benzene	https://coinmarketcap.com/currencies/benzene/	BZN	$0.27
9547	DP Token	https://coinmarketcap.com/currencies/dp-token/	DPT	$0.00
9548	SAFE TOKEN	https://coinmarketcap.com/currencies/safe-token/	SAFE	$0.03
9549	Safemoon Zilla	https://coinmarketcap.com/currencies/safemoon-zilla/	SFZ	$0.00
9550	Devil Finance	https://coinmarketcap.com/currencies/devil-finance/	DEVIL	$0.00
9551	AnnihilationCE	https://coinmarketcap.com/currencies/annihilationce/	ANCE	$0.00
9552	Creditum	https://coinmarketcap.com/currencies/creditum/	CREDIT	$0.03
9553	New Earth Order Money	https://coinmarketcap.com/currencies/new-earth-order-money/	NEOM	$15.47
9554	Node Cubed	https://coinmarketcap.com/currencies/node-cubed/	N3	$0.00
9555	Kols Offering Token	https://coinmarketcap.com/currencies/kols-offering-token/	KOT	$0.02
9556	Baby Panda	https://coinmarketcap.com/currencies/baby-panda/	BPANDA	$0.00
9557	Dream	https://coinmarketcap.com/currencies/dream/	$DREAM	$0.11
9558	VyFinance	https://coinmarketcap.com/currencies/vyfinance/	VYFI	$0.26
9559	Waterfall Finance	https://coinmarketcap.com/currencies/waterfall-finance/	WATERFALL	$0.04
9560	Universal Pickle	https://coinmarketcap.com/currencies/universal-pickle/	UPL	$0.00
9561	Meteor Remnant Essence	https://coinmarketcap.com/currencies/knight-war-the-holy-trio/	MRE	$0.00
9562	Woof Token	https://coinmarketcap.com/currencies/woof-token-2/	WOOF	$0.00
9563	Nobo Finance	https://coinmarketcap.com/currencies/nobo-finance/	NOBF	$0.00
9564	Diabolo	https://coinmarketcap.com/currencies/diabolo/	DCASH	$0.02
9565	Dark Planet	https://coinmarketcap.com/currencies/dark-planet/	DP	$0.01
9566	Land Of Realms	https://coinmarketcap.com/currencies/land-of-realms/	LOR	$0.00
9567	HakuSwap	https://coinmarketcap.com/currencies/hakuswap/	HAKU	$0.01
9568	Shikage	https://coinmarketcap.com/currencies/shikage/	SHKG	$0.00
9569	Ferret	https://coinmarketcap.com/currencies/ferret/	FRT	$0.00
9570	BleuFi	https://coinmarketcap.com/currencies/bluefi/	BLEU	$0.00
9571	InFi	https://coinmarketcap.com/currencies/infi/	8FI	$0.00
9572	DNA Dollar	https://coinmarketcap.com/currencies/dna-dollar/	DNA	$0.01
9573	Kandyland DAO	https://coinmarketcap.com/currencies/kandy/	KANDY	$0.00
9574	UMetaWorld	https://coinmarketcap.com/currencies/umetaworld/	UMW	$0.02
9575	Pallas Finance	https://coinmarketcap.com/currencies/pallas-finance/	PALLAS	$0.00
9576	KAPEX Cryptocurrency Token	https://coinmarketcap.com/currencies/kapex-cryptocurrency-token/	KAPEX	$0.00
9577	Coinfresh	https://coinmarketcap.com/currencies/coinfresh/	CFRESH	$0.00
9578	Cosmic Ape Coin	https://coinmarketcap.com/currencies/cosmic-ape-coin/	CAC	$0.00
9579	Dignity Gold	https://coinmarketcap.com/currencies/dignity-gold/	DIGAU	$4.76
9580	Fossil	https://coinmarketcap.com/currencies/fossil/	FOSSIL	$0.00
9581	Poseidon Token	https://coinmarketcap.com/currencies/poseidon-token/	POS	$0.00
9582	Anortis	https://coinmarketcap.com/currencies/anortis/	ANORTIS	$0.00
9583	Mini Metis	https://coinmarketcap.com/currencies/mini-metis/	MINIME	$0.00
9584	Fimi Market Inc.	https://coinmarketcap.com/currencies/fimi-market-inc/	FIMI	$0.01
9585	Yinbi	https://coinmarketcap.com/currencies/yinbi/	YINBI	$0.00
9586	Fractionalized SMB-2367	https://coinmarketcap.com/currencies/fractionalized-smb-2367/	DAOJONES	$1.72
9587	ETHP	https://coinmarketcap.com/currencies/ethp/	ETHP	$0.00
9588	MegaBitcoin	https://coinmarketcap.com/currencies/megabitcoin/	MBC	$0.00
9589	Keiko	https://coinmarketcap.com/currencies/keiko/	KEIKO	$0.00
9590	Gbox	https://coinmarketcap.com/currencies/gbox/	GBOX	$0.00
9591	DiversiFi	https://coinmarketcap.com/currencies/diversifi/	DFI	$0.00
9592	STREAMER	https://coinmarketcap.com/currencies/streamer/	STREAMER	$0.00
9593	Solootbox DAO	https://coinmarketcap.com/currencies/solootbox-dao/	BOX	$0.00
9594	Fraktionalized THUG 2856	https://coinmarketcap.com/currencies/fraktionalized-thug-2856/	THUG	$0.09
9595	Tiger Coin	https://coinmarketcap.com/currencies/tiger-coin/	TIGER	$0.00
9596	Mistel Finance	https://coinmarketcap.com/currencies/mistel-finance/	MISTEL	$0.00
9597	Moebius	https://coinmarketcap.com/currencies/moebius/	MOBI	$0.00
9598	Vitall Markets	https://coinmarketcap.com/currencies/vitall-markets/	VITAL	$0.00
9599	Crypto Champ	https://coinmarketcap.com/currencies/champ-eth/	CHMP	$0.00
9600	Gomb	https://coinmarketcap.com/currencies/gomb/	GOMB	$0.0...02272
9601	METABULLRAGE	https://coinmarketcap.com/currencies/metabullrage/	BERAGE	$0.000006879
9602	Aada Finance	https://coinmarketcap.com/currencies/aada-finance/	AADA	$0.4489
9603	GombShare	https://coinmarketcap.com/currencies/gombshare/	GSHARE	$0.196
9604	Spectra	https://coinmarketcap.com/currencies/spectra/	SPC	$0.0001563
9605	Fantom Frens	https://coinmarketcap.com/currencies/fantom-frens/	FFS	$0.000005094
9606	Mini Tiger	https://coinmarketcap.com/currencies/minitiger/	MINITIGER	$0.0...07072
9607	MonsterQuest	https://coinmarketcap.com/currencies/monsterquest/	MQST	$0.000929
9608	MetaPlanet	https://coinmarketcap.com/currencies/metaplanet/	MPL	$0.000008866
9609	PHIT	https://coinmarketcap.com/currencies/phit/	PHIT	$0.0003083
9610	TMETA	https://coinmarketcap.com/currencies/tmeta/	TMT	$0.00
9611	Paw V2	https://coinmarketcap.com/currencies/paw-v2/	PAW	$0.00
9612	Lucid Lands V2	https://coinmarketcap.com/currencies/lucid-lands-v2/	LLG	$0.00
9613	CryptoTrains	https://coinmarketcap.com/currencies/cryptotrains/	CTRAIN	$0.00
9614	UXD Stablecoin	https://coinmarketcap.com/currencies/uxd-stablecoin/	UXD	$1.01
9615	Persia	https://coinmarketcap.com/currencies/persia/	PERSIA	$2.38
9616	MonkeDAO	https://coinmarketcap.com/currencies/monkedao/	DAOSOL	$33.55
9617	Metadogeswap	https://coinmarketcap.com/currencies/metadogeswap/	MDS	$0.00
9618	SAVEBEE FARM HONEYCOMB	https://coinmarketcap.com/currencies/savebee-farm-honeycomb/	HC	$0.00
9619	Yield Hunt	https://coinmarketcap.com/currencies/yield-hunt/	GEM	$0.00
9620	LaCucina	https://coinmarketcap.com/currencies/lacucina/	LAC	$0.02
9621	Vivaion	https://coinmarketcap.com/currencies/vivaion/	VIVAION	$0.04
9622	Nemesis Wealth Projects BSC	https://coinmarketcap.com/currencies/nemesis-wealth-projects-bsc/	NMS	$0.00
9623	Moneyrain Finance	https://coinmarketcap.com/currencies/moneyrain-finance/	MONEYRAIN	$1.25
9624	Eagle Token	https://coinmarketcap.com/currencies/eagle-token/	EAGLE	$0.00
9625	Rocket Finance	https://coinmarketcap.com/currencies/rocket-finance/	ROCKET	$0.00
9626	Exponential Capital	https://coinmarketcap.com/currencies/exponential-capital/	EXPO	$0.00
9627	Wordl DeFi	https://coinmarketcap.com/currencies/wordl-defi/	WORDL	$0.00
9628	PhotonSwap	https://coinmarketcap.com/currencies/photonswap/	PHOTON	$0.00
9629	Bankers Dream	https://coinmarketcap.com/currencies/bankers-dream/	BANK$	$0.00
9630	McDoge	https://coinmarketcap.com/currencies/mcdoge/	MCDOGE	$0.00
9631	3OMB Token	https://coinmarketcap.com/currencies/30mb-token/	3OMB	$0.00
9632	3Share	https://coinmarketcap.com/currencies/3shares/	3SHARE	$1.52
9633	NoahArk	https://coinmarketcap.com/currencies/noahark/	NRK	$0.87
9634	DeFi Holdings	https://coinmarketcap.com/currencies/defi-holdings/	DHOLD	$0.00
9635	Ouranos	https://coinmarketcap.com/currencies/ouranos/	OUR	$0.00
9636	TalentCoin	https://coinmarketcap.com/currencies/talentcoin/	TLNT	$0.00
9637	DIKE TOKEN	https://coinmarketcap.com/currencies/dike-token/	DIKE	$0.00
9638	King Dog Inu	https://coinmarketcap.com/currencies/king-dog-inu/	KINGDOG	$0.00
9639	Head Football	https://coinmarketcap.com/currencies/head-football/	HEAD	$0.00
9640	CasinoXMetaverse	https://coinmarketcap.com/currencies/casinoxmetaverse/	$CASIO	$0.00
9641	AnetaBTC	https://coinmarketcap.com/currencies/anetabtc/	cNETA	$0.02
9642	Grape	https://coinmarketcap.com/currencies/grapetoken/	GRAPE	$0.00
9643	MidasDAO (New)	https://coinmarketcap.com/currencies/midasdao-new/	CROWN	$0.32
9644	Floki Rocket	https://coinmarketcap.com/currencies/flokirocket-token/	RKF	$0.00
9645	ChampInu	https://coinmarketcap.com/currencies/champinu/	CHAMPINU	$0.00
9646	Boost2	https://coinmarketcap.com/currencies/boost2/	BOOST2	$0.12
9647	Royal Chain	https://coinmarketcap.com/currencies/royal-chain/	ROYAL	$0.00
9648	XAEA-Xii Token	https://coinmarketcap.com/currencies/xaea-xii-token/	XAEA-Xii	$0.00
9649	Food Farmer Finance	https://coinmarketcap.com/currencies/food-farmer-finance/	FFF	$0.00
9650	Krypto Pets	https://coinmarketcap.com/currencies/krypto-pets/	KPETS	$0.00
9651	Snowtomb LOT	https://coinmarketcap.com/currencies/snowtomb-lot/	SLOT	$0.21
9652	Clexchain	https://coinmarketcap.com/currencies/clexchain/	CLEX	$0.00
9653	GrimaceCoinErc.com	https://coinmarketcap.com/currencies/grimacecoin-erc/	GRIM	$0.00
9654	HUSH	https://coinmarketcap.com/currencies/hush-network/	HUSH	$0.00
9655	ASIX Token	https://coinmarketcap.com/currencies/asix-token/	ASIX	$0.00
9656	WorldPlus	https://coinmarketcap.com/currencies/worldplus/	WPL	$0.00
9657	Liquid Swap	https://coinmarketcap.com/currencies/liquidswap/	LQD	$0.00
9658	Virtual Gamer	https://coinmarketcap.com/currencies/virtual-gamer/	VGM	$0.00
9659	Vive La Bouje	https://coinmarketcap.com/currencies/vive-la-bouje/	VIVE	$0.00
9660	Cyberclassic	https://coinmarketcap.com/currencies/cyberclassic/	CLASS	$0.00
9661	Pledge Finance	https://coinmarketcap.com/currencies/master-pledger-token/	MPLGR	$0.20
9662	Shibtama	https://coinmarketcap.com/currencies/shibtama/	SHIBTAMA	$0.00
9663	babyDogeKing	https://coinmarketcap.com/currencies/babydogeking/	babyDogeKing	$0.00
9664	Lilith Swap	https://coinmarketcap.com/currencies/lilith-swap/	LLTH	$0.04
9665	Cool Monke Banana	https://coinmarketcap.com/currencies/cool-monke-banana/	CMB	$0.00
9666	Kingtama	https://coinmarketcap.com/currencies/kingtama/	KINGTAMA	$0.00
9667	WEB3Land	https://coinmarketcap.com/currencies/web3land/	WEB3	$0.00
9668	North Pole	https://coinmarketcap.com/currencies/north-pole/	NORTH	$0.00
9669	Codi Finance	https://coinmarketcap.com/currencies/codi-finance/	CODI	$0.00
9670	KishuTama	https://coinmarketcap.com/currencies/kishutama/	KISHUTAMA	$0.00
9671	EarthByt	https://coinmarketcap.com/currencies/earthbyt/	EBYT	$0.00
9672	Knights of Fantom	https://coinmarketcap.com/currencies/knights-of-fantom/	KNIGHTS	$0.46
9673	Shinjurai	https://coinmarketcap.com/currencies/shinjurai/	SHINJURAI	$0.00
9674	MinerJoe	https://coinmarketcap.com/currencies/minerjoe-gold/	GOLD	$0.01
9675	Elongrab (NEW)	https://coinmarketcap.com/currencies/elongrab-new/	ELONGRAB	$0.00
9676	ZEUS10000 (NEW)	https://coinmarketcap.com/currencies/zeus10000-new/	ZEUS	$24.74
9677	Londex	https://coinmarketcap.com/currencies/londex-token/	LDX	$0.00
9678	Cryptonite	https://coinmarketcap.com/currencies/cryptonite-token/	CTNT	$0.00
9679	Serenity	https://coinmarketcap.com/currencies/serenity-token/	SEREN	$0.00
9680	Microzillas	https://coinmarketcap.com/currencies/microzillas/	MIZL	$0.00
9681	Dogs Token	https://coinmarketcap.com/currencies/dogs-token/	DOGS	$43.82
9682	Planet	https://coinmarketcap.com/currencies/planet-gamma/	GAMMA	$0.09
9683	Morie INU	https://coinmarketcap.com/currencies/morie-inu/	MORIE	$0.00
9684	pFTM	https://coinmarketcap.com/currencies/pftm/	PFTM	$0.11
9685	SHUMO	https://coinmarketcap.com/currencies/shumo/	SHUMO	$0.00
9686	SafeMoonomics	https://coinmarketcap.com/currencies/safemoonomics/	SAFEMOONOMICS	$0.00
9687	NFTGamingStars	https://coinmarketcap.com/currencies/nftgamingstars/	GS1	$0.00
9688	METAMEN	https://coinmarketcap.com/currencies/metamen/	MTM	$0.00
9689	Wrapped TurtleCoin	https://coinmarketcap.com/currencies/wrapped-turtlecoin/	WTRTL	$0.51
9690	CryptoRunner	https://coinmarketcap.com/currencies/cryptorunner/	RUN	$0.00
9691	Rich DAO	https://coinmarketcap.com/currencies/rich-dao/	RICH	$0.97
9692	MetaAir	https://coinmarketcap.com/currencies/metaair/	MAIR	$0.00
9693	TeddyDog	https://coinmarketcap.com/currencies/teddydog/	TDG	$0.00
9694	Battle Inu	https://coinmarketcap.com/currencies/battle-inu/	BINU	$0.00
9695	Celestial Unity	https://coinmarketcap.com/currencies/celestial-unity/	CU	$0.00
9696	Zilla Shares	https://coinmarketcap.com/currencies/zilla-shares/	ZSHARE	$0.66
9697	Starnodes	https://coinmarketcap.com/currencies/starnodes/	STRZ	$0.00
9698	Zilla Finance	https://coinmarketcap.com/currencies/zilla-finance/	ZILLA	$0.01
9699	MetaCelo	https://coinmarketcap.com/currencies/metacelo/	CMETA	$0.00
9700	CryptoGangsters	https://coinmarketcap.com/currencies/cryptogangsters/	CGANG	$0.001654
9701	Jurassic Token	https://coinmarketcap.com/currencies/jurassic-token/	JRSC	$0.00001664
9702	Penguin Karts	https://coinmarketcap.com/currencies/penguin-karts/	PGK	$0.00438
9703	GemMine	https://coinmarketcap.com/currencies/gemmine/	GEMMINE	$0.03348
9704	Space Crypto (SPE)	https://coinmarketcap.com/currencies/space-crypto-spe/	SPE	$0.001053
9705	KVerse Society	https://coinmarketcap.com/currencies/kverse-society/	KVERSE	$0.0...06903
9706	Draco.Finance	https://coinmarketcap.com/currencies/draco-finance/	DRACO	$0.003727
9707	Partial Share	https://coinmarketcap.com/currencies/partial-share/	PSHARE	$0.04212
9708	Solhero Finance	https://coinmarketcap.com/currencies/solhero-finance/	HERO	$0.0002616
9709	For Meta World	https://coinmarketcap.com/currencies/for-meta-world/	4MW	$0.00000148
9710	Partial	https://coinmarketcap.com/currencies/partial/	PARTIAL	$0.00
9711	EDAC	https://coinmarketcap.com/currencies/edac/	EDAC	$0.01
9712	THTF	https://coinmarketcap.com/currencies/thtf/	THTF	$0.00
9713	CargoLink	https://coinmarketcap.com/currencies/cargolink/	CLX	$0.01
9714	Musk Ito	https://coinmarketcap.com/currencies/musk-ito/	MITO	$0.00
9715	SkyLands	https://coinmarketcap.com/currencies/skylands/	SKYLANDS	$0.00
9716	HNK Orijent 1919	https://coinmarketcap.com/currencies/hnk-orijent-1919/	ORI	$0.06
9717	THIS	https://coinmarketcap.com/currencies/this/	THIS	$0.00
9718	Sins Finance	https://coinmarketcap.com/currencies/sins-finance/	SIN	$0.01
9719	Multi Strategies Capital	https://coinmarketcap.com/currencies/multi-strategies-capital/	MSC	$0.00
9720	Zilla Shares 2.0	https://coinmarketcap.com/currencies/zilla-shares-2-0/	ZSHARE	$0.02
9721	VeleroDAO	https://coinmarketcap.com/currencies/velerodao/	VDGT	$0.00
9722	MeganSwap	https://coinmarketcap.com/currencies/meganswap/	MEGAN	$0.00
9723	BNBBack	https://coinmarketcap.com/currencies/bnbback/	BNBBACK	$0.00
9724	ASHARE	https://coinmarketcap.com/currencies/ashare/	ASHARE	$0.03
9725	FDoge Finance	https://coinmarketcap.com/currencies/fdoge-finance/	FDOGE	$0.00
9726	Booby Trap	https://coinmarketcap.com/currencies/booby-trap/	BBT	$0.00
9727	Kaizen Inu	https://coinmarketcap.com/currencies/kaizen-inu/	KZN	$0.00
9728	Candle	https://coinmarketcap.com/currencies/candle/	CNDL	$0.00
9729	Caesar Finance	https://coinmarketcap.com/currencies/caesar-finance/	CAESAR	$0.00
9730	Bunny Girl Universe	https://coinmarketcap.com/currencies/bunny-girl-universe/	BNGT	$0.00
9731	METALUNA	https://coinmarketcap.com/currencies/metaluna/	METALUNA	$0.00
9732	Bitazza	https://coinmarketcap.com/currencies/bitazza/	BTZ	$0.07
9733	Voltage Finance	https://coinmarketcap.com/currencies/voltage-finance/	VOLT	$0.00
9734	Covid Cutter	https://coinmarketcap.com/currencies/covid-cutter/	CVC	$0.00
9735	TNNS	https://coinmarketcap.com/currencies/tnns/	TNNS	$0.01
9736	CoolGas	https://coinmarketcap.com/currencies/coolgas/	COOGA	$0.00
9737	Volta	https://coinmarketcap.com/currencies/volta/	VOLTA	$0.46
9738	Catcoin	https://coinmarketcap.com/currencies/cat-coin/	CATS	$0.00
9739	pDollar	https://coinmarketcap.com/currencies/pdollar/	PDO	$0.02
9740	pDollar Share	https://coinmarketcap.com/currencies/pdollar-share/	SPDO	$0.03
9741	Monkey Token V2	https://coinmarketcap.com/currencies/monkey-token-v2/	MBY	$0.00
9742	ValleySwap	https://coinmarketcap.com/currencies/valleyswap/	VS	$0.00
9743	The Last War	https://coinmarketcap.com/currencies/the-last-war/	TLW	$0.00
9744	TIA	https://coinmarketcap.com/currencies/tia/	TIA	$0.01
9745	BSCBAY	https://coinmarketcap.com/currencies/bscbay/	BSCB	$0.00
9746	Rubidium	https://coinmarketcap.com/currencies/rubidium/	RBD	$0.05
9747	Shield Protocol	https://coinmarketcap.com/currencies/shield-protocol-token/	SHIELD	$0.00
9748	KuDoge	https://coinmarketcap.com/currencies/kudoge/	KUDO	$0.00
9749	Doge X	https://coinmarketcap.com/currencies/doge-x/	DOGEX	$0.00
9750	Snow Burn	https://coinmarketcap.com/currencies/snow-burn/	BURN	$0.00
9751	Farm Skylines Token	https://coinmarketcap.com/currencies/farm-skylines-token/	FSK	$0.00
9752	FaniTrade	https://coinmarketcap.com/currencies/fanitrade/	FANI	$0.07
9753	Shibgeki	https://coinmarketcap.com/currencies/shibgeki/	SHIBGEKI	$0.00
9754	Yasha Dao	https://coinmarketcap.com/currencies/yasha-dao/	YASHA	$0.00
9755	Freemoon	https://coinmarketcap.com/currencies/freemoon-token/	FREEMOON	$0.00
9756	CHEEBS	https://coinmarketcap.com/currencies/cheebs/	CHEE	$0.00
9757	Relbit	https://coinmarketcap.com/currencies/relbit/	RLB	$0.00
9758	Oxy-Fi	https://coinmarketcap.com/currencies/oxy-fi/	OXY	$0.04
9759	The Xenobots Project	https://coinmarketcap.com/currencies/the-xenobots-project/	XENO	$0.00
9760	Bastille De La Bouje	https://coinmarketcap.com/currencies/bastille-de-la-bouje/	BASTILLE	$0.00
9761	ElementX	https://coinmarketcap.com/currencies/elementx/	FIRE	$0.00
9762	Fantasy Girl	https://coinmarketcap.com/currencies/fantasy-girl-v2/	FMEV2	$0.00
9763	MiniVerse Dollar	https://coinmarketcap.com/currencies/miniverse-dollar/	MVDOLLAR	$0.13
9764	Miniverse Share	https://coinmarketcap.com/currencies/miniverse-share/	MSHARE	$2.80
9765	Cyn-C	https://coinmarketcap.com/currencies/cyn-c/	CYNC	$0.00
9766	Kevin	https://coinmarketcap.com/currencies/kevin/	KEVIN	$0.00
9767	Fantasm FSM	https://coinmarketcap.com/currencies/fantasm-fsm/	FSM	$0.00
9768	Fantasm XFTM	https://coinmarketcap.com/currencies/fantasm-xftm/	XFTM	$0.00
9769	Hearts	https://coinmarketcap.com/currencies/hearts/	HEART	$0.01
9770	DShares	https://coinmarketcap.com/currencies/dshares/	DSHARE	$1.33
9771	Hirokage	https://coinmarketcap.com/currencies/hirokage/	HIRO	$0.00
9772	5table Finance	https://coinmarketcap.com/currencies/5table-finance/	5TABLE	$0.03
9773	BaksDAO	https://coinmarketcap.com/currencies/baksdao/	BAKS	$0.18
9774	Local Terra	https://coinmarketcap.com/currencies/local-terra/	LOCAL	$0.02
9775	Code 7	https://coinmarketcap.com/currencies/code-7/	7SHARE	$0.06
9776	Food Bank	https://coinmarketcap.com/currencies/food-bank/	FOOD	$0.00
9777	Degen Finance	https://coinmarketcap.com/currencies/degen-finance/	DEGEN	$0.03
9778	Sheeba Inu	https://coinmarketcap.com/currencies/sheeba-inu/	SHEEB	$0.00
9779	CyborgShiba	https://coinmarketcap.com/currencies/cyborgshiba/	CBS	$0.00
9780	Cornatto	https://coinmarketcap.com/currencies/cornatto/	CNC	$0.01
9781	METAROBOX	https://coinmarketcap.com/currencies/metarobox/	RBX	$0.00
9782	Dog Coin[New]	https://coinmarketcap.com/currencies/dog-coin-new/	DOG	$0.00
9783	EURONIN	https://coinmarketcap.com/currencies/euronin/	EURONIN	$0.00
9784	Pentagon Finance	https://coinmarketcap.com/currencies/pentagon-finance/	PENT	$0.02
9785	friesDAO	https://coinmarketcap.com/currencies/friesdao/	FRIES	$0.02
9786	Ideamarket	https://coinmarketcap.com/currencies/ideamarket/	IMO	$0.02
9787	Covid Doge	https://coinmarketcap.com/currencies/covid-doge/	COVID DOGE	$0.00
9788	Kingdoms	https://coinmarketcap.com/currencies/kingdoms-pawn/	PAWN	$0.00
9789	Spurt	https://coinmarketcap.com/currencies/spurt/	SPURT	$0.12
9790	Metavault	https://coinmarketcap.com/currencies/metavault/	MVD	$2.60
9791	Pudgy Pups Club[new]	https://coinmarketcap.com/currencies/pudgy-pups-club-new/	PUPS	$0.00
9792	pSHARE	https://coinmarketcap.com/currencies/pshare/	PSHARE	$0.00
9793	Exp	https://coinmarketcap.com/currencies/exp/	EXP	$0.04
9794	Liqwid Finance	https://coinmarketcap.com/currencies/liqwid-finance/	LQ	$26.85
9795	Alpha Capital (New)	https://coinmarketcap.com/currencies/alpha-brain-capital-2/	ACAP	$0.00
9796	Minedrop	https://coinmarketcap.com/currencies/minedrop/	MIND	$0.12
9797	Metaversero	https://coinmarketcap.com/currencies/metaversero/	MVR	$0.03
9798	onPlanet	https://coinmarketcap.com/currencies/onplanet/	OP	$0.00
9799	Secretworld	https://coinmarketcap.com/currencies/secretworld-network/	SSD	$0.0000003254
9800	Utopia (utility Token)	https://coinmarketcap.com/currencies/utopia-utility-token/	UTO	$0.05256
9801	MetaGameSpace	https://coinmarketcap.com/currencies/metagamespace/	METAGS	$0.000002046
9802	MetAces	https://coinmarketcap.com/currencies/metaces/	ACES	$0.00001095
9803	SBER	https://coinmarketcap.com/currencies/sber/	SBER	$0.00001292
9804	.Alpha	https://coinmarketcap.com/currencies/alphatoken/	.ALPHA	$19.80
9805	Dr. Skull	https://coinmarketcap.com/currencies/dr-skull/	DRSL	$0.000004765
9806	Stoned Ape Crew Index	https://coinmarketcap.com/currencies/stoned-ape-crew-index/	SAC	$0.8347
9807	Boryoku Genesis Dragonz Index	https://coinmarketcap.com/currencies/boryoku-genesis-dragonz-index/	DRGNZ	$2.00
9808	Playground	https://coinmarketcap.com/currencies/playground/	PLAYA	$0.00006802
9809	ElasticSwap	https://coinmarketcap.com/currencies/elasticswap/	TIC	$5.06
9810	Argo	https://coinmarketcap.com/currencies/argo-2/	ARGO	$0.03
9811	MjackSwap	https://coinmarketcap.com/currencies/mjackswap/	MJACK	$0.00
9812	MintStarter	https://coinmarketcap.com/currencies/mintstarter/	MINT	$0.00
9813	Calvex	https://coinmarketcap.com/currencies/calvex/	CLVX	$0.00
9814	Frank Inu	https://coinmarketcap.com/currencies/frank-inu/	FRANK	$0.00
9815	Opsya Insurance	https://coinmarketcap.com/currencies/opsya-insurance/	OPSY	$0.01
9816	Hackerlabs DAO	https://coinmarketcap.com/currencies/hackerlabs-dao/	HLD	$0.00
9817	Unitech	https://coinmarketcap.com/currencies/unitech/	UTC	$0.86
9818	Fief Guild	https://coinmarketcap.com/currencies/fief-guild/	FIEF	$0.01
9819	Confetti	https://coinmarketcap.com/currencies/confetti/	CFTI	$0.00
9820	Snowcat DAO	https://coinmarketcap.com/currencies/snowcat-dao/	SCAT	$0.00
9821	Pups Milk	https://coinmarketcap.com/currencies/pups-milk/	Milk	$0.00
9822	BNBDeFi	https://coinmarketcap.com/currencies/bnbdefi/	$DEFI	$0.00
9823	OTO Protocol	https://coinmarketcap.com/currencies/oto-protocol/	OTO	$0.01
9824	BinaryDAO	https://coinmarketcap.com/currencies/binarydao/	BYTE	$0.20
9825	BiggerMINDS	https://coinmarketcap.com/currencies/biggerminds/	MIND	$0.00
9826	Monastery Finance	https://coinmarketcap.com/currencies/monastery-finance/	MONK	$0.30
9827	Nooft	https://coinmarketcap.com/currencies/nooft/	NOOFT	$0.00
9828	Horgi	https://coinmarketcap.com/currencies/horgi/	HORGI	$0.00
9829	CRYN	https://coinmarketcap.com/currencies/cryn/	CRYN	$9264.83
9830	Hamster Money	https://coinmarketcap.com/currencies/hamster-money/	HAM	$0.06
9831	Hamster Share	https://coinmarketcap.com/currencies/hamster-share/	HSHARE	$0.12
9832	Fantastic Protocol SNOWY Token	https://coinmarketcap.com/currencies/fantastic-protocol-snowy-token/	SNOWY	$0.00
9833	Fantastic Protocol Peg-AVAX (FAVAX) Token	https://coinmarketcap.com/currencies/fantastic-protocol-peg-avax-favax-token/	FAVAX	$15.60
9834	Myriad Social	https://coinmarketcap.com/currencies/myriad-social/	MYRIA	$0.00
9835	TiraVerse	https://coinmarketcap.com/currencies/tiraverse/	TVRS	$0.00
9836	Prism yLUNA	https://coinmarketcap.com/currencies/prism-yluna/	YLUNA	$0.01
9837	USD Velero Stablecoin	https://coinmarketcap.com/currencies/usdv/	USDV	$0.96
9838	Capital Aggregator Token	https://coinmarketcap.com/currencies/capital-aggregator-token-v2/	CAT+	$0.00
9839	USD Balance	https://coinmarketcap.com/currencies/usd-balance/	USDB	$1.00
9840	Hera Finance	https://coinmarketcap.com/currencies/hera-finance/	HERA	$0.16
9841	PayGo	https://coinmarketcap.com/currencies/paygo/	PAYGO	$0.00
9842	Treasure Token Finance	https://coinmarketcap.com/currencies/treasure-token-finance/	TREASURE	$0.00
9843	Smart Finance	https://coinmarketcap.com/currencies/smartnodes-finance/	SMRT	$0.95
9844	Tank Gold Token	https://coinmarketcap.com/currencies/tank-wars-zone-tgold/	TGOLD	$0.00
9845	Hippo Protocol	https://coinmarketcap.com/currencies/hippo-protocol/	HIPPO	$0.00
9846	GOSH Realm	https://coinmarketcap.com/currencies/gosh-realm/	GOSH	$0.19
9847	Honey Finance	https://coinmarketcap.com/currencies/honey-finance/	HONEY	$0.01
9848	Vitteey	https://coinmarketcap.com/currencies/vitteey/	VITY	$0.00
9849	MetaToll	https://coinmarketcap.com/currencies/metatoll/	TAX	$0.00
9850	Fantom Libero Financial	https://coinmarketcap.com/currencies/fantom-libero-financial/	FLIBERO	$0.00
9851	MetaContinental	https://coinmarketcap.com/currencies/metacontinental/	CON	$0.00
9852	Concave	https://coinmarketcap.com/currencies/concave/	CNV	$13.83
9853	Zonoswap	https://coinmarketcap.com/currencies/zonoswap-finance/	ZONO	$0.00
9854	BlackHoleDAO	https://coinmarketcap.com/currencies/blackholedao/	BHO	$0.00
9855	Shiba Hunter	https://coinmarketcap.com/currencies/shiba-hunter-falqom/	FALQOM	$0.00
9856	Zirve Coin	https://coinmarketcap.com/currencies/zirve-coin/	ZIRVE	$0.01
9857	Apex Predator	https://coinmarketcap.com/currencies/apex-predator/	APEX	$0.00
9858	Honey	https://coinmarketcap.com/currencies/fancybearsmetaverse-honey/	$HONEY	$0.01
9859	Assent Protocol	https://coinmarketcap.com/currencies/assent-protocol/	ASNT	$0.00
9860	Alibaba Tokenized Stock Zipmex	https://coinmarketcap.com/currencies/alibaba-tokenized-stock-zipmex/	BABA	$117.26
9861	Airbnb Tokenized Stock Zipmex	https://coinmarketcap.com/currencies/airbnb-tokenized-stock-zipmex/	ABNB	$92.15
9862	Twitter Tokenized Stock Zipmex	https://coinmarketcap.com/currencies/twitter-tokenized-stock-zipmex/	TWTR	$38.48
9863	Netflix Tokenized Stock Zipmex	https://coinmarketcap.com/currencies/netflix-tokenized-stock-zipmex/	NFLX	$181.30
9864	Facebook Tokenized Stock Zipmex	https://coinmarketcap.com/currencies/facebook-tokenized-stock-zipmex/	FB	$159.47
9865	Vesta Finance	https://coinmarketcap.com/currencies/vesta-finance/	VSTA	$0.13
9866	Leonidas	https://coinmarketcap.com/currencies/leonidas/	LEO	$0.01
9867	Aurora Finance	https://coinmarketcap.com/currencies/aurorafinance/	AURA	$0.00
9868	Peak Finance	https://coinmarketcap.com/currencies/peak-finance/	PEAK	$14.66
9869	LLEIDA ESPORTIU DAO	https://coinmarketcap.com/currencies/lleida-esportiu-dao/	LL	$0.28
9870	Swappi	https://coinmarketcap.com/currencies/swappi-dex/	PPI	$0.02
9871	DecentraWorld Ecosystem	https://coinmarketcap.com/currencies/decentraworld/	$DEWO	$0.00
9872	EVERFORK	https://coinmarketcap.com/currencies/everfork/	EVERF	$0.00
9873	Probably Nothing	https://coinmarketcap.com/currencies/probably-nothing-token/	NOTHING	$0.00
9874	PETWARS	https://coinmarketcap.com/currencies/petwars/	PWARS	$0.00
9875	Prometheus	https://coinmarketcap.com/currencies/prometheus-pro/	PRO	$0.24
9876	Nirvana NIRV	https://coinmarketcap.com/currencies/nirvana-nirv/	NIRV	$1.00
9877	Pragma	https://coinmarketcap.com/currencies/pragma/	PRAGMA	$0.00
9878	FidoMeta	https://coinmarketcap.com/currencies/fidometa/	FMC	$0.01
9879	Nuclear Bomb	https://coinmarketcap.com/currencies/nuclear-bomb/	NB	$0.06
9880	Hybrid	https://coinmarketcap.com/currencies/hybrid/	$HYBRID	$0.01
9881	Hummus	https://coinmarketcap.com/currencies/hummus/	HUM	$0.01
9882	Koisan	https://coinmarketcap.com/currencies/koisan/	KIC	$0.01
9883	Maneki Inu	https://coinmarketcap.com/currencies/maneki-inu/	MANEKI	$0.00
9884	Octus Bridge	https://coinmarketcap.com/currencies/octus-bridge/	BRIDGE	$3.52
9885	VIKTAMA	https://coinmarketcap.com/currencies/viktama/	VIK	$0.00
9886	Shiba's Wife	https://coinmarketcap.com/currencies/shibas-wife/	SHIBASWIFE	$0.00
9887	Virtual Ads	https://coinmarketcap.com/currencies/virtual-ads/	VADS	$0.00
9888	USN	https://coinmarketcap.com/currencies/usn/	USN	$1.00
9889	Primo DAO	https://coinmarketcap.com/currencies/primo-dao/	PRIMO	$0.00
9890	APPLECHAIN	https://coinmarketcap.com/currencies/applechain/	APPLE	$0.00
9891	Gojo Inu	https://coinmarketcap.com/currencies/gojo-inu/	GOJO	$0.00
9892	Grail	https://coinmarketcap.com/currencies/grail/	GRAIL	$0.23
9893	Dante Finance	https://coinmarketcap.com/currencies/dante-finance/	DANTE	$0.03
9894	H2OC	https://coinmarketcap.com/currencies/h2o/	H2OC	$1.13
9895	Tierra Meta	https://coinmarketcap.com/currencies/tierra-meta/	TRMT	$0.13
9896	iZUMi Bond USD	https://coinmarketcap.com/currencies/izumi-bond-usd/	IUSD	$0.99
9897	Lido On Kusama	https://coinmarketcap.com/currencies/lido-on-kusama/	stKSM	$46.37
9898	EAC	https://coinmarketcap.com/currencies/eac/	EAC	$1.99
9899	SOLDAO	https://coinmarketcap.com/currencies/soldao/	SOLDAO	$0.00003818
9900	TOKAMAK	https://coinmarketcap.com/currencies/tokamak/	TKMK	$0.0002725
9901	TABI	https://coinmarketcap.com/currencies/tabi/	TABI	$0.002857
9902	Falcon9	https://coinmarketcap.com/currencies/falcon9/	FALCON9	$0.0...02284
9903	Lifinity	https://coinmarketcap.com/currencies/lifinity/	LFNTY	$0.4742
9904	SafeDogeCoin V2	https://coinmarketcap.com/currencies/safedogecoin-v2/	SAFEDOGE	$0.0003681
9905	STIMA	https://coinmarketcap.com/currencies/stima/	STIMA	$1.02
9906	Kizo Inu	https://coinmarketcap.com/currencies/kizo-inu/	KIZO	$0.02568
9907	GalaxyPad	https://coinmarketcap.com/currencies/galaxypad/	GXPAD	$0.001491
9908	BCSSTAR	https://coinmarketcap.com/currencies/bcsstar/	BCSS	$0.0006582
9909	ZipSwap	https://coinmarketcap.com/currencies/zipswap/	ZIP	$0.02
9910	DigitalDollar	https://coinmarketcap.com/currencies/digitaldollar/	DUSD	$0.77
9911	Diviner	https://coinmarketcap.com/currencies/diviner/	DIV	$0.62
9912	Ribbit	https://coinmarketcap.com/currencies/ribbit/	RIBT	$0.01
9913	Exalt	https://coinmarketcap.com/currencies/exalt/	EXALT	$0.00
9914	Demy Games	https://coinmarketcap.com/currencies/demy-games/	DEMY	$0.00
9915	Snake Rinium	https://coinmarketcap.com/currencies/snake-rinium/	RIM	$0.00
9916	Aleph Finance	https://coinmarketcap.com/currencies/aleph-finance/	NALEPH	$2.57
9917	WOLF INU	https://coinmarketcap.com/currencies/wolf-inu/	WOLF	$0.00
9918	Moneta Digital	https://coinmarketcap.com/currencies/moneta-digital/	MMXN	$0.05
9919	LetCoinShop	https://coinmarketcap.com/currencies/letcoinshop/	LCS	$0.04
9920	Neuralink	https://coinmarketcap.com/currencies/neuralink/	NEURALINK	$0.00
9921	MUDRA	https://coinmarketcap.com/currencies/mudra/	MUDRA	$0.00
9922	X13 Finance	https://coinmarketcap.com/currencies/x13-finance/	X13	$0.01
9923	Asuna Hentai	https://coinmarketcap.com/currencies/asuna-hentai/	ASUNA	$0.00
9924	Nafstars	https://coinmarketcap.com/currencies/nafstars/	NSTARS	$0.04
9925	GymMov	https://coinmarketcap.com/currencies/gymmov/	GYM	$0.00
9926	Race.Top	https://coinmarketcap.com/currencies/race-top/	RACE	$0.00
9927	Chaotic Finance	https://coinmarketcap.com/currencies/chaotic-finance/	CHAOS	$0.01
9928	Yummi Universe	https://coinmarketcap.com/currencies/yummi-universe/	YUMMI	$0.00
9929	STEPINU	https://coinmarketcap.com/currencies/stepinu/	STEPI	$0.00
9930	GymMov Reward	https://coinmarketcap.com/currencies/gymmov-reward/	GMR	$0.00
9931	DarkOpera Finance	https://coinmarketcap.com/currencies/darkopera-finance/	DARKO	$0.08
9932	Gangster Legend	https://coinmarketcap.com/currencies/gangster-legend/	CASH	$0.01
9933	Dexpools	https://coinmarketcap.com/currencies/dexpools/	DXP	$0.10
9934	Hedge	https://coinmarketcap.com/currencies/hedge-hdg/	HDG	$1.17
9935	ValuableCoins	https://coinmarketcap.com/currencies/valuablecoins/	VC	$0.11
9936	Batasm Protocol BSM	https://coinmarketcap.com/currencies/batasm-protocol-bsm/	BSM	$0.01
9937	Batasm Protocol BFTM	https://coinmarketcap.com/currencies/batasm-protocol-bftm/	BFTM	$0.25
9938	Tangible	https://coinmarketcap.com/currencies/tangible/	TNGBL	$12.05
9939	Bridgesplit Brand Index	https://coinmarketcap.com/currencies/bridgesplit-brand-index/	BBI	$0.08
9940	HOME TO EARN	https://coinmarketcap.com/currencies/home-to-earn/	H2E	$0.00
9941	Colossal Token	https://coinmarketcap.com/currencies/shiba-titian/	CLSL	$0.00
9942	Ignite	https://coinmarketcap.com/currencies/ignite/	IGT	$1.70
9943	LockPay	https://coinmarketcap.com/currencies/lockpay/	LOCKPAY	$0.00
9944	Pembrock	https://coinmarketcap.com/currencies/pembrock/	PEM	$0.09
9945	Velodrome Finance	https://coinmarketcap.com/currencies/velodrome-finance/	VELO	$0.04
9946	Expanz	https://coinmarketcap.com/currencies/expanz/	XPANZ	$0.01
9947	RoyalPay	https://coinmarketcap.com/currencies/royalpay/	ROYAL	$0.00
9948	FlatQube	https://coinmarketcap.com/currencies/flatqube/	QUBE	$9.16
9949	Fasst	https://coinmarketcap.com/currencies/fasst/	FAS	$11.67
9950	Kalycoin	https://coinmarketcap.com/currencies/kalycoin/	KLC	$0.05
9951	Metaxa	https://coinmarketcap.com/currencies/metaxa/	METAXA	$0.00
9952	Safcoin	https://coinmarketcap.com/currencies/safcoin/	SAF	$0.03
9953	NFT-MAKER	https://coinmarketcap.com/currencies/nft-maker/	NMKR	$0.01
9954	Crown Finance	https://coinmarketcap.com/currencies/crown-finance/	CRN	$0.01
9955	Burrow	https://coinmarketcap.com/currencies/burrow/	BRRR	$0.01
9956	Parrot USD	https://coinmarketcap.com/currencies/parrot-usd/	PAI	$1.00
9957	Gangster Legends	https://coinmarketcap.com/currencies/gangster-legends-token/	DRUG	$0.03
9958	Genopets KI	https://coinmarketcap.com/currencies/genopets-ki/	KI	$0.10
9959	USD Freedom	https://coinmarketcap.com/currencies/usd-freedom/	USDF	$1.00
9960	EverStart	https://coinmarketcap.com/currencies/everstart/	START	$1.16
9961	Mudra MDR	https://coinmarketcap.com/currencies/mudra-mdr/	MDR	$0.18
9962	Firebird Aggregator	https://coinmarketcap.com/currencies/firebird-aggregator/	FBA	$0.72
9963	Klever Finance	https://coinmarketcap.com/currencies/klever-finance/	KFI	$88.77
9964	Ramestta	https://coinmarketcap.com/currencies/ramestta/	RAMA	$1.13
\.


--
-- Name: coin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coin_id_seq', 9964, true);


--
-- Name: coin coin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin
    ADD CONSTRAINT coin_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

