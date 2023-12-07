--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5 (Debian 15.5-0+deb12u1)
-- Dumped by pg_dump version 15.5 (Debian 15.5-0+deb12u1)

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
-- Name: temp_chain; Type: TABLE; Schema: public; Owner: nn
--

CREATE TABLE public.temp_chain (
    id character varying,
    name character varying,
    "coinId" integer,
    symbol character varying,
    decimals integer,
    blockchain character varying,
    derivation integer[],
    curve character varying,
    "publicKeyType" character varying,
    "p2pkhPrefix" integer,
    "p2shPrefix" integer,
    hrp character varying,
    "publicKeyHasher" character varying,
    "base58Hasher" character varying,
    explorer integer,
    info integer,
    "staticPrefix" integer,
    "chainId" character varying,
    "addressHasher" character varying,
    "displayName" character varying,
    url character varying,
    "ss58Prefix" integer,
    slip44 integer,
    deprecated boolean,
    "testFolderName" character varying
);


ALTER TABLE public.temp_chain OWNER TO nn;

--
-- Name: temp_derivation; Type: TABLE; Schema: public; Owner: nn
--

CREATE TABLE public.temp_derivation (
    name character varying,
    path character varying,
    xpub character varying,
    xprv character varying,
    id integer
);


ALTER TABLE public.temp_derivation OWNER TO nn;

--
-- Name: temp_explorer; Type: TABLE; Schema: public; Owner: nn
--

CREATE TABLE public.temp_explorer (
    url character varying,
    "txPath" character varying,
    "accountPath" character varying,
    "sampleTx" character varying,
    "sampleAccount" character varying,
    id integer
);


ALTER TABLE public.temp_explorer OWNER TO nn;

--
-- Name: temp_info; Type: TABLE; Schema: public; Owner: nn
--

CREATE TABLE public.temp_info (
    url character varying,
    source character varying,
    rpc character varying,
    documentation character varying,
    id integer,
    client character varying,
    "clientPublic" character varying,
    "clientDocs" character varying
);


ALTER TABLE public.temp_info OWNER TO nn;

--
-- Data for Name: temp_chain; Type: TABLE DATA; Schema: public; Owner: nn
--

