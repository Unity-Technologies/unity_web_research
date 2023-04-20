diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_SourceSize : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlatb9 : bool;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlatb3 : bool;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlati21 : i32;

var<private> u_xlati17 : vec2<i32>;

var<private> u_xlati11 : vec3<i32>;

var<private> u_xlati9 : i32;

var<private> u_xlati5 : vec2<i32>;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlati2 : vec2<i32>;

var<private> u_xlatb2 : vec2<bool>;

var<private> u_xlatb23 : bool;

var<private> u_xlatb15 : bool;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_391 : vec2<f32>;
  var x_404 : f32;
  var x_454 : f32;
  var x_473 : f32;
  var x_482 : f32;
  var x_498 : f32;
  var x_510 : f32;
  var x_562 : f32;
  var x_639 : f32;
  var x_660 : f32;
  var x_696 : f32;
  var x_716 : f32;
  var x_771 : f32;
  var x_792 : f32;
  var x_824 : f32;
  var x_845 : f32;
  var x_876 : f32;
  var x_896 : f32;
  var x_951 : f32;
  var x_972 : f32;
  var x_1005 : f32;
  var x_1026 : f32;
  var x_1056 : f32;
  var x_1076 : f32;
  var x_1131 : f32;
  var x_1152 : f32;
  var x_1185 : f32;
  var x_1205 : f32;
  var x_1224 : f32;
  var x_1243 : f32;
  var x_1274 : f32;
  var x_1292 : f32;
  var x_1338 : bool;
  var x_1377 : f32;
  var x_1388 : f32;
  var x_1449 : f32;
  var x_1462 : f32;
  var x_1474 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_34);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_39 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_39, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let x_50 : vec4<f32> = x_27.x_SourceSize;
  let x_56 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_50.z, x_50.w, x_50.z, x_50.w) * vec4<f32>(0.0f, 1.0f, 1.0f, 0.0f)) + vec4<f32>(x_56.x, x_56.y, x_56.x, x_56.y));
  let x_63 : vec4<f32> = u_xlat1;
  let x_65 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_63.x, x_63.y), 0.0f);
  let x_66 : vec3<f32> = vec3<f32>(x_65.x, x_65.y, x_65.z);
  let x_67 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_66.x, x_66.y, x_66.z, x_67.w);
  let x_69 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec3<f32>(x_69.x, x_69.y, x_69.z), vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let x_77 : vec4<f32> = u_xlat1;
  let x_79 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_77.z, x_77.w), 0.0f);
  u_xlat8 = vec3<f32>(x_79.x, x_79.y, x_79.z);
  let x_81 : vec3<f32> = u_xlat8;
  u_xlat1.y = dot(x_81, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let x_86 : vec4<f32> = x_27.x_SourceSize;
  let x_91 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_86.z, x_86.w, x_86.z, x_86.w) * vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f)) + vec4<f32>(x_91.x, x_91.y, x_91.x, x_91.y));
  let x_98 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_98.x, x_98.y), 0.0f);
  let x_101 : vec3<f32> = vec3<f32>(x_100.x, x_100.y, x_100.z);
  let x_102 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_104 : vec4<f32> = u_xlat3;
  u_xlat1.z = dot(vec3<f32>(x_104.x, x_104.y, x_104.z), vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let x_112 : vec4<f32> = u_xlat2;
  let x_114 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_112.z, x_112.w), 0.0f);
  let x_115 : vec3<f32> = vec3<f32>(x_114.x, x_114.y, x_114.z);
  let x_116 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat1.w = dot(vec3<f32>(x_118.x, x_118.y, x_118.z), vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let x_123 : f32 = u_xlat21;
  let x_125 : f32 = u_xlat1.x;
  u_xlat2.x = max(x_123, x_125);
  let x_129 : f32 = u_xlat21;
  let x_131 : f32 = u_xlat1.x;
  u_xlat9.x = min(x_129, x_131);
  let x_135 : f32 = u_xlat1.y;
  let x_137 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_135, x_137);
  let x_141 : f32 = u_xlat1.y;
  let x_143 : f32 = u_xlat9.x;
  u_xlat9.x = min(x_141, x_143);
  let x_149 : f32 = u_xlat1.w;
  let x_151 : f32 = u_xlat1.z;
  u_xlat16.x = max(x_149, x_151);
  let x_156 : f32 = u_xlat1.w;
  let x_158 : f32 = u_xlat1.z;
  u_xlat23 = min(x_156, x_158);
  let x_161 : f32 = u_xlat2.x;
  let x_163 : f32 = u_xlat16.x;
  u_xlat2.x = max(x_161, x_163);
  let x_167 : f32 = u_xlat9.x;
  let x_168 : f32 = u_xlat23;
  u_xlat9.x = min(x_167, x_168);
  let x_172 : f32 = u_xlat2.x;
  u_xlat16.x = (x_172 * 0.15000000596046447754f);
  let x_177 : f32 = u_xlat9.x;
  let x_180 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_177) + x_180);
  let x_184 : f32 = u_xlat16.x;
  u_xlat9.x = max(x_184, 0.02999999932944774628f);
  let x_192 : f32 = u_xlat2.x;
  let x_194 : f32 = u_xlat9.x;
  u_xlatb9 = (x_192 >= x_194);
  let x_196 : bool = u_xlatb9;
  if (x_196) {
    let x_199 : vec2<f32> = vs_TEXCOORD0;
    let x_201 : vec4<f32> = x_27.x_SourceSize;
    let x_204 : vec2<f32> = (x_199 + -(vec2<f32>(x_201.z, x_201.w)));
    let x_205 : vec3<f32> = u_xlat9;
    u_xlat9 = vec3<f32>(x_204.x, x_204.y, x_205.z);
    let x_210 : vec3<f32> = u_xlat9;
    let x_212 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_210.x, x_210.y), 0.0f);
    u_xlat9 = vec3<f32>(x_212.x, x_212.y, x_212.z);
    let x_214 : vec3<f32> = u_xlat9;
    u_xlat9.x = dot(x_214, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_217 : vec2<f32> = vs_TEXCOORD0;
    let x_219 : vec4<f32> = x_27.x_SourceSize;
    u_xlat16 = (x_217 + vec2<f32>(x_219.z, x_219.w));
    let x_225 : vec2<f32> = u_xlat16;
    let x_226 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, x_225, 0.0f);
    let x_227 : vec3<f32> = vec3<f32>(x_226.x, x_226.y, x_226.z);
    let x_228 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
    let x_230 : vec4<f32> = u_xlat3;
    u_xlat16.x = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_235 : vec4<f32> = x_27.x_SourceSize;
    let x_239 : vec2<f32> = vs_TEXCOORD0;
    u_xlat3 = ((vec4<f32>(x_235.z, x_235.w, x_235.z, x_235.w) * vec4<f32>(1.0f, -1.0f, -1.0f, 1.0f)) + vec4<f32>(x_239.x, x_239.y, x_239.x, x_239.y));
    let x_246 : vec4<f32> = u_xlat3;
    let x_248 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_246.x, x_246.y), 0.0f);
    u_xlat4 = vec3<f32>(x_248.x, x_248.y, x_248.z);
    let x_250 : vec3<f32> = u_xlat4;
    u_xlat23 = dot(x_250, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_255 : vec4<f32> = u_xlat3;
    let x_257 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_255.z, x_255.w), 0.0f);
    let x_258 : vec3<f32> = vec3<f32>(x_257.x, x_257.y, x_257.z);
    let x_259 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_261 : vec4<f32> = u_xlat3;
    u_xlat3.x = dot(vec3<f32>(x_261.x, x_261.y, x_261.z), vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_266 : vec4<f32> = u_xlat1;
    let x_268 : vec4<f32> = u_xlat1;
    u_xlat10 = (vec2<f32>(x_266.x, x_266.y) + vec2<f32>(x_268.z, x_268.w));
    let x_272 : f32 = u_xlat2.x;
    u_xlat2.x = (1.0f / x_272);
    let x_277 : f32 = u_xlat10.y;
    let x_279 : f32 = u_xlat10.x;
    u_xlat24 = (x_277 + x_279);
    let x_281 : f32 = u_xlat21;
    let x_285 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_281 * -2.0f) + x_285);
    let x_289 : f32 = u_xlat21;
    let x_292 : f32 = u_xlat10.y;
    u_xlat17 = ((x_289 * -2.0f) + x_292);
    let x_295 : f32 = u_xlat16.x;
    let x_296 : f32 = u_xlat23;
    u_xlat4.x = (x_295 + x_296);
    let x_299 : f32 = u_xlat23;
    let x_301 : f32 = u_xlat9.x;
    u_xlat23 = (x_299 + x_301);
    let x_305 : f32 = u_xlat1.y;
    let x_308 : f32 = u_xlat4.x;
    u_xlat11.x = ((x_305 * -2.0f) + x_308);
    let x_312 : f32 = u_xlat1.z;
    let x_314 : f32 = u_xlat23;
    u_xlat23 = ((x_312 * -2.0f) + x_314);
    let x_317 : f32 = u_xlat9.x;
    let x_319 : f32 = u_xlat3.x;
    u_xlat9.x = (x_317 + x_319);
    let x_323 : f32 = u_xlat16.x;
    let x_325 : f32 = u_xlat3.x;
    u_xlat16.x = (x_323 + x_325);
    let x_329 : f32 = u_xlat10.x;
    let x_334 : f32 = u_xlat11.x;
    u_xlat3.x = ((abs(x_329) * 2.0f) + abs(x_334));
    let x_338 : f32 = u_xlat17;
    let x_341 : f32 = u_xlat23;
    u_xlat23 = ((abs(x_338) * 2.0f) + abs(x_341));
    let x_345 : f32 = u_xlat1.w;
    let x_348 : f32 = u_xlat9.x;
    u_xlat10.x = ((x_345 * -2.0f) + x_348);
    let x_352 : f32 = u_xlat1.x;
    let x_355 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_352 * -2.0f) + x_355);
    let x_359 : f32 = u_xlat3.x;
    let x_361 : f32 = u_xlat10.x;
    u_xlat3.x = (x_359 + abs(x_361));
    let x_365 : f32 = u_xlat23;
    let x_367 : f32 = u_xlat16.x;
    u_xlat16.x = (x_365 + abs(x_367));
    let x_372 : f32 = u_xlat4.x;
    let x_374 : f32 = u_xlat9.x;
    u_xlat9.x = (x_372 + x_374);
    let x_379 : f32 = u_xlat3.x;
    let x_381 : f32 = u_xlat16.x;
    u_xlatb16 = (x_379 >= x_381);
    let x_383 : f32 = u_xlat24;
    let x_386 : f32 = u_xlat9.x;
    u_xlat9.x = ((x_383 * 2.0f) + x_386);
    let x_389 : bool = u_xlatb16;
    if (x_389) {
      let x_394 : vec4<f32> = u_xlat1;
      x_391 = vec2<f32>(x_394.x, x_394.z);
    } else {
      let x_397 : vec4<f32> = u_xlat1;
      x_391 = vec2<f32>(x_397.y, x_397.w);
    }
    let x_399 : vec2<f32> = x_391;
    let x_400 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_399.x, x_400.y, x_399.y, x_400.w);
    let x_402 : bool = u_xlatb16;
    if (x_402) {
      let x_408 : f32 = x_27.x_SourceSize.w;
      x_404 = x_408;
    } else {
      let x_411 : f32 = x_27.x_SourceSize.z;
      x_404 = x_411;
    }
    let x_412 : f32 = x_404;
    u_xlat8.x = x_412;
    let x_416 : f32 = u_xlat9.x;
    let x_419 : f32 = u_xlat21;
    u_xlat22 = ((x_416 * 0.08333333581686019897f) + -(x_419));
    let x_422 : f32 = u_xlat21;
    let x_425 : vec4<f32> = u_xlat1;
    let x_427 : vec2<f32> = (-(vec2<f32>(x_422, x_422)) + vec2<f32>(x_425.z, x_425.x));
    let x_428 : vec3<f32> = u_xlat9;
    u_xlat9 = vec3<f32>(x_427.x, x_428.y, x_427.y);
    let x_430 : f32 = u_xlat21;
    let x_432 : vec4<f32> = u_xlat1;
    let x_434 : vec2<f32> = (vec2<f32>(x_430, x_430) + vec2<f32>(x_432.x, x_432.z));
    let x_435 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_434.x, x_435.y, x_434.y, x_435.w);
    let x_439 : f32 = u_xlat9.x;
    let x_442 : f32 = u_xlat9.z;
    u_xlatb3 = (abs(x_439) >= abs(x_442));
    let x_446 : f32 = u_xlat9.z;
    let x_449 : f32 = u_xlat9.x;
    u_xlat9.x = max(abs(x_446), abs(x_449));
    let x_453 : bool = u_xlatb3;
    if (x_453) {
      let x_458 : f32 = u_xlat8.x;
      x_454 = -(x_458);
    } else {
      let x_462 : f32 = u_xlat8.x;
      x_454 = x_462;
    }
    let x_463 : f32 = x_454;
    u_xlat8.x = x_463;
    let x_466 : f32 = u_xlat2.x;
    let x_467 : f32 = u_xlat22;
    u_xlat22 = (x_466 * abs(x_467));
    let x_470 : f32 = u_xlat22;
    u_xlat22 = clamp(x_470, 0.0f, 1.0f);
    let x_472 : bool = u_xlatb16;
    if (x_472) {
      let x_477 : f32 = x_27.x_SourceSize.z;
      x_473 = x_477;
    } else {
      x_473 = 0.0f;
    }
    let x_479 : f32 = x_473;
    u_xlat2.x = x_479;
    let x_481 : bool = u_xlatb16;
    if (x_481) {
      x_482 = 0.0f;
    } else {
      let x_487 : f32 = x_27.x_SourceSize.w;
      x_482 = x_487;
    }
    let x_488 : f32 = x_482;
    u_xlat2.w = x_488;
    let x_490 : vec3<f32> = u_xlat8;
    let x_495 : vec2<f32> = vs_TEXCOORD0;
    u_xlat10 = ((vec2<f32>(x_490.x, x_490.x) * vec2<f32>(0.5f, 0.5f)) + x_495);
    let x_497 : bool = u_xlatb16;
    if (x_497) {
      let x_503 : f32 = vs_TEXCOORD0.x;
      x_498 = x_503;
    } else {
      let x_506 : f32 = u_xlat10.x;
      x_498 = x_506;
    }
    let x_507 : f32 = x_498;
    u_xlat10.x = x_507;
    let x_509 : bool = u_xlatb16;
    if (x_509) {
      let x_514 : f32 = u_xlat10.y;
      x_510 = x_514;
    } else {
      let x_517 : f32 = vs_TEXCOORD0.y;
      x_510 = x_517;
    }
    let x_518 : f32 = x_510;
    u_xlat10.y = x_518;
    let x_520 : vec4<f32> = u_xlat2;
    let x_523 : vec2<f32> = u_xlat10;
    let x_524 : vec2<f32> = (-(vec2<f32>(x_520.x, x_520.w)) + x_523);
    let x_525 : vec3<f32> = u_xlat4;
    u_xlat4 = vec3<f32>(x_524.x, x_524.y, x_525.z);
    let x_528 : vec4<f32> = u_xlat2;
    let x_530 : vec2<f32> = u_xlat10;
    let x_531 : vec2<f32> = (vec2<f32>(x_528.x, x_528.w) + x_530);
    let x_532 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_531.x, x_531.y, x_532.z);
    let x_534 : f32 = u_xlat22;
    u_xlat10.x = ((x_534 * -2.0f) + 3.0f);
    let x_543 : vec3<f32> = u_xlat4;
    let x_545 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_543.x, x_543.y), 0.0f);
    u_xlat6 = vec3<f32>(x_545.x, x_545.y, x_545.z);
    let x_547 : vec3<f32> = u_xlat6;
    u_xlat17 = dot(x_547, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_549 : f32 = u_xlat22;
    let x_550 : f32 = u_xlat22;
    u_xlat22 = (x_549 * x_550);
    let x_555 : vec3<f32> = u_xlat5;
    let x_557 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_555.x, x_555.y), 0.0f);
    u_xlat6 = vec3<f32>(x_557.x, x_557.y, x_557.z);
    let x_559 : vec3<f32> = u_xlat6;
    u_xlat24 = dot(x_559, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_561 : bool = u_xlatb3;
    if (x_561) {
      let x_566 : f32 = u_xlat1.z;
      x_562 = x_566;
    } else {
      let x_569 : f32 = u_xlat1.x;
      x_562 = x_569;
    }
    let x_570 : f32 = x_562;
    u_xlat1.x = x_570;
    let x_574 : f32 = u_xlat9.x;
    u_xlat15 = (x_574 * 0.25f);
    let x_578 : f32 = u_xlat1.x;
    let x_581 : f32 = u_xlat21;
    u_xlat21 = ((-(x_578) * 0.5f) + x_581);
    let x_583 : f32 = u_xlat22;
    let x_585 : f32 = u_xlat10.x;
    u_xlat22 = (x_583 * x_585);
    let x_589 : f32 = u_xlat21;
    u_xlati21 = bitcast<i32>(select(0u, 4294967295u, (x_589 < 0.0f)));
    let x_595 : f32 = u_xlat1.x;
    let x_598 : f32 = u_xlat17;
    u_xlat3.x = ((-(x_595) * 0.5f) + x_598);
    let x_602 : f32 = u_xlat1.x;
    let x_605 : f32 = u_xlat24;
    u_xlat3.y = ((-(x_602) * 0.5f) + x_605);
    let x_611 : vec4<f32> = u_xlat3;
    let x_614 : f32 = u_xlat15;
    let x_617 : vec4<bool> = (abs(vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y)) >= vec4<f32>(x_614, x_614, x_614, x_614));
    u_xlati17 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_617.x, x_617.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_628 : f32 = u_xlat2.x;
    let x_633 : f32 = u_xlat4.x;
    u_xlat9.x = ((-(x_628) * 1.5f) + x_633);
    let x_637 : i32 = u_xlati17.x;
    if ((x_637 != 0i)) {
      let x_643 : f32 = u_xlat4.x;
      x_639 = x_643;
    } else {
      let x_646 : f32 = u_xlat9.x;
      x_639 = x_646;
    }
    let x_647 : f32 = x_639;
    u_xlat4.x = x_647;
    let x_650 : f32 = u_xlat2.w;
    let x_654 : f32 = u_xlat4.y;
    u_xlat9.x = ((-(x_650) * 1.5f) + x_654);
    let x_658 : i32 = u_xlati17.x;
    if ((x_658 != 0i)) {
      let x_664 : f32 = u_xlat4.y;
      x_660 = x_664;
    } else {
      let x_667 : f32 = u_xlat9.x;
      x_660 = x_667;
    }
    let x_668 : f32 = x_660;
    u_xlat4.z = x_668;
    let x_673 : vec2<i32> = u_xlati17;
    let x_674 : vec2<i32> = ~(x_673);
    let x_675 : vec3<i32> = u_xlati11;
    u_xlati11 = vec3<i32>(x_674.x, x_675.y, x_674.y);
    let x_679 : i32 = u_xlati11.z;
    let x_682 : i32 = u_xlati11.x;
    u_xlati9 = bitcast<i32>((bitcast<u32>(x_679) | bitcast<u32>(x_682)));
    let x_687 : f32 = u_xlat2.x;
    let x_690 : f32 = u_xlat5.x;
    u_xlat11.x = ((x_687 * 1.5f) + x_690);
    let x_694 : i32 = u_xlati17.y;
    if ((x_694 != 0i)) {
      let x_700 : f32 = u_xlat5.x;
      x_696 = x_700;
    } else {
      let x_703 : f32 = u_xlat11.x;
      x_696 = x_703;
    }
    let x_704 : f32 = x_696;
    u_xlat11.x = x_704;
    let x_707 : f32 = u_xlat2.w;
    let x_710 : f32 = u_xlat5.y;
    u_xlat5.x = ((x_707 * 1.5f) + x_710);
    let x_714 : i32 = u_xlati17.y;
    if ((x_714 != 0i)) {
      let x_720 : f32 = u_xlat5.y;
      x_716 = x_720;
    } else {
      let x_723 : f32 = u_xlat5.x;
      x_716 = x_723;
    }
    let x_724 : f32 = x_716;
    u_xlat11.z = x_724;
    let x_726 : i32 = u_xlati9;
    if ((x_726 != 0i)) {
      let x_731 : i32 = u_xlati17.x;
      if ((x_731 == 0i)) {
        let x_738 : vec3<f32> = u_xlat4;
        let x_740 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_738.x, x_738.z), 0.0f);
        u_xlat5 = vec3<f32>(x_740.x, x_740.y, x_740.z);
        let x_742 : vec3<f32> = u_xlat5;
        u_xlat3.x = dot(x_742, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
      }
      let x_746 : i32 = u_xlati17.y;
      if ((x_746 == 0i)) {
        let x_753 : vec3<f32> = u_xlat11;
        let x_755 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_753.x, x_753.z), 0.0f);
        u_xlat5 = vec3<f32>(x_755.x, x_755.y, x_755.z);
        let x_757 : vec3<f32> = u_xlat5;
        u_xlat3.y = dot(x_757, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
      }
      let x_761 : f32 = u_xlat1.x;
      let x_765 : f32 = u_xlat3.x;
      u_xlat9.x = ((-(x_761) * 0.5f) + x_765);
      let x_769 : i32 = u_xlati17.x;
      if ((x_769 != 0i)) {
        let x_775 : f32 = u_xlat3.x;
        x_771 = x_775;
      } else {
        let x_778 : f32 = u_xlat9.x;
        x_771 = x_778;
      }
      let x_779 : f32 = x_771;
      u_xlat3.x = x_779;
      let x_782 : f32 = u_xlat1.x;
      let x_786 : f32 = u_xlat3.y;
      u_xlat9.x = ((-(x_782) * 0.5f) + x_786);
      let x_790 : i32 = u_xlati17.y;
      if ((x_790 != 0i)) {
        let x_796 : f32 = u_xlat3.y;
        x_792 = x_796;
      } else {
        let x_799 : f32 = u_xlat9.x;
        x_792 = x_799;
      }
      let x_800 : f32 = x_792;
      u_xlat3.y = x_800;
      let x_802 : vec4<f32> = u_xlat3;
      let x_805 : f32 = u_xlat15;
      let x_807 : vec4<bool> = (abs(vec4<f32>(x_802.x, x_802.y, x_802.x, x_802.y)) >= vec4<f32>(x_805, x_805, x_805, x_805));
      u_xlati17 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_807.x, x_807.y)) * vec2<u32>(4294967295u, 4294967295u)));
      let x_814 : f32 = u_xlat2.x;
      let x_818 : f32 = u_xlat4.x;
      u_xlat9.x = ((-(x_814) * 2.0f) + x_818);
      let x_822 : i32 = u_xlati17.x;
      if ((x_822 != 0i)) {
        let x_828 : f32 = u_xlat4.x;
        x_824 = x_828;
      } else {
        let x_831 : f32 = u_xlat9.x;
        x_824 = x_831;
      }
      let x_832 : f32 = x_824;
      u_xlat4.x = x_832;
      let x_835 : f32 = u_xlat2.w;
      let x_839 : f32 = u_xlat4.z;
      u_xlat9.x = ((-(x_835) * 2.0f) + x_839);
      let x_843 : i32 = u_xlati17.x;
      if ((x_843 != 0i)) {
        let x_849 : f32 = u_xlat4.z;
        x_845 = x_849;
      } else {
        let x_852 : f32 = u_xlat9.x;
        x_845 = x_852;
      }
      let x_853 : f32 = x_845;
      u_xlat4.z = x_853;
      let x_856 : vec2<i32> = u_xlati17;
      u_xlati5 = ~(x_856);
      let x_859 : i32 = u_xlati5.y;
      let x_862 : i32 = u_xlati5.x;
      u_xlati9 = bitcast<i32>((bitcast<u32>(x_859) | bitcast<u32>(x_862)));
      let x_867 : f32 = u_xlat2.x;
      let x_870 : f32 = u_xlat11.x;
      u_xlat5.x = ((x_867 * 2.0f) + x_870);
      let x_874 : i32 = u_xlati17.y;
      if ((x_874 != 0i)) {
        let x_880 : f32 = u_xlat11.x;
        x_876 = x_880;
      } else {
        let x_883 : f32 = u_xlat5.x;
        x_876 = x_883;
      }
      let x_884 : f32 = x_876;
      u_xlat11.x = x_884;
      let x_887 : f32 = u_xlat2.w;
      let x_890 : f32 = u_xlat11.z;
      u_xlat5.x = ((x_887 * 2.0f) + x_890);
      let x_894 : i32 = u_xlati17.y;
      if ((x_894 != 0i)) {
        let x_900 : f32 = u_xlat11.z;
        x_896 = x_900;
      } else {
        let x_903 : f32 = u_xlat5.x;
        x_896 = x_903;
      }
      let x_904 : f32 = x_896;
      u_xlat11.z = x_904;
      let x_906 : i32 = u_xlati9;
      if ((x_906 != 0i)) {
        let x_911 : i32 = u_xlati17.x;
        if ((x_911 == 0i)) {
          let x_918 : vec3<f32> = u_xlat4;
          let x_920 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_918.x, x_918.z), 0.0f);
          u_xlat5 = vec3<f32>(x_920.x, x_920.y, x_920.z);
          let x_922 : vec3<f32> = u_xlat5;
          u_xlat3.x = dot(x_922, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
        }
        let x_926 : i32 = u_xlati17.y;
        if ((x_926 == 0i)) {
          let x_933 : vec3<f32> = u_xlat11;
          let x_935 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_933.x, x_933.z), 0.0f);
          u_xlat5 = vec3<f32>(x_935.x, x_935.y, x_935.z);
          let x_937 : vec3<f32> = u_xlat5;
          u_xlat3.y = dot(x_937, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
        }
        let x_941 : f32 = u_xlat1.x;
        let x_945 : f32 = u_xlat3.x;
        u_xlat9.x = ((-(x_941) * 0.5f) + x_945);
        let x_949 : i32 = u_xlati17.x;
        if ((x_949 != 0i)) {
          let x_955 : f32 = u_xlat3.x;
          x_951 = x_955;
        } else {
          let x_958 : f32 = u_xlat9.x;
          x_951 = x_958;
        }
        let x_959 : f32 = x_951;
        u_xlat3.x = x_959;
        let x_962 : f32 = u_xlat1.x;
        let x_966 : f32 = u_xlat3.y;
        u_xlat9.x = ((-(x_962) * 0.5f) + x_966);
        let x_970 : i32 = u_xlati17.y;
        if ((x_970 != 0i)) {
          let x_976 : f32 = u_xlat3.y;
          x_972 = x_976;
        } else {
          let x_979 : f32 = u_xlat9.x;
          x_972 = x_979;
        }
        let x_980 : f32 = x_972;
        u_xlat3.y = x_980;
        let x_982 : vec4<f32> = u_xlat3;
        let x_985 : f32 = u_xlat15;
        let x_987 : vec4<bool> = (abs(vec4<f32>(x_982.x, x_982.y, x_982.x, x_982.y)) >= vec4<f32>(x_985, x_985, x_985, x_985));
        u_xlati17 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_987.x, x_987.y)) * vec2<u32>(4294967295u, 4294967295u)));
        let x_994 : f32 = u_xlat2.x;
        let x_999 : f32 = u_xlat4.x;
        u_xlat9.x = ((-(x_994) * 4.0f) + x_999);
        let x_1003 : i32 = u_xlati17.x;
        if ((x_1003 != 0i)) {
          let x_1009 : f32 = u_xlat4.x;
          x_1005 = x_1009;
        } else {
          let x_1012 : f32 = u_xlat9.x;
          x_1005 = x_1012;
        }
        let x_1013 : f32 = x_1005;
        u_xlat4.x = x_1013;
        let x_1016 : f32 = u_xlat2.w;
        let x_1020 : f32 = u_xlat4.z;
        u_xlat9.x = ((-(x_1016) * 4.0f) + x_1020);
        let x_1024 : i32 = u_xlati17.x;
        if ((x_1024 != 0i)) {
          let x_1030 : f32 = u_xlat4.z;
          x_1026 = x_1030;
        } else {
          let x_1033 : f32 = u_xlat9.x;
          x_1026 = x_1033;
        }
        let x_1034 : f32 = x_1026;
        u_xlat4.z = x_1034;
        let x_1036 : vec2<i32> = u_xlati17;
        u_xlati5 = ~(x_1036);
        let x_1039 : i32 = u_xlati5.y;
        let x_1042 : i32 = u_xlati5.x;
        u_xlati9 = bitcast<i32>((bitcast<u32>(x_1039) | bitcast<u32>(x_1042)));
        let x_1047 : f32 = u_xlat2.x;
        let x_1050 : f32 = u_xlat11.x;
        u_xlat5.x = ((x_1047 * 4.0f) + x_1050);
        let x_1054 : i32 = u_xlati17.y;
        if ((x_1054 != 0i)) {
          let x_1060 : f32 = u_xlat11.x;
          x_1056 = x_1060;
        } else {
          let x_1063 : f32 = u_xlat5.x;
          x_1056 = x_1063;
        }
        let x_1064 : f32 = x_1056;
        u_xlat11.x = x_1064;
        let x_1067 : f32 = u_xlat2.w;
        let x_1070 : f32 = u_xlat11.z;
        u_xlat5.x = ((x_1067 * 4.0f) + x_1070);
        let x_1074 : i32 = u_xlati17.y;
        if ((x_1074 != 0i)) {
          let x_1080 : f32 = u_xlat11.z;
          x_1076 = x_1080;
        } else {
          let x_1083 : f32 = u_xlat5.x;
          x_1076 = x_1083;
        }
        let x_1084 : f32 = x_1076;
        u_xlat11.z = x_1084;
        let x_1086 : i32 = u_xlati9;
        if ((x_1086 != 0i)) {
          let x_1091 : i32 = u_xlati17.x;
          if ((x_1091 == 0i)) {
            let x_1098 : vec3<f32> = u_xlat4;
            let x_1100 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1098.x, x_1098.z), 0.0f);
            u_xlat5 = vec3<f32>(x_1100.x, x_1100.y, x_1100.z);
            let x_1102 : vec3<f32> = u_xlat5;
            u_xlat3.x = dot(x_1102, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
          }
          let x_1106 : i32 = u_xlati17.y;
          if ((x_1106 == 0i)) {
            let x_1113 : vec3<f32> = u_xlat11;
            let x_1115 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1113.x, x_1113.z), 0.0f);
            u_xlat5 = vec3<f32>(x_1115.x, x_1115.y, x_1115.z);
            let x_1117 : vec3<f32> = u_xlat5;
            u_xlat3.y = dot(x_1117, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
          }
          let x_1121 : f32 = u_xlat1.x;
          let x_1125 : f32 = u_xlat3.x;
          u_xlat9.x = ((-(x_1121) * 0.5f) + x_1125);
          let x_1129 : i32 = u_xlati17.x;
          if ((x_1129 != 0i)) {
            let x_1135 : f32 = u_xlat3.x;
            x_1131 = x_1135;
          } else {
            let x_1138 : f32 = u_xlat9.x;
            x_1131 = x_1138;
          }
          let x_1139 : f32 = x_1131;
          u_xlat3.x = x_1139;
          let x_1142 : f32 = u_xlat1.x;
          let x_1146 : f32 = u_xlat3.y;
          u_xlat1.x = ((-(x_1142) * 0.5f) + x_1146);
          let x_1150 : i32 = u_xlati17.y;
          if ((x_1150 != 0i)) {
            let x_1156 : f32 = u_xlat3.y;
            x_1152 = x_1156;
          } else {
            let x_1159 : f32 = u_xlat1.x;
            x_1152 = x_1159;
          }
          let x_1160 : f32 = x_1152;
          u_xlat3.y = x_1160;
          let x_1165 : vec4<f32> = u_xlat3;
          let x_1168 : f32 = u_xlat15;
          let x_1170 : vec4<bool> = (abs(vec4<f32>(x_1165.x, x_1165.x, x_1165.y, x_1165.x)) >= vec4<f32>(x_1168, x_1168, x_1168, x_1168));
          let x_1171 : vec2<bool> = vec2<bool>(x_1170.x, x_1170.z);
          let x_1172 : vec3<bool> = u_xlatb1;
          u_xlatb1 = vec3<bool>(x_1171.x, x_1172.y, x_1171.y);
          let x_1175 : f32 = u_xlat2.x;
          let x_1180 : f32 = u_xlat4.x;
          u_xlat9.x = ((-(x_1175) * 12.0f) + x_1180);
          let x_1184 : bool = u_xlatb1.x;
          if (x_1184) {
            let x_1189 : f32 = u_xlat4.x;
            x_1185 = x_1189;
          } else {
            let x_1192 : f32 = u_xlat9.x;
            x_1185 = x_1192;
          }
          let x_1193 : f32 = x_1185;
          u_xlat4.x = x_1193;
          let x_1196 : f32 = u_xlat2.w;
          let x_1200 : f32 = u_xlat4.z;
          u_xlat9.x = ((-(x_1196) * 12.0f) + x_1200);
          let x_1204 : bool = u_xlatb1.x;
          if (x_1204) {
            let x_1209 : f32 = u_xlat4.z;
            x_1205 = x_1209;
          } else {
            let x_1212 : f32 = u_xlat9.x;
            x_1205 = x_1212;
          }
          let x_1213 : f32 = x_1205;
          u_xlat4.z = x_1213;
          let x_1216 : f32 = u_xlat2.x;
          let x_1219 : f32 = u_xlat11.x;
          u_xlat1.x = ((x_1216 * 12.0f) + x_1219);
          let x_1223 : bool = u_xlatb1.z;
          if (x_1223) {
            let x_1228 : f32 = u_xlat11.x;
            x_1224 = x_1228;
          } else {
            let x_1231 : f32 = u_xlat1.x;
            x_1224 = x_1231;
          }
          let x_1232 : f32 = x_1224;
          u_xlat11.x = x_1232;
          let x_1235 : f32 = u_xlat2.w;
          let x_1238 : f32 = u_xlat11.z;
          u_xlat1.x = ((x_1235 * 12.0f) + x_1238);
          let x_1242 : bool = u_xlatb1.z;
          if (x_1242) {
            let x_1247 : f32 = u_xlat11.z;
            x_1243 = x_1247;
          } else {
            let x_1250 : f32 = u_xlat1.x;
            x_1243 = x_1250;
          }
          let x_1251 : f32 = x_1243;
          u_xlat11.z = x_1251;
        }
      }
    }
    let x_1254 : f32 = u_xlat4.x;
    let x_1257 : f32 = vs_TEXCOORD0.x;
    u_xlat1.x = (-(x_1254) + x_1257);
    let x_1261 : f32 = u_xlat11.x;
    let x_1263 : f32 = vs_TEXCOORD0.x;
    u_xlat15 = (x_1261 + -(x_1263));
    let x_1267 : f32 = u_xlat4.z;
    let x_1270 : f32 = vs_TEXCOORD0.y;
    u_xlat2.x = (-(x_1267) + x_1270);
    let x_1273 : bool = u_xlatb16;
    if (x_1273) {
      let x_1278 : f32 = u_xlat1.x;
      x_1274 = x_1278;
    } else {
      let x_1281 : f32 = u_xlat2.x;
      x_1274 = x_1281;
    }
    let x_1282 : f32 = x_1274;
    u_xlat1.x = x_1282;
    let x_1285 : f32 = u_xlat11.z;
    let x_1287 : f32 = vs_TEXCOORD0.y;
    u_xlat2.x = (x_1285 + -(x_1287));
    let x_1291 : bool = u_xlatb16;
    if (x_1291) {
      let x_1295 : f32 = u_xlat15;
      x_1292 = x_1295;
    } else {
      let x_1298 : f32 = u_xlat2.x;
      x_1292 = x_1298;
    }
    let x_1299 : f32 = x_1292;
    u_xlat15 = x_1299;
    let x_1301 : vec4<f32> = u_xlat3;
    let x_1304 : vec4<bool> = (vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.x) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
    u_xlati2 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1304.x, x_1304.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_1311 : f32 = u_xlat1.x;
    let x_1312 : f32 = u_xlat15;
    u_xlat23 = (x_1311 + x_1312);
    let x_1316 : i32 = u_xlati21;
    let x_1319 : vec2<i32> = u_xlati2;
    let x_1321 : vec4<bool> = (vec4<i32>(x_1316, x_1316, x_1316, x_1316) != vec4<i32>(x_1319.x, x_1319.y, x_1319.x, x_1319.x));
    u_xlatb2 = vec2<bool>(x_1321.x, x_1321.y);
    let x_1323 : f32 = u_xlat23;
    u_xlat21 = (1.0f / x_1323);
    let x_1327 : f32 = u_xlat1.x;
    let x_1328 : f32 = u_xlat15;
    u_xlatb23 = (x_1327 < x_1328);
    let x_1330 : f32 = u_xlat15;
    let x_1332 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_1330, x_1332);
    let x_1336 : bool = u_xlatb23;
    if (x_1336) {
      let x_1342 : bool = u_xlatb2.x;
      x_1338 = x_1342;
    } else {
      let x_1345 : bool = u_xlatb2.y;
      x_1338 = x_1345;
    }
    let x_1346 : bool = x_1338;
    u_xlatb15 = x_1346;
    let x_1347 : f32 = u_xlat22;
    let x_1348 : f32 = u_xlat22;
    u_xlat22 = (x_1347 * x_1348);
    let x_1351 : f32 = u_xlat1.x;
    let x_1352 : f32 = u_xlat21;
    u_xlat21 = ((x_1351 * -(x_1352)) + 0.5f);
    let x_1356 : f32 = u_xlat22;
    u_xlat1.x = (x_1356 * 0.64999997615814208984f);
    let x_1360 : bool = u_xlatb15;
    let x_1361 : f32 = u_xlat21;
    u_xlat21 = select(0.0f, x_1361, x_1360);
    let x_1364 : f32 = u_xlat1.x;
    let x_1365 : f32 = u_xlat21;
    u_xlat21 = max(x_1364, x_1365);
    let x_1367 : f32 = u_xlat21;
    let x_1369 : vec3<f32> = u_xlat8;
    let x_1372 : vec2<f32> = vs_TEXCOORD0;
    let x_1373 : vec2<f32> = ((vec2<f32>(x_1367, x_1367) * vec2<f32>(x_1369.x, x_1369.x)) + x_1372);
    let x_1374 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1373.x, x_1373.y, x_1374.z, x_1374.w);
    let x_1376 : bool = u_xlatb16;
    if (x_1376) {
      let x_1381 : f32 = vs_TEXCOORD0.x;
      x_1377 = x_1381;
    } else {
      let x_1384 : f32 = u_xlat1.x;
      x_1377 = x_1384;
    }
    let x_1385 : f32 = x_1377;
    u_xlat2.x = x_1385;
    let x_1387 : bool = u_xlatb16;
    if (x_1387) {
      let x_1392 : f32 = u_xlat1.y;
      x_1388 = x_1392;
    } else {
      let x_1395 : f32 = vs_TEXCOORD0.y;
      x_1388 = x_1395;
    }
    let x_1396 : f32 = x_1388;
    u_xlat2.y = x_1396;
    let x_1401 : vec4<f32> = u_xlat2;
    let x_1403 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1401.x, x_1401.y), 0.0f);
    u_xlat0 = vec3<f32>(x_1403.x, x_1403.y, x_1403.z);
  }
  let x_1405 : vec3<f32> = u_xlat0;
  let x_1408 : vec3<f32> = (x_1405 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1409.w);
  let x_1411 : vec3<f32> = u_xlat0;
  let x_1413 : vec3<f32> = log2(abs(x_1411));
  let x_1414 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
  let x_1416 : vec4<f32> = u_xlat2;
  let x_1420 : vec3<f32> = (vec3<f32>(x_1416.x, x_1416.y, x_1416.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1421 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1421.w);
  let x_1423 : vec4<f32> = u_xlat2;
  let x_1425 : vec3<f32> = exp2(vec3<f32>(x_1423.x, x_1423.y, x_1423.z));
  let x_1426 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1425.x, x_1425.y, x_1425.z, x_1426.w);
  let x_1428 : vec4<f32> = u_xlat2;
  let x_1435 : vec3<f32> = ((vec3<f32>(x_1428.x, x_1428.y, x_1428.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1436 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
  let x_1441 : vec3<f32> = u_xlat0;
  let x_1443 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1441.x));
  u_xlatb0 = vec3<bool>(x_1443.x, x_1443.y, x_1443.z);
  let x_1448 : bool = u_xlatb0.x;
  if (x_1448) {
    let x_1453 : f32 = u_xlat1.x;
    x_1449 = x_1453;
  } else {
    let x_1456 : f32 = u_xlat2.x;
    x_1449 = x_1456;
  }
  let x_1457 : f32 = x_1449;
  SV_Target0.x = x_1457;
  let x_1461 : bool = u_xlatb0.y;
  if (x_1461) {
    let x_1466 : f32 = u_xlat1.y;
    x_1462 = x_1466;
  } else {
    let x_1469 : f32 = u_xlat2.y;
    x_1462 = x_1469;
  }
  let x_1470 : f32 = x_1462;
  SV_Target0.y = x_1470;
  let x_1473 : bool = u_xlatb0.z;
  if (x_1473) {
    let x_1478 : f32 = u_xlat1.z;
    x_1474 = x_1478;
  } else {
    let x_1481 : f32 = u_xlat2.z;
    x_1474 = x_1481;
  }
  let x_1482 : f32 = x_1474;
  SV_Target0.z = x_1482;
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


