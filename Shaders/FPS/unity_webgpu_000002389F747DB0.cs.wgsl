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

var<private> u_xlati0 : vec4<i32>;

var<private> gl_LocalInvocationID : vec3<u32>;

var<private> u_xlati13 : vec3<i32>;

var<private> gl_GlobalInvocationID : vec3<u32>;

var<private> u_xlat13 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_66 : CB1;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var LoResAO1 : texture_2d<f32>;

@group(0) @binding(7) var samplerLoResAO1 : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<workgroup> TGSM1 : array<S, 256u>;

var<private> u_xlati39 : i32;

var<private> u_xlati27 : vec2<i32>;

@group(0) @binding(1) var LoResDB : texture_2d<f32>;

@group(0) @binding(5) var samplerLoResDB : sampler;

var<private> u_xlat4 : vec4<f32>;

var<workgroup> TGSM0 : array<S_1, 256u>;

var<private> u_xlatb0 : vec2<bool>;

var<private> gl_LocalInvocationIndex : u32;

var<private> u_xlatu0 : u32;

var<private> u_xlatu1 : u32;

var<private> u_xlati26 : i32;

var<private> u_xlat26 : vec2<f32>;

var<private> u_xlati1 : vec4<i32>;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlati4 : vec4<i32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb31 : vec2<bool>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatb27 : vec2<bool>;

var<private> u_xlati31 : vec2<i32>;

var<private> u_xlat12 : vec2<f32>;

var<workgroup> TGSM2 : array<S_2, 256u>;

var<private> u_xlati2 : vec4<i32>;

var<private> u_xlati28 : vec2<i32>;

var<private> u_xlatb29 : vec2<bool>;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatb30 : vec2<bool>;

var<private> u_xlati29 : vec2<i32>;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlatu3 : vec4<u32>;

@group(0) @binding(2) var HiResDB : texture_2d<f32>;

@group(0) @binding(6) var samplerHiResDB : sampler;

var<private> u_xlati8 : vec4<i32>;

var<private> u_xlat11 : vec4<f32>;

@group(0) @binding(4) var AoResult_origX0X : texture_storage_2d<rg32float, write>;