COPY public.temp_chain (id, name, "coinId", symbol, decimals, blockchain, derivation, curve, "publicKeyType", "p2pkhPrefix", "p2shPrefix", hrp, "publicKeyHasher", "base58Hasher", explorer, info, "staticPrefix", "chainId", "addressHasher", "displayName", url, "ss58Prefix", slip44, deprecated, "testFolderName") FROM stdin;
bitcoin	Bitcoin	0	BTC	8	Bitcoin	{0,1,2}	secp256k1	secp256k1	0	5	bc	sha256ripemd	sha256d	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
litecoin	Litecoin	2	LTC	8	Bitcoin	{3,4}	secp256k1	secp256k1	48	50	ltc	sha256ripemd	sha256d	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
doge	Dogecoin	3	DOGE	8	Bitcoin	{5}	secp256k1	secp256k1	30	22	\N	sha256ripemd	sha256d	2	2	\N	\N	\N	\N	\N	\N	\N	\N	\N
dash	Dash	5	DASH	8	Bitcoin	{6}	secp256k1	secp256k1	76	16	\N	sha256ripemd	sha256d	3	3	\N	\N	\N	\N	\N	\N	\N	\N	\N
viacoin	Viacoin	14	VIA	8	Bitcoin	{7}	secp256k1	secp256k1	71	33	via	sha256ripemd	sha256d	4	4	\N	\N	\N	\N	\N	\N	\N	\N	\N
groestlcoin	Groestlcoin	17	GRS	8	Groestlcoin	{8}	secp256k1	secp256k1	36	5	grs	sha256ripemd	groestl512d	5	5	\N	\N	\N	\N	\N	\N	\N	\N	\N
digibyte	DigiByte	20	DGB	8	Bitcoin	{9}	secp256k1	secp256k1	30	63	dgb	sha256ripemd	sha256d	6	6	\N	\N	\N	\N	\N	\N	\N	\N	\N
monacoin	Monacoin	22	MONA	8	Bitcoin	{10}	secp256k1	secp256k1	50	55	mona	sha256ripemd	sha256d	7	7	\N	\N	\N	\N	\N	\N	\N	\N	\N
decred	Decred	42	DCR	8	Decred	{11}	secp256k1	secp256k1	63	26	\N	blake256ripemd	blake256d	8	8	7	\N	\N	\N	\N	\N	\N	\N	\N
syscoin	Syscoin	57	SYS	8	Bitcoin	{12}	secp256k1	secp256k1	63	5	sys	sha256ripemd	sha256d	9	9	\N	\N	\N	\N	\N	\N	\N	\N	\N
base	Base	8453	ETH	18	Ethereum	{13}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	10	10	\N	8453	keccak256	\N	\N	\N	\N	\N	\N
linea	Linea	59144	ETH	18	Ethereum	{14}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	11	11	\N	59144	keccak256	\N	\N	\N	\N	\N	\N
mantle	Mantle	5000	MNT	18	Ethereum	{15}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	12	12	\N	5000	keccak256	\N	\N	\N	\N	\N	\N
zeneon	Zen EON	7332	ZEN	18	Ethereum	{16}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	13	13	\N	7332	keccak256	\N	\N	\N	\N	\N	\N
ethereum	Ethereum	60	ETH	18	Ethereum	{17}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	14	14	\N	1	keccak256	\N	\N	\N	\N	\N	\N
classic	Ethereum Classic	61	ETC	18	Ethereum	{18}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	15	15	\N	61	keccak256	\N	\N	\N	\N	\N	\N
icon	ICON	74	ICX	18	Icon	{19}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	16	16	\N	\N	\N	\N	\N	\N	\N	\N	\N
verge	Verge	77	XVG	6	Verge	{20}	secp256k1	secp256k1	30	33	vg	sha256ripemd	sha256d	17	17	\N	\N	\N	\N	\N	\N	\N	\N	\N
pivx	Pivx	119	PIVX	8	Bitcoin	{21}	secp256k1	secp256k1	30	13	\N	sha256ripemd	sha256d	18	18	\N	\N	\N	\N	\N	\N	\N	\N	\N
zen	Zen	121	ZEN	8	Zen	{22}	secp256k1	secp256k1	137	150	\N	sha256ripemd	sha256d	19	19	32	\N	\N	\N	\N	\N	\N	\N	\N
aptos	Aptos	637	APT	8	Aptos	{23}	ed25519	ed25519	\N	\N	\N	\N	\N	20	20	\N	1	\N	Aptos	\N	\N	\N	\N	\N
sui	Sui	784	SUI	9	Sui	{24}	ed25519	ed25519	\N	\N	\N	\N	\N	21	21	\N	\N	\N	\N	\N	\N	\N	\N	\N
cosmos	Cosmos	118	ATOM	6	Cosmos	{25}	secp256k1	secp256k1	\N	\N	cosmos	\N	\N	22	22	\N	cosmoshub-4	sha256ripemd	Cosmos Hub	\N	\N	\N	\N	\N
stargaze	Stargaze	20000118	STARS	6	Cosmos	{26}	secp256k1	secp256k1	\N	\N	stars	\N	\N	23	23	\N	stargaze-1	sha256ripemd	Stargaze	\N	\N	\N	\N	\N
juno	Juno	30000118	JUNO	6	Cosmos	{27}	secp256k1	secp256k1	\N	\N	juno	\N	\N	24	24	\N	juno-1	sha256ripemd	Juno	\N	\N	\N	\N	\N
stride	Stride	40000118	STRD	6	Cosmos	{28}	secp256k1	secp256k1	\N	\N	stride	\N	\N	25	25	\N	stride-1	sha256ripemd	Stride	\N	\N	\N	\N	\N
axelar	Axelar	50000118	AXL	6	Cosmos	{29}	secp256k1	secp256k1	\N	\N	axelar	\N	\N	26	26	\N	axelar-dojo-1	sha256ripemd	Axelar	\N	\N	\N	\N	\N
crescent	Crescent	60000118	CRE	6	Cosmos	{30}	secp256k1	secp256k1	\N	\N	cre	\N	\N	27	27	\N	crescent-1	sha256ripemd	Crescent	\N	\N	\N	\N	\N
kujira	Kujira	70000118	KUJI	6	Cosmos	{31}	secp256k1	secp256k1	\N	\N	kujira	\N	\N	28	28	\N	kaiyo-1	sha256ripemd	Kujira	\N	\N	\N	\N	\N
comdex	Comdex	80000118	CMDX	6	Cosmos	{32}	secp256k1	secp256k1	\N	\N	comdex	\N	\N	29	29	\N	comdex-1	sha256ripemd	Comdex	\N	\N	\N	\N	\N
neutron	Neutron	90000118	NTRN	6	Cosmos	{33}	secp256k1	secp256k1	\N	\N	neutron	\N	\N	30	30	\N	neutron-1	sha256ripemd	Neutron	\N	\N	\N	\N	\N
sommelier	Sommelier	11000118	SOMM	6	Cosmos	{34}	secp256k1	secp256k1	\N	\N	somm	\N	\N	31	31	\N	sommelier-3	sha256ripemd	Sommelier	\N	\N	\N	\N	\N
fetchai	FetchAI	12000118	FET	6	Cosmos	{35}	secp256k1	secp256k1	\N	\N	fetch	\N	\N	32	32	\N	fetchhub-4	sha256ripemd	Fetch AI	\N	\N	\N	\N	\N
mars	Mars	13000118	MARS	6	Cosmos	{36}	secp256k1	secp256k1	\N	\N	mars	\N	\N	33	33	\N	mars-1	sha256ripemd	Mars Hub	\N	\N	\N	\N	\N
umee	Umee	14000118	UMEE	6	Cosmos	{37}	secp256k1	secp256k1	\N	\N	umee	\N	\N	34	34	\N	umee-1	sha256ripemd	Umee	\N	\N	\N	\N	\N
noble	Noble	18000118	USDC	6	Cosmos	{38}	secp256k1	secp256k1	\N	\N	noble	\N	\N	35	35	\N	noble-1	sha256ripemd	Noble	\N	\N	\N	\N	\N
sei	Sei	19000118	SEI	6	Cosmos	{39}	secp256k1	secp256k1	\N	\N	sei	\N	\N	36	36	\N	pacific-1	sha256ripemd	Sei	\N	\N	\N	\N	\N
coreum	Coreum	10000990	CORE	6	Cosmos	{40}	secp256k1	secp256k1	\N	\N	core	\N	\N	37	37	\N	coreum-mainnet-1	sha256ripemd	Coreum	\N	\N	\N	\N	\N
quasar	Quasar	15000118	QSR	6	Cosmos	{41}	secp256k1	secp256k1	\N	\N	quasar	\N	\N	38	38	\N	quasar-1	sha256ripemd	Quasar	\N	\N	\N	\N	\N
persistence	Persistence	16000118	XPRT	6	Cosmos	{42}	secp256k1	secp256k1	\N	\N	persistence	\N	\N	39	39	\N	core-1	sha256ripemd	Persistence	\N	\N	\N	\N	\N
akash	Akash	17000118	AKT	6	Cosmos	{43}	secp256k1	secp256k1	\N	\N	akash	\N	\N	40	40	\N	akashnet-2	sha256ripemd	Akash	\N	\N	\N	\N	\N
zcash	Zcash	133	ZEC	8	Zcash	{44}	secp256k1	secp256k1	184	189	\N	sha256ripemd	sha256d	41	41	28	\N	\N	\N	\N	\N	\N	\N	\N
firo	Firo	136	FIRO	8	Bitcoin	{45}	secp256k1	secp256k1	82	7	\N	sha256ripemd	sha256d	42	42	\N	\N	\N	\N	\N	\N	\N	\N	\N
komodo	Komodo	141	KMD	8	Zcash	{46}	secp256k1	secp256k1	60	85	\N	sha256ripemd	sha256d	43	43	\N	\N	\N	\N	\N	\N	\N	\N	\N
ripple	XRP	144	XRP	6	Ripple	{47}	secp256k1	secp256k1	\N	\N	\N	\N	\N	44	44	\N	\N	\N	\N	\N	\N	\N	\N	\N
bitcoincash	Bitcoin Cash	145	BCH	8	Bitcoin	{48}	secp256k1	secp256k1	0	5	bitcoincash	sha256ripemd	sha256d	45	45	\N	\N	\N	\N	\N	\N	\N	\N	\N
stellar	Stellar	148	XLM	7	Stellar	{49}	ed25519	ed25519	\N	\N	\N	\N	\N	46	46	\N	\N	\N	\N	\N	\N	\N	\N	\N
bitcoingold	Bitcoin Gold	156	BTG	8	Bitcoin	{50}	secp256k1	secp256k1	38	23	btg	sha256ripemd	sha256d	47	47	\N	\N	\N	\N	\N	\N	\N	\N	\N
nano	Nano	165	XNO	30	Nano	{51}	ed25519Blake2bNano	ed25519Blake2b	\N	\N	\N	\N	\N	48	48	\N	\N	\N	\N	https://nano.org	\N	\N	\N	\N
ravencoin	Ravencoin	175	RVN	8	Bitcoin	{52}	secp256k1	secp256k1	60	122	\N	sha256ripemd	sha256d	49	49	\N	\N	\N	\N	\N	\N	\N	\N	\N
poa	POA Network	178	POA	18	Ethereum	{53}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	50	50	\N	99	keccak256	\N	\N	\N	\N	\N	\N
eos	EOS	194	EOS	4	EOS	{54}	secp256k1	secp256k1	\N	\N	\N	\N	\N	51	51	\N	\N	\N	\N	\N	\N	\N	\N	\N
wax	WAX	14001	WAXP	4	EOS	{55}	secp256k1	secp256k1	\N	\N	\N	\N	\N	52	52	\N	\N	\N	\N	\N	\N	\N	\N	\N
tron	Tron	195	TRX	6	Tron	{56}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	53	53	\N	\N	\N	\N	\N	\N	\N	\N	\N
fio	FIO	235	FIO	9	FIO	{57}	secp256k1	secp256k1	\N	\N	\N	\N	\N	54	54	\N	\N	\N	\N	https://fioprotocol.io/	\N	\N	\N	\N
nimiq	Nimiq	242	NIM	5	Nimiq	{58}	ed25519	ed25519	\N	\N	\N	\N	\N	55	55	\N	\N	\N	\N	\N	\N	\N	\N	\N
algorand	Algorand	283	ALGO	6	Algorand	{59}	ed25519	ed25519	\N	\N	\N	\N	\N	56	56	\N	\N	\N	\N	\N	\N	\N	\N	\N
iotex	IoTeX	304	IOTX	18	IoTeX	{60}	secp256k1	secp256k1Extended	\N	\N	io	\N	\N	57	57	\N	\N	\N	\N	\N	\N	\N	\N	\N
iotexevm	IoTeX EVM	10004689	IOTX	18	Ethereum	{61}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	58	58	\N	4689	keccak256	IoTeX EVM	\N	\N	\N	\N	\N
nervos	Nervos	309	CKB	8	Nervos	{62}	secp256k1	secp256k1	\N	\N	ckb	\N	\N	59	59	\N	\N	\N	\N	\N	\N	\N	\N	\N
zilliqa	Zilliqa	313	ZIL	12	Zilliqa	{63}	secp256k1	secp256k1	\N	\N	zil	\N	\N	60	60	\N	\N	\N	\N	\N	\N	\N	\N	\N
terra	Terra	330	LUNC	6	Cosmos	{64}	secp256k1	secp256k1	\N	\N	terra	\N	\N	61	61	\N	columbus-5	sha256ripemd	Terra Classic	\N	\N	\N	\N	\N
terrav2	TerraV2	10000330	LUNA	6	Cosmos	{65}	secp256k1	secp256k1	\N	\N	terra	\N	\N	62	62	\N	phoenix-1	sha256ripemd	Terra	\N	\N	\N	\N	\N
polkadot	Polkadot	354	DOT	10	Polkadot	{66}	ed25519	ed25519	\N	\N	\N	\N	\N	63	63	\N	\N	keccak256	\N	\N	0	\N	\N	\N
everscale	Everscale	396	EVER	9	Everscale	{67}	ed25519	ed25519	\N	\N	\N	\N	\N	64	64	\N	\N	\N	\N	\N	\N	\N	\N	\N
near	NEAR	397	NEAR	24	NEAR	{68}	ed25519	ed25519	\N	\N	\N	\N	\N	65	65	\N	\N	\N	\N	\N	\N	\N	\N	\N
aion	Aion	425	AION	18	Aion	{69}	ed25519	ed25519	\N	\N	\N	\N	\N	66	66	\N	\N	\N	\N	\N	\N	\N	\N	\N
kusama	Kusama	434	KSM	12	Kusama	{70}	ed25519	ed25519	\N	\N	\N	\N	\N	67	67	\N	\N	keccak256	\N	\N	2	\N	\N	\N
acala	Acala	787	ACA	12	Polkadot	{71}	ed25519	ed25519	\N	\N	\N	\N	\N	68	68	\N	\N	keccak256	\N	\N	10	\N	\N	\N
acalaevm	Acala EVM	10000787	ACA	18	Ethereum	{72}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	69	69	\N	787	keccak256	\N	\N	\N	60	\N	\N
aeternity	Aeternity	457	AE	18	Aeternity	{73}	ed25519	ed25519	\N	\N	\N	\N	\N	70	70	\N	\N	\N	\N	\N	\N	\N	\N	\N
kava	Kava	459	KAVA	6	Cosmos	{74}	secp256k1	secp256k1	\N	\N	kava	\N	\N	71	71	\N	kava_2222-10	sha256ripemd	\N	\N	\N	\N	\N	\N
filecoin	Filecoin	461	FIL	18	Filecoin	{75}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	72	72	\N	\N	\N	\N	\N	\N	\N	\N	\N
bluzelle	Bluzelle	483	BLZ	6	Cosmos	{76}	secp256k1	secp256k1	\N	\N	bluzelle	\N	\N	73	73	\N	\N	sha256ripemd	\N	\N	\N	\N	\N	\N
band	BandChain	494	BAND	6	Cosmos	{77}	secp256k1	secp256k1	\N	\N	band	\N	\N	74	74	\N	laozi-mainnet	sha256ripemd	\N	\N	\N	\N	\N	\N
theta	Theta	500	THETA	18	Theta	{78}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	75	75	\N	\N	\N	\N	\N	\N	\N	\N	\N
tfuelevm	Theta Fuel	361	TFUEL	18	Ethereum	{79}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	76	76	\N	361	keccak256	\N	\N	\N	\N	\N	\N
solana	Solana	501	SOL	9	Solana	{80,81}	ed25519	ed25519	\N	\N	\N	\N	\N	77	77	\N	\N	\N	\N	\N	\N	\N	\N	\N
elrond	MultiversX	508	eGLD	18	MultiversX	{82}	ed25519	ed25519	\N	\N	erd	\N	\N	78	78	\N	\N	\N	\N	\N	\N	\N	\N	\N
binance	Binance	714	BNB	8	Binance	{83}	secp256k1	secp256k1	\N	\N	bnb	\N	\N	79	79	\N	Binance-Chain-Tigris	\N	BNB Beacon Chain	\N	\N	\N	\N	\N
tbinance	TBinance	30000714	BNB	8	Binance	{84}	secp256k1	secp256k1	\N	\N	tbnb	\N	\N	80	80	\N	\N	\N	TBNB	\N	\N	714	\N	\N
vechain	VeChain	818	VET	18	Vechain	{85}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	81	81	\N	74	\N	\N	\N	\N	\N	\N	\N
callisto	Callisto	820	CLO	18	Ethereum	{86}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	82	82	\N	820	keccak256	\N	\N	\N	\N	\N	\N
neo	NEO	888	NEO	8	NEO	{87}	nist256p1	nist256p1	\N	\N	\N	\N	\N	83	83	\N	\N	\N	\N	\N	\N	\N	\N	\N
tomochain	TomoChain	889	TOMO	18	Ethereum	{88}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	84	84	\N	88	keccak256	\N	\N	\N	\N	\N	\N
bitcoindiamond	Bitcoin Diamond	999	BCD	7	BitcoinDiamond	{89}	secp256k1	secp256k1	0	5	bcd	sha256ripemd	sha256d	85	85	\N	\N	\N	\N	\N	\N	\N	\N	\N
thundertoken	ThunderCore	1001	TT	18	Ethereum	{90}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	86	86	\N	108	keccak256	\N	\N	\N	\N	\N	\N
harmony	Harmony	1023	ONE	18	Harmony	{91}	secp256k1	secp256k1Extended	\N	\N	one	\N	\N	87	87	\N	\N	\N	\N	\N	\N	\N	\N	\N
oasis	Oasis	474	ROSE	9	OasisNetwork	{92}	ed25519	ed25519	\N	\N	oasis	\N	\N	88	88	\N	\N	\N	\N	\N	\N	\N	\N	\N
ontology	Ontology	1024	ONT	0	Ontology	{93}	nist256p1	nist256p1	\N	\N	\N	\N	\N	89	89	\N	\N	\N	\N	\N	\N	\N	\N	\N
tezos	Tezos	1729	XTZ	6	Tezos	{94}	ed25519	ed25519	\N	\N	\N	\N	\N	90	90	\N	\N	\N	\N	\N	\N	\N	\N	\N
cardano	Cardano	1815	ADA	6	Cardano	{95}	ed25519ExtendedCardano	ed25519Cardano	\N	\N	addr	\N	\N	91	91	\N	\N	\N	\N	\N	\N	\N	\N	\N
kin	Kin	2017	KIN	5	Stellar	{96}	ed25519	ed25519	\N	\N	\N	\N	\N	92	92	\N	\N	\N	\N	\N	\N	\N	t	\N
qtum	Qtum	2301	QTUM	8	Bitcoin	{97}	secp256k1	secp256k1	58	50	qc	sha256ripemd	sha256d	93	93	\N	\N	\N	\N	\N	\N	\N	\N	\N
nebulas	Nebulas	2718	NAS	18	Nebulas	{98}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	94	94	\N	\N	\N	\N	\N	\N	\N	\N	\N
gochain	GoChain	6060	GO	18	Ethereum	{99}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	95	95	\N	60	keccak256	\N	\N	\N	\N	\N	\N
nuls	NULS	8964	NULS	8	NULS	{100}	secp256k1	secp256k1	\N	\N	\N	\N	\N	96	96	\N	\N	\N	\N	\N	\N	\N	\N	\N
zelcash	Zelcash	19167	FLUX	8	Zcash	{101}	secp256k1	secp256k1	184	189	\N	sha256ripemd	sha256d	97	97	28	\N	\N	Flux	\N	\N	\N	\N	\N
wanchain	Wanchain	5718350	WAN	18	Ethereum	{102}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	98	98	\N	888	keccak256	\N	\N	\N	\N	\N	\N
waves	Waves	5741564	WAVES	8	Waves	{103}	ed25519	curve25519	\N	\N	\N	\N	\N	99	99	\N	\N	\N	\N	\N	\N	\N	\N	\N
bsc	Smart Chain Legacy	10000714	BNB	18	Ethereum	{104}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	100	100	\N	56	keccak256	\N	\N	\N	714	t	Binance
smartchain	Smart Chain	20000714	BNB	18	Ethereum	{105}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	101	101	\N	56	keccak256	BNB Smart Chain	\N	\N	714	\N	Binance
polygon	Polygon	966	MATIC	18	Ethereum	{106}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	102	102	\N	137	keccak256	\N	\N	\N	\N	\N	\N
rootstock	Rootstock	137	RBTC	18	Ethereum	{107}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	103	103	\N	30	keccak256	\N	\N	\N	\N	\N	\N
thorchain	THORChain	931	RUNE	8	Thorchain	{108}	secp256k1	secp256k1	\N	\N	thor	\N	\N	104	104	\N	thorchain-mainnet-v1	\N	\N	\N	\N	\N	\N	\N
optimism	Optimism	10000070	ETH	18	Ethereum	{109}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	105	105	\N	10	keccak256	Optimism Ethereum	\N	\N	60	\N	\N
polygonzkevm	Polygon zkEVM	10001101	ETH	18	Ethereum	{110}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	106	106	\N	1101	keccak256	Polygon zkEVM	\N	\N	60	\N	\N
zksync	Zksync	10000324	ETH	18	Ethereum	{111}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	107	107	\N	324	keccak256	zkSync Era	\N	\N	60	\N	\N
scroll	Scroll	534353	ETH	18	Ethereum	{112}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	108	108	\N	534353	keccak256	Scroll	\N	\N	60	\N	\N
arbitrum	Arbitrum	10042221	ETH	18	Ethereum	{113}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	109	109	\N	42161	keccak256	\N	\N	\N	60	\N	\N
arbitrumnova	Arbitrum Nova	10042170	ETH	18	Ethereum	{114}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	110	110	\N	42170	keccak256	\N	\N	\N	60	\N	\N
heco	ECO Chain	10000553	HT	18	Ethereum	{115}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	111	111	\N	128	keccak256	Huobi ECO Chain	\N	\N	553	\N	ECO
avalanchec	Avalanche C-Chain	10009000	AVAX	18	Ethereum	{116}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	112	112	\N	43114	keccak256	\N	\N	\N	\N	\N	Avalanche
xdai	xDai	10000100	xDAI	18	Ethereum	{117}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	113	113	\N	100	keccak256	Gnosis Chain	\N	\N	\N	\N	\N
fantom	Fantom	10000250	FTM	18	Ethereum	{118}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	114	114	\N	250	keccak256	\N	\N	\N	\N	\N	\N
cryptoorg	CryptoOrg	394	CRO	8	Cosmos	{119}	secp256k1	secp256k1	\N	\N	cro	\N	\N	115	115	\N	crypto-org-chain-mainnet-1	sha256ripemd	Crypto.org	\N	\N	\N	\N	\N
celo	Celo	52752	CELO	18	Ethereum	{120}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	116	116	\N	42220	keccak256	\N	\N	\N	\N	\N	\N
ronin	Ronin	10002020	RON	18	Ronin	{121}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	117	117	\N	2020	keccak256	\N	\N	\N	60	\N	\N
secret	Secret	529	SCRT	6	Cosmos	{122}	secp256k1	secp256k1	\N	\N	secret	\N	\N	118	118	\N	secret-4	sha256ripemd	Secret	\N	\N	\N	\N	\N
osmosis	Osmosis	10000118	OSMO	6	Cosmos	{123}	secp256k1	secp256k1	\N	\N	osmo	\N	\N	119	119	\N	osmosis-1	sha256ripemd	Osmosis	\N	\N	\N	\N	\N
ecash	eCash	899	XEC	2	Bitcoin	{124}	secp256k1	secp256k1	0	5	ecash	sha256ripemd	sha256d	120	120	\N	\N	\N	\N	\N	\N	\N	\N	\N
iost	IOST	291	IOST	2	IOST	{125}	ed25519	ed25519	0	5	\N	sha256ripemd	sha256d	121	121	\N	\N	\N	\N	\N	\N	\N	\N	\N
cronos	Cronos Chain	10000025	CRO	18	Ethereum	{126}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	122	122	\N	25	keccak256	\N	\N	\N	\N	\N	Cronos
kavaevm	KavaEvm	10002222	KAVA	18	Ethereum	{127}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	123	123	\N	2222	keccak256	\N	\N	\N	\N	\N	\N
smartbch	Smart Bitcoin Cash	10000145	SBCH	18	Ethereum	{128}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	124	124	\N	10000	keccak256	\N	\N	\N	\N	\N	Bitcoin
kcc	KuCoin Community Chain	10000321	KCS	18	Ethereum	{129}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	125	125	\N	321	keccak256	\N	\N	\N	\N	\N	KuCoinCommunityChain
boba	Boba	10000288	BOBAETH	18	Ethereum	{130}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	126	126	\N	288	keccak256	\N	\N	\N	\N	\N	\N
metis	Metis	10001088	METIS	18	Ethereum	{131}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	127	127	\N	1088	keccak256	\N	\N	\N	\N	\N	\N
aurora	Aurora	1323161554	ETH	18	Ethereum	{132}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	128	128	\N	1313161554	keccak256	\N	\N	\N	\N	\N	\N
evmos	Evmos	10009001	EVMOS	18	Ethereum	{133}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	129	129	\N	9001	keccak256	\N	\N	\N	\N	\N	\N
nativeevmos	NativeEvmos	20009001	EVMOS	18	Cosmos	{134}	secp256k1	secp256k1Extended	\N	\N	evmos	\N	\N	130	130	\N	evmos_9001-2	keccak256	Native Evmos	\N	\N	\N	\N	\N
moonriver	Moonriver	10001285	MOVR	18	Ethereum	{135}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	131	131	\N	1285	\N	\N	\N	\N	\N	\N	\N
moonbeam	Moonbeam	10001284	GLMR	18	Ethereum	{136}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	132	132	\N	1284	\N	\N	\N	\N	\N	\N	\N
klaytn	Klaytn	10008217	KLAY	18	Ethereum	{137}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	133	133	\N	8217	\N	\N	\N	\N	\N	\N	\N
meter	Meter	18000	MTR	18	Ethereum	{138}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	134	134	\N	82	\N	\N	\N	\N	\N	\N	\N
okc	OKX Chain	996	OKT	18	Ethereum	{139}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	135	135	\N	66	keccak256	\N	\N	\N	\N	\N	\N
cfxevm	Conflux eSpace	1030	CFX	18	Ethereum	{140}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	136	136	\N	1030	keccak256	\N	\N	\N	\N	\N	\N
greenfield	Greenfield	5600	BNB	18	Greenfield	{141}	secp256k1	secp256k1	\N	\N	\N	\N	\N	137	137	\N	9000	keccak256	BNB Greenfield	\N	\N	\N	\N	\N
opbnb	OpBNB	204	BNB	18	Ethereum	{142}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	138	138	\N	204	keccak256	\N	\N	\N	\N	\N	\N
stratis	Stratis	105105	STRAX	8	Bitcoin	{143}	secp256k1	secp256k1	75	140	strax	sha256ripemd	sha256d	139	139	\N	\N	\N	\N	\N	\N	\N	\N	\N
Nebl	Nebl	146	NEBL	8	Verge	{144}	secp256k1	secp256k1	53	112	\N	sha256ripemd	sha256d	140	140	\N	\N	\N	\N	\N	\N	\N	\N	\N
hedera	Hedera	3030	HBAR	8	Hedera	{145}	ed25519	ed25519	\N	\N	\N	\N	\N	141	141	\N	\N	\N	\N	\N	\N	\N	\N	\N
agoric	Agoric	564	BLD	6	Cosmos	{146}	secp256k1	secp256k1	\N	\N	agoric	\N	\N	142	142	\N	agoric-3	sha256ripemd	\N	\N	\N	\N	\N	\N
nativeinjective	NativeInjective	10000060	INJ	18	Cosmos	{147}	secp256k1	secp256k1Extended	\N	\N	inj	\N	\N	143	143	\N	injective-1	keccak256	Native Injective	\N	\N	\N	\N	\N
nativecanto	NativeCanto	10007700	CANTO	18	Cosmos	{148}	secp256k1	secp256k1Extended	\N	\N	canto	\N	\N	144	144	\N	canto_7700-1	keccak256	NativeCanto	\N	\N	\N	\N	\N
ton	TON	607	TON	9	The Open Network	{149}	ed25519	ed25519	\N	\N	\N	\N	\N	145	145	\N	\N	\N	\N	\N	\N	\N	\N	\N
neon	Neon	245022934	NEON	18	Ethereum	{150}	secp256k1	secp256k1Extended	\N	\N	\N	\N	\N	146	146	\N	245022934	keccak256	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: temp_derivation; Type: TABLE DATA; Schema: public; Owner: nn
--

