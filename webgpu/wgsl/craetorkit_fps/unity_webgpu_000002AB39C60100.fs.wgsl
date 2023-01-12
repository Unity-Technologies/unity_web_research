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
  var x_952 : f32;
  var x_971 : f32;
  var x_1000 : f32;
  var x_1020 : f32;
  var x_1089 : f32;
  var x_1107 : f32;
  var u_xlatb15 : vec2<bool>;
  var x_1135 : f32;
  var x_1153 : f32;
  var x_1170 : f32;
  var x_1187 : f32;
  var x_1216 : f32;
  var x_1232 : f32;
  var u_xlati8 : vec2<i32>;
  var u_xlatb2 : vec2<bool>;
  var u_xlatb19 : bool;
  var x_1271 : bool;
  var x_1309 : f32;
  var x_1324 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_1452 : f32;
  var x_1464 : f32;
  var x_1476 : f32;
  var u_xlatb6 : vec3<bool>;
  var x_1527 : f32;
  var x_1540 : f32;
  var x_1552 : f32;
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
  u_xlat20 = (x_127 * 0.165999994f);
  let x_130 : f32 = u_xlat14;
  let x_133 : f32 = u_xlat8.x;
  u_xlat8.x = (-(x_130) + x_133);
  let x_136 : f32 = u_xlat20;
  u_xlat14 = max(x_136, 0.0625f);
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
        let x_947 : f32 = u_xlat4.x;
        u_xlat20 = ((-(x_942) * 4.0f) + x_947);
        let x_950 : i32 = u_xlati15.x;
        if ((x_950 != 0i)) {
          let x_956 : f32 = u_xlat4.x;
          x_952 = x_956;
        } else {
          let x_958 : f32 = u_xlat20;
          x_952 = x_958;
        }
        let x_959 : f32 = x_952;
        u_xlat4.x = x_959;
        let x_962 : f32 = u_xlat8.y;
        let x_966 : f32 = u_xlat4.z;
        u_xlat20 = ((-(x_962) * 4.0f) + x_966);
        let x_969 : i32 = u_xlati15.x;
        if ((x_969 != 0i)) {
          let x_975 : f32 = u_xlat4.z;
          x_971 = x_975;
        } else {
          let x_977 : f32 = u_xlat20;
          x_971 = x_977;
        }
        let x_978 : f32 = x_971;
        u_xlat4.z = x_978;
        let x_980 : vec2<i32> = u_xlati15;
        u_xlati5 = ~(x_980);
        let x_983 : i32 = u_xlati5.y;
        let x_986 : i32 = u_xlati5.x;
        u_xlati20 = bitcast<i32>((bitcast<u32>(x_983) | bitcast<u32>(x_986)));
        let x_991 : f32 = u_xlat8.x;
        let x_994 : f32 = u_xlat10.x;
        u_xlat5.x = ((x_991 * 4.0f) + x_994);
        let x_998 : i32 = u_xlati15.y;
        if ((x_998 != 0i)) {
          let x_1004 : f32 = u_xlat10.x;
          x_1000 = x_1004;
        } else {
          let x_1007 : f32 = u_xlat5.x;
          x_1000 = x_1007;
        }
        let x_1008 : f32 = x_1000;
        u_xlat10.x = x_1008;
        let x_1011 : f32 = u_xlat8.y;
        let x_1014 : f32 = u_xlat10.z;
        u_xlat5.x = ((x_1011 * 4.0f) + x_1014);
        let x_1018 : i32 = u_xlati15.y;
        if ((x_1018 != 0i)) {
          let x_1024 : f32 = u_xlat10.z;
          x_1020 = x_1024;
        } else {
          let x_1027 : f32 = u_xlat5.x;
          x_1020 = x_1027;
        }
        let x_1028 : f32 = x_1020;
        u_xlat10.z = x_1028;
        let x_1030 : i32 = u_xlati20;
        if ((x_1030 != 0i)) {
          let x_1035 : i32 = u_xlati15.x;
          if ((x_1035 == 0i)) {
            let x_1039 : vec3<f32> = u_xlat4;
            u_xlat5 = vec2<f32>(x_1039.x, x_1039.z);
            let x_1041 : vec2<f32> = u_xlat5;
            u_xlat5 = clamp(x_1041, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1045 : vec2<f32> = u_xlat5;
            let x_1047 : f32 = x_23.x_RenderViewportScaleFactor;
            u_xlat5 = (x_1045 * vec2<f32>(x_1047, x_1047));
            let x_1053 : vec2<f32> = u_xlat5;
            let x_1054 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1053, 0.0f);
            u_xlat3.x = x_1054.y;
          }
          let x_1058 : i32 = u_xlati15.y;
          if ((x_1058 == 0i)) {
            let x_1062 : vec3<f32> = u_xlat10;
            u_xlat5 = vec2<f32>(x_1062.x, x_1062.z);
            let x_1064 : vec2<f32> = u_xlat5;
            u_xlat5 = clamp(x_1064, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1068 : vec2<f32> = u_xlat5;
            let x_1070 : f32 = x_23.x_RenderViewportScaleFactor;
            u_xlat5 = (x_1068 * vec2<f32>(x_1070, x_1070));
            let x_1076 : vec2<f32> = u_xlat5;
            let x_1077 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1076, 0.0f);
            u_xlat3.y = x_1077.y;
          }
          let x_1080 : f32 = u_xlat12;
          let x_1084 : f32 = u_xlat3.x;
          u_xlat20 = ((-(x_1080) * 0.5f) + x_1084);
          let x_1087 : i32 = u_xlati15.x;
          if ((x_1087 != 0i)) {
            let x_1093 : f32 = u_xlat3.x;
            x_1089 = x_1093;
          } else {
            let x_1095 : f32 = u_xlat20;
            x_1089 = x_1095;
          }
          let x_1096 : f32 = x_1089;
          u_xlat3.x = x_1096;
          let x_1098 : f32 = u_xlat12;
          let x_1102 : f32 = u_xlat3.y;
          u_xlat12 = ((-(x_1098) * 0.5f) + x_1102);
          let x_1105 : i32 = u_xlati15.y;
          if ((x_1105 != 0i)) {
            let x_1111 : f32 = u_xlat3.y;
            x_1107 = x_1111;
          } else {
            let x_1113 : f32 = u_xlat12;
            x_1107 = x_1113;
          }
          let x_1114 : f32 = x_1107;
          u_xlat3.y = x_1114;
          let x_1118 : vec3<f32> = u_xlat3;
          let x_1121 : f32 = u_xlat19;
          let x_1123 : vec4<bool> = (abs(vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y)) >= vec4<f32>(x_1121, x_1121, x_1121, x_1121));
          u_xlatb15 = vec2<bool>(x_1123.x, x_1123.y);
          let x_1126 : f32 = u_xlat8.x;
          let x_1131 : f32 = u_xlat4.x;
          u_xlat12 = ((-(x_1126) * 12.0f) + x_1131);
          let x_1134 : bool = u_xlatb15.x;
          if (x_1134) {
            let x_1139 : f32 = u_xlat4.x;
            x_1135 = x_1139;
          } else {
            let x_1141 : f32 = u_xlat12;
            x_1135 = x_1141;
          }
          let x_1142 : f32 = x_1135;
          u_xlat4.x = x_1142;
          let x_1145 : f32 = u_xlat8.y;
          let x_1149 : f32 = u_xlat4.z;
          u_xlat12 = ((-(x_1145) * 12.0f) + x_1149);
          let x_1152 : bool = u_xlatb15.x;
          if (x_1152) {
            let x_1157 : f32 = u_xlat4.z;
            x_1153 = x_1157;
          } else {
            let x_1159 : f32 = u_xlat12;
            x_1153 = x_1159;
          }
          let x_1160 : f32 = x_1153;
          u_xlat4.z = x_1160;
          let x_1163 : f32 = u_xlat8.x;
          let x_1166 : f32 = u_xlat10.x;
          u_xlat12 = ((x_1163 * 12.0f) + x_1166);
          let x_1169 : bool = u_xlatb15.y;
          if (x_1169) {
            let x_1174 : f32 = u_xlat10.x;
            x_1170 = x_1174;
          } else {
            let x_1176 : f32 = u_xlat12;
            x_1170 = x_1176;
          }
          let x_1177 : f32 = x_1170;
          u_xlat10.x = x_1177;
          let x_1180 : f32 = u_xlat8.y;
          let x_1183 : f32 = u_xlat10.z;
          u_xlat12 = ((x_1180 * 12.0f) + x_1183);
          let x_1186 : bool = u_xlatb15.y;
          if (x_1186) {
            let x_1191 : f32 = u_xlat10.z;
            x_1187 = x_1191;
          } else {
            let x_1193 : f32 = u_xlat12;
            x_1187 = x_1193;
          }
          let x_1194 : f32 = x_1187;
          u_xlat10.z = x_1194;
        }
      }
    }
    let x_1197 : f32 = u_xlat4.x;
    let x_1200 : f32 = vs_TEXCOORD0.x;
    u_xlat12 = (-(x_1197) + x_1200);
    let x_1203 : f32 = u_xlat10.x;
    let x_1205 : f32 = vs_TEXCOORD0.x;
    u_xlat19 = (x_1203 + -(x_1205));
    let x_1209 : f32 = u_xlat4.z;
    let x_1212 : f32 = vs_TEXCOORD0.y;
    u_xlat8.x = (-(x_1209) + x_1212);
    let x_1215 : bool = u_xlatb0;
    if (x_1215) {
      let x_1219 : f32 = u_xlat12;
      x_1216 = x_1219;
    } else {
      let x_1222 : f32 = u_xlat8.x;
      x_1216 = x_1222;
    }
    let x_1223 : f32 = x_1216;
    u_xlat12 = x_1223;
    let x_1225 : f32 = u_xlat10.z;
    let x_1227 : f32 = vs_TEXCOORD0.y;
    u_xlat8.x = (x_1225 + -(x_1227));
    let x_1231 : bool = u_xlatb0;
    if (x_1231) {
      let x_1235 : f32 = u_xlat19;
      x_1232 = x_1235;
    } else {
      let x_1238 : f32 = u_xlat8.x;
      x_1232 = x_1238;
    }
    let x_1239 : f32 = x_1232;
    u_xlat19 = x_1239;
    let x_1241 : vec3<f32> = u_xlat3;
    let x_1244 : vec4<bool> = (vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.x) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
    u_xlati8 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1244.x, x_1244.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_1250 : f32 = u_xlat12;
    let x_1251 : f32 = u_xlat19;
    u_xlat20 = (x_1250 + x_1251);
    let x_1254 : i32 = u_xlati2;
    let x_1257 : vec2<i32> = u_xlati8;
    let x_1259 : vec4<bool> = (vec4<i32>(x_1254, x_1254, x_1254, x_1254) != vec4<i32>(x_1257.x, x_1257.y, x_1257.x, x_1257.x));
    u_xlatb2 = vec2<bool>(x_1259.x, x_1259.y);
    let x_1261 : f32 = u_xlat20;
    u_xlat14 = (1.0f / x_1261);
    let x_1263 : f32 = u_xlat12;
    let x_1264 : f32 = u_xlat19;
    u_xlatb20 = (x_1263 < x_1264);
    let x_1266 : f32 = u_xlat12;
    let x_1267 : f32 = u_xlat19;
    u_xlat12 = min(x_1266, x_1267);
    let x_1270 : bool = u_xlatb20;
    if (x_1270) {
      let x_1275 : bool = u_xlatb2.x;
      x_1271 = x_1275;
    } else {
      let x_1278 : bool = u_xlatb2.y;
      x_1271 = x_1278;
    }
    let x_1279 : bool = x_1271;
    u_xlatb19 = x_1279;
    let x_1281 : f32 = u_xlat6.x;
    let x_1283 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1281 * x_1283);
    let x_1286 : f32 = u_xlat12;
    let x_1287 : f32 = u_xlat14;
    u_xlat12 = ((x_1286 * -(x_1287)) + 0.5f);
    let x_1291 : bool = u_xlatb19;
    let x_1292 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_1292, x_1291);
    let x_1295 : f32 = u_xlat6.x;
    let x_1296 : f32 = u_xlat12;
    u_xlat6.x = max(x_1295, x_1296);
    let x_1299 : vec3<f32> = u_xlat6;
    let x_1301 : f32 = u_xlat18;
    let x_1304 : vec2<f32> = vs_TEXCOORD0;
    let x_1305 : vec2<f32> = ((vec2<f32>(x_1299.x, x_1299.x) * vec2<f32>(x_1301, x_1301)) + x_1304);
    let x_1306 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_1305.x, x_1305.y, x_1306.z);
    let x_1308 : bool = u_xlatb0;
    if (x_1308) {
      let x_1313 : f32 = vs_TEXCOORD0.x;
      x_1309 = x_1313;
    } else {
      let x_1316 : f32 = u_xlat6.x;
      x_1309 = x_1316;
    }
    let x_1317 : f32 = x_1309;
    u_xlat2.x = x_1317;
    let x_1320 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1320, 0.0f, 1.0f);
    let x_1323 : bool = u_xlatb0;
    if (x_1323) {
      let x_1328 : f32 = u_xlat6.y;
      x_1324 = x_1328;
    } else {
      let x_1331 : f32 = vs_TEXCOORD0.y;
      x_1324 = x_1331;
    }
    let x_1332 : f32 = x_1324;
    u_xlat2.y = x_1332;
    let x_1335 : f32 = u_xlat2.y;
    u_xlat2.y = clamp(x_1335, 0.0f, 1.0f);
    let x_1338 : vec3<f32> = u_xlat2;
    let x_1341 : f32 = x_23.x_RenderViewportScaleFactor;
    u_xlat0 = (vec2<f32>(x_1338.x, x_1338.y) * vec2<f32>(x_1341, x_1341));
    let x_1347 : vec2<f32> = u_xlat0;
    let x_1348 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1347, 0.0f);
    u_xlat1 = vec3<f32>(x_1348.x, x_1348.y, x_1348.z);
  }
  let x_1354 : vec2<f32> = vs_TEXCOORD1;
  let x_1355 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_1354);
  u_xlat0.x = x_1355.w;
  let x_1359 : vec2<f32> = vs_TEXCOORD0;
  let x_1362 : vec4<f32> = x_23.x_Dithering_Coords;
  let x_1366 : vec4<f32> = x_23.x_Dithering_Coords;
  let x_1368 : vec2<f32> = ((x_1359 * vec2<f32>(x_1362.x, x_1362.y)) + vec2<f32>(x_1366.z, x_1366.w));
  let x_1369 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_1368.x, x_1368.y, x_1369.z);
  let x_1376 : vec3<f32> = u_xlat6;
  let x_1378 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1376.x, x_1376.y));
  u_xlat6.x = x_1378.w;
  let x_1382 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1382 * 2.0f) + -1.0f);
  let x_1388 : f32 = u_xlat6.x;
  u_xlat12 = ((x_1388 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1392 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1392, 0.0f, 1.0f);
  let x_1394 : f32 = u_xlat12;
  u_xlat12 = ((x_1394 * 2.0f) + -1.0f);
  let x_1398 : f32 = u_xlat6.x;
  u_xlat6.x = (-(abs(x_1398)) + 1.0f);
  let x_1404 : f32 = u_xlat6.x;
  u_xlat6.x = sqrt(x_1404);
  let x_1408 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_1408) + 1.0f);
  let x_1413 : f32 = u_xlat6.x;
  let x_1414 : f32 = u_xlat12;
  u_xlat6.x = (x_1413 * x_1414);
  let x_1417 : vec3<f32> = u_xlat1;
  u_xlat2 = (x_1417 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1421 : vec3<f32> = u_xlat1;
  u_xlat3 = max(abs(x_1421), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1426 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_1426);
  let x_1428 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_1428 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1432 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_1432);
  let x_1434 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_1434 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1446 : vec3<f32> = u_xlat1;
  let x_1448 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1446.x, x_1446.y, x_1446.z, x_1446.x));
  u_xlatb1 = vec3<bool>(x_1448.x, x_1448.y, x_1448.z);
  let x_1451 : bool = u_xlatb1.x;
  if (x_1451) {
    let x_1456 : f32 = u_xlat2.x;
    x_1452 = x_1456;
  } else {
    let x_1459 : f32 = u_xlat3.x;
    x_1452 = x_1459;
  }
  let x_1460 : f32 = x_1452;
  u_xlat1.x = x_1460;
  let x_1463 : bool = u_xlatb1.y;
  if (x_1463) {
    let x_1468 : f32 = u_xlat2.y;
    x_1464 = x_1468;
  } else {
    let x_1471 : f32 = u_xlat3.y;
    x_1464 = x_1471;
  }
  let x_1472 : f32 = x_1464;
  u_xlat1.y = x_1472;
  let x_1475 : bool = u_xlatb1.z;
  if (x_1475) {
    let x_1480 : f32 = u_xlat2.z;
    x_1476 = x_1480;
  } else {
    let x_1483 : f32 = u_xlat3.z;
    x_1476 = x_1483;
  }
  let x_1484 : f32 = x_1476;
  u_xlat1.z = x_1484;
  let x_1486 : vec3<f32> = u_xlat6;
  let x_1491 : vec3<f32> = u_xlat1;
  u_xlat6 = ((vec3<f32>(x_1486.x, x_1486.x, x_1486.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_1491);
  let x_1493 : vec3<f32> = u_xlat6;
  u_xlat1 = (x_1493 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1497 : vec3<f32> = u_xlat6;
  u_xlat2 = (x_1497 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1501 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1501 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1505 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1505), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1508 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1508);
  let x_1510 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1510 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1514 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1514);
  let x_1519 : vec3<f32> = u_xlat6;
  let x_1521 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.040449999f) >= vec4<f32>(x_1519.x, x_1519.y, x_1519.z, x_1519.z));
  u_xlatb6 = vec3<bool>(x_1521.x, x_1521.y, x_1521.z);
  let x_1526 : bool = u_xlatb6.x;
  if (x_1526) {
    let x_1531 : f32 = u_xlat1.x;
    x_1527 = x_1531;
  } else {
    let x_1534 : f32 = u_xlat2.x;
    x_1527 = x_1534;
  }
  let x_1535 : f32 = x_1527;
  SV_Target0.x = x_1535;
  let x_1539 : bool = u_xlatb6.y;
  if (x_1539) {
    let x_1544 : f32 = u_xlat1.y;
    x_1540 = x_1544;
  } else {
    let x_1547 : f32 = u_xlat2.y;
    x_1540 = x_1547;
  }
  let x_1548 : f32 = x_1540;
  SV_Target0.y = x_1548;
  let x_1551 : bool = u_xlatb6.z;
  if (x_1551) {
    let x_1556 : f32 = u_xlat1.z;
    x_1552 = x_1556;
  } else {
    let x_1559 : f32 = u_xlat2.z;
    x_1552 = x_1559;
  }
  let x_1560 : f32 = x_1552;
  SV_Target0.z = x_1560;
  let x_1563 : f32 = u_xlat0.x;
  SV_Target0.w = x_1563;
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

