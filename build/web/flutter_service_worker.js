'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"main.dart.js": "fa96050ba1bad2b372fdbd6679b1f5a3",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
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
"index.html": "902d24a2c91ca4bec5cf086601cda411",
"/": "902d24a2c91ca4bec5cf086601cda411",
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