COPY public.temp_derivation (name, path, xpub, xprv, id) FROM stdin;
segwit	m/84'/0'/0'/0/0	zpub	zprv	0
legacy	m/44'/0'/0'/0/0	xpub	xprv	1
testnet	m/84'/1'/0'/0/0	zpub	zprv	2
\N	m/84'/2'/0'/0/0	zpub	zprv	3
legacy	m/44'/2'/0'/0/0	xpub	xprv	4
\N	m/44'/3'/0'/0/0	dgub	dgpv	5
\N	m/44'/5'/0'/0/0	xpub	xprv	6
\N	m/84'/14'/0'/0/0	zpub	zprv	7
\N	m/84'/17'/0'/0/0	zpub	zprv	8
\N	m/84'/20'/0'/0/0	zpub	zprv	9
\N	m/44'/22'/0'/0/0	xpub	xprv	10
\N	m/44'/42'/0'/0/0	dpub	dprv	11
\N	m/84'/57'/0'/0/0	zpub	zprv	12
\N	m/44'/60'/0'/0/0	\N	\N	13
\N	m/44'/60'/0'/0/0	\N	\N	14
\N	m/44'/60'/0'/0/0	\N	\N	15
\N	m/44'/60'/0'/0/0	\N	\N	16
\N	m/44'/60'/0'/0/0	\N	\N	17
\N	m/44'/61'/0'/0/0	\N	\N	18
\N	m/44'/74'/0'/0/0	\N	\N	19
\N	m/84'/77'/0'/0/0	zpub	zprv	20
\N	m/44'/119'/0'/0/0	xpub	xprv	21
\N	m/44'/121'/0'/0/0	xpub	xprv	22
\N	m/44'/637'/0'/0'/0'	\N	\N	23
\N	m/44'/784'/0'/0'/0'	\N	\N	24
\N	m/44'/118'/0'/0/0	\N	\N	25
\N	m/44'/118'/0'/0/0	\N	\N	26
\N	m/44'/118'/0'/0/0	\N	\N	27
\N	m/44'/118'/0'/0/0	\N	\N	28
\N	m/44'/118'/0'/0/0	\N	\N	29
\N	m/44'/118'/0'/0/0	\N	\N	30
\N	m/44'/118'/0'/0/0	\N	\N	31
\N	m/44'/118'/0'/0/0	\N	\N	32
\N	m/44'/118'/0'/0/0	\N	\N	33
\N	m/44'/118'/0'/0/0	\N	\N	34
\N	m/44'/118'/0'/0/0	\N	\N	35
\N	m/44'/118'/0'/0/0	\N	\N	36
\N	m/44'/118'/0'/0/0	\N	\N	37
\N	m/44'/118'/0'/0/0	\N	\N	38
\N	m/44'/118'/0'/0/0	\N	\N	39
\N	m/44'/990'/0'/0/0	\N	\N	40
\N	m/44'/118'/0'/0/0	\N	\N	41
\N	m/44'/118'/0'/0/0	\N	\N	42
\N	m/44'/118'/0'/0/0	\N	\N	43
\N	m/44'/133'/0'/0/0	xpub	xprv	44
\N	m/44'/136'/0'/0/0	xpub	xprv	45
\N	m/44'/141'/0'/0/0	xpub	xprv	46
\N	m/44'/144'/0'/0/0	\N	\N	47
\N	m/44'/145'/0'/0/0	xpub	xprv	48
\N	m/44'/148'/0'	\N	\N	49
\N	m/84'/156'/0'/0/0	zpub	zprv	50
\N	m/44'/165'/0'	\N	\N	51
\N	m/44'/175'/0'/0/0	xpub	xprv	52
\N	m/44'/178'/0'/0/0	\N	\N	53
\N	m/44'/194'/0'/0/0	\N	\N	54
\N	m/44'/194'/0'/0/0	\N	\N	55
\N	m/44'/195'/0'/0/0	\N	\N	56
\N	m/44'/235'/0'/0/0	\N	\N	57
\N	m/44'/242'/0'/0'	\N	\N	58
\N	m/44'/283'/0'/0'/0'	\N	\N	59
\N	m/44'/304'/0'/0/0	\N	\N	60
\N	m/44'/304'/0'/0/0	\N	\N	61
\N	m/44'/309'/0'/0/0	\N	\N	62
\N	m/44'/313'/0'/0/0	\N	\N	63
\N	m/44'/330'/0'/0/0	\N	\N	64
\N	m/44'/330'/0'/0/0	\N	\N	65
\N	m/44'/354'/0'/0'/0'	\N	\N	66
\N	m/44'/396'/0'/0/0	\N	\N	67
\N	m/44'/397'/0'	\N	\N	68
\N	m/44'/425'/0'/0'/0'	\N	\N	69
\N	m/44'/434'/0'/0'/0'	\N	\N	70
\N	m/44'/787'/0'/0'/0'	\N	\N	71
\N	m/44'/60'/0'/0/0	\N	\N	72
\N	m/44'/457'/0'/0'/0'	\N	\N	73
\N	m/44'/459'/0'/0/0	\N	\N	74
\N	m/44'/461'/0'/0/0	\N	\N	75
\N	m/44'/483'/0'/0/0	\N	\N	76
\N	m/44'/494'/0'/0/0	\N	\N	77
\N	m/44'/500'/0'/0/0	\N	\N	78
\N	m/44'/500'/0'/0/0	\N	\N	79
\N	m/44'/501'/0'	\N	\N	80
solana	m/44'/501'/0'/0'	\N	\N	81
\N	m/44'/508'/0'/0'/0'	\N	\N	82
\N	m/44'/714'/0'/0/0	\N	\N	83
\N	m/44'/714'/0'/0/0	\N	\N	84
\N	m/44'/818'/0'/0/0	\N	\N	85
\N	m/44'/820'/0'/0/0	\N	\N	86
\N	m/44'/888'/0'/0/0	\N	\N	87
\N	m/44'/889'/0'/0/0	\N	\N	88
\N	m/84'/999'/0'/0/0	zpub	zprv	89
\N	m/44'/1001'/0'/0/0	\N	\N	90
\N	m/44'/1023'/0'/0/0	\N	\N	91
\N	m/44'/474'/0'	\N	\N	92
\N	m/44'/1024'/0'/0/0	\N	\N	93
\N	m/44'/1729'/0'/0'	\N	\N	94
\N	m/1852'/1815'/0'/0/0	\N	\N	95
\N	m/44'/2017'/0'	\N	\N	96
\N	m/44'/2301'/0'/0/0	xpub	xprv	97
\N	m/44'/2718'/0'/0/0	\N	\N	98
\N	m/44'/6060'/0'/0/0	\N	\N	99
\N	m/44'/8964'/0'/0/0	\N	\N	100
\N	m/44'/19167'/0'/0/0	xpub	xprv	101
\N	m/44'/5718350'/0'/0/0	\N	\N	102
\N	m/44'/5741564'/0'/0'/0'	\N	\N	103
\N	m/44'/714'/0'/0/0	\N	\N	104
\N	m/44'/60'/0'/0/0	\N	\N	105
\N	m/44'/60'/0'/0/0	\N	\N	106
\N	m/44'/137'/0'/0/0	\N	\N	107
\N	m/44'/931'/0'/0/0	\N	\N	108
\N	m/44'/60'/0'/0/0	\N	\N	109
\N	m/44'/60'/0'/0/0	\N	\N	110
\N	m/44'/60'/0'/0/0	\N	\N	111
\N	m/44'/60'/0'/0/0	\N	\N	112
\N	m/44'/60'/0'/0/0	\N	\N	113
\N	m/44'/60'/0'/0/0	\N	\N	114
\N	m/44'/60'/0'/0/0	\N	\N	115
\N	m/44'/60'/0'/0/0	\N	\N	116
\N	m/44'/60'/0'/0/0	\N	\N	117
\N	m/44'/60'/0'/0/0	\N	\N	118
\N	m/44'/394'/0'/0/0	\N	\N	119
\N	m/44'/60'/0'/0/0	\N	\N	120
\N	m/44'/60'/0'/0/0	\N	\N	121
\N	m/44'/529'/0'/0/0	\N	\N	122
\N	m/44'/118'/0'/0/0	\N	\N	123
\N	m/44'/899'/0'/0/0	xpub	xprv	124
\N	m/44'/899'/0'/0/0	xpub	xprv	125
\N	m/44'/60'/0'/0/0	\N	\N	126
\N	m/44'/60'/0'/0/0	\N	\N	127
\N	m/44'/60'/0'/0/0	\N	\N	128
\N	m/44'/60'/0'/0/0	\N	\N	129
\N	m/44'/60'/0'/0/0	\N	\N	130
\N	m/44'/60'/0'/0/0	\N	\N	131
\N	m/44'/60'/0'/0/0	\N	\N	132
\N	m/44'/60'/0'/0/0	\N	\N	133
\N	m/44'/60'/0'/0/0	\N	\N	134
\N	m/44'/60'/0'/0/0	\N	\N	135
\N	m/44'/60'/0'/0/0	\N	\N	136
\N	m/44'/60'/0'/0/0	\N	\N	137
\N	m/44'/60'/0'/0/0	\N	\N	138
\N	m/44'/60'/0'/0/0	\N	\N	139
\N	m/44'/60'/0'/0/0	\N	\N	140
\N	m/44'/60'/0'/0/0	\N	\N	141
\N	m/44'/60'/0'/0/0	\N	\N	142
\N	m/44'/105105'/0'/0/0	xpub	xprv	143
\N	m/44'/146'/0'/0/0	xpub	xprv	144
\N	m/44'/3030'/0'/0'/0	\N	\N	145
\N	m/44'/564'/0'/0/0	\N	\N	146
\N	m/44'/60'/0'/0/0	\N	\N	147
\N	m/44'/60'/0'/0/0	\N	\N	148
\N	m/44'/607'/0'	\N	\N	149
\N	m/44'/60'/0'/0/0	\N	\N	150
\.


