'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"main.dart.js": "02358531add1120796782ea031b8a6ad",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
".git/logs/refs/heads/flutter": "067a326850ae46c43c92e9664139c8f1",
".git/logs/refs/remotes/flutter/flutter": "4c3f03ad9df8bdcbea26f5205237cb31",
".git/logs/HEAD": "067a326850ae46c43c92e9664139c8f1",
".git/index": "a70842dfe95d0ec8502cbb5546cdb554",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/9d/5f886353dcff6c222439cc1118e77eb1b007ea": "a87ff240c6e149d1ce495643e49417f9",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/e2/ff5865b192241d53935e77de70a4e6dff2847a": "cad1058aedc6c21a518b3cb00af21fac",
".git/objects/e2/7bb1dc72d87ab02c39daa0234d658c4e855ef1": "a7a6b9c89b51cbca128909b6c756407e",
".git/objects/08/4d1b67a7d377263ea26b73a0e2759503cc6442": "b2f06c8db70afc23e5cc80d54fcc5e44",
".git/objects/e5/70bc5e9dce9ced503b6c1229d45a6a74ce70b8": "afa95e016e0438c8ef4d71e6f9e22e5b",
".git/objects/4b/ccc51ae4b0fa7d87daf01ee472f22eaea4a684": "366c3fb659fc09350590841a633d393e",
".git/objects/2b/8aadcec9ab2c64ac8bfefa05be6a1867f44b54": "820aefd5b371eb5a163ca1720a5a5b94",
".git/objects/f6/425e363e124ffe982c888977582ac62305ede1": "8bf278b435d6f68d67c021a1f1206c55",
".git/objects/1f/6aaf5655a3f13d22d5caebe8a8e4a99156e218": "ad2f1bbad31172459b9f4af1e0326eac",
".git/objects/c8/3dbc0fcf5c6e4dbf8312c5e3a649eee8a35eea": "b9778adba89acf03761f97b8db6374a8",
".git/objects/45/67b1969bdca941077ad2bf82f9f25dd742e1d6": "8b0c94ed2e3b03a21b031dd1ed502966",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/ef/a0a0cdb020b5052778f4466516710e16e848e1": "f8ed774798da0fa437952a3f42fbca31",
".git/objects/9a/a5e1aad9be709bcad496b6f35844a0d0f4e68e": "0f7eae14122c21546b36cf6a6d36c566",
".git/objects/9a/bf0b76a49e4b52b96d52c620b58f3ccfdd1cce": "931712876903e581b886fa59805a36de",
".git/objects/34/52343c8e3056f5740ddd98e0546667a3e2197f": "e7854ddc9807d977032d9416ac27cfe2",
".git/objects/e0/49c81f7cb35ebc411a3e1b547bf4ccf91292e8": "efad70dc0ca77a90ee53b5cc3be528ca",
".git/objects/5a/e9995e50fb89d7b81f18dba47a3593acf018f9": "a2dcaf5e68c9f145bc03e39f63b49d01",
".git/objects/89/27a244135ebad3aa1341c46ef7b79a59fadd62": "7f0b6440ceb5fdc97c0535caf593aaf0",
".git/objects/7e/257a1de2f900083627a2522d9abf1c6f4f26cc": "278014ffa5df9ba77bd5923aaddaf827",
".git/objects/aa/e400a371e215f1e035b7e2322d40d9eab5d0db": "21084f799abba8bff4f3d8324bc8e48b",
".git/objects/aa/9356900056f523c2df24b466fd5b53f80097ac": "d857f9d18d0e2fd6d66fb7285ca64f92",
".git/objects/e9/4dbfb2800f99addf2de79a4f915bc5f6b0587c": "d09a5e6aff78c253f3cf4528450a6886",
".git/objects/77/ed8bfdd16392264e508f2253c0eecd49d7c0bb": "714dd158c0db9a7bc1d531379a33d9ec",
".git/objects/37/f0a7b8d8be7488879b1f8d844b1d7565810ae5": "082f9748f934651a76155c3862a20437",
".git/objects/dd/512e5c40732d1736b1e2c04f6c96eaa85d9179": "d5adb8b2a03e7e8ffa560fb1d5f4623c",
".git/objects/c2/d8d2f44dd987786bbc249d4ad7bac3360f4811": "1926a57b256d9def261ccf6dc2914f65",
".git/objects/ab/4a10ef3e8cedd6f7663dc166a1cd217b08f6e3": "af713d6186ad1da2c94c9a250826d35e",
".git/objects/fc/de1bb3df8c330568f07ef326d43d8ae3562897": "6e5bf2450330342c243afc3723b9c27e",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/33/f7d21f18a652bc596b86ad5590c6808eb9d8f9": "06d501bcb1bf533ec8fb4646dde67cc8",
".git/objects/cb/9151ddc1a0066f901395badc3c2cfe5c9f0567": "9164759a08183dad116dcab6a86715cd",
".git/objects/bc/aaba46ed9d26a9e538b234ccc99aa7328d3cf5": "0c15857d1936925a6c17d2b977af7a5c",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/0c/f150b6818a2d548f46276db3f7aa567dbf4a16": "b1791e23869e1aa830180e8f3da19d49",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8a/5d6e8bf635dee7f41815636791be3473b9986c": "4898a9fadc097ace047f04f3a06b040a",
".git/objects/5b/41d09e197cd8b58b21ed6a07638208a9e9d4a2": "9844f94b1caf477fcbf212c90af31afe",
".git/objects/5b/0ff238c505a7ae2a23b8ff909c240656661dc0": "5abb8b72aac8545bf22eff2ecadcff1d",
".git/objects/72/117bb378bc02f67a2d74650e421f897e5a4217": "bd0de4096fe00991410476f38599f7a7",
".git/objects/d5/b54bd4a898b373f82bb1fa52b9580e7a976e3e": "943e27e1d359e2bc22daf20c70287c19",
".git/objects/a4/c252540fb4c967283948155254a6c7b0498d89": "eb2082e44348460b88c325d3a2f2023a",
".git/objects/79/6a7b331c8e9b7b129935ee862840835d374e14": "38daf7559531ec17d5b6612c7a0e62f8",
".git/objects/df/7d2dcb89ab89da87467c0e1059b38c8d8f9296": "a44162ff357b024e4638ab18a9bb01c7",
".git/objects/19/e3661183a333bba4faf2b549d724d314bbe6b2": "f05d70001338e23506c0e697169f76ea",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/9f/d6743e96fb09ff34d3194a7b493d94b8453f18": "bba8c6500105e1919d4ec2d26bc4f54b",
".git/objects/c1/cd29f37dd0eb41fd3696ec0f153e34bdc0ec73": "7fb1f694cb580069009a6e12019f5f00",
".git/objects/3e/ce9ee94e176d4806b3ce8840c6ecd07059dd6c": "3c6e3fd9eda26c4d0d5f7bdb5f7a9e7f",
".git/objects/d7/2c11112c7cb4e2ce754bc41470f9b829a2d00a": "d7280a766a5d6033f187d874a92b5ad6",
".git/objects/75/3e1d402913dcc9d48e7b42189abea681fdc4a0": "a84986aaf37831415295d9add1c87d1c",
".git/objects/0a/ed7a7e64c5a963fb5a749fac5dcb2ff2c7e838": "441febe1899be24ced28069df3ac04d0",
".git/objects/43/7fda5dcdc7ae8a27803c4f9d988b891fc470d1": "954772a190f32182c4ac82ca8d7ef7bf",
".git/objects/e6/46d591f99adb142edab348e5d728ad2bddc4a3": "7630b34441d494db3bf4d884cd250e72",
".git/objects/e6/08ba0c018185b5572dfcedeb2927b1d9043c18": "0878cb1f5905603d2ffc5fc4f75d9abf",
".git/objects/e6/b745f90f2a4d1ee873fc396496c110db8ff0f3": "2933b2b2ca80c66b96cf80cd73d4cd16",
".git/objects/16/091b349202d5b1894cec869023544be1bf1692": "9acc251169f0bc30fec151602d15190e",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/97/badae9dcc70842c8e41d50597ff27c951fd280": "9e509bf4e66118fa12561145d190e349",
".git/objects/94/694231b2c9c83839e25d55caced795c0085cbe": "28066066e8fe1c98c371681504e4eb93",
".git/objects/3d/b43b355d072035c93adbef38d087eafe6c72e8": "a73c5caf1d92ff3334511a61f5098c8e",
".git/objects/15/034cba708d71558c0ae0b45f5bb94ef22bdaa7": "ba070f9d5b14cc9940ab9e1ca86d7c1f",
".git/objects/c6/27a52ff0b60e9672e1fa8e95b536de32c8a403": "a8da984d044482949afbd36e12d14310",
".git/objects/d9/50d5964bc9e3325d3054e0d27f380b402dcd07": "f5ba381b8cb67ce775ce6888ca93ef2e",
".git/objects/d9/f5d376bc4490cfcad96ae11197a96cc3e4395f": "93d9857dc1ddf43d21b3d8d3d7b351e7",
".git/objects/4f/d5ee01d5c76937d65e66964b7ec00ee03dede0": "1dbe536500cf70f644303936e537ef54",
".git/objects/8e/3259f888d44a06db805a506a47da06a4ac8ce3": "07a7767cecdbd708e60fe616ef39606c",
".git/objects/fd/b6ab6b9ed8d26a9d3940fece5e06c93058eeed": "7be8408a918a92f120b4e99e43b8913f",
".git/objects/fd/b4f4a2d68a6faced07a4f225fb98e73c41fbdb": "6545ceb7fb0bb07b5b262282d730f652",
".git/objects/53/7807567919e88db2866b7825339c57e94c24d8": "970aec5149a3dbe9370a9dc982cdd022",
".git/objects/d2/95fd52d0343565abdbc84abec859772aeafc56": "a046665bf06f113d7ccc40ac085ccfa5",
".git/objects/d0/9b9f2ae5e8787eec77333a0d9f7e3d44f11b5c": "d6a4e98ad7ae7e935ff759a063f99027",
".git/objects/44/f994163d1fd03885c174f9b96ddac4069e8cba": "5a09ebd48f1c33c28e89c280e66912e6",
".git/objects/b1/763e259eaebf270e5cd79f26e3c9e8971103cb": "ee50ab99115a4ddbc0662fd1219e3614",
".git/objects/b1/c5472fa56990490d7be6cc2e04c975116f9cc1": "f483ce3ea1ff3172fb0159e7188f58cd",
".git/objects/a5/e09b14e5e13f5edb4163079d70e43369ffce61": "11a20ab7ad384cc80ee55c4382159f3d",
".git/objects/a5/1442b52b416b756c37e91c9a67a4117a7f9108": "72829207fc9febd7850f8c5ba29adb17",
".git/objects/a5/b5159c13d004165a3dc55912db8d2739c3d8b2": "dc2024ed76d575c32e794eb12282241c",
".git/objects/13/b0090e5ffa793e9884489b03c8ae36c8964e78": "2c818b68fb97fe36681211b91a3be2ee",
".git/objects/20/c6fafa190ff9a6ca435c5109d2b265021c08af": "857cf8639e18e3d8e421d3b49730bd02",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/04/c0647330e2baa5b099c919fc692ae53769db1f": "cef642d861b649f5c71e68df22e4cedb",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/e3/cc9e2e87a7adf0a92d490e967f14aaf17c1a4c": "fcdedf2b01d2f2f5a58f7e5a6a43c8c4",
".git/objects/a9/67affe836deeba6feec8e39e385d3197f4c2ea": "3747c1bdc58c7e4e5ff7f4d4a8de05e4",
".git/objects/29/cdb1f3febe3b1577ca5fb6fb88bf1f9b7e8bf6": "cef77efaffd0b0fa38e1a7aa64935c2c",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/config": "b495830d3729d8f442d194e0da4d6dd6",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/refs/heads/flutter": "f7ba339acfcebe34363c68b3027674af",
".git/refs/remotes/flutter/flutter": "f7ba339acfcebe34363c68b3027674af",
".git/HEAD": "201d72960d5a162657a240af59baacfd",
".git/COMMIT_EDITMSG": "58c3a03960b7133d8f6f041ab316466a",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
"canvaskit/canvaskit.wasm": "d9f69e0f428f695dc3d66b3a83a4aa8e",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"canvaskit/canvaskit.js": "5caccb235fad20e9b72ea6da5a0094e6",
"canvaskit/chromium/canvaskit.wasm": "393ec8fb05d94036734f8104fa550a67",
"canvaskit/chromium/canvaskit.js": "ffb2bb6484d5689d91f393b60664d530",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/AssetManifest.bin": "33079fa39a75d505d5323e62e1ffaee6",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/images/027.jpg": "23ff53ffd29a369391263621e9dcaf04",
"assets/images/022.jpg": "41c58b5e7759d27a9cc3c303650215b3",
"assets/images/044.jpg": "e4fbe309e99e4a48792042794c34f2c9",
"assets/images/007.jpg": "0c615644b9eceed52576ea829d42716e",
"assets/images/006.jpg": "3b26636ed1394bfaaa7e588635be51ca",
"assets/images/034.jpg": "e6010762ffda7e6df4c9b79550740581",
"assets/images/033.jpg": "bc8beaa99fe9066f0df6a95ec9ec4c94",
"assets/images/038.jpg": "39dafe4332b0500c51cd2bcb67ff78ea",
"assets/images/014.jpg": "5f39e9150c4b98e4b95afcaaef0e575b",
"assets/images/040.jpg": "4e8ae3a1e423473d41de4da1a387871b",
"assets/images/030.jpg": "f199358b3b39bd1a305a883a4bc611da",
"assets/images/010.jpg": "4ca81f157e65547ab74fbef3d8ae974e",
"assets/images/041.jpg": "bb17de4b3cc4826d83c06084bbb8dc4d",
"assets/images/043.jpg": "b8ba793058adbed55efb9992c19ece60",
"assets/images/011.jpg": "1ebce699dc1fab130f5b3b8c3706877d",
"assets/images/035.jpg": "753af92bec9abe74952f5ed623df477e",
"assets/images/031.jpg": "20ea119748094a1e8b368fb7b60a48fe",
"assets/images/017.jpg": "218bdcb31efacdc4ed73144573f8b4ed",
"assets/images/029.jpg": "3343e81da6d3581f67e802d01c3c240a",
"assets/images/039.jpg": "2760a8109502e9f331ccddb3373f3760",
"assets/images/045.jpg": "6de640959be6e37f464ed7c7765cea56",
"assets/images/025.jpg": "0eba0c8d4988b469c9fbf8b7d6f4d673",
"assets/images/003.jpg": "1a6f8c4fac31b4b96edd0f9b57b3c533",
"assets/images/008.jpg": "17fd4a5aee64f76e70ac7bccdde51afc",
"assets/images/000.jpg": "fdba560353bd21275dfb8e03e95d4270",
"assets/images/037.jpg": "db58ae5ded987b9734526bb0c06d9f07",
"assets/images/018.jpg": "86611e6ddf56ddcca508f6634dc7f3ed",
"assets/images/013.jpg": "bb5b23cf29e62ddf83727a294e35df15",
"assets/images/020.jpg": "7285540538b846477ee55246500622a6",
"assets/images/021.jpg": "ec118d04ca0509add23784ca6e5620aa",
"assets/images/036.jpg": "cc88ca52c9757f6bf54fd7ea46b0b025",
"assets/images/015.jpg": "9ecc0b83096dcb8d5c3c873b95c46f12",
"assets/images/012.jpg": "847686627c7cdf4e6acc01b2930c8460",
"assets/images/032.jpg": "26bc4640696a7b7b1a70a33e37fff7f3",
"assets/images/001.jpg": "420b138d84b873ddf275916f9eb19d48",
"assets/images/028.jpg": "651deb5e1119e21db733247f16d936cb",
"assets/images/004.jpg": "c61545849f433585d205c2c7db8b8a10",
"assets/images/024.jpg": "dbab73158f0fd7b5b50b5ae682527ba3",
"assets/images/005.jpg": "0824787818c6375ba6910ca881e569f4",
"assets/images/042.jpg": "889b92e3f2468ce0a8f133a91bb6206e",
"assets/images/019.jpg": "bce76634be7c1923b150b94829817262",
"assets/images/026.jpg": "22e3dc37b248fc13f2f07cdc712b5338",
"assets/images/009.jpg": "51eb1cac69bbd1bbdf7bc4b7015a791c",
"assets/images/016.jpg": "d83afdd27c401a9acebef9eef4e36cbc",
"assets/images/023.jpg": "0b2ea62df137e0a0cbf7e3d338844ad7",
"assets/images/002.jpg": "5b39798793fc4859b00ca7c0e609da4f",
"assets/NOTICES": "c3ec01a5e7d9615fb73f49f2a73f9d4b",
"assets/AssetManifest.json": "49948dc50d945f050f7e46fbbdb39372",
"assets/fonts/MaterialIcons-Regular.otf": "09cd32ad278c6cdc902f72695fce7e75",
"version.json": "4fb9a688b248ba2734bcc604071b78fb",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"index.html": "bf77c551db49b75c3cf2e7bba8cff217",
"/": "bf77c551db49b75c3cf2e7bba8cff217",
"manifest.json": "5862370432577887084f2d2324018366"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
