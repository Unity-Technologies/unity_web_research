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

var<private> u_xlati15 : vec3<i32>;

var<private> gl_GlobalInvocationID : vec3<u32>;

var<private> u_xlat15 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_66 : CB1;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var LoResAO1 : texture_2d<f32>;

@group(0) @binding(8) var samplerLoResAO1 : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<workgroup> TGSM1 : array<S, 256u>;

var<private> u_xlati45 : i32;

var<private> u_xlati31 : vec2<i32>;

@group(0) @binding(1) var LoResDB : texture_2d<f32>;

@group(0) @binding(6) var samplerLoResDB : sampler;

var<private> u_xlat4 : vec4<f32>;

var<workgroup> TGSM0 : array<S_1, 256u>;

var<private> u_xlatb0 : vec2<bool>;

var<private> gl_LocalInvocationIndex : u32;

var<private> u_xlatu0 : u32;

var<private> u_xlatu1 : u32;

var<private> u_xlati30 : i32;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlati1 : vec4<i32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlati4 : vec4<i32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat36 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat37 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlatb35 : vec2<bool>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatb31 : vec2<bool>;

var<private> u_xlati35 : vec2<i32>;

var<private> u_xlat14 : vec2<f32>;

var<workgroup> TGSM2 : array<S_2, 256u>;

var<private> u_xlati2 : vec4<i32>;

var<private> u_xlati32 : vec2<i32>;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatb34 : vec2<bool>;

var<private> u_xlati33 : vec2<i32>;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlatu3 : vec4<u32>;

@group(0) @binding(4) var HiResAO : texture_2d<f32>;

@group(0) @binding(9) var samplerHiResAO : sampler;

@group(0) @binding(2) var HiResDB : texture_2d<f32>;

@group(0) @binding(7) var samplerHiResDB : sampler;

var<private> u_xlati10 : vec4<i32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

@group(0) @binding(5) var AoResult_origX0X : texture_storage_2d<rg32float, write>;