--
-- Data for Name: temp_explorer; Type: TABLE DATA; Schema: public; Owner: nn
--

COPY public.temp_explorer (url, "txPath", "accountPath", "sampleTx", "sampleAccount", id) FROM stdin;
https://blockchair.com	/bitcoin/transaction/	/bitcoin/address/	0607f62530b68cfcc91c57a1702841dd399a899d0eecda8e31ecca3f52f01df2	17A16QmavnUfCW11DAApiJxp7ARnxN5pGX	0
https://blockchair.com	/litecoin/transaction/	/litecoin/address/	\N	\N	1
https://blockchair.com	/dogecoin/transaction/	/dogecoin/address/	\N	\N	2
https://blockchair.com	/dash/transaction/	/dash/address/	\N	\N	3
https://explorer.viacoin.org	/tx/	/address/	\N	\N	4
https://blockchair.com	/groestlcoin/transaction/	/groestlcoin/address/	\N	\N	5
https://digiexplorer.info	/tx/	/address/	\N	\N	6
https://blockbook.electrum-mona.org	/tx/	/address/	\N	\N	7
https://dcrdata.decred.org	/tx/	/address/	\N	\N	8
https://sys1.bcfn.ca	/tx/	/address/	19e043f76f6ffc960f5fe93ecec37bc37a58ae7525d7e9cd6ed40f71f0da60eb	sys1qh3gvhnzq2ch7w8g04x8zksr2mz7r90x7ksmu40	9
https://basescan.org	/tx/	/address/	0x4acb15506b7696a2dfac4258f3f86392b4b2b717a3f316a8aa78509b2c3b6ab4	0xb8ff877ed78ba520ece21b1de7843a8a57ca47cb	10
https://lineascan.build	/tx/	/address/	0x0c7086f96865f4fcad58d7f3449db7baab9fce2625bcb79e7ea26676aa0d3420	0xbf71018f716ca6c64b0b12622f87a26b3b86100f	11
https://explorer.mantle.xyz	/tx/	/address/	0xfae996ea23f1ff9909ac04d26ae6e52ab600a84163fab9e0e893483c685629dd	0xA295EEFd401C8BE1457F266d3e73cdD015e5CFbb	12
https://eon-explorer.horizenlabs.io	/tx/	/address/	0xb462e3dac8eef21957d3b6cff3c184d083434367a726dd871e98a774f4d037a5	0x09bCfC348101B1179BCF3837aC996cF09357215f	13
https://etherscan.io	/tx/	/address/	0x9edaf0f7d9c6629c31bbf0471fc07d696c73b566b93783f7e25d8d5d2b62fa4f	0x5bb497e8d9fe26e92dd1be01e32076c8e024d167	14
https://blockscout.com/etc/mainnet	/tx/	/address/	0x66004165d3901819dc22e568931591d2e4287bda54995f4ce2701a12016f5997	0x9eab4b0fc468a7f5d46228bf5a76cb52370d068d	15
https://tracker.icon.foundation	/transaction/	/address/	\N	\N	16
https://verge-blockchain.info	/tx/	/address/	8c99979a2b25a46659bff35b238aab1c3158f736f215d99526429c7c96203581	DFre88gd87bAZQdnS7dbBLwT6GWiGFMQB6	17
https://pivx.ccore.online	/transaction/	/address/	\N	\N	18
https://explorer.horizen.io	/tx/	/address/	b7f548640766fb024247accf4e01bec37d88d49c4900357edc84d49a09ff4430	znRchPtvEyJJUwGbCALqyjwHJb1Gx6z4H4j	19
https://explorer.aptoslabs.com	/txn/	/account/	0xedc88058e27f6c065fd6607e262cb2a83a65f74301df90c61923014c59f9d465	0x60ad80e8cdadb81399e8a738014bc9ec865cef842f7c2cf7d84fbf7e40d065	20
https://explorer.sui.io/	/txblock/	/address/	5i8fbSL6r8yw2xcKmXxwkzHu3wpiyMLsyf2htCvDH8Ao	0x259ff8074ab425cbb489f236e18e08f03f1a7856bdf7c7a2877bd64f738b5015	21
https://mintscan.io/cosmos	/txs/	/account/	541FA06FB37AC1BF61922143783DD76FECA361830F9876D0342536EE8A87A790	cosmos1gu6y2a0ffteesyeyeesk23082c6998xyzmt9mz	22
https://www.mintscan.io/stargaze	/txs/	/account/	\N	\N	23
https://www.mintscan.io/juno	/txs/	/account/	\N	\N	24
https://www.mintscan.io/stride	/txs/	/account/	\N	\N	25
https://www.mintscan.io/axelar	/txs/	/account/	\N	\N	26
https://www.mintscan.io/crescent	/txs/	/account/	\N	\N	27
https://www.mintscan.io/kujira	/txs/	/account/	\N	\N	28
https://www.mintscan.io/comdex	/txs/	/account/	04C790D09A40EE958DBDD385B679B5EB60C10F9BC1389CC8F896DC9193A5ED6C	comdex1jz7av7cq45gh5hhrugtak7lkps2ga5v0u64nz6	29
https://www.mintscan.io/neutron	/txs/	/account/	E18BA087009A05EB6A15A22FE30BA99379B909F74A74120E6F92B9882C45F0D7	neutron1pm4af8pcurxssdxztqw9rexx5f8zfq7uzqfmy8	30
https://www.mintscan.io/sommelier	/txs/	/account/	E73A9E5E534777DDADF7F69A5CB41972894B862D1763FA4081FE913D8D3A5E80	somm10d5wmqvezwtj20u5hg3wuvwucce2nhsy0tzqgn	31
https://www.mintscan.io/fetchai	/txs/	/account/	7EB4F6C26809BA047F81CEFD0889775AC8522B7B8AF559B436083BE7039C5EA6	fetch1t3qet68dr0qkmrjtq89lrx837qa2t05265qy6s	32
https://www.mintscan.io/mars-protocol	/txs/	/account/	C12120760C71189A678739E0F1FD4EFAF2C29EA660B57A359AC728F89FAA7528	mars1nnjy6nct405pzfaqjm3dsyw0pf0kyw72vhw4pr	33
https://www.mintscan.io/umee	/txs/	/account/	65B4B52C5F324F2287540847A114F645D89D544D99F793879FB3DBFF2CFEFC84	umee16934q0qf4akw8qruy5y8v748rvtxxjckgsecq4	34
https://www.mintscan.io/noble	/txs/	/account/	EA231079975A058FEC28EF372B445763918C098DE033E868E2E035F3F98C59C7	noble1y2egevq0nyzm7w6a9kpxkw86eqytcvxpwsp6d9	35
https://www.mintscan.io/sei	/txs/	/account/	4A2114EE45317439690F3BEA9C8B6CFA11D42CF978F9487754902D372EEB488C	sei155hqv2rsypqzq0zpjn72frsxx4l6tcmplw63m2	36
https://www.mintscan.io/coreum	/txs/	/account/	32A4AE2AE6AAE31E75EDDADE0AB9F1499ABD5AD8D3F261ADEF2805CD46FF74E7	core1zmwdnfpwuymwn0fkwnj2aaje34npd5sqgjxq9v	37
https://www.mintscan.io/quasar	/txs/	/account/	2898B89C98FE1E8CF1E05A37E4EE5EE5ED83FD957B0CAEE53DE39FC82BF1A033	quasar1cqu6w425slheul3jsmyt6q0ec0rs0w0ugkst3k	38
https://www.mintscan.io/persistence	/txs/	/account/	BBD9DEE03A8D7538D8E7398217467F4A2B5690D15773E8A6442E6AEEEFA21E64	persistence10ys69560pqr6zmqam80g8s0smtjw6p3ugzmy3u	39
https://www.mintscan.io/akash	/txs/	/account/	C0083856344425908D5333D4325E3E0DE9D697BA568C6D99C34303819F615D25	akash1f4nskxfw8ufhwnajh7xwt0wmdtxm02vwta6krg	40
https://blockchair.com/zcash	/transaction/	/address/	f2438a93039faf08d39bd3df1f7b5f19a2c29ffe8753127e2956ab4461adab35	t1Yfrf1dssDLmaMBsq2LFKWPbS5vH3nGpa2	41
https://explorer.firo.org	/tx/	/address/	09a60d58b3d17519a42a8eca60750c33b710ca8f3ca71994192e05c248a2a111	a8ULhhDgfdSiXJhSZVdhb8EuDc6R3ogsaM	42
https://kmdexplorer.io/	/tx/	/address/	f53bd1a5c0f5dc4b60ba9a1882742ea96faa996e1b870795812a29604dd7829e	RWvfkt8UjbPWXgeZEcgYmKw2vA1bbAx5t2	43
https://bithomp.com	/explorer/	/explorer/	E26AB8F3372D2FC02DEC1FD5674ADAB762D684BFFDBBDF5D674E9D7CF4A47054	rfkH7EuS1XcSkB9pocy1R6T8F4CsNYixYU	44
https://blockchair.com	/bitcoin-cash/transaction/	/bitcoin-cash/address/	\N	\N	45
https://blockchair.com/stellar	/transaction/	/account/	d9aeabfa9d24df8c5755125f8af243b74cd3ff878656cfa72c566a8824bf6e84	GCILJZQ3CKBKBUJWW4TAM6Q37LJA5MQX6GMSFSQN75BPLWIZ33OPRG52	46
https://explorer.bitcoingold.org/insight	/tx/	/address/	2f807d7734de35d2236a1b3d8704eb12954f5f82ea66987949b10e94d9999b23	GJjz2Du9BoJQ3CPcoyVTHUJZSj62i1693U	47
https://nanocrawler.cc	/explorer/block/	/explorer/account/	C264DB7BF40738F0CEFF19B606746CB925B713E4B8699A055699E0DC8ABBC70F	nano_1wpj616kwhe1y38y1mspd8aub8i334cwybqco511iyuxm55zx8d67ptf1tsf	48
https://ravencoin.network	/tx/	/address/	\N	\N	49
https://blockscout.com	/poa/core/tx/	/poa/core/address/	\N	\N	50
https://bloks.io	/transaction/	/account/	\N	\N	51
https://wax.bloks.io	/transaction/	/account/	\N	\N	52
https://tronscan.org	/#/transaction/	/#/address/	\N	\N	53
https://explorer.fioprotocol.io	/transaction/	/account/	930d1d3cf8988b39b5f64b64e9d61314a3e05a155d9e3505bdf863aab1adddf3	f5axfpgffiqz	54
https://nimiq.watch	/#	/#	\N	\N	55
https://algoexplorer.io	/tx/	/address/	CR7POXFTYDLC7TV3IXHA7AZKWABUJC52BACLHJQNXAKZJGRPQY3A	J4AEINCSSLDA7LNBNWM4ZXFCTLTOZT5LG3F5BLMFPJYGFWVCMU37EZI2AM	56
https://iotexscan.io	/action/	/address/	\N	\N	57
https://iotexscan.io	/tx/	/address/	\N	\N	58
https://explorer.nervos.org	/transaction/	/address/	\N	\N	59
https://viewblock.io	/zilliqa/tx/	/zilliqa/address/	\N	\N	60
https://finder.terra.money/classic	/tx/	/address/	\N	\N	61
https://finder.terra.money/mainnet	/tx/	/address/	\N	\N	62
https://polkadot.subscan.io	/extrinsic/	/account/	0xb96f97d8ee508f420e606e1a6dcc74b88844713ddec2bd7cf4e3aa6b1d6beef4	13hJFqnkqQbmgnGQteGntjMjTdmTBRE8Z93JqxsrpgT7Yjd2	63
https://everscan.io	/transactions/	/accounts/	781238b2b0d15cd4cd2e2a0a142753750cd5e1b2c8b506fcede75a90e02f1268	0:d2bf59964a05dee84a0dd1ddc0ad83ba44d49719cf843d689dc8b726d0fb59d8	64
https://explorer.near.org	/transactions/	/accounts/	FPQAMaVnvFHNwNBJWnTttXfdJhp5FvMGGDJEesB8gvbL	test-trust.vlad.near	65
https://mainnet.aion.network	/#/transaction/	/#/account/	\N	\N	66
https://kusama.subscan.io	/extrinsic/	/account/	0xcbe0c2e2851c1245bedaae4d52f06eaa6b4784b786bea2f0bff11af7715973dd	DbCNECPna3k6MXFWWNZa5jGsuWycqEE6zcUxZYkxhVofrFk	67
https://acala.subscan.io	/extrinsic/	/account/	0xf3d58aafb1208bc09d10ba74bbf1c7811dc55a9149c1505256b6fb5603f5047f	26JqMKx4HJJcmb1kXo24HYYobiK2jURGCq6zuEzFBK3hQ9Ti	68
https://blockscout.acala.network	/tx/	/address/	0x4b0b151dd71ed8ef3174da18565790bf14f0a903a13e4f3266c7848bc8841593	0x9d1d97aDFcd324Bbd603D3872BD78e04098510b1	69
https://explorer.aepps.com	/transactions/	/account/transactions/	\N	\N	70
https://mintscan.io/kava	/txs/	/account/	2988DF83FCBFAA38179D583A96734CBD071541D6768221BB23111BC8136D5E6A	kava1xd39avn2f008jmvua0eupg39zsp2xn3wf802vn	71
https://filfox.info/en	/message/	/address/	bafy2bzacedsgjcd6xfhrrymmfrqubb44otlyhvgqkgsh533d5j5hwniiqespm	f1abjxfbp274xpdqcpuaykwkfb43omjotacm2p3za	72
https://bigdipper.net.bluzelle.com	/transactions/	/account/	AC026E0EC6E33A77D5EA6B9CEF9810699BC2AD8C5582E007E7857457C6D3B819	bluzelle1q9cryfal7u3jvnq6er5ufety20xtzw6ycx2te9	73
https://scan-wenchang-testnet2.bandchain.org/	/tx/	/account/	473264551D3063A9EC64EC251C61BE92DDDFCF6CC46D026D1E574D83D5447173	band12nmsm9khdsv0tywge43q3zwj8kkj3hvup9rltp	74
https://explorer.thetatoken.org	/txs/	/account/	\N	\N	75
https://explorer.thetatoken.org	/tx/	/account/	0xdb1c1c4e06289a4fc71b98ced218242d4f4a54a09987791a6a53a5260c053555	0xa144e6a98b967e585b214bfa7f6692af81987e5b	76
https://solscan.io	/tx/	/account/	5LmxrEKGchhMuYfw6Qut6CbsvE9pVfb8YvwZKvWssSesDVjHioBCmWKSJQh1WhvcM6CpemhpHNmEMA2a36rzwTa8	Bxp8yhH9zNwxyE4UqxP7a7hgJ5xTZfxNNft7YJJ2VRjT	77
https://explorer.multiversx.com	/transactions/	/accounts/	\N	\N	78
https://explorer.binance.org	/tx/	/address/	A93625C9F9ABEA1A8E31585B30BBB16C34FAE0D172EB5B6B2F834AF077BF06BB	bnb1u7jm0cll5h3224y0tapwn6gf6pr49ytewx4gsz	79
https://testnet-explorer.binance.org	/tx/	/address/	92E9DA1B6D603667E2DE83C0AC0C1D9E6D65405AD642DA794421C64A82A078D0	tbnb1c2cxgv3cklswxlvqr9anm6mlp6536qnd36txgr	80
https://explore.vechain.org	/transactions/	/accounts/	0xa424053be0063555aee73a595ca69968c2e4d90d36f280753e503b92b11a655d	0x8a0a035a33173601bfbec8b6ae7c4a6557a55103	81
https://explorer.callisto.network	/tx/	/addr/	\N	\N	82
https://neoscan.io	/transaction/	/address/	e0ddf7c81c732df26180aca0c36d5868ad009fdbbe6e7a56ebafc14bba41cd53	AcxuqWhTureEQGeJgbmtSWNAtssjMLU7pb	83
https://tomoscan.io	/tx/	/address/	0x35a8d3ab06c94d5b7d27221b7c9a24ba3f1710dd0fcfd75c5d59b3a885fd709b	0x86cCbD9bfb371c355202086882bC644A7D0b024B	84
http://explorer.btcd.io/#	/tx?tx=	/address?address=	ec564fe8993ba77f3f5c8b7f6ebb4cbc08e564a54612d6f4584cd1017cf723d4	1HNTyntGXNhy4WxNzWfffPqp7LHb8bGJ9R	85
https://scan.thundercore.com	/transactions/	/address/	\N	\N	86
https://explorer.harmony.one	/#/tx/	/#/address/	\N	\N	87
https://oasisscan.com	/transactions/	/accounts/detail/	0b9bd4983f1c88a1c71bf33562b6ba02b3064e01697d15a0de4bfe1922ec74b8	oasis1qrx376dmwuckmruzn9vq64n49clw72lywctvxdf4	88
https://explorer.ont.io	/transaction/	/address/	\N	\N	89
https://tzstats.com	/	/	onk3Z6V4StyfiXTPSHwZFvTKVAaws37cHmZacmULPr3VbVHpKrg	tz1SiPXX4MYGNJNDsRc7n8hkvUqFzg8xqF9m	90
https://cardanoscan.io	/transaction/	/address/	b7a6c5cadab0f64bdc89c77ee4a351463aba5c33f2cef6bbd6542a74a90a3af3	DdzFFzCqrhstpwKc8WMvPwwBb5oabcTW9zc5ykA37wJR4tYQucvsR9dXb2kEGNXkFJz2PtrpzfRiZkx8R1iNo8NYqdsukVmv7EAybFwC	91
https://www.kin.org	/blockchainInfoPage/?&dataType=public&header=Transaction&id=	/blockchainAccount/?&dataType=public&header=accountID&id=	\N	\N	92
https://qtum.info	/tx/	/address/	\N	\N	93
https://explorer.nebulas.io	/#/tx/	/#/address/	\N	\N	94
https://explorer.gochain.io	/tx/	/addr/	\N	\N	95
https://nulscan.io	/transaction/info?hash=	/address/info?address=	303e0e42c28acc37ba952a1effd43daa1caec79928054f7abefb21c32e6fdc02	NULSd6HgdSjUZy7jKMZfvQ5QU6Z97oufGTGcF	96
https://explorer.runonflux.io	/tx/	/address/	\N	\N	97
https://www.wanscan.org	/tx/	/address/	0x180ea96a3218b82b9b35d796823266d8a425c182507adfe5eeffc96e6a14d856	0x69B492D57bb777e97aa7044D0575228434e2E8B1	98
https://wavesexplorer.com	/tx/	/address/	\N	\N	99
https://bscscan.com	/tx/	/address/	0xb9ae2e808fe8e57171f303ad8f6e3fd17d949b0bfc7b4db6e8e30a71cc517d7e	0x35552c16704d214347f29Fa77f77DA6d75d7C752	100
https://bscscan.com	/tx/	/address/	0xb9ae2e808fe8e57171f303ad8f6e3fd17d949b0bfc7b4db6e8e30a71cc517d7e	0x35552c16704d214347f29Fa77f77DA6d75d7C752	101
https://polygonscan.com	/tx/	/address/	0xe26ed1470d5bf99a53d687843e7acdf7e4ba6620af93b4d672e714de90476e8e	0x720E1fa107A1Df39Db4E78A3633121ac36Bec132	102
https://explorer.rsk.co	/tx/	/address/	0xeb8fa0488a655f8dc975153bffd066800bcaae5f21cf372356365b2a1d6d2288	0x4e5dabc28e4a0f5e5b19fcb56b28c5a1989352c1	103
https://viewblock.io/thorchain	/tx/	/address/	ADF0899E58C177E2391F22D04E9C5E1C35BB0F75B42B363A0761687907FD9476	thor196yf4pq80hjrmz7nnh0ar0ypqg02r0w4dq4mzu	104
https://optimistic.etherscan.io	/tx/	/address/	0x6fd99288be9bf71eb002bb31da10a4fb0fbbb3c45ae73693b212f49c9db7df8f	0x1f932361e31d206b4f6b2478123a9d0f8c761031	105
https://zkevm.polygonscan.com	/tx/	/address/	\N	\N	106
https://explorer.zksync.io	/tx/	/address/	\N	\N	107
https://scrollscan.com	/tx/	/address/	0xee9196d6840c8d31626324d91c886d20e65711c2026c559133fb23741d3b2f9d	0xFE993660cd35d68D94b6Eba29F4D928d979cd65B	108
https://arbiscan.io	/tx/	/address/	0xa1e319be22c08155e5904aa211fb87df5f4ade48de79c6578b1cf3dfda9e498c	0xecf9ffa7f51e1194f89c25ad8c484f6bfd04e1ac	109
https://nova.arbiscan.io	/tx/	/address/	0xfdfee13848c2d21813c82c53afc9925f31770564c3117477960a81055702c1be	0x0d0707963952f2fba59dd06f2b425ace40b492fe	110
https://hecoinfo.com	/tx/	/address/	\N	\N	111
https://snowtrace.io	/tx/	/address/	0x9243890b844219accefd8798271052f5a056453ec18984a56e81c92921330d54	0xa664325f36Ec33E66323fe2620AF3f2294b2Ef3A	112
https://blockscout.com/xdai/mainnet	/tx/	/address/	0x936798a1ef607c9e856d7861b15999c770c06f0887c4fc1f6acbf3bef09899c1	0x12d61a95CF55e18D267C2F1AA67d8e42ae1368f8	113
https://ftmscan.com	/tx/	/address/	0xb0a741d882291951de1fac72e90b9baf886ddb0c9c87658a0c206490dfaa5202	0x9474feb9917b87da6f0d830ba66ee0035835c0d3	114
https://crypto.org/explorer	/tx/	/account/	D87D2EB46B21466886EE149C1DEA3AE6C2E019C7D8C24FA1533A95439DDCE1E2	cro10wrflcdc4pys9vvgqm98yg7yv5ltj7d3xehent	115
https://explorer.celo.org	/tx/	/address/	0xaf41ee58afe633dc7b179c15693cca40fe0372c1d7c70351620105d59d326693	0xFBFf95e2Fa7e4Ff3aeA34eFB05fB60F9968a6aaD	116
https://explorer.roninchain.com	/tx/	/address/	0xc09835aaf9c1cacea8ce322865583c791d3a4dfbd9a3b72f79539db88d3697ab	0xdc05ecd5fbdb64058d94f3182d66f44342b9adcb	117
https://mintscan.io/secret	/txs/	/account/	026B4886B1D9CE836A99755DDE99D4F8A7748D27B1CE9D298A763B1CFFF62C00	secret167m3s89ddurjpyr82vsluvvj0t8ylzn95trrqy	118
https://mintscan.io/osmosis	/txs/	/account/	5A6E50A6F2927E4B8C87BB094D5FBF15F1287429A09111806FC44B3CD86CACA8	osmo1mky69cn8ektwy0845vec9upsdphktxt0en97f5	119
https://explorer.bitcoinabc.org	/tx/	/address/	6bc767e69cfacffd954c9e5acd178d3140bf00d094b92c6f6052b517500c553b	ecash:pqnqv9lt7e5vjyp0w88zf2af0l92l8rxdg2jj94l5j	120
https://explorer.iost.io	/tx/	/account/	7dKQzgTkPBNrZqrQ2Bqhqq132CHGPKANFDtzRsjHRCqx	4av8w81EyzUgHonsVWqfs15WM4Vrpgox4BYYQWhNQDVu	121
https://cronoscan.com	/tx/	/address/	\N	\N	122
https://explorer.kava.io	/tx/	/address/	\N	\N	123
https://www.smartscan.cash	/tx/	/address/	0x6413466b455b17d03c7a8ce2d7f99fec34bcd338628bdd2d0580a21e3197a4d9	0xFeEc227410E1DF9f3b4e6e2E284DC83051ae468F	124
https://explorer.kcc.io/en	/tx/	/address/	0x2f0d79cd289a02f3181b68b9583a64c3809fe7387810b274275985c29d02c80d	0x4446fc4eb47f2f6586f9faab68b3498f86c07521	125
https://blockexplorer.boba.network	/tx/	/address/	0x31533707c3feb3b10f7deeea387ff8893f229253e65ca6b14d2400bf95b5d103	0x4F96F50eDB37a19216d87693E5dB241e31bD3735	126
https://andromeda-explorer.metis.io	/tx/	/address/	0x422f2ebbede32d4434ad0cf0ae55d44a84e14d3d5725a760133255b42676d8ce	0xBe9E8Ec25866B21bA34e97b9393BCabBcB4A5C86	127
https://aurorascan.dev	/tx/	/address/	0x99deebdb70f8027037abb3d3d0f3c7523daee857d85e9056d2671593ff2f2f28	0x8707cdE20dd43E3dB1F74c28fcd509ef38B0bA51	128
https://evm.evmos.org	/tx/	/address/	0x24af42cf4977a96d62e3a82c3cd9b519c3e7c53dd83398b88f0cb435d867b422	0x30627903124Aa1e71384bc52e1cb96E4AB3252b6	129
https://mintscan.io/evmos	/txs/	/account/	A16C211C83AD1E684DE46F694FAAC17D8465C864BD7385A81EC062CDE0638811	evmos17xpfvakm2amg962yls6f84z3kell8c5ljcjw34	130
https://moonriver.moonscan.io	/tx/	/address/	0x2e2daa3943ba65d9bbb910a4f6765aa6a466a0ef8935090547ca9d30e201e032	0x899831D937937d011305E73EE782cce0455DF15a	131
https://moonscan.io	/tx/	/address/	0xb22a146c933e6e51affbfa5f712a266b5f5e92ae453cd2f252bcc3c36ff035a6	0x201bb4f276C765dF7225e5A4153E17edD23a67eC	132
https://scope.klaytn.com	/tx/	/account/	0x93ea92687845fe7bb6cacd69c76a16a2a3c2bbb85a8a93ff0e032d0098d583d7	0x2ad9656bf5b82caf10847b431012e28e301e83ba	133
https://scan.meter.io	/tx/	/address/	0x8ea268d5dbb40217c763b800a75fc063cf28b56f40f2bc69dc043f5c4bbdc144	0xe5a273954d24eddf9ae9ea4cef2347d584cfa3dd	134
https://www.oklink.com/en/okc	/tx/	/address/	0x46C3A947E8248570FBD28E4FE456CC8F80DFD90716533878FB67857B95FA3D37	0x074faafd0b20fad2efa115b8ed7e75993e580b85	135
https://evm.confluxscan.net	/tx/	/address/	0x920efefb3213b2d6a3b84149cb50b61a813d085443a20e1b0eab74120e41ff72	0x337a087daef75c72871de592fbbba570829a936a	136
https://greenfieldscan.com	/tx/	/account/	0x150eac42070957115fd538b1f348fadd78d710fb641c248120efcf35d1e7e4f3	0xcf0f6b88ed72653b00fdebbffc90b98072cb3285	137
https://opbnbscan.com	/tx/	/address/	0x788ea8fb4a82dae957f1d3b18af3cd0bbde55a276e66bd17af8c869f24c03a0f	0x4eaf936c172b5e5511959167e8ab4f7031113ca3	138
https://explorer.rutanio.com/strax/explorer	/transaction/	/address/	3923df87e83859dec8b87a414cbb1529113788c512a4d0c283e1394c274f0bfb	XWqnSWzQA5kDAS727UTYtXkdcbKc8mEvyN	139
https://explorer.nebl.io	/tx/	/address/	1e56c745ab87d702c98eddc6bc2475b2eb292ed4af92d170b2362c8a089272a4	NboLGGKWtK5eXzaah5GVpXju9jCcoMi4cc	140
https://hashscan.io/mainnet	/transaction/	/account/	0.0.19790-1666769504-858851231	0.0.19790	141
https://atomscan.com/agoric	/transactions/	/accounts/	576224B1A0F3D56BA23C5350C2A0E3CEA86F40005B828793E5ACBC2F4813152E	agoric1cqvwa8jr6pmt45jndanc8lqmdsxjkhw0yertc0	142
https://www.mintscan.io/injective	/txs/	/account/	C5F6A4FF9DF1AE9FF543D2CEBD8E3E9B04290B2445F9D91D7707EDBF4B7EE16B	inj1xmpkmxr4as00em23tc2zgmuyy2gr4h3wgcl6vd	143
https://mintscan.io/canto	/txs/	/account/	7A7830270097AA9AC8B819EFBB8E0B56579F20ECB7615ECD37E19ABEEFB8DB83	canto17xpfvakm2amg962yls6f84z3kell8c5lz0zsl4	144
https://tonscan.org	/tx/	/address/	fJXfn0EVhV09HFuEgUHu4Cchb24nUQtIMwSzmzk2tLs=	EQCD39VS5jcptHL8vMjEXrzGaRcCVYto7HUn4bpAOg8xqB2N	145
https://neonscan.org	/tx/	/address/	0x77d86af2c6f02f14ef13ca52bf54864d92fcc4b32d8e884e225061c006738ed6	0xfa4a8650e7bebb918859c280a86f9661bed29877	146
\.


