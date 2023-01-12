struct CB1 {
  InvLowResolution : vec4<f32>,
  InvHighResolution : vec4<f32>,
  AdditionalParams : vec4<f32>,
}

struct S {
  value : array<u32, 2u>,
}

struct S_1 {
  value : array<u32, 2u>,
}

struct S_2 {
  value : array<u32, 2u>,
}

var<private> gl_LocalInvocationID : vec3<u32>;

var<private> gl_GlobalInvocationID : vec3<u32>;

@group(1) @binding(0) var<uniform> x_66 : CB1;

@group(0) @binding(2) var LoResAO1 : texture_2d<f32>;

@group(0) @binding(6) var samplerLoResAO1 : sampler;

var<workgroup> TGSM1 : array<S, 256u>;

@group(0) @binding(0) var LoResDB : texture_2d<f32>;

@group(0) @binding(4) var samplerLoResDB : sampler;

var<workgroup> TGSM0 : array<S_1, 256u>;

var<private> gl_LocalInvocationIndex : u32;

var<workgroup> TGSM2 : array<S_2, 256u>;

@group(0) @binding(1) var HiResDB : texture_2d<f32>;

@group(0) @binding(5) var samplerHiResDB : sampler;

@group(0) @binding(3) var AoResult_origX0X : texture_storage_2d<rg32float, write>;

