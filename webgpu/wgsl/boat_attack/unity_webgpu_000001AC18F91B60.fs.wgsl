diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_SourceSize : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_PointClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

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
  var x_392 : vec2<f32>;
  var x_405 : f32;
  var x_455 : f32;
  var x_474 : f32;
  var x_483 : f32;
  var x_499 : f32;
  var x_511 : f32;
  var x_563 : f32;
  var x_640 : f32;
  var x_661 : f32;
  var x_697 : f32;
  var x_717 : f32;
  var x_772 : f32;
  var x_793 : f32;
  var x_825 : f32;
  var x_846 : f32;
  var x_877 : f32;
  var x_897 : f32;
  var x_952 : f32;
  var x_973 : f32;
  var x_1006 : f32;
  var x_1027 : f32;
  var x_1057 : f32;
  var x_1077 : f32;
  var x_1132 : f32;
  var x_1153 : f32;
  var x_1186 : f32;
  var x_1206 : f32;
  var x_1225 : f32;
  var x_1244 : f32;
  var x_1275 : f32;
  var x_1293 : f32;
  var x_1339 : bool;
  var x_1378 : f32;
  var x_1389 : f32;
  var x_1450 : f32;
  var x_1463 : f32;
  var x_1475 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_23, x_34);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_39 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_39, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let x_50 : vec4<f32> = x_27.x_SourceSize;
  let x_56 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_50.z, x_50.w, x_50.z, x_50.w) * vec4<f32>(0.0f, 1.0f, 1.0f, 0.0f)) + vec4<f32>(x_56.x, x_56.y, x_56.x, x_56.y));
  let x_64 : vec4<f32> = u_xlat1;
  let x_66 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_64.x, x_64.y), 0.0f);
  let x_67 : vec3<f32> = vec3<f32>(x_66.x, x_66.y, x_66.z);
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec3<f32>(x_70.x, x_70.y, x_70.z), vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let x_78 : vec4<f32> = u_xlat1;
  let x_80 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_78.z, x_78.w), 0.0f);
  u_xlat8 = vec3<f32>(x_80.x, x_80.y, x_80.z);
  let x_82 : vec3<f32> = u_xlat8;
  u_xlat1.y = dot(x_82, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let x_87 : vec4<f32> = x_27.x_SourceSize;
  let x_92 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_87.z, x_87.w, x_87.z, x_87.w) * vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f)) + vec4<f32>(x_92.x, x_92.y, x_92.x, x_92.y));
  let x_99 : vec4<f32> = u_xlat2;
  let x_101 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_99.x, x_99.y), 0.0f);
  let x_102 : vec3<f32> = vec3<f32>(x_101.x, x_101.y, x_101.z);
  let x_103 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_105 : vec4<f32> = u_xlat3;
  u_xlat1.z = dot(vec3<f32>(x_105.x, x_105.y, x_105.z), vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let x_113 : vec4<f32> = u_xlat2;
  let x_115 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_113.z, x_113.w), 0.0f);
  let x_116 : vec3<f32> = vec3<f32>(x_115.x, x_115.y, x_115.z);
  let x_117 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_119 : vec4<f32> = u_xlat2;
  u_xlat1.w = dot(vec3<f32>(x_119.x, x_119.y, x_119.z), vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let x_124 : f32 = u_xlat21;
  let x_126 : f32 = u_xlat1.x;
  u_xlat2.x = max(x_124, x_126);
  let x_130 : f32 = u_xlat21;
  let x_132 : f32 = u_xlat1.x;
  u_xlat9.x = min(x_130, x_132);
  let x_136 : f32 = u_xlat1.y;
  let x_138 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_136, x_138);
  let x_142 : f32 = u_xlat1.y;
  let x_144 : f32 = u_xlat9.x;
  u_xlat9.x = min(x_142, x_144);
  let x_150 : f32 = u_xlat1.w;
  let x_152 : f32 = u_xlat1.z;
  u_xlat16.x = max(x_150, x_152);
  let x_157 : f32 = u_xlat1.w;
  let x_159 : f32 = u_xlat1.z;
  u_xlat23 = min(x_157, x_159);
  let x_162 : f32 = u_xlat2.x;
  let x_164 : f32 = u_xlat16.x;
  u_xlat2.x = max(x_162, x_164);
  let x_168 : f32 = u_xlat9.x;
  let x_169 : f32 = u_xlat23;
  u_xlat9.x = min(x_168, x_169);
  let x_173 : f32 = u_xlat2.x;
  u_xlat16.x = (x_173 * 0.15000000596046447754f);
  let x_178 : f32 = u_xlat9.x;
  let x_181 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_178) + x_181);
  let x_185 : f32 = u_xlat16.x;
  u_xlat9.x = max(x_185, 0.02999999932944774628f);
  let x_193 : f32 = u_xlat2.x;
  let x_195 : f32 = u_xlat9.x;
  u_xlatb9 = (x_193 >= x_195);
  let x_197 : bool = u_xlatb9;
  if (x_197) {
    let x_200 : vec2<f32> = vs_TEXCOORD0;
    let x_202 : vec4<f32> = x_27.x_SourceSize;
    let x_205 : vec2<f32> = (x_200 + -(vec2<f32>(x_202.z, x_202.w)));
    let x_206 : vec3<f32> = u_xlat9;
    u_xlat9 = vec3<f32>(x_205.x, x_205.y, x_206.z);
    let x_211 : vec3<f32> = u_xlat9;
    let x_213 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_211.x, x_211.y), 0.0f);
    u_xlat9 = vec3<f32>(x_213.x, x_213.y, x_213.z);
    let x_215 : vec3<f32> = u_xlat9;
    u_xlat9.x = dot(x_215, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_218 : vec2<f32> = vs_TEXCOORD0;
    let x_220 : vec4<f32> = x_27.x_SourceSize;
    u_xlat16 = (x_218 + vec2<f32>(x_220.z, x_220.w));
    let x_226 : vec2<f32> = u_xlat16;
    let x_227 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, x_226, 0.0f);
    let x_228 : vec3<f32> = vec3<f32>(x_227.x, x_227.y, x_227.z);
    let x_229 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
    let x_231 : vec4<f32> = u_xlat3;
    u_xlat16.x = dot(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_236 : vec4<f32> = x_27.x_SourceSize;
    let x_240 : vec2<f32> = vs_TEXCOORD0;
    u_xlat3 = ((vec4<f32>(x_236.z, x_236.w, x_236.z, x_236.w) * vec4<f32>(1.0f, -1.0f, -1.0f, 1.0f)) + vec4<f32>(x_240.x, x_240.y, x_240.x, x_240.y));
    let x_247 : vec4<f32> = u_xlat3;
    let x_249 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_247.x, x_247.y), 0.0f);
    u_xlat4 = vec3<f32>(x_249.x, x_249.y, x_249.z);
    let x_251 : vec3<f32> = u_xlat4;
    u_xlat23 = dot(x_251, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_256 : vec4<f32> = u_xlat3;
    let x_258 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_256.z, x_256.w), 0.0f);
    let x_259 : vec3<f32> = vec3<f32>(x_258.x, x_258.y, x_258.z);
    let x_260 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
    let x_262 : vec4<f32> = u_xlat3;
    u_xlat3.x = dot(vec3<f32>(x_262.x, x_262.y, x_262.z), vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_267 : vec4<f32> = u_xlat1;
    let x_269 : vec4<f32> = u_xlat1;
    u_xlat10 = (vec2<f32>(x_267.x, x_267.y) + vec2<f32>(x_269.z, x_269.w));
    let x_273 : f32 = u_xlat2.x;
    u_xlat2.x = (1.0f / x_273);
    let x_278 : f32 = u_xlat10.y;
    let x_280 : f32 = u_xlat10.x;
    u_xlat24 = (x_278 + x_280);
    let x_282 : f32 = u_xlat21;
    let x_286 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_282 * -2.0f) + x_286);
    let x_290 : f32 = u_xlat21;
    let x_293 : f32 = u_xlat10.y;
    u_xlat17 = ((x_290 * -2.0f) + x_293);
    let x_296 : f32 = u_xlat16.x;
    let x_297 : f32 = u_xlat23;
    u_xlat4.x = (x_296 + x_297);
    let x_300 : f32 = u_xlat23;
    let x_302 : f32 = u_xlat9.x;
    u_xlat23 = (x_300 + x_302);
    let x_306 : f32 = u_xlat1.y;
    let x_309 : f32 = u_xlat4.x;
    u_xlat11.x = ((x_306 * -2.0f) + x_309);
    let x_313 : f32 = u_xlat1.z;
    let x_315 : f32 = u_xlat23;
    u_xlat23 = ((x_313 * -2.0f) + x_315);
    let x_318 : f32 = u_xlat9.x;
    let x_320 : f32 = u_xlat3.x;
    u_xlat9.x = (x_318 + x_320);
    let x_324 : f32 = u_xlat16.x;
    let x_326 : f32 = u_xlat3.x;
    u_xlat16.x = (x_324 + x_326);
    let x_330 : f32 = u_xlat10.x;
    let x_335 : f32 = u_xlat11.x;
    u_xlat3.x = ((abs(x_330) * 2.0f) + abs(x_335));
    let x_339 : f32 = u_xlat17;
    let x_342 : f32 = u_xlat23;
    u_xlat23 = ((abs(x_339) * 2.0f) + abs(x_342));
    let x_346 : f32 = u_xlat1.w;
    let x_349 : f32 = u_xlat9.x;
    u_xlat10.x = ((x_346 * -2.0f) + x_349);
    let x_353 : f32 = u_xlat1.x;
    let x_356 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_353 * -2.0f) + x_356);
    let x_360 : f32 = u_xlat3.x;
    let x_362 : f32 = u_xlat10.x;
    u_xlat3.x = (x_360 + abs(x_362));
    let x_366 : f32 = u_xlat23;
    let x_368 : f32 = u_xlat16.x;
    u_xlat16.x = (x_366 + abs(x_368));
    let x_373 : f32 = u_xlat4.x;
    let x_375 : f32 = u_xlat9.x;
    u_xlat9.x = (x_373 + x_375);
    let x_380 : f32 = u_xlat3.x;
    let x_382 : f32 = u_xlat16.x;
    u_xlatb16 = (x_380 >= x_382);
    let x_384 : f32 = u_xlat24;
    let x_387 : f32 = u_xlat9.x;
    u_xlat9.x = ((x_384 * 2.0f) + x_387);
    let x_390 : bool = u_xlatb16;
    if (x_390) {
      let x_395 : vec4<f32> = u_xlat1;
      x_392 = vec2<f32>(x_395.x, x_395.z);
    } else {
      let x_398 : vec4<f32> = u_xlat1;
      x_392 = vec2<f32>(x_398.y, x_398.w);
    }
    let x_400 : vec2<f32> = x_392;
    let x_401 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_400.x, x_401.y, x_400.y, x_401.w);
    let x_403 : bool = u_xlatb16;
    if (x_403) {
      let x_409 : f32 = x_27.x_SourceSize.w;
      x_405 = x_409;
    } else {
      let x_412 : f32 = x_27.x_SourceSize.z;
      x_405 = x_412;
    }
    let x_413 : f32 = x_405;
    u_xlat8.x = x_413;
    let x_417 : f32 = u_xlat9.x;
    let x_420 : f32 = u_xlat21;
    u_xlat22 = ((x_417 * 0.08333333581686019897f) + -(x_420));
    let x_423 : f32 = u_xlat21;
    let x_426 : vec4<f32> = u_xlat1;
    let x_428 : vec2<f32> = (-(vec2<f32>(x_423, x_423)) + vec2<f32>(x_426.z, x_426.x));
    let x_429 : vec3<f32> = u_xlat9;
    u_xlat9 = vec3<f32>(x_428.x, x_429.y, x_428.y);
    let x_431 : f32 = u_xlat21;
    let x_433 : vec4<f32> = u_xlat1;
    let x_435 : vec2<f32> = (vec2<f32>(x_431, x_431) + vec2<f32>(x_433.x, x_433.z));
    let x_436 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_435.x, x_436.y, x_435.y, x_436.w);
    let x_440 : f32 = u_xlat9.x;
    let x_443 : f32 = u_xlat9.z;
    u_xlatb3 = (abs(x_440) >= abs(x_443));
    let x_447 : f32 = u_xlat9.z;
    let x_450 : f32 = u_xlat9.x;
    u_xlat9.x = max(abs(x_447), abs(x_450));
    let x_454 : bool = u_xlatb3;
    if (x_454) {
      let x_459 : f32 = u_xlat8.x;
      x_455 = -(x_459);
    } else {
      let x_463 : f32 = u_xlat8.x;
      x_455 = x_463;
    }
    let x_464 : f32 = x_455;
    u_xlat8.x = x_464;
    let x_467 : f32 = u_xlat2.x;
    let x_468 : f32 = u_xlat22;
    u_xlat22 = (x_467 * abs(x_468));
    let x_471 : f32 = u_xlat22;
    u_xlat22 = clamp(x_471, 0.0f, 1.0f);
    let x_473 : bool = u_xlatb16;
    if (x_473) {
      let x_478 : f32 = x_27.x_SourceSize.z;
      x_474 = x_478;
    } else {
      x_474 = 0.0f;
    }
    let x_480 : f32 = x_474;
    u_xlat2.x = x_480;
    let x_482 : bool = u_xlatb16;
    if (x_482) {
      x_483 = 0.0f;
    } else {
      let x_488 : f32 = x_27.x_SourceSize.w;
      x_483 = x_488;
    }
    let x_489 : f32 = x_483;
    u_xlat2.w = x_489;
    let x_491 : vec3<f32> = u_xlat8;
    let x_496 : vec2<f32> = vs_TEXCOORD0;
    u_xlat10 = ((vec2<f32>(x_491.x, x_491.x) * vec2<f32>(0.5f, 0.5f)) + x_496);
    let x_498 : bool = u_xlatb16;
    if (x_498) {
      let x_504 : f32 = vs_TEXCOORD0.x;
      x_499 = x_504;
    } else {
      let x_507 : f32 = u_xlat10.x;
      x_499 = x_507;
    }
    let x_508 : f32 = x_499;
    u_xlat10.x = x_508;
    let x_510 : bool = u_xlatb16;
    if (x_510) {
      let x_515 : f32 = u_xlat10.y;
      x_511 = x_515;
    } else {
      let x_518 : f32 = vs_TEXCOORD0.y;
      x_511 = x_518;
    }
    let x_519 : f32 = x_511;
    u_xlat10.y = x_519;
    let x_521 : vec4<f32> = u_xlat2;
    let x_524 : vec2<f32> = u_xlat10;
    let x_525 : vec2<f32> = (-(vec2<f32>(x_521.x, x_521.w)) + x_524);
    let x_526 : vec3<f32> = u_xlat4;
    u_xlat4 = vec3<f32>(x_525.x, x_525.y, x_526.z);
    let x_529 : vec4<f32> = u_xlat2;
    let x_531 : vec2<f32> = u_xlat10;
    let x_532 : vec2<f32> = (vec2<f32>(x_529.x, x_529.w) + x_531);
    let x_533 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_532.x, x_532.y, x_533.z);
    let x_535 : f32 = u_xlat22;
    u_xlat10.x = ((x_535 * -2.0f) + 3.0f);
    let x_544 : vec3<f32> = u_xlat4;
    let x_546 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_544.x, x_544.y), 0.0f);
    u_xlat6 = vec3<f32>(x_546.x, x_546.y, x_546.z);
    let x_548 : vec3<f32> = u_xlat6;
    u_xlat17 = dot(x_548, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_550 : f32 = u_xlat22;
    let x_551 : f32 = u_xlat22;
    u_xlat22 = (x_550 * x_551);
    let x_556 : vec3<f32> = u_xlat5;
    let x_558 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_556.x, x_556.y), 0.0f);
    u_xlat6 = vec3<f32>(x_558.x, x_558.y, x_558.z);
    let x_560 : vec3<f32> = u_xlat6;
    u_xlat24 = dot(x_560, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_562 : bool = u_xlatb3;
    if (x_562) {
      let x_567 : f32 = u_xlat1.z;
      x_563 = x_567;
    } else {
      let x_570 : f32 = u_xlat1.x;
      x_563 = x_570;
    }
    let x_571 : f32 = x_563;
    u_xlat1.x = x_571;
    let x_575 : f32 = u_xlat9.x;
    u_xlat15 = (x_575 * 0.25f);
    let x_579 : f32 = u_xlat1.x;
    let x_582 : f32 = u_xlat21;
    u_xlat21 = ((-(x_579) * 0.5f) + x_582);
    let x_584 : f32 = u_xlat22;
    let x_586 : f32 = u_xlat10.x;
    u_xlat22 = (x_584 * x_586);
    let x_590 : f32 = u_xlat21;
    u_xlati21 = bitcast<i32>(select(0u, 4294967295u, (x_590 < 0.0f)));
    let x_596 : f32 = u_xlat1.x;
    let x_599 : f32 = u_xlat17;
    u_xlat3.x = ((-(x_596) * 0.5f) + x_599);
    let x_603 : f32 = u_xlat1.x;
    let x_606 : f32 = u_xlat24;
    u_xlat3.y = ((-(x_603) * 0.5f) + x_606);
    let x_612 : vec4<f32> = u_xlat3;
    let x_615 : f32 = u_xlat15;
    let x_618 : vec4<bool> = (abs(vec4<f32>(x_612.x, x_612.y, x_612.x, x_612.y)) >= vec4<f32>(x_615, x_615, x_615, x_615));
    u_xlati17 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_618.x, x_618.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_629 : f32 = u_xlat2.x;
    let x_634 : f32 = u_xlat4.x;
    u_xlat9.x = ((-(x_629) * 1.5f) + x_634);
    let x_638 : i32 = u_xlati17.x;
    if ((x_638 != 0i)) {
      let x_644 : f32 = u_xlat4.x;
      x_640 = x_644;
    } else {
      let x_647 : f32 = u_xlat9.x;
      x_640 = x_647;
    }
    let x_648 : f32 = x_640;
    u_xlat4.x = x_648;
    let x_651 : f32 = u_xlat2.w;
    let x_655 : f32 = u_xlat4.y;
    u_xlat9.x = ((-(x_651) * 1.5f) + x_655);
    let x_659 : i32 = u_xlati17.x;
    if ((x_659 != 0i)) {
      let x_665 : f32 = u_xlat4.y;
      x_661 = x_665;
    } else {
      let x_668 : f32 = u_xlat9.x;
      x_661 = x_668;
    }
    let x_669 : f32 = x_661;
    u_xlat4.z = x_669;
    let x_674 : vec2<i32> = u_xlati17;
    let x_675 : vec2<i32> = ~(x_674);
    let x_676 : vec3<i32> = u_xlati11;
    u_xlati11 = vec3<i32>(x_675.x, x_676.y, x_675.y);
    let x_680 : i32 = u_xlati11.z;
    let x_683 : i32 = u_xlati11.x;
    u_xlati9 = bitcast<i32>((bitcast<u32>(x_680) | bitcast<u32>(x_683)));
    let x_688 : f32 = u_xlat2.x;
    let x_691 : f32 = u_xlat5.x;
    u_xlat11.x = ((x_688 * 1.5f) + x_691);
    let x_695 : i32 = u_xlati17.y;
    if ((x_695 != 0i)) {
      let x_701 : f32 = u_xlat5.x;
      x_697 = x_701;
    } else {
      let x_704 : f32 = u_xlat11.x;
      x_697 = x_704;
    }
    let x_705 : f32 = x_697;
    u_xlat11.x = x_705;
    let x_708 : f32 = u_xlat2.w;
    let x_711 : f32 = u_xlat5.y;
    u_xlat5.x = ((x_708 * 1.5f) + x_711);
    let x_715 : i32 = u_xlati17.y;
    if ((x_715 != 0i)) {
      let x_721 : f32 = u_xlat5.y;
      x_717 = x_721;
    } else {
      let x_724 : f32 = u_xlat5.x;
      x_717 = x_724;
    }
    let x_725 : f32 = x_717;
    u_xlat11.z = x_725;
    let x_727 : i32 = u_xlati9;
    if ((x_727 != 0i)) {
      let x_732 : i32 = u_xlati17.x;
      if ((x_732 == 0i)) {
        let x_739 : vec3<f32> = u_xlat4;
        let x_741 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_739.x, x_739.z), 0.0f);
        u_xlat5 = vec3<f32>(x_741.x, x_741.y, x_741.z);
        let x_743 : vec3<f32> = u_xlat5;
        u_xlat3.x = dot(x_743, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
      }
      let x_747 : i32 = u_xlati17.y;
      if ((x_747 == 0i)) {
        let x_754 : vec3<f32> = u_xlat11;
        let x_756 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_754.x, x_754.z), 0.0f);
        u_xlat5 = vec3<f32>(x_756.x, x_756.y, x_756.z);
        let x_758 : vec3<f32> = u_xlat5;
        u_xlat3.y = dot(x_758, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
      }
      let x_762 : f32 = u_xlat1.x;
      let x_766 : f32 = u_xlat3.x;
      u_xlat9.x = ((-(x_762) * 0.5f) + x_766);
      let x_770 : i32 = u_xlati17.x;
      if ((x_770 != 0i)) {
        let x_776 : f32 = u_xlat3.x;
        x_772 = x_776;
      } else {
        let x_779 : f32 = u_xlat9.x;
        x_772 = x_779;
      }
      let x_780 : f32 = x_772;
      u_xlat3.x = x_780;
      let x_783 : f32 = u_xlat1.x;
      let x_787 : f32 = u_xlat3.y;
      u_xlat9.x = ((-(x_783) * 0.5f) + x_787);
      let x_791 : i32 = u_xlati17.y;
      if ((x_791 != 0i)) {
        let x_797 : f32 = u_xlat3.y;
        x_793 = x_797;
      } else {
        let x_800 : f32 = u_xlat9.x;
        x_793 = x_800;
      }
      let x_801 : f32 = x_793;
      u_xlat3.y = x_801;
      let x_803 : vec4<f32> = u_xlat3;
      let x_806 : f32 = u_xlat15;
      let x_808 : vec4<bool> = (abs(vec4<f32>(x_803.x, x_803.y, x_803.x, x_803.y)) >= vec4<f32>(x_806, x_806, x_806, x_806));
      u_xlati17 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_808.x, x_808.y)) * vec2<u32>(4294967295u, 4294967295u)));
      let x_815 : f32 = u_xlat2.x;
      let x_819 : f32 = u_xlat4.x;
      u_xlat9.x = ((-(x_815) * 2.0f) + x_819);
      let x_823 : i32 = u_xlati17.x;
      if ((x_823 != 0i)) {
        let x_829 : f32 = u_xlat4.x;
        x_825 = x_829;
      } else {
        let x_832 : f32 = u_xlat9.x;
        x_825 = x_832;
      }
      let x_833 : f32 = x_825;
      u_xlat4.x = x_833;
      let x_836 : f32 = u_xlat2.w;
      let x_840 : f32 = u_xlat4.z;
      u_xlat9.x = ((-(x_836) * 2.0f) + x_840);
      let x_844 : i32 = u_xlati17.x;
      if ((x_844 != 0i)) {
        let x_850 : f32 = u_xlat4.z;
        x_846 = x_850;
      } else {
        let x_853 : f32 = u_xlat9.x;
        x_846 = x_853;
      }
      let x_854 : f32 = x_846;
      u_xlat4.z = x_854;
      let x_857 : vec2<i32> = u_xlati17;
      u_xlati5 = ~(x_857);
      let x_860 : i32 = u_xlati5.y;
      let x_863 : i32 = u_xlati5.x;
      u_xlati9 = bitcast<i32>((bitcast<u32>(x_860) | bitcast<u32>(x_863)));
      let x_868 : f32 = u_xlat2.x;
      let x_871 : f32 = u_xlat11.x;
      u_xlat5.x = ((x_868 * 2.0f) + x_871);
      let x_875 : i32 = u_xlati17.y;
      if ((x_875 != 0i)) {
        let x_881 : f32 = u_xlat11.x;
        x_877 = x_881;
      } else {
        let x_884 : f32 = u_xlat5.x;
        x_877 = x_884;
      }
      let x_885 : f32 = x_877;
      u_xlat11.x = x_885;
      let x_888 : f32 = u_xlat2.w;
      let x_891 : f32 = u_xlat11.z;
      u_xlat5.x = ((x_888 * 2.0f) + x_891);
      let x_895 : i32 = u_xlati17.y;
      if ((x_895 != 0i)) {
        let x_901 : f32 = u_xlat11.z;
        x_897 = x_901;
      } else {
        let x_904 : f32 = u_xlat5.x;
        x_897 = x_904;
      }
      let x_905 : f32 = x_897;
      u_xlat11.z = x_905;
      let x_907 : i32 = u_xlati9;
      if ((x_907 != 0i)) {
        let x_912 : i32 = u_xlati17.x;
        if ((x_912 == 0i)) {
          let x_919 : vec3<f32> = u_xlat4;
          let x_921 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_919.x, x_919.z), 0.0f);
          u_xlat5 = vec3<f32>(x_921.x, x_921.y, x_921.z);
          let x_923 : vec3<f32> = u_xlat5;
          u_xlat3.x = dot(x_923, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
        }
        let x_927 : i32 = u_xlati17.y;
        if ((x_927 == 0i)) {
          let x_934 : vec3<f32> = u_xlat11;
          let x_936 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_934.x, x_934.z), 0.0f);
          u_xlat5 = vec3<f32>(x_936.x, x_936.y, x_936.z);
          let x_938 : vec3<f32> = u_xlat5;
          u_xlat3.y = dot(x_938, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
        }
        let x_942 : f32 = u_xlat1.x;
        let x_946 : f32 = u_xlat3.x;
        u_xlat9.x = ((-(x_942) * 0.5f) + x_946);
        let x_950 : i32 = u_xlati17.x;
        if ((x_950 != 0i)) {
          let x_956 : f32 = u_xlat3.x;
          x_952 = x_956;
        } else {
          let x_959 : f32 = u_xlat9.x;
          x_952 = x_959;
        }
        let x_960 : f32 = x_952;
        u_xlat3.x = x_960;
        let x_963 : f32 = u_xlat1.x;
        let x_967 : f32 = u_xlat3.y;
        u_xlat9.x = ((-(x_963) * 0.5f) + x_967);
        let x_971 : i32 = u_xlati17.y;
        if ((x_971 != 0i)) {
          let x_977 : f32 = u_xlat3.y;
          x_973 = x_977;
        } else {
          let x_980 : f32 = u_xlat9.x;
          x_973 = x_980;
        }
        let x_981 : f32 = x_973;
        u_xlat3.y = x_981;
        let x_983 : vec4<f32> = u_xlat3;
        let x_986 : f32 = u_xlat15;
        let x_988 : vec4<bool> = (abs(vec4<f32>(x_983.x, x_983.y, x_983.x, x_983.y)) >= vec4<f32>(x_986, x_986, x_986, x_986));
        u_xlati17 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_988.x, x_988.y)) * vec2<u32>(4294967295u, 4294967295u)));
        let x_995 : f32 = u_xlat2.x;
        let x_1000 : f32 = u_xlat4.x;
        u_xlat9.x = ((-(x_995) * 4.0f) + x_1000);
        let x_1004 : i32 = u_xlati17.x;
        if ((x_1004 != 0i)) {
          let x_1010 : f32 = u_xlat4.x;
          x_1006 = x_1010;
        } else {
          let x_1013 : f32 = u_xlat9.x;
          x_1006 = x_1013;
        }
        let x_1014 : f32 = x_1006;
        u_xlat4.x = x_1014;
        let x_1017 : f32 = u_xlat2.w;
        let x_1021 : f32 = u_xlat4.z;
        u_xlat9.x = ((-(x_1017) * 4.0f) + x_1021);
        let x_1025 : i32 = u_xlati17.x;
        if ((x_1025 != 0i)) {
          let x_1031 : f32 = u_xlat4.z;
          x_1027 = x_1031;
        } else {
          let x_1034 : f32 = u_xlat9.x;
          x_1027 = x_1034;
        }
        let x_1035 : f32 = x_1027;
        u_xlat4.z = x_1035;
        let x_1037 : vec2<i32> = u_xlati17;
        u_xlati5 = ~(x_1037);
        let x_1040 : i32 = u_xlati5.y;
        let x_1043 : i32 = u_xlati5.x;
        u_xlati9 = bitcast<i32>((bitcast<u32>(x_1040) | bitcast<u32>(x_1043)));
        let x_1048 : f32 = u_xlat2.x;
        let x_1051 : f32 = u_xlat11.x;
        u_xlat5.x = ((x_1048 * 4.0f) + x_1051);
        let x_1055 : i32 = u_xlati17.y;
        if ((x_1055 != 0i)) {
          let x_1061 : f32 = u_xlat11.x;
          x_1057 = x_1061;
        } else {
          let x_1064 : f32 = u_xlat5.x;
          x_1057 = x_1064;
        }
        let x_1065 : f32 = x_1057;
        u_xlat11.x = x_1065;
        let x_1068 : f32 = u_xlat2.w;
        let x_1071 : f32 = u_xlat11.z;
        u_xlat5.x = ((x_1068 * 4.0f) + x_1071);
        let x_1075 : i32 = u_xlati17.y;
        if ((x_1075 != 0i)) {
          let x_1081 : f32 = u_xlat11.z;
          x_1077 = x_1081;
        } else {
          let x_1084 : f32 = u_xlat5.x;
          x_1077 = x_1084;
        }
        let x_1085 : f32 = x_1077;
        u_xlat11.z = x_1085;
        let x_1087 : i32 = u_xlati9;
        if ((x_1087 != 0i)) {
          let x_1092 : i32 = u_xlati17.x;
          if ((x_1092 == 0i)) {
            let x_1099 : vec3<f32> = u_xlat4;
            let x_1101 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1099.x, x_1099.z), 0.0f);
            u_xlat5 = vec3<f32>(x_1101.x, x_1101.y, x_1101.z);
            let x_1103 : vec3<f32> = u_xlat5;
            u_xlat3.x = dot(x_1103, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
          }
          let x_1107 : i32 = u_xlati17.y;
          if ((x_1107 == 0i)) {
            let x_1114 : vec3<f32> = u_xlat11;
            let x_1116 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1114.x, x_1114.z), 0.0f);
            u_xlat5 = vec3<f32>(x_1116.x, x_1116.y, x_1116.z);
            let x_1118 : vec3<f32> = u_xlat5;
            u_xlat3.y = dot(x_1118, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
          }
          let x_1122 : f32 = u_xlat1.x;
          let x_1126 : f32 = u_xlat3.x;
          u_xlat9.x = ((-(x_1122) * 0.5f) + x_1126);
          let x_1130 : i32 = u_xlati17.x;
          if ((x_1130 != 0i)) {
            let x_1136 : f32 = u_xlat3.x;
            x_1132 = x_1136;
          } else {
            let x_1139 : f32 = u_xlat9.x;
            x_1132 = x_1139;
          }
          let x_1140 : f32 = x_1132;
          u_xlat3.x = x_1140;
          let x_1143 : f32 = u_xlat1.x;
          let x_1147 : f32 = u_xlat3.y;
          u_xlat1.x = ((-(x_1143) * 0.5f) + x_1147);
          let x_1151 : i32 = u_xlati17.y;
          if ((x_1151 != 0i)) {
            let x_1157 : f32 = u_xlat3.y;
            x_1153 = x_1157;
          } else {
            let x_1160 : f32 = u_xlat1.x;
            x_1153 = x_1160;
          }
          let x_1161 : f32 = x_1153;
          u_xlat3.y = x_1161;
          let x_1166 : vec4<f32> = u_xlat3;
          let x_1169 : f32 = u_xlat15;
          let x_1171 : vec4<bool> = (abs(vec4<f32>(x_1166.x, x_1166.x, x_1166.y, x_1166.x)) >= vec4<f32>(x_1169, x_1169, x_1169, x_1169));
          let x_1172 : vec2<bool> = vec2<bool>(x_1171.x, x_1171.z);
          let x_1173 : vec3<bool> = u_xlatb1;
          u_xlatb1 = vec3<bool>(x_1172.x, x_1173.y, x_1172.y);
          let x_1176 : f32 = u_xlat2.x;
          let x_1181 : f32 = u_xlat4.x;
          u_xlat9.x = ((-(x_1176) * 12.0f) + x_1181);
          let x_1185 : bool = u_xlatb1.x;
          if (x_1185) {
            let x_1190 : f32 = u_xlat4.x;
            x_1186 = x_1190;
          } else {
            let x_1193 : f32 = u_xlat9.x;
            x_1186 = x_1193;
          }
          let x_1194 : f32 = x_1186;
          u_xlat4.x = x_1194;
          let x_1197 : f32 = u_xlat2.w;
          let x_1201 : f32 = u_xlat4.z;
          u_xlat9.x = ((-(x_1197) * 12.0f) + x_1201);
          let x_1205 : bool = u_xlatb1.x;
          if (x_1205) {
            let x_1210 : f32 = u_xlat4.z;
            x_1206 = x_1210;
          } else {
            let x_1213 : f32 = u_xlat9.x;
            x_1206 = x_1213;
          }
          let x_1214 : f32 = x_1206;
          u_xlat4.z = x_1214;
          let x_1217 : f32 = u_xlat2.x;
          let x_1220 : f32 = u_xlat11.x;
          u_xlat1.x = ((x_1217 * 12.0f) + x_1220);
          let x_1224 : bool = u_xlatb1.z;
          if (x_1224) {
            let x_1229 : f32 = u_xlat11.x;
            x_1225 = x_1229;
          } else {
            let x_1232 : f32 = u_xlat1.x;
            x_1225 = x_1232;
          }
          let x_1233 : f32 = x_1225;
          u_xlat11.x = x_1233;
          let x_1236 : f32 = u_xlat2.w;
          let x_1239 : f32 = u_xlat11.z;
          u_xlat1.x = ((x_1236 * 12.0f) + x_1239);
          let x_1243 : bool = u_xlatb1.z;
          if (x_1243) {
            let x_1248 : f32 = u_xlat11.z;
            x_1244 = x_1248;
          } else {
            let x_1251 : f32 = u_xlat1.x;
            x_1244 = x_1251;
          }
          let x_1252 : f32 = x_1244;
          u_xlat11.z = x_1252;
        }
      }
    }
    let x_1255 : f32 = u_xlat4.x;
    let x_1258 : f32 = vs_TEXCOORD0.x;
    u_xlat1.x = (-(x_1255) + x_1258);
    let x_1262 : f32 = u_xlat11.x;
    let x_1264 : f32 = vs_TEXCOORD0.x;
    u_xlat15 = (x_1262 + -(x_1264));
    let x_1268 : f32 = u_xlat4.z;
    let x_1271 : f32 = vs_TEXCOORD0.y;
    u_xlat2.x = (-(x_1268) + x_1271);
    let x_1274 : bool = u_xlatb16;
    if (x_1274) {
      let x_1279 : f32 = u_xlat1.x;
      x_1275 = x_1279;
    } else {
      let x_1282 : f32 = u_xlat2.x;
      x_1275 = x_1282;
    }
    let x_1283 : f32 = x_1275;
    u_xlat1.x = x_1283;
    let x_1286 : f32 = u_xlat11.z;
    let x_1288 : f32 = vs_TEXCOORD0.y;
    u_xlat2.x = (x_1286 + -(x_1288));
    let x_1292 : bool = u_xlatb16;
    if (x_1292) {
      let x_1296 : f32 = u_xlat15;
      x_1293 = x_1296;
    } else {
      let x_1299 : f32 = u_xlat2.x;
      x_1293 = x_1299;
    }
    let x_1300 : f32 = x_1293;
    u_xlat15 = x_1300;
    let x_1302 : vec4<f32> = u_xlat3;
    let x_1305 : vec4<bool> = (vec4<f32>(x_1302.x, x_1302.y, x_1302.x, x_1302.x) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
    u_xlati2 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1305.x, x_1305.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_1312 : f32 = u_xlat1.x;
    let x_1313 : f32 = u_xlat15;
    u_xlat23 = (x_1312 + x_1313);
    let x_1317 : i32 = u_xlati21;
    let x_1320 : vec2<i32> = u_xlati2;
    let x_1322 : vec4<bool> = (vec4<i32>(x_1317, x_1317, x_1317, x_1317) != vec4<i32>(x_1320.x, x_1320.y, x_1320.x, x_1320.x));
    u_xlatb2 = vec2<bool>(x_1322.x, x_1322.y);
    let x_1324 : f32 = u_xlat23;
    u_xlat21 = (1.0f / x_1324);
    let x_1328 : f32 = u_xlat1.x;
    let x_1329 : f32 = u_xlat15;
    u_xlatb23 = (x_1328 < x_1329);
    let x_1331 : f32 = u_xlat15;
    let x_1333 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_1331, x_1333);
    let x_1337 : bool = u_xlatb23;
    if (x_1337) {
      let x_1343 : bool = u_xlatb2.x;
      x_1339 = x_1343;
    } else {
      let x_1346 : bool = u_xlatb2.y;
      x_1339 = x_1346;
    }
    let x_1347 : bool = x_1339;
    u_xlatb15 = x_1347;
    let x_1348 : f32 = u_xlat22;
    let x_1349 : f32 = u_xlat22;
    u_xlat22 = (x_1348 * x_1349);
    let x_1352 : f32 = u_xlat1.x;
    let x_1353 : f32 = u_xlat21;
    u_xlat21 = ((x_1352 * -(x_1353)) + 0.5f);
    let x_1357 : f32 = u_xlat22;
    u_xlat1.x = (x_1357 * 0.64999997615814208984f);
    let x_1361 : bool = u_xlatb15;
    let x_1362 : f32 = u_xlat21;
    u_xlat21 = select(0.0f, x_1362, x_1361);
    let x_1365 : f32 = u_xlat1.x;
    let x_1366 : f32 = u_xlat21;
    u_xlat21 = max(x_1365, x_1366);
    let x_1368 : f32 = u_xlat21;
    let x_1370 : vec3<f32> = u_xlat8;
    let x_1373 : vec2<f32> = vs_TEXCOORD0;
    let x_1374 : vec2<f32> = ((vec2<f32>(x_1368, x_1368) * vec2<f32>(x_1370.x, x_1370.x)) + x_1373);
    let x_1375 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1374.x, x_1374.y, x_1375.z, x_1375.w);
    let x_1377 : bool = u_xlatb16;
    if (x_1377) {
      let x_1382 : f32 = vs_TEXCOORD0.x;
      x_1378 = x_1382;
    } else {
      let x_1385 : f32 = u_xlat1.x;
      x_1378 = x_1385;
    }
    let x_1386 : f32 = x_1378;
    u_xlat2.x = x_1386;
    let x_1388 : bool = u_xlatb16;
    if (x_1388) {
      let x_1393 : f32 = u_xlat1.y;
      x_1389 = x_1393;
    } else {
      let x_1396 : f32 = vs_TEXCOORD0.y;
      x_1389 = x_1396;
    }
    let x_1397 : f32 = x_1389;
    u_xlat2.y = x_1397;
    let x_1402 : vec4<f32> = u_xlat2;
    let x_1404 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1402.x, x_1402.y), 0.0f);
    u_xlat0 = vec3<f32>(x_1404.x, x_1404.y, x_1404.z);
  }
  let x_1406 : vec3<f32> = u_xlat0;
  let x_1409 : vec3<f32> = (x_1406 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1410 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1410.w);
  let x_1412 : vec3<f32> = u_xlat0;
  let x_1414 : vec3<f32> = log2(abs(x_1412));
  let x_1415 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1414.x, x_1414.y, x_1414.z, x_1415.w);
  let x_1417 : vec4<f32> = u_xlat2;
  let x_1421 : vec3<f32> = (vec3<f32>(x_1417.x, x_1417.y, x_1417.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1422 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1421.x, x_1421.y, x_1421.z, x_1422.w);
  let x_1424 : vec4<f32> = u_xlat2;
  let x_1426 : vec3<f32> = exp2(vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
  let x_1427 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
  let x_1429 : vec4<f32> = u_xlat2;
  let x_1436 : vec3<f32> = ((vec3<f32>(x_1429.x, x_1429.y, x_1429.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1437 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1436.x, x_1436.y, x_1436.z, x_1437.w);
  let x_1442 : vec3<f32> = u_xlat0;
  let x_1444 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1442.x, x_1442.y, x_1442.z, x_1442.x));
  u_xlatb0 = vec3<bool>(x_1444.x, x_1444.y, x_1444.z);
  let x_1449 : bool = u_xlatb0.x;
  if (x_1449) {
    let x_1454 : f32 = u_xlat1.x;
    x_1450 = x_1454;
  } else {
    let x_1457 : f32 = u_xlat2.x;
    x_1450 = x_1457;
  }
  let x_1458 : f32 = x_1450;
  SV_Target0.x = x_1458;
  let x_1462 : bool = u_xlatb0.y;
  if (x_1462) {
    let x_1467 : f32 = u_xlat1.y;
    x_1463 = x_1467;
  } else {
    let x_1470 : f32 = u_xlat2.y;
    x_1463 = x_1470;
  }
  let x_1471 : f32 = x_1463;
  SV_Target0.y = x_1471;
  let x_1474 : bool = u_xlatb0.z;
  if (x_1474) {
    let x_1479 : f32 = u_xlat1.z;
    x_1475 = x_1479;
  } else {
    let x_1482 : f32 = u_xlat2.z;
    x_1475 = x_1482;
  }
  let x_1483 : f32 = x_1475;
  SV_Target0.z = x_1483;
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