fn main_1() {
  var x_754 : f32;
  var x_767 : f32;
  var hlslcc_movcTemp : vec2<f32>;
  var x_782 : f32;
  var x_794 : f32;
  var x_826 : f32;
  var x_839 : f32;
  var x_852 : f32;
  var x_865 : f32;
  var x_880 : f32;
  var x_892 : f32;
  var x_941 : f32;
  var x_953 : f32;
  var x_987 : f32;
  var x_1000 : f32;
  var x_1013 : f32;
  var x_1026 : f32;
  var x_1041 : f32;
  var x_1053 : f32;
  var x_1095 : f32;
  var x_1107 : f32;
  var x_1135 : f32;
  var x_1148 : f32;
  var x_1160 : f32;
  var x_1172 : f32;
  var x_1603 : f32;
  var x_1616 : f32;
  var hlslcc_movcTemp_1 : vec2<f32>;
  var x_1630 : f32;
  var x_1642 : f32;
  var x_1671 : f32;
  var x_1684 : f32;
  var x_1697 : f32;
  var x_1710 : f32;
  var x_1725 : f32;
  var x_1737 : f32;
  var hlslcc_movcTemp_2 : vec4<f32>;
  var x_1768 : f32;
  var x_1780 : f32;
  var x_1808 : f32;
  var x_1821 : f32;
  var hlslcc_movcTemp_3 : vec2<f32>;
  var x_1835 : f32;
  var x_1847 : f32;
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
      let x_758 : f32 = u_xlat2.x;
      x_754 = x_758;
    } else {
      let x_761 : f32 = u_xlat28.x;
      x_754 = x_761;
    }
    let x_762 : f32 = x_754;
    u_xlat4.x = x_762;
    let x_765 : i32 = u_xlati4.y;
    if ((x_765 != 0i)) {
      let x_771 : f32 = u_xlat2.y;
      x_767 = x_771;
    } else {
      let x_774 : f32 = u_xlat28.y;
      x_767 = x_774;
    }
    let x_775 : f32 = x_767;
    u_xlat4.y = x_775;
    let x_779 : vec2<f32> = u_xlat26;
    hlslcc_movcTemp = x_779;
    let x_781 : bool = u_xlatb31.x;
    if (x_781) {
      let x_786 : f32 = u_xlat26.x;
      x_782 = x_786;
    } else {
      let x_789 : f32 = u_xlat4.x;
      x_782 = x_789;
    }
    let x_790 : f32 = x_782;
    hlslcc_movcTemp.x = x_790;
    let x_793 : bool = u_xlatb31.y;
    if (x_793) {
      let x_798 : f32 = u_xlat26.y;
      x_794 = x_798;
    } else {
      let x_801 : f32 = u_xlat4.y;
      x_794 = x_801;
    }
    let x_802 : f32 = x_794;
    hlslcc_movcTemp.y = x_802;
    let x_804 : vec2<f32> = hlslcc_movcTemp;
    u_xlat26 = x_804;
    let x_806 : vec4<bool> = u_xlatb6;
    let x_811 : vec4<bool> = u_xlatb6;
    u_xlati31 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_806.x, x_806.y)) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_811.z, x_811.w)) * vec2<u32>(4294967295u, 4294967295u))));
    let x_818 : vec2<i32> = u_xlati31;
    u_xlati31 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_818) & vec2<u32>(1u, 1u)));
    let x_824 : i32 = u_xlati31.x;
    if ((x_824 != 0i)) {
      let x_830 : f32 = u_xlat28.x;
      x_826 = x_830;
    } else {
      let x_833 : f32 = u_xlat3.x;
      x_826 = x_833;
    }
    let x_834 : f32 = x_826;
    u_xlat12.x = x_834;
    let x_837 : i32 = u_xlati31.y;
    if ((x_837 != 0i)) {
      let x_843 : f32 = u_xlat28.y;
      x_839 = x_843;
    } else {
      let x_846 : f32 = u_xlat3.y;
      x_839 = x_846;
    }
    let x_847 : f32 = x_839;
    u_xlat12.y = x_847;
    let x_850 : i32 = u_xlati31.x;
    if ((x_850 != 0i)) {
      let x_856 : f32 = u_xlat3.x;
      x_852 = x_856;
    } else {
      let x_859 : f32 = u_xlat28.x;
      x_852 = x_859;
    }
    let x_860 : f32 = x_852;
    u_xlat9.x = x_860;
    let x_863 : i32 = u_xlati31.y;
    if ((x_863 != 0i)) {
      let x_869 : f32 = u_xlat3.y;
      x_865 = x_869;
    } else {
      let x_872 : f32 = u_xlat28.y;
      x_865 = x_872;
    }
    let x_873 : f32 = x_865;
    u_xlat9.y = x_873;
    let x_875 : vec2<f32> = u_xlat12;
    let x_876 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
    let x_879 : bool = u_xlatb6.z;
    if (x_879) {
      let x_884 : f32 = u_xlat29.x;
      x_880 = x_884;
    } else {
      let x_887 : f32 = u_xlat9.x;
      x_880 = x_887;
    }
    let x_888 : f32 = x_880;
    u_xlat31.x = x_888;
    let x_891 : bool = u_xlatb6.w;
    if (x_891) {
      let x_896 : f32 = u_xlat29.y;
      x_892 = x_896;
    } else {
      let x_899 : f32 = u_xlat9.y;
      x_892 = x_899;
    }
    let x_900 : f32 = x_892;
    u_xlat31.y = x_900;
    let x_902 : vec2<f32> = u_xlat26;
    let x_903 : vec2<f32> = u_xlat31;
    u_xlat26 = (x_902 + x_903);
    let x_905 : vec2<f32> = u_xlat26;
    let x_909 : vec4<f32> = u_xlat4;
    u_xlat26 = ((x_905 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_909.x, x_909.y));
    let x_912 : vec2<f32> = u_xlat28;
    let x_913 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_912 + x_913);
    let x_915 : vec4<f32> = u_xlat9;
    let x_917 : vec2<f32> = u_xlat26;
    u_xlat26 = (vec2<f32>(x_915.x, x_915.y) + x_917);
    let x_919 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_919 * vec2<f32>(0.25f, 0.25f));
    let x_928 : i32 = u_xlati0.x;
    let x_930 : f32 = u_xlat26.x;
    TGSM2[x_928].value[0i] = bitcast<u32>(x_930);
    let x_934 : i32 = u_xlati0.x;
    let x_936 : f32 = u_xlat26.y;
    TGSM2[x_934].value[1i] = bitcast<u32>(x_936);
    let x_940 : bool = u_xlatb6.x;
    if (x_940) {
      let x_945 : f32 = u_xlat2.x;
      x_941 = x_945;
    } else {
      let x_948 : f32 = u_xlat8.x;
      x_941 = x_948;
    }
    let x_949 : f32 = x_941;
    u_xlat26.x = x_949;
    let x_952 : bool = u_xlatb6.y;
    if (x_952) {
      let x_957 : f32 = u_xlat2.y;
      x_953 = x_957;
    } else {
      let x_960 : f32 = u_xlat8.y;
      x_953 = x_960;
    }
    let x_961 : f32 = x_953;
    u_xlat26.y = x_961;
    let x_964 : vec4<bool> = u_xlatb6;
    let x_969 : vec2<bool> = u_xlatb7;
    let x_974 : vec2<i32> = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_964.z, x_964.w)) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_969) * vec2<u32>(4294967295u, 4294967295u))));
    let x_975 : vec4<i32> = u_xlati2;
    u_xlati2 = vec4<i32>(x_974.x, x_974.y, x_975.z, x_975.w);
    let x_977 : vec4<i32> = u_xlati2;
    let x_981 : vec2<i32> = bitcast<vec2<i32>>((bitcast<vec2<u32>>(vec2<i32>(x_977.x, x_977.y)) & vec2<u32>(1u, 1u)));
    let x_982 : vec4<i32> = u_xlati2;
    u_xlati2 = vec4<i32>(x_981.x, x_981.y, x_982.z, x_982.w);
    let x_985 : i32 = u_xlati2.x;
    if ((x_985 != 0i)) {
      let x_991 : f32 = u_xlat3.x;
      x_987 = x_991;
    } else {
      let x_994 : f32 = u_xlat29.x;
      x_987 = x_994;
    }
    let x_995 : f32 = x_987;
    u_xlat12.x = x_995;
    let x_998 : i32 = u_xlati2.y;
    if ((x_998 != 0i)) {
      let x_1004 : f32 = u_xlat3.y;
      x_1000 = x_1004;
    } else {
      let x_1007 : f32 = u_xlat29.y;
      x_1000 = x_1007;
    }
    let x_1008 : f32 = x_1000;
    u_xlat12.y = x_1008;
    let x_1011 : i32 = u_xlati2.x;
    if ((x_1011 != 0i)) {
      let x_1017 : f32 = u_xlat29.x;
      x_1013 = x_1017;
    } else {
      let x_1020 : f32 = u_xlat3.x;
      x_1013 = x_1020;
    }
    let x_1021 : f32 = x_1013;
    u_xlat4.x = x_1021;
    let x_1024 : i32 = u_xlati2.y;
    if ((x_1024 != 0i)) {
      let x_1030 : f32 = u_xlat29.y;
      x_1026 = x_1030;
    } else {
      let x_1033 : f32 = u_xlat3.y;
      x_1026 = x_1033;
    }
    let x_1034 : f32 = x_1026;
    u_xlat4.y = x_1034;
    let x_1036 : vec2<f32> = u_xlat12;
    let x_1037 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1036.x, x_1036.y, x_1037.z, x_1037.w);
    let x_1040 : bool = u_xlatb7.x;
    if (x_1040) {
      let x_1045 : f32 = u_xlat30.x;
      x_1041 = x_1045;
    } else {
      let x_1048 : f32 = u_xlat4.x;
      x_1041 = x_1048;
    }
    let x_1049 : f32 = x_1041;
    u_xlat31.x = x_1049;
    let x_1052 : bool = u_xlatb7.y;
    if (x_1052) {
      let x_1057 : f32 = u_xlat30.y;
      x_1053 = x_1057;
    } else {
      let x_1060 : f32 = u_xlat4.y;
      x_1053 = x_1060;
    }
    let x_1061 : f32 = x_1053;
    u_xlat31.y = x_1061;
    let x_1063 : vec2<f32> = u_xlat26;
    let x_1064 : vec2<f32> = u_xlat31;
    u_xlat26 = (x_1063 + x_1064);
    let x_1066 : vec2<f32> = u_xlat26;
    let x_1068 : vec4<f32> = u_xlat8;
    u_xlat26 = ((x_1066 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1068.x, x_1068.y));
    let x_1071 : vec4<f32> = u_xlat3;
    let x_1073 : vec2<f32> = u_xlat26;
    u_xlat26 = (vec2<f32>(x_1071.x, x_1071.y) + x_1073);
    let x_1075 : vec4<f32> = u_xlat4;
    let x_1077 : vec2<f32> = u_xlat26;
    u_xlat26 = (vec2<f32>(x_1075.x, x_1075.y) + x_1077);
    let x_1079 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1079 * vec2<f32>(0.25f, 0.25f));
    let x_1082 : i32 = u_xlati1.x;
    let x_1084 : f32 = u_xlat26.x;
    TGSM2[x_1082].value[0i] = bitcast<u32>(x_1084);
    let x_1088 : i32 = u_xlati1.x;
    let x_1090 : f32 = u_xlat26.y;
    TGSM2[x_1088].value[1i] = bitcast<u32>(x_1090);
    let x_1094 : bool = u_xlatb6.z;
    if (x_1094) {
      let x_1099 : f32 = u_xlat28.x;
      x_1095 = x_1099;
    } else {
      let x_1102 : f32 = u_xlat2.x;
      x_1095 = x_1102;
    }
    let x_1103 : f32 = x_1095;
    u_xlat26.x = x_1103;
    let x_1106 : bool = u_xlatb6.w;
    if (x_1106) {
      let x_1111 : f32 = u_xlat28.y;
      x_1107 = x_1111;
    } else {
      let x_1114 : f32 = u_xlat2.y;
      x_1107 = x_1114;
    }
    let x_1115 : f32 = x_1107;
    u_xlat26.y = x_1115;
    let x_1118 : vec2<bool> = u_xlatb7;
    let x_1122 : vec2<bool> = u_xlatb27;
    u_xlati28 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1118) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1122) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1128 : vec2<i32> = u_xlati28;
    u_xlati28 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1128) & vec2<u32>(1u, 1u)));
    let x_1133 : i32 = u_xlati28.x;
    if ((x_1133 != 0i)) {
      let x_1139 : f32 = u_xlat30.x;
      x_1135 = x_1139;
    } else {
      let x_1142 : f32 = u_xlat29.x;
      x_1135 = x_1142;
    }
    let x_1143 : f32 = x_1135;
    u_xlat28.x = x_1143;
    let x_1146 : i32 = u_xlati28.y;
    if ((x_1146 != 0i)) {
      let x_1152 : f32 = u_xlat30.y;
      x_1148 = x_1152;
    } else {
      let x_1155 : f32 = u_xlat29.y;
      x_1148 = x_1155;
    }
    let x_1156 : f32 = x_1148;
    u_xlat28.y = x_1156;
    let x_1159 : bool = u_xlatb27.x;
    if (x_1159) {
      let x_1164 : f32 = u_xlat5.x;
      x_1160 = x_1164;
    } else {
      let x_1167 : f32 = u_xlat28.x;
      x_1160 = x_1167;
    }
    let x_1168 : f32 = x_1160;
    u_xlat1.x = x_1168;
    let x_1171 : bool = u_xlatb27.y;
    if (x_1171) {
      let x_1176 : f32 = u_xlat5.y;
      x_1172 = x_1176;
    } else {
      let x_1179 : f32 = u_xlat28.y;
      x_1172 = x_1179;
    }
    let x_1180 : f32 = x_1172;
    u_xlat1.z = x_1180;
    let x_1182 : vec2<f32> = u_xlat26;
    let x_1183 : vec4<f32> = u_xlat1;
    u_xlat26 = (x_1182 + vec2<f32>(x_1183.x, x_1183.z));
    let x_1186 : vec2<f32> = u_xlat26;
    let x_1188 : vec4<f32> = u_xlat2;
    u_xlat26 = ((x_1186 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1188.x, x_1188.y));
    let x_1191 : vec2<f32> = u_xlat29;
    let x_1192 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1191 + x_1192);
    let x_1194 : vec2<f32> = u_xlat28;
    let x_1195 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1194 + x_1195);
    let x_1197 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1197 * vec2<f32>(0.25f, 0.25f));
    let x_1200 : i32 = u_xlati1.y;
    let x_1202 : f32 = u_xlat26.x;
    TGSM2[x_1200].value[0i] = bitcast<u32>(x_1202);
    let x_1206 : i32 = u_xlati1.y;
    let x_1208 : f32 = u_xlat26.y;
    TGSM2[x_1206].value[1i] = bitcast<u32>(x_1208);
  }
  workgroupBarrier();
  let x_1212 : bool = u_xlatb0.y;
  if (x_1212) {
    let x_1215 : u32 = gl_LocalInvocationIndex;
    u_xlatu0 = (x_1215 / 9u);
    let x_1218 : u32 = gl_LocalInvocationIndex;
    u_xlatu1 = (x_1218 % 9u);
    let x_1220 : u32 = u_xlatu0;
    let x_1223 : u32 = u_xlatu1;
    u_xlati0.x = ((bitcast<i32>(x_1220) * 32i) + bitcast<i32>(x_1223));
    let x_1228 : i32 = u_xlati0.x;
    let x_1230 : u32 = TGSM2[x_1228].value[0i];
    let x_1233 : i32 = u_xlati0.x;
    let x_1235 : u32 = TGSM2[x_1233].value[1i];
    u_xlat13 = vec2<f32>(bitcast<f32>(x_1230), bitcast<f32>(x_1235));
    let x_1239 : i32 = u_xlati0.x;
    u_xlati39 = (x_1239 + 16i);
    let x_1241 : i32 = u_xlati39;
    let x_1243 : u32 = TGSM2[x_1241].value[0i];
    let x_1245 : i32 = u_xlati39;
    let x_1247 : u32 = TGSM2[x_1245].value[1i];
    let x_1249 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1243), bitcast<f32>(x_1247));
    let x_1250 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1249.x, x_1249.y, x_1250.z, x_1250.w);
    let x_1252 : vec4<i32> = u_xlati0;
    u_xlati2 = (vec4<i32>(x_1252.x, x_1252.x, x_1252.x, x_1252.x) + vec4<i32>(32i, 48i, 64i, 80i));
    let x_1260 : i32 = u_xlati2.x;
    let x_1262 : u32 = TGSM2[x_1260].value[0i];
    let x_1265 : i32 = u_xlati2.x;
    let x_1267 : u32 = TGSM2[x_1265].value[1i];
    u_xlat27 = vec2<f32>(bitcast<f32>(x_1262), bitcast<f32>(x_1267));
    let x_1271 : i32 = u_xlati2.y;
    let x_1273 : u32 = TGSM2[x_1271].value[0i];
    let x_1276 : i32 = u_xlati2.y;
    let x_1278 : u32 = TGSM2[x_1276].value[1i];
    let x_1280 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1273), bitcast<f32>(x_1278));
    let x_1281 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1280.x, x_1280.y, x_1281.z, x_1281.w);
    let x_1284 : i32 = u_xlati2.z;
    let x_1286 : u32 = TGSM2[x_1284].value[0i];
    let x_1289 : i32 = u_xlati2.z;
    let x_1291 : u32 = TGSM2[x_1289].value[1i];
    let x_1293 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1286), bitcast<f32>(x_1291));
    let x_1294 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1293.x, x_1293.y, x_1294.z, x_1294.w);
    let x_1297 : i32 = u_xlati2.w;
    let x_1299 : u32 = TGSM2[x_1297].value[0i];
    let x_1302 : i32 = u_xlati2.w;
    let x_1304 : u32 = TGSM2[x_1302].value[1i];
    u_xlat28 = vec2<f32>(bitcast<f32>(x_1299), bitcast<f32>(x_1304));
    let x_1307 : vec4<i32> = u_xlati0;
    u_xlati4 = (vec4<i32>(x_1307.x, x_1307.x, x_1307.x, x_1307.x) + vec4<i32>(2i, 18i, 34i, 50i));
    let x_1315 : i32 = u_xlati4.x;
    let x_1317 : u32 = TGSM0[x_1315].value[0i];
    let x_1320 : i32 = u_xlati4.x;
    let x_1322 : u32 = TGSM0[x_1320].value[1i];
    u_xlat29 = vec2<f32>(bitcast<f32>(x_1317), bitcast<f32>(x_1322));
    let x_1326 : i32 = u_xlati4.y;
    let x_1328 : u32 = TGSM0[x_1326].value[0i];
    let x_1331 : i32 = u_xlati4.y;
    let x_1333 : u32 = TGSM0[x_1331].value[1i];
    let x_1335 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1328), bitcast<f32>(x_1333));
    let x_1336 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1335.x, x_1335.y, x_1336.z, x_1336.w);
    let x_1339 : i32 = u_xlati4.z;
    let x_1341 : u32 = TGSM0[x_1339].value[0i];
    let x_1344 : i32 = u_xlati4.z;
    let x_1346 : u32 = TGSM0[x_1344].value[1i];
    let x_1348 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1341), bitcast<f32>(x_1346));
    let x_1349 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1348.x, x_1348.y, x_1349.z, x_1349.w);
    let x_1352 : i32 = u_xlati4.w;
    let x_1354 : u32 = TGSM0[x_1352].value[0i];
    let x_1357 : i32 = u_xlati4.w;
    let x_1359 : u32 = TGSM0[x_1357].value[1i];
    u_xlat30 = vec2<f32>(bitcast<f32>(x_1354), bitcast<f32>(x_1359));
    let x_1362 : vec4<i32> = u_xlati0;
    u_xlati31 = (vec2<i32>(x_1362.x, x_1362.x) + vec2<i32>(66i, 82i));
    let x_1369 : i32 = u_xlati31.x;
    let x_1371 : u32 = TGSM0[x_1369].value[0i];
    let x_1374 : i32 = u_xlati31.x;
    let x_1376 : u32 = TGSM0[x_1374].value[1i];
    let x_1378 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1371), bitcast<f32>(x_1376));
    let x_1379 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1378.x, x_1378.y, x_1379.z, x_1379.w);
    let x_1382 : i32 = u_xlati31.y;
    let x_1384 : u32 = TGSM0[x_1382].value[0i];
    let x_1387 : i32 = u_xlati31.y;
    let x_1389 : u32 = TGSM0[x_1387].value[1i];
    u_xlat31 = vec2<f32>(bitcast<f32>(x_1384), bitcast<f32>(x_1389));
    let x_1392 : vec2<f32> = u_xlat29;
    let x_1394 : vec4<f32> = u_xlat4;
    u_xlat29 = (-(x_1392) + vec2<f32>(x_1394.x, x_1394.y));
    let x_1397 : vec4<f32> = u_xlat4;
    let x_1400 : vec4<f32> = u_xlat5;
    let x_1402 : vec2<f32> = (-(vec2<f32>(x_1397.x, x_1397.y)) + vec2<f32>(x_1400.x, x_1400.y));
    let x_1403 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1402.x, x_1402.y, x_1403.z, x_1403.w);
    let x_1405 : vec4<f32> = u_xlat5;
    let x_1408 : vec2<f32> = u_xlat30;
    let x_1409 : vec2<f32> = (-(vec2<f32>(x_1405.x, x_1405.y)) + x_1408);
    let x_1410 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1409.x, x_1409.y, x_1410.z, x_1410.w);
    let x_1412 : vec2<f32> = u_xlat30;
    let x_1414 : vec4<f32> = u_xlat6;
    u_xlat30 = (-(x_1412) + vec2<f32>(x_1414.x, x_1414.y));
    let x_1417 : vec4<f32> = u_xlat6;
    let x_1420 : vec2<f32> = u_xlat31;
    u_xlat31 = (-(vec2<f32>(x_1417.x, x_1417.y)) + x_1420);
    let x_1422 : vec2<f32> = u_xlat29;
    let x_1423 : vec2<f32> = u_xlat29;
    let x_1426 : vec4<f32> = x_66.AdditionalParams;
    let x_1428 : vec2<f32> = ((x_1422 * x_1423) + vec2<f32>(x_1426.y, x_1426.y));
    let x_1429 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1428.x, x_1428.y, x_1429.z, x_1429.w);
    let x_1431 : vec4<f32> = u_xlat4;
    let x_1433 : vec4<f32> = u_xlat4;
    let x_1437 : vec4<f32> = x_66.AdditionalParams;
    u_xlat32 = ((vec2<f32>(x_1431.x, x_1431.y) * vec2<f32>(x_1433.x, x_1433.y)) + vec2<f32>(x_1437.y, x_1437.y));
    let x_1440 : vec4<f32> = u_xlat5;
    let x_1442 : vec4<f32> = u_xlat5;
    let x_1446 : vec4<f32> = x_66.AdditionalParams;
    let x_1448 : vec2<f32> = ((vec2<f32>(x_1440.x, x_1440.y) * vec2<f32>(x_1442.x, x_1442.y)) + vec2<f32>(x_1446.y, x_1446.y));
    let x_1449 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1448.x, x_1448.y, x_1449.z, x_1449.w);
    let x_1451 : vec2<f32> = u_xlat30;
    let x_1452 : vec2<f32> = u_xlat30;
    let x_1455 : vec4<f32> = x_66.AdditionalParams;
    u_xlat33 = ((x_1451 * x_1452) + vec2<f32>(x_1455.y, x_1455.y));
    let x_1458 : vec2<f32> = u_xlat31;
    let x_1459 : vec2<f32> = u_xlat31;
    let x_1462 : vec4<f32> = x_66.AdditionalParams;
    let x_1464 : vec2<f32> = ((x_1458 * x_1459) + vec2<f32>(x_1462.y, x_1462.y));
    let x_1465 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1464.x, x_1464.y, x_1465.z, x_1465.w);
    let x_1467 : vec2<f32> = u_xlat29;
    let x_1468 : vec4<f32> = u_xlat4;
    let x_1472 : vec4<f32> = x_66.AdditionalParams;
    u_xlat29 = ((x_1467 * vec2<f32>(x_1468.x, x_1468.y)) + vec2<f32>(x_1472.y, x_1472.y));
    let x_1475 : vec2<f32> = u_xlat29;
    let x_1476 : vec2<f32> = u_xlat29;
    u_xlat29 = (x_1475 * x_1476);
    let x_1478 : vec2<f32> = u_xlat32;
    let x_1479 : vec4<f32> = u_xlat6;
    let x_1481 : vec2<f32> = (x_1478 * vec2<f32>(x_1479.x, x_1479.y));
    let x_1482 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1481.x, x_1481.y, x_1482.z, x_1482.w);
    let x_1484 : vec4<f32> = u_xlat4;
    let x_1486 : vec4<f32> = u_xlat5;
    let x_1490 : vec4<f32> = x_66.AdditionalParams;
    let x_1492 : vec2<f32> = ((vec2<f32>(x_1484.x, x_1484.y) * vec2<f32>(x_1486.x, x_1486.y)) + vec2<f32>(x_1490.y, x_1490.y));
    let x_1493 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1492.x, x_1492.y, x_1493.z, x_1493.w);
    let x_1495 : vec2<f32> = u_xlat32;
    let x_1496 : vec4<f32> = u_xlat7;
    let x_1498 : vec2<f32> = (x_1495 * vec2<f32>(x_1496.x, x_1496.y));
    let x_1499 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1499.x, x_1499.y, x_1498.x, x_1498.y);
    let x_1501 : vec4<f32> = u_xlat6;
    let x_1503 : vec4<f32> = x_66.AdditionalParams;
    u_xlat6 = (x_1501 * vec4<f32>(x_1503.z, x_1503.z, x_1503.z, x_1503.z));
    let x_1506 : vec4<f32> = u_xlat5;
    let x_1508 : vec2<f32> = u_xlat30;
    let x_1511 : vec4<f32> = x_66.AdditionalParams;
    let x_1513 : vec2<f32> = ((vec2<f32>(x_1506.x, x_1506.y) * x_1508) + vec2<f32>(x_1511.y, x_1511.y));
    let x_1514 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1513.x, x_1513.y, x_1514.z, x_1514.w);
    let x_1516 : vec4<f32> = u_xlat5;
    let x_1518 : vec4<f32> = u_xlat5;
    let x_1520 : vec2<f32> = (vec2<f32>(x_1516.x, x_1516.y) * vec2<f32>(x_1518.x, x_1518.y));
    let x_1521 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1520.x, x_1520.y, x_1521.z, x_1521.w);
    let x_1523 : vec2<f32> = u_xlat33;
    let x_1524 : vec4<f32> = u_xlat7;
    let x_1526 : vec2<f32> = (x_1523 * vec2<f32>(x_1524.x, x_1524.y));
    let x_1527 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1526.x, x_1526.y, x_1527.z, x_1527.w);
    let x_1529 : vec4<f32> = u_xlat7;
    let x_1532 : vec4<f32> = x_66.AdditionalParams;
    let x_1534 : vec2<f32> = (vec2<f32>(x_1529.x, x_1529.y) * vec2<f32>(x_1532.z, x_1532.z));
    let x_1535 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1534.x, x_1534.y, x_1535.z, x_1535.w);
    let x_1537 : vec2<f32> = u_xlat30;
    let x_1538 : vec2<f32> = u_xlat31;
    let x_1541 : vec4<f32> = x_66.AdditionalParams;
    let x_1543 : vec2<f32> = ((x_1537 * x_1538) + vec2<f32>(x_1541.y, x_1541.y));
    let x_1544 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1544.x, x_1544.y, x_1543.x, x_1543.y);
    let x_1546 : vec4<f32> = u_xlat4;
    let x_1547 : vec4<f32> = u_xlat4;
    u_xlat4 = (x_1546 * x_1547);
    let x_1549 : vec2<f32> = u_xlat33;
    let x_1550 : vec4<f32> = u_xlat8;
    u_xlat31 = (x_1549 * vec2<f32>(x_1550.x, x_1550.y));
    let x_1553 : vec2<f32> = u_xlat31;
    let x_1555 : vec4<f32> = x_66.AdditionalParams;
    u_xlat31 = (x_1553 * vec2<f32>(x_1555.z, x_1555.z));
    let x_1559 : vec4<f32> = u_xlat6;
    let x_1561 : vec2<f32> = u_xlat29;
    let x_1563 : vec4<bool> = (vec4<f32>(x_1559.x, x_1559.y, x_1559.x, x_1559.y) < vec4<f32>(x_1561.x, x_1561.y, x_1561.x, x_1561.y));
    u_xlatb29 = vec2<bool>(x_1563.x, x_1563.y);
    let x_1566 : vec4<f32> = u_xlat6;
    let x_1568 : vec4<f32> = u_xlat4;
    let x_1570 : vec4<bool> = (vec4<f32>(x_1566.z, x_1566.w, x_1566.z, x_1566.z) < vec4<f32>(x_1568.x, x_1568.y, x_1568.x, x_1568.x));
    u_xlatb4 = vec2<bool>(x_1570.x, x_1570.y);
    let x_1573 : vec4<f32> = u_xlat7;
    let x_1575 : vec4<f32> = u_xlat5;
    let x_1577 : vec4<bool> = (vec4<f32>(x_1573.x, x_1573.y, x_1573.x, x_1573.x) < vec4<f32>(x_1575.x, x_1575.y, x_1575.x, x_1575.x));
    u_xlatb5 = vec2<bool>(x_1577.x, x_1577.y);
    let x_1580 : vec2<f32> = u_xlat31;
    let x_1582 : vec4<f32> = u_xlat4;
    let x_1584 : vec4<bool> = (vec4<f32>(x_1580.x, x_1580.y, x_1580.x, x_1580.y) < vec4<f32>(x_1582.z, x_1582.w, x_1582.z, x_1582.w));
    u_xlatb30 = vec2<bool>(x_1584.x, x_1584.y);
    let x_1586 : vec2<bool> = u_xlatb29;
    let x_1590 : vec2<bool> = u_xlatb4;
    u_xlati31 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1586) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1590) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1596 : vec2<i32> = u_xlati31;
    u_xlati31 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1596) & vec2<u32>(1u, 1u)));
    let x_1601 : i32 = u_xlati31.x;
    if ((x_1601 != 0i)) {
      let x_1607 : f32 = u_xlat1.x;
      x_1603 = x_1607;
    } else {
      let x_1610 : f32 = u_xlat27.x;
      x_1603 = x_1610;
    }
    let x_1611 : f32 = x_1603;
    u_xlat31.x = x_1611;
    let x_1614 : i32 = u_xlati31.y;
    if ((x_1614 != 0i)) {
      let x_1620 : f32 = u_xlat1.y;
      x_1616 = x_1620;
    } else {
      let x_1623 : f32 = u_xlat27.y;
      x_1616 = x_1623;
    }
    let x_1624 : f32 = x_1616;
    u_xlat31.y = x_1624;
    let x_1627 : vec2<f32> = u_xlat13;
    hlslcc_movcTemp_1 = x_1627;
    let x_1629 : bool = u_xlatb29.x;
    if (x_1629) {
      let x_1634 : f32 = u_xlat13.x;
      x_1630 = x_1634;
    } else {
      let x_1637 : f32 = u_xlat31.x;
      x_1630 = x_1637;
    }
    let x_1638 : f32 = x_1630;
    hlslcc_movcTemp_1.x = x_1638;
    let x_1641 : bool = u_xlatb29.y;
    if (x_1641) {
      let x_1646 : f32 = u_xlat13.y;
      x_1642 = x_1646;
    } else {
      let x_1649 : f32 = u_xlat31.y;
      x_1642 = x_1649;
    }
    let x_1650 : f32 = x_1642;
    hlslcc_movcTemp_1.y = x_1650;
    let x_1652 : vec2<f32> = hlslcc_movcTemp_1;
    u_xlat13 = x_1652;
    let x_1654 : vec2<bool> = u_xlatb4;
    let x_1658 : vec2<bool> = u_xlatb5;
    u_xlati29 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1654) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1658) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1664 : vec2<i32> = u_xlati29;
    u_xlati29 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1664) & vec2<u32>(1u, 1u)));
    let x_1669 : i32 = u_xlati29.x;
    if ((x_1669 != 0i)) {
      let x_1675 : f32 = u_xlat27.x;
      x_1671 = x_1675;
    } else {
      let x_1678 : f32 = u_xlat2.x;
      x_1671 = x_1678;
    }
    let x_1679 : f32 = x_1671;
    u_xlat12.x = x_1679;
    let x_1682 : i32 = u_xlati29.y;
    if ((x_1682 != 0i)) {
      let x_1688 : f32 = u_xlat27.y;
      x_1684 = x_1688;
    } else {
      let x_1691 : f32 = u_xlat2.y;
      x_1684 = x_1691;
    }
    let x_1692 : f32 = x_1684;
    u_xlat12.y = x_1692;
    let x_1695 : i32 = u_xlati29.x;
    if ((x_1695 != 0i)) {
      let x_1701 : f32 = u_xlat2.x;
      x_1697 = x_1701;
    } else {
      let x_1704 : f32 = u_xlat27.x;
      x_1697 = x_1704;
    }
    let x_1705 : f32 = x_1697;
    u_xlat7.x = x_1705;
    let x_1708 : i32 = u_xlati29.y;
    if ((x_1708 != 0i)) {
      let x_1714 : f32 = u_xlat2.y;
      x_1710 = x_1714;
    } else {
      let x_1717 : f32 = u_xlat27.y;
      x_1710 = x_1717;
    }
    let x_1718 : f32 = x_1710;
    u_xlat7.y = x_1718;
    let x_1720 : vec2<f32> = u_xlat12;
    let x_1721 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1720.x, x_1720.y, x_1721.z, x_1721.w);
    let x_1724 : bool = u_xlatb5.x;
    if (x_1724) {
      let x_1729 : f32 = u_xlat3.x;
      x_1725 = x_1729;
    } else {
      let x_1732 : f32 = u_xlat7.x;
      x_1725 = x_1732;
    }
    let x_1733 : f32 = x_1725;
    u_xlat29.x = x_1733;
    let x_1736 : bool = u_xlatb5.y;
    if (x_1736) {
      let x_1741 : f32 = u_xlat3.y;
      x_1737 = x_1741;
    } else {
      let x_1744 : f32 = u_xlat7.y;
      x_1737 = x_1744;
    }
    let x_1745 : f32 = x_1737;
    u_xlat29.y = x_1745;
    let x_1747 : vec2<f32> = u_xlat13;
    let x_1748 : vec2<f32> = u_xlat29;
    u_xlat13 = (x_1747 + x_1748);
    let x_1750 : vec2<f32> = u_xlat13;
    let x_1752 : vec2<f32> = u_xlat31;
    u_xlat13 = ((x_1750 * vec2<f32>(0.5f, 0.5f)) + x_1752);
    let x_1754 : vec2<f32> = u_xlat27;
    let x_1755 : vec2<f32> = u_xlat13;
    u_xlat13 = (x_1754 + x_1755);
    let x_1757 : vec4<f32> = u_xlat7;
    let x_1759 : vec2<f32> = u_xlat13;
    u_xlat13 = (vec2<f32>(x_1757.x, x_1757.y) + x_1759);
    let x_1761 : vec2<f32> = u_xlat13;
    u_xlat13 = (x_1761 * vec2<f32>(0.25f, 0.25f));
    let x_1765 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp_2 = x_1765;
    let x_1767 : bool = u_xlatb4.x;
    if (x_1767) {
      let x_1772 : f32 = u_xlat1.x;
      x_1768 = x_1772;
    } else {
      let x_1775 : f32 = u_xlat6.x;
      x_1768 = x_1775;
    }
    let x_1776 : f32 = x_1768;
    hlslcc_movcTemp_2.x = x_1776;
    let x_1779 : bool = u_xlatb4.y;
    if (x_1779) {
      let x_1784 : f32 = u_xlat1.y;
      x_1780 = x_1784;
    } else {
      let x_1787 : f32 = u_xlat6.y;
      x_1780 = x_1787;
    }
    let x_1788 : f32 = x_1780;
    hlslcc_movcTemp_2.y = x_1788;
    let x_1790 : vec4<f32> = hlslcc_movcTemp_2;
    u_xlat1 = x_1790;
    let x_1791 : vec2<bool> = u_xlatb5;
    let x_1795 : vec2<bool> = u_xlatb30;
    u_xlati27 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1791) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1795) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1801 : vec2<i32> = u_xlati27;
    u_xlati27 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1801) & vec2<u32>(1u, 1u)));
    let x_1806 : i32 = u_xlati27.x;
    if ((x_1806 != 0i)) {
      let x_1812 : f32 = u_xlat3.x;
      x_1808 = x_1812;
    } else {
      let x_1815 : f32 = u_xlat2.x;
      x_1808 = x_1815;
    }
    let x_1816 : f32 = x_1808;
    u_xlat27.x = x_1816;
    let x_1819 : i32 = u_xlati27.y;
    if ((x_1819 != 0i)) {
      let x_1825 : f32 = u_xlat3.y;
      x_1821 = x_1825;
    } else {
      let x_1828 : f32 = u_xlat2.y;
      x_1821 = x_1828;
    }
    let x_1829 : f32 = x_1821;
    u_xlat27.y = x_1829;
    let x_1832 : vec2<f32> = u_xlat28;
    hlslcc_movcTemp_3 = x_1832;
    let x_1834 : bool = u_xlatb30.x;
    if (x_1834) {
      let x_1839 : f32 = u_xlat28.x;
      x_1835 = x_1839;
    } else {
      let x_1842 : f32 = u_xlat27.x;
      x_1835 = x_1842;
    }
    let x_1843 : f32 = x_1835;
    hlslcc_movcTemp_3.x = x_1843;
    let x_1846 : bool = u_xlatb30.y;
    if (x_1846) {
      let x_1851 : f32 = u_xlat28.y;
      x_1847 = x_1851;
    } else {
      let x_1854 : f32 = u_xlat27.y;
      x_1847 = x_1854;
    }
    let x_1855 : f32 = x_1847;
    hlslcc_movcTemp_3.y = x_1855;
    let x_1857 : vec2<f32> = hlslcc_movcTemp_3;
    u_xlat28 = x_1857;
    let x_1858 : vec4<f32> = u_xlat1;
    let x_1860 : vec2<f32> = u_xlat28;
    let x_1861 : vec2<f32> = (vec2<f32>(x_1858.x, x_1858.y) + x_1860);
    let x_1862 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1861.x, x_1861.y, x_1862.z, x_1862.w);
    let x_1864 : vec4<f32> = u_xlat1;
    let x_1867 : vec4<f32> = u_xlat6;
    let x_1869 : vec2<f32> = ((vec2<f32>(x_1864.x, x_1864.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1867.x, x_1867.y));
    let x_1870 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1869.x, x_1869.y, x_1870.z, x_1870.w);
    let x_1872 : vec4<f32> = u_xlat2;
    let x_1874 : vec4<f32> = u_xlat1;
    let x_1876 : vec2<f32> = (vec2<f32>(x_1872.x, x_1872.y) + vec2<f32>(x_1874.x, x_1874.y));
    let x_1877 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1876.x, x_1876.y, x_1877.z, x_1877.w);
    let x_1879 : vec2<f32> = u_xlat27;
    let x_1880 : vec4<f32> = u_xlat1;
    let x_1882 : vec2<f32> = (x_1879 + vec2<f32>(x_1880.x, x_1880.y));
    let x_1883 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1882.x, x_1882.y, x_1883.z, x_1883.w);
    let x_1885 : vec4<f32> = u_xlat1;
    let x_1887 : vec2<f32> = (vec2<f32>(x_1885.x, x_1885.y) * vec2<f32>(0.25f, 0.25f));
    let x_1888 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1887.x, x_1887.y, x_1888.z, x_1888.w);
    let x_1891 : i32 = u_xlati0.x;
    let x_1893 : f32 = u_xlat13.x;
    TGSM1[x_1891].value[0i] = bitcast<u32>(x_1893);
    let x_1897 : i32 = u_xlati0.x;
    let x_1899 : f32 = u_xlat13.y;
    TGSM1[x_1897].value[1i] = bitcast<u32>(x_1899);
    let x_1902 : i32 = u_xlati39;
    let x_1904 : f32 = u_xlat1.x;
    TGSM1[x_1902].value[0i] = bitcast<u32>(x_1904);
    let x_1907 : i32 = u_xlati39;
    let x_1909 : f32 = u_xlat1.y;
    TGSM1[x_1907].value[1i] = bitcast<u32>(x_1909);
  }
  workgroupBarrier();
  let x_1913 : u32 = gl_LocalInvocationID.y;
  let x_1917 : u32 = gl_LocalInvocationID.x;
  u_xlati0.x = ((bitcast<i32>(x_1913) * 16i) + bitcast<i32>(x_1917));
  let x_1921 : vec4<i32> = u_xlati0;
  u_xlati13 = (vec3<i32>(x_1921.x, x_1921.x, x_1921.x) + vec3<i32>(16i, 17i, 1i));
  let x_1926 : i32 = u_xlati13.x;
  let x_1928 : u32 = TGSM1[x_1926].value[0i];
  let x_1931 : i32 = u_xlati13.x;
  let x_1933 : u32 = TGSM1[x_1931].value[1i];
  let x_1935 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1928), bitcast<f32>(x_1933));
  let x_1936 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1935.x, x_1935.y, x_1936.z, x_1936.w);
  let x_1939 : i32 = u_xlati13.y;
  let x_1941 : u32 = TGSM1[x_1939].value[0i];
  let x_1944 : i32 = u_xlati13.y;
  let x_1946 : u32 = TGSM1[x_1944].value[1i];
  u_xlat13 = vec2<f32>(bitcast<f32>(x_1941), bitcast<f32>(x_1946));
  let x_1950 : i32 = u_xlati13.z;
  let x_1952 : u32 = TGSM1[x_1950].value[0i];
  let x_1955 : i32 = u_xlati13.z;
  let x_1957 : u32 = TGSM1[x_1955].value[1i];
  let x_1959 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1952), bitcast<f32>(x_1957));
  let x_1960 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1960.x, x_1960.y, x_1959.x, x_1959.y);
  let x_1963 : i32 = u_xlati0.x;
  let x_1965 : u32 = TGSM1[x_1963].value[1i];
  let x_1968 : i32 = u_xlati0.x;
  let x_1970 : u32 = TGSM1[x_1968].value[0i];
  let x_1972 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1965), bitcast<f32>(x_1970));
  let x_1973 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1972.x, x_1972.y, x_1973.z, x_1973.w);
  let x_1976 : vec3<u32> = gl_GlobalInvocationID;
  let x_1978 : vec2<f32> = vec2<f32>(vec2<u32>(x_1976.x, x_1976.y));
  let x_1979 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1978.x, x_1979.y, x_1979.z, x_1978.y);
  let x_1981 : vec4<f32> = u_xlat0;
  let x_1984 : vec4<f32> = x_66.InvLowResolution;
  let x_1986 : vec2<f32> = (vec2<f32>(x_1981.x, x_1981.w) * vec2<f32>(x_1984.x, x_1984.y));
  let x_1987 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1986.x, x_1987.y, x_1987.z, x_1986.y);
  let x_1991 : vec3<u32> = gl_GlobalInvocationID;
  u_xlatu3 = (vec4<u32>(x_1991.x, x_1991.y, x_1991.y, x_1991.y) << vec4<u32>(1u, 1u, 1u, 1u));
  let x_1995 : vec4<u32> = u_xlatu3;
  let x_1997 : vec2<f32> = vec2<f32>(vec2<u32>(x_1995.x, x_1995.w));
  let x_1998 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1997.x, x_1997.y, x_1998.z, x_1998.w);
  let x_2000 : vec4<f32> = u_xlat4;
  let x_2003 : vec4<f32> = x_66.InvHighResolution;
  let x_2005 : vec2<f32> = (vec2<f32>(x_2000.x, x_2000.y) * vec2<f32>(x_2003.x, x_2003.y));
  let x_2006 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2005.x, x_2005.y, x_2006.z, x_2006.w);
  let x_2011 : vec4<f32> = u_xlat0;
  let x_2013 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, vec2<f32>(x_2011.x, x_2011.w));
  u_xlat5 = x_2013;
  let x_2017 : vec4<f32> = u_xlat0;
  let x_2019 : vec4<f32> = textureGather(1i, LoResDB, samplerLoResDB, vec2<f32>(x_2017.x, x_2017.w));
  u_xlat6 = x_2019;
  let x_2025 : vec4<f32> = u_xlat4;
  let x_2027 : vec4<f32> = textureGather(0i, HiResDB, samplerHiResDB, vec2<f32>(x_2025.x, x_2025.y));
  u_xlat7 = x_2027;
  let x_2031 : vec4<f32> = u_xlat4;
  let x_2033 : vec4<f32> = textureGather(1i, HiResDB, samplerHiResDB, vec2<f32>(x_2031.x, x_2031.y));
  u_xlat4 = x_2033;
  let x_2035 : vec4<u32> = u_xlatu3;
  u_xlati8 = (bitcast<vec4<i32>>(vec4<u32>(x_2035.x, x_2035.w, x_2035.x, x_2035.w)) + vec4<i32>(-1i, 0i, 0i, -1i));
  let x_2041 : vec4<f32> = u_xlat5;
  let x_2043 : vec4<f32> = u_xlat7;
  u_xlat9 = (-(x_2041) + vec4<f32>(x_2043.x, x_2043.x, x_2043.x, x_2043.x));
  let x_2046 : vec4<f32> = u_xlat9;
  let x_2049 : vec4<f32> = x_66.AdditionalParams;
  u_xlat9 = (abs(x_2046) + vec4<f32>(x_2049.w, x_2049.w, x_2049.w, x_2049.w));
  let x_2055 : vec4<f32> = u_xlat9;
  u_xlat9 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2055);
  let x_2057 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_2057, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2061 : f32 = u_xlat13.x;
  u_xlat10.z = x_2061;
  let x_2063 : vec4<f32> = u_xlat1;
  let x_2064 : vec2<f32> = vec2<f32>(x_2063.x, x_2063.z);
  let x_2065 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2065.x, x_2064.x, x_2065.z, x_2064.y);
  let x_2068 : f32 = u_xlat2.y;
  u_xlat10.x = x_2068;
  let x_2070 : vec4<f32> = u_xlat10;
  let x_2072 : vec4<f32> = u_xlat9;
  u_xlat0.y = dot(vec4<f32>(x_2070.y, x_2070.z, x_2070.w, x_2070.x), x_2072);
  let x_2075 : vec4<f32> = u_xlat0;
  let x_2078 : vec4<f32> = x_66.AdditionalParams;
  let x_2080 : vec2<f32> = (vec2<f32>(x_2075.x, x_2075.y) + vec2<f32>(x_2078.x, x_2078.x));
  let x_2081 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2080.x, x_2080.y, x_2081.z, x_2081.w);
  let x_2084 : f32 = u_xlat0.y;
  let x_2086 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2084 / x_2086);
  let x_2090 : vec4<f32> = u_xlat0;
  let x_2094 : vec3<f32> = (-(vec3<f32>(x_2090.x, x_2090.x, x_2090.x)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_2095 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2094.x, x_2095.y, x_2094.y, x_2094.z);
  let x_2098 : vec4<f32> = u_xlat6;
  let x_2100 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_2098) + vec4<f32>(x_2100.x, x_2100.x, x_2100.x, x_2100.x));
  let x_2103 : vec4<f32> = u_xlat11;
  let x_2106 : vec4<f32> = x_66.AdditionalParams;
  u_xlat11 = (abs(x_2103) + vec4<f32>(x_2106.w, x_2106.w, x_2106.w, x_2106.w));
  let x_2109 : vec4<f32> = u_xlat11;
  u_xlat11 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2109);
  let x_2111 : vec4<f32> = u_xlat11;
  u_xlat0.x = dot(x_2111, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2115 : f32 = u_xlat13.y;
  u_xlat2.z = x_2115;
  let x_2117 : vec4<f32> = u_xlat1;
  let x_2118 : vec2<f32> = vec2<f32>(x_2117.y, x_2117.w);
  let x_2119 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2119.x, x_2118.x, x_2119.z, x_2118.y);
  let x_2121 : vec4<f32> = u_xlat2;
  let x_2123 : vec4<f32> = u_xlat11;
  u_xlat0.y = dot(vec4<f32>(x_2121.y, x_2121.z, x_2121.w, x_2121.x), x_2123);
  let x_2126 : vec4<f32> = u_xlat0;
  let x_2129 : vec4<f32> = x_66.AdditionalParams;
  let x_2131 : vec2<f32> = (vec2<f32>(x_2126.x, x_2126.y) + vec2<f32>(x_2129.x, x_2129.x));
  let x_2132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2131.x, x_2131.y, x_2132.z, x_2132.w);
  let x_2135 : f32 = u_xlat0.y;
  let x_2137 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2135 / x_2137);
  let x_2141 : f32 = u_xlat0.x;
  u_xlat9.y = (-(x_2141) + 1.0f);
  let x_2149 : vec4<i32> = u_xlati8;
  let x_2151 : vec4<f32> = u_xlat9;
  textureStore(AoResult_origX0X, vec2<i32>(x_2149.x, x_2149.y), x_2151);
  let x_2152 : vec4<f32> = u_xlat5;
  let x_2155 : vec4<f32> = u_xlat7;
  u_xlat0 = (-(vec4<f32>(x_2152.y, x_2152.z, x_2152.w, x_2152.x)) + vec4<f32>(x_2155.y, x_2155.y, x_2155.y, x_2155.y));
  let x_2158 : vec4<f32> = u_xlat0;
  let x_2161 : vec4<f32> = x_66.AdditionalParams;
  u_xlat0 = (abs(x_2158) + vec4<f32>(x_2161.w, x_2161.w, x_2161.w, x_2161.w));
  let x_2164 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2164);
  let x_2166 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_2166, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2170 : f32 = u_xlat1.x;
  let x_2173 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2170 + x_2173);
  let x_2176 : vec4<f32> = u_xlat10;
  let x_2178 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec4<f32>(x_2176.z, x_2176.w, x_2176.x, x_2176.y), x_2178);
  let x_2182 : f32 = u_xlat0.x;
  let x_2184 : f32 = x_66.AdditionalParams.x;
  u_xlat0.x = (x_2182 + x_2184);
  let x_2188 : f32 = u_xlat0.x;
  let x_2190 : f32 = u_xlat1.x;
  u_xlat0.x = (x_2188 / x_2190);
  let x_2193 : vec4<f32> = u_xlat0;
  let x_2196 : vec3<f32> = (-(vec3<f32>(x_2193.x, x_2193.x, x_2193.x)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_2197 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2196.x, x_2197.y, x_2196.y, x_2196.z);
  let x_2199 : vec4<f32> = u_xlat6;
  let x_2202 : vec4<f32> = u_xlat4;
  u_xlat1 = (-(vec4<f32>(x_2199.y, x_2199.z, x_2199.w, x_2199.x)) + vec4<f32>(x_2202.y, x_2202.y, x_2202.y, x_2202.y));
  let x_2205 : vec4<f32> = u_xlat1;
  let x_2208 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2205) + vec4<f32>(x_2208.w, x_2208.w, x_2208.w, x_2208.w));
  let x_2211 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2211);
  let x_2213 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_2213, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2217 : f32 = u_xlat4.x;
  let x_2219 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2217 + x_2219);
  let x_2222 : vec4<f32> = u_xlat2;
  let x_2224 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec4<f32>(x_2222.z, x_2222.w, x_2222.x, x_2222.y), x_2224);
  let x_2228 : f32 = u_xlat1.x;
  let x_2230 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2228 + x_2230);
  let x_2234 : f32 = u_xlat1.x;
  let x_2236 : f32 = u_xlat4.x;
  u_xlat1.x = (x_2234 / x_2236);
  let x_2240 : f32 = u_xlat1.x;
  u_xlat0.y = (-(x_2240) + 1.0f);
  let x_2245 : vec4<u32> = u_xlatu3;
  let x_2248 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_2245.x, x_2245.w)), x_2248);
  let x_2249 : vec4<f32> = u_xlat5;
  let x_2252 : vec4<f32> = u_xlat7;
  u_xlat0 = (-(vec4<f32>(x_2249.z, x_2249.w, x_2249.x, x_2249.y)) + vec4<f32>(x_2252.z, x_2252.z, x_2252.z, x_2252.z));
  let x_2255 : vec4<f32> = u_xlat0;
  let x_2258 : vec4<f32> = x_66.AdditionalParams;
  u_xlat0 = (abs(x_2255) + vec4<f32>(x_2258.w, x_2258.w, x_2258.w, x_2258.w));
  let x_2261 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2261);
  let x_2263 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_2263, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2267 : f32 = u_xlat1.x;
  let x_2269 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2267 + x_2269);
  let x_2272 : vec4<f32> = u_xlat10;
  let x_2274 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec4<f32>(x_2272.w, x_2272.x, x_2272.y, x_2272.z), x_2274);
  let x_2278 : f32 = u_xlat0.x;
  let x_2280 : f32 = x_66.AdditionalParams.x;
  u_xlat0.x = (x_2278 + x_2280);
  let x_2284 : f32 = u_xlat0.x;
  let x_2286 : f32 = u_xlat1.x;
  u_xlat0.x = (x_2284 / x_2286);
  let x_2289 : vec4<f32> = u_xlat0;
  let x_2292 : vec3<f32> = (-(vec3<f32>(x_2289.x, x_2289.x, x_2289.x)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_2293 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2292.x, x_2293.y, x_2292.y, x_2292.z);
  let x_2295 : vec4<f32> = u_xlat6;
  let x_2298 : vec4<f32> = u_xlat4;
  u_xlat1 = (-(vec4<f32>(x_2295.z, x_2295.w, x_2295.x, x_2295.y)) + vec4<f32>(x_2298.z, x_2298.z, x_2298.z, x_2298.z));
  let x_2301 : vec4<f32> = u_xlat1;
  let x_2304 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2301) + vec4<f32>(x_2304.w, x_2304.w, x_2304.w, x_2304.w));
  let x_2307 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2307);
  let x_2309 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_2309, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2313 : f32 = u_xlat4.x;
  let x_2315 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2313 + x_2315);
  let x_2318 : vec4<f32> = u_xlat2;
  let x_2320 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec4<f32>(x_2318.w, x_2318.x, x_2318.y, x_2318.z), x_2320);
  let x_2324 : f32 = u_xlat1.x;
  let x_2326 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2324 + x_2326);
  let x_2330 : f32 = u_xlat1.x;
  let x_2332 : f32 = u_xlat4.x;
  u_xlat1.x = (x_2330 / x_2332);
  let x_2336 : f32 = u_xlat1.x;
  u_xlat0.y = (-(x_2336) + 1.0f);
  let x_2341 : vec4<i32> = u_xlati8;
  let x_2343 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_2341.z, x_2341.w), x_2343);
  let x_2344 : vec4<u32> = u_xlatu3;
  u_xlati0 = (bitcast<vec4<i32>>(x_2344) + vec4<i32>(-1i, -1i, -1i, -1i));
  let x_2348 : vec4<f32> = u_xlat5;
  let x_2351 : vec4<f32> = u_xlat7;
  u_xlat1 = (-(vec4<f32>(x_2348.w, x_2348.x, x_2348.y, x_2348.z)) + vec4<f32>(x_2351.w, x_2351.w, x_2351.w, x_2351.w));
  let x_2354 : vec4<f32> = u_xlat1;
  let x_2357 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2354) + vec4<f32>(x_2357.w, x_2357.w, x_2357.w, x_2357.w));
  let x_2360 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2360);
  let x_2362 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_2362, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2366 : f32 = u_xlat3.x;
  let x_2368 : f32 = x_66.AdditionalParams.x;
  u_xlat3.x = (x_2366 + x_2368);
  let x_2371 : vec4<f32> = u_xlat10;
  let x_2372 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(x_2371, x_2372);
  let x_2376 : f32 = u_xlat1.x;
  let x_2378 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2376 + x_2378);
  let x_2382 : f32 = u_xlat1.x;
  let x_2384 : f32 = u_xlat3.x;
  u_xlat1.x = (x_2382 / x_2384);
  let x_2387 : vec4<f32> = u_xlat1;
  let x_2390 : vec3<f32> = (-(vec3<f32>(x_2387.x, x_2387.x, x_2387.x)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_2391 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2390.x, x_2391.y, x_2390.y, x_2390.z);
  let x_2393 : vec4<f32> = u_xlat6;
  let x_2396 : vec4<f32> = u_xlat4;
  u_xlat3 = (-(vec4<f32>(x_2393.w, x_2393.x, x_2393.y, x_2393.z)) + vec4<f32>(x_2396.w, x_2396.w, x_2396.w, x_2396.w));
  let x_2399 : vec4<f32> = u_xlat3;
  let x_2402 : vec4<f32> = x_66.AdditionalParams;
  u_xlat3 = (abs(x_2399) + vec4<f32>(x_2402.w, x_2402.w, x_2402.w, x_2402.w));
  let x_2405 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2405);
  let x_2407 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_2407, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2411 : f32 = u_xlat4.x;
  let x_2413 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2411 + x_2413);
  let x_2416 : vec4<f32> = u_xlat2;
  let x_2417 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_2416, x_2417);
  let x_2421 : f32 = u_xlat2.x;
  let x_2423 : f32 = x_66.AdditionalParams.x;
  u_xlat2.x = (x_2421 + x_2423);
  let x_2427 : f32 = u_xlat2.x;
  let x_2429 : f32 = u_xlat4.x;
  u_xlat2.x = (x_2427 / x_2429);
  let x_2433 : f32 = u_xlat2.x;
  u_xlat1.y = (-(x_2433) + 1.0f);
  let x_2438 : vec4<i32> = u_xlati0;
  let x_2440 : vec4<f32> = u_xlat1;
  textureStore(AoResult_origX0X, vec2<i32>(x_2438.x, x_2438.y), x_2440);
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn main(@builtin(local_invocation_id) gl_LocalInvocationID_param : vec3<u32>, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_LocalInvocationID = gl_LocalInvocationID_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