fn main_1() {
  var u_xlati0 : vec4<i32>;
  var u_xlati13 : vec3<i32>;
  var u_xlat13 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlati39 : i32;
  var u_xlati27 : vec2<i32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb0 : vec2<bool>;
  var u_xlatu0 : u32;
  var u_xlatu1 : u32;
  var u_xlati26 : i32;
  var u_xlat26 : vec2<f32>;
  var u_xlati1 : vec4<i32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlati4 : vec4<i32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat31 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat32 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat27 : vec2<f32>;
  var u_xlat33 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat34 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat35 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb31 : vec2<bool>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatb7 : vec2<bool>;
  var u_xlatb27 : vec2<bool>;
  var x_753 : f32;
  var x_766 : f32;
  var hlslcc_movcTemp : vec2<f32>;
  var x_780 : f32;
  var x_792 : f32;
  var u_xlati31 : vec2<i32>;
  var u_xlat12 : vec2<f32>;
  var x_824 : f32;
  var x_837 : f32;
  var x_850 : f32;
  var x_863 : f32;
  var x_878 : f32;
  var x_890 : f32;
  var x_939 : f32;
  var x_951 : f32;
  var u_xlati2 : vec4<i32>;
  var x_985 : f32;
  var x_998 : f32;
  var x_1011 : f32;
  var x_1024 : f32;
  var x_1039 : f32;
  var x_1051 : f32;
  var x_1093 : f32;
  var x_1105 : f32;
  var u_xlati28 : vec2<i32>;
  var x_1133 : f32;
  var x_1146 : f32;
  var x_1158 : f32;
  var x_1170 : f32;
  var u_xlatb29 : vec2<bool>;
  var u_xlatb4 : vec2<bool>;
  var u_xlatb5 : vec2<bool>;
  var u_xlatb30 : vec2<bool>;
  var x_1601 : f32;
  var x_1614 : f32;
  var hlslcc_movcTemp_1 : vec2<f32>;
  var x_1628 : f32;
  var x_1640 : f32;
  var u_xlati29 : vec2<i32>;
  var x_1669 : f32;
  var x_1682 : f32;
  var x_1695 : f32;
  var x_1708 : f32;
  var x_1723 : f32;
  var x_1735 : f32;
  var hlslcc_movcTemp_2 : vec4<f32>;
  var x_1765 : f32;
  var x_1777 : f32;
  var x_1805 : f32;
  var x_1818 : f32;
  var hlslcc_movcTemp_3 : vec2<f32>;
  var x_1832 : f32;
  var x_1844 : f32;
  var u_xlat0 : vec4<f32>;
  var u_xlatu3 : vec4<u32>;
  var u_xlati8 : vec4<i32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : u32 = gl_LocalInvocationID.x;
  u_xlati0.x = (bitcast<i32>(x_17) << bitcast<u32>(1i));
  let x_25 : u32 = gl_LocalInvocationID.y;
  let x_30 : i32 = u_xlati0.x;
  u_xlati0.x = ((bitcast<i32>(x_25) * 32i) + x_30);
  let x_37 : vec3<u32> = gl_LocalInvocationID;
  let x_42 : vec3<u32> = gl_GlobalInvocationID;
  let x_45 : vec2<i32> = (bitcast<vec2<i32>>(vec2<u32>(x_37.x, x_37.y)) + bitcast<vec2<i32>>(vec2<u32>(x_42.x, x_42.y)));
  let x_46 : vec3<i32> = u_xlati13;
  u_xlati13 = vec3<i32>(x_45.x, x_45.y, x_46.z);
  let x_48 : vec3<i32> = u_xlati13;
  let x_52 : vec2<i32> = (vec2<i32>(x_48.x, x_48.y) + vec2<i32>(-2i, -2i));
  let x_53 : vec3<i32> = u_xlati13;
  u_xlati13 = vec3<i32>(x_52.x, x_52.y, x_53.z);
  let x_59 : vec3<i32> = u_xlati13;
  u_xlat13 = vec2<f32>(vec2<i32>(x_59.x, x_59.y));
  let x_62 : vec2<f32> = u_xlat13;
  let x_70 : vec4<f32> = x_66.InvLowResolution;
  u_xlat13 = (x_62 * vec2<f32>(x_70.x, x_70.y));
  let x_85 : vec2<f32> = u_xlat13;
  let x_86 : vec4<f32> = textureGather(0i, LoResAO1, samplerLoResAO1, x_85);
  u_xlat1 = x_86;
  let x_91 : vec2<f32> = u_xlat13;
  let x_92 : vec4<f32> = textureGather(1i, LoResAO1, samplerLoResAO1, x_91);
  u_xlat2 = vec4<f32>(x_92.z, x_92.x, x_92.w, x_92.y);
  let x_95 : vec4<f32> = u_xlat1;
  let x_96 : vec2<f32> = vec2<f32>(x_95.w, x_95.z);
  let x_97 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_96.x, x_97.y, x_96.y, x_97.w);
  let x_99 : vec4<f32> = u_xlat2;
  let x_100 : vec2<f32> = vec2<f32>(x_99.z, x_99.x);
  let x_101 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_101.x, x_100.x, x_101.z, x_100.y);
  let x_111 : i32 = u_xlati0.x;
  let x_114 : f32 = u_xlat3.x;
  TGSM1[x_111].value[0i] = bitcast<u32>(x_114);
  let x_119 : i32 = u_xlati0.x;
  let x_121 : f32 = u_xlat3.y;
  TGSM1[x_119].value[1i] = bitcast<u32>(x_121);
  let x_126 : i32 = u_xlati0.x;
  u_xlati39 = (x_126 + 1i);
  let x_128 : i32 = u_xlati39;
  let x_130 : f32 = u_xlat3.z;
  TGSM1[x_128].value[0i] = bitcast<u32>(x_130);
  let x_133 : i32 = u_xlati39;
  let x_136 : f32 = u_xlat3.w;
  TGSM1[x_133].value[1i] = bitcast<u32>(x_136);
  let x_141 : vec4<i32> = u_xlati0;
  u_xlati27 = (vec2<i32>(x_141.x, x_141.x) + vec2<i32>(16i, 17i));
  let x_147 : vec4<f32> = u_xlat1;
  let x_148 : vec2<f32> = vec2<f32>(x_147.x, x_147.y);
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_148.x, x_149.y, x_148.y, x_149.w);
  let x_152 : i32 = u_xlati27.x;
  let x_154 : f32 = u_xlat2.x;
  TGSM1[x_152].value[0i] = bitcast<u32>(x_154);
  let x_158 : i32 = u_xlati27.x;
  let x_160 : f32 = u_xlat2.y;
  TGSM1[x_158].value[1i] = bitcast<u32>(x_160);
  let x_164 : i32 = u_xlati27.y;
  let x_166 : f32 = u_xlat2.z;
  TGSM1[x_164].value[0i] = bitcast<u32>(x_166);
  let x_170 : i32 = u_xlati27.y;
  let x_172 : f32 = u_xlat2.w;
  TGSM1[x_170].value[1i] = bitcast<u32>(x_172);
  let x_180 : vec2<f32> = u_xlat13;
  let x_181 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, x_180);
  u_xlat2 = x_181;
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_184);
  let x_189 : vec2<f32> = u_xlat13;
  let x_190 : vec4<f32> = textureGather(1i, LoResDB, samplerLoResDB, x_189);
  u_xlat3 = x_190;
  let x_191 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / vec4<f32>(x_191.z, x_191.x, x_191.w, x_191.y));
  let x_195 : vec4<f32> = u_xlat2;
  let x_196 : vec2<f32> = vec2<f32>(x_195.w, x_195.z);
  let x_197 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_196.x, x_197.y, x_196.y, x_197.w);
  let x_199 : vec4<f32> = u_xlat3;
  let x_200 : vec2<f32> = vec2<f32>(x_199.z, x_199.x);
  let x_201 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_201.x, x_200.x, x_201.z, x_200.y);
  let x_208 : i32 = u_xlati0.x;
  let x_210 : f32 = u_xlat4.x;
  TGSM0[x_208].value[0i] = bitcast<u32>(x_210);
  let x_214 : i32 = u_xlati0.x;
  let x_216 : f32 = u_xlat4.y;
  TGSM0[x_214].value[1i] = bitcast<u32>(x_216);
  let x_219 : i32 = u_xlati39;
  let x_221 : f32 = u_xlat4.z;
  TGSM0[x_219].value[0i] = bitcast<u32>(x_221);
  let x_224 : i32 = u_xlati39;
  let x_226 : f32 = u_xlat4.w;
  TGSM0[x_224].value[1i] = bitcast<u32>(x_226);
  let x_229 : vec4<f32> = u_xlat2;
  let x_230 : vec2<f32> = vec2<f32>(x_229.x, x_229.y);
  let x_231 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_230.x, x_231.y, x_230.y, x_231.w);
  let x_234 : i32 = u_xlati27.x;
  let x_236 : f32 = u_xlat3.x;
  TGSM0[x_234].value[0i] = bitcast<u32>(x_236);
  let x_240 : i32 = u_xlati27.x;
  let x_242 : f32 = u_xlat3.y;
  TGSM0[x_240].value[1i] = bitcast<u32>(x_242);
  let x_246 : i32 = u_xlati27.y;
  let x_248 : f32 = u_xlat3.z;
  TGSM0[x_246].value[0i] = bitcast<u32>(x_248);
  let x_252 : i32 = u_xlati27.y;
  let x_254 : f32 = u_xlat3.w;
  TGSM0[x_252].value[1i] = bitcast<u32>(x_254);
  workgroupBarrier();
  let x_263 : u32 = gl_LocalInvocationIndex;
  let x_264 : u32 = gl_LocalInvocationIndex;
  let x_265 : u32 = gl_LocalInvocationIndex;
  let x_266 : u32 = gl_LocalInvocationIndex;
  let x_273 : vec4<bool> = (vec4<u32>(x_263, x_264, x_265, x_266) < vec4<u32>(39u, 45u, 0u, 0u));
  u_xlatb0 = vec2<bool>(x_273.x, x_273.y);
  let x_277 : bool = u_xlatb0.x;
  if (x_277) {
    let x_282 : u32 = gl_LocalInvocationIndex;
    u_xlatu0 = (x_282 / 3u);
    let x_285 : u32 = gl_LocalInvocationIndex;
    u_xlatu1 = (x_285 % 3u);
    let x_288 : u32 = u_xlatu1;
    u_xlati26 = (bitcast<i32>(x_288) * 3i);
    let x_292 : u32 = u_xlatu0;
    let x_295 : i32 = u_xlati26;
    u_xlati0.x = ((bitcast<i32>(x_292) * 16i) + x_295);
    let x_300 : i32 = u_xlati0.x;
    let x_302 : u32 = TGSM1[x_300].value[0i];
    let x_305 : i32 = u_xlati0.x;
    let x_307 : u32 = TGSM1[x_305].value[1i];
    u_xlat26 = vec2<f32>(bitcast<f32>(x_302), bitcast<f32>(x_307));
    let x_311 : vec4<i32> = u_xlati0;
    u_xlati1 = (vec4<i32>(x_311.x, x_311.x, x_311.x, x_311.x) + vec4<i32>(1i, 2i, 3i, 4i));
    let x_318 : i32 = u_xlati1.x;
    let x_320 : u32 = TGSM1[x_318].value[0i];
    let x_323 : i32 = u_xlati1.x;
    let x_325 : u32 = TGSM1[x_323].value[1i];
    let x_327 : vec2<f32> = vec2<f32>(bitcast<f32>(x_320), bitcast<f32>(x_325));
    let x_328 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_327.x, x_327.y, x_328.z, x_328.w);
    let x_332 : i32 = u_xlati1.y;
    let x_334 : u32 = TGSM1[x_332].value[0i];
    let x_337 : i32 = u_xlati1.y;
    let x_339 : u32 = TGSM1[x_337].value[1i];
    u_xlat28 = vec2<f32>(bitcast<f32>(x_334), bitcast<f32>(x_339));
    let x_343 : i32 = u_xlati1.z;
    let x_345 : u32 = TGSM1[x_343].value[0i];
    let x_348 : i32 = u_xlati1.z;
    let x_350 : u32 = TGSM1[x_348].value[1i];
    let x_352 : vec2<f32> = vec2<f32>(bitcast<f32>(x_345), bitcast<f32>(x_350));
    let x_353 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_353.z, x_353.w);
    let x_357 : i32 = u_xlati1.w;
    let x_359 : u32 = TGSM1[x_357].value[0i];
    let x_362 : i32 = u_xlati1.w;
    let x_364 : u32 = TGSM1[x_362].value[1i];
    u_xlat29 = vec2<f32>(bitcast<f32>(x_359), bitcast<f32>(x_364));
    let x_368 : vec4<i32> = u_xlati0;
    let x_373 : vec2<i32> = (vec2<i32>(x_368.x, x_368.x) + vec2<i32>(5i, 6i));
    let x_374 : vec4<i32> = u_xlati4;
    u_xlati4 = vec4<i32>(x_373.x, x_373.y, x_374.z, x_374.w);
    let x_378 : i32 = u_xlati4.x;
    let x_380 : u32 = TGSM1[x_378].value[0i];
    let x_383 : i32 = u_xlati4.x;
    let x_385 : u32 = TGSM1[x_383].value[1i];
    u_xlat30 = vec2<f32>(bitcast<f32>(x_380), bitcast<f32>(x_385));
    let x_390 : i32 = u_xlati4.y;
    let x_392 : u32 = TGSM1[x_390].value[0i];
    let x_395 : i32 = u_xlati4.y;
    let x_397 : u32 = TGSM1[x_395].value[1i];
    let x_399 : vec2<f32> = vec2<f32>(bitcast<f32>(x_392), bitcast<f32>(x_397));
    let x_400 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
    let x_404 : i32 = u_xlati0.x;
    let x_406 : u32 = TGSM0[x_404].value[0i];
    let x_409 : i32 = u_xlati0.x;
    let x_411 : u32 = TGSM0[x_409].value[1i];
    u_xlat31 = vec2<f32>(bitcast<f32>(x_406), bitcast<f32>(x_411));
    let x_416 : i32 = u_xlati1.x;
    let x_418 : u32 = TGSM0[x_416].value[0i];
    let x_421 : i32 = u_xlati1.x;
    let x_423 : u32 = TGSM0[x_421].value[1i];
    let x_425 : vec2<f32> = vec2<f32>(bitcast<f32>(x_418), bitcast<f32>(x_423));
    let x_426 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
    let x_430 : i32 = u_xlati1.y;
    let x_432 : u32 = TGSM0[x_430].value[0i];
    let x_435 : i32 = u_xlati1.y;
    let x_437 : u32 = TGSM0[x_435].value[1i];
    u_xlat32 = vec2<f32>(bitcast<f32>(x_432), bitcast<f32>(x_437));
    let x_442 : i32 = u_xlati1.z;
    let x_444 : u32 = TGSM0[x_442].value[0i];
    let x_447 : i32 = u_xlati1.z;
    let x_449 : u32 = TGSM0[x_447].value[1i];
    let x_451 : vec2<f32> = vec2<f32>(bitcast<f32>(x_444), bitcast<f32>(x_449));
    let x_452 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_451.x, x_451.y, x_452.z, x_452.w);
    let x_456 : i32 = u_xlati1.w;
    let x_458 : u32 = TGSM0[x_456].value[0i];
    let x_461 : i32 = u_xlati1.w;
    let x_463 : u32 = TGSM0[x_461].value[1i];
    u_xlat27 = vec2<f32>(bitcast<f32>(x_458), bitcast<f32>(x_463));
    let x_468 : i32 = u_xlati4.x;
    let x_470 : u32 = TGSM0[x_468].value[0i];
    let x_473 : i32 = u_xlati4.x;
    let x_475 : u32 = TGSM0[x_473].value[1i];
    u_xlat33 = vec2<f32>(bitcast<f32>(x_470), bitcast<f32>(x_475));
    let x_479 : i32 = u_xlati4.y;
    let x_481 : u32 = TGSM0[x_479].value[0i];
    let x_484 : i32 = u_xlati4.y;
    let x_486 : u32 = TGSM0[x_484].value[1i];
    let x_488 : vec2<f32> = vec2<f32>(bitcast<f32>(x_481), bitcast<f32>(x_486));
    let x_489 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_488.x, x_488.y, x_489.z, x_489.w);
    let x_491 : vec2<f32> = u_xlat31;
    let x_493 : vec4<f32> = u_xlat6;
    u_xlat31 = (-(x_491) + vec2<f32>(x_493.x, x_493.y));
    let x_496 : vec4<f32> = u_xlat6;
    let x_499 : vec2<f32> = u_xlat32;
    let x_500 : vec2<f32> = (-(vec2<f32>(x_496.x, x_496.y)) + x_499);
    let x_501 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
    let x_503 : vec2<f32> = u_xlat32;
    let x_505 : vec4<f32> = u_xlat7;
    u_xlat32 = (-(x_503) + vec2<f32>(x_505.x, x_505.y));
    let x_508 : vec4<f32> = u_xlat7;
    let x_511 : vec2<f32> = u_xlat27;
    let x_512 : vec2<f32> = (-(vec2<f32>(x_508.x, x_508.y)) + x_511);
    let x_513 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_512.x, x_512.y, x_513.z, x_513.w);
    let x_515 : vec2<f32> = u_xlat27;
    let x_517 : vec2<f32> = u_xlat33;
    u_xlat27 = (-(x_515) + x_517);
    let x_519 : vec2<f32> = u_xlat33;
    let x_521 : vec4<f32> = u_xlat4;
    let x_523 : vec2<f32> = (-(x_519) + vec2<f32>(x_521.x, x_521.y));
    let x_524 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
    let x_526 : vec2<f32> = u_xlat31;
    let x_527 : vec2<f32> = u_xlat31;
    let x_530 : vec4<f32> = x_66.AdditionalParams;
    u_xlat33 = ((x_526 * x_527) + vec2<f32>(x_530.y, x_530.y));
    let x_534 : vec4<f32> = u_xlat6;
    let x_536 : vec4<f32> = u_xlat6;
    let x_540 : vec4<f32> = x_66.AdditionalParams;
    let x_542 : vec2<f32> = ((vec2<f32>(x_534.x, x_534.y) * vec2<f32>(x_536.x, x_536.y)) + vec2<f32>(x_540.y, x_540.y));
    let x_543 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
    let x_546 : vec2<f32> = u_xlat32;
    let x_547 : vec2<f32> = u_xlat32;
    let x_550 : vec4<f32> = x_66.AdditionalParams;
    u_xlat34 = ((x_546 * x_547) + vec2<f32>(x_550.y, x_550.y));
    let x_554 : vec4<f32> = u_xlat7;
    let x_556 : vec4<f32> = u_xlat7;
    let x_560 : vec4<f32> = x_66.AdditionalParams;
    let x_562 : vec2<f32> = ((vec2<f32>(x_554.x, x_554.y) * vec2<f32>(x_556.x, x_556.y)) + vec2<f32>(x_560.y, x_560.y));
    let x_563 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_562.x, x_562.y, x_563.z, x_563.w);
    let x_566 : vec2<f32> = u_xlat27;
    let x_567 : vec2<f32> = u_xlat27;
    let x_570 : vec4<f32> = x_66.AdditionalParams;
    u_xlat35 = ((x_566 * x_567) + vec2<f32>(x_570.y, x_570.y));
    let x_574 : vec4<f32> = u_xlat4;
    let x_576 : vec4<f32> = u_xlat4;
    let x_580 : vec4<f32> = x_66.AdditionalParams;
    let x_582 : vec2<f32> = ((vec2<f32>(x_574.x, x_574.y) * vec2<f32>(x_576.x, x_576.y)) + vec2<f32>(x_580.y, x_580.y));
    let x_583 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
    let x_585 : vec2<f32> = u_xlat31;
    let x_586 : vec4<f32> = u_xlat6;
    let x_590 : vec4<f32> = x_66.AdditionalParams;
    u_xlat31 = ((x_585 * vec2<f32>(x_586.x, x_586.y)) + vec2<f32>(x_590.y, x_590.y));
    let x_593 : vec2<f32> = u_xlat31;
    let x_594 : vec2<f32> = u_xlat31;
    u_xlat31 = (x_593 * x_594);
    let x_596 : vec2<f32> = u_xlat33;
    let x_597 : vec4<f32> = u_xlat8;
    u_xlat33 = (x_596 * vec2<f32>(x_597.x, x_597.y));
    let x_600 : vec2<f32> = u_xlat33;
    let x_602 : vec4<f32> = x_66.AdditionalParams;
    u_xlat33 = (x_600 * vec2<f32>(x_602.z, x_602.z));
    let x_605 : vec4<f32> = u_xlat6;
    let x_607 : vec2<f32> = u_xlat32;
    let x_610 : vec4<f32> = x_66.AdditionalParams;
    let x_612 : vec2<f32> = ((vec2<f32>(x_605.x, x_605.y) * x_607) + vec2<f32>(x_610.y, x_610.y));
    let x_613 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
    let x_615 : vec2<f32> = u_xlat34;
    let x_616 : vec4<f32> = u_xlat8;
    let x_618 : vec2<f32> = (x_615 * vec2<f32>(x_616.x, x_616.y));
    let x_619 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
    let x_621 : vec2<f32> = u_xlat32;
    let x_622 : vec4<f32> = u_xlat7;
    let x_626 : vec4<f32> = x_66.AdditionalParams;
    let x_628 : vec2<f32> = ((x_621 * vec2<f32>(x_622.x, x_622.y)) + vec2<f32>(x_626.y, x_626.y));
    let x_629 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_629.x, x_629.y, x_628.x, x_628.y);
    let x_631 : vec4<f32> = u_xlat6;
    let x_632 : vec4<f32> = u_xlat6;
    u_xlat6 = (x_631 * x_632);
    let x_634 : vec2<f32> = u_xlat34;
    let x_635 : vec4<f32> = u_xlat9;
    let x_637 : vec2<f32> = (x_634 * vec2<f32>(x_635.x, x_635.y));
    let x_638 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_638.x, x_638.y, x_637.x, x_637.y);
    let x_640 : vec4<f32> = u_xlat8;
    let x_642 : vec4<f32> = x_66.AdditionalParams;
    u_xlat8 = (x_640 * vec4<f32>(x_642.z, x_642.z, x_642.z, x_642.z));
    let x_645 : vec4<f32> = u_xlat7;
    let x_647 : vec2<f32> = u_xlat27;
    let x_650 : vec4<f32> = x_66.AdditionalParams;
    let x_652 : vec2<f32> = ((vec2<f32>(x_645.x, x_645.y) * x_647) + vec2<f32>(x_650.y, x_650.y));
    let x_653 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
    let x_655 : vec4<f32> = u_xlat7;
    let x_657 : vec4<f32> = u_xlat7;
    let x_659 : vec2<f32> = (vec2<f32>(x_655.x, x_655.y) * vec2<f32>(x_657.x, x_657.y));
    let x_660 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
    let x_662 : vec2<f32> = u_xlat35;
    let x_663 : vec4<f32> = u_xlat9;
    let x_665 : vec2<f32> = (x_662 * vec2<f32>(x_663.x, x_663.y));
    let x_666 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
    let x_668 : vec4<f32> = u_xlat9;
    let x_671 : vec4<f32> = x_66.AdditionalParams;
    let x_673 : vec2<f32> = (vec2<f32>(x_668.x, x_668.y) * vec2<f32>(x_671.z, x_671.z));
    let x_674 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
    let x_676 : vec2<f32> = u_xlat27;
    let x_677 : vec4<f32> = u_xlat4;
    let x_681 : vec4<f32> = x_66.AdditionalParams;
    u_xlat27 = ((x_676 * vec2<f32>(x_677.x, x_677.y)) + vec2<f32>(x_681.y, x_681.y));
    let x_684 : vec2<f32> = u_xlat27;
    let x_685 : vec2<f32> = u_xlat27;
    u_xlat27 = (x_684 * x_685);
    let x_687 : vec2<f32> = u_xlat35;
    let x_688 : vec4<f32> = u_xlat10;
    let x_690 : vec2<f32> = (x_687 * vec2<f32>(x_688.x, x_688.y));
    let x_691 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_690.x, x_690.y, x_691.z, x_691.w);
    let x_693 : vec4<f32> = u_xlat4;
    let x_696 : vec4<f32> = x_66.AdditionalParams;
    let x_698 : vec2<f32> = (vec2<f32>(x_693.x, x_693.y) * vec2<f32>(x_696.z, x_696.z));
    let x_699 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_698.x, x_698.y, x_699.z, x_699.w);
    let x_702 : vec2<f32> = u_xlat33;
    let x_704 : vec2<f32> = u_xlat31;
    let x_706 : vec4<bool> = (vec4<f32>(x_702.x, x_702.y, x_702.x, x_702.y) < vec4<f32>(x_704.x, x_704.y, x_704.x, x_704.y));
    u_xlatb31 = vec2<bool>(x_706.x, x_706.y);
    let x_710 : vec4<f32> = u_xlat8;
    let x_711 : vec4<f32> = u_xlat6;
    u_xlatb6 = (x_710 < x_711);
    let x_714 : vec4<f32> = u_xlat9;
    let x_716 : vec4<f32> = u_xlat7;
    let x_718 : vec4<bool> = (vec4<f32>(x_714.x, x_714.y, x_714.x, x_714.x) < vec4<f32>(x_716.x, x_716.y, x_716.x, x_716.x));
    u_xlatb7 = vec2<bool>(x_718.x, x_718.y);
    let x_721 : vec4<f32> = u_xlat4;
    let x_723 : vec2<f32> = u_xlat27;
    let x_725 : vec4<bool> = (vec4<f32>(x_721.x, x_721.y, x_721.x, x_721.y) < vec4<f32>(x_723.x, x_723.y, x_723.x, x_723.y));
    u_xlatb27 = vec2<bool>(x_725.x, x_725.y);
    let x_727 : vec2<bool> = u_xlatb31;
    let x_734 : vec4<bool> = u_xlatb6;
    let x_740 : vec2<i32> = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_727) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_734.x, x_734.y)) * vec2<u32>(4294967295u, 4294967295u))));
    let x_741 : vec4<i32> = u_xlati4;
    u_xlati4 = vec4<i32>(x_740.x, x_740.y, x_741.z, x_741.w);
    let x_743 : vec4<i32> = u_xlati4;
    let x_747 : vec2<i32> = bitcast<vec2<i32>>((bitcast<vec2<u32>>(vec2<i32>(x_743.x, x_743.y)) & vec2<u32>(1u, 1u)));
    let x_748 : vec4<i32> = u_xlati4;
    u_xlati4 = vec4<i32>(x_747.x, x_747.y, x_748.z, x_748.w);
    let x_751 : i32 = u_xlati4.x;
    if ((x_751 != 0i)) {
      let x_757 : f32 = u_xlat2.x;
      x_753 = x_757;
    } else {
      let x_760 : f32 = u_xlat28.x;
      x_753 = x_760;
    }
    let x_761 : f32 = x_753;
    u_xlat4.x = x_761;
    let x_764 : i32 = u_xlati4.y;
    if ((x_764 != 0i)) {
      let x_770 : f32 = u_xlat2.y;
      x_766 = x_770;
    } else {
      let x_773 : f32 = u_xlat28.y;
      x_766 = x_773;
    }
    let x_774 : f32 = x_766;
    u_xlat4.y = x_774;
    let x_777 : vec2<f32> = u_xlat26;
    hlslcc_movcTemp = x_777;
    let x_779 : bool = u_xlatb31.x;
    if (x_779) {
      let x_784 : f32 = u_xlat26.x;
      x_780 = x_784;
    } else {
      let x_787 : f32 = u_xlat4.x;
      x_780 = x_787;
    }
    let x_788 : f32 = x_780;
    hlslcc_movcTemp.x = x_788;
    let x_791 : bool = u_xlatb31.y;
    if (x_791) {
      let x_796 : f32 = u_xlat26.y;
      x_792 = x_796;
    } else {
      let x_799 : f32 = u_xlat4.y;
      x_792 = x_799;
    }
    let x_800 : f32 = x_792;
    hlslcc_movcTemp.y = x_800;
    let x_802 : vec2<f32> = hlslcc_movcTemp;
    u_xlat26 = x_802;
    let x_804 : vec4<bool> = u_xlatb6;
    let x_809 : vec4<bool> = u_xlatb6;
    u_xlati31 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_804.x, x_804.y)) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_809.z, x_809.w)) * vec2<u32>(4294967295u, 4294967295u))));
    let x_816 : vec2<i32> = u_xlati31;
    u_xlati31 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_816) & vec2<u32>(1u, 1u)));
    let x_822 : i32 = u_xlati31.x;
    if ((x_822 != 0i)) {
      let x_828 : f32 = u_xlat28.x;
      x_824 = x_828;
    } else {
      let x_831 : f32 = u_xlat3.x;
      x_824 = x_831;
    }
    let x_832 : f32 = x_824;
    u_xlat12.x = x_832;
    let x_835 : i32 = u_xlati31.y;
    if ((x_835 != 0i)) {
      let x_841 : f32 = u_xlat28.y;
      x_837 = x_841;
    } else {
      let x_844 : f32 = u_xlat3.y;
      x_837 = x_844;
    }
    let x_845 : f32 = x_837;
    u_xlat12.y = x_845;
    let x_848 : i32 = u_xlati31.x;
    if ((x_848 != 0i)) {
      let x_854 : f32 = u_xlat3.x;
      x_850 = x_854;
    } else {
      let x_857 : f32 = u_xlat28.x;
      x_850 = x_857;
    }
    let x_858 : f32 = x_850;
    u_xlat9.x = x_858;
    let x_861 : i32 = u_xlati31.y;
    if ((x_861 != 0i)) {
      let x_867 : f32 = u_xlat3.y;
      x_863 = x_867;
    } else {
      let x_870 : f32 = u_xlat28.y;
      x_863 = x_870;
    }
    let x_871 : f32 = x_863;
    u_xlat9.y = x_871;
    let x_873 : vec2<f32> = u_xlat12;
    let x_874 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
    let x_877 : bool = u_xlatb6.z;
    if (x_877) {
      let x_882 : f32 = u_xlat29.x;
      x_878 = x_882;
    } else {
      let x_885 : f32 = u_xlat9.x;
      x_878 = x_885;
    }
    let x_886 : f32 = x_878;
    u_xlat31.x = x_886;
    let x_889 : bool = u_xlatb6.w;
    if (x_889) {
      let x_894 : f32 = u_xlat29.y;
      x_890 = x_894;
    } else {
      let x_897 : f32 = u_xlat9.y;
      x_890 = x_897;
    }
    let x_898 : f32 = x_890;
    u_xlat31.y = x_898;
    let x_900 : vec2<f32> = u_xlat26;
    let x_901 : vec2<f32> = u_xlat31;
    u_xlat26 = (x_900 + x_901);
    let x_903 : vec2<f32> = u_xlat26;
    let x_907 : vec4<f32> = u_xlat4;
    u_xlat26 = ((x_903 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_907.x, x_907.y));
    let x_910 : vec2<f32> = u_xlat28;
    let x_911 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_910 + x_911);
    let x_913 : vec4<f32> = u_xlat9;
    let x_915 : vec2<f32> = u_xlat26;
    u_xlat26 = (vec2<f32>(x_913.x, x_913.y) + x_915);
    let x_917 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_917 * vec2<f32>(0.25f, 0.25f));
    let x_926 : i32 = u_xlati0.x;
    let x_928 : f32 = u_xlat26.x;
    TGSM2[x_926].value[0i] = bitcast<u32>(x_928);
    let x_932 : i32 = u_xlati0.x;
    let x_934 : f32 = u_xlat26.y;
    TGSM2[x_932].value[1i] = bitcast<u32>(x_934);
    let x_938 : bool = u_xlatb6.x;
    if (x_938) {
      let x_943 : f32 = u_xlat2.x;
      x_939 = x_943;
    } else {
      let x_946 : f32 = u_xlat8.x;
      x_939 = x_946;
    }
    let x_947 : f32 = x_939;
    u_xlat26.x = x_947;
    let x_950 : bool = u_xlatb6.y;
    if (x_950) {
      let x_955 : f32 = u_xlat2.y;
      x_951 = x_955;
    } else {
      let x_958 : f32 = u_xlat8.y;
      x_951 = x_958;
    }
    let x_959 : f32 = x_951;
    u_xlat26.y = x_959;
    let x_962 : vec4<bool> = u_xlatb6;
    let x_967 : vec2<bool> = u_xlatb7;
    let x_972 : vec2<i32> = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_962.z, x_962.w)) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_967) * vec2<u32>(4294967295u, 4294967295u))));
    let x_973 : vec4<i32> = u_xlati2;
    u_xlati2 = vec4<i32>(x_972.x, x_972.y, x_973.z, x_973.w);
    let x_975 : vec4<i32> = u_xlati2;
    let x_979 : vec2<i32> = bitcast<vec2<i32>>((bitcast<vec2<u32>>(vec2<i32>(x_975.x, x_975.y)) & vec2<u32>(1u, 1u)));
    let x_980 : vec4<i32> = u_xlati2;
    u_xlati2 = vec4<i32>(x_979.x, x_979.y, x_980.z, x_980.w);
    let x_983 : i32 = u_xlati2.x;
    if ((x_983 != 0i)) {
      let x_989 : f32 = u_xlat3.x;
      x_985 = x_989;
    } else {
      let x_992 : f32 = u_xlat29.x;
      x_985 = x_992;
    }
    let x_993 : f32 = x_985;
    u_xlat12.x = x_993;
    let x_996 : i32 = u_xlati2.y;
    if ((x_996 != 0i)) {
      let x_1002 : f32 = u_xlat3.y;
      x_998 = x_1002;
    } else {
      let x_1005 : f32 = u_xlat29.y;
      x_998 = x_1005;
    }
    let x_1006 : f32 = x_998;
    u_xlat12.y = x_1006;
    let x_1009 : i32 = u_xlati2.x;
    if ((x_1009 != 0i)) {
      let x_1015 : f32 = u_xlat29.x;
      x_1011 = x_1015;
    } else {
      let x_1018 : f32 = u_xlat3.x;
      x_1011 = x_1018;
    }
    let x_1019 : f32 = x_1011;
    u_xlat4.x = x_1019;
    let x_1022 : i32 = u_xlati2.y;
    if ((x_1022 != 0i)) {
      let x_1028 : f32 = u_xlat29.y;
      x_1024 = x_1028;
    } else {
      let x_1031 : f32 = u_xlat3.y;
      x_1024 = x_1031;
    }
    let x_1032 : f32 = x_1024;
    u_xlat4.y = x_1032;
    let x_1034 : vec2<f32> = u_xlat12;
    let x_1035 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1034.x, x_1034.y, x_1035.z, x_1035.w);
    let x_1038 : bool = u_xlatb7.x;
    if (x_1038) {
      let x_1043 : f32 = u_xlat30.x;
      x_1039 = x_1043;
    } else {
      let x_1046 : f32 = u_xlat4.x;
      x_1039 = x_1046;
    }
    let x_1047 : f32 = x_1039;
    u_xlat31.x = x_1047;
    let x_1050 : bool = u_xlatb7.y;
    if (x_1050) {
      let x_1055 : f32 = u_xlat30.y;
      x_1051 = x_1055;
    } else {
      let x_1058 : f32 = u_xlat4.y;
      x_1051 = x_1058;
    }
    let x_1059 : f32 = x_1051;
    u_xlat31.y = x_1059;
    let x_1061 : vec2<f32> = u_xlat26;
    let x_1062 : vec2<f32> = u_xlat31;
    u_xlat26 = (x_1061 + x_1062);
    let x_1064 : vec2<f32> = u_xlat26;
    let x_1066 : vec4<f32> = u_xlat8;
    u_xlat26 = ((x_1064 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1066.x, x_1066.y));
    let x_1069 : vec4<f32> = u_xlat3;
    let x_1071 : vec2<f32> = u_xlat26;
    u_xlat26 = (vec2<f32>(x_1069.x, x_1069.y) + x_1071);
    let x_1073 : vec4<f32> = u_xlat4;
    let x_1075 : vec2<f32> = u_xlat26;
    u_xlat26 = (vec2<f32>(x_1073.x, x_1073.y) + x_1075);
    let x_1077 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1077 * vec2<f32>(0.25f, 0.25f));
    let x_1080 : i32 = u_xlati1.x;
    let x_1082 : f32 = u_xlat26.x;
    TGSM2[x_1080].value[0i] = bitcast<u32>(x_1082);
    let x_1086 : i32 = u_xlati1.x;
    let x_1088 : f32 = u_xlat26.y;
    TGSM2[x_1086].value[1i] = bitcast<u32>(x_1088);
    let x_1092 : bool = u_xlatb6.z;
    if (x_1092) {
      let x_1097 : f32 = u_xlat28.x;
      x_1093 = x_1097;
    } else {
      let x_1100 : f32 = u_xlat2.x;
      x_1093 = x_1100;
    }
    let x_1101 : f32 = x_1093;
    u_xlat26.x = x_1101;
    let x_1104 : bool = u_xlatb6.w;
    if (x_1104) {
      let x_1109 : f32 = u_xlat28.y;
      x_1105 = x_1109;
    } else {
      let x_1112 : f32 = u_xlat2.y;
      x_1105 = x_1112;
    }
    let x_1113 : f32 = x_1105;
    u_xlat26.y = x_1113;
    let x_1116 : vec2<bool> = u_xlatb7;
    let x_1120 : vec2<bool> = u_xlatb27;
    u_xlati28 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1116) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1120) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1126 : vec2<i32> = u_xlati28;
    u_xlati28 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1126) & vec2<u32>(1u, 1u)));
    let x_1131 : i32 = u_xlati28.x;
    if ((x_1131 != 0i)) {
      let x_1137 : f32 = u_xlat30.x;
      x_1133 = x_1137;
    } else {
      let x_1140 : f32 = u_xlat29.x;
      x_1133 = x_1140;
    }
    let x_1141 : f32 = x_1133;
    u_xlat28.x = x_1141;
    let x_1144 : i32 = u_xlati28.y;
    if ((x_1144 != 0i)) {
      let x_1150 : f32 = u_xlat30.y;
      x_1146 = x_1150;
    } else {
      let x_1153 : f32 = u_xlat29.y;
      x_1146 = x_1153;
    }
    let x_1154 : f32 = x_1146;
    u_xlat28.y = x_1154;
    let x_1157 : bool = u_xlatb27.x;
    if (x_1157) {
      let x_1162 : f32 = u_xlat5.x;
      x_1158 = x_1162;
    } else {
      let x_1165 : f32 = u_xlat28.x;
      x_1158 = x_1165;
    }
    let x_1166 : f32 = x_1158;
    u_xlat1.x = x_1166;
    let x_1169 : bool = u_xlatb27.y;
    if (x_1169) {
      let x_1174 : f32 = u_xlat5.y;
      x_1170 = x_1174;
    } else {
      let x_1177 : f32 = u_xlat28.y;
      x_1170 = x_1177;
    }
    let x_1178 : f32 = x_1170;
    u_xlat1.z = x_1178;
    let x_1180 : vec2<f32> = u_xlat26;
    let x_1181 : vec4<f32> = u_xlat1;
    u_xlat26 = (x_1180 + vec2<f32>(x_1181.x, x_1181.z));
    let x_1184 : vec2<f32> = u_xlat26;
    let x_1186 : vec4<f32> = u_xlat2;
    u_xlat26 = ((x_1184 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1186.x, x_1186.y));
    let x_1189 : vec2<f32> = u_xlat29;
    let x_1190 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1189 + x_1190);
    let x_1192 : vec2<f32> = u_xlat28;
    let x_1193 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1192 + x_1193);
    let x_1195 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1195 * vec2<f32>(0.25f, 0.25f));
    let x_1198 : i32 = u_xlati1.y;
    let x_1200 : f32 = u_xlat26.x;
    TGSM2[x_1198].value[0i] = bitcast<u32>(x_1200);
    let x_1204 : i32 = u_xlati1.y;
    let x_1206 : f32 = u_xlat26.y;
    TGSM2[x_1204].value[1i] = bitcast<u32>(x_1206);
  }
  workgroupBarrier();
  let x_1210 : bool = u_xlatb0.y;
  if (x_1210) {
    let x_1213 : u32 = gl_LocalInvocationIndex;
    u_xlatu0 = (x_1213 / 9u);
    let x_1216 : u32 = gl_LocalInvocationIndex;
    u_xlatu1 = (x_1216 % 9u);
    let x_1218 : u32 = u_xlatu0;
    let x_1221 : u32 = u_xlatu1;
    u_xlati0.x = ((bitcast<i32>(x_1218) * 32i) + bitcast<i32>(x_1221));
    let x_1226 : i32 = u_xlati0.x;
    let x_1228 : u32 = TGSM2[x_1226].value[0i];
    let x_1231 : i32 = u_xlati0.x;
    let x_1233 : u32 = TGSM2[x_1231].value[1i];
    u_xlat13 = vec2<f32>(bitcast<f32>(x_1228), bitcast<f32>(x_1233));
    let x_1237 : i32 = u_xlati0.x;
    u_xlati39 = (x_1237 + 16i);
    let x_1239 : i32 = u_xlati39;
    let x_1241 : u32 = TGSM2[x_1239].value[0i];
    let x_1243 : i32 = u_xlati39;
    let x_1245 : u32 = TGSM2[x_1243].value[1i];
    let x_1247 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1241), bitcast<f32>(x_1245));
    let x_1248 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1247.x, x_1247.y, x_1248.z, x_1248.w);
    let x_1250 : vec4<i32> = u_xlati0;
    u_xlati2 = (vec4<i32>(x_1250.x, x_1250.x, x_1250.x, x_1250.x) + vec4<i32>(32i, 48i, 64i, 80i));
    let x_1258 : i32 = u_xlati2.x;
    let x_1260 : u32 = TGSM2[x_1258].value[0i];
    let x_1263 : i32 = u_xlati2.x;
    let x_1265 : u32 = TGSM2[x_1263].value[1i];
    u_xlat27 = vec2<f32>(bitcast<f32>(x_1260), bitcast<f32>(x_1265));
    let x_1269 : i32 = u_xlati2.y;
    let x_1271 : u32 = TGSM2[x_1269].value[0i];
    let x_1274 : i32 = u_xlati2.y;
    let x_1276 : u32 = TGSM2[x_1274].value[1i];
    let x_1278 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1271), bitcast<f32>(x_1276));
    let x_1279 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1278.x, x_1278.y, x_1279.z, x_1279.w);
    let x_1282 : i32 = u_xlati2.z;
    let x_1284 : u32 = TGSM2[x_1282].value[0i];
    let x_1287 : i32 = u_xlati2.z;
    let x_1289 : u32 = TGSM2[x_1287].value[1i];
    let x_1291 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1284), bitcast<f32>(x_1289));
    let x_1292 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1291.x, x_1291.y, x_1292.z, x_1292.w);
    let x_1295 : i32 = u_xlati2.w;
    let x_1297 : u32 = TGSM2[x_1295].value[0i];
    let x_1300 : i32 = u_xlati2.w;
    let x_1302 : u32 = TGSM2[x_1300].value[1i];
    u_xlat28 = vec2<f32>(bitcast<f32>(x_1297), bitcast<f32>(x_1302));
    let x_1305 : vec4<i32> = u_xlati0;
    u_xlati4 = (vec4<i32>(x_1305.x, x_1305.x, x_1305.x, x_1305.x) + vec4<i32>(2i, 18i, 34i, 50i));
    let x_1313 : i32 = u_xlati4.x;
    let x_1315 : u32 = TGSM0[x_1313].value[0i];
    let x_1318 : i32 = u_xlati4.x;
    let x_1320 : u32 = TGSM0[x_1318].value[1i];
    u_xlat29 = vec2<f32>(bitcast<f32>(x_1315), bitcast<f32>(x_1320));
    let x_1324 : i32 = u_xlati4.y;
    let x_1326 : u32 = TGSM0[x_1324].value[0i];
    let x_1329 : i32 = u_xlati4.y;
    let x_1331 : u32 = TGSM0[x_1329].value[1i];
    let x_1333 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1326), bitcast<f32>(x_1331));
    let x_1334 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1333.x, x_1333.y, x_1334.z, x_1334.w);
    let x_1337 : i32 = u_xlati4.z;
    let x_1339 : u32 = TGSM0[x_1337].value[0i];
    let x_1342 : i32 = u_xlati4.z;
    let x_1344 : u32 = TGSM0[x_1342].value[1i];
    let x_1346 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1339), bitcast<f32>(x_1344));
    let x_1347 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1346.x, x_1346.y, x_1347.z, x_1347.w);
    let x_1350 : i32 = u_xlati4.w;
    let x_1352 : u32 = TGSM0[x_1350].value[0i];
    let x_1355 : i32 = u_xlati4.w;
    let x_1357 : u32 = TGSM0[x_1355].value[1i];
    u_xlat30 = vec2<f32>(bitcast<f32>(x_1352), bitcast<f32>(x_1357));
    let x_1360 : vec4<i32> = u_xlati0;
    u_xlati31 = (vec2<i32>(x_1360.x, x_1360.x) + vec2<i32>(66i, 82i));
    let x_1367 : i32 = u_xlati31.x;
    let x_1369 : u32 = TGSM0[x_1367].value[0i];
    let x_1372 : i32 = u_xlati31.x;
    let x_1374 : u32 = TGSM0[x_1372].value[1i];
    let x_1376 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1369), bitcast<f32>(x_1374));
    let x_1377 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1376.x, x_1376.y, x_1377.z, x_1377.w);
    let x_1380 : i32 = u_xlati31.y;
    let x_1382 : u32 = TGSM0[x_1380].value[0i];
    let x_1385 : i32 = u_xlati31.y;
    let x_1387 : u32 = TGSM0[x_1385].value[1i];
    u_xlat31 = vec2<f32>(bitcast<f32>(x_1382), bitcast<f32>(x_1387));
    let x_1390 : vec2<f32> = u_xlat29;
    let x_1392 : vec4<f32> = u_xlat4;
    u_xlat29 = (-(x_1390) + vec2<f32>(x_1392.x, x_1392.y));
    let x_1395 : vec4<f32> = u_xlat4;
    let x_1398 : vec4<f32> = u_xlat5;
    let x_1400 : vec2<f32> = (-(vec2<f32>(x_1395.x, x_1395.y)) + vec2<f32>(x_1398.x, x_1398.y));
    let x_1401 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1400.x, x_1400.y, x_1401.z, x_1401.w);
    let x_1403 : vec4<f32> = u_xlat5;
    let x_1406 : vec2<f32> = u_xlat30;
    let x_1407 : vec2<f32> = (-(vec2<f32>(x_1403.x, x_1403.y)) + x_1406);
    let x_1408 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1407.x, x_1407.y, x_1408.z, x_1408.w);
    let x_1410 : vec2<f32> = u_xlat30;
    let x_1412 : vec4<f32> = u_xlat6;
    u_xlat30 = (-(x_1410) + vec2<f32>(x_1412.x, x_1412.y));
    let x_1415 : vec4<f32> = u_xlat6;
    let x_1418 : vec2<f32> = u_xlat31;
    u_xlat31 = (-(vec2<f32>(x_1415.x, x_1415.y)) + x_1418);
    let x_1420 : vec2<f32> = u_xlat29;
    let x_1421 : vec2<f32> = u_xlat29;
    let x_1424 : vec4<f32> = x_66.AdditionalParams;
    let x_1426 : vec2<f32> = ((x_1420 * x_1421) + vec2<f32>(x_1424.y, x_1424.y));
    let x_1427 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1426.x, x_1426.y, x_1427.z, x_1427.w);
    let x_1429 : vec4<f32> = u_xlat4;
    let x_1431 : vec4<f32> = u_xlat4;
    let x_1435 : vec4<f32> = x_66.AdditionalParams;
    u_xlat32 = ((vec2<f32>(x_1429.x, x_1429.y) * vec2<f32>(x_1431.x, x_1431.y)) + vec2<f32>(x_1435.y, x_1435.y));
    let x_1438 : vec4<f32> = u_xlat5;
    let x_1440 : vec4<f32> = u_xlat5;
    let x_1444 : vec4<f32> = x_66.AdditionalParams;
    let x_1446 : vec2<f32> = ((vec2<f32>(x_1438.x, x_1438.y) * vec2<f32>(x_1440.x, x_1440.y)) + vec2<f32>(x_1444.y, x_1444.y));
    let x_1447 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1446.x, x_1446.y, x_1447.z, x_1447.w);
    let x_1449 : vec2<f32> = u_xlat30;
    let x_1450 : vec2<f32> = u_xlat30;
    let x_1453 : vec4<f32> = x_66.AdditionalParams;
    u_xlat33 = ((x_1449 * x_1450) + vec2<f32>(x_1453.y, x_1453.y));
    let x_1456 : vec2<f32> = u_xlat31;
    let x_1457 : vec2<f32> = u_xlat31;
    let x_1460 : vec4<f32> = x_66.AdditionalParams;
    let x_1462 : vec2<f32> = ((x_1456 * x_1457) + vec2<f32>(x_1460.y, x_1460.y));
    let x_1463 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1462.x, x_1462.y, x_1463.z, x_1463.w);
    let x_1465 : vec2<f32> = u_xlat29;
    let x_1466 : vec4<f32> = u_xlat4;
    let x_1470 : vec4<f32> = x_66.AdditionalParams;
    u_xlat29 = ((x_1465 * vec2<f32>(x_1466.x, x_1466.y)) + vec2<f32>(x_1470.y, x_1470.y));
    let x_1473 : vec2<f32> = u_xlat29;
    let x_1474 : vec2<f32> = u_xlat29;
    u_xlat29 = (x_1473 * x_1474);
    let x_1476 : vec2<f32> = u_xlat32;
    let x_1477 : vec4<f32> = u_xlat6;
    let x_1479 : vec2<f32> = (x_1476 * vec2<f32>(x_1477.x, x_1477.y));
    let x_1480 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1479.x, x_1479.y, x_1480.z, x_1480.w);
    let x_1482 : vec4<f32> = u_xlat4;
    let x_1484 : vec4<f32> = u_xlat5;
    let x_1488 : vec4<f32> = x_66.AdditionalParams;
    let x_1490 : vec2<f32> = ((vec2<f32>(x_1482.x, x_1482.y) * vec2<f32>(x_1484.x, x_1484.y)) + vec2<f32>(x_1488.y, x_1488.y));
    let x_1491 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1490.x, x_1490.y, x_1491.z, x_1491.w);
    let x_1493 : vec2<f32> = u_xlat32;
    let x_1494 : vec4<f32> = u_xlat7;
    let x_1496 : vec2<f32> = (x_1493 * vec2<f32>(x_1494.x, x_1494.y));
    let x_1497 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1497.x, x_1497.y, x_1496.x, x_1496.y);
    let x_1499 : vec4<f32> = u_xlat6;
    let x_1501 : vec4<f32> = x_66.AdditionalParams;
    u_xlat6 = (x_1499 * vec4<f32>(x_1501.z, x_1501.z, x_1501.z, x_1501.z));
    let x_1504 : vec4<f32> = u_xlat5;
    let x_1506 : vec2<f32> = u_xlat30;
    let x_1509 : vec4<f32> = x_66.AdditionalParams;
    let x_1511 : vec2<f32> = ((vec2<f32>(x_1504.x, x_1504.y) * x_1506) + vec2<f32>(x_1509.y, x_1509.y));
    let x_1512 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1511.x, x_1511.y, x_1512.z, x_1512.w);
    let x_1514 : vec4<f32> = u_xlat5;
    let x_1516 : vec4<f32> = u_xlat5;
    let x_1518 : vec2<f32> = (vec2<f32>(x_1514.x, x_1514.y) * vec2<f32>(x_1516.x, x_1516.y));
    let x_1519 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1518.x, x_1518.y, x_1519.z, x_1519.w);
    let x_1521 : vec2<f32> = u_xlat33;
    let x_1522 : vec4<f32> = u_xlat7;
    let x_1524 : vec2<f32> = (x_1521 * vec2<f32>(x_1522.x, x_1522.y));
    let x_1525 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1524.x, x_1524.y, x_1525.z, x_1525.w);
    let x_1527 : vec4<f32> = u_xlat7;
    let x_1530 : vec4<f32> = x_66.AdditionalParams;
    let x_1532 : vec2<f32> = (vec2<f32>(x_1527.x, x_1527.y) * vec2<f32>(x_1530.z, x_1530.z));
    let x_1533 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1532.x, x_1532.y, x_1533.z, x_1533.w);
    let x_1535 : vec2<f32> = u_xlat30;
    let x_1536 : vec2<f32> = u_xlat31;
    let x_1539 : vec4<f32> = x_66.AdditionalParams;
    let x_1541 : vec2<f32> = ((x_1535 * x_1536) + vec2<f32>(x_1539.y, x_1539.y));
    let x_1542 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1542.x, x_1542.y, x_1541.x, x_1541.y);
    let x_1544 : vec4<f32> = u_xlat4;
    let x_1545 : vec4<f32> = u_xlat4;
    u_xlat4 = (x_1544 * x_1545);
    let x_1547 : vec2<f32> = u_xlat33;
    let x_1548 : vec4<f32> = u_xlat8;
    u_xlat31 = (x_1547 * vec2<f32>(x_1548.x, x_1548.y));
    let x_1551 : vec2<f32> = u_xlat31;
    let x_1553 : vec4<f32> = x_66.AdditionalParams;
    u_xlat31 = (x_1551 * vec2<f32>(x_1553.z, x_1553.z));
    let x_1557 : vec4<f32> = u_xlat6;
    let x_1559 : vec2<f32> = u_xlat29;
    let x_1561 : vec4<bool> = (vec4<f32>(x_1557.x, x_1557.y, x_1557.x, x_1557.y) < vec4<f32>(x_1559.x, x_1559.y, x_1559.x, x_1559.y));
    u_xlatb29 = vec2<bool>(x_1561.x, x_1561.y);
    let x_1564 : vec4<f32> = u_xlat6;
    let x_1566 : vec4<f32> = u_xlat4;
    let x_1568 : vec4<bool> = (vec4<f32>(x_1564.z, x_1564.w, x_1564.z, x_1564.z) < vec4<f32>(x_1566.x, x_1566.y, x_1566.x, x_1566.x));
    u_xlatb4 = vec2<bool>(x_1568.x, x_1568.y);
    let x_1571 : vec4<f32> = u_xlat7;
    let x_1573 : vec4<f32> = u_xlat5;
    let x_1575 : vec4<bool> = (vec4<f32>(x_1571.x, x_1571.y, x_1571.x, x_1571.x) < vec4<f32>(x_1573.x, x_1573.y, x_1573.x, x_1573.x));
    u_xlatb5 = vec2<bool>(x_1575.x, x_1575.y);
    let x_1578 : vec2<f32> = u_xlat31;
    let x_1580 : vec4<f32> = u_xlat4;
    let x_1582 : vec4<bool> = (vec4<f32>(x_1578.x, x_1578.y, x_1578.x, x_1578.y) < vec4<f32>(x_1580.z, x_1580.w, x_1580.z, x_1580.w));
    u_xlatb30 = vec2<bool>(x_1582.x, x_1582.y);
    let x_1584 : vec2<bool> = u_xlatb29;
    let x_1588 : vec2<bool> = u_xlatb4;
    u_xlati31 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1584) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1588) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1594 : vec2<i32> = u_xlati31;
    u_xlati31 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1594) & vec2<u32>(1u, 1u)));
    let x_1599 : i32 = u_xlati31.x;
    if ((x_1599 != 0i)) {
      let x_1605 : f32 = u_xlat1.x;
      x_1601 = x_1605;
    } else {
      let x_1608 : f32 = u_xlat27.x;
      x_1601 = x_1608;
    }
    let x_1609 : f32 = x_1601;
    u_xlat31.x = x_1609;
    let x_1612 : i32 = u_xlati31.y;
    if ((x_1612 != 0i)) {
      let x_1618 : f32 = u_xlat1.y;
      x_1614 = x_1618;
    } else {
      let x_1621 : f32 = u_xlat27.y;
      x_1614 = x_1621;
    }
    let x_1622 : f32 = x_1614;
    u_xlat31.y = x_1622;
    let x_1625 : vec2<f32> = u_xlat13;
    hlslcc_movcTemp_1 = x_1625;
    let x_1627 : bool = u_xlatb29.x;
    if (x_1627) {
      let x_1632 : f32 = u_xlat13.x;
      x_1628 = x_1632;
    } else {
      let x_1635 : f32 = u_xlat31.x;
      x_1628 = x_1635;
    }
    let x_1636 : f32 = x_1628;
    hlslcc_movcTemp_1.x = x_1636;
    let x_1639 : bool = u_xlatb29.y;
    if (x_1639) {
      let x_1644 : f32 = u_xlat13.y;
      x_1640 = x_1644;
    } else {
      let x_1647 : f32 = u_xlat31.y;
      x_1640 = x_1647;
    }
    let x_1648 : f32 = x_1640;
    hlslcc_movcTemp_1.y = x_1648;
    let x_1650 : vec2<f32> = hlslcc_movcTemp_1;
    u_xlat13 = x_1650;
    let x_1652 : vec2<bool> = u_xlatb4;
    let x_1656 : vec2<bool> = u_xlatb5;
    u_xlati29 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1652) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1656) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1662 : vec2<i32> = u_xlati29;
    u_xlati29 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1662) & vec2<u32>(1u, 1u)));
    let x_1667 : i32 = u_xlati29.x;
    if ((x_1667 != 0i)) {
      let x_1673 : f32 = u_xlat27.x;
      x_1669 = x_1673;
    } else {
      let x_1676 : f32 = u_xlat2.x;
      x_1669 = x_1676;
    }
    let x_1677 : f32 = x_1669;
    u_xlat12.x = x_1677;
    let x_1680 : i32 = u_xlati29.y;
    if ((x_1680 != 0i)) {
      let x_1686 : f32 = u_xlat27.y;
      x_1682 = x_1686;
    } else {
      let x_1689 : f32 = u_xlat2.y;
      x_1682 = x_1689;
    }
    let x_1690 : f32 = x_1682;
    u_xlat12.y = x_1690;
    let x_1693 : i32 = u_xlati29.x;
    if ((x_1693 != 0i)) {
      let x_1699 : f32 = u_xlat2.x;
      x_1695 = x_1699;
    } else {
      let x_1702 : f32 = u_xlat27.x;
      x_1695 = x_1702;
    }
    let x_1703 : f32 = x_1695;
    u_xlat7.x = x_1703;
    let x_1706 : i32 = u_xlati29.y;
    if ((x_1706 != 0i)) {
      let x_1712 : f32 = u_xlat2.y;
      x_1708 = x_1712;
    } else {
      let x_1715 : f32 = u_xlat27.y;
      x_1708 = x_1715;
    }
    let x_1716 : f32 = x_1708;
    u_xlat7.y = x_1716;
    let x_1718 : vec2<f32> = u_xlat12;
    let x_1719 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1718.x, x_1718.y, x_1719.z, x_1719.w);
    let x_1722 : bool = u_xlatb5.x;
    if (x_1722) {
      let x_1727 : f32 = u_xlat3.x;
      x_1723 = x_1727;
    } else {
      let x_1730 : f32 = u_xlat7.x;
      x_1723 = x_1730;
    }
    let x_1731 : f32 = x_1723;
    u_xlat29.x = x_1731;
    let x_1734 : bool = u_xlatb5.y;
    if (x_1734) {
      let x_1739 : f32 = u_xlat3.y;
      x_1735 = x_1739;
    } else {
      let x_1742 : f32 = u_xlat7.y;
      x_1735 = x_1742;
    }
    let x_1743 : f32 = x_1735;
    u_xlat29.y = x_1743;
    let x_1745 : vec2<f32> = u_xlat13;
    let x_1746 : vec2<f32> = u_xlat29;
    u_xlat13 = (x_1745 + x_1746);
    let x_1748 : vec2<f32> = u_xlat13;
    let x_1750 : vec2<f32> = u_xlat31;
    u_xlat13 = ((x_1748 * vec2<f32>(0.5f, 0.5f)) + x_1750);
    let x_1752 : vec2<f32> = u_xlat27;
    let x_1753 : vec2<f32> = u_xlat13;
    u_xlat13 = (x_1752 + x_1753);
    let x_1755 : vec4<f32> = u_xlat7;
    let x_1757 : vec2<f32> = u_xlat13;
    u_xlat13 = (vec2<f32>(x_1755.x, x_1755.y) + x_1757);
    let x_1759 : vec2<f32> = u_xlat13;
    u_xlat13 = (x_1759 * vec2<f32>(0.25f, 0.25f));
    let x_1762 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp_2 = x_1762;
    let x_1764 : bool = u_xlatb4.x;
    if (x_1764) {
      let x_1769 : f32 = u_xlat1.x;
      x_1765 = x_1769;
    } else {
      let x_1772 : f32 = u_xlat6.x;
      x_1765 = x_1772;
    }
    let x_1773 : f32 = x_1765;
    hlslcc_movcTemp_2.x = x_1773;
    let x_1776 : bool = u_xlatb4.y;
    if (x_1776) {
      let x_1781 : f32 = u_xlat1.y;
      x_1777 = x_1781;
    } else {
      let x_1784 : f32 = u_xlat6.y;
      x_1777 = x_1784;
    }
    let x_1785 : f32 = x_1777;
    hlslcc_movcTemp_2.y = x_1785;
    let x_1787 : vec4<f32> = hlslcc_movcTemp_2;
    u_xlat1 = x_1787;
    let x_1788 : vec2<bool> = u_xlatb5;
    let x_1792 : vec2<bool> = u_xlatb30;
    u_xlati27 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1788) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1792) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1798 : vec2<i32> = u_xlati27;
    u_xlati27 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1798) & vec2<u32>(1u, 1u)));
    let x_1803 : i32 = u_xlati27.x;
    if ((x_1803 != 0i)) {
      let x_1809 : f32 = u_xlat3.x;
      x_1805 = x_1809;
    } else {
      let x_1812 : f32 = u_xlat2.x;
      x_1805 = x_1812;
    }
    let x_1813 : f32 = x_1805;
    u_xlat27.x = x_1813;
    let x_1816 : i32 = u_xlati27.y;
    if ((x_1816 != 0i)) {
      let x_1822 : f32 = u_xlat3.y;
      x_1818 = x_1822;
    } else {
      let x_1825 : f32 = u_xlat2.y;
      x_1818 = x_1825;
    }
    let x_1826 : f32 = x_1818;
    u_xlat27.y = x_1826;
    let x_1829 : vec2<f32> = u_xlat28;
    hlslcc_movcTemp_3 = x_1829;
    let x_1831 : bool = u_xlatb30.x;
    if (x_1831) {
      let x_1836 : f32 = u_xlat28.x;
      x_1832 = x_1836;
    } else {
      let x_1839 : f32 = u_xlat27.x;
      x_1832 = x_1839;
    }
    let x_1840 : f32 = x_1832;
    hlslcc_movcTemp_3.x = x_1840;
    let x_1843 : bool = u_xlatb30.y;
    if (x_1843) {
      let x_1848 : f32 = u_xlat28.y;
      x_1844 = x_1848;
    } else {
      let x_1851 : f32 = u_xlat27.y;
      x_1844 = x_1851;
    }
    let x_1852 : f32 = x_1844;
    hlslcc_movcTemp_3.y = x_1852;
    let x_1854 : vec2<f32> = hlslcc_movcTemp_3;
    u_xlat28 = x_1854;
    let x_1855 : vec4<f32> = u_xlat1;
    let x_1857 : vec2<f32> = u_xlat28;
    let x_1858 : vec2<f32> = (vec2<f32>(x_1855.x, x_1855.y) + x_1857);
    let x_1859 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1858.x, x_1858.y, x_1859.z, x_1859.w);
    let x_1861 : vec4<f32> = u_xlat1;
    let x_1864 : vec4<f32> = u_xlat6;
    let x_1866 : vec2<f32> = ((vec2<f32>(x_1861.x, x_1861.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1864.x, x_1864.y));
    let x_1867 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1866.x, x_1866.y, x_1867.z, x_1867.w);
    let x_1869 : vec4<f32> = u_xlat2;
    let x_1871 : vec4<f32> = u_xlat1;
    let x_1873 : vec2<f32> = (vec2<f32>(x_1869.x, x_1869.y) + vec2<f32>(x_1871.x, x_1871.y));
    let x_1874 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1873.x, x_1873.y, x_1874.z, x_1874.w);
    let x_1876 : vec2<f32> = u_xlat27;
    let x_1877 : vec4<f32> = u_xlat1;
    let x_1879 : vec2<f32> = (x_1876 + vec2<f32>(x_1877.x, x_1877.y));
    let x_1880 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1879.x, x_1879.y, x_1880.z, x_1880.w);
    let x_1882 : vec4<f32> = u_xlat1;
    let x_1884 : vec2<f32> = (vec2<f32>(x_1882.x, x_1882.y) * vec2<f32>(0.25f, 0.25f));
    let x_1885 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1884.x, x_1884.y, x_1885.z, x_1885.w);
    let x_1888 : i32 = u_xlati0.x;
    let x_1890 : f32 = u_xlat13.x;
    TGSM1[x_1888].value[0i] = bitcast<u32>(x_1890);
    let x_1894 : i32 = u_xlati0.x;
    let x_1896 : f32 = u_xlat13.y;
    TGSM1[x_1894].value[1i] = bitcast<u32>(x_1896);
    let x_1899 : i32 = u_xlati39;
    let x_1901 : f32 = u_xlat1.x;
    TGSM1[x_1899].value[0i] = bitcast<u32>(x_1901);
    let x_1904 : i32 = u_xlati39;
    let x_1906 : f32 = u_xlat1.y;
    TGSM1[x_1904].value[1i] = bitcast<u32>(x_1906);
  }
  workgroupBarrier();
  let x_1910 : u32 = gl_LocalInvocationID.y;
  let x_1914 : u32 = gl_LocalInvocationID.x;
  u_xlati0.x = ((bitcast<i32>(x_1910) * 16i) + bitcast<i32>(x_1914));
  let x_1918 : vec4<i32> = u_xlati0;
  u_xlati13 = (vec3<i32>(x_1918.x, x_1918.x, x_1918.x) + vec3<i32>(16i, 17i, 1i));
  let x_1923 : i32 = u_xlati13.x;
  let x_1925 : u32 = TGSM1[x_1923].value[0i];
  let x_1928 : i32 = u_xlati13.x;
  let x_1930 : u32 = TGSM1[x_1928].value[1i];
  let x_1932 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1925), bitcast<f32>(x_1930));
  let x_1933 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1932.x, x_1932.y, x_1933.z, x_1933.w);
  let x_1936 : i32 = u_xlati13.y;
  let x_1938 : u32 = TGSM1[x_1936].value[0i];
  let x_1941 : i32 = u_xlati13.y;
  let x_1943 : u32 = TGSM1[x_1941].value[1i];
  u_xlat13 = vec2<f32>(bitcast<f32>(x_1938), bitcast<f32>(x_1943));
  let x_1947 : i32 = u_xlati13.z;
  let x_1949 : u32 = TGSM1[x_1947].value[0i];
  let x_1952 : i32 = u_xlati13.z;
  let x_1954 : u32 = TGSM1[x_1952].value[1i];
  let x_1956 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1949), bitcast<f32>(x_1954));
  let x_1957 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1957.x, x_1957.y, x_1956.x, x_1956.y);
  let x_1960 : i32 = u_xlati0.x;
  let x_1962 : u32 = TGSM1[x_1960].value[1i];
  let x_1965 : i32 = u_xlati0.x;
  let x_1967 : u32 = TGSM1[x_1965].value[0i];
  let x_1969 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1962), bitcast<f32>(x_1967));
  let x_1970 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1969.x, x_1969.y, x_1970.z, x_1970.w);
  let x_1973 : vec3<u32> = gl_GlobalInvocationID;
  let x_1975 : vec2<f32> = vec2<f32>(vec2<u32>(x_1973.x, x_1973.y));
  let x_1976 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1975.x, x_1976.y, x_1976.z, x_1975.y);
  let x_1978 : vec4<f32> = u_xlat0;
  let x_1981 : vec4<f32> = x_66.InvLowResolution;
  let x_1983 : vec2<f32> = (vec2<f32>(x_1978.x, x_1978.w) * vec2<f32>(x_1981.x, x_1981.y));
  let x_1984 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1983.x, x_1984.y, x_1984.z, x_1983.y);
  let x_1988 : vec3<u32> = gl_GlobalInvocationID;
  u_xlatu3 = bitcast<vec4<u32>>((bitcast<vec4<i32>>(vec4<u32>(x_1988.x, x_1988.y, x_1988.y, x_1988.y)) << bitcast<vec4<u32>>(vec4<i32>(1i, 1i, 1i, 1i))));
  let x_1994 : vec4<u32> = u_xlatu3;
  let x_1996 : vec2<f32> = vec2<f32>(vec2<u32>(x_1994.x, x_1994.w));
  let x_1997 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1996.x, x_1996.y, x_1997.z, x_1997.w);
  let x_1999 : vec4<f32> = u_xlat4;
  let x_2002 : vec4<f32> = x_66.InvHighResolution;
  let x_2004 : vec2<f32> = (vec2<f32>(x_1999.x, x_1999.y) * vec2<f32>(x_2002.x, x_2002.y));
  let x_2005 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2004.x, x_2004.y, x_2005.z, x_2005.w);
  let x_2010 : vec4<f32> = u_xlat0;
  let x_2012 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, vec2<f32>(x_2010.x, x_2010.w));
  u_xlat5 = x_2012;
  let x_2016 : vec4<f32> = u_xlat0;
  let x_2018 : vec4<f32> = textureGather(1i, LoResDB, samplerLoResDB, vec2<f32>(x_2016.x, x_2016.w));
  u_xlat6 = x_2018;
  let x_2024 : vec4<f32> = u_xlat4;
  let x_2026 : vec4<f32> = textureGather(0i, HiResDB, samplerHiResDB, vec2<f32>(x_2024.x, x_2024.y));
  u_xlat7 = x_2026;
  let x_2030 : vec4<f32> = u_xlat4;
  let x_2032 : vec4<f32> = textureGather(1i, HiResDB, samplerHiResDB, vec2<f32>(x_2030.x, x_2030.y));
  u_xlat4 = x_2032;
  let x_2034 : vec4<u32> = u_xlatu3;
  u_xlati8 = (bitcast<vec4<i32>>(vec4<u32>(x_2034.x, x_2034.w, x_2034.x, x_2034.w)) + vec4<i32>(-1i, 0i, 0i, -1i));
  let x_2040 : vec4<f32> = u_xlat5;
  let x_2042 : vec4<f32> = u_xlat7;
  u_xlat9 = (-(x_2040) + vec4<f32>(x_2042.x, x_2042.x, x_2042.x, x_2042.x));
  let x_2045 : vec4<f32> = u_xlat9;
  let x_2048 : vec4<f32> = x_66.AdditionalParams;
  u_xlat9 = (abs(x_2045) + vec4<f32>(x_2048.w, x_2048.w, x_2048.w, x_2048.w));
  let x_2054 : vec4<f32> = u_xlat9;
  u_xlat9 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2054);
  let x_2056 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_2056, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2060 : f32 = u_xlat13.x;
  u_xlat10.z = x_2060;
  let x_2062 : vec4<f32> = u_xlat1;
  let x_2063 : vec2<f32> = vec2<f32>(x_2062.x, x_2062.z);
  let x_2064 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2064.x, x_2063.x, x_2064.z, x_2063.y);
  let x_2067 : f32 = u_xlat2.y;
  u_xlat10.x = x_2067;
  let x_2069 : vec4<f32> = u_xlat10;
  let x_2071 : vec4<f32> = u_xlat9;
  u_xlat0.y = dot(vec4<f32>(x_2069.y, x_2069.z, x_2069.w, x_2069.x), x_2071);
  let x_2074 : vec4<f32> = u_xlat0;
  let x_2077 : vec4<f32> = x_66.AdditionalParams;
  let x_2079 : vec2<f32> = (vec2<f32>(x_2074.x, x_2074.y) + vec2<f32>(x_2077.x, x_2077.x));
  let x_2080 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2079.x, x_2079.y, x_2080.z, x_2080.w);
  let x_2083 : f32 = u_xlat0.y;
  let x_2085 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2083 / x_2085);
  let x_2089 : vec4<f32> = u_xlat0;
  let x_2093 : vec3<f32> = (-(vec3<f32>(x_2089.x, x_2089.x, x_2089.x)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_2094 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2093.x, x_2094.y, x_2093.y, x_2093.z);
  let x_2097 : vec4<f32> = u_xlat6;
  let x_2099 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_2097) + vec4<f32>(x_2099.x, x_2099.x, x_2099.x, x_2099.x));
  let x_2102 : vec4<f32> = u_xlat11;
  let x_2105 : vec4<f32> = x_66.AdditionalParams;
  u_xlat11 = (abs(x_2102) + vec4<f32>(x_2105.w, x_2105.w, x_2105.w, x_2105.w));
  let x_2108 : vec4<f32> = u_xlat11;
  u_xlat11 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2108);
  let x_2110 : vec4<f32> = u_xlat11;
  u_xlat0.x = dot(x_2110, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2114 : f32 = u_xlat13.y;
  u_xlat2.z = x_2114;
  let x_2116 : vec4<f32> = u_xlat1;
  let x_2117 : vec2<f32> = vec2<f32>(x_2116.y, x_2116.w);
  let x_2118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2118.x, x_2117.x, x_2118.z, x_2117.y);
  let x_2120 : vec4<f32> = u_xlat2;
  let x_2122 : vec4<f32> = u_xlat11;
  u_xlat0.y = dot(vec4<f32>(x_2120.y, x_2120.z, x_2120.w, x_2120.x), x_2122);
  let x_2125 : vec4<f32> = u_xlat0;
  let x_2128 : vec4<f32> = x_66.AdditionalParams;
  let x_2130 : vec2<f32> = (vec2<f32>(x_2125.x, x_2125.y) + vec2<f32>(x_2128.x, x_2128.x));
  let x_2131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2130.x, x_2130.y, x_2131.z, x_2131.w);
  let x_2134 : f32 = u_xlat0.y;
  let x_2136 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2134 / x_2136);
  let x_2140 : f32 = u_xlat0.x;
  u_xlat9.y = (-(x_2140) + 1.0f);
  let x_2148 : vec4<i32> = u_xlati8;
  let x_2150 : vec4<f32> = u_xlat9;
  textureStore(AoResult_origX0X, vec2<i32>(x_2148.x, x_2148.y), x_2150);
  let x_2151 : vec4<f32> = u_xlat5;
  let x_2154 : vec4<f32> = u_xlat7;
  u_xlat0 = (-(vec4<f32>(x_2151.y, x_2151.z, x_2151.w, x_2151.x)) + vec4<f32>(x_2154.y, x_2154.y, x_2154.y, x_2154.y));
  let x_2157 : vec4<f32> = u_xlat0;
  let x_2160 : vec4<f32> = x_66.AdditionalParams;
  u_xlat0 = (abs(x_2157) + vec4<f32>(x_2160.w, x_2160.w, x_2160.w, x_2160.w));
  let x_2163 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2163);
  let x_2165 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_2165, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2169 : f32 = u_xlat1.x;
  let x_2172 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2169 + x_2172);
  let x_2175 : vec4<f32> = u_xlat10;
  let x_2177 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec4<f32>(x_2175.z, x_2175.w, x_2175.x, x_2175.y), x_2177);
  let x_2181 : f32 = u_xlat0.x;
  let x_2183 : f32 = x_66.AdditionalParams.x;
  u_xlat0.x = (x_2181 + x_2183);
  let x_2187 : f32 = u_xlat0.x;
  let x_2189 : f32 = u_xlat1.x;
  u_xlat0.x = (x_2187 / x_2189);
  let x_2192 : vec4<f32> = u_xlat0;
  let x_2195 : vec3<f32> = (-(vec3<f32>(x_2192.x, x_2192.x, x_2192.x)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_2196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2195.x, x_2196.y, x_2195.y, x_2195.z);
  let x_2198 : vec4<f32> = u_xlat6;
  let x_2201 : vec4<f32> = u_xlat4;
  u_xlat1 = (-(vec4<f32>(x_2198.y, x_2198.z, x_2198.w, x_2198.x)) + vec4<f32>(x_2201.y, x_2201.y, x_2201.y, x_2201.y));
  let x_2204 : vec4<f32> = u_xlat1;
  let x_2207 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2204) + vec4<f32>(x_2207.w, x_2207.w, x_2207.w, x_2207.w));
  let x_2210 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2210);
  let x_2212 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_2212, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2216 : f32 = u_xlat4.x;
  let x_2218 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2216 + x_2218);
  let x_2221 : vec4<f32> = u_xlat2;
  let x_2223 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec4<f32>(x_2221.z, x_2221.w, x_2221.x, x_2221.y), x_2223);
  let x_2227 : f32 = u_xlat1.x;
  let x_2229 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2227 + x_2229);
  let x_2233 : f32 = u_xlat1.x;
  let x_2235 : f32 = u_xlat4.x;
  u_xlat1.x = (x_2233 / x_2235);
  let x_2239 : f32 = u_xlat1.x;
  u_xlat0.y = (-(x_2239) + 1.0f);
  let x_2244 : vec4<u32> = u_xlatu3;
  let x_2247 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_2244.x, x_2244.w)), x_2247);
  let x_2248 : vec4<f32> = u_xlat5;
  let x_2251 : vec4<f32> = u_xlat7;
  u_xlat0 = (-(vec4<f32>(x_2248.z, x_2248.w, x_2248.x, x_2248.y)) + vec4<f32>(x_2251.z, x_2251.z, x_2251.z, x_2251.z));
  let x_2254 : vec4<f32> = u_xlat0;
  let x_2257 : vec4<f32> = x_66.AdditionalParams;
  u_xlat0 = (abs(x_2254) + vec4<f32>(x_2257.w, x_2257.w, x_2257.w, x_2257.w));
  let x_2260 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2260);
  let x_2262 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_2262, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2266 : f32 = u_xlat1.x;
  let x_2268 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2266 + x_2268);
  let x_2271 : vec4<f32> = u_xlat10;
  let x_2273 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec4<f32>(x_2271.w, x_2271.x, x_2271.y, x_2271.z), x_2273);
  let x_2277 : f32 = u_xlat0.x;
  let x_2279 : f32 = x_66.AdditionalParams.x;
  u_xlat0.x = (x_2277 + x_2279);
  let x_2283 : f32 = u_xlat0.x;
  let x_2285 : f32 = u_xlat1.x;
  u_xlat0.x = (x_2283 / x_2285);
  let x_2288 : vec4<f32> = u_xlat0;
  let x_2291 : vec3<f32> = (-(vec3<f32>(x_2288.x, x_2288.x, x_2288.x)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_2292 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2291.x, x_2292.y, x_2291.y, x_2291.z);
  let x_2294 : vec4<f32> = u_xlat6;
  let x_2297 : vec4<f32> = u_xlat4;
  u_xlat1 = (-(vec4<f32>(x_2294.z, x_2294.w, x_2294.x, x_2294.y)) + vec4<f32>(x_2297.z, x_2297.z, x_2297.z, x_2297.z));
  let x_2300 : vec4<f32> = u_xlat1;
  let x_2303 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2300) + vec4<f32>(x_2303.w, x_2303.w, x_2303.w, x_2303.w));
  let x_2306 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2306);
  let x_2308 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_2308, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2312 : f32 = u_xlat4.x;
  let x_2314 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2312 + x_2314);
  let x_2317 : vec4<f32> = u_xlat2;
  let x_2319 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec4<f32>(x_2317.w, x_2317.x, x_2317.y, x_2317.z), x_2319);
  let x_2323 : f32 = u_xlat1.x;
  let x_2325 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2323 + x_2325);
  let x_2329 : f32 = u_xlat1.x;
  let x_2331 : f32 = u_xlat4.x;
  u_xlat1.x = (x_2329 / x_2331);
  let x_2335 : f32 = u_xlat1.x;
  u_xlat0.y = (-(x_2335) + 1.0f);
  let x_2340 : vec4<i32> = u_xlati8;
  let x_2342 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_2340.z, x_2340.w), x_2342);
  let x_2343 : vec4<u32> = u_xlatu3;
  u_xlati0 = (bitcast<vec4<i32>>(x_2343) + vec4<i32>(-1i, -1i, -1i, -1i));
  let x_2347 : vec4<f32> = u_xlat5;
  let x_2350 : vec4<f32> = u_xlat7;
  u_xlat1 = (-(vec4<f32>(x_2347.w, x_2347.x, x_2347.y, x_2347.z)) + vec4<f32>(x_2350.w, x_2350.w, x_2350.w, x_2350.w));
  let x_2353 : vec4<f32> = u_xlat1;
  let x_2356 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2353) + vec4<f32>(x_2356.w, x_2356.w, x_2356.w, x_2356.w));
  let x_2359 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2359);
  let x_2361 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_2361, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2365 : f32 = u_xlat3.x;
  let x_2367 : f32 = x_66.AdditionalParams.x;
  u_xlat3.x = (x_2365 + x_2367);
  let x_2370 : vec4<f32> = u_xlat10;
  let x_2371 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(x_2370, x_2371);
  let x_2375 : f32 = u_xlat1.x;
  let x_2377 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2375 + x_2377);
  let x_2381 : f32 = u_xlat1.x;
  let x_2383 : f32 = u_xlat3.x;
  u_xlat1.x = (x_2381 / x_2383);
  let x_2386 : vec4<f32> = u_xlat1;
  let x_2389 : vec3<f32> = (-(vec3<f32>(x_2386.x, x_2386.x, x_2386.x)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_2390 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2389.x, x_2390.y, x_2389.y, x_2389.z);
  let x_2392 : vec4<f32> = u_xlat6;
  let x_2395 : vec4<f32> = u_xlat4;
  u_xlat3 = (-(vec4<f32>(x_2392.w, x_2392.x, x_2392.y, x_2392.z)) + vec4<f32>(x_2395.w, x_2395.w, x_2395.w, x_2395.w));
  let x_2398 : vec4<f32> = u_xlat3;
  let x_2401 : vec4<f32> = x_66.AdditionalParams;
  u_xlat3 = (abs(x_2398) + vec4<f32>(x_2401.w, x_2401.w, x_2401.w, x_2401.w));
  let x_2404 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2404);
  let x_2406 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_2406, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2410 : f32 = u_xlat4.x;
  let x_2412 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2410 + x_2412);
  let x_2415 : vec4<f32> = u_xlat2;
  let x_2416 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_2415, x_2416);
  let x_2420 : f32 = u_xlat2.x;
  let x_2422 : f32 = x_66.AdditionalParams.x;
  u_xlat2.x = (x_2420 + x_2422);
  let x_2426 : f32 = u_xlat2.x;
  let x_2428 : f32 = u_xlat4.x;
  u_xlat2.x = (x_2426 / x_2428);
  let x_2432 : f32 = u_xlat2.x;
  u_xlat1.y = (-(x_2432) + 1.0f);
  let x_2437 : vec4<i32> = u_xlati0;
  let x_2439 : vec4<f32> = u_xlat1;
  textureStore(AoResult_origX0X, vec2<i32>(x_2437.x, x_2437.y), x_2439);
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn main(@builtin(local_invocation_id) gl_LocalInvocationID_param : vec3<u32>, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_LocalInvocationID = gl_LocalInvocationID_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