fn main_1() {
  var x_751 : f32;
  var x_764 : f32;
  var hlslcc_movcTemp : vec2<f32>;
  var x_779 : f32;
  var x_791 : f32;
  var x_823 : f32;
  var x_836 : f32;
  var x_849 : f32;
  var x_862 : f32;
  var x_877 : f32;
  var x_889 : f32;
  var x_938 : f32;
  var x_950 : f32;
  var x_984 : f32;
  var x_997 : f32;
  var x_1010 : f32;
  var x_1023 : f32;
  var x_1038 : f32;
  var x_1050 : f32;
  var x_1092 : f32;
  var x_1104 : f32;
  var x_1132 : f32;
  var x_1145 : f32;
  var x_1157 : f32;
  var x_1169 : f32;
  var x_1600 : f32;
  var x_1613 : f32;
  var hlslcc_movcTemp_1 : vec2<f32>;
  var x_1627 : f32;
  var x_1639 : f32;
  var x_1668 : f32;
  var x_1681 : f32;
  var x_1694 : f32;
  var x_1707 : f32;
  var x_1722 : f32;
  var x_1734 : f32;
  var hlslcc_movcTemp_2 : vec4<f32>;
  var x_1765 : f32;
  var x_1777 : f32;
  var x_1805 : f32;
  var x_1818 : f32;
  var hlslcc_movcTemp_3 : vec2<f32>;
  var x_1832 : f32;
  var x_1844 : f32;
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
  let x_46 : vec3<i32> = u_xlati15;
  u_xlati15 = vec3<i32>(x_45.x, x_45.y, x_46.z);
  let x_48 : vec3<i32> = u_xlati15;
  let x_52 : vec2<i32> = (vec2<i32>(x_48.x, x_48.y) + vec2<i32>(-2i, -2i));
  let x_53 : vec3<i32> = u_xlati15;
  u_xlati15 = vec3<i32>(x_52.x, x_52.y, x_53.z);
  let x_59 : vec3<i32> = u_xlati15;
  u_xlat15 = vec2<f32>(vec2<i32>(x_59.x, x_59.y));
  let x_62 : vec2<f32> = u_xlat15;
  let x_70 : vec4<f32> = x_66.InvLowResolution;
  u_xlat15 = (x_62 * vec2<f32>(x_70.x, x_70.y));
  let x_85 : vec2<f32> = u_xlat15;
  let x_86 : vec4<f32> = textureGather(0i, LoResAO1, samplerLoResAO1, x_85);
  u_xlat1 = x_86;
  let x_91 : vec2<f32> = u_xlat15;
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
  u_xlati45 = (x_126 + 1i);
  let x_128 : i32 = u_xlati45;
  let x_130 : f32 = u_xlat3.z;
  TGSM1[x_128].value[0i] = bitcast<u32>(x_130);
  let x_133 : i32 = u_xlati45;
  let x_136 : f32 = u_xlat3.w;
  TGSM1[x_133].value[1i] = bitcast<u32>(x_136);
  let x_141 : vec4<i32> = u_xlati0;
  u_xlati31 = (vec2<i32>(x_141.x, x_141.x) + vec2<i32>(16i, 17i));
  let x_147 : vec4<f32> = u_xlat1;
  let x_148 : vec2<f32> = vec2<f32>(x_147.x, x_147.y);
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_148.x, x_149.y, x_148.y, x_149.w);
  let x_152 : i32 = u_xlati31.x;
  let x_154 : f32 = u_xlat2.x;
  TGSM1[x_152].value[0i] = bitcast<u32>(x_154);
  let x_158 : i32 = u_xlati31.x;
  let x_160 : f32 = u_xlat2.y;
  TGSM1[x_158].value[1i] = bitcast<u32>(x_160);
  let x_164 : i32 = u_xlati31.y;
  let x_166 : f32 = u_xlat2.z;
  TGSM1[x_164].value[0i] = bitcast<u32>(x_166);
  let x_170 : i32 = u_xlati31.y;
  let x_172 : f32 = u_xlat2.w;
  TGSM1[x_170].value[1i] = bitcast<u32>(x_172);
  let x_180 : vec2<f32> = u_xlat15;
  let x_181 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, x_180);
  u_xlat2 = x_181;
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_184);
  let x_189 : vec2<f32> = u_xlat15;
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
  let x_219 : i32 = u_xlati45;
  let x_221 : f32 = u_xlat4.z;
  TGSM0[x_219].value[0i] = bitcast<u32>(x_221);
  let x_224 : i32 = u_xlati45;
  let x_226 : f32 = u_xlat4.w;
  TGSM0[x_224].value[1i] = bitcast<u32>(x_226);
  let x_229 : vec4<f32> = u_xlat2;
  let x_230 : vec2<f32> = vec2<f32>(x_229.x, x_229.y);
  let x_231 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_230.x, x_231.y, x_230.y, x_231.w);
  let x_234 : i32 = u_xlati31.x;
  let x_236 : f32 = u_xlat3.x;
  TGSM0[x_234].value[0i] = bitcast<u32>(x_236);
  let x_240 : i32 = u_xlati31.x;
  let x_242 : f32 = u_xlat3.y;
  TGSM0[x_240].value[1i] = bitcast<u32>(x_242);
  let x_246 : i32 = u_xlati31.y;
  let x_248 : f32 = u_xlat3.z;
  TGSM0[x_246].value[0i] = bitcast<u32>(x_248);
  let x_252 : i32 = u_xlati31.y;
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
    u_xlati30 = (bitcast<i32>(x_288) * 3i);
    let x_292 : u32 = u_xlatu0;
    let x_295 : i32 = u_xlati30;
    u_xlati0.x = ((bitcast<i32>(x_292) * 16i) + x_295);
    let x_300 : i32 = u_xlati0.x;
    let x_302 : u32 = TGSM1[x_300].value[0i];
    let x_305 : i32 = u_xlati0.x;
    let x_307 : u32 = TGSM1[x_305].value[1i];
    u_xlat30 = vec2<f32>(bitcast<f32>(x_302), bitcast<f32>(x_307));
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
    u_xlat32 = vec2<f32>(bitcast<f32>(x_334), bitcast<f32>(x_339));
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
    u_xlat33 = vec2<f32>(bitcast<f32>(x_359), bitcast<f32>(x_364));
    let x_368 : vec4<i32> = u_xlati0;
    let x_373 : vec2<i32> = (vec2<i32>(x_368.x, x_368.x) + vec2<i32>(5i, 6i));
    let x_374 : vec4<i32> = u_xlati4;
    u_xlati4 = vec4<i32>(x_373.x, x_373.y, x_374.z, x_374.w);
    let x_378 : i32 = u_xlati4.x;
    let x_380 : u32 = TGSM1[x_378].value[0i];
    let x_383 : i32 = u_xlati4.x;
    let x_385 : u32 = TGSM1[x_383].value[1i];
    u_xlat34 = vec2<f32>(bitcast<f32>(x_380), bitcast<f32>(x_385));
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
    u_xlat35 = vec2<f32>(bitcast<f32>(x_406), bitcast<f32>(x_411));
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
    u_xlat36 = vec2<f32>(bitcast<f32>(x_432), bitcast<f32>(x_437));
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
    u_xlat31 = vec2<f32>(bitcast<f32>(x_458), bitcast<f32>(x_463));
    let x_468 : i32 = u_xlati4.x;
    let x_470 : u32 = TGSM0[x_468].value[0i];
    let x_473 : i32 = u_xlati4.x;
    let x_475 : u32 = TGSM0[x_473].value[1i];
    u_xlat37 = vec2<f32>(bitcast<f32>(x_470), bitcast<f32>(x_475));
    let x_479 : i32 = u_xlati4.y;
    let x_481 : u32 = TGSM0[x_479].value[0i];
    let x_484 : i32 = u_xlati4.y;
    let x_486 : u32 = TGSM0[x_484].value[1i];
    let x_488 : vec2<f32> = vec2<f32>(bitcast<f32>(x_481), bitcast<f32>(x_486));
    let x_489 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_488.x, x_488.y, x_489.z, x_489.w);
    let x_491 : vec2<f32> = u_xlat35;
    let x_493 : vec4<f32> = u_xlat6;
    u_xlat35 = (-(x_491) + vec2<f32>(x_493.x, x_493.y));
    let x_496 : vec4<f32> = u_xlat6;
    let x_499 : vec2<f32> = u_xlat36;
    let x_500 : vec2<f32> = (-(vec2<f32>(x_496.x, x_496.y)) + x_499);
    let x_501 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
    let x_503 : vec2<f32> = u_xlat36;
    let x_505 : vec4<f32> = u_xlat7;
    u_xlat36 = (-(x_503) + vec2<f32>(x_505.x, x_505.y));
    let x_508 : vec4<f32> = u_xlat7;
    let x_511 : vec2<f32> = u_xlat31;
    let x_512 : vec2<f32> = (-(vec2<f32>(x_508.x, x_508.y)) + x_511);
    let x_513 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_512.x, x_512.y, x_513.z, x_513.w);
    let x_515 : vec2<f32> = u_xlat31;
    let x_517 : vec2<f32> = u_xlat37;
    u_xlat31 = (-(x_515) + x_517);
    let x_519 : vec2<f32> = u_xlat37;
    let x_521 : vec4<f32> = u_xlat4;
    let x_523 : vec2<f32> = (-(x_519) + vec2<f32>(x_521.x, x_521.y));
    let x_524 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
    let x_526 : vec2<f32> = u_xlat35;
    let x_527 : vec2<f32> = u_xlat35;
    let x_530 : vec4<f32> = x_66.AdditionalParams;
    u_xlat37 = ((x_526 * x_527) + vec2<f32>(x_530.y, x_530.y));
    let x_534 : vec4<f32> = u_xlat6;
    let x_536 : vec4<f32> = u_xlat6;
    let x_540 : vec4<f32> = x_66.AdditionalParams;
    let x_542 : vec2<f32> = ((vec2<f32>(x_534.x, x_534.y) * vec2<f32>(x_536.x, x_536.y)) + vec2<f32>(x_540.y, x_540.y));
    let x_543 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
    let x_546 : vec2<f32> = u_xlat36;
    let x_547 : vec2<f32> = u_xlat36;
    let x_550 : vec4<f32> = x_66.AdditionalParams;
    u_xlat38 = ((x_546 * x_547) + vec2<f32>(x_550.y, x_550.y));
    let x_554 : vec4<f32> = u_xlat7;
    let x_556 : vec4<f32> = u_xlat7;
    let x_560 : vec4<f32> = x_66.AdditionalParams;
    let x_562 : vec2<f32> = ((vec2<f32>(x_554.x, x_554.y) * vec2<f32>(x_556.x, x_556.y)) + vec2<f32>(x_560.y, x_560.y));
    let x_563 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_562.x, x_562.y, x_563.z, x_563.w);
    let x_566 : vec2<f32> = u_xlat31;
    let x_567 : vec2<f32> = u_xlat31;
    let x_570 : vec4<f32> = x_66.AdditionalParams;
    u_xlat39 = ((x_566 * x_567) + vec2<f32>(x_570.y, x_570.y));
    let x_574 : vec4<f32> = u_xlat4;
    let x_576 : vec4<f32> = u_xlat4;
    let x_580 : vec4<f32> = x_66.AdditionalParams;
    u_xlat10 = ((vec2<f32>(x_574.x, x_574.y) * vec2<f32>(x_576.x, x_576.y)) + vec2<f32>(x_580.y, x_580.y));
    let x_583 : vec2<f32> = u_xlat35;
    let x_584 : vec4<f32> = u_xlat6;
    let x_588 : vec4<f32> = x_66.AdditionalParams;
    u_xlat35 = ((x_583 * vec2<f32>(x_584.x, x_584.y)) + vec2<f32>(x_588.y, x_588.y));
    let x_591 : vec2<f32> = u_xlat35;
    let x_592 : vec2<f32> = u_xlat35;
    u_xlat35 = (x_591 * x_592);
    let x_594 : vec2<f32> = u_xlat37;
    let x_595 : vec4<f32> = u_xlat8;
    u_xlat37 = (x_594 * vec2<f32>(x_595.x, x_595.y));
    let x_598 : vec2<f32> = u_xlat37;
    let x_600 : vec4<f32> = x_66.AdditionalParams;
    u_xlat37 = (x_598 * vec2<f32>(x_600.z, x_600.z));
    let x_603 : vec4<f32> = u_xlat6;
    let x_605 : vec2<f32> = u_xlat36;
    let x_608 : vec4<f32> = x_66.AdditionalParams;
    let x_610 : vec2<f32> = ((vec2<f32>(x_603.x, x_603.y) * x_605) + vec2<f32>(x_608.y, x_608.y));
    let x_611 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_610.x, x_610.y, x_611.z, x_611.w);
    let x_613 : vec2<f32> = u_xlat38;
    let x_614 : vec4<f32> = u_xlat8;
    let x_616 : vec2<f32> = (x_613 * vec2<f32>(x_614.x, x_614.y));
    let x_617 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
    let x_619 : vec2<f32> = u_xlat36;
    let x_620 : vec4<f32> = u_xlat7;
    let x_624 : vec4<f32> = x_66.AdditionalParams;
    let x_626 : vec2<f32> = ((x_619 * vec2<f32>(x_620.x, x_620.y)) + vec2<f32>(x_624.y, x_624.y));
    let x_627 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_627.x, x_627.y, x_626.x, x_626.y);
    let x_629 : vec4<f32> = u_xlat6;
    let x_630 : vec4<f32> = u_xlat6;
    u_xlat6 = (x_629 * x_630);
    let x_632 : vec2<f32> = u_xlat38;
    let x_633 : vec4<f32> = u_xlat9;
    let x_635 : vec2<f32> = (x_632 * vec2<f32>(x_633.x, x_633.y));
    let x_636 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_636.x, x_636.y, x_635.x, x_635.y);
    let x_638 : vec4<f32> = u_xlat8;
    let x_640 : vec4<f32> = x_66.AdditionalParams;
    u_xlat8 = (x_638 * vec4<f32>(x_640.z, x_640.z, x_640.z, x_640.z));
    let x_643 : vec4<f32> = u_xlat7;
    let x_645 : vec2<f32> = u_xlat31;
    let x_648 : vec4<f32> = x_66.AdditionalParams;
    let x_650 : vec2<f32> = ((vec2<f32>(x_643.x, x_643.y) * x_645) + vec2<f32>(x_648.y, x_648.y));
    let x_651 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
    let x_653 : vec4<f32> = u_xlat7;
    let x_655 : vec4<f32> = u_xlat7;
    let x_657 : vec2<f32> = (vec2<f32>(x_653.x, x_653.y) * vec2<f32>(x_655.x, x_655.y));
    let x_658 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
    let x_660 : vec2<f32> = u_xlat39;
    let x_661 : vec4<f32> = u_xlat9;
    let x_663 : vec2<f32> = (x_660 * vec2<f32>(x_661.x, x_661.y));
    let x_664 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
    let x_666 : vec4<f32> = u_xlat9;
    let x_669 : vec4<f32> = x_66.AdditionalParams;
    let x_671 : vec2<f32> = (vec2<f32>(x_666.x, x_666.y) * vec2<f32>(x_669.z, x_669.z));
    let x_672 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
    let x_674 : vec2<f32> = u_xlat31;
    let x_675 : vec4<f32> = u_xlat4;
    let x_679 : vec4<f32> = x_66.AdditionalParams;
    u_xlat31 = ((x_674 * vec2<f32>(x_675.x, x_675.y)) + vec2<f32>(x_679.y, x_679.y));
    let x_682 : vec2<f32> = u_xlat31;
    let x_683 : vec2<f32> = u_xlat31;
    u_xlat31 = (x_682 * x_683);
    let x_685 : vec2<f32> = u_xlat39;
    let x_686 : vec2<f32> = u_xlat10;
    let x_687 : vec2<f32> = (x_685 * x_686);
    let x_688 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_687.x, x_687.y, x_688.z, x_688.w);
    let x_690 : vec4<f32> = u_xlat4;
    let x_693 : vec4<f32> = x_66.AdditionalParams;
    let x_695 : vec2<f32> = (vec2<f32>(x_690.x, x_690.y) * vec2<f32>(x_693.z, x_693.z));
    let x_696 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_695.x, x_695.y, x_696.z, x_696.w);
    let x_699 : vec2<f32> = u_xlat37;
    let x_701 : vec2<f32> = u_xlat35;
    let x_703 : vec4<bool> = (vec4<f32>(x_699.x, x_699.y, x_699.x, x_699.y) < vec4<f32>(x_701.x, x_701.y, x_701.x, x_701.y));
    u_xlatb35 = vec2<bool>(x_703.x, x_703.y);
    let x_707 : vec4<f32> = u_xlat8;
    let x_708 : vec4<f32> = u_xlat6;
    u_xlatb6 = (x_707 < x_708);
    let x_711 : vec4<f32> = u_xlat9;
    let x_713 : vec4<f32> = u_xlat7;
    let x_715 : vec4<bool> = (vec4<f32>(x_711.x, x_711.y, x_711.x, x_711.x) < vec4<f32>(x_713.x, x_713.y, x_713.x, x_713.x));
    u_xlatb7 = vec2<bool>(x_715.x, x_715.y);
    let x_718 : vec4<f32> = u_xlat4;
    let x_720 : vec2<f32> = u_xlat31;
    let x_722 : vec4<bool> = (vec4<f32>(x_718.x, x_718.y, x_718.x, x_718.y) < vec4<f32>(x_720.x, x_720.y, x_720.x, x_720.y));
    u_xlatb31 = vec2<bool>(x_722.x, x_722.y);
    let x_724 : vec2<bool> = u_xlatb35;
    let x_731 : vec4<bool> = u_xlatb6;
    let x_737 : vec2<i32> = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_724) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_731.x, x_731.y)) * vec2<u32>(4294967295u, 4294967295u))));
    let x_738 : vec4<i32> = u_xlati4;
    u_xlati4 = vec4<i32>(x_737.x, x_737.y, x_738.z, x_738.w);
    let x_740 : vec4<i32> = u_xlati4;
    let x_744 : vec2<i32> = bitcast<vec2<i32>>((bitcast<vec2<u32>>(vec2<i32>(x_740.x, x_740.y)) & vec2<u32>(1u, 1u)));
    let x_745 : vec4<i32> = u_xlati4;
    u_xlati4 = vec4<i32>(x_744.x, x_744.y, x_745.z, x_745.w);
    let x_748 : i32 = u_xlati4.x;
    if ((x_748 != 0i)) {
      let x_755 : f32 = u_xlat2.x;
      x_751 = x_755;
    } else {
      let x_758 : f32 = u_xlat32.x;
      x_751 = x_758;
    }
    let x_759 : f32 = x_751;
    u_xlat4.x = x_759;
    let x_762 : i32 = u_xlati4.y;
    if ((x_762 != 0i)) {
      let x_768 : f32 = u_xlat2.y;
      x_764 = x_768;
    } else {
      let x_771 : f32 = u_xlat32.y;
      x_764 = x_771;
    }
    let x_772 : f32 = x_764;
    u_xlat4.y = x_772;
    let x_776 : vec2<f32> = u_xlat30;
    hlslcc_movcTemp = x_776;
    let x_778 : bool = u_xlatb35.x;
    if (x_778) {
      let x_783 : f32 = u_xlat30.x;
      x_779 = x_783;
    } else {
      let x_786 : f32 = u_xlat4.x;
      x_779 = x_786;
    }
    let x_787 : f32 = x_779;
    hlslcc_movcTemp.x = x_787;
    let x_790 : bool = u_xlatb35.y;
    if (x_790) {
      let x_795 : f32 = u_xlat30.y;
      x_791 = x_795;
    } else {
      let x_798 : f32 = u_xlat4.y;
      x_791 = x_798;
    }
    let x_799 : f32 = x_791;
    hlslcc_movcTemp.y = x_799;
    let x_801 : vec2<f32> = hlslcc_movcTemp;
    u_xlat30 = x_801;
    let x_803 : vec4<bool> = u_xlatb6;
    let x_808 : vec4<bool> = u_xlatb6;
    u_xlati35 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_803.x, x_803.y)) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_808.z, x_808.w)) * vec2<u32>(4294967295u, 4294967295u))));
    let x_815 : vec2<i32> = u_xlati35;
    u_xlati35 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_815) & vec2<u32>(1u, 1u)));
    let x_821 : i32 = u_xlati35.x;
    if ((x_821 != 0i)) {
      let x_827 : f32 = u_xlat32.x;
      x_823 = x_827;
    } else {
      let x_830 : f32 = u_xlat3.x;
      x_823 = x_830;
    }
    let x_831 : f32 = x_823;
    u_xlat14.x = x_831;
    let x_834 : i32 = u_xlati35.y;
    if ((x_834 != 0i)) {
      let x_840 : f32 = u_xlat32.y;
      x_836 = x_840;
    } else {
      let x_843 : f32 = u_xlat3.y;
      x_836 = x_843;
    }
    let x_844 : f32 = x_836;
    u_xlat14.y = x_844;
    let x_847 : i32 = u_xlati35.x;
    if ((x_847 != 0i)) {
      let x_853 : f32 = u_xlat3.x;
      x_849 = x_853;
    } else {
      let x_856 : f32 = u_xlat32.x;
      x_849 = x_856;
    }
    let x_857 : f32 = x_849;
    u_xlat9.x = x_857;
    let x_860 : i32 = u_xlati35.y;
    if ((x_860 != 0i)) {
      let x_866 : f32 = u_xlat3.y;
      x_862 = x_866;
    } else {
      let x_869 : f32 = u_xlat32.y;
      x_862 = x_869;
    }
    let x_870 : f32 = x_862;
    u_xlat9.y = x_870;
    let x_872 : vec2<f32> = u_xlat14;
    let x_873 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_872.x, x_872.y, x_873.z, x_873.w);
    let x_876 : bool = u_xlatb6.z;
    if (x_876) {
      let x_881 : f32 = u_xlat33.x;
      x_877 = x_881;
    } else {
      let x_884 : f32 = u_xlat9.x;
      x_877 = x_884;
    }
    let x_885 : f32 = x_877;
    u_xlat35.x = x_885;
    let x_888 : bool = u_xlatb6.w;
    if (x_888) {
      let x_893 : f32 = u_xlat33.y;
      x_889 = x_893;
    } else {
      let x_896 : f32 = u_xlat9.y;
      x_889 = x_896;
    }
    let x_897 : f32 = x_889;
    u_xlat35.y = x_897;
    let x_899 : vec2<f32> = u_xlat30;
    let x_900 : vec2<f32> = u_xlat35;
    u_xlat30 = (x_899 + x_900);
    let x_902 : vec2<f32> = u_xlat30;
    let x_906 : vec4<f32> = u_xlat4;
    u_xlat30 = ((x_902 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_906.x, x_906.y));
    let x_909 : vec2<f32> = u_xlat32;
    let x_910 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_909 + x_910);
    let x_912 : vec4<f32> = u_xlat9;
    let x_914 : vec2<f32> = u_xlat30;
    u_xlat30 = (vec2<f32>(x_912.x, x_912.y) + x_914);
    let x_916 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_916 * vec2<f32>(0.25f, 0.25f));
    let x_925 : i32 = u_xlati0.x;
    let x_927 : f32 = u_xlat30.x;
    TGSM2[x_925].value[0i] = bitcast<u32>(x_927);
    let x_931 : i32 = u_xlati0.x;
    let x_933 : f32 = u_xlat30.y;
    TGSM2[x_931].value[1i] = bitcast<u32>(x_933);
    let x_937 : bool = u_xlatb6.x;
    if (x_937) {
      let x_942 : f32 = u_xlat2.x;
      x_938 = x_942;
    } else {
      let x_945 : f32 = u_xlat8.x;
      x_938 = x_945;
    }
    let x_946 : f32 = x_938;
    u_xlat30.x = x_946;
    let x_949 : bool = u_xlatb6.y;
    if (x_949) {
      let x_954 : f32 = u_xlat2.y;
      x_950 = x_954;
    } else {
      let x_957 : f32 = u_xlat8.y;
      x_950 = x_957;
    }
    let x_958 : f32 = x_950;
    u_xlat30.y = x_958;
    let x_961 : vec4<bool> = u_xlatb6;
    let x_966 : vec2<bool> = u_xlatb7;
    let x_971 : vec2<i32> = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_961.z, x_961.w)) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_966) * vec2<u32>(4294967295u, 4294967295u))));
    let x_972 : vec4<i32> = u_xlati2;
    u_xlati2 = vec4<i32>(x_971.x, x_971.y, x_972.z, x_972.w);
    let x_974 : vec4<i32> = u_xlati2;
    let x_978 : vec2<i32> = bitcast<vec2<i32>>((bitcast<vec2<u32>>(vec2<i32>(x_974.x, x_974.y)) & vec2<u32>(1u, 1u)));
    let x_979 : vec4<i32> = u_xlati2;
    u_xlati2 = vec4<i32>(x_978.x, x_978.y, x_979.z, x_979.w);
    let x_982 : i32 = u_xlati2.x;
    if ((x_982 != 0i)) {
      let x_988 : f32 = u_xlat3.x;
      x_984 = x_988;
    } else {
      let x_991 : f32 = u_xlat33.x;
      x_984 = x_991;
    }
    let x_992 : f32 = x_984;
    u_xlat14.x = x_992;
    let x_995 : i32 = u_xlati2.y;
    if ((x_995 != 0i)) {
      let x_1001 : f32 = u_xlat3.y;
      x_997 = x_1001;
    } else {
      let x_1004 : f32 = u_xlat33.y;
      x_997 = x_1004;
    }
    let x_1005 : f32 = x_997;
    u_xlat14.y = x_1005;
    let x_1008 : i32 = u_xlati2.x;
    if ((x_1008 != 0i)) {
      let x_1014 : f32 = u_xlat33.x;
      x_1010 = x_1014;
    } else {
      let x_1017 : f32 = u_xlat3.x;
      x_1010 = x_1017;
    }
    let x_1018 : f32 = x_1010;
    u_xlat4.x = x_1018;
    let x_1021 : i32 = u_xlati2.y;
    if ((x_1021 != 0i)) {
      let x_1027 : f32 = u_xlat33.y;
      x_1023 = x_1027;
    } else {
      let x_1030 : f32 = u_xlat3.y;
      x_1023 = x_1030;
    }
    let x_1031 : f32 = x_1023;
    u_xlat4.y = x_1031;
    let x_1033 : vec2<f32> = u_xlat14;
    let x_1034 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
    let x_1037 : bool = u_xlatb7.x;
    if (x_1037) {
      let x_1042 : f32 = u_xlat34.x;
      x_1038 = x_1042;
    } else {
      let x_1045 : f32 = u_xlat4.x;
      x_1038 = x_1045;
    }
    let x_1046 : f32 = x_1038;
    u_xlat35.x = x_1046;
    let x_1049 : bool = u_xlatb7.y;
    if (x_1049) {
      let x_1054 : f32 = u_xlat34.y;
      x_1050 = x_1054;
    } else {
      let x_1057 : f32 = u_xlat4.y;
      x_1050 = x_1057;
    }
    let x_1058 : f32 = x_1050;
    u_xlat35.y = x_1058;
    let x_1060 : vec2<f32> = u_xlat30;
    let x_1061 : vec2<f32> = u_xlat35;
    u_xlat30 = (x_1060 + x_1061);
    let x_1063 : vec2<f32> = u_xlat30;
    let x_1065 : vec4<f32> = u_xlat8;
    u_xlat30 = ((x_1063 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1065.x, x_1065.y));
    let x_1068 : vec4<f32> = u_xlat3;
    let x_1070 : vec2<f32> = u_xlat30;
    u_xlat30 = (vec2<f32>(x_1068.x, x_1068.y) + x_1070);
    let x_1072 : vec4<f32> = u_xlat4;
    let x_1074 : vec2<f32> = u_xlat30;
    u_xlat30 = (vec2<f32>(x_1072.x, x_1072.y) + x_1074);
    let x_1076 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_1076 * vec2<f32>(0.25f, 0.25f));
    let x_1079 : i32 = u_xlati1.x;
    let x_1081 : f32 = u_xlat30.x;
    TGSM2[x_1079].value[0i] = bitcast<u32>(x_1081);
    let x_1085 : i32 = u_xlati1.x;
    let x_1087 : f32 = u_xlat30.y;
    TGSM2[x_1085].value[1i] = bitcast<u32>(x_1087);
    let x_1091 : bool = u_xlatb6.z;
    if (x_1091) {
      let x_1096 : f32 = u_xlat32.x;
      x_1092 = x_1096;
    } else {
      let x_1099 : f32 = u_xlat2.x;
      x_1092 = x_1099;
    }
    let x_1100 : f32 = x_1092;
    u_xlat30.x = x_1100;
    let x_1103 : bool = u_xlatb6.w;
    if (x_1103) {
      let x_1108 : f32 = u_xlat32.y;
      x_1104 = x_1108;
    } else {
      let x_1111 : f32 = u_xlat2.y;
      x_1104 = x_1111;
    }
    let x_1112 : f32 = x_1104;
    u_xlat30.y = x_1112;
    let x_1115 : vec2<bool> = u_xlatb7;
    let x_1119 : vec2<bool> = u_xlatb31;
    u_xlati32 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1115) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1119) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1125 : vec2<i32> = u_xlati32;
    u_xlati32 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1125) & vec2<u32>(1u, 1u)));
    let x_1130 : i32 = u_xlati32.x;
    if ((x_1130 != 0i)) {
      let x_1136 : f32 = u_xlat34.x;
      x_1132 = x_1136;
    } else {
      let x_1139 : f32 = u_xlat33.x;
      x_1132 = x_1139;
    }
    let x_1140 : f32 = x_1132;
    u_xlat32.x = x_1140;
    let x_1143 : i32 = u_xlati32.y;
    if ((x_1143 != 0i)) {
      let x_1149 : f32 = u_xlat34.y;
      x_1145 = x_1149;
    } else {
      let x_1152 : f32 = u_xlat33.y;
      x_1145 = x_1152;
    }
    let x_1153 : f32 = x_1145;
    u_xlat32.y = x_1153;
    let x_1156 : bool = u_xlatb31.x;
    if (x_1156) {
      let x_1161 : f32 = u_xlat5.x;
      x_1157 = x_1161;
    } else {
      let x_1164 : f32 = u_xlat32.x;
      x_1157 = x_1164;
    }
    let x_1165 : f32 = x_1157;
    u_xlat1.x = x_1165;
    let x_1168 : bool = u_xlatb31.y;
    if (x_1168) {
      let x_1173 : f32 = u_xlat5.y;
      x_1169 = x_1173;
    } else {
      let x_1176 : f32 = u_xlat32.y;
      x_1169 = x_1176;
    }
    let x_1177 : f32 = x_1169;
    u_xlat1.z = x_1177;
    let x_1179 : vec2<f32> = u_xlat30;
    let x_1180 : vec4<f32> = u_xlat1;
    u_xlat30 = (x_1179 + vec2<f32>(x_1180.x, x_1180.z));
    let x_1183 : vec2<f32> = u_xlat30;
    let x_1185 : vec4<f32> = u_xlat2;
    u_xlat30 = ((x_1183 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1185.x, x_1185.y));
    let x_1188 : vec2<f32> = u_xlat33;
    let x_1189 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_1188 + x_1189);
    let x_1191 : vec2<f32> = u_xlat32;
    let x_1192 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_1191 + x_1192);
    let x_1194 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_1194 * vec2<f32>(0.25f, 0.25f));
    let x_1197 : i32 = u_xlati1.y;
    let x_1199 : f32 = u_xlat30.x;
    TGSM2[x_1197].value[0i] = bitcast<u32>(x_1199);
    let x_1203 : i32 = u_xlati1.y;
    let x_1205 : f32 = u_xlat30.y;
    TGSM2[x_1203].value[1i] = bitcast<u32>(x_1205);
  }
  workgroupBarrier();
  let x_1209 : bool = u_xlatb0.y;
  if (x_1209) {
    let x_1212 : u32 = gl_LocalInvocationIndex;
    u_xlatu0 = (x_1212 / 9u);
    let x_1215 : u32 = gl_LocalInvocationIndex;
    u_xlatu1 = (x_1215 % 9u);
    let x_1217 : u32 = u_xlatu0;
    let x_1220 : u32 = u_xlatu1;
    u_xlati0.x = ((bitcast<i32>(x_1217) * 32i) + bitcast<i32>(x_1220));
    let x_1225 : i32 = u_xlati0.x;
    let x_1227 : u32 = TGSM2[x_1225].value[0i];
    let x_1230 : i32 = u_xlati0.x;
    let x_1232 : u32 = TGSM2[x_1230].value[1i];
    u_xlat15 = vec2<f32>(bitcast<f32>(x_1227), bitcast<f32>(x_1232));
    let x_1236 : i32 = u_xlati0.x;
    u_xlati45 = (x_1236 + 16i);
    let x_1238 : i32 = u_xlati45;
    let x_1240 : u32 = TGSM2[x_1238].value[0i];
    let x_1242 : i32 = u_xlati45;
    let x_1244 : u32 = TGSM2[x_1242].value[1i];
    let x_1246 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1240), bitcast<f32>(x_1244));
    let x_1247 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1246.x, x_1246.y, x_1247.z, x_1247.w);
    let x_1249 : vec4<i32> = u_xlati0;
    u_xlati2 = (vec4<i32>(x_1249.x, x_1249.x, x_1249.x, x_1249.x) + vec4<i32>(32i, 48i, 64i, 80i));
    let x_1257 : i32 = u_xlati2.x;
    let x_1259 : u32 = TGSM2[x_1257].value[0i];
    let x_1262 : i32 = u_xlati2.x;
    let x_1264 : u32 = TGSM2[x_1262].value[1i];
    u_xlat31 = vec2<f32>(bitcast<f32>(x_1259), bitcast<f32>(x_1264));
    let x_1268 : i32 = u_xlati2.y;
    let x_1270 : u32 = TGSM2[x_1268].value[0i];
    let x_1273 : i32 = u_xlati2.y;
    let x_1275 : u32 = TGSM2[x_1273].value[1i];
    let x_1277 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1270), bitcast<f32>(x_1275));
    let x_1278 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1277.x, x_1277.y, x_1278.z, x_1278.w);
    let x_1281 : i32 = u_xlati2.z;
    let x_1283 : u32 = TGSM2[x_1281].value[0i];
    let x_1286 : i32 = u_xlati2.z;
    let x_1288 : u32 = TGSM2[x_1286].value[1i];
    let x_1290 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1283), bitcast<f32>(x_1288));
    let x_1291 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1290.x, x_1290.y, x_1291.z, x_1291.w);
    let x_1294 : i32 = u_xlati2.w;
    let x_1296 : u32 = TGSM2[x_1294].value[0i];
    let x_1299 : i32 = u_xlati2.w;
    let x_1301 : u32 = TGSM2[x_1299].value[1i];
    u_xlat32 = vec2<f32>(bitcast<f32>(x_1296), bitcast<f32>(x_1301));
    let x_1304 : vec4<i32> = u_xlati0;
    u_xlati4 = (vec4<i32>(x_1304.x, x_1304.x, x_1304.x, x_1304.x) + vec4<i32>(2i, 18i, 34i, 50i));
    let x_1312 : i32 = u_xlati4.x;
    let x_1314 : u32 = TGSM0[x_1312].value[0i];
    let x_1317 : i32 = u_xlati4.x;
    let x_1319 : u32 = TGSM0[x_1317].value[1i];
    u_xlat33 = vec2<f32>(bitcast<f32>(x_1314), bitcast<f32>(x_1319));
    let x_1323 : i32 = u_xlati4.y;
    let x_1325 : u32 = TGSM0[x_1323].value[0i];
    let x_1328 : i32 = u_xlati4.y;
    let x_1330 : u32 = TGSM0[x_1328].value[1i];
    let x_1332 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1325), bitcast<f32>(x_1330));
    let x_1333 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1332.x, x_1332.y, x_1333.z, x_1333.w);
    let x_1336 : i32 = u_xlati4.z;
    let x_1338 : u32 = TGSM0[x_1336].value[0i];
    let x_1341 : i32 = u_xlati4.z;
    let x_1343 : u32 = TGSM0[x_1341].value[1i];
    let x_1345 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1338), bitcast<f32>(x_1343));
    let x_1346 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1345.x, x_1345.y, x_1346.z, x_1346.w);
    let x_1349 : i32 = u_xlati4.w;
    let x_1351 : u32 = TGSM0[x_1349].value[0i];
    let x_1354 : i32 = u_xlati4.w;
    let x_1356 : u32 = TGSM0[x_1354].value[1i];
    u_xlat34 = vec2<f32>(bitcast<f32>(x_1351), bitcast<f32>(x_1356));
    let x_1359 : vec4<i32> = u_xlati0;
    u_xlati35 = (vec2<i32>(x_1359.x, x_1359.x) + vec2<i32>(66i, 82i));
    let x_1366 : i32 = u_xlati35.x;
    let x_1368 : u32 = TGSM0[x_1366].value[0i];
    let x_1371 : i32 = u_xlati35.x;
    let x_1373 : u32 = TGSM0[x_1371].value[1i];
    let x_1375 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1368), bitcast<f32>(x_1373));
    let x_1376 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1375.x, x_1375.y, x_1376.z, x_1376.w);
    let x_1379 : i32 = u_xlati35.y;
    let x_1381 : u32 = TGSM0[x_1379].value[0i];
    let x_1384 : i32 = u_xlati35.y;
    let x_1386 : u32 = TGSM0[x_1384].value[1i];
    u_xlat35 = vec2<f32>(bitcast<f32>(x_1381), bitcast<f32>(x_1386));
    let x_1389 : vec2<f32> = u_xlat33;
    let x_1391 : vec4<f32> = u_xlat4;
    u_xlat33 = (-(x_1389) + vec2<f32>(x_1391.x, x_1391.y));
    let x_1394 : vec4<f32> = u_xlat4;
    let x_1397 : vec4<f32> = u_xlat5;
    let x_1399 : vec2<f32> = (-(vec2<f32>(x_1394.x, x_1394.y)) + vec2<f32>(x_1397.x, x_1397.y));
    let x_1400 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1399.x, x_1399.y, x_1400.z, x_1400.w);
    let x_1402 : vec4<f32> = u_xlat5;
    let x_1405 : vec2<f32> = u_xlat34;
    let x_1406 : vec2<f32> = (-(vec2<f32>(x_1402.x, x_1402.y)) + x_1405);
    let x_1407 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1406.x, x_1406.y, x_1407.z, x_1407.w);
    let x_1409 : vec2<f32> = u_xlat34;
    let x_1411 : vec4<f32> = u_xlat6;
    u_xlat34 = (-(x_1409) + vec2<f32>(x_1411.x, x_1411.y));
    let x_1414 : vec4<f32> = u_xlat6;
    let x_1417 : vec2<f32> = u_xlat35;
    u_xlat35 = (-(vec2<f32>(x_1414.x, x_1414.y)) + x_1417);
    let x_1419 : vec2<f32> = u_xlat33;
    let x_1420 : vec2<f32> = u_xlat33;
    let x_1423 : vec4<f32> = x_66.AdditionalParams;
    let x_1425 : vec2<f32> = ((x_1419 * x_1420) + vec2<f32>(x_1423.y, x_1423.y));
    let x_1426 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1425.x, x_1425.y, x_1426.z, x_1426.w);
    let x_1428 : vec4<f32> = u_xlat4;
    let x_1430 : vec4<f32> = u_xlat4;
    let x_1434 : vec4<f32> = x_66.AdditionalParams;
    u_xlat36 = ((vec2<f32>(x_1428.x, x_1428.y) * vec2<f32>(x_1430.x, x_1430.y)) + vec2<f32>(x_1434.y, x_1434.y));
    let x_1437 : vec4<f32> = u_xlat5;
    let x_1439 : vec4<f32> = u_xlat5;
    let x_1443 : vec4<f32> = x_66.AdditionalParams;
    let x_1445 : vec2<f32> = ((vec2<f32>(x_1437.x, x_1437.y) * vec2<f32>(x_1439.x, x_1439.y)) + vec2<f32>(x_1443.y, x_1443.y));
    let x_1446 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1445.x, x_1445.y, x_1446.z, x_1446.w);
    let x_1448 : vec2<f32> = u_xlat34;
    let x_1449 : vec2<f32> = u_xlat34;
    let x_1452 : vec4<f32> = x_66.AdditionalParams;
    u_xlat37 = ((x_1448 * x_1449) + vec2<f32>(x_1452.y, x_1452.y));
    let x_1455 : vec2<f32> = u_xlat35;
    let x_1456 : vec2<f32> = u_xlat35;
    let x_1459 : vec4<f32> = x_66.AdditionalParams;
    let x_1461 : vec2<f32> = ((x_1455 * x_1456) + vec2<f32>(x_1459.y, x_1459.y));
    let x_1462 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1461.x, x_1461.y, x_1462.z, x_1462.w);
    let x_1464 : vec2<f32> = u_xlat33;
    let x_1465 : vec4<f32> = u_xlat4;
    let x_1469 : vec4<f32> = x_66.AdditionalParams;
    u_xlat33 = ((x_1464 * vec2<f32>(x_1465.x, x_1465.y)) + vec2<f32>(x_1469.y, x_1469.y));
    let x_1472 : vec2<f32> = u_xlat33;
    let x_1473 : vec2<f32> = u_xlat33;
    u_xlat33 = (x_1472 * x_1473);
    let x_1475 : vec2<f32> = u_xlat36;
    let x_1476 : vec4<f32> = u_xlat6;
    let x_1478 : vec2<f32> = (x_1475 * vec2<f32>(x_1476.x, x_1476.y));
    let x_1479 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1478.x, x_1478.y, x_1479.z, x_1479.w);
    let x_1481 : vec4<f32> = u_xlat4;
    let x_1483 : vec4<f32> = u_xlat5;
    let x_1487 : vec4<f32> = x_66.AdditionalParams;
    let x_1489 : vec2<f32> = ((vec2<f32>(x_1481.x, x_1481.y) * vec2<f32>(x_1483.x, x_1483.y)) + vec2<f32>(x_1487.y, x_1487.y));
    let x_1490 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1489.x, x_1489.y, x_1490.z, x_1490.w);
    let x_1492 : vec2<f32> = u_xlat36;
    let x_1493 : vec4<f32> = u_xlat7;
    let x_1495 : vec2<f32> = (x_1492 * vec2<f32>(x_1493.x, x_1493.y));
    let x_1496 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1496.x, x_1496.y, x_1495.x, x_1495.y);
    let x_1498 : vec4<f32> = u_xlat6;
    let x_1500 : vec4<f32> = x_66.AdditionalParams;
    u_xlat6 = (x_1498 * vec4<f32>(x_1500.z, x_1500.z, x_1500.z, x_1500.z));
    let x_1503 : vec4<f32> = u_xlat5;
    let x_1505 : vec2<f32> = u_xlat34;
    let x_1508 : vec4<f32> = x_66.AdditionalParams;
    let x_1510 : vec2<f32> = ((vec2<f32>(x_1503.x, x_1503.y) * x_1505) + vec2<f32>(x_1508.y, x_1508.y));
    let x_1511 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1510.x, x_1510.y, x_1511.z, x_1511.w);
    let x_1513 : vec4<f32> = u_xlat5;
    let x_1515 : vec4<f32> = u_xlat5;
    let x_1517 : vec2<f32> = (vec2<f32>(x_1513.x, x_1513.y) * vec2<f32>(x_1515.x, x_1515.y));
    let x_1518 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1517.x, x_1517.y, x_1518.z, x_1518.w);
    let x_1520 : vec2<f32> = u_xlat37;
    let x_1521 : vec4<f32> = u_xlat7;
    let x_1523 : vec2<f32> = (x_1520 * vec2<f32>(x_1521.x, x_1521.y));
    let x_1524 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1523.x, x_1523.y, x_1524.z, x_1524.w);
    let x_1526 : vec4<f32> = u_xlat7;
    let x_1529 : vec4<f32> = x_66.AdditionalParams;
    let x_1531 : vec2<f32> = (vec2<f32>(x_1526.x, x_1526.y) * vec2<f32>(x_1529.z, x_1529.z));
    let x_1532 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1531.x, x_1531.y, x_1532.z, x_1532.w);
    let x_1534 : vec2<f32> = u_xlat34;
    let x_1535 : vec2<f32> = u_xlat35;
    let x_1538 : vec4<f32> = x_66.AdditionalParams;
    let x_1540 : vec2<f32> = ((x_1534 * x_1535) + vec2<f32>(x_1538.y, x_1538.y));
    let x_1541 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1541.x, x_1541.y, x_1540.x, x_1540.y);
    let x_1543 : vec4<f32> = u_xlat4;
    let x_1544 : vec4<f32> = u_xlat4;
    u_xlat4 = (x_1543 * x_1544);
    let x_1546 : vec2<f32> = u_xlat37;
    let x_1547 : vec4<f32> = u_xlat8;
    u_xlat35 = (x_1546 * vec2<f32>(x_1547.x, x_1547.y));
    let x_1550 : vec2<f32> = u_xlat35;
    let x_1552 : vec4<f32> = x_66.AdditionalParams;
    u_xlat35 = (x_1550 * vec2<f32>(x_1552.z, x_1552.z));
    let x_1556 : vec4<f32> = u_xlat6;
    let x_1558 : vec2<f32> = u_xlat33;
    let x_1560 : vec4<bool> = (vec4<f32>(x_1556.x, x_1556.y, x_1556.x, x_1556.y) < vec4<f32>(x_1558.x, x_1558.y, x_1558.x, x_1558.y));
    u_xlatb33 = vec2<bool>(x_1560.x, x_1560.y);
    let x_1563 : vec4<f32> = u_xlat6;
    let x_1565 : vec4<f32> = u_xlat4;
    let x_1567 : vec4<bool> = (vec4<f32>(x_1563.z, x_1563.w, x_1563.z, x_1563.z) < vec4<f32>(x_1565.x, x_1565.y, x_1565.x, x_1565.x));
    u_xlatb4 = vec2<bool>(x_1567.x, x_1567.y);
    let x_1570 : vec4<f32> = u_xlat7;
    let x_1572 : vec4<f32> = u_xlat5;
    let x_1574 : vec4<bool> = (vec4<f32>(x_1570.x, x_1570.y, x_1570.x, x_1570.x) < vec4<f32>(x_1572.x, x_1572.y, x_1572.x, x_1572.x));
    u_xlatb5 = vec2<bool>(x_1574.x, x_1574.y);
    let x_1577 : vec2<f32> = u_xlat35;
    let x_1579 : vec4<f32> = u_xlat4;
    let x_1581 : vec4<bool> = (vec4<f32>(x_1577.x, x_1577.y, x_1577.x, x_1577.y) < vec4<f32>(x_1579.z, x_1579.w, x_1579.z, x_1579.w));
    u_xlatb34 = vec2<bool>(x_1581.x, x_1581.y);
    let x_1583 : vec2<bool> = u_xlatb33;
    let x_1587 : vec2<bool> = u_xlatb4;
    u_xlati35 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1583) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1587) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1593 : vec2<i32> = u_xlati35;
    u_xlati35 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1593) & vec2<u32>(1u, 1u)));
    let x_1598 : i32 = u_xlati35.x;
    if ((x_1598 != 0i)) {
      let x_1604 : f32 = u_xlat1.x;
      x_1600 = x_1604;
    } else {
      let x_1607 : f32 = u_xlat31.x;
      x_1600 = x_1607;
    }
    let x_1608 : f32 = x_1600;
    u_xlat35.x = x_1608;
    let x_1611 : i32 = u_xlati35.y;
    if ((x_1611 != 0i)) {
      let x_1617 : f32 = u_xlat1.y;
      x_1613 = x_1617;
    } else {
      let x_1620 : f32 = u_xlat31.y;
      x_1613 = x_1620;
    }
    let x_1621 : f32 = x_1613;
    u_xlat35.y = x_1621;
    let x_1624 : vec2<f32> = u_xlat15;
    hlslcc_movcTemp_1 = x_1624;
    let x_1626 : bool = u_xlatb33.x;
    if (x_1626) {
      let x_1631 : f32 = u_xlat15.x;
      x_1627 = x_1631;
    } else {
      let x_1634 : f32 = u_xlat35.x;
      x_1627 = x_1634;
    }
    let x_1635 : f32 = x_1627;
    hlslcc_movcTemp_1.x = x_1635;
    let x_1638 : bool = u_xlatb33.y;
    if (x_1638) {
      let x_1643 : f32 = u_xlat15.y;
      x_1639 = x_1643;
    } else {
      let x_1646 : f32 = u_xlat35.y;
      x_1639 = x_1646;
    }
    let x_1647 : f32 = x_1639;
    hlslcc_movcTemp_1.y = x_1647;
    let x_1649 : vec2<f32> = hlslcc_movcTemp_1;
    u_xlat15 = x_1649;
    let x_1651 : vec2<bool> = u_xlatb4;
    let x_1655 : vec2<bool> = u_xlatb5;
    u_xlati33 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1651) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1655) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1661 : vec2<i32> = u_xlati33;
    u_xlati33 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1661) & vec2<u32>(1u, 1u)));
    let x_1666 : i32 = u_xlati33.x;
    if ((x_1666 != 0i)) {
      let x_1672 : f32 = u_xlat31.x;
      x_1668 = x_1672;
    } else {
      let x_1675 : f32 = u_xlat2.x;
      x_1668 = x_1675;
    }
    let x_1676 : f32 = x_1668;
    u_xlat14.x = x_1676;
    let x_1679 : i32 = u_xlati33.y;
    if ((x_1679 != 0i)) {
      let x_1685 : f32 = u_xlat31.y;
      x_1681 = x_1685;
    } else {
      let x_1688 : f32 = u_xlat2.y;
      x_1681 = x_1688;
    }
    let x_1689 : f32 = x_1681;
    u_xlat14.y = x_1689;
    let x_1692 : i32 = u_xlati33.x;
    if ((x_1692 != 0i)) {
      let x_1698 : f32 = u_xlat2.x;
      x_1694 = x_1698;
    } else {
      let x_1701 : f32 = u_xlat31.x;
      x_1694 = x_1701;
    }
    let x_1702 : f32 = x_1694;
    u_xlat7.x = x_1702;
    let x_1705 : i32 = u_xlati33.y;
    if ((x_1705 != 0i)) {
      let x_1711 : f32 = u_xlat2.y;
      x_1707 = x_1711;
    } else {
      let x_1714 : f32 = u_xlat31.y;
      x_1707 = x_1714;
    }
    let x_1715 : f32 = x_1707;
    u_xlat7.y = x_1715;
    let x_1717 : vec2<f32> = u_xlat14;
    let x_1718 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1717.x, x_1717.y, x_1718.z, x_1718.w);
    let x_1721 : bool = u_xlatb5.x;
    if (x_1721) {
      let x_1726 : f32 = u_xlat3.x;
      x_1722 = x_1726;
    } else {
      let x_1729 : f32 = u_xlat7.x;
      x_1722 = x_1729;
    }
    let x_1730 : f32 = x_1722;
    u_xlat33.x = x_1730;
    let x_1733 : bool = u_xlatb5.y;
    if (x_1733) {
      let x_1738 : f32 = u_xlat3.y;
      x_1734 = x_1738;
    } else {
      let x_1741 : f32 = u_xlat7.y;
      x_1734 = x_1741;
    }
    let x_1742 : f32 = x_1734;
    u_xlat33.y = x_1742;
    let x_1744 : vec2<f32> = u_xlat15;
    let x_1745 : vec2<f32> = u_xlat33;
    u_xlat15 = (x_1744 + x_1745);
    let x_1747 : vec2<f32> = u_xlat15;
    let x_1749 : vec2<f32> = u_xlat35;
    u_xlat15 = ((x_1747 * vec2<f32>(0.5f, 0.5f)) + x_1749);
    let x_1751 : vec2<f32> = u_xlat31;
    let x_1752 : vec2<f32> = u_xlat15;
    u_xlat15 = (x_1751 + x_1752);
    let x_1754 : vec4<f32> = u_xlat7;
    let x_1756 : vec2<f32> = u_xlat15;
    u_xlat15 = (vec2<f32>(x_1754.x, x_1754.y) + x_1756);
    let x_1758 : vec2<f32> = u_xlat15;
    u_xlat15 = (x_1758 * vec2<f32>(0.25f, 0.25f));
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
    let x_1792 : vec2<bool> = u_xlatb34;
    u_xlati31 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1788) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1792) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1798 : vec2<i32> = u_xlati31;
    u_xlati31 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1798) & vec2<u32>(1u, 1u)));
    let x_1803 : i32 = u_xlati31.x;
    if ((x_1803 != 0i)) {
      let x_1809 : f32 = u_xlat3.x;
      x_1805 = x_1809;
    } else {
      let x_1812 : f32 = u_xlat2.x;
      x_1805 = x_1812;
    }
    let x_1813 : f32 = x_1805;
    u_xlat31.x = x_1813;
    let x_1816 : i32 = u_xlati31.y;
    if ((x_1816 != 0i)) {
      let x_1822 : f32 = u_xlat3.y;
      x_1818 = x_1822;
    } else {
      let x_1825 : f32 = u_xlat2.y;
      x_1818 = x_1825;
    }
    let x_1826 : f32 = x_1818;
    u_xlat31.y = x_1826;
    let x_1829 : vec2<f32> = u_xlat32;
    hlslcc_movcTemp_3 = x_1829;
    let x_1831 : bool = u_xlatb34.x;
    if (x_1831) {
      let x_1836 : f32 = u_xlat32.x;
      x_1832 = x_1836;
    } else {
      let x_1839 : f32 = u_xlat31.x;
      x_1832 = x_1839;
    }
    let x_1840 : f32 = x_1832;
    hlslcc_movcTemp_3.x = x_1840;
    let x_1843 : bool = u_xlatb34.y;
    if (x_1843) {
      let x_1848 : f32 = u_xlat32.y;
      x_1844 = x_1848;
    } else {
      let x_1851 : f32 = u_xlat31.y;
      x_1844 = x_1851;
    }
    let x_1852 : f32 = x_1844;
    hlslcc_movcTemp_3.y = x_1852;
    let x_1854 : vec2<f32> = hlslcc_movcTemp_3;
    u_xlat32 = x_1854;
    let x_1855 : vec4<f32> = u_xlat1;
    let x_1857 : vec2<f32> = u_xlat32;
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
    let x_1876 : vec2<f32> = u_xlat31;
    let x_1877 : vec4<f32> = u_xlat1;
    let x_1879 : vec2<f32> = (x_1876 + vec2<f32>(x_1877.x, x_1877.y));
    let x_1880 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1879.x, x_1879.y, x_1880.z, x_1880.w);
    let x_1882 : vec4<f32> = u_xlat1;
    let x_1884 : vec2<f32> = (vec2<f32>(x_1882.x, x_1882.y) * vec2<f32>(0.25f, 0.25f));
    let x_1885 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1884.x, x_1884.y, x_1885.z, x_1885.w);
    let x_1888 : i32 = u_xlati0.x;
    let x_1890 : f32 = u_xlat15.x;
    TGSM1[x_1888].value[0i] = bitcast<u32>(x_1890);
    let x_1894 : i32 = u_xlati0.x;
    let x_1896 : f32 = u_xlat15.y;
    TGSM1[x_1894].value[1i] = bitcast<u32>(x_1896);
    let x_1899 : i32 = u_xlati45;
    let x_1901 : f32 = u_xlat1.x;
    TGSM1[x_1899].value[0i] = bitcast<u32>(x_1901);
    let x_1904 : i32 = u_xlati45;
    let x_1906 : f32 = u_xlat1.y;
    TGSM1[x_1904].value[1i] = bitcast<u32>(x_1906);
  }
  workgroupBarrier();
  let x_1910 : u32 = gl_LocalInvocationID.y;
  let x_1914 : u32 = gl_LocalInvocationID.x;
  u_xlati0.x = ((bitcast<i32>(x_1910) * 16i) + bitcast<i32>(x_1914));
  let x_1918 : vec4<i32> = u_xlati0;
  u_xlati15 = (vec3<i32>(x_1918.x, x_1918.x, x_1918.x) + vec3<i32>(16i, 17i, 1i));
  let x_1923 : i32 = u_xlati15.x;
  let x_1925 : u32 = TGSM1[x_1923].value[0i];
  let x_1928 : i32 = u_xlati15.x;
  let x_1930 : u32 = TGSM1[x_1928].value[1i];
  let x_1932 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1925), bitcast<f32>(x_1930));
  let x_1933 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1932.x, x_1932.y, x_1933.z, x_1933.w);
  let x_1936 : i32 = u_xlati15.y;
  let x_1938 : u32 = TGSM1[x_1936].value[0i];
  let x_1941 : i32 = u_xlati15.y;
  let x_1943 : u32 = TGSM1[x_1941].value[1i];
  u_xlat15 = vec2<f32>(bitcast<f32>(x_1938), bitcast<f32>(x_1943));
  let x_1947 : i32 = u_xlati15.z;
  let x_1949 : u32 = TGSM1[x_1947].value[0i];
  let x_1952 : i32 = u_xlati15.z;
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
  u_xlatu3 = (vec4<u32>(x_1988.x, x_1988.y, x_1988.y, x_1988.y) << vec4<u32>(1u, 1u, 1u, 1u));
  let x_1992 : vec4<u32> = u_xlatu3;
  let x_1994 : vec2<f32> = vec2<f32>(vec2<u32>(x_1992.x, x_1992.w));
  let x_1995 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1994.x, x_1994.y, x_1995.z, x_1995.w);
  let x_1997 : vec4<f32> = u_xlat4;
  let x_2000 : vec4<f32> = x_66.InvHighResolution;
  let x_2002 : vec2<f32> = (vec2<f32>(x_1997.x, x_1997.y) * vec2<f32>(x_2000.x, x_2000.y));
  let x_2003 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2002.x, x_2002.y, x_2003.z, x_2003.w);
  let x_2010 : vec4<f32> = u_xlat4;
  let x_2012 : vec4<f32> = textureGather(0i, HiResAO, samplerHiResAO, vec2<f32>(x_2010.x, x_2010.y));
  u_xlat5 = x_2012;
  let x_2016 : vec4<f32> = u_xlat4;
  let x_2018 : vec4<f32> = textureGather(1i, HiResAO, samplerHiResAO, vec2<f32>(x_2016.x, x_2016.y));
  u_xlat6 = x_2018;
  let x_2022 : vec4<f32> = u_xlat0;
  let x_2024 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, vec2<f32>(x_2022.x, x_2022.w));
  u_xlat7 = x_2024;
  let x_2028 : vec4<f32> = u_xlat0;
  let x_2030 : vec4<f32> = textureGather(1i, LoResDB, samplerLoResDB, vec2<f32>(x_2028.x, x_2028.w));
  u_xlat8 = x_2030;
  let x_2036 : vec4<f32> = u_xlat4;
  let x_2038 : vec4<f32> = textureGather(0i, HiResDB, samplerHiResDB, vec2<f32>(x_2036.x, x_2036.y));
  u_xlat9 = x_2038;
  let x_2042 : vec4<f32> = u_xlat4;
  let x_2044 : vec4<f32> = textureGather(1i, HiResDB, samplerHiResDB, vec2<f32>(x_2042.x, x_2042.y));
  u_xlat4 = x_2044;
  let x_2046 : vec4<u32> = u_xlatu3;
  u_xlati10 = (bitcast<vec4<i32>>(vec4<u32>(x_2046.x, x_2046.w, x_2046.x, x_2046.w)) + vec4<i32>(-1i, 0i, 0i, -1i));
  let x_2053 : vec4<f32> = u_xlat7;
  let x_2055 : vec4<f32> = u_xlat9;
  u_xlat11 = (-(x_2053) + vec4<f32>(x_2055.x, x_2055.x, x_2055.x, x_2055.x));
  let x_2058 : vec4<f32> = u_xlat11;
  let x_2061 : vec4<f32> = x_66.AdditionalParams;
  u_xlat11 = (abs(x_2058) + vec4<f32>(x_2061.w, x_2061.w, x_2061.w, x_2061.w));
  let x_2067 : vec4<f32> = u_xlat11;
  u_xlat11 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2067);
  let x_2069 : vec4<f32> = u_xlat11;
  u_xlat0.x = dot(x_2069, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2074 : f32 = u_xlat15.x;
  u_xlat12.z = x_2074;
  let x_2076 : vec4<f32> = u_xlat1;
  let x_2077 : vec2<f32> = vec2<f32>(x_2076.x, x_2076.z);
  let x_2078 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_2078.x, x_2077.x, x_2078.z, x_2077.y);
  let x_2081 : f32 = u_xlat2.y;
  u_xlat12.x = x_2081;
  let x_2083 : vec4<f32> = u_xlat12;
  let x_2085 : vec4<f32> = u_xlat11;
  u_xlat0.y = dot(vec4<f32>(x_2083.y, x_2083.z, x_2083.w, x_2083.x), x_2085);
  let x_2088 : vec4<f32> = u_xlat0;
  let x_2091 : vec4<f32> = x_66.AdditionalParams;
  let x_2093 : vec2<f32> = (vec2<f32>(x_2088.x, x_2088.y) + vec2<f32>(x_2091.x, x_2091.x));
  let x_2094 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2093.x, x_2093.y, x_2094.z, x_2094.w);
  let x_2097 : f32 = u_xlat0.y;
  let x_2099 : f32 = u_xlat5.x;
  u_xlat15.x = (x_2097 * x_2099);
  let x_2103 : vec2<f32> = u_xlat15;
  let x_2105 : vec4<f32> = u_xlat0;
  let x_2107 : vec3<f32> = (vec3<f32>(x_2103.x, x_2103.x, x_2103.x) / vec3<f32>(x_2105.x, x_2105.x, x_2105.x));
  let x_2108 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_2107.x, x_2108.y, x_2107.y, x_2107.z);
  let x_2111 : vec4<f32> = u_xlat8;
  let x_2113 : vec4<f32> = u_xlat4;
  u_xlat13 = (-(x_2111) + vec4<f32>(x_2113.x, x_2113.x, x_2113.x, x_2113.x));
  let x_2116 : vec4<f32> = u_xlat13;
  let x_2119 : vec4<f32> = x_66.AdditionalParams;
  u_xlat13 = (abs(x_2116) + vec4<f32>(x_2119.w, x_2119.w, x_2119.w, x_2119.w));
  let x_2122 : vec4<f32> = u_xlat13;
  u_xlat13 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2122);
  let x_2124 : vec4<f32> = u_xlat13;
  u_xlat0.x = dot(x_2124, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2128 : f32 = u_xlat15.y;
  u_xlat2.z = x_2128;
  let x_2130 : vec4<f32> = u_xlat1;
  let x_2131 : vec2<f32> = vec2<f32>(x_2130.y, x_2130.w);
  let x_2132 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2132.x, x_2131.x, x_2132.z, x_2131.y);
  let x_2134 : vec4<f32> = u_xlat2;
  let x_2136 : vec4<f32> = u_xlat13;
  u_xlat0.y = dot(vec4<f32>(x_2134.y, x_2134.z, x_2134.w, x_2134.x), x_2136);
  let x_2139 : vec4<f32> = u_xlat0;
  let x_2142 : vec4<f32> = x_66.AdditionalParams;
  let x_2144 : vec2<f32> = (vec2<f32>(x_2139.x, x_2139.y) + vec2<f32>(x_2142.x, x_2142.x));
  let x_2145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2144.x, x_2144.y, x_2145.z, x_2145.w);
  let x_2148 : f32 = u_xlat0.y;
  let x_2150 : f32 = u_xlat6.x;
  u_xlat15.x = (x_2148 * x_2150);
  let x_2154 : f32 = u_xlat15.x;
  let x_2156 : f32 = u_xlat0.x;
  u_xlat11.y = (x_2154 / x_2156);
  let x_2163 : vec4<i32> = u_xlati10;
  let x_2165 : vec4<f32> = u_xlat11;
  textureStore(AoResult_origX0X, vec2<i32>(x_2163.x, x_2163.y), x_2165);
  let x_2166 : vec4<f32> = u_xlat7;
  let x_2169 : vec4<f32> = u_xlat9;
  u_xlat0 = (-(vec4<f32>(x_2166.y, x_2166.z, x_2166.w, x_2166.x)) + vec4<f32>(x_2169.y, x_2169.y, x_2169.y, x_2169.y));
  let x_2172 : vec4<f32> = u_xlat0;
  let x_2175 : vec4<f32> = x_66.AdditionalParams;
  u_xlat0 = (abs(x_2172) + vec4<f32>(x_2175.w, x_2175.w, x_2175.w, x_2175.w));
  let x_2178 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2178);
  let x_2180 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_2180, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2184 : f32 = u_xlat1.x;
  let x_2187 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2184 + x_2187);
  let x_2190 : vec4<f32> = u_xlat12;
  let x_2192 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec4<f32>(x_2190.z, x_2190.w, x_2190.x, x_2190.y), x_2192);
  let x_2196 : f32 = u_xlat0.x;
  let x_2198 : f32 = x_66.AdditionalParams.x;
  u_xlat0.x = (x_2196 + x_2198);
  let x_2202 : f32 = u_xlat0.x;
  let x_2204 : f32 = u_xlat5.y;
  u_xlat0.x = (x_2202 * x_2204);
  let x_2207 : vec4<f32> = u_xlat0;
  let x_2209 : vec4<f32> = u_xlat1;
  let x_2211 : vec3<f32> = (vec3<f32>(x_2207.x, x_2207.x, x_2207.x) / vec3<f32>(x_2209.x, x_2209.x, x_2209.x));
  let x_2212 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2211.x, x_2212.y, x_2211.y, x_2211.z);
  let x_2214 : vec4<f32> = u_xlat8;
  let x_2217 : vec4<f32> = u_xlat4;
  u_xlat1 = (-(vec4<f32>(x_2214.y, x_2214.z, x_2214.w, x_2214.x)) + vec4<f32>(x_2217.y, x_2217.y, x_2217.y, x_2217.y));
  let x_2220 : vec4<f32> = u_xlat1;
  let x_2223 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2220) + vec4<f32>(x_2223.w, x_2223.w, x_2223.w, x_2223.w));
  let x_2226 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2226);
  let x_2228 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_2228, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2232 : f32 = u_xlat4.x;
  let x_2234 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2232 + x_2234);
  let x_2237 : vec4<f32> = u_xlat2;
  let x_2239 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec4<f32>(x_2237.z, x_2237.w, x_2237.x, x_2237.y), x_2239);
  let x_2243 : f32 = u_xlat1.x;
  let x_2245 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2243 + x_2245);
  let x_2249 : f32 = u_xlat1.x;
  let x_2251 : f32 = u_xlat6.y;
  u_xlat1.x = (x_2249 * x_2251);
  let x_2255 : f32 = u_xlat1.x;
  let x_2257 : f32 = u_xlat4.x;
  u_xlat0.y = (x_2255 / x_2257);
  let x_2261 : vec4<u32> = u_xlatu3;
  let x_2264 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_2261.x, x_2261.w)), x_2264);
  let x_2265 : vec4<f32> = u_xlat7;
  let x_2268 : vec4<f32> = u_xlat9;
  u_xlat0 = (-(vec4<f32>(x_2265.z, x_2265.w, x_2265.x, x_2265.y)) + vec4<f32>(x_2268.z, x_2268.z, x_2268.z, x_2268.z));
  let x_2271 : vec4<f32> = u_xlat0;
  let x_2274 : vec4<f32> = x_66.AdditionalParams;
  u_xlat0 = (abs(x_2271) + vec4<f32>(x_2274.w, x_2274.w, x_2274.w, x_2274.w));
  let x_2277 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2277);
  let x_2279 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_2279, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2283 : f32 = u_xlat1.x;
  let x_2285 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2283 + x_2285);
  let x_2288 : vec4<f32> = u_xlat12;
  let x_2290 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec4<f32>(x_2288.w, x_2288.x, x_2288.y, x_2288.z), x_2290);
  let x_2294 : f32 = u_xlat0.x;
  let x_2296 : f32 = x_66.AdditionalParams.x;
  u_xlat0.x = (x_2294 + x_2296);
  let x_2300 : f32 = u_xlat0.x;
  let x_2302 : f32 = u_xlat5.z;
  u_xlat0.x = (x_2300 * x_2302);
  let x_2305 : vec4<f32> = u_xlat0;
  let x_2307 : vec4<f32> = u_xlat1;
  let x_2309 : vec3<f32> = (vec3<f32>(x_2305.x, x_2305.x, x_2305.x) / vec3<f32>(x_2307.x, x_2307.x, x_2307.x));
  let x_2310 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2309.x, x_2310.y, x_2309.y, x_2309.z);
  let x_2312 : vec4<f32> = u_xlat8;
  let x_2315 : vec4<f32> = u_xlat4;
  u_xlat1 = (-(vec4<f32>(x_2312.z, x_2312.w, x_2312.x, x_2312.y)) + vec4<f32>(x_2315.z, x_2315.z, x_2315.z, x_2315.z));
  let x_2318 : vec4<f32> = u_xlat1;
  let x_2321 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2318) + vec4<f32>(x_2321.w, x_2321.w, x_2321.w, x_2321.w));
  let x_2324 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2324);
  let x_2326 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_2326, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2330 : f32 = u_xlat4.x;
  let x_2332 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2330 + x_2332);
  let x_2335 : vec4<f32> = u_xlat2;
  let x_2337 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec4<f32>(x_2335.w, x_2335.x, x_2335.y, x_2335.z), x_2337);
  let x_2341 : f32 = u_xlat1.x;
  let x_2343 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2341 + x_2343);
  let x_2347 : f32 = u_xlat1.x;
  let x_2349 : f32 = u_xlat6.z;
  u_xlat1.x = (x_2347 * x_2349);
  let x_2353 : f32 = u_xlat1.x;
  let x_2355 : f32 = u_xlat4.x;
  u_xlat0.y = (x_2353 / x_2355);
  let x_2359 : vec4<i32> = u_xlati10;
  let x_2361 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_2359.z, x_2359.w), x_2361);
  let x_2362 : vec4<u32> = u_xlatu3;
  u_xlati0 = (bitcast<vec4<i32>>(x_2362) + vec4<i32>(-1i, -1i, -1i, -1i));
  let x_2366 : vec4<f32> = u_xlat7;
  let x_2369 : vec4<f32> = u_xlat9;
  u_xlat1 = (-(vec4<f32>(x_2366.w, x_2366.x, x_2366.y, x_2366.z)) + vec4<f32>(x_2369.w, x_2369.w, x_2369.w, x_2369.w));
  let x_2372 : vec4<f32> = u_xlat1;
  let x_2375 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2372) + vec4<f32>(x_2375.w, x_2375.w, x_2375.w, x_2375.w));
  let x_2378 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2378);
  let x_2380 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_2380, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2384 : f32 = u_xlat3.x;
  let x_2386 : f32 = x_66.AdditionalParams.x;
  u_xlat3.x = (x_2384 + x_2386);
  let x_2389 : vec4<f32> = u_xlat12;
  let x_2390 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(x_2389, x_2390);
  let x_2394 : f32 = u_xlat1.x;
  let x_2396 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2394 + x_2396);
  let x_2400 : f32 = u_xlat1.x;
  let x_2402 : f32 = u_xlat5.w;
  u_xlat1.x = (x_2400 * x_2402);
  let x_2405 : vec4<f32> = u_xlat1;
  let x_2407 : vec4<f32> = u_xlat3;
  let x_2409 : vec3<f32> = (vec3<f32>(x_2405.x, x_2405.x, x_2405.x) / vec3<f32>(x_2407.x, x_2407.x, x_2407.x));
  let x_2410 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2409.x, x_2410.y, x_2409.y, x_2409.z);
  let x_2412 : vec4<f32> = u_xlat8;
  let x_2415 : vec4<f32> = u_xlat4;
  u_xlat3 = (-(vec4<f32>(x_2412.w, x_2412.x, x_2412.y, x_2412.z)) + vec4<f32>(x_2415.w, x_2415.w, x_2415.w, x_2415.w));
  let x_2418 : vec4<f32> = u_xlat3;
  let x_2421 : vec4<f32> = x_66.AdditionalParams;
  u_xlat3 = (abs(x_2418) + vec4<f32>(x_2421.w, x_2421.w, x_2421.w, x_2421.w));
  let x_2424 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2424);
  let x_2426 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_2426, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2430 : f32 = u_xlat4.x;
  let x_2432 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2430 + x_2432);
  let x_2435 : vec4<f32> = u_xlat2;
  let x_2436 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_2435, x_2436);
  let x_2440 : f32 = u_xlat2.x;
  let x_2442 : f32 = x_66.AdditionalParams.x;
  u_xlat2.x = (x_2440 + x_2442);
  let x_2446 : f32 = u_xlat2.x;
  let x_2448 : f32 = u_xlat6.w;
  u_xlat2.x = (x_2446 * x_2448);
  let x_2452 : f32 = u_xlat2.x;
  let x_2454 : f32 = u_xlat4.x;
  u_xlat1.y = (x_2452 / x_2454);
  let x_2458 : vec4<i32> = u_xlati0;
  let x_2460 : vec4<f32> = u_xlat1;
  textureStore(AoResult_origX0X, vec2<i32>(x_2458.x, x_2458.y), x_2460);
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn main(@builtin(local_invocation_id) gl_LocalInvocationID_param : vec3<u32>, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_LocalInvocationID = gl_LocalInvocationID_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

