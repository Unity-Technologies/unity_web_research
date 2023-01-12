struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_23 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat18 : f32;
  var u_xlat19 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat14 : f32;
  var u_xlat20 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat21 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_306 : f32;
  var x_319 : f32;
  var u_xlatb20 : bool;
  var x_372 : f32;
  var x_392 : f32;
  var x_401 : f32;
  var x_419 : f32;
  var x_431 : f32;
  var u_xlat5 : vec2<f32>;
  var u_xlati2 : i32;
  var u_xlati15 : vec2<i32>;
  var x_572 : f32;
  var x_591 : f32;
  var u_xlati10 : vec3<i32>;
  var u_xlati20 : i32;
  var u_xlat10 : vec3<f32>;
  var x_628 : f32;
  var x_648 : f32;
  var x_717 : f32;
  var x_735 : f32;
  var x_765 : f32;
  var x_784 : f32;
  var u_xlati5 : vec2<i32>;
  var x_814 : f32;
  var x_834 : f32;
  var x_903 : f32;
  var x_921 : f32;
  var x_951 : f32;
  var x_970 : f32;
  var x_999 : f32;
  var x_1019 : f32;
  var x_1088 : f32;
  var x_1106 : f32;
  var x_1136 : f32;
  var x_1155 : f32;
  var x_1184 : f32;
  var x_1204 : f32;
  var x_1273 : f32;
  var x_1291 : f32;
  var x_1321 : f32;
  var x_1340 : f32;
  var x_1369 : f32;
  var x_1389 : f32;
  var x_1458 : f32;
  var x_1476 : f32;
  var x_1506 : f32;
  var x_1525 : f32;
  var x_1554 : f32;
  var x_1574 : f32;
  var x_1643 : f32;
  var x_1661 : f32;
  var x_1691 : f32;
  var x_1710 : f32;
  var x_1739 : f32;
  var x_1759 : f32;
  var x_1828 : f32;
  var x_1846 : f32;
  var x_1876 : f32;
  var x_1895 : f32;
  var x_1924 : f32;
  var x_1944 : f32;
  var x_2013 : f32;
  var x_2031 : f32;
  var x_2062 : f32;
  var x_2081 : f32;
  var x_2110 : f32;
  var x_2130 : f32;
  var x_2199 : f32;
  var x_2217 : f32;
  var u_xlatb15 : vec2<bool>;
  var x_2245 : f32;
  var x_2263 : f32;
  var x_2280 : f32;
  var x_2297 : f32;
  var x_2326 : f32;
  var x_2342 : f32;
  var u_xlati8 : vec2<i32>;
  var u_xlatb2 : vec2<bool>;
  var u_xlatb19 : bool;
  var x_2381 : bool;
  var x_2419 : f32;
  var x_2434 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_2562 : f32;
  var x_2574 : f32;
  var x_2586 : f32;
  var u_xlatb6 : vec3<bool>;
  var x_2637 : f32;
  var x_2650 : f32;
  var x_2662 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = x_12;
  let x_13 : vec2<f32> = u_xlat0;
  u_xlat0 = clamp(x_13, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_19 : vec2<f32> = u_xlat0;
  let x_28 : f32 = x_23.x_RenderViewportScaleFactor;
  u_xlat0 = (x_19 * vec2<f32>(x_28, x_28));
  let x_44 : vec2<f32> = u_xlat0;
  let x_45 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_44, 0.0f);
  u_xlat1 = vec3<f32>(x_45.x, x_45.y, x_45.z);
  let x_52 : vec2<f32> = u_xlat0;
  let x_56 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_52, 0.0f, vec2<i32>(0i, 1i));
  u_xlat12 = x_56.y;
  let x_64 : vec2<f32> = u_xlat0;
  let x_66 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_64, 0.0f, vec2<i32>(1i, 0i));
  u_xlat18 = x_66.y;
  let x_72 : vec2<f32> = u_xlat0;
  let x_75 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_72, 0.0f, vec2<i32>(0i, -1i));
  u_xlat19 = x_75.y;
  let x_81 : vec2<f32> = u_xlat0;
  let x_83 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_81, 0.0f, vec2<i32>(-1i, 0i));
  u_xlat2.x = x_83.y;
  let x_89 : f32 = u_xlat1.y;
  let x_90 : f32 = u_xlat12;
  u_xlat8.x = max(x_89, x_90);
  let x_95 : f32 = u_xlat1.y;
  let x_96 : f32 = u_xlat12;
  u_xlat14 = min(x_95, x_96);
  let x_98 : f32 = u_xlat18;
  let x_100 : f32 = u_xlat8.x;
  u_xlat8.x = max(x_98, x_100);
  let x_103 : f32 = u_xlat18;
  let x_104 : f32 = u_xlat14;
  u_xlat14 = min(x_103, x_104);
  let x_107 : f32 = u_xlat19;
  let x_109 : f32 = u_xlat2.x;
  u_xlat20 = max(x_107, x_109);
  let x_112 : f32 = u_xlat19;
  let x_114 : f32 = u_xlat2.x;
  u_xlat3.x = min(x_112, x_114);
  let x_118 : f32 = u_xlat8.x;
  let x_119 : f32 = u_xlat20;
  u_xlat8.x = max(x_118, x_119);
  let x_122 : f32 = u_xlat14;
  let x_124 : f32 = u_xlat3.x;
  u_xlat14 = min(x_122, x_124);
  let x_127 : f32 = u_xlat8.x;
  u_xlat20 = (x_127 * 0.063000001f);
  let x_130 : f32 = u_xlat14;
  let x_133 : f32 = u_xlat8.x;
  u_xlat8.x = (-(x_130) + x_133);
  let x_136 : f32 = u_xlat20;
  u_xlat14 = max(x_136, 0.031199999f);
  let x_143 : f32 = u_xlat8.x;
  let x_144 : f32 = u_xlat14;
  u_xlatb14 = (x_143 >= x_144);
  let x_146 : bool = u_xlatb14;
  if (x_146) {
    let x_152 : vec2<f32> = u_xlat0;
    let x_154 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_152, 0.0f, vec2<i32>(-1i, -1i));
    u_xlat14 = x_154.y;
    let x_159 : vec2<f32> = u_xlat0;
    let x_161 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_159, 0.0f, vec2<i32>(1i, 1i));
    u_xlat20 = x_161.y;
    let x_166 : vec2<f32> = u_xlat0;
    let x_168 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_166, 0.0f, vec2<i32>(1i, -1i));
    u_xlat3.x = x_168.y;
    let x_174 : vec2<f32> = u_xlat0;
    let x_176 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_174, 0.0f, vec2<i32>(-1i, 1i));
    u_xlat0.x = x_176.y;
    let x_180 : f32 = u_xlat12;
    let x_181 : f32 = u_xlat19;
    u_xlat6.x = (x_180 + x_181);
    let x_185 : f32 = u_xlat18;
    let x_187 : f32 = u_xlat2.x;
    u_xlat9.x = (x_185 + x_187);
    let x_191 : f32 = u_xlat8.x;
    u_xlat8.x = (1.0f / x_191);
    let x_196 : f32 = u_xlat6.x;
    let x_198 : f32 = u_xlat9.x;
    u_xlat15.x = (x_196 + x_198);
    let x_202 : f32 = u_xlat1.y;
    let x_206 : f32 = u_xlat6.x;
    u_xlat6.x = ((x_202 * -2.0f) + x_206);
    let x_210 : f32 = u_xlat1.y;
    let x_213 : f32 = u_xlat9.x;
    u_xlat9.x = ((x_210 * -2.0f) + x_213);
    let x_217 : f32 = u_xlat20;
    let x_219 : f32 = u_xlat3.x;
    u_xlat21 = (x_217 + x_219);
    let x_221 : f32 = u_xlat14;
    let x_223 : f32 = u_xlat3.x;
    u_xlat3.x = (x_221 + x_223);
    let x_227 : f32 = u_xlat18;
    let x_229 : f32 = u_xlat21;
    u_xlat4.x = ((x_227 * -2.0f) + x_229);
    let x_232 : f32 = u_xlat19;
    let x_235 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_232 * -2.0f) + x_235);
    let x_239 : f32 = u_xlat0.x;
    let x_240 : f32 = u_xlat14;
    u_xlat14 = (x_239 + x_240);
    let x_242 : f32 = u_xlat20;
    let x_244 : f32 = u_xlat0.x;
    u_xlat0.x = (x_242 + x_244);
    let x_248 : f32 = u_xlat6.x;
    let x_253 : f32 = u_xlat4.x;
    u_xlat6.x = ((abs(x_248) * 2.0f) + abs(x_253));
    let x_258 : f32 = u_xlat9.x;
    let x_262 : f32 = u_xlat3.x;
    u_xlat20 = ((abs(x_258) * 2.0f) + abs(x_262));
    let x_266 : f32 = u_xlat2.x;
    let x_268 : f32 = u_xlat14;
    u_xlat3.x = ((x_266 * -2.0f) + x_268);
    let x_271 : f32 = u_xlat12;
    let x_274 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_271 * -2.0f) + x_274);
    let x_278 : f32 = u_xlat6.x;
    let x_280 : f32 = u_xlat3.x;
    u_xlat6.x = (x_278 + abs(x_280));
    let x_284 : f32 = u_xlat20;
    let x_286 : f32 = u_xlat0.x;
    u_xlat0.x = (x_284 + abs(x_286));
    let x_290 : f32 = u_xlat21;
    let x_291 : f32 = u_xlat14;
    u_xlat14 = (x_290 + x_291);
    let x_295 : f32 = u_xlat6.x;
    let x_297 : f32 = u_xlat0.x;
    u_xlatb0 = (x_295 >= x_297);
    let x_300 : f32 = u_xlat15.x;
    let x_302 : f32 = u_xlat14;
    u_xlat6.x = ((x_300 * 2.0f) + x_302);
    let x_305 : bool = u_xlatb0;
    if (x_305) {
      let x_309 : f32 = u_xlat19;
      x_306 = x_309;
    } else {
      let x_312 : f32 = u_xlat2.x;
      x_306 = x_312;
    }
    let x_313 : f32 = x_306;
    u_xlat19 = x_313;
    let x_314 : bool = u_xlatb0;
    let x_315 : f32 = u_xlat12;
    let x_316 : f32 = u_xlat18;
    u_xlat12 = select(x_316, x_315, x_314);
    let x_318 : bool = u_xlatb0;
    if (x_318) {
      let x_324 : f32 = x_23.x_MainTex_TexelSize.y;
      x_319 = x_324;
    } else {
      let x_327 : f32 = x_23.x_MainTex_TexelSize.x;
      x_319 = x_327;
    }
    let x_328 : f32 = x_319;
    u_xlat18 = x_328;
    let x_330 : f32 = u_xlat6.x;
    let x_334 : f32 = u_xlat1.y;
    u_xlat6.x = ((x_330 * 0.083333336f) + -(x_334));
    let x_339 : f32 = u_xlat1.y;
    let x_341 : f32 = u_xlat19;
    u_xlat2.x = (-(x_339) + x_341);
    let x_345 : f32 = u_xlat1.y;
    let x_347 : f32 = u_xlat12;
    u_xlat14 = (-(x_345) + x_347);
    let x_350 : f32 = u_xlat1.y;
    let x_351 : f32 = u_xlat19;
    u_xlat19 = (x_350 + x_351);
    let x_354 : f32 = u_xlat1.y;
    let x_355 : f32 = u_xlat12;
    u_xlat12 = (x_354 + x_355);
    let x_359 : f32 = u_xlat2.x;
    let x_361 : f32 = u_xlat14;
    u_xlatb20 = (abs(x_359) >= abs(x_361));
    let x_364 : f32 = u_xlat14;
    let x_367 : f32 = u_xlat2.x;
    u_xlat2.x = max(abs(x_364), abs(x_367));
    let x_371 : bool = u_xlatb20;
    if (x_371) {
      let x_375 : f32 = u_xlat18;
      x_372 = -(x_375);
    } else {
      let x_378 : f32 = u_xlat18;
      x_372 = x_378;
    }
    let x_379 : f32 = x_372;
    u_xlat18 = x_379;
    let x_381 : f32 = u_xlat8.x;
    let x_383 : f32 = u_xlat6.x;
    u_xlat6.x = (x_381 * abs(x_383));
    let x_388 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_388, 0.0f, 1.0f);
    let x_391 : bool = u_xlatb0;
    if (x_391) {
      let x_396 : f32 = x_23.x_MainTex_TexelSize.x;
      x_392 = x_396;
    } else {
      x_392 = 0.0f;
    }
    let x_398 : f32 = x_392;
    u_xlat8.x = x_398;
    let x_400 : bool = u_xlatb0;
    if (x_400) {
      x_401 = 0.0f;
    } else {
      let x_406 : f32 = x_23.x_MainTex_TexelSize.y;
      x_401 = x_406;
    }
    let x_407 : f32 = x_401;
    u_xlat8.y = x_407;
    let x_409 : f32 = u_xlat18;
    let x_414 : vec2<f32> = vs_TEXCOORD0;
    let x_415 : vec2<f32> = ((vec2<f32>(x_409, x_409) * vec2<f32>(0.5f, 0.5f)) + x_414);
    let x_416 : vec3<f32> = u_xlat3;
    u_xlat3 = vec3<f32>(x_415.x, x_415.y, x_416.z);
    let x_418 : bool = u_xlatb0;
    if (x_418) {
      let x_424 : f32 = vs_TEXCOORD0.x;
      x_419 = x_424;
    } else {
      let x_427 : f32 = u_xlat3.x;
      x_419 = x_427;
    }
    let x_428 : f32 = x_419;
    u_xlat3.x = x_428;
    let x_430 : bool = u_xlatb0;
    if (x_430) {
      let x_435 : f32 = u_xlat3.y;
      x_431 = x_435;
    } else {
      let x_438 : f32 = vs_TEXCOORD0.y;
      x_431 = x_438;
    }
    let x_439 : f32 = x_431;
    u_xlat3.y = x_439;
    let x_441 : vec2<f32> = u_xlat8;
    let x_443 : vec3<f32> = u_xlat3;
    let x_445 : vec2<f32> = (-(x_441) + vec2<f32>(x_443.x, x_443.y));
    let x_446 : vec3<f32> = u_xlat4;
    u_xlat4 = vec3<f32>(x_445.x, x_445.y, x_446.z);
    let x_449 : vec2<f32> = u_xlat8;
    let x_450 : vec3<f32> = u_xlat3;
    u_xlat5 = (x_449 + vec2<f32>(x_450.x, x_450.y));
    let x_454 : f32 = u_xlat6.x;
    u_xlat3.x = ((x_454 * -2.0f) + 3.0f);
    let x_459 : vec3<f32> = u_xlat4;
    u_xlat9 = vec2<f32>(x_459.x, x_459.y);
    let x_461 : vec2<f32> = u_xlat9;
    u_xlat9 = clamp(x_461, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_465 : vec2<f32> = u_xlat9;
    let x_467 : f32 = x_23.x_RenderViewportScaleFactor;
    u_xlat9 = (x_465 * vec2<f32>(x_467, x_467));
    let x_473 : vec2<f32> = u_xlat9;
    let x_474 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_473, 0.0f);
    u_xlat9.x = x_474.y;
    let x_478 : f32 = u_xlat6.x;
    let x_480 : f32 = u_xlat6.x;
    u_xlat6.x = (x_478 * x_480);
    let x_483 : vec2<f32> = u_xlat5;
    u_xlat15 = x_483;
    let x_484 : vec2<f32> = u_xlat15;
    u_xlat15 = clamp(x_484, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_488 : vec2<f32> = u_xlat15;
    let x_490 : f32 = x_23.x_RenderViewportScaleFactor;
    u_xlat15 = (x_488 * vec2<f32>(x_490, x_490));
    let x_496 : vec2<f32> = u_xlat15;
    let x_497 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_496, 0.0f);
    u_xlat15.x = x_497.y;
    let x_500 : bool = u_xlatb20;
    let x_501 : f32 = u_xlat19;
    let x_502 : f32 = u_xlat12;
    u_xlat12 = select(x_502, x_501, x_500);
    let x_505 : f32 = u_xlat2.x;
    u_xlat19 = (x_505 * 0.25f);
    let x_508 : f32 = u_xlat12;
    let x_512 : f32 = u_xlat1.y;
    u_xlat2.x = ((-(x_508) * 0.5f) + x_512);
    let x_516 : f32 = u_xlat6.x;
    let x_518 : f32 = u_xlat3.x;
    u_xlat6.x = (x_516 * x_518);
    let x_524 : f32 = u_xlat2.x;
    u_xlati2 = bitcast<i32>(select(0u, 4294967295u, (x_524 < 0.0f)));
    let x_529 : f32 = u_xlat12;
    let x_533 : f32 = u_xlat9.x;
    u_xlat3.x = ((-(x_529) * 0.5f) + x_533);
    let x_536 : f32 = u_xlat12;
    let x_540 : f32 = u_xlat15.x;
    u_xlat3.y = ((-(x_536) * 0.5f) + x_540);
    let x_545 : vec3<f32> = u_xlat3;
    let x_548 : f32 = u_xlat19;
    let x_551 : vec4<bool> = (abs(vec4<f32>(x_545.x, x_545.y, x_545.x, x_545.y)) >= vec4<f32>(x_548, x_548, x_548, x_548));
    u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_551.x, x_551.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_562 : f32 = u_xlat8.x;
    let x_567 : f32 = u_xlat4.x;
    u_xlat20 = ((-(x_562) * 1.5f) + x_567);
    let x_570 : i32 = u_xlati15.x;
    if ((x_570 != 0i)) {
      let x_576 : f32 = u_xlat4.x;
      x_572 = x_576;
    } else {
      let x_578 : f32 = u_xlat20;
      x_572 = x_578;
    }
    let x_579 : f32 = x_572;
    u_xlat4.x = x_579;
    let x_582 : f32 = u_xlat8.y;
    let x_586 : f32 = u_xlat4.y;
    u_xlat20 = ((-(x_582) * 1.5f) + x_586);
    let x_589 : i32 = u_xlati15.x;
    if ((x_589 != 0i)) {
      let x_595 : f32 = u_xlat4.y;
      x_591 = x_595;
    } else {
      let x_597 : f32 = u_xlat20;
      x_591 = x_597;
    }
    let x_598 : f32 = x_591;
    u_xlat4.z = x_598;
    let x_604 : vec2<i32> = u_xlati15;
    let x_605 : vec2<i32> = ~(x_604);
    let x_606 : vec3<i32> = u_xlati10;
    u_xlati10 = vec3<i32>(x_605.x, x_606.y, x_605.y);
    let x_610 : i32 = u_xlati10.z;
    let x_613 : i32 = u_xlati10.x;
    u_xlati20 = bitcast<i32>((bitcast<u32>(x_610) | bitcast<u32>(x_613)));
    let x_619 : f32 = u_xlat8.x;
    let x_622 : f32 = u_xlat5.x;
    u_xlat10.x = ((x_619 * 1.5f) + x_622);
    let x_626 : i32 = u_xlati15.y;
    if ((x_626 != 0i)) {
      let x_632 : f32 = u_xlat5.x;
      x_628 = x_632;
    } else {
      let x_635 : f32 = u_xlat10.x;
      x_628 = x_635;
    }
    let x_636 : f32 = x_628;
    u_xlat10.x = x_636;
    let x_639 : f32 = u_xlat8.y;
    let x_642 : f32 = u_xlat5.y;
    u_xlat5.x = ((x_639 * 1.5f) + x_642);
    let x_646 : i32 = u_xlati15.y;
    if ((x_646 != 0i)) {
      let x_652 : f32 = u_xlat5.y;
      x_648 = x_652;
    } else {
      let x_655 : f32 = u_xlat5.x;
      x_648 = x_655;
    }
    let x_656 : f32 = x_648;
    u_xlat10.z = x_656;
    let x_658 : i32 = u_xlati20;
    if ((x_658 != 0i)) {
      let x_663 : i32 = u_xlati15.x;
      if ((x_663 == 0i)) {
        let x_667 : vec3<f32> = u_xlat4;
        u_xlat5 = vec2<f32>(x_667.x, x_667.z);
        let x_669 : vec2<f32> = u_xlat5;
        u_xlat5 = clamp(x_669, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_673 : vec2<f32> = u_xlat5;
        let x_675 : f32 = x_23.x_RenderViewportScaleFactor;
        u_xlat5 = (x_673 * vec2<f32>(x_675, x_675));
        let x_681 : vec2<f32> = u_xlat5;
        let x_682 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_681, 0.0f);
        u_xlat3.x = x_682.y;
      }
      let x_686 : i32 = u_xlati15.y;
      if ((x_686 == 0i)) {
        let x_690 : vec3<f32> = u_xlat10;
        u_xlat5 = vec2<f32>(x_690.x, x_690.z);
        let x_692 : vec2<f32> = u_xlat5;
        u_xlat5 = clamp(x_692, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_696 : vec2<f32> = u_xlat5;
        let x_698 : f32 = x_23.x_RenderViewportScaleFactor;
        u_xlat5 = (x_696 * vec2<f32>(x_698, x_698));
        let x_704 : vec2<f32> = u_xlat5;
        let x_705 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_704, 0.0f);
        u_xlat3.y = x_705.y;
      }
      let x_708 : f32 = u_xlat12;
      let x_712 : f32 = u_xlat3.x;
      u_xlat20 = ((-(x_708) * 0.5f) + x_712);
      let x_715 : i32 = u_xlati15.x;
      if ((x_715 != 0i)) {
        let x_721 : f32 = u_xlat3.x;
        x_717 = x_721;
      } else {
        let x_723 : f32 = u_xlat20;
        x_717 = x_723;
      }
      let x_724 : f32 = x_717;
      u_xlat3.x = x_724;
      let x_726 : f32 = u_xlat12;
      let x_730 : f32 = u_xlat3.y;
      u_xlat20 = ((-(x_726) * 0.5f) + x_730);
      let x_733 : i32 = u_xlati15.y;
      if ((x_733 != 0i)) {
        let x_739 : f32 = u_xlat3.y;
        x_735 = x_739;
      } else {
        let x_741 : f32 = u_xlat20;
        x_735 = x_741;
      }
      let x_742 : f32 = x_735;
      u_xlat3.y = x_742;
      let x_744 : vec3<f32> = u_xlat3;
      let x_747 : f32 = u_xlat19;
      let x_749 : vec4<bool> = (abs(vec4<f32>(x_744.x, x_744.y, x_744.x, x_744.y)) >= vec4<f32>(x_747, x_747, x_747, x_747));
      u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_749.x, x_749.y)) * vec2<u32>(4294967295u, 4294967295u)));
      let x_756 : f32 = u_xlat8.x;
      let x_760 : f32 = u_xlat4.x;
      u_xlat20 = ((-(x_756) * 2.0f) + x_760);
      let x_763 : i32 = u_xlati15.x;
      if ((x_763 != 0i)) {
        let x_769 : f32 = u_xlat4.x;
        x_765 = x_769;
      } else {
        let x_771 : f32 = u_xlat20;
        x_765 = x_771;
      }
      let x_772 : f32 = x_765;
      u_xlat4.x = x_772;
      let x_775 : f32 = u_xlat8.y;
      let x_779 : f32 = u_xlat4.z;
      u_xlat20 = ((-(x_775) * 2.0f) + x_779);
      let x_782 : i32 = u_xlati15.x;
      if ((x_782 != 0i)) {
        let x_788 : f32 = u_xlat4.z;
        x_784 = x_788;
      } else {
        let x_790 : f32 = u_xlat20;
        x_784 = x_790;
      }
      let x_791 : f32 = x_784;
      u_xlat4.z = x_791;
      let x_794 : vec2<i32> = u_xlati15;
      u_xlati5 = ~(x_794);
      let x_797 : i32 = u_xlati5.y;
      let x_800 : i32 = u_xlati5.x;
      u_xlati20 = bitcast<i32>((bitcast<u32>(x_797) | bitcast<u32>(x_800)));
      let x_805 : f32 = u_xlat8.x;
      let x_808 : f32 = u_xlat10.x;
      u_xlat5.x = ((x_805 * 2.0f) + x_808);
      let x_812 : i32 = u_xlati15.y;
      if ((x_812 != 0i)) {
        let x_818 : f32 = u_xlat10.x;
        x_814 = x_818;
      } else {
        let x_821 : f32 = u_xlat5.x;
        x_814 = x_821;
      }
      let x_822 : f32 = x_814;
      u_xlat10.x = x_822;
      let x_825 : f32 = u_xlat8.y;
      let x_828 : f32 = u_xlat10.z;
      u_xlat5.x = ((x_825 * 2.0f) + x_828);
      let x_832 : i32 = u_xlati15.y;
      if ((x_832 != 0i)) {
        let x_838 : f32 = u_xlat10.z;
        x_834 = x_838;
      } else {
        let x_841 : f32 = u_xlat5.x;
        x_834 = x_841;
      }
      let x_842 : f32 = x_834;
      u_xlat10.z = x_842;
      let x_844 : i32 = u_xlati20;
      if ((x_844 != 0i)) {
        let x_849 : i32 = u_xlati15.x;
        if ((x_849 == 0i)) {
          let x_853 : vec3<f32> = u_xlat4;
          u_xlat5 = vec2<f32>(x_853.x, x_853.z);
          let x_855 : vec2<f32> = u_xlat5;
          u_xlat5 = clamp(x_855, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_859 : vec2<f32> = u_xlat5;
          let x_861 : f32 = x_23.x_RenderViewportScaleFactor;
          u_xlat5 = (x_859 * vec2<f32>(x_861, x_861));
          let x_867 : vec2<f32> = u_xlat5;
          let x_868 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_867, 0.0f);
          u_xlat3.x = x_868.y;
        }
        let x_872 : i32 = u_xlati15.y;
        if ((x_872 == 0i)) {
          let x_876 : vec3<f32> = u_xlat10;
          u_xlat5 = vec2<f32>(x_876.x, x_876.z);
          let x_878 : vec2<f32> = u_xlat5;
          u_xlat5 = clamp(x_878, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_882 : vec2<f32> = u_xlat5;
          let x_884 : f32 = x_23.x_RenderViewportScaleFactor;
          u_xlat5 = (x_882 * vec2<f32>(x_884, x_884));
          let x_890 : vec2<f32> = u_xlat5;
          let x_891 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_890, 0.0f);
          u_xlat3.y = x_891.y;
        }
        let x_894 : f32 = u_xlat12;
        let x_898 : f32 = u_xlat3.x;
        u_xlat20 = ((-(x_894) * 0.5f) + x_898);
        let x_901 : i32 = u_xlati15.x;
        if ((x_901 != 0i)) {
          let x_907 : f32 = u_xlat3.x;
          x_903 = x_907;
        } else {
          let x_909 : f32 = u_xlat20;
          x_903 = x_909;
        }
        let x_910 : f32 = x_903;
        u_xlat3.x = x_910;
        let x_912 : f32 = u_xlat12;
        let x_916 : f32 = u_xlat3.y;
        u_xlat20 = ((-(x_912) * 0.5f) + x_916);
        let x_919 : i32 = u_xlati15.y;
        if ((x_919 != 0i)) {
          let x_925 : f32 = u_xlat3.y;
          x_921 = x_925;
        } else {
          let x_927 : f32 = u_xlat20;
          x_921 = x_927;
        }
        let x_928 : f32 = x_921;
        u_xlat3.y = x_928;
        let x_930 : vec3<f32> = u_xlat3;
        let x_933 : f32 = u_xlat19;
        let x_935 : vec4<bool> = (abs(vec4<f32>(x_930.x, x_930.y, x_930.x, x_930.y)) >= vec4<f32>(x_933, x_933, x_933, x_933));
        u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_935.x, x_935.y)) * vec2<u32>(4294967295u, 4294967295u)));
        let x_942 : f32 = u_xlat8.x;
        let x_946 : f32 = u_xlat4.x;
        u_xlat20 = ((-(x_942) * 2.0f) + x_946);
        let x_949 : i32 = u_xlati15.x;
        if ((x_949 != 0i)) {
          let x_955 : f32 = u_xlat4.x;
          x_951 = x_955;
        } else {
          let x_957 : f32 = u_xlat20;
          x_951 = x_957;
        }
        let x_958 : f32 = x_951;
        u_xlat4.x = x_958;
        let x_961 : f32 = u_xlat8.y;
        let x_965 : f32 = u_xlat4.z;
        u_xlat20 = ((-(x_961) * 2.0f) + x_965);
        let x_968 : i32 = u_xlati15.x;
        if ((x_968 != 0i)) {
          let x_974 : f32 = u_xlat4.z;
          x_970 = x_974;
        } else {
          let x_976 : f32 = u_xlat20;
          x_970 = x_976;
        }
        let x_977 : f32 = x_970;
        u_xlat4.z = x_977;
        let x_979 : vec2<i32> = u_xlati15;
        u_xlati5 = ~(x_979);
        let x_982 : i32 = u_xlati5.y;
        let x_985 : i32 = u_xlati5.x;
        u_xlati20 = bitcast<i32>((bitcast<u32>(x_982) | bitcast<u32>(x_985)));
        let x_990 : f32 = u_xlat8.x;
        let x_993 : f32 = u_xlat10.x;
        u_xlat5.x = ((x_990 * 2.0f) + x_993);
        let x_997 : i32 = u_xlati15.y;
        if ((x_997 != 0i)) {
          let x_1003 : f32 = u_xlat10.x;
          x_999 = x_1003;
        } else {
          let x_1006 : f32 = u_xlat5.x;
          x_999 = x_1006;
        }
        let x_1007 : f32 = x_999;
        u_xlat10.x = x_1007;
        let x_1010 : f32 = u_xlat8.y;
        let x_1013 : f32 = u_xlat10.z;
        u_xlat5.x = ((x_1010 * 2.0f) + x_1013);
        let x_1017 : i32 = u_xlati15.y;
        if ((x_1017 != 0i)) {
          let x_1023 : f32 = u_xlat10.z;
          x_1019 = x_1023;
        } else {
          let x_1026 : f32 = u_xlat5.x;
          x_1019 = x_1026;
        }
        let x_1027 : f32 = x_1019;
        u_xlat10.z = x_1027;
        let x_1029 : i32 = u_xlati20;
        if ((x_1029 != 0i)) {
          let x_1034 : i32 = u_xlati15.x;
          if ((x_1034 == 0i)) {
            let x_1038 : vec3<f32> = u_xlat4;
            u_xlat5 = vec2<f32>(x_1038.x, x_1038.z);
            let x_1040 : vec2<f32> = u_xlat5;
            u_xlat5 = clamp(x_1040, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1044 : vec2<f32> = u_xlat5;
            let x_1046 : f32 = x_23.x_RenderViewportScaleFactor;
            u_xlat5 = (x_1044 * vec2<f32>(x_1046, x_1046));
            let x_1052 : vec2<f32> = u_xlat5;
            let x_1053 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1052, 0.0f);
            u_xlat3.x = x_1053.y;
          }
          let x_1057 : i32 = u_xlati15.y;
          if ((x_1057 == 0i)) {
            let x_1061 : vec3<f32> = u_xlat10;
            u_xlat5 = vec2<f32>(x_1061.x, x_1061.z);
            let x_1063 : vec2<f32> = u_xlat5;
            u_xlat5 = clamp(x_1063, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1067 : vec2<f32> = u_xlat5;
            let x_1069 : f32 = x_23.x_RenderViewportScaleFactor;
            u_xlat5 = (x_1067 * vec2<f32>(x_1069, x_1069));
            let x_1075 : vec2<f32> = u_xlat5;
            let x_1076 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1075, 0.0f);
            u_xlat3.y = x_1076.y;
          }
          let x_1079 : f32 = u_xlat12;
          let x_1083 : f32 = u_xlat3.x;
          u_xlat20 = ((-(x_1079) * 0.5f) + x_1083);
          let x_1086 : i32 = u_xlati15.x;
          if ((x_1086 != 0i)) {
            let x_1092 : f32 = u_xlat3.x;
            x_1088 = x_1092;
          } else {
            let x_1094 : f32 = u_xlat20;
            x_1088 = x_1094;
          }
          let x_1095 : f32 = x_1088;
          u_xlat3.x = x_1095;
          let x_1097 : f32 = u_xlat12;
          let x_1101 : f32 = u_xlat3.y;
          u_xlat20 = ((-(x_1097) * 0.5f) + x_1101);
          let x_1104 : i32 = u_xlati15.y;
          if ((x_1104 != 0i)) {
            let x_1110 : f32 = u_xlat3.y;
            x_1106 = x_1110;
          } else {
            let x_1112 : f32 = u_xlat20;
            x_1106 = x_1112;
          }
          let x_1113 : f32 = x_1106;
          u_xlat3.y = x_1113;
          let x_1115 : vec3<f32> = u_xlat3;
          let x_1118 : f32 = u_xlat19;
          let x_1120 : vec4<bool> = (abs(vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y)) >= vec4<f32>(x_1118, x_1118, x_1118, x_1118));
          u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1120.x, x_1120.y)) * vec2<u32>(4294967295u, 4294967295u)));
          let x_1127 : f32 = u_xlat8.x;
          let x_1131 : f32 = u_xlat4.x;
          u_xlat20 = ((-(x_1127) * 2.0f) + x_1131);
          let x_1134 : i32 = u_xlati15.x;
          if ((x_1134 != 0i)) {
            let x_1140 : f32 = u_xlat4.x;
            x_1136 = x_1140;
          } else {
            let x_1142 : f32 = u_xlat20;
            x_1136 = x_1142;
          }
          let x_1143 : f32 = x_1136;
          u_xlat4.x = x_1143;
          let x_1146 : f32 = u_xlat8.y;
          let x_1150 : f32 = u_xlat4.z;
          u_xlat20 = ((-(x_1146) * 2.0f) + x_1150);
          let x_1153 : i32 = u_xlati15.x;
          if ((x_1153 != 0i)) {
            let x_1159 : f32 = u_xlat4.z;
            x_1155 = x_1159;
          } else {
            let x_1161 : f32 = u_xlat20;
            x_1155 = x_1161;
          }
          let x_1162 : f32 = x_1155;
          u_xlat4.z = x_1162;
          let x_1164 : vec2<i32> = u_xlati15;
          u_xlati5 = ~(x_1164);
          let x_1167 : i32 = u_xlati5.y;
          let x_1170 : i32 = u_xlati5.x;
          u_xlati20 = bitcast<i32>((bitcast<u32>(x_1167) | bitcast<u32>(x_1170)));
          let x_1175 : f32 = u_xlat8.x;
          let x_1178 : f32 = u_xlat10.x;
          u_xlat5.x = ((x_1175 * 2.0f) + x_1178);
          let x_1182 : i32 = u_xlati15.y;
          if ((x_1182 != 0i)) {
            let x_1188 : f32 = u_xlat10.x;
            x_1184 = x_1188;
          } else {
            let x_1191 : f32 = u_xlat5.x;
            x_1184 = x_1191;
          }
          let x_1192 : f32 = x_1184;
          u_xlat10.x = x_1192;
          let x_1195 : f32 = u_xlat8.y;
          let x_1198 : f32 = u_xlat10.z;
          u_xlat5.x = ((x_1195 * 2.0f) + x_1198);
          let x_1202 : i32 = u_xlati15.y;
          if ((x_1202 != 0i)) {
            let x_1208 : f32 = u_xlat10.z;
            x_1204 = x_1208;
          } else {
            let x_1211 : f32 = u_xlat5.x;
            x_1204 = x_1211;
          }
          let x_1212 : f32 = x_1204;
          u_xlat10.z = x_1212;
          let x_1214 : i32 = u_xlati20;
          if ((x_1214 != 0i)) {
            let x_1219 : i32 = u_xlati15.x;
            if ((x_1219 == 0i)) {
              let x_1223 : vec3<f32> = u_xlat4;
              u_xlat5 = vec2<f32>(x_1223.x, x_1223.z);
              let x_1225 : vec2<f32> = u_xlat5;
              u_xlat5 = clamp(x_1225, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
              let x_1229 : vec2<f32> = u_xlat5;
              let x_1231 : f32 = x_23.x_RenderViewportScaleFactor;
              u_xlat5 = (x_1229 * vec2<f32>(x_1231, x_1231));
              let x_1237 : vec2<f32> = u_xlat5;
              let x_1238 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1237, 0.0f);
              u_xlat3.x = x_1238.y;
            }
            let x_1242 : i32 = u_xlati15.y;
            if ((x_1242 == 0i)) {
              let x_1246 : vec3<f32> = u_xlat10;
              u_xlat5 = vec2<f32>(x_1246.x, x_1246.z);
              let x_1248 : vec2<f32> = u_xlat5;
              u_xlat5 = clamp(x_1248, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
              let x_1252 : vec2<f32> = u_xlat5;
              let x_1254 : f32 = x_23.x_RenderViewportScaleFactor;
              u_xlat5 = (x_1252 * vec2<f32>(x_1254, x_1254));
              let x_1260 : vec2<f32> = u_xlat5;
              let x_1261 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1260, 0.0f);
              u_xlat3.y = x_1261.y;
            }
            let x_1264 : f32 = u_xlat12;
            let x_1268 : f32 = u_xlat3.x;
            u_xlat20 = ((-(x_1264) * 0.5f) + x_1268);
            let x_1271 : i32 = u_xlati15.x;
            if ((x_1271 != 0i)) {
              let x_1277 : f32 = u_xlat3.x;
              x_1273 = x_1277;
            } else {
              let x_1279 : f32 = u_xlat20;
              x_1273 = x_1279;
            }
            let x_1280 : f32 = x_1273;
            u_xlat3.x = x_1280;
            let x_1282 : f32 = u_xlat12;
            let x_1286 : f32 = u_xlat3.y;
            u_xlat20 = ((-(x_1282) * 0.5f) + x_1286);
            let x_1289 : i32 = u_xlati15.y;
            if ((x_1289 != 0i)) {
              let x_1295 : f32 = u_xlat3.y;
              x_1291 = x_1295;
            } else {
              let x_1297 : f32 = u_xlat20;
              x_1291 = x_1297;
            }
            let x_1298 : f32 = x_1291;
            u_xlat3.y = x_1298;
            let x_1300 : vec3<f32> = u_xlat3;
            let x_1303 : f32 = u_xlat19;
            let x_1305 : vec4<bool> = (abs(vec4<f32>(x_1300.x, x_1300.y, x_1300.x, x_1300.y)) >= vec4<f32>(x_1303, x_1303, x_1303, x_1303));
            u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1305.x, x_1305.y)) * vec2<u32>(4294967295u, 4294967295u)));
            let x_1312 : f32 = u_xlat8.x;
            let x_1316 : f32 = u_xlat4.x;
            u_xlat20 = ((-(x_1312) * 2.0f) + x_1316);
            let x_1319 : i32 = u_xlati15.x;
            if ((x_1319 != 0i)) {
              let x_1325 : f32 = u_xlat4.x;
              x_1321 = x_1325;
            } else {
              let x_1327 : f32 = u_xlat20;
              x_1321 = x_1327;
            }
            let x_1328 : f32 = x_1321;
            u_xlat4.x = x_1328;
            let x_1331 : f32 = u_xlat8.y;
            let x_1335 : f32 = u_xlat4.z;
            u_xlat20 = ((-(x_1331) * 2.0f) + x_1335);
            let x_1338 : i32 = u_xlati15.x;
            if ((x_1338 != 0i)) {
              let x_1344 : f32 = u_xlat4.z;
              x_1340 = x_1344;
            } else {
              let x_1346 : f32 = u_xlat20;
              x_1340 = x_1346;
            }
            let x_1347 : f32 = x_1340;
            u_xlat4.z = x_1347;
            let x_1349 : vec2<i32> = u_xlati15;
            u_xlati5 = ~(x_1349);
            let x_1352 : i32 = u_xlati5.y;
            let x_1355 : i32 = u_xlati5.x;
            u_xlati20 = bitcast<i32>((bitcast<u32>(x_1352) | bitcast<u32>(x_1355)));
            let x_1360 : f32 = u_xlat8.x;
            let x_1363 : f32 = u_xlat10.x;
            u_xlat5.x = ((x_1360 * 2.0f) + x_1363);
            let x_1367 : i32 = u_xlati15.y;
            if ((x_1367 != 0i)) {
              let x_1373 : f32 = u_xlat10.x;
              x_1369 = x_1373;
            } else {
              let x_1376 : f32 = u_xlat5.x;
              x_1369 = x_1376;
            }
            let x_1377 : f32 = x_1369;
            u_xlat10.x = x_1377;
            let x_1380 : f32 = u_xlat8.y;
            let x_1383 : f32 = u_xlat10.z;
            u_xlat5.x = ((x_1380 * 2.0f) + x_1383);
            let x_1387 : i32 = u_xlati15.y;
            if ((x_1387 != 0i)) {
              let x_1393 : f32 = u_xlat10.z;
              x_1389 = x_1393;
            } else {
              let x_1396 : f32 = u_xlat5.x;
              x_1389 = x_1396;
            }
            let x_1397 : f32 = x_1389;
            u_xlat10.z = x_1397;
            let x_1399 : i32 = u_xlati20;
            if ((x_1399 != 0i)) {
              let x_1404 : i32 = u_xlati15.x;
              if ((x_1404 == 0i)) {
                let x_1408 : vec3<f32> = u_xlat4;
                u_xlat5 = vec2<f32>(x_1408.x, x_1408.z);
                let x_1410 : vec2<f32> = u_xlat5;
                u_xlat5 = clamp(x_1410, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                let x_1414 : vec2<f32> = u_xlat5;
                let x_1416 : f32 = x_23.x_RenderViewportScaleFactor;
                u_xlat5 = (x_1414 * vec2<f32>(x_1416, x_1416));
                let x_1422 : vec2<f32> = u_xlat5;
                let x_1423 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1422, 0.0f);
                u_xlat3.x = x_1423.y;
              }
              let x_1427 : i32 = u_xlati15.y;
              if ((x_1427 == 0i)) {
                let x_1431 : vec3<f32> = u_xlat10;
                u_xlat5 = vec2<f32>(x_1431.x, x_1431.z);
                let x_1433 : vec2<f32> = u_xlat5;
                u_xlat5 = clamp(x_1433, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                let x_1437 : vec2<f32> = u_xlat5;
                let x_1439 : f32 = x_23.x_RenderViewportScaleFactor;
                u_xlat5 = (x_1437 * vec2<f32>(x_1439, x_1439));
                let x_1445 : vec2<f32> = u_xlat5;
                let x_1446 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1445, 0.0f);
                u_xlat3.y = x_1446.y;
              }
              let x_1449 : f32 = u_xlat12;
              let x_1453 : f32 = u_xlat3.x;
              u_xlat20 = ((-(x_1449) * 0.5f) + x_1453);
              let x_1456 : i32 = u_xlati15.x;
              if ((x_1456 != 0i)) {
                let x_1462 : f32 = u_xlat3.x;
                x_1458 = x_1462;
              } else {
                let x_1464 : f32 = u_xlat20;
                x_1458 = x_1464;
              }
              let x_1465 : f32 = x_1458;
              u_xlat3.x = x_1465;
              let x_1467 : f32 = u_xlat12;
              let x_1471 : f32 = u_xlat3.y;
              u_xlat20 = ((-(x_1467) * 0.5f) + x_1471);
              let x_1474 : i32 = u_xlati15.y;
              if ((x_1474 != 0i)) {
                let x_1480 : f32 = u_xlat3.y;
                x_1476 = x_1480;
              } else {
                let x_1482 : f32 = u_xlat20;
                x_1476 = x_1482;
              }
              let x_1483 : f32 = x_1476;
              u_xlat3.y = x_1483;
              let x_1485 : vec3<f32> = u_xlat3;
              let x_1488 : f32 = u_xlat19;
              let x_1490 : vec4<bool> = (abs(vec4<f32>(x_1485.x, x_1485.y, x_1485.x, x_1485.y)) >= vec4<f32>(x_1488, x_1488, x_1488, x_1488));
              u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1490.x, x_1490.y)) * vec2<u32>(4294967295u, 4294967295u)));
              let x_1497 : f32 = u_xlat8.x;
              let x_1501 : f32 = u_xlat4.x;
              u_xlat20 = ((-(x_1497) * 2.0f) + x_1501);
              let x_1504 : i32 = u_xlati15.x;
              if ((x_1504 != 0i)) {
                let x_1510 : f32 = u_xlat4.x;
                x_1506 = x_1510;
              } else {
                let x_1512 : f32 = u_xlat20;
                x_1506 = x_1512;
              }
              let x_1513 : f32 = x_1506;
              u_xlat4.x = x_1513;
              let x_1516 : f32 = u_xlat8.y;
              let x_1520 : f32 = u_xlat4.z;
              u_xlat20 = ((-(x_1516) * 2.0f) + x_1520);
              let x_1523 : i32 = u_xlati15.x;
              if ((x_1523 != 0i)) {
                let x_1529 : f32 = u_xlat4.z;
                x_1525 = x_1529;
              } else {
                let x_1531 : f32 = u_xlat20;
                x_1525 = x_1531;
              }
              let x_1532 : f32 = x_1525;
              u_xlat4.z = x_1532;
              let x_1534 : vec2<i32> = u_xlati15;
              u_xlati5 = ~(x_1534);
              let x_1537 : i32 = u_xlati5.y;
              let x_1540 : i32 = u_xlati5.x;
              u_xlati20 = bitcast<i32>((bitcast<u32>(x_1537) | bitcast<u32>(x_1540)));
              let x_1545 : f32 = u_xlat8.x;
              let x_1548 : f32 = u_xlat10.x;
              u_xlat5.x = ((x_1545 * 2.0f) + x_1548);
              let x_1552 : i32 = u_xlati15.y;
              if ((x_1552 != 0i)) {
                let x_1558 : f32 = u_xlat10.x;
                x_1554 = x_1558;
              } else {
                let x_1561 : f32 = u_xlat5.x;
                x_1554 = x_1561;
              }
              let x_1562 : f32 = x_1554;
              u_xlat10.x = x_1562;
              let x_1565 : f32 = u_xlat8.y;
              let x_1568 : f32 = u_xlat10.z;
              u_xlat5.x = ((x_1565 * 2.0f) + x_1568);
              let x_1572 : i32 = u_xlati15.y;
              if ((x_1572 != 0i)) {
                let x_1578 : f32 = u_xlat10.z;
                x_1574 = x_1578;
              } else {
                let x_1581 : f32 = u_xlat5.x;
                x_1574 = x_1581;
              }
              let x_1582 : f32 = x_1574;
              u_xlat10.z = x_1582;
              let x_1584 : i32 = u_xlati20;
              if ((x_1584 != 0i)) {
                let x_1589 : i32 = u_xlati15.x;
                if ((x_1589 == 0i)) {
                  let x_1593 : vec3<f32> = u_xlat4;
                  u_xlat5 = vec2<f32>(x_1593.x, x_1593.z);
                  let x_1595 : vec2<f32> = u_xlat5;
                  u_xlat5 = clamp(x_1595, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                  let x_1599 : vec2<f32> = u_xlat5;
                  let x_1601 : f32 = x_23.x_RenderViewportScaleFactor;
                  u_xlat5 = (x_1599 * vec2<f32>(x_1601, x_1601));
                  let x_1607 : vec2<f32> = u_xlat5;
                  let x_1608 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1607, 0.0f);
                  u_xlat3.x = x_1608.y;
                }
                let x_1612 : i32 = u_xlati15.y;
                if ((x_1612 == 0i)) {
                  let x_1616 : vec3<f32> = u_xlat10;
                  u_xlat5 = vec2<f32>(x_1616.x, x_1616.z);
                  let x_1618 : vec2<f32> = u_xlat5;
                  u_xlat5 = clamp(x_1618, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                  let x_1622 : vec2<f32> = u_xlat5;
                  let x_1624 : f32 = x_23.x_RenderViewportScaleFactor;
                  u_xlat5 = (x_1622 * vec2<f32>(x_1624, x_1624));
                  let x_1630 : vec2<f32> = u_xlat5;
                  let x_1631 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1630, 0.0f);
                  u_xlat3.y = x_1631.y;
                }
                let x_1634 : f32 = u_xlat12;
                let x_1638 : f32 = u_xlat3.x;
                u_xlat20 = ((-(x_1634) * 0.5f) + x_1638);
                let x_1641 : i32 = u_xlati15.x;
                if ((x_1641 != 0i)) {
                  let x_1647 : f32 = u_xlat3.x;
                  x_1643 = x_1647;
                } else {
                  let x_1649 : f32 = u_xlat20;
                  x_1643 = x_1649;
                }
                let x_1650 : f32 = x_1643;
                u_xlat3.x = x_1650;
                let x_1652 : f32 = u_xlat12;
                let x_1656 : f32 = u_xlat3.y;
                u_xlat20 = ((-(x_1652) * 0.5f) + x_1656);
                let x_1659 : i32 = u_xlati15.y;
                if ((x_1659 != 0i)) {
                  let x_1665 : f32 = u_xlat3.y;
                  x_1661 = x_1665;
                } else {
                  let x_1667 : f32 = u_xlat20;
                  x_1661 = x_1667;
                }
                let x_1668 : f32 = x_1661;
                u_xlat3.y = x_1668;
                let x_1670 : vec3<f32> = u_xlat3;
                let x_1673 : f32 = u_xlat19;
                let x_1675 : vec4<bool> = (abs(vec4<f32>(x_1670.x, x_1670.y, x_1670.x, x_1670.y)) >= vec4<f32>(x_1673, x_1673, x_1673, x_1673));
                u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1675.x, x_1675.y)) * vec2<u32>(4294967295u, 4294967295u)));
                let x_1682 : f32 = u_xlat8.x;
                let x_1686 : f32 = u_xlat4.x;
                u_xlat20 = ((-(x_1682) * 2.0f) + x_1686);
                let x_1689 : i32 = u_xlati15.x;
                if ((x_1689 != 0i)) {
                  let x_1695 : f32 = u_xlat4.x;
                  x_1691 = x_1695;
                } else {
                  let x_1697 : f32 = u_xlat20;
                  x_1691 = x_1697;
                }
                let x_1698 : f32 = x_1691;
                u_xlat4.x = x_1698;
                let x_1701 : f32 = u_xlat8.y;
                let x_1705 : f32 = u_xlat4.z;
                u_xlat20 = ((-(x_1701) * 2.0f) + x_1705);
                let x_1708 : i32 = u_xlati15.x;
                if ((x_1708 != 0i)) {
                  let x_1714 : f32 = u_xlat4.z;
                  x_1710 = x_1714;
                } else {
                  let x_1716 : f32 = u_xlat20;
                  x_1710 = x_1716;
                }
                let x_1717 : f32 = x_1710;
                u_xlat4.z = x_1717;
                let x_1719 : vec2<i32> = u_xlati15;
                u_xlati5 = ~(x_1719);
                let x_1722 : i32 = u_xlati5.y;
                let x_1725 : i32 = u_xlati5.x;
                u_xlati20 = bitcast<i32>((bitcast<u32>(x_1722) | bitcast<u32>(x_1725)));
                let x_1730 : f32 = u_xlat8.x;
                let x_1733 : f32 = u_xlat10.x;
                u_xlat5.x = ((x_1730 * 2.0f) + x_1733);
                let x_1737 : i32 = u_xlati15.y;
                if ((x_1737 != 0i)) {
                  let x_1743 : f32 = u_xlat10.x;
                  x_1739 = x_1743;
                } else {
                  let x_1746 : f32 = u_xlat5.x;
                  x_1739 = x_1746;
                }
                let x_1747 : f32 = x_1739;
                u_xlat10.x = x_1747;
                let x_1750 : f32 = u_xlat8.y;
                let x_1753 : f32 = u_xlat10.z;
                u_xlat5.x = ((x_1750 * 2.0f) + x_1753);
                let x_1757 : i32 = u_xlati15.y;
                if ((x_1757 != 0i)) {
                  let x_1763 : f32 = u_xlat10.z;
                  x_1759 = x_1763;
                } else {
                  let x_1766 : f32 = u_xlat5.x;
                  x_1759 = x_1766;
                }
                let x_1767 : f32 = x_1759;
                u_xlat10.z = x_1767;
                let x_1769 : i32 = u_xlati20;
                if ((x_1769 != 0i)) {
                  let x_1774 : i32 = u_xlati15.x;
                  if ((x_1774 == 0i)) {
                    let x_1778 : vec3<f32> = u_xlat4;
                    u_xlat5 = vec2<f32>(x_1778.x, x_1778.z);
                    let x_1780 : vec2<f32> = u_xlat5;
                    u_xlat5 = clamp(x_1780, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                    let x_1784 : vec2<f32> = u_xlat5;
                    let x_1786 : f32 = x_23.x_RenderViewportScaleFactor;
                    u_xlat5 = (x_1784 * vec2<f32>(x_1786, x_1786));
                    let x_1792 : vec2<f32> = u_xlat5;
                    let x_1793 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1792, 0.0f);
                    u_xlat3.x = x_1793.y;
                  }
                  let x_1797 : i32 = u_xlati15.y;
                  if ((x_1797 == 0i)) {
                    let x_1801 : vec3<f32> = u_xlat10;
                    u_xlat5 = vec2<f32>(x_1801.x, x_1801.z);
                    let x_1803 : vec2<f32> = u_xlat5;
                    u_xlat5 = clamp(x_1803, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                    let x_1807 : vec2<f32> = u_xlat5;
                    let x_1809 : f32 = x_23.x_RenderViewportScaleFactor;
                    u_xlat5 = (x_1807 * vec2<f32>(x_1809, x_1809));
                    let x_1815 : vec2<f32> = u_xlat5;
                    let x_1816 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1815, 0.0f);
                    u_xlat3.y = x_1816.y;
                  }
                  let x_1819 : f32 = u_xlat12;
                  let x_1823 : f32 = u_xlat3.x;
                  u_xlat20 = ((-(x_1819) * 0.5f) + x_1823);
                  let x_1826 : i32 = u_xlati15.x;
                  if ((x_1826 != 0i)) {
                    let x_1832 : f32 = u_xlat3.x;
                    x_1828 = x_1832;
                  } else {
                    let x_1834 : f32 = u_xlat20;
                    x_1828 = x_1834;
                  }
                  let x_1835 : f32 = x_1828;
                  u_xlat3.x = x_1835;
                  let x_1837 : f32 = u_xlat12;
                  let x_1841 : f32 = u_xlat3.y;
                  u_xlat20 = ((-(x_1837) * 0.5f) + x_1841);
                  let x_1844 : i32 = u_xlati15.y;
                  if ((x_1844 != 0i)) {
                    let x_1850 : f32 = u_xlat3.y;
                    x_1846 = x_1850;
                  } else {
                    let x_1852 : f32 = u_xlat20;
                    x_1846 = x_1852;
                  }
                  let x_1853 : f32 = x_1846;
                  u_xlat3.y = x_1853;
                  let x_1855 : vec3<f32> = u_xlat3;
                  let x_1858 : f32 = u_xlat19;
                  let x_1860 : vec4<bool> = (abs(vec4<f32>(x_1855.x, x_1855.y, x_1855.x, x_1855.y)) >= vec4<f32>(x_1858, x_1858, x_1858, x_1858));
                  u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1860.x, x_1860.y)) * vec2<u32>(4294967295u, 4294967295u)));
                  let x_1867 : f32 = u_xlat8.x;
                  let x_1871 : f32 = u_xlat4.x;
                  u_xlat20 = ((-(x_1867) * 2.0f) + x_1871);
                  let x_1874 : i32 = u_xlati15.x;
                  if ((x_1874 != 0i)) {
                    let x_1880 : f32 = u_xlat4.x;
                    x_1876 = x_1880;
                  } else {
                    let x_1882 : f32 = u_xlat20;
                    x_1876 = x_1882;
                  }
                  let x_1883 : f32 = x_1876;
                  u_xlat4.x = x_1883;
                  let x_1886 : f32 = u_xlat8.y;
                  let x_1890 : f32 = u_xlat4.z;
                  u_xlat20 = ((-(x_1886) * 2.0f) + x_1890);
                  let x_1893 : i32 = u_xlati15.x;
                  if ((x_1893 != 0i)) {
                    let x_1899 : f32 = u_xlat4.z;
                    x_1895 = x_1899;
                  } else {
                    let x_1901 : f32 = u_xlat20;
                    x_1895 = x_1901;
                  }
                  let x_1902 : f32 = x_1895;
                  u_xlat4.z = x_1902;
                  let x_1904 : vec2<i32> = u_xlati15;
                  u_xlati5 = ~(x_1904);
                  let x_1907 : i32 = u_xlati5.y;
                  let x_1910 : i32 = u_xlati5.x;
                  u_xlati20 = bitcast<i32>((bitcast<u32>(x_1907) | bitcast<u32>(x_1910)));
                  let x_1915 : f32 = u_xlat8.x;
                  let x_1918 : f32 = u_xlat10.x;
                  u_xlat5.x = ((x_1915 * 2.0f) + x_1918);
                  let x_1922 : i32 = u_xlati15.y;
                  if ((x_1922 != 0i)) {
                    let x_1928 : f32 = u_xlat10.x;
                    x_1924 = x_1928;
                  } else {
                    let x_1931 : f32 = u_xlat5.x;
                    x_1924 = x_1931;
                  }
                  let x_1932 : f32 = x_1924;
                  u_xlat10.x = x_1932;
                  let x_1935 : f32 = u_xlat8.y;
                  let x_1938 : f32 = u_xlat10.z;
                  u_xlat5.x = ((x_1935 * 2.0f) + x_1938);
                  let x_1942 : i32 = u_xlati15.y;
                  if ((x_1942 != 0i)) {
                    let x_1948 : f32 = u_xlat10.z;
                    x_1944 = x_1948;
                  } else {
                    let x_1951 : f32 = u_xlat5.x;
                    x_1944 = x_1951;
                  }
                  let x_1952 : f32 = x_1944;
                  u_xlat10.z = x_1952;
                  let x_1954 : i32 = u_xlati20;
                  if ((x_1954 != 0i)) {
                    let x_1959 : i32 = u_xlati15.x;
                    if ((x_1959 == 0i)) {
                      let x_1963 : vec3<f32> = u_xlat4;
                      u_xlat5 = vec2<f32>(x_1963.x, x_1963.z);
                      let x_1965 : vec2<f32> = u_xlat5;
                      u_xlat5 = clamp(x_1965, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                      let x_1969 : vec2<f32> = u_xlat5;
                      let x_1971 : f32 = x_23.x_RenderViewportScaleFactor;
                      u_xlat5 = (x_1969 * vec2<f32>(x_1971, x_1971));
                      let x_1977 : vec2<f32> = u_xlat5;
                      let x_1978 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1977, 0.0f);
                      u_xlat3.x = x_1978.y;
                    }
                    let x_1982 : i32 = u_xlati15.y;
                    if ((x_1982 == 0i)) {
                      let x_1986 : vec3<f32> = u_xlat10;
                      u_xlat5 = vec2<f32>(x_1986.x, x_1986.z);
                      let x_1988 : vec2<f32> = u_xlat5;
                      u_xlat5 = clamp(x_1988, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                      let x_1992 : vec2<f32> = u_xlat5;
                      let x_1994 : f32 = x_23.x_RenderViewportScaleFactor;
                      u_xlat5 = (x_1992 * vec2<f32>(x_1994, x_1994));
                      let x_2000 : vec2<f32> = u_xlat5;
                      let x_2001 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_2000, 0.0f);
                      u_xlat3.y = x_2001.y;
                    }
                    let x_2004 : f32 = u_xlat12;
                    let x_2008 : f32 = u_xlat3.x;
                    u_xlat20 = ((-(x_2004) * 0.5f) + x_2008);
                    let x_2011 : i32 = u_xlati15.x;
                    if ((x_2011 != 0i)) {
                      let x_2017 : f32 = u_xlat3.x;
                      x_2013 = x_2017;
                    } else {
                      let x_2019 : f32 = u_xlat20;
                      x_2013 = x_2019;
                    }
                    let x_2020 : f32 = x_2013;
                    u_xlat3.x = x_2020;
                    let x_2022 : f32 = u_xlat12;
                    let x_2026 : f32 = u_xlat3.y;
                    u_xlat20 = ((-(x_2022) * 0.5f) + x_2026);
                    let x_2029 : i32 = u_xlati15.y;
                    if ((x_2029 != 0i)) {
                      let x_2035 : f32 = u_xlat3.y;
                      x_2031 = x_2035;
                    } else {
                      let x_2037 : f32 = u_xlat20;
                      x_2031 = x_2037;
                    }
                    let x_2038 : f32 = x_2031;
                    u_xlat3.y = x_2038;
                    let x_2040 : vec3<f32> = u_xlat3;
                    let x_2043 : f32 = u_xlat19;
                    let x_2045 : vec4<bool> = (abs(vec4<f32>(x_2040.x, x_2040.y, x_2040.x, x_2040.y)) >= vec4<f32>(x_2043, x_2043, x_2043, x_2043));
                    u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_2045.x, x_2045.y)) * vec2<u32>(4294967295u, 4294967295u)));
                    let x_2052 : f32 = u_xlat8.x;
                    let x_2057 : f32 = u_xlat4.x;
                    u_xlat20 = ((-(x_2052) * 4.0f) + x_2057);
                    let x_2060 : i32 = u_xlati15.x;
                    if ((x_2060 != 0i)) {
                      let x_2066 : f32 = u_xlat4.x;
                      x_2062 = x_2066;
                    } else {
                      let x_2068 : f32 = u_xlat20;
                      x_2062 = x_2068;
                    }
                    let x_2069 : f32 = x_2062;
                    u_xlat4.x = x_2069;
                    let x_2072 : f32 = u_xlat8.y;
                    let x_2076 : f32 = u_xlat4.z;
                    u_xlat20 = ((-(x_2072) * 4.0f) + x_2076);
                    let x_2079 : i32 = u_xlati15.x;
                    if ((x_2079 != 0i)) {
                      let x_2085 : f32 = u_xlat4.z;
                      x_2081 = x_2085;
                    } else {
                      let x_2087 : f32 = u_xlat20;
                      x_2081 = x_2087;
                    }
                    let x_2088 : f32 = x_2081;
                    u_xlat4.z = x_2088;
                    let x_2090 : vec2<i32> = u_xlati15;
                    u_xlati5 = ~(x_2090);
                    let x_2093 : i32 = u_xlati5.y;
                    let x_2096 : i32 = u_xlati5.x;
                    u_xlati20 = bitcast<i32>((bitcast<u32>(x_2093) | bitcast<u32>(x_2096)));
                    let x_2101 : f32 = u_xlat8.x;
                    let x_2104 : f32 = u_xlat10.x;
                    u_xlat5.x = ((x_2101 * 4.0f) + x_2104);
                    let x_2108 : i32 = u_xlati15.y;
                    if ((x_2108 != 0i)) {
                      let x_2114 : f32 = u_xlat10.x;
                      x_2110 = x_2114;
                    } else {
                      let x_2117 : f32 = u_xlat5.x;
                      x_2110 = x_2117;
                    }
                    let x_2118 : f32 = x_2110;
                    u_xlat10.x = x_2118;
                    let x_2121 : f32 = u_xlat8.y;
                    let x_2124 : f32 = u_xlat10.z;
                    u_xlat5.x = ((x_2121 * 4.0f) + x_2124);
                    let x_2128 : i32 = u_xlati15.y;
                    if ((x_2128 != 0i)) {
                      let x_2134 : f32 = u_xlat10.z;
                      x_2130 = x_2134;
                    } else {
                      let x_2137 : f32 = u_xlat5.x;
                      x_2130 = x_2137;
                    }
                    let x_2138 : f32 = x_2130;
                    u_xlat10.z = x_2138;
                    let x_2140 : i32 = u_xlati20;
                    if ((x_2140 != 0i)) {
                      let x_2145 : i32 = u_xlati15.x;
                      if ((x_2145 == 0i)) {
                        let x_2149 : vec3<f32> = u_xlat4;
                        u_xlat5 = vec2<f32>(x_2149.x, x_2149.z);
                        let x_2151 : vec2<f32> = u_xlat5;
                        u_xlat5 = clamp(x_2151, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                        let x_2155 : vec2<f32> = u_xlat5;
                        let x_2157 : f32 = x_23.x_RenderViewportScaleFactor;
                        u_xlat5 = (x_2155 * vec2<f32>(x_2157, x_2157));
                        let x_2163 : vec2<f32> = u_xlat5;
                        let x_2164 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_2163, 0.0f);
                        u_xlat3.x = x_2164.y;
                      }
                      let x_2168 : i32 = u_xlati15.y;
                      if ((x_2168 == 0i)) {
                        let x_2172 : vec3<f32> = u_xlat10;
                        u_xlat5 = vec2<f32>(x_2172.x, x_2172.z);
                        let x_2174 : vec2<f32> = u_xlat5;
                        u_xlat5 = clamp(x_2174, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                        let x_2178 : vec2<f32> = u_xlat5;
                        let x_2180 : f32 = x_23.x_RenderViewportScaleFactor;
                        u_xlat5 = (x_2178 * vec2<f32>(x_2180, x_2180));
                        let x_2186 : vec2<f32> = u_xlat5;
                        let x_2187 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_2186, 0.0f);
                        u_xlat3.y = x_2187.y;
                      }
                      let x_2190 : f32 = u_xlat12;
                      let x_2194 : f32 = u_xlat3.x;
                      u_xlat20 = ((-(x_2190) * 0.5f) + x_2194);
                      let x_2197 : i32 = u_xlati15.x;
                      if ((x_2197 != 0i)) {
                        let x_2203 : f32 = u_xlat3.x;
                        x_2199 = x_2203;
                      } else {
                        let x_2205 : f32 = u_xlat20;
                        x_2199 = x_2205;
                      }
                      let x_2206 : f32 = x_2199;
                      u_xlat3.x = x_2206;
                      let x_2208 : f32 = u_xlat12;
                      let x_2212 : f32 = u_xlat3.y;
                      u_xlat12 = ((-(x_2208) * 0.5f) + x_2212);
                      let x_2215 : i32 = u_xlati15.y;
                      if ((x_2215 != 0i)) {
                        let x_2221 : f32 = u_xlat3.y;
                        x_2217 = x_2221;
                      } else {
                        let x_2223 : f32 = u_xlat12;
                        x_2217 = x_2223;
                      }
                      let x_2224 : f32 = x_2217;
                      u_xlat3.y = x_2224;
                      let x_2228 : vec3<f32> = u_xlat3;
                      let x_2231 : f32 = u_xlat19;
                      let x_2233 : vec4<bool> = (abs(vec4<f32>(x_2228.x, x_2228.y, x_2228.x, x_2228.y)) >= vec4<f32>(x_2231, x_2231, x_2231, x_2231));
                      u_xlatb15 = vec2<bool>(x_2233.x, x_2233.y);
                      let x_2236 : f32 = u_xlat8.x;
                      let x_2241 : f32 = u_xlat4.x;
                      u_xlat12 = ((-(x_2236) * 8.0f) + x_2241);
                      let x_2244 : bool = u_xlatb15.x;
                      if (x_2244) {
                        let x_2249 : f32 = u_xlat4.x;
                        x_2245 = x_2249;
                      } else {
                        let x_2251 : f32 = u_xlat12;
                        x_2245 = x_2251;
                      }
                      let x_2252 : f32 = x_2245;
                      u_xlat4.x = x_2252;
                      let x_2255 : f32 = u_xlat8.y;
                      let x_2259 : f32 = u_xlat4.z;
                      u_xlat12 = ((-(x_2255) * 8.0f) + x_2259);
                      let x_2262 : bool = u_xlatb15.x;
                      if (x_2262) {
                        let x_2267 : f32 = u_xlat4.z;
                        x_2263 = x_2267;
                      } else {
                        let x_2269 : f32 = u_xlat12;
                        x_2263 = x_2269;
                      }
                      let x_2270 : f32 = x_2263;
                      u_xlat4.z = x_2270;
                      let x_2273 : f32 = u_xlat8.x;
                      let x_2276 : f32 = u_xlat10.x;
                      u_xlat12 = ((x_2273 * 8.0f) + x_2276);
                      let x_2279 : bool = u_xlatb15.y;
                      if (x_2279) {
                        let x_2284 : f32 = u_xlat10.x;
                        x_2280 = x_2284;
                      } else {
                        let x_2286 : f32 = u_xlat12;
                        x_2280 = x_2286;
                      }
                      let x_2287 : f32 = x_2280;
                      u_xlat10.x = x_2287;
                      let x_2290 : f32 = u_xlat8.y;
                      let x_2293 : f32 = u_xlat10.z;
                      u_xlat12 = ((x_2290 * 8.0f) + x_2293);
                      let x_2296 : bool = u_xlatb15.y;
                      if (x_2296) {
                        let x_2301 : f32 = u_xlat10.z;
                        x_2297 = x_2301;
                      } else {
                        let x_2303 : f32 = u_xlat12;
                        x_2297 = x_2303;
                      }
                      let x_2304 : f32 = x_2297;
                      u_xlat10.z = x_2304;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    let x_2307 : f32 = u_xlat4.x;
    let x_2310 : f32 = vs_TEXCOORD0.x;
    u_xlat12 = (-(x_2307) + x_2310);
    let x_2313 : f32 = u_xlat10.x;
    let x_2315 : f32 = vs_TEXCOORD0.x;
    u_xlat19 = (x_2313 + -(x_2315));
    let x_2319 : f32 = u_xlat4.z;
    let x_2322 : f32 = vs_TEXCOORD0.y;
    u_xlat8.x = (-(x_2319) + x_2322);
    let x_2325 : bool = u_xlatb0;
    if (x_2325) {
      let x_2329 : f32 = u_xlat12;
      x_2326 = x_2329;
    } else {
      let x_2332 : f32 = u_xlat8.x;
      x_2326 = x_2332;
    }
    let x_2333 : f32 = x_2326;
    u_xlat12 = x_2333;
    let x_2335 : f32 = u_xlat10.z;
    let x_2337 : f32 = vs_TEXCOORD0.y;
    u_xlat8.x = (x_2335 + -(x_2337));
    let x_2341 : bool = u_xlatb0;
    if (x_2341) {
      let x_2345 : f32 = u_xlat19;
      x_2342 = x_2345;
    } else {
      let x_2348 : f32 = u_xlat8.x;
      x_2342 = x_2348;
    }
    let x_2349 : f32 = x_2342;
    u_xlat19 = x_2349;
    let x_2351 : vec3<f32> = u_xlat3;
    let x_2354 : vec4<bool> = (vec4<f32>(x_2351.x, x_2351.y, x_2351.x, x_2351.x) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
    u_xlati8 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_2354.x, x_2354.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_2360 : f32 = u_xlat12;
    let x_2361 : f32 = u_xlat19;
    u_xlat20 = (x_2360 + x_2361);
    let x_2364 : i32 = u_xlati2;
    let x_2367 : vec2<i32> = u_xlati8;
    let x_2369 : vec4<bool> = (vec4<i32>(x_2364, x_2364, x_2364, x_2364) != vec4<i32>(x_2367.x, x_2367.y, x_2367.x, x_2367.x));
    u_xlatb2 = vec2<bool>(x_2369.x, x_2369.y);
    let x_2371 : f32 = u_xlat20;
    u_xlat14 = (1.0f / x_2371);
    let x_2373 : f32 = u_xlat12;
    let x_2374 : f32 = u_xlat19;
    u_xlatb20 = (x_2373 < x_2374);
    let x_2376 : f32 = u_xlat12;
    let x_2377 : f32 = u_xlat19;
    u_xlat12 = min(x_2376, x_2377);
    let x_2380 : bool = u_xlatb20;
    if (x_2380) {
      let x_2385 : bool = u_xlatb2.x;
      x_2381 = x_2385;
    } else {
      let x_2388 : bool = u_xlatb2.y;
      x_2381 = x_2388;
    }
    let x_2389 : bool = x_2381;
    u_xlatb19 = x_2389;
    let x_2391 : f32 = u_xlat6.x;
    let x_2393 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2391 * x_2393);
    let x_2396 : f32 = u_xlat12;
    let x_2397 : f32 = u_xlat14;
    u_xlat12 = ((x_2396 * -(x_2397)) + 0.5f);
    let x_2401 : bool = u_xlatb19;
    let x_2402 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_2402, x_2401);
    let x_2405 : f32 = u_xlat6.x;
    let x_2406 : f32 = u_xlat12;
    u_xlat6.x = max(x_2405, x_2406);
    let x_2409 : vec3<f32> = u_xlat6;
    let x_2411 : f32 = u_xlat18;
    let x_2414 : vec2<f32> = vs_TEXCOORD0;
    let x_2415 : vec2<f32> = ((vec2<f32>(x_2409.x, x_2409.x) * vec2<f32>(x_2411, x_2411)) + x_2414);
    let x_2416 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_2415.x, x_2415.y, x_2416.z);
    let x_2418 : bool = u_xlatb0;
    if (x_2418) {
      let x_2423 : f32 = vs_TEXCOORD0.x;
      x_2419 = x_2423;
    } else {
      let x_2426 : f32 = u_xlat6.x;
      x_2419 = x_2426;
    }
    let x_2427 : f32 = x_2419;
    u_xlat2.x = x_2427;
    let x_2430 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_2430, 0.0f, 1.0f);
    let x_2433 : bool = u_xlatb0;
    if (x_2433) {
      let x_2438 : f32 = u_xlat6.y;
      x_2434 = x_2438;
    } else {
      let x_2441 : f32 = vs_TEXCOORD0.y;
      x_2434 = x_2441;
    }
    let x_2442 : f32 = x_2434;
    u_xlat2.y = x_2442;
    let x_2445 : f32 = u_xlat2.y;
    u_xlat2.y = clamp(x_2445, 0.0f, 1.0f);
    let x_2448 : vec3<f32> = u_xlat2;
    let x_2451 : f32 = x_23.x_RenderViewportScaleFactor;
    u_xlat0 = (vec2<f32>(x_2448.x, x_2448.y) * vec2<f32>(x_2451, x_2451));
    let x_2457 : vec2<f32> = u_xlat0;
    let x_2458 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_2457, 0.0f);
    u_xlat1 = vec3<f32>(x_2458.x, x_2458.y, x_2458.z);
  }
  let x_2464 : vec2<f32> = vs_TEXCOORD1;
  let x_2465 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_2464);
  u_xlat0.x = x_2465.w;
  let x_2469 : vec2<f32> = vs_TEXCOORD0;
  let x_2472 : vec4<f32> = x_23.x_Dithering_Coords;
  let x_2476 : vec4<f32> = x_23.x_Dithering_Coords;
  let x_2478 : vec2<f32> = ((x_2469 * vec2<f32>(x_2472.x, x_2472.y)) + vec2<f32>(x_2476.z, x_2476.w));
  let x_2479 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_2478.x, x_2478.y, x_2479.z);
  let x_2486 : vec3<f32> = u_xlat6;
  let x_2488 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_2486.x, x_2486.y));
  u_xlat6.x = x_2488.w;
  let x_2492 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_2492 * 2.0f) + -1.0f);
  let x_2498 : f32 = u_xlat6.x;
  u_xlat12 = ((x_2498 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_2502 : f32 = u_xlat12;
  u_xlat12 = clamp(x_2502, 0.0f, 1.0f);
  let x_2504 : f32 = u_xlat12;
  u_xlat12 = ((x_2504 * 2.0f) + -1.0f);
  let x_2508 : f32 = u_xlat6.x;
  u_xlat6.x = (-(abs(x_2508)) + 1.0f);
  let x_2514 : f32 = u_xlat6.x;
  u_xlat6.x = sqrt(x_2514);
  let x_2518 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_2518) + 1.0f);
  let x_2523 : f32 = u_xlat6.x;
  let x_2524 : f32 = u_xlat12;
  u_xlat6.x = (x_2523 * x_2524);
  let x_2527 : vec3<f32> = u_xlat1;
  u_xlat2 = (x_2527 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_2531 : vec3<f32> = u_xlat1;
  u_xlat3 = max(abs(x_2531), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_2536 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_2536);
  let x_2538 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_2538 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_2542 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_2542);
  let x_2544 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_2544 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_2556 : vec3<f32> = u_xlat1;
  let x_2558 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_2556.x, x_2556.y, x_2556.z, x_2556.x));
  u_xlatb1 = vec3<bool>(x_2558.x, x_2558.y, x_2558.z);
  let x_2561 : bool = u_xlatb1.x;
  if (x_2561) {
    let x_2566 : f32 = u_xlat2.x;
    x_2562 = x_2566;
  } else {
    let x_2569 : f32 = u_xlat3.x;
    x_2562 = x_2569;
  }
  let x_2570 : f32 = x_2562;
  u_xlat1.x = x_2570;
  let x_2573 : bool = u_xlatb1.y;
  if (x_2573) {
    let x_2578 : f32 = u_xlat2.y;
    x_2574 = x_2578;
  } else {
    let x_2581 : f32 = u_xlat3.y;
    x_2574 = x_2581;
  }
  let x_2582 : f32 = x_2574;
  u_xlat1.y = x_2582;
  let x_2585 : bool = u_xlatb1.z;
  if (x_2585) {
    let x_2590 : f32 = u_xlat2.z;
    x_2586 = x_2590;
  } else {
    let x_2593 : f32 = u_xlat3.z;
    x_2586 = x_2593;
  }
  let x_2594 : f32 = x_2586;
  u_xlat1.z = x_2594;
  let x_2596 : vec3<f32> = u_xlat6;
  let x_2601 : vec3<f32> = u_xlat1;
  u_xlat6 = ((vec3<f32>(x_2596.x, x_2596.x, x_2596.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_2601);
  let x_2603 : vec3<f32> = u_xlat6;
  u_xlat1 = (x_2603 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_2607 : vec3<f32> = u_xlat6;
  u_xlat2 = (x_2607 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_2611 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_2611 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_2615 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_2615), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_2618 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_2618);
  let x_2620 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_2620 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_2624 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_2624);
  let x_2629 : vec3<f32> = u_xlat6;
  let x_2631 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.040449999f) >= vec4<f32>(x_2629.x, x_2629.y, x_2629.z, x_2629.z));
  u_xlatb6 = vec3<bool>(x_2631.x, x_2631.y, x_2631.z);
  let x_2636 : bool = u_xlatb6.x;
  if (x_2636) {
    let x_2641 : f32 = u_xlat1.x;
    x_2637 = x_2641;
  } else {
    let x_2644 : f32 = u_xlat2.x;
    x_2637 = x_2644;
  }
  let x_2645 : f32 = x_2637;
  SV_Target0.x = x_2645;
  let x_2649 : bool = u_xlatb6.y;
  if (x_2649) {
    let x_2654 : f32 = u_xlat1.y;
    x_2650 = x_2654;
  } else {
    let x_2657 : f32 = u_xlat2.y;
    x_2650 = x_2657;
  }
  let x_2658 : f32 = x_2650;
  SV_Target0.y = x_2658;
  let x_2661 : bool = u_xlatb6.z;
  if (x_2661) {
    let x_2666 : f32 = u_xlat1.z;
    x_2662 = x_2666;
  } else {
    let x_2669 : f32 = u_xlat2.z;
    x_2662 = x_2669;
  }
  let x_2670 : f32 = x_2662;
  SV_Target0.z = x_2670;
  let x_2673 : f32 = u_xlat0.x;
  SV_Target0.w = x_2673;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