--
-- Data for Name: temp_info; Type: TABLE DATA; Schema: public; Owner: nn
--

COPY public.temp_info (url, source, rpc, documentation, id, client, "clientPublic", "clientDocs") FROM stdin;
https://bitcoin.org	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	0	\N	\N	\N
https://litecoin.org	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	1	\N	\N	\N
https://dogecoin.com	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	2	\N	\N	\N
https://dash.org	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	3	\N	\N	\N
https://viacoin.org	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	4	\N	\N	\N
https://www.groestlcoin.org	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	5	\N	\N	\N
https://www.digibyte.io	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	6	\N	\N	\N
https://monacoin.org	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	7	\N	\N	\N
https://decred.org	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	8	\N	\N	\N
https://syscoin.org	https://github.com/syscoin	https://sys1.bcfn.ca	https://docs.syscoin.org	9	\N	\N	\N
https://base.mirror.xyz/	https://github.com/base-org	https://mainnet.base.org	https://docs.base.org/	10	\N	\N	\N
https://linea.build	https://github.com/LineaLabs	https://rpc.linea.build	https://docs.linea.build	11	\N	\N	\N
https://www.mantle.xyz	https://github.com/mantlenetworkio	https://rpc.mantle.xyz	https://docs.mantle.xyz/network/introduction/overview	12	\N	\N	\N
https://eon.horizen.io	https://github.com/HorizenOfficial/eon	https://eon-rpc.horizenlabs.io/ethv1	https://eon.horizen.io/docs	13	\N	\N	\N
https://ethereum.org	https://github.com/ethereum/go-ethereum	https://mainnet.infura.io	https://eth.wiki/json-rpc/API	14	\N	\N	\N
https://ethereumclassic.org	https://github.com/ethereumclassic/go-ethereum	https://www.ethercluster.com/etc	https://eth.wiki/json-rpc/API	15	\N	\N	\N
https://icon.foundation	https://github.com/icon-project/icon-rpc-server	http://ctz.icxstation.com:9000/api/v3	https://www.icondev.io/docs/icon-json-rpc-v3	16	\N	\N	\N
https://vergecurrency.com	https://github.com/vergecurrency/verge		https://github.com/trezor/blockbook/blob/master/docs/api.md	17	\N	\N	\N
https://pivx.org	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	18	\N	\N	\N
https://www.horizen.io	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	19	\N	\N	\N
https://aptoslabs.com/	https://github.com/aptos-labs/aptos-core	https://fullnode.mainnet.aptoslabs.com/v1	https://fullnode.mainnet.aptoslabs.com/v1/spec#/	20	\N	\N	\N
https://sui.io/	https://github.com/MystenLabs/sui	https://fullnode.testnet.sui.io	https://docs.sui.io/	21	\N	\N	\N
https://cosmos.network	https://github.com/cosmos/cosmos-sdk	https://stargate.cosmos.network	https://cosmos.network/rpc	22	\N	\N	\N
https://www.stargaze.zone/	https://github.com/public-awesome/stargaze	https://stargaze-rpc.polkachu.com/	https://docs.stargaze.zone/guides/readme	23	\N	\N	\N
https://www.junonetwork.io/	https://github.com/CosmosContracts/juno	https://juno-rpc.polkachu.com	https://docs.junonetwork.io/juno/readme	24	\N	\N	\N
https://stride.zone/	https://github.com/Stride-Labs/stride	https://stride-rpc.polkachu.com/	https://docs.stride.zone/docs	25	\N	\N	\N
https://axelar.network/	https://github.com/axelarnetwork/axelar-core	https://axelar-rpc.polkachu.com	https://docs.axelar.dev/	26	\N	\N	\N
https://crescent.network/	https://github.com/crescent-network/crescent	https://crescent-rpc.polkachu.com	https://docs.crescent.network/introduction/what-is-crescent	27	\N	\N	\N
https://kujira.app/	https://github.com/Team-Kujira/core	https://kujira-rpc.polkachu.com	https://docs.kujira.app/introduction/readme	28	\N	\N	\N
https://comdex.one/	\N	\N	https://docs.comdex.one/	29	\N	\N	\N
https://neutron.org/	\N	\N	https://docs.neutron.org/	30	\N	\N	\N
https://www.sommelier.finance/	\N	\N	\N	31	\N	\N	\N
https://fetch.ai/	\N	\N	https://docs.fetch.ai/	32	\N	\N	\N
https://marsprotocol.io/	\N	\N	https://docs.marsprotocol.io/	33	\N	\N	\N
https://umee.cc/	\N	\N	https://umeeversity.umee.cc/developers/	34	\N	\N	\N
https://nobleassets.xyz/	\N	\N	\N	35	\N	\N	\N
https://sei.io/	\N	\N	https://docs.sei.io/	36	\N	\N	\N
https://www.coreum.com/	\N	\N	https://www.coreum.com/developers	37	\N	\N	\N
https://www.quasar.fi/	\N	\N	https://docs.quasar.fi/	38	\N	\N	\N
https://persistence.one/	\N	\N	https://docs.persistence.one/	39	\N	\N	\N
https://akash.network/	\N	\N	https://docs.akash.network/	40	\N	\N	\N
https://z.cash	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	41	\N	\N	\N
https://firo.org/	https://github.com/firoorg/firo		https://github.com/trezor/blockbook/blob/master/docs/api.md	42	\N	\N	\N
https://komodoplatform.com	https://github.com/KomodoPlatform/komodo		https://developers.komodoplatform.com	43	\N	\N	\N
https://ripple.com/xrp	https://github.com/ripple/rippled	https://s2.ripple.com:51234	https://xrpl.org/rippled-api.html	44	\N	\N	\N
https://bitcoincash.org	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	45	\N	\N	\N
https://stellar.org	https://github.com/stellar/go	https://horizon.stellar.org	https://www.stellar.org/developers/horizon/reference	46	\N	\N	\N
https://bitcoingold.org	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	47	\N	\N	\N
https://nano.org	https://github.com/nanocurrency/nano-node		https://docs.nano.org/commands/rpc-protocol/	48	\N	\N	\N
https://ravencoin.org	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	49	\N	\N	\N
https://poa.network	https://github.com/poanetwork/parity-ethereum	https://core.poa.network	https://eth.wiki/json-rpc/API	50	\N	\N	\N
http://eos.io	https://github.com/eosio/eos		https://developers.eos.io/eosio-nodeos/reference	51	\N	\N	\N
http://wax.io	https://github.com/worldwide-asset-exchange/wax-blockchain	https://wax.blacklusion.io	https://https://developer.wax.io	52	\N	\N	\N
https://tron.network	https://github.com/tronprotocol/java-tron	https://api.trongrid.io	https://developers.tron.network/docs/tron-wallet-rpc-api	53	\N	\N	\N
https://fioprotocol.io	https://github.com/fioprotocol/fio	https://mainnet.fioprotocol.io	https://developers.fioprotocol.io	54	\N	\N	\N
https://nimiq.com	https://github.com/nimiq/core-rs		https://github.com/nimiq/core-js/wiki/JSON-RPC-API	55	\N	\N	\N
https://www.algorand.com/	https://github.com/algorand/go-algorand	https://indexer.algorand.network	https://developer.algorand.org/docs/algod-rest-paths	56	\N	\N	\N
https://iotex.io	https://github.com/iotexproject/iotex-core		https://docs.iotex.io/#api	57	\N	\N	\N
https://iotex.io/	\N	\N	https://iotex.io/developers	58	\N	\N	\N
https://nervos.org	https://github.com/nervosnetwork/ckb	https://mainnet.ckb.dev/rpc	https://github.com/nervosnetwork/rfcs	59	\N	\N	\N
https://zilliqa.com	https://github.com/Zilliqa/Zilliqa	https://api.zilliqa.com	https://apidocs.zilliqa.com	60	\N	\N	\N
https://terra.money	https://github.com/terra-project/core	https://columbus-fcd.terra.dev	https://docs.terra.money	61	\N	\N	\N
https://terra.money	https://github.com/terra-project/core	https://phoenix-lcd.terra.dev	https://docs.terra.money	62	\N	\N	\N
https://polkadot.network/	https://github.com/paritytech/polkadot		https://polkadot.js.org/api/substrate/rpc.html	63	\N	\N	\N
https://everscale.network/	https://github.com/tonlabs/evernode-ds	https://evercloud.dev	https://docs.everos.dev/evernode-platform/products/evercloud/get-started	64	\N	\N	\N
https://nearprotocol.com	https://github.com/nearprotocol/nearcore	https://rpc.nearprotocol.com	https://docs.nearprotocol.com	65	\N	\N	\N
https://aion.network	https://github.com/aionnetwork/aion		https://github.com/aionnetwork/aion/wiki/JSON-RPC-API-Docs	66	\N	\N	\N
https://kusama.network	https://github.com/paritytech/polkadot	wss://kusama-rpc.polkadot.io/	https://polkadot.js.org/api/substrate/rpc.html	67	\N	\N	\N
https://acala.network	https://github.com/AcalaNetwork/Acala	wss://acala-rpc.dwellir.com	https://polkadot.js.org/api/substrate/rpc.html	68	\N	\N	\N
https://acala.network	https://github.com/AcalaNetwork/Acala	https://eth-rpc-acala.aca-api.network	https://polkadot.js.org/api/substrate/rpc.html	69	\N	\N	\N
https://aeternity.com	https://github.com/aeternity/aeternity	https://sdk-mainnet.aepps.com	http://aeternity.com/api-docs/	70	\N	\N	\N
https://kava.io	https://github.com/kava-labs/kava	https://data.kava.io	https://rpc.kava.io	71	\N	\N	\N
https://filecoin.io/	https://github.com/filecoin-project/lotus		https://docs.lotu.sh	72	\N	\N	\N
https://bluzelle.com	https://github.com/bluzelle	https://bluzelle.github.io/api/	https://docs.bluzelle.com/developers/	73	\N	\N	\N
https://bandprotocol.com/	https://github.com/bandprotocol/bandchain	https://api-wt2-lb.bandchain.org	https://docs.bandchain.org/	74	\N	\N	\N
https://www.thetatoken.org	https://github.com/thetatoken/theta-protocol-ledger		https://github.com/thetatoken/theta-mainnet-integration-guide/blob/master/docs/api.md#api-reference	75	\N	\N	\N
https://www.thetatoken.org	https://github.com/thetatoken/theta-protocol-ledger	https://eth-rpc-api.thetatoken.org/rpc	https://github.com/thetatoken/theta-mainnet-integration-guide/blob/master/docs/api.md#api-reference	76	\N	\N	\N
https://solana.com	https://github.com/solana-labs/solana	https://api.mainnet-beta.solana.com	https://docs.solana.com	77	\N	\N	\N
https://multiversx.com/	https://github.com/multiversx/mx-chain-go	https://api.multiversx.com	https://docs.multiversx.com	78	\N	\N	\N
https://www.bnbchain.org	https://github.com/bnb-chain/node-binary	https://dex.binance.org	https://docs.bnbchain.org/docs/beaconchain/develop/api-reference/dex-api/paths	79	\N	\N	\N
https://www.bnbchain.org	https://github.com/bnb-chain/node-binary	https://testnet-dex.binance.org	https://docs.bnbchain.org/docs/beaconchain/develop/api-reference/dex-api/paths-testnet	80	\N	\N	\N
https://vechain.org	https://github.com/vechain/thor		https://doc.vechainworld.io/docs	81	\N	\N	\N
https://callisto.network	https://github.com/EthereumCommonwealth/go-callisto	https://clo-geth.0xinfra.com	https://eth.wiki/json-rpc/API	82	\N	\N	\N
https://neo.org	https://github.com/neo-project/neo	http://seed1.ngd.network:10332	https://neo.org/eco	83	\N	\N	\N
https://tomochain.com	https://github.com/tomochain/tomochain	https://rpc.tomochain.com	https://eth.wiki/json-rpc/API	84	\N	\N	\N
https://www.bitcoindiamond.org	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	85	\N	\N	\N
https://thundercore.com	https://github.com/thundercore/pala	https://mainnet-rpc.thundercore.com	https://eth.wiki/json-rpc/API	86	\N	\N	\N
https://harmony.one	https://github.com/harmony-one/go-sdk		https://docs.harmony.one/home/harmony-networks/harmony-network-overview/mainnet	87	\N	\N	\N
https://oasisprotocol.org/	https://github.com/oasisprotocol/oasis-core	https://rosetta.oasis.dev/api/v1	https://docs.oasis.dev/oasis-core/	88	\N	\N	\N
https://ont.io	https://github.com/ontio/ontology	http://dappnode1.ont.io:20336	https://github.com/ontio/ontology/blob/master/docs/specifications/rpc_api.md	89	\N	\N	\N
https://tezos.com	https://gitlab.com/tezos/tezos	https://rpc.tulip.tools/mainnet	https://tezos.gitlab.io/tezos/api/rpc.html	90	\N	\N	\N
https://www.cardano.org	https://github.com/input-output-hk/cardano-sl		https://cardanodocs.com/introduction/	91	\N	\N	\N
https://www.kin.org	https://github.com/kinecosystem/go	https://horizon.kinfederation.com	https://www.stellar.org/developers/horizon/reference	92	\N	\N	\N
https://qtum.org	https://github.com/trezor/blockbook		https://github.com/trezor/blockbook/blob/master/docs/api.md	93	\N	\N	\N
https://nebulas.io	https://github.com/nebulasio/go-nebulas	https://mainnet.nebulas.io	https://wiki.nebulas.io/en/latest/dapp-development/rpc/rpc.html	94	\N	\N	\N
https://gochain.io	https://github.com/gochain-io/gochain	https://rpc.gochain.io	https://eth.wiki/json-rpc/API	95	\N	\N	\N
https://nuls.io	https://github.com/nuls-io/nuls-v2	https://public1.nuls.io/	https://docs.nuls.io/	96	\N	\N	\N
https://runonflux.io	https://github.com/trezor/blockbook	https://blockbook.runonflux.io	https://github.com/trezor/blockbook/blob/master/docs/api.md	97	\N	\N	\N
https://wanchain.org	https://github.com/wanchain/go-wanchain		https://eth.wiki/json-rpc/API	98	\N	\N	\N
https://wavesplatform.com	https://github.com/wavesplatform/Waves	https://nodes.wavesnodes.com	https://nodes.wavesnodes.com/api-docs/index.html	99	\N	\N	\N
https://www.binance.org/en/smartChain	https://github.com/binance-chain/bsc	https://data-seed-prebsc-1-s1.binance.org:8545	https://eth.wiki/json-rpc/API	100	\N	\N	\N
https://www.binance.org/en/smartChain	https://github.com/binance-chain/bsc	https://bsc-dataseed1.binance.org	https://eth.wiki/json-rpc/API	101	\N	\N	\N
https://polygon.technology	https://github.com/maticnetwork/contracts	https://polygon-rpc.com	https://eth.wiki/json-rpc/API	102	\N	\N	\N
https://rootstock.io	https://github.com/rsksmart/rskj	https://public-node.rsk.co	https://dev.rootstock.io	103	\N	\N	\N
https://thorchain.org	https://gitlab.com/thorchain/thornode	https://seed.thorchain.info	https://docs.thorchain.org	104	\N	\N	\N
https://optimism.io/	https://github.com/ethereum-optimism/optimism	https://mainnet.optimism.io	https://eth.wiki/json-rpc/API	105	\N	\N	\N
https://www.polygon.technology/	https://github.com/0xpolygonhermez	https://zkevm-rpc.com	https://wiki.polygon.technology/docs/zkEVM/introduction/	106	\N	\N	\N
https://portal.zksync.io/	https://github.com/matter-labs/zksync	https://zksync2-mainnet.zksync.io	https://era.zksync.io/docs	107	\N	\N	\N
https://scroll.io	https://github.com/scroll-tech	https://rpc.scroll.io	https://guide.scroll.io	108	\N	\N	\N
https://arbitrum.io	https://github.com/OffchainLabs/arbitrum	https://arb1.arbitrum.io/rpc	https://docs.arbitrum.io/	109	\N	\N	\N
https://nova.arbitrum.io	https://github.com/OffchainLabs/arbitrum	https://nova.arbitrum.io/rpc	https://docs.arbitrum.io/	110	\N	\N	\N
https://www.hecochain.com/en-us	https://github.com/HuobiGroup/huobi-eco-chain	https://http-mainnet-node.huobichain.com	https://eth.wiki/json-rpc/API	111	\N	\N	\N
https://www.avalabs.org/	\N	\N	\N	112	https://github.com/ava-labs/avalanchego	https://api.avax.network/ext/bc/C/rpc	https://docs.avax.network/
https://www.xdaichain.com	\N	\N	\N	113	https://github.com/openethereum/openethereum	https://rpc.gnosischain.com	https://eth.wiki/json-rpc/API
https://fantom.foundation	\N	\N	\N	114	https://github.com/openethereum/openethereum	https://rpc.ftm.tools	https://eth.wiki/json-rpc/API
https://crypto.org/	\N	\N	\N	115	https://github.com/crypto-org-chain/chain-main	https://mainnet.crypto.org:1317/	https://crypto.org/docs/resources/chain-integration.html#api-documentation
https://celo.org	\N	\N	\N	116	https://github.com/celo-org/celo-blockchain	https://forno.celo.org	https://eth.wiki/json-rpc/API
https://whitepaper.axieinfinity.com/technology/ronin-ethereum-sidechain	\N	\N	\N	117	https://github.com/axieinfinity/ronin-smart-contracts	https://api.roninchain.com/rpc	https://eth.wiki/json-rpc/API
https://scrt.network/	https://github.com/scrtlabs/SecretNetwork	https://scrt-rpc.blockpane.com/	https://docs.scrt.network/	118	\N	\N	\N
https://osmosis.zone/	\N	\N	\N	119	https://github.com/osmosis-labs/osmosis	https://rpc-osmosis.keplr.app/	
https://e.cash	https://github.com/trezor/blockbook	https://blockbook.fabien.cash:9197	https://github.com/trezor/blockbook/blob/master/docs/api.md	120	\N	\N	\N
https://iost.io	https://github.com/iost-official/go-iost		https://developers.iost.io/docs/en/6-reference/API.html	121	\N	\N	\N
https://cronos.org	\N	\N	\N	122	https://github.com/crypto-org-chain/cronos	https://evm-cronos.crypto.org	https://eth.wiki/json-rpc/API
https://www.kava.io/	\N	https://evm.kava.io	https://docs.kava.io/docs/ethereum/overview/	123	https://github.com/Kava-Labs/kava	\N	\N
https://smartbch.org/	https://github.com/smartbch/smartbch	https://smartbch.fountainhead.cash/mainnet	https://github.com/smartbch/docs/blob/main/developers-guide/jsonrpc.md	124	\N	\N	\N
https://www.kcc.io/	https://github.com/kcc-community/kcc	https://rpc-mainnet.kcc.network	https://docs.kcc.io/#/en-us/	125	\N	\N	\N
https://boba.network/	https://github.com/bobanetwork/boba	https://mainnet.boba.network	https://docs.boba.network/	126	\N	\N	\N
https://www.metis.io/	https://github.com/MetisProtocol/mvm	https://andromeda.metis.io/?owner=1088	https://docs.metis.io/	127	\N	\N	\N
https://aurora.dev/	https://github.com/aurora-is-near/aurora-engine	https://mainnet.aurora.dev/	https://doc.aurora.dev/	128	\N	\N	\N
https://evmos.org/	https://github.com/tharsis/evmos	https://eth.bd.evmos.org:8545	https://docs.evmos.org/	129	\N	\N	\N
https://evmos.org/	\N	\N	\N	130	https://github.com/tharsis/evmos	https://rest.bd.evmos.org:1317	
https://moonbeam.network/networks/moonriver	\N	https://moonriver.public.blastapi.io	\N	131	\N	\N	\N
https://moonbeam.network	\N	https://rpc.api.moonbeam.network	https://docs.moonbeam.network	132	\N	\N	\N
https://klaytn.foundation	\N	https://public-node-api.klaytnapi.com/v1/cypress	https://docs.klaytn.foundation	133	\N	\N	\N
https://meter.io/	https://github.com/meterio/meter-pov	https://rpc.meter.io	https://docs.meter.io/	134	\N	\N	\N
https://www.okx.com/okc	https://github.com/okex/exchain	https://exchainrpc.okex.org	https://okc-docs.readthedocs.io/en/latest	135	\N	\N	\N
https://confluxnetwork.org	https://github.com/conflux-chain	https://evm.confluxrpc.com	https://doc.confluxnetwork.org/docs/espace	136	\N	\N	\N
https://greenfield.bnbchain.org	https://github.com/bnb-chain/greenfield	https://gnfd-testnet-fullnode-tendermint-us.bnbchain.org	https://docs.bnbchain.org/greenfield-docs	137	\N	\N	\N
https://opbnb.bnbchain.org/en	https://github.com/bnb-chain/opbnb	https://opbnb-mainnet-rpc.bnbchain.org	https://docs.bnbchain.org/opbnb-docs	138	\N	\N	\N
https://www.stratisplatform.com/	https://github.com/stratisproject		https://academy.stratisplatform.com/index.html	139	\N	\N	\N
https://nebl.io	https://github.com/NeblioTeam		https://github.com/NeblioTeam	140	\N	\N	\N
https://hedera.com/	https://github.com/hashgraph	\N	https://docs.hedera.com	141	\N	\N	\N
https://agoric.com	https://github.com/Agoric/agoric-sdk	https://agoric-rpc.polkachu.com	https://docs.agoric.com	142	\N	\N	\N
https://injective.com	\N	\N	https://docs.injective.network	143	\N	\N	\N
https://canto.io/	\N	\N	https://docs.canto.io/	144	\N	\N	\N
https://ton.org	https://github.com/ton-blockchain	https://toncenter.com/api/v2/jsonRPC	https://ton.org/docs	145	\N	\N	\N
https://neonevm.org	https://github.com/neonevm/neon-evm	https://neon-proxy-mainnet.solana.p2p.org/	https://docs.neonfoundation.io/docs/quick_start	146	\N	\N	\N
\.


--
-- PostgreSQL database dump complete
--

