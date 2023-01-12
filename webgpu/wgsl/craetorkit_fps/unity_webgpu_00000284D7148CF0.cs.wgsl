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

@group(0) @binding(7) var samplerLoResAO1 : sampler;

@group(0) @binding(3) var LoResAO2 : texture_2d<f32>;

@group(0) @binding(8) var samplerLoResAO2 : sampler;

var<workgroup> TGSM1 : array<S, 256u>;

@group(0) @binding(0) var LoResDB : texture_2d<f32>;

@group(0) @binding(5) var samplerLoResDB : sampler;

var<workgroup> TGSM0 : array<S_1, 256u>;

var<private> gl_LocalInvocationIndex : u32;

var<workgroup> TGSM2 : array<S_2, 256u>;

@group(0) @binding(1) var HiResDB : texture_2d<f32>;

@group(0) @binding(6) var samplerHiResDB : sampler;

@group(0) @binding(4) var AoResult_origX0X : texture_storage_2d<rg32float, write>;

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
  var x_772 : f32;
  var x_785 : f32;
  var hlslcc_movcTemp : vec2<f32>;
  var x_799 : f32;
  var x_811 : f32;
  var u_xlati31 : vec2<i32>;
  var u_xlat12 : vec2<f32>;
  var x_843 : f32;
  var x_856 : f32;
  var x_869 : f32;
  var x_882 : f32;
  var x_897 : f32;
  var x_909 : f32;
  var x_958 : f32;
  var x_970 : f32;
  var u_xlati2 : vec4<i32>;
  var x_1004 : f32;
  var x_1017 : f32;
  var x_1030 : f32;
  var x_1043 : f32;
  var x_1058 : f32;
  var x_1070 : f32;
  var x_1112 : f32;
  var x_1124 : f32;
  var u_xlati28 : vec2<i32>;
  var x_1152 : f32;
  var x_1165 : f32;
  var x_1177 : f32;
  var x_1189 : f32;
  var u_xlatb29 : vec2<bool>;
  var u_xlatb4 : vec2<bool>;
  var u_xlatb5 : vec2<bool>;
  var u_xlatb30 : vec2<bool>;
  var x_1620 : f32;
  var x_1633 : f32;
  var hlslcc_movcTemp_1 : vec2<f32>;
  var x_1647 : f32;
  var x_1659 : f32;
  var u_xlati29 : vec2<i32>;
  var x_1688 : f32;
  var x_1701 : f32;
  var x_1714 : f32;
  var x_1727 : f32;
  var x_1742 : f32;
  var x_1754 : f32;
  var hlslcc_movcTemp_2 : vec4<f32>;
  var x_1784 : f32;
  var x_1796 : f32;
  var x_1824 : f32;
  var x_1837 : f32;
  var hlslcc_movcTemp_3 : vec2<f32>;
  var x_1851 : f32;
  var x_1863 : f32;
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
  u_xlat2 = x_92;
  let x_99 : vec2<f32> = u_xlat13;
  let x_100 : vec4<f32> = textureGather(0i, LoResAO2, samplerLoResAO2, x_99);
  u_xlat3 = x_100;
  let x_101 : vec4<f32> = u_xlat1;
  let x_102 : vec4<f32> = u_xlat3;
  u_xlat1 = min(x_101, x_102);
  let x_107 : vec2<f32> = u_xlat13;
  let x_108 : vec4<f32> = textureGather(1i, LoResAO2, samplerLoResAO2, x_107);
  u_xlat3 = x_108;
  let x_109 : vec4<f32> = u_xlat2;
  let x_111 : vec4<f32> = u_xlat3;
  u_xlat2 = min(vec4<f32>(x_109.z, x_109.x, x_109.w, x_109.y), vec4<f32>(x_111.z, x_111.x, x_111.w, x_111.y));
  let x_114 : vec4<f32> = u_xlat1;
  let x_115 : vec2<f32> = vec2<f32>(x_114.w, x_114.z);
  let x_116 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_115.x, x_116.y, x_115.y, x_116.w);
  let x_118 : vec4<f32> = u_xlat2;
  let x_119 : vec2<f32> = vec2<f32>(x_118.z, x_118.x);
  let x_120 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_120.x, x_119.x, x_120.z, x_119.y);
  let x_130 : i32 = u_xlati0.x;
  let x_133 : f32 = u_xlat3.x;
  TGSM1[x_130].value[0i] = bitcast<u32>(x_133);
  let x_138 : i32 = u_xlati0.x;
  let x_140 : f32 = u_xlat3.y;
  TGSM1[x_138].value[1i] = bitcast<u32>(x_140);
  let x_145 : i32 = u_xlati0.x;
  u_xlati39 = (x_145 + 1i);
  let x_147 : i32 = u_xlati39;
  let x_149 : f32 = u_xlat3.z;
  TGSM1[x_147].value[0i] = bitcast<u32>(x_149);
  let x_152 : i32 = u_xlati39;
  let x_155 : f32 = u_xlat3.w;
  TGSM1[x_152].value[1i] = bitcast<u32>(x_155);
  let x_160 : vec4<i32> = u_xlati0;
  u_xlati27 = (vec2<i32>(x_160.x, x_160.x) + vec2<i32>(16i, 17i));
  let x_166 : vec4<f32> = u_xlat1;
  let x_167 : vec2<f32> = vec2<f32>(x_166.x, x_166.y);
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_167.x, x_168.y, x_167.y, x_168.w);
  let x_171 : i32 = u_xlati27.x;
  let x_173 : f32 = u_xlat2.x;
  TGSM1[x_171].value[0i] = bitcast<u32>(x_173);
  let x_177 : i32 = u_xlati27.x;
  let x_179 : f32 = u_xlat2.y;
  TGSM1[x_177].value[1i] = bitcast<u32>(x_179);
  let x_183 : i32 = u_xlati27.y;
  let x_185 : f32 = u_xlat2.z;
  TGSM1[x_183].value[0i] = bitcast<u32>(x_185);
  let x_189 : i32 = u_xlati27.y;
  let x_191 : f32 = u_xlat2.w;
  TGSM1[x_189].value[1i] = bitcast<u32>(x_191);
  let x_199 : vec2<f32> = u_xlat13;
  let x_200 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, x_199);
  u_xlat2 = x_200;
  let x_203 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_203);
  let x_208 : vec2<f32> = u_xlat13;
  let x_209 : vec4<f32> = textureGather(1i, LoResDB, samplerLoResDB, x_208);
  u_xlat3 = x_209;
  let x_210 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / vec4<f32>(x_210.z, x_210.x, x_210.w, x_210.y));
  let x_214 : vec4<f32> = u_xlat2;
  let x_215 : vec2<f32> = vec2<f32>(x_214.w, x_214.z);
  let x_216 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_215.x, x_216.y, x_215.y, x_216.w);
  let x_218 : vec4<f32> = u_xlat3;
  let x_219 : vec2<f32> = vec2<f32>(x_218.z, x_218.x);
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_220.x, x_219.x, x_220.z, x_219.y);
  let x_227 : i32 = u_xlati0.x;
  let x_229 : f32 = u_xlat4.x;
  TGSM0[x_227].value[0i] = bitcast<u32>(x_229);
  let x_233 : i32 = u_xlati0.x;
  let x_235 : f32 = u_xlat4.y;
  TGSM0[x_233].value[1i] = bitcast<u32>(x_235);
  let x_238 : i32 = u_xlati39;
  let x_240 : f32 = u_xlat4.z;
  TGSM0[x_238].value[0i] = bitcast<u32>(x_240);
  let x_243 : i32 = u_xlati39;
  let x_245 : f32 = u_xlat4.w;
  TGSM0[x_243].value[1i] = bitcast<u32>(x_245);
  let x_248 : vec4<f32> = u_xlat2;
  let x_249 : vec2<f32> = vec2<f32>(x_248.x, x_248.y);
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_250.y, x_249.y, x_250.w);
  let x_253 : i32 = u_xlati27.x;
  let x_255 : f32 = u_xlat3.x;
  TGSM0[x_253].value[0i] = bitcast<u32>(x_255);
  let x_259 : i32 = u_xlati27.x;
  let x_261 : f32 = u_xlat3.y;
  TGSM0[x_259].value[1i] = bitcast<u32>(x_261);
  let x_265 : i32 = u_xlati27.y;
  let x_267 : f32 = u_xlat3.z;
  TGSM0[x_265].value[0i] = bitcast<u32>(x_267);
  let x_271 : i32 = u_xlati27.y;
  let x_273 : f32 = u_xlat3.w;
  TGSM0[x_271].value[1i] = bitcast<u32>(x_273);
  workgroupBarrier();
  let x_282 : u32 = gl_LocalInvocationIndex;
  let x_283 : u32 = gl_LocalInvocationIndex;
  let x_284 : u32 = gl_LocalInvocationIndex;
  let x_285 : u32 = gl_LocalInvocationIndex;
  let x_292 : vec4<bool> = (vec4<u32>(x_282, x_283, x_284, x_285) < vec4<u32>(39u, 45u, 0u, 0u));
  u_xlatb0 = vec2<bool>(x_292.x, x_292.y);
  let x_296 : bool = u_xlatb0.x;
  if (x_296) {
    let x_301 : u32 = gl_LocalInvocationIndex;
    u_xlatu0 = (x_301 / 3u);
    let x_304 : u32 = gl_LocalInvocationIndex;
    u_xlatu1 = (x_304 % 3u);
    let x_307 : u32 = u_xlatu1;
    u_xlati26 = (bitcast<i32>(x_307) * 3i);
    let x_311 : u32 = u_xlatu0;
    let x_314 : i32 = u_xlati26;
    u_xlati0.x = ((bitcast<i32>(x_311) * 16i) + x_314);
    let x_319 : i32 = u_xlati0.x;
    let x_321 : u32 = TGSM1[x_319].value[0i];
    let x_324 : i32 = u_xlati0.x;
    let x_326 : u32 = TGSM1[x_324].value[1i];
    u_xlat26 = vec2<f32>(bitcast<f32>(x_321), bitcast<f32>(x_326));
    let x_330 : vec4<i32> = u_xlati0;
    u_xlati1 = (vec4<i32>(x_330.x, x_330.x, x_330.x, x_330.x) + vec4<i32>(1i, 2i, 3i, 4i));
    let x_337 : i32 = u_xlati1.x;
    let x_339 : u32 = TGSM1[x_337].value[0i];
    let x_342 : i32 = u_xlati1.x;
    let x_344 : u32 = TGSM1[x_342].value[1i];
    let x_346 : vec2<f32> = vec2<f32>(bitcast<f32>(x_339), bitcast<f32>(x_344));
    let x_347 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_346.x, x_346.y, x_347.z, x_347.w);
    let x_351 : i32 = u_xlati1.y;
    let x_353 : u32 = TGSM1[x_351].value[0i];
    let x_356 : i32 = u_xlati1.y;
    let x_358 : u32 = TGSM1[x_356].value[1i];
    u_xlat28 = vec2<f32>(bitcast<f32>(x_353), bitcast<f32>(x_358));
    let x_362 : i32 = u_xlati1.z;
    let x_364 : u32 = TGSM1[x_362].value[0i];
    let x_367 : i32 = u_xlati1.z;
    let x_369 : u32 = TGSM1[x_367].value[1i];
    let x_371 : vec2<f32> = vec2<f32>(bitcast<f32>(x_364), bitcast<f32>(x_369));
    let x_372 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_372.w);
    let x_376 : i32 = u_xlati1.w;
    let x_378 : u32 = TGSM1[x_376].value[0i];
    let x_381 : i32 = u_xlati1.w;
    let x_383 : u32 = TGSM1[x_381].value[1i];
    u_xlat29 = vec2<f32>(bitcast<f32>(x_378), bitcast<f32>(x_383));
    let x_387 : vec4<i32> = u_xlati0;
    let x_392 : vec2<i32> = (vec2<i32>(x_387.x, x_387.x) + vec2<i32>(5i, 6i));
    let x_393 : vec4<i32> = u_xlati4;
    u_xlati4 = vec4<i32>(x_392.x, x_392.y, x_393.z, x_393.w);
    let x_397 : i32 = u_xlati4.x;
    let x_399 : u32 = TGSM1[x_397].value[0i];
    let x_402 : i32 = u_xlati4.x;
    let x_404 : u32 = TGSM1[x_402].value[1i];
    u_xlat30 = vec2<f32>(bitcast<f32>(x_399), bitcast<f32>(x_404));
    let x_409 : i32 = u_xlati4.y;
    let x_411 : u32 = TGSM1[x_409].value[0i];
    let x_414 : i32 = u_xlati4.y;
    let x_416 : u32 = TGSM1[x_414].value[1i];
    let x_418 : vec2<f32> = vec2<f32>(bitcast<f32>(x_411), bitcast<f32>(x_416));
    let x_419 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
    let x_423 : i32 = u_xlati0.x;
    let x_425 : u32 = TGSM0[x_423].value[0i];
    let x_428 : i32 = u_xlati0.x;
    let x_430 : u32 = TGSM0[x_428].value[1i];
    u_xlat31 = vec2<f32>(bitcast<f32>(x_425), bitcast<f32>(x_430));
    let x_435 : i32 = u_xlati1.x;
    let x_437 : u32 = TGSM0[x_435].value[0i];
    let x_440 : i32 = u_xlati1.x;
    let x_442 : u32 = TGSM0[x_440].value[1i];
    let x_444 : vec2<f32> = vec2<f32>(bitcast<f32>(x_437), bitcast<f32>(x_442));
    let x_445 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
    let x_449 : i32 = u_xlati1.y;
    let x_451 : u32 = TGSM0[x_449].value[0i];
    let x_454 : i32 = u_xlati1.y;
    let x_456 : u32 = TGSM0[x_454].value[1i];
    u_xlat32 = vec2<f32>(bitcast<f32>(x_451), bitcast<f32>(x_456));
    let x_461 : i32 = u_xlati1.z;
    let x_463 : u32 = TGSM0[x_461].value[0i];
    let x_466 : i32 = u_xlati1.z;
    let x_468 : u32 = TGSM0[x_466].value[1i];
    let x_470 : vec2<f32> = vec2<f32>(bitcast<f32>(x_463), bitcast<f32>(x_468));
    let x_471 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_470.x, x_470.y, x_471.z, x_471.w);
    let x_475 : i32 = u_xlati1.w;
    let x_477 : u32 = TGSM0[x_475].value[0i];
    let x_480 : i32 = u_xlati1.w;
    let x_482 : u32 = TGSM0[x_480].value[1i];
    u_xlat27 = vec2<f32>(bitcast<f32>(x_477), bitcast<f32>(x_482));
    let x_487 : i32 = u_xlati4.x;
    let x_489 : u32 = TGSM0[x_487].value[0i];
    let x_492 : i32 = u_xlati4.x;
    let x_494 : u32 = TGSM0[x_492].value[1i];
    u_xlat33 = vec2<f32>(bitcast<f32>(x_489), bitcast<f32>(x_494));
    let x_498 : i32 = u_xlati4.y;
    let x_500 : u32 = TGSM0[x_498].value[0i];
    let x_503 : i32 = u_xlati4.y;
    let x_505 : u32 = TGSM0[x_503].value[1i];
    let x_507 : vec2<f32> = vec2<f32>(bitcast<f32>(x_500), bitcast<f32>(x_505));
    let x_508 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
    let x_510 : vec2<f32> = u_xlat31;
    let x_512 : vec4<f32> = u_xlat6;
    u_xlat31 = (-(x_510) + vec2<f32>(x_512.x, x_512.y));
    let x_515 : vec4<f32> = u_xlat6;
    let x_518 : vec2<f32> = u_xlat32;
    let x_519 : vec2<f32> = (-(vec2<f32>(x_515.x, x_515.y)) + x_518);
    let x_520 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
    let x_522 : vec2<f32> = u_xlat32;
    let x_524 : vec4<f32> = u_xlat7;
    u_xlat32 = (-(x_522) + vec2<f32>(x_524.x, x_524.y));
    let x_527 : vec4<f32> = u_xlat7;
    let x_530 : vec2<f32> = u_xlat27;
    let x_531 : vec2<f32> = (-(vec2<f32>(x_527.x, x_527.y)) + x_530);
    let x_532 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
    let x_534 : vec2<f32> = u_xlat27;
    let x_536 : vec2<f32> = u_xlat33;
    u_xlat27 = (-(x_534) + x_536);
    let x_538 : vec2<f32> = u_xlat33;
    let x_540 : vec4<f32> = u_xlat4;
    let x_542 : vec2<f32> = (-(x_538) + vec2<f32>(x_540.x, x_540.y));
    let x_543 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
    let x_545 : vec2<f32> = u_xlat31;
    let x_546 : vec2<f32> = u_xlat31;
    let x_549 : vec4<f32> = x_66.AdditionalParams;
    u_xlat33 = ((x_545 * x_546) + vec2<f32>(x_549.y, x_549.y));
    let x_553 : vec4<f32> = u_xlat6;
    let x_555 : vec4<f32> = u_xlat6;
    let x_559 : vec4<f32> = x_66.AdditionalParams;
    let x_561 : vec2<f32> = ((vec2<f32>(x_553.x, x_553.y) * vec2<f32>(x_555.x, x_555.y)) + vec2<f32>(x_559.y, x_559.y));
    let x_562 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
    let x_565 : vec2<f32> = u_xlat32;
    let x_566 : vec2<f32> = u_xlat32;
    let x_569 : vec4<f32> = x_66.AdditionalParams;
    u_xlat34 = ((x_565 * x_566) + vec2<f32>(x_569.y, x_569.y));
    let x_573 : vec4<f32> = u_xlat7;
    let x_575 : vec4<f32> = u_xlat7;
    let x_579 : vec4<f32> = x_66.AdditionalParams;
    let x_581 : vec2<f32> = ((vec2<f32>(x_573.x, x_573.y) * vec2<f32>(x_575.x, x_575.y)) + vec2<f32>(x_579.y, x_579.y));
    let x_582 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
    let x_585 : vec2<f32> = u_xlat27;
    let x_586 : vec2<f32> = u_xlat27;
    let x_589 : vec4<f32> = x_66.AdditionalParams;
    u_xlat35 = ((x_585 * x_586) + vec2<f32>(x_589.y, x_589.y));
    let x_593 : vec4<f32> = u_xlat4;
    let x_595 : vec4<f32> = u_xlat4;
    let x_599 : vec4<f32> = x_66.AdditionalParams;
    let x_601 : vec2<f32> = ((vec2<f32>(x_593.x, x_593.y) * vec2<f32>(x_595.x, x_595.y)) + vec2<f32>(x_599.y, x_599.y));
    let x_602 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
    let x_604 : vec2<f32> = u_xlat31;
    let x_605 : vec4<f32> = u_xlat6;
    let x_609 : vec4<f32> = x_66.AdditionalParams;
    u_xlat31 = ((x_604 * vec2<f32>(x_605.x, x_605.y)) + vec2<f32>(x_609.y, x_609.y));
    let x_612 : vec2<f32> = u_xlat31;
    let x_613 : vec2<f32> = u_xlat31;
    u_xlat31 = (x_612 * x_613);
    let x_615 : vec2<f32> = u_xlat33;
    let x_616 : vec4<f32> = u_xlat8;
    u_xlat33 = (x_615 * vec2<f32>(x_616.x, x_616.y));
    let x_619 : vec2<f32> = u_xlat33;
    let x_621 : vec4<f32> = x_66.AdditionalParams;
    u_xlat33 = (x_619 * vec2<f32>(x_621.z, x_621.z));
    let x_624 : vec4<f32> = u_xlat6;
    let x_626 : vec2<f32> = u_xlat32;
    let x_629 : vec4<f32> = x_66.AdditionalParams;
    let x_631 : vec2<f32> = ((vec2<f32>(x_624.x, x_624.y) * x_626) + vec2<f32>(x_629.y, x_629.y));
    let x_632 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_631.x, x_631.y, x_632.z, x_632.w);
    let x_634 : vec2<f32> = u_xlat34;
    let x_635 : vec4<f32> = u_xlat8;
    let x_637 : vec2<f32> = (x_634 * vec2<f32>(x_635.x, x_635.y));
    let x_638 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
    let x_640 : vec2<f32> = u_xlat32;
    let x_641 : vec4<f32> = u_xlat7;
    let x_645 : vec4<f32> = x_66.AdditionalParams;
    let x_647 : vec2<f32> = ((x_640 * vec2<f32>(x_641.x, x_641.y)) + vec2<f32>(x_645.y, x_645.y));
    let x_648 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_648.x, x_648.y, x_647.x, x_647.y);
    let x_650 : vec4<f32> = u_xlat6;
    let x_651 : vec4<f32> = u_xlat6;
    u_xlat6 = (x_650 * x_651);
    let x_653 : vec2<f32> = u_xlat34;
    let x_654 : vec4<f32> = u_xlat9;
    let x_656 : vec2<f32> = (x_653 * vec2<f32>(x_654.x, x_654.y));
    let x_657 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_657.x, x_657.y, x_656.x, x_656.y);
    let x_659 : vec4<f32> = u_xlat8;
    let x_661 : vec4<f32> = x_66.AdditionalParams;
    u_xlat8 = (x_659 * vec4<f32>(x_661.z, x_661.z, x_661.z, x_661.z));
    let x_664 : vec4<f32> = u_xlat7;
    let x_666 : vec2<f32> = u_xlat27;
    let x_669 : vec4<f32> = x_66.AdditionalParams;
    let x_671 : vec2<f32> = ((vec2<f32>(x_664.x, x_664.y) * x_666) + vec2<f32>(x_669.y, x_669.y));
    let x_672 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
    let x_674 : vec4<f32> = u_xlat7;
    let x_676 : vec4<f32> = u_xlat7;
    let x_678 : vec2<f32> = (vec2<f32>(x_674.x, x_674.y) * vec2<f32>(x_676.x, x_676.y));
    let x_679 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
    let x_681 : vec2<f32> = u_xlat35;
    let x_682 : vec4<f32> = u_xlat9;
    let x_684 : vec2<f32> = (x_681 * vec2<f32>(x_682.x, x_682.y));
    let x_685 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
    let x_687 : vec4<f32> = u_xlat9;
    let x_690 : vec4<f32> = x_66.AdditionalParams;
    let x_692 : vec2<f32> = (vec2<f32>(x_687.x, x_687.y) * vec2<f32>(x_690.z, x_690.z));
    let x_693 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
    let x_695 : vec2<f32> = u_xlat27;
    let x_696 : vec4<f32> = u_xlat4;
    let x_700 : vec4<f32> = x_66.AdditionalParams;
    u_xlat27 = ((x_695 * vec2<f32>(x_696.x, x_696.y)) + vec2<f32>(x_700.y, x_700.y));
    let x_703 : vec2<f32> = u_xlat27;
    let x_704 : vec2<f32> = u_xlat27;
    u_xlat27 = (x_703 * x_704);
    let x_706 : vec2<f32> = u_xlat35;
    let x_707 : vec4<f32> = u_xlat10;
    let x_709 : vec2<f32> = (x_706 * vec2<f32>(x_707.x, x_707.y));
    let x_710 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_709.x, x_709.y, x_710.z, x_710.w);
    let x_712 : vec4<f32> = u_xlat4;
    let x_715 : vec4<f32> = x_66.AdditionalParams;
    let x_717 : vec2<f32> = (vec2<f32>(x_712.x, x_712.y) * vec2<f32>(x_715.z, x_715.z));
    let x_718 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
    let x_721 : vec2<f32> = u_xlat33;
    let x_723 : vec2<f32> = u_xlat31;
    let x_725 : vec4<bool> = (vec4<f32>(x_721.x, x_721.y, x_721.x, x_721.y) < vec4<f32>(x_723.x, x_723.y, x_723.x, x_723.y));
    u_xlatb31 = vec2<bool>(x_725.x, x_725.y);
    let x_729 : vec4<f32> = u_xlat8;
    let x_730 : vec4<f32> = u_xlat6;
    u_xlatb6 = (x_729 < x_730);
    let x_733 : vec4<f32> = u_xlat9;
    let x_735 : vec4<f32> = u_xlat7;
    let x_737 : vec4<bool> = (vec4<f32>(x_733.x, x_733.y, x_733.x, x_733.x) < vec4<f32>(x_735.x, x_735.y, x_735.x, x_735.x));
    u_xlatb7 = vec2<bool>(x_737.x, x_737.y);
    let x_740 : vec4<f32> = u_xlat4;
    let x_742 : vec2<f32> = u_xlat27;
    let x_744 : vec4<bool> = (vec4<f32>(x_740.x, x_740.y, x_740.x, x_740.y) < vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y));
    u_xlatb27 = vec2<bool>(x_744.x, x_744.y);
    let x_746 : vec2<bool> = u_xlatb31;
    let x_753 : vec4<bool> = u_xlatb6;
    let x_759 : vec2<i32> = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_746) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_753.x, x_753.y)) * vec2<u32>(4294967295u, 4294967295u))));
    let x_760 : vec4<i32> = u_xlati4;
    u_xlati4 = vec4<i32>(x_759.x, x_759.y, x_760.z, x_760.w);
    let x_762 : vec4<i32> = u_xlati4;
    let x_766 : vec2<i32> = bitcast<vec2<i32>>((bitcast<vec2<u32>>(vec2<i32>(x_762.x, x_762.y)) & vec2<u32>(1u, 1u)));
    let x_767 : vec4<i32> = u_xlati4;
    u_xlati4 = vec4<i32>(x_766.x, x_766.y, x_767.z, x_767.w);
    let x_770 : i32 = u_xlati4.x;
    if ((x_770 != 0i)) {
      let x_776 : f32 = u_xlat2.x;
      x_772 = x_776;
    } else {
      let x_779 : f32 = u_xlat28.x;
      x_772 = x_779;
    }
    let x_780 : f32 = x_772;
    u_xlat4.x = x_780;
    let x_783 : i32 = u_xlati4.y;
    if ((x_783 != 0i)) {
      let x_789 : f32 = u_xlat2.y;
      x_785 = x_789;
    } else {
      let x_792 : f32 = u_xlat28.y;
      x_785 = x_792;
    }
    let x_793 : f32 = x_785;
    u_xlat4.y = x_793;
    let x_796 : vec2<f32> = u_xlat26;
    hlslcc_movcTemp = x_796;
    let x_798 : bool = u_xlatb31.x;
    if (x_798) {
      let x_803 : f32 = u_xlat26.x;
      x_799 = x_803;
    } else {
      let x_806 : f32 = u_xlat4.x;
      x_799 = x_806;
    }
    let x_807 : f32 = x_799;
    hlslcc_movcTemp.x = x_807;
    let x_810 : bool = u_xlatb31.y;
    if (x_810) {
      let x_815 : f32 = u_xlat26.y;
      x_811 = x_815;
    } else {
      let x_818 : f32 = u_xlat4.y;
      x_811 = x_818;
    }
    let x_819 : f32 = x_811;
    hlslcc_movcTemp.y = x_819;
    let x_821 : vec2<f32> = hlslcc_movcTemp;
    u_xlat26 = x_821;
    let x_823 : vec4<bool> = u_xlatb6;
    let x_828 : vec4<bool> = u_xlatb6;
    u_xlati31 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_823.x, x_823.y)) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_828.z, x_828.w)) * vec2<u32>(4294967295u, 4294967295u))));
    let x_835 : vec2<i32> = u_xlati31;
    u_xlati31 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_835) & vec2<u32>(1u, 1u)));
    let x_841 : i32 = u_xlati31.x;
    if ((x_841 != 0i)) {
      let x_847 : f32 = u_xlat28.x;
      x_843 = x_847;
    } else {
      let x_850 : f32 = u_xlat3.x;
      x_843 = x_850;
    }
    let x_851 : f32 = x_843;
    u_xlat12.x = x_851;
    let x_854 : i32 = u_xlati31.y;
    if ((x_854 != 0i)) {
      let x_860 : f32 = u_xlat28.y;
      x_856 = x_860;
    } else {
      let x_863 : f32 = u_xlat3.y;
      x_856 = x_863;
    }
    let x_864 : f32 = x_856;
    u_xlat12.y = x_864;
    let x_867 : i32 = u_xlati31.x;
    if ((x_867 != 0i)) {
      let x_873 : f32 = u_xlat3.x;
      x_869 = x_873;
    } else {
      let x_876 : f32 = u_xlat28.x;
      x_869 = x_876;
    }
    let x_877 : f32 = x_869;
    u_xlat9.x = x_877;
    let x_880 : i32 = u_xlati31.y;
    if ((x_880 != 0i)) {
      let x_886 : f32 = u_xlat3.y;
      x_882 = x_886;
    } else {
      let x_889 : f32 = u_xlat28.y;
      x_882 = x_889;
    }
    let x_890 : f32 = x_882;
    u_xlat9.y = x_890;
    let x_892 : vec2<f32> = u_xlat12;
    let x_893 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_892.x, x_892.y, x_893.z, x_893.w);
    let x_896 : bool = u_xlatb6.z;
    if (x_896) {
      let x_901 : f32 = u_xlat29.x;
      x_897 = x_901;
    } else {
      let x_904 : f32 = u_xlat9.x;
      x_897 = x_904;
    }
    let x_905 : f32 = x_897;
    u_xlat31.x = x_905;
    let x_908 : bool = u_xlatb6.w;
    if (x_908) {
      let x_913 : f32 = u_xlat29.y;
      x_909 = x_913;
    } else {
      let x_916 : f32 = u_xlat9.y;
      x_909 = x_916;
    }
    let x_917 : f32 = x_909;
    u_xlat31.y = x_917;
    let x_919 : vec2<f32> = u_xlat26;
    let x_920 : vec2<f32> = u_xlat31;
    u_xlat26 = (x_919 + x_920);
    let x_922 : vec2<f32> = u_xlat26;
    let x_926 : vec4<f32> = u_xlat4;
    u_xlat26 = ((x_922 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_926.x, x_926.y));
    let x_929 : vec2<f32> = u_xlat28;
    let x_930 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_929 + x_930);
    let x_932 : vec4<f32> = u_xlat9;
    let x_934 : vec2<f32> = u_xlat26;
    u_xlat26 = (vec2<f32>(x_932.x, x_932.y) + x_934);
    let x_936 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_936 * vec2<f32>(0.25f, 0.25f));
    let x_945 : i32 = u_xlati0.x;
    let x_947 : f32 = u_xlat26.x;
    TGSM2[x_945].value[0i] = bitcast<u32>(x_947);
    let x_951 : i32 = u_xlati0.x;
    let x_953 : f32 = u_xlat26.y;
    TGSM2[x_951].value[1i] = bitcast<u32>(x_953);
    let x_957 : bool = u_xlatb6.x;
    if (x_957) {
      let x_962 : f32 = u_xlat2.x;
      x_958 = x_962;
    } else {
      let x_965 : f32 = u_xlat8.x;
      x_958 = x_965;
    }
    let x_966 : f32 = x_958;
    u_xlat26.x = x_966;
    let x_969 : bool = u_xlatb6.y;
    if (x_969) {
      let x_974 : f32 = u_xlat2.y;
      x_970 = x_974;
    } else {
      let x_977 : f32 = u_xlat8.y;
      x_970 = x_977;
    }
    let x_978 : f32 = x_970;
    u_xlat26.y = x_978;
    let x_981 : vec4<bool> = u_xlatb6;
    let x_986 : vec2<bool> = u_xlatb7;
    let x_991 : vec2<i32> = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_981.z, x_981.w)) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_986) * vec2<u32>(4294967295u, 4294967295u))));
    let x_992 : vec4<i32> = u_xlati2;
    u_xlati2 = vec4<i32>(x_991.x, x_991.y, x_992.z, x_992.w);
    let x_994 : vec4<i32> = u_xlati2;
    let x_998 : vec2<i32> = bitcast<vec2<i32>>((bitcast<vec2<u32>>(vec2<i32>(x_994.x, x_994.y)) & vec2<u32>(1u, 1u)));
    let x_999 : vec4<i32> = u_xlati2;
    u_xlati2 = vec4<i32>(x_998.x, x_998.y, x_999.z, x_999.w);
    let x_1002 : i32 = u_xlati2.x;
    if ((x_1002 != 0i)) {
      let x_1008 : f32 = u_xlat3.x;
      x_1004 = x_1008;
    } else {
      let x_1011 : f32 = u_xlat29.x;
      x_1004 = x_1011;
    }
    let x_1012 : f32 = x_1004;
    u_xlat12.x = x_1012;
    let x_1015 : i32 = u_xlati2.y;
    if ((x_1015 != 0i)) {
      let x_1021 : f32 = u_xlat3.y;
      x_1017 = x_1021;
    } else {
      let x_1024 : f32 = u_xlat29.y;
      x_1017 = x_1024;
    }
    let x_1025 : f32 = x_1017;
    u_xlat12.y = x_1025;
    let x_1028 : i32 = u_xlati2.x;
    if ((x_1028 != 0i)) {
      let x_1034 : f32 = u_xlat29.x;
      x_1030 = x_1034;
    } else {
      let x_1037 : f32 = u_xlat3.x;
      x_1030 = x_1037;
    }
    let x_1038 : f32 = x_1030;
    u_xlat4.x = x_1038;
    let x_1041 : i32 = u_xlati2.y;
    if ((x_1041 != 0i)) {
      let x_1047 : f32 = u_xlat29.y;
      x_1043 = x_1047;
    } else {
      let x_1050 : f32 = u_xlat3.y;
      x_1043 = x_1050;
    }
    let x_1051 : f32 = x_1043;
    u_xlat4.y = x_1051;
    let x_1053 : vec2<f32> = u_xlat12;
    let x_1054 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1053.x, x_1053.y, x_1054.z, x_1054.w);
    let x_1057 : bool = u_xlatb7.x;
    if (x_1057) {
      let x_1062 : f32 = u_xlat30.x;
      x_1058 = x_1062;
    } else {
      let x_1065 : f32 = u_xlat4.x;
      x_1058 = x_1065;
    }
    let x_1066 : f32 = x_1058;
    u_xlat31.x = x_1066;
    let x_1069 : bool = u_xlatb7.y;
    if (x_1069) {
      let x_1074 : f32 = u_xlat30.y;
      x_1070 = x_1074;
    } else {
      let x_1077 : f32 = u_xlat4.y;
      x_1070 = x_1077;
    }
    let x_1078 : f32 = x_1070;
    u_xlat31.y = x_1078;
    let x_1080 : vec2<f32> = u_xlat26;
    let x_1081 : vec2<f32> = u_xlat31;
    u_xlat26 = (x_1080 + x_1081);
    let x_1083 : vec2<f32> = u_xlat26;
    let x_1085 : vec4<f32> = u_xlat8;
    u_xlat26 = ((x_1083 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1085.x, x_1085.y));
    let x_1088 : vec4<f32> = u_xlat3;
    let x_1090 : vec2<f32> = u_xlat26;
    u_xlat26 = (vec2<f32>(x_1088.x, x_1088.y) + x_1090);
    let x_1092 : vec4<f32> = u_xlat4;
    let x_1094 : vec2<f32> = u_xlat26;
    u_xlat26 = (vec2<f32>(x_1092.x, x_1092.y) + x_1094);
    let x_1096 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1096 * vec2<f32>(0.25f, 0.25f));
    let x_1099 : i32 = u_xlati1.x;
    let x_1101 : f32 = u_xlat26.x;
    TGSM2[x_1099].value[0i] = bitcast<u32>(x_1101);
    let x_1105 : i32 = u_xlati1.x;
    let x_1107 : f32 = u_xlat26.y;
    TGSM2[x_1105].value[1i] = bitcast<u32>(x_1107);
    let x_1111 : bool = u_xlatb6.z;
    if (x_1111) {
      let x_1116 : f32 = u_xlat28.x;
      x_1112 = x_1116;
    } else {
      let x_1119 : f32 = u_xlat2.x;
      x_1112 = x_1119;
    }
    let x_1120 : f32 = x_1112;
    u_xlat26.x = x_1120;
    let x_1123 : bool = u_xlatb6.w;
    if (x_1123) {
      let x_1128 : f32 = u_xlat28.y;
      x_1124 = x_1128;
    } else {
      let x_1131 : f32 = u_xlat2.y;
      x_1124 = x_1131;
    }
    let x_1132 : f32 = x_1124;
    u_xlat26.y = x_1132;
    let x_1135 : vec2<bool> = u_xlatb7;
    let x_1139 : vec2<bool> = u_xlatb27;
    u_xlati28 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1135) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1139) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1145 : vec2<i32> = u_xlati28;
    u_xlati28 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1145) & vec2<u32>(1u, 1u)));
    let x_1150 : i32 = u_xlati28.x;
    if ((x_1150 != 0i)) {
      let x_1156 : f32 = u_xlat30.x;
      x_1152 = x_1156;
    } else {
      let x_1159 : f32 = u_xlat29.x;
      x_1152 = x_1159;
    }
    let x_1160 : f32 = x_1152;
    u_xlat28.x = x_1160;
    let x_1163 : i32 = u_xlati28.y;
    if ((x_1163 != 0i)) {
      let x_1169 : f32 = u_xlat30.y;
      x_1165 = x_1169;
    } else {
      let x_1172 : f32 = u_xlat29.y;
      x_1165 = x_1172;
    }
    let x_1173 : f32 = x_1165;
    u_xlat28.y = x_1173;
    let x_1176 : bool = u_xlatb27.x;
    if (x_1176) {
      let x_1181 : f32 = u_xlat5.x;
      x_1177 = x_1181;
    } else {
      let x_1184 : f32 = u_xlat28.x;
      x_1177 = x_1184;
    }
    let x_1185 : f32 = x_1177;
    u_xlat1.x = x_1185;
    let x_1188 : bool = u_xlatb27.y;
    if (x_1188) {
      let x_1193 : f32 = u_xlat5.y;
      x_1189 = x_1193;
    } else {
      let x_1196 : f32 = u_xlat28.y;
      x_1189 = x_1196;
    }
    let x_1197 : f32 = x_1189;
    u_xlat1.z = x_1197;
    let x_1199 : vec2<f32> = u_xlat26;
    let x_1200 : vec4<f32> = u_xlat1;
    u_xlat26 = (x_1199 + vec2<f32>(x_1200.x, x_1200.z));
    let x_1203 : vec2<f32> = u_xlat26;
    let x_1205 : vec4<f32> = u_xlat2;
    u_xlat26 = ((x_1203 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1205.x, x_1205.y));
    let x_1208 : vec2<f32> = u_xlat29;
    let x_1209 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1208 + x_1209);
    let x_1211 : vec2<f32> = u_xlat28;
    let x_1212 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1211 + x_1212);
    let x_1214 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1214 * vec2<f32>(0.25f, 0.25f));
    let x_1217 : i32 = u_xlati1.y;
    let x_1219 : f32 = u_xlat26.x;
    TGSM2[x_1217].value[0i] = bitcast<u32>(x_1219);
    let x_1223 : i32 = u_xlati1.y;
    let x_1225 : f32 = u_xlat26.y;
    TGSM2[x_1223].value[1i] = bitcast<u32>(x_1225);
  }
  workgroupBarrier();
  let x_1229 : bool = u_xlatb0.y;
  if (x_1229) {
    let x_1232 : u32 = gl_LocalInvocationIndex;
    u_xlatu0 = (x_1232 / 9u);
    let x_1235 : u32 = gl_LocalInvocationIndex;
    u_xlatu1 = (x_1235 % 9u);
    let x_1237 : u32 = u_xlatu0;
    let x_1240 : u32 = u_xlatu1;
    u_xlati0.x = ((bitcast<i32>(x_1237) * 32i) + bitcast<i32>(x_1240));
    let x_1245 : i32 = u_xlati0.x;
    let x_1247 : u32 = TGSM2[x_1245].value[0i];
    let x_1250 : i32 = u_xlati0.x;
    let x_1252 : u32 = TGSM2[x_1250].value[1i];
    u_xlat13 = vec2<f32>(bitcast<f32>(x_1247), bitcast<f32>(x_1252));
    let x_1256 : i32 = u_xlati0.x;
    u_xlati39 = (x_1256 + 16i);
    let x_1258 : i32 = u_xlati39;
    let x_1260 : u32 = TGSM2[x_1258].value[0i];
    let x_1262 : i32 = u_xlati39;
    let x_1264 : u32 = TGSM2[x_1262].value[1i];
    let x_1266 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1260), bitcast<f32>(x_1264));
    let x_1267 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1266.x, x_1266.y, x_1267.z, x_1267.w);
    let x_1269 : vec4<i32> = u_xlati0;
    u_xlati2 = (vec4<i32>(x_1269.x, x_1269.x, x_1269.x, x_1269.x) + vec4<i32>(32i, 48i, 64i, 80i));
    let x_1277 : i32 = u_xlati2.x;
    let x_1279 : u32 = TGSM2[x_1277].value[0i];
    let x_1282 : i32 = u_xlati2.x;
    let x_1284 : u32 = TGSM2[x_1282].value[1i];
    u_xlat27 = vec2<f32>(bitcast<f32>(x_1279), bitcast<f32>(x_1284));
    let x_1288 : i32 = u_xlati2.y;
    let x_1290 : u32 = TGSM2[x_1288].value[0i];
    let x_1293 : i32 = u_xlati2.y;
    let x_1295 : u32 = TGSM2[x_1293].value[1i];
    let x_1297 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1290), bitcast<f32>(x_1295));
    let x_1298 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1297.x, x_1297.y, x_1298.z, x_1298.w);
    let x_1301 : i32 = u_xlati2.z;
    let x_1303 : u32 = TGSM2[x_1301].value[0i];
    let x_1306 : i32 = u_xlati2.z;
    let x_1308 : u32 = TGSM2[x_1306].value[1i];
    let x_1310 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1303), bitcast<f32>(x_1308));
    let x_1311 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1310.x, x_1310.y, x_1311.z, x_1311.w);
    let x_1314 : i32 = u_xlati2.w;
    let x_1316 : u32 = TGSM2[x_1314].value[0i];
    let x_1319 : i32 = u_xlati2.w;
    let x_1321 : u32 = TGSM2[x_1319].value[1i];
    u_xlat28 = vec2<f32>(bitcast<f32>(x_1316), bitcast<f32>(x_1321));
    let x_1324 : vec4<i32> = u_xlati0;
    u_xlati4 = (vec4<i32>(x_1324.x, x_1324.x, x_1324.x, x_1324.x) + vec4<i32>(2i, 18i, 34i, 50i));
    let x_1332 : i32 = u_xlati4.x;
    let x_1334 : u32 = TGSM0[x_1332].value[0i];
    let x_1337 : i32 = u_xlati4.x;
    let x_1339 : u32 = TGSM0[x_1337].value[1i];
    u_xlat29 = vec2<f32>(bitcast<f32>(x_1334), bitcast<f32>(x_1339));
    let x_1343 : i32 = u_xlati4.y;
    let x_1345 : u32 = TGSM0[x_1343].value[0i];
    let x_1348 : i32 = u_xlati4.y;
    let x_1350 : u32 = TGSM0[x_1348].value[1i];
    let x_1352 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1345), bitcast<f32>(x_1350));
    let x_1353 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1352.x, x_1352.y, x_1353.z, x_1353.w);
    let x_1356 : i32 = u_xlati4.z;
    let x_1358 : u32 = TGSM0[x_1356].value[0i];
    let x_1361 : i32 = u_xlati4.z;
    let x_1363 : u32 = TGSM0[x_1361].value[1i];
    let x_1365 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1358), bitcast<f32>(x_1363));
    let x_1366 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1365.x, x_1365.y, x_1366.z, x_1366.w);
    let x_1369 : i32 = u_xlati4.w;
    let x_1371 : u32 = TGSM0[x_1369].value[0i];
    let x_1374 : i32 = u_xlati4.w;
    let x_1376 : u32 = TGSM0[x_1374].value[1i];
    u_xlat30 = vec2<f32>(bitcast<f32>(x_1371), bitcast<f32>(x_1376));
    let x_1379 : vec4<i32> = u_xlati0;
    u_xlati31 = (vec2<i32>(x_1379.x, x_1379.x) + vec2<i32>(66i, 82i));
    let x_1386 : i32 = u_xlati31.x;
    let x_1388 : u32 = TGSM0[x_1386].value[0i];
    let x_1391 : i32 = u_xlati31.x;
    let x_1393 : u32 = TGSM0[x_1391].value[1i];
    let x_1395 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1388), bitcast<f32>(x_1393));
    let x_1396 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1395.x, x_1395.y, x_1396.z, x_1396.w);
    let x_1399 : i32 = u_xlati31.y;
    let x_1401 : u32 = TGSM0[x_1399].value[0i];
    let x_1404 : i32 = u_xlati31.y;
    let x_1406 : u32 = TGSM0[x_1404].value[1i];
    u_xlat31 = vec2<f32>(bitcast<f32>(x_1401), bitcast<f32>(x_1406));
    let x_1409 : vec2<f32> = u_xlat29;
    let x_1411 : vec4<f32> = u_xlat4;
    u_xlat29 = (-(x_1409) + vec2<f32>(x_1411.x, x_1411.y));
    let x_1414 : vec4<f32> = u_xlat4;
    let x_1417 : vec4<f32> = u_xlat5;
    let x_1419 : vec2<f32> = (-(vec2<f32>(x_1414.x, x_1414.y)) + vec2<f32>(x_1417.x, x_1417.y));
    let x_1420 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1419.x, x_1419.y, x_1420.z, x_1420.w);
    let x_1422 : vec4<f32> = u_xlat5;
    let x_1425 : vec2<f32> = u_xlat30;
    let x_1426 : vec2<f32> = (-(vec2<f32>(x_1422.x, x_1422.y)) + x_1425);
    let x_1427 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1426.x, x_1426.y, x_1427.z, x_1427.w);
    let x_1429 : vec2<f32> = u_xlat30;
    let x_1431 : vec4<f32> = u_xlat6;
    u_xlat30 = (-(x_1429) + vec2<f32>(x_1431.x, x_1431.y));
    let x_1434 : vec4<f32> = u_xlat6;
    let x_1437 : vec2<f32> = u_xlat31;
    u_xlat31 = (-(vec2<f32>(x_1434.x, x_1434.y)) + x_1437);
    let x_1439 : vec2<f32> = u_xlat29;
    let x_1440 : vec2<f32> = u_xlat29;
    let x_1443 : vec4<f32> = x_66.AdditionalParams;
    let x_1445 : vec2<f32> = ((x_1439 * x_1440) + vec2<f32>(x_1443.y, x_1443.y));
    let x_1446 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1445.x, x_1445.y, x_1446.z, x_1446.w);
    let x_1448 : vec4<f32> = u_xlat4;
    let x_1450 : vec4<f32> = u_xlat4;
    let x_1454 : vec4<f32> = x_66.AdditionalParams;
    u_xlat32 = ((vec2<f32>(x_1448.x, x_1448.y) * vec2<f32>(x_1450.x, x_1450.y)) + vec2<f32>(x_1454.y, x_1454.y));
    let x_1457 : vec4<f32> = u_xlat5;
    let x_1459 : vec4<f32> = u_xlat5;
    let x_1463 : vec4<f32> = x_66.AdditionalParams;
    let x_1465 : vec2<f32> = ((vec2<f32>(x_1457.x, x_1457.y) * vec2<f32>(x_1459.x, x_1459.y)) + vec2<f32>(x_1463.y, x_1463.y));
    let x_1466 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1465.x, x_1465.y, x_1466.z, x_1466.w);
    let x_1468 : vec2<f32> = u_xlat30;
    let x_1469 : vec2<f32> = u_xlat30;
    let x_1472 : vec4<f32> = x_66.AdditionalParams;
    u_xlat33 = ((x_1468 * x_1469) + vec2<f32>(x_1472.y, x_1472.y));
    let x_1475 : vec2<f32> = u_xlat31;
    let x_1476 : vec2<f32> = u_xlat31;
    let x_1479 : vec4<f32> = x_66.AdditionalParams;
    let x_1481 : vec2<f32> = ((x_1475 * x_1476) + vec2<f32>(x_1479.y, x_1479.y));
    let x_1482 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1481.x, x_1481.y, x_1482.z, x_1482.w);
    let x_1484 : vec2<f32> = u_xlat29;
    let x_1485 : vec4<f32> = u_xlat4;
    let x_1489 : vec4<f32> = x_66.AdditionalParams;
    u_xlat29 = ((x_1484 * vec2<f32>(x_1485.x, x_1485.y)) + vec2<f32>(x_1489.y, x_1489.y));
    let x_1492 : vec2<f32> = u_xlat29;
    let x_1493 : vec2<f32> = u_xlat29;
    u_xlat29 = (x_1492 * x_1493);
    let x_1495 : vec2<f32> = u_xlat32;
    let x_1496 : vec4<f32> = u_xlat6;
    let x_1498 : vec2<f32> = (x_1495 * vec2<f32>(x_1496.x, x_1496.y));
    let x_1499 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1498.x, x_1498.y, x_1499.z, x_1499.w);
    let x_1501 : vec4<f32> = u_xlat4;
    let x_1503 : vec4<f32> = u_xlat5;
    let x_1507 : vec4<f32> = x_66.AdditionalParams;
    let x_1509 : vec2<f32> = ((vec2<f32>(x_1501.x, x_1501.y) * vec2<f32>(x_1503.x, x_1503.y)) + vec2<f32>(x_1507.y, x_1507.y));
    let x_1510 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1509.x, x_1509.y, x_1510.z, x_1510.w);
    let x_1512 : vec2<f32> = u_xlat32;
    let x_1513 : vec4<f32> = u_xlat7;
    let x_1515 : vec2<f32> = (x_1512 * vec2<f32>(x_1513.x, x_1513.y));
    let x_1516 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1516.x, x_1516.y, x_1515.x, x_1515.y);
    let x_1518 : vec4<f32> = u_xlat6;
    let x_1520 : vec4<f32> = x_66.AdditionalParams;
    u_xlat6 = (x_1518 * vec4<f32>(x_1520.z, x_1520.z, x_1520.z, x_1520.z));
    let x_1523 : vec4<f32> = u_xlat5;
    let x_1525 : vec2<f32> = u_xlat30;
    let x_1528 : vec4<f32> = x_66.AdditionalParams;
    let x_1530 : vec2<f32> = ((vec2<f32>(x_1523.x, x_1523.y) * x_1525) + vec2<f32>(x_1528.y, x_1528.y));
    let x_1531 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1530.x, x_1530.y, x_1531.z, x_1531.w);
    let x_1533 : vec4<f32> = u_xlat5;
    let x_1535 : vec4<f32> = u_xlat5;
    let x_1537 : vec2<f32> = (vec2<f32>(x_1533.x, x_1533.y) * vec2<f32>(x_1535.x, x_1535.y));
    let x_1538 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1537.x, x_1537.y, x_1538.z, x_1538.w);
    let x_1540 : vec2<f32> = u_xlat33;
    let x_1541 : vec4<f32> = u_xlat7;
    let x_1543 : vec2<f32> = (x_1540 * vec2<f32>(x_1541.x, x_1541.y));
    let x_1544 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1543.x, x_1543.y, x_1544.z, x_1544.w);
    let x_1546 : vec4<f32> = u_xlat7;
    let x_1549 : vec4<f32> = x_66.AdditionalParams;
    let x_1551 : vec2<f32> = (vec2<f32>(x_1546.x, x_1546.y) * vec2<f32>(x_1549.z, x_1549.z));
    let x_1552 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1551.x, x_1551.y, x_1552.z, x_1552.w);
    let x_1554 : vec2<f32> = u_xlat30;
    let x_1555 : vec2<f32> = u_xlat31;
    let x_1558 : vec4<f32> = x_66.AdditionalParams;
    let x_1560 : vec2<f32> = ((x_1554 * x_1555) + vec2<f32>(x_1558.y, x_1558.y));
    let x_1561 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1561.x, x_1561.y, x_1560.x, x_1560.y);
    let x_1563 : vec4<f32> = u_xlat4;
    let x_1564 : vec4<f32> = u_xlat4;
    u_xlat4 = (x_1563 * x_1564);
    let x_1566 : vec2<f32> = u_xlat33;
    let x_1567 : vec4<f32> = u_xlat8;
    u_xlat31 = (x_1566 * vec2<f32>(x_1567.x, x_1567.y));
    let x_1570 : vec2<f32> = u_xlat31;
    let x_1572 : vec4<f32> = x_66.AdditionalParams;
    u_xlat31 = (x_1570 * vec2<f32>(x_1572.z, x_1572.z));
    let x_1576 : vec4<f32> = u_xlat6;
    let x_1578 : vec2<f32> = u_xlat29;
    let x_1580 : vec4<bool> = (vec4<f32>(x_1576.x, x_1576.y, x_1576.x, x_1576.y) < vec4<f32>(x_1578.x, x_1578.y, x_1578.x, x_1578.y));
    u_xlatb29 = vec2<bool>(x_1580.x, x_1580.y);
    let x_1583 : vec4<f32> = u_xlat6;
    let x_1585 : vec4<f32> = u_xlat4;
    let x_1587 : vec4<bool> = (vec4<f32>(x_1583.z, x_1583.w, x_1583.z, x_1583.z) < vec4<f32>(x_1585.x, x_1585.y, x_1585.x, x_1585.x));
    u_xlatb4 = vec2<bool>(x_1587.x, x_1587.y);
    let x_1590 : vec4<f32> = u_xlat7;
    let x_1592 : vec4<f32> = u_xlat5;
    let x_1594 : vec4<bool> = (vec4<f32>(x_1590.x, x_1590.y, x_1590.x, x_1590.x) < vec4<f32>(x_1592.x, x_1592.y, x_1592.x, x_1592.x));
    u_xlatb5 = vec2<bool>(x_1594.x, x_1594.y);
    let x_1597 : vec2<f32> = u_xlat31;
    let x_1599 : vec4<f32> = u_xlat4;
    let x_1601 : vec4<bool> = (vec4<f32>(x_1597.x, x_1597.y, x_1597.x, x_1597.y) < vec4<f32>(x_1599.z, x_1599.w, x_1599.z, x_1599.w));
    u_xlatb30 = vec2<bool>(x_1601.x, x_1601.y);
    let x_1603 : vec2<bool> = u_xlatb29;
    let x_1607 : vec2<bool> = u_xlatb4;
    u_xlati31 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1603) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1607) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1613 : vec2<i32> = u_xlati31;
    u_xlati31 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1613) & vec2<u32>(1u, 1u)));
    let x_1618 : i32 = u_xlati31.x;
    if ((x_1618 != 0i)) {
      let x_1624 : f32 = u_xlat1.x;
      x_1620 = x_1624;
    } else {
      let x_1627 : f32 = u_xlat27.x;
      x_1620 = x_1627;
    }
    let x_1628 : f32 = x_1620;
    u_xlat31.x = x_1628;
    let x_1631 : i32 = u_xlati31.y;
    if ((x_1631 != 0i)) {
      let x_1637 : f32 = u_xlat1.y;
      x_1633 = x_1637;
    } else {
      let x_1640 : f32 = u_xlat27.y;
      x_1633 = x_1640;
    }
    let x_1641 : f32 = x_1633;
    u_xlat31.y = x_1641;
    let x_1644 : vec2<f32> = u_xlat13;
    hlslcc_movcTemp_1 = x_1644;
    let x_1646 : bool = u_xlatb29.x;
    if (x_1646) {
      let x_1651 : f32 = u_xlat13.x;
      x_1647 = x_1651;
    } else {
      let x_1654 : f32 = u_xlat31.x;
      x_1647 = x_1654;
    }
    let x_1655 : f32 = x_1647;
    hlslcc_movcTemp_1.x = x_1655;
    let x_1658 : bool = u_xlatb29.y;
    if (x_1658) {
      let x_1663 : f32 = u_xlat13.y;
      x_1659 = x_1663;
    } else {
      let x_1666 : f32 = u_xlat31.y;
      x_1659 = x_1666;
    }
    let x_1667 : f32 = x_1659;
    hlslcc_movcTemp_1.y = x_1667;
    let x_1669 : vec2<f32> = hlslcc_movcTemp_1;
    u_xlat13 = x_1669;
    let x_1671 : vec2<bool> = u_xlatb4;
    let x_1675 : vec2<bool> = u_xlatb5;
    u_xlati29 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1671) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1675) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1681 : vec2<i32> = u_xlati29;
    u_xlati29 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1681) & vec2<u32>(1u, 1u)));
    let x_1686 : i32 = u_xlati29.x;
    if ((x_1686 != 0i)) {
      let x_1692 : f32 = u_xlat27.x;
      x_1688 = x_1692;
    } else {
      let x_1695 : f32 = u_xlat2.x;
      x_1688 = x_1695;
    }
    let x_1696 : f32 = x_1688;
    u_xlat12.x = x_1696;
    let x_1699 : i32 = u_xlati29.y;
    if ((x_1699 != 0i)) {
      let x_1705 : f32 = u_xlat27.y;
      x_1701 = x_1705;
    } else {
      let x_1708 : f32 = u_xlat2.y;
      x_1701 = x_1708;
    }
    let x_1709 : f32 = x_1701;
    u_xlat12.y = x_1709;
    let x_1712 : i32 = u_xlati29.x;
    if ((x_1712 != 0i)) {
      let x_1718 : f32 = u_xlat2.x;
      x_1714 = x_1718;
    } else {
      let x_1721 : f32 = u_xlat27.x;
      x_1714 = x_1721;
    }
    let x_1722 : f32 = x_1714;
    u_xlat7.x = x_1722;
    let x_1725 : i32 = u_xlati29.y;
    if ((x_1725 != 0i)) {
      let x_1731 : f32 = u_xlat2.y;
      x_1727 = x_1731;
    } else {
      let x_1734 : f32 = u_xlat27.y;
      x_1727 = x_1734;
    }
    let x_1735 : f32 = x_1727;
    u_xlat7.y = x_1735;
    let x_1737 : vec2<f32> = u_xlat12;
    let x_1738 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1737.x, x_1737.y, x_1738.z, x_1738.w);
    let x_1741 : bool = u_xlatb5.x;
    if (x_1741) {
      let x_1746 : f32 = u_xlat3.x;
      x_1742 = x_1746;
    } else {
      let x_1749 : f32 = u_xlat7.x;
      x_1742 = x_1749;
    }
    let x_1750 : f32 = x_1742;
    u_xlat29.x = x_1750;
    let x_1753 : bool = u_xlatb5.y;
    if (x_1753) {
      let x_1758 : f32 = u_xlat3.y;
      x_1754 = x_1758;
    } else {
      let x_1761 : f32 = u_xlat7.y;
      x_1754 = x_1761;
    }
    let x_1762 : f32 = x_1754;
    u_xlat29.y = x_1762;
    let x_1764 : vec2<f32> = u_xlat13;
    let x_1765 : vec2<f32> = u_xlat29;
    u_xlat13 = (x_1764 + x_1765);
    let x_1767 : vec2<f32> = u_xlat13;
    let x_1769 : vec2<f32> = u_xlat31;
    u_xlat13 = ((x_1767 * vec2<f32>(0.5f, 0.5f)) + x_1769);
    let x_1771 : vec2<f32> = u_xlat27;
    let x_1772 : vec2<f32> = u_xlat13;
    u_xlat13 = (x_1771 + x_1772);
    let x_1774 : vec4<f32> = u_xlat7;
    let x_1776 : vec2<f32> = u_xlat13;
    u_xlat13 = (vec2<f32>(x_1774.x, x_1774.y) + x_1776);
    let x_1778 : vec2<f32> = u_xlat13;
    u_xlat13 = (x_1778 * vec2<f32>(0.25f, 0.25f));
    let x_1781 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp_2 = x_1781;
    let x_1783 : bool = u_xlatb4.x;
    if (x_1783) {
      let x_1788 : f32 = u_xlat1.x;
      x_1784 = x_1788;
    } else {
      let x_1791 : f32 = u_xlat6.x;
      x_1784 = x_1791;
    }
    let x_1792 : f32 = x_1784;
    hlslcc_movcTemp_2.x = x_1792;
    let x_1795 : bool = u_xlatb4.y;
    if (x_1795) {
      let x_1800 : f32 = u_xlat1.y;
      x_1796 = x_1800;
    } else {
      let x_1803 : f32 = u_xlat6.y;
      x_1796 = x_1803;
    }
    let x_1804 : f32 = x_1796;
    hlslcc_movcTemp_2.y = x_1804;
    let x_1806 : vec4<f32> = hlslcc_movcTemp_2;
    u_xlat1 = x_1806;
    let x_1807 : vec2<bool> = u_xlatb5;
    let x_1811 : vec2<bool> = u_xlatb30;
    u_xlati27 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1807) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1811) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1817 : vec2<i32> = u_xlati27;
    u_xlati27 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1817) & vec2<u32>(1u, 1u)));
    let x_1822 : i32 = u_xlati27.x;
    if ((x_1822 != 0i)) {
      let x_1828 : f32 = u_xlat3.x;
      x_1824 = x_1828;
    } else {
      let x_1831 : f32 = u_xlat2.x;
      x_1824 = x_1831;
    }
    let x_1832 : f32 = x_1824;
    u_xlat27.x = x_1832;
    let x_1835 : i32 = u_xlati27.y;
    if ((x_1835 != 0i)) {
      let x_1841 : f32 = u_xlat3.y;
      x_1837 = x_1841;
    } else {
      let x_1844 : f32 = u_xlat2.y;
      x_1837 = x_1844;
    }
    let x_1845 : f32 = x_1837;
    u_xlat27.y = x_1845;
    let x_1848 : vec2<f32> = u_xlat28;
    hlslcc_movcTemp_3 = x_1848;
    let x_1850 : bool = u_xlatb30.x;
    if (x_1850) {
      let x_1855 : f32 = u_xlat28.x;
      x_1851 = x_1855;
    } else {
      let x_1858 : f32 = u_xlat27.x;
      x_1851 = x_1858;
    }
    let x_1859 : f32 = x_1851;
    hlslcc_movcTemp_3.x = x_1859;
    let x_1862 : bool = u_xlatb30.y;
    if (x_1862) {
      let x_1867 : f32 = u_xlat28.y;
      x_1863 = x_1867;
    } else {
      let x_1870 : f32 = u_xlat27.y;
      x_1863 = x_1870;
    }
    let x_1871 : f32 = x_1863;
    hlslcc_movcTemp_3.y = x_1871;
    let x_1873 : vec2<f32> = hlslcc_movcTemp_3;
    u_xlat28 = x_1873;
    let x_1874 : vec4<f32> = u_xlat1;
    let x_1876 : vec2<f32> = u_xlat28;
    let x_1877 : vec2<f32> = (vec2<f32>(x_1874.x, x_1874.y) + x_1876);
    let x_1878 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1877.x, x_1877.y, x_1878.z, x_1878.w);
    let x_1880 : vec4<f32> = u_xlat1;
    let x_1883 : vec4<f32> = u_xlat6;
    let x_1885 : vec2<f32> = ((vec2<f32>(x_1880.x, x_1880.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1883.x, x_1883.y));
    let x_1886 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1885.x, x_1885.y, x_1886.z, x_1886.w);
    let x_1888 : vec4<f32> = u_xlat2;
    let x_1890 : vec4<f32> = u_xlat1;
    let x_1892 : vec2<f32> = (vec2<f32>(x_1888.x, x_1888.y) + vec2<f32>(x_1890.x, x_1890.y));
    let x_1893 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1892.x, x_1892.y, x_1893.z, x_1893.w);
    let x_1895 : vec2<f32> = u_xlat27;
    let x_1896 : vec4<f32> = u_xlat1;
    let x_1898 : vec2<f32> = (x_1895 + vec2<f32>(x_1896.x, x_1896.y));
    let x_1899 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1898.x, x_1898.y, x_1899.z, x_1899.w);
    let x_1901 : vec4<f32> = u_xlat1;
    let x_1903 : vec2<f32> = (vec2<f32>(x_1901.x, x_1901.y) * vec2<f32>(0.25f, 0.25f));
    let x_1904 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1903.x, x_1903.y, x_1904.z, x_1904.w);
    let x_1907 : i32 = u_xlati0.x;
    let x_1909 : f32 = u_xlat13.x;
    TGSM1[x_1907].value[0i] = bitcast<u32>(x_1909);
    let x_1913 : i32 = u_xlati0.x;
    let x_1915 : f32 = u_xlat13.y;
    TGSM1[x_1913].value[1i] = bitcast<u32>(x_1915);
    let x_1918 : i32 = u_xlati39;
    let x_1920 : f32 = u_xlat1.x;
    TGSM1[x_1918].value[0i] = bitcast<u32>(x_1920);
    let x_1923 : i32 = u_xlati39;
    let x_1925 : f32 = u_xlat1.y;
    TGSM1[x_1923].value[1i] = bitcast<u32>(x_1925);
  }
  workgroupBarrier();
  let x_1929 : u32 = gl_LocalInvocationID.y;
  let x_1933 : u32 = gl_LocalInvocationID.x;
  u_xlati0.x = ((bitcast<i32>(x_1929) * 16i) + bitcast<i32>(x_1933));
  let x_1937 : vec4<i32> = u_xlati0;
  u_xlati13 = (vec3<i32>(x_1937.x, x_1937.x, x_1937.x) + vec3<i32>(16i, 17i, 1i));
  let x_1942 : i32 = u_xlati13.x;
  let x_1944 : u32 = TGSM1[x_1942].value[0i];
  let x_1947 : i32 = u_xlati13.x;
  let x_1949 : u32 = TGSM1[x_1947].value[1i];
  let x_1951 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1944), bitcast<f32>(x_1949));
  let x_1952 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1951.x, x_1951.y, x_1952.z, x_1952.w);
  let x_1955 : i32 = u_xlati13.y;
  let x_1957 : u32 = TGSM1[x_1955].value[0i];
  let x_1960 : i32 = u_xlati13.y;
  let x_1962 : u32 = TGSM1[x_1960].value[1i];
  u_xlat13 = vec2<f32>(bitcast<f32>(x_1957), bitcast<f32>(x_1962));
  let x_1966 : i32 = u_xlati13.z;
  let x_1968 : u32 = TGSM1[x_1966].value[0i];
  let x_1971 : i32 = u_xlati13.z;
  let x_1973 : u32 = TGSM1[x_1971].value[1i];
  let x_1975 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1968), bitcast<f32>(x_1973));
  let x_1976 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1976.x, x_1976.y, x_1975.x, x_1975.y);
  let x_1979 : i32 = u_xlati0.x;
  let x_1981 : u32 = TGSM1[x_1979].value[1i];
  let x_1984 : i32 = u_xlati0.x;
  let x_1986 : u32 = TGSM1[x_1984].value[0i];
  let x_1988 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1981), bitcast<f32>(x_1986));
  let x_1989 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1988.x, x_1988.y, x_1989.z, x_1989.w);
  let x_1992 : vec3<u32> = gl_GlobalInvocationID;
  let x_1994 : vec2<f32> = vec2<f32>(vec2<u32>(x_1992.x, x_1992.y));
  let x_1995 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1994.x, x_1995.y, x_1995.z, x_1994.y);
  let x_1997 : vec4<f32> = u_xlat0;
  let x_2000 : vec4<f32> = x_66.InvLowResolution;
  let x_2002 : vec2<f32> = (vec2<f32>(x_1997.x, x_1997.w) * vec2<f32>(x_2000.x, x_2000.y));
  let x_2003 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2002.x, x_2003.y, x_2003.z, x_2002.y);
  let x_2007 : vec3<u32> = gl_GlobalInvocationID;
  u_xlatu3 = bitcast<vec4<u32>>((bitcast<vec4<i32>>(vec4<u32>(x_2007.x, x_2007.y, x_2007.y, x_2007.y)) << bitcast<vec4<u32>>(vec4<i32>(1i, 1i, 1i, 1i))));
  let x_2013 : vec4<u32> = u_xlatu3;
  let x_2015 : vec2<f32> = vec2<f32>(vec2<u32>(x_2013.x, x_2013.w));
  let x_2016 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2015.x, x_2015.y, x_2016.z, x_2016.w);
  let x_2018 : vec4<f32> = u_xlat4;
  let x_2021 : vec4<f32> = x_66.InvHighResolution;
  let x_2023 : vec2<f32> = (vec2<f32>(x_2018.x, x_2018.y) * vec2<f32>(x_2021.x, x_2021.y));
  let x_2024 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2023.x, x_2023.y, x_2024.z, x_2024.w);
  let x_2029 : vec4<f32> = u_xlat0;
  let x_2031 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, vec2<f32>(x_2029.x, x_2029.w));
  u_xlat5 = x_2031;
  let x_2035 : vec4<f32> = u_xlat0;
  let x_2037 : vec4<f32> = textureGather(1i, LoResDB, samplerLoResDB, vec2<f32>(x_2035.x, x_2035.w));
  u_xlat6 = x_2037;
  let x_2043 : vec4<f32> = u_xlat4;
  let x_2045 : vec4<f32> = textureGather(0i, HiResDB, samplerHiResDB, vec2<f32>(x_2043.x, x_2043.y));
  u_xlat7 = x_2045;
  let x_2049 : vec4<f32> = u_xlat4;
  let x_2051 : vec4<f32> = textureGather(1i, HiResDB, samplerHiResDB, vec2<f32>(x_2049.x, x_2049.y));
  u_xlat4 = x_2051;
  let x_2053 : vec4<u32> = u_xlatu3;
  u_xlati8 = (bitcast<vec4<i32>>(vec4<u32>(x_2053.x, x_2053.w, x_2053.x, x_2053.w)) + vec4<i32>(-1i, 0i, 0i, -1i));
  let x_2059 : vec4<f32> = u_xlat5;
  let x_2061 : vec4<f32> = u_xlat7;
  u_xlat9 = (-(x_2059) + vec4<f32>(x_2061.x, x_2061.x, x_2061.x, x_2061.x));
  let x_2064 : vec4<f32> = u_xlat9;
  let x_2067 : vec4<f32> = x_66.AdditionalParams;
  u_xlat9 = (abs(x_2064) + vec4<f32>(x_2067.w, x_2067.w, x_2067.w, x_2067.w));
  let x_2073 : vec4<f32> = u_xlat9;
  u_xlat9 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2073);
  let x_2075 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_2075, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2079 : f32 = u_xlat13.x;
  u_xlat10.z = x_2079;
  let x_2081 : vec4<f32> = u_xlat1;
  let x_2082 : vec2<f32> = vec2<f32>(x_2081.x, x_2081.z);
  let x_2083 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2083.x, x_2082.x, x_2083.z, x_2082.y);
  let x_2086 : f32 = u_xlat2.y;
  u_xlat10.x = x_2086;
  let x_2088 : vec4<f32> = u_xlat10;
  let x_2090 : vec4<f32> = u_xlat9;
  u_xlat0.y = dot(vec4<f32>(x_2088.y, x_2088.z, x_2088.w, x_2088.x), x_2090);
  let x_2093 : vec4<f32> = u_xlat0;
  let x_2096 : vec4<f32> = x_66.AdditionalParams;
  let x_2098 : vec2<f32> = (vec2<f32>(x_2093.x, x_2093.y) + vec2<f32>(x_2096.x, x_2096.x));
  let x_2099 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2098.x, x_2098.y, x_2099.z, x_2099.w);
  let x_2102 : vec4<f32> = u_xlat0;
  let x_2104 : vec4<f32> = u_xlat0;
  let x_2106 : vec3<f32> = (vec3<f32>(x_2102.y, x_2102.y, x_2102.y) / vec3<f32>(x_2104.x, x_2104.x, x_2104.x));
  let x_2107 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2106.x, x_2107.y, x_2106.y, x_2106.z);
  let x_2110 : vec4<f32> = u_xlat6;
  let x_2112 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_2110) + vec4<f32>(x_2112.x, x_2112.x, x_2112.x, x_2112.x));
  let x_2115 : vec4<f32> = u_xlat11;
  let x_2118 : vec4<f32> = x_66.AdditionalParams;
  u_xlat11 = (abs(x_2115) + vec4<f32>(x_2118.w, x_2118.w, x_2118.w, x_2118.w));
  let x_2121 : vec4<f32> = u_xlat11;
  u_xlat11 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2121);
  let x_2123 : vec4<f32> = u_xlat11;
  u_xlat0.x = dot(x_2123, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2127 : f32 = u_xlat13.y;
  u_xlat2.z = x_2127;
  let x_2129 : vec4<f32> = u_xlat1;
  let x_2130 : vec2<f32> = vec2<f32>(x_2129.y, x_2129.w);
  let x_2131 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2131.x, x_2130.x, x_2131.z, x_2130.y);
  let x_2133 : vec4<f32> = u_xlat2;
  let x_2135 : vec4<f32> = u_xlat11;
  u_xlat0.y = dot(vec4<f32>(x_2133.y, x_2133.z, x_2133.w, x_2133.x), x_2135);
  let x_2138 : vec4<f32> = u_xlat0;
  let x_2141 : vec4<f32> = x_66.AdditionalParams;
  let x_2143 : vec2<f32> = (vec2<f32>(x_2138.x, x_2138.y) + vec2<f32>(x_2141.x, x_2141.x));
  let x_2144 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2143.x, x_2143.y, x_2144.z, x_2144.w);
  let x_2147 : f32 = u_xlat0.y;
  let x_2149 : f32 = u_xlat0.x;
  u_xlat9.y = (x_2147 / x_2149);
  let x_2156 : vec4<i32> = u_xlati8;
  let x_2158 : vec4<f32> = u_xlat9;
  textureStore(AoResult_origX0X, vec2<i32>(x_2156.x, x_2156.y), x_2158);
  let x_2159 : vec4<f32> = u_xlat5;
  let x_2162 : vec4<f32> = u_xlat7;
  u_xlat0 = (-(vec4<f32>(x_2159.y, x_2159.z, x_2159.w, x_2159.x)) + vec4<f32>(x_2162.y, x_2162.y, x_2162.y, x_2162.y));
  let x_2165 : vec4<f32> = u_xlat0;
  let x_2168 : vec4<f32> = x_66.AdditionalParams;
  u_xlat0 = (abs(x_2165) + vec4<f32>(x_2168.w, x_2168.w, x_2168.w, x_2168.w));
  let x_2171 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2171);
  let x_2173 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_2173, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2177 : f32 = u_xlat1.x;
  let x_2180 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2177 + x_2180);
  let x_2183 : vec4<f32> = u_xlat10;
  let x_2185 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec4<f32>(x_2183.z, x_2183.w, x_2183.x, x_2183.y), x_2185);
  let x_2189 : f32 = u_xlat0.x;
  let x_2191 : f32 = x_66.AdditionalParams.x;
  u_xlat0.x = (x_2189 + x_2191);
  let x_2194 : vec4<f32> = u_xlat0;
  let x_2196 : vec4<f32> = u_xlat1;
  let x_2198 : vec3<f32> = (vec3<f32>(x_2194.x, x_2194.x, x_2194.x) / vec3<f32>(x_2196.x, x_2196.x, x_2196.x));
  let x_2199 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2198.x, x_2199.y, x_2198.y, x_2198.z);
  let x_2201 : vec4<f32> = u_xlat6;
  let x_2204 : vec4<f32> = u_xlat4;
  u_xlat1 = (-(vec4<f32>(x_2201.y, x_2201.z, x_2201.w, x_2201.x)) + vec4<f32>(x_2204.y, x_2204.y, x_2204.y, x_2204.y));
  let x_2207 : vec4<f32> = u_xlat1;
  let x_2210 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2207) + vec4<f32>(x_2210.w, x_2210.w, x_2210.w, x_2210.w));
  let x_2213 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2213);
  let x_2215 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_2215, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2219 : f32 = u_xlat4.x;
  let x_2221 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2219 + x_2221);
  let x_2224 : vec4<f32> = u_xlat2;
  let x_2226 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec4<f32>(x_2224.z, x_2224.w, x_2224.x, x_2224.y), x_2226);
  let x_2230 : f32 = u_xlat1.x;
  let x_2232 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2230 + x_2232);
  let x_2236 : f32 = u_xlat1.x;
  let x_2238 : f32 = u_xlat4.x;
  u_xlat0.y = (x_2236 / x_2238);
  let x_2242 : vec4<u32> = u_xlatu3;
  let x_2245 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_2242.x, x_2242.w)), x_2245);
  let x_2246 : vec4<f32> = u_xlat5;
  let x_2249 : vec4<f32> = u_xlat7;
  u_xlat0 = (-(vec4<f32>(x_2246.z, x_2246.w, x_2246.x, x_2246.y)) + vec4<f32>(x_2249.z, x_2249.z, x_2249.z, x_2249.z));
  let x_2252 : vec4<f32> = u_xlat0;
  let x_2255 : vec4<f32> = x_66.AdditionalParams;
  u_xlat0 = (abs(x_2252) + vec4<f32>(x_2255.w, x_2255.w, x_2255.w, x_2255.w));
  let x_2258 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2258);
  let x_2260 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_2260, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2264 : f32 = u_xlat1.x;
  let x_2266 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2264 + x_2266);
  let x_2269 : vec4<f32> = u_xlat10;
  let x_2271 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec4<f32>(x_2269.w, x_2269.x, x_2269.y, x_2269.z), x_2271);
  let x_2275 : f32 = u_xlat0.x;
  let x_2277 : f32 = x_66.AdditionalParams.x;
  u_xlat0.x = (x_2275 + x_2277);
  let x_2280 : vec4<f32> = u_xlat0;
  let x_2282 : vec4<f32> = u_xlat1;
  let x_2284 : vec3<f32> = (vec3<f32>(x_2280.x, x_2280.x, x_2280.x) / vec3<f32>(x_2282.x, x_2282.x, x_2282.x));
  let x_2285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2284.x, x_2285.y, x_2284.y, x_2284.z);
  let x_2287 : vec4<f32> = u_xlat6;
  let x_2290 : vec4<f32> = u_xlat4;
  u_xlat1 = (-(vec4<f32>(x_2287.z, x_2287.w, x_2287.x, x_2287.y)) + vec4<f32>(x_2290.z, x_2290.z, x_2290.z, x_2290.z));
  let x_2293 : vec4<f32> = u_xlat1;
  let x_2296 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2293) + vec4<f32>(x_2296.w, x_2296.w, x_2296.w, x_2296.w));
  let x_2299 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2299);
  let x_2301 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_2301, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2305 : f32 = u_xlat4.x;
  let x_2307 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2305 + x_2307);
  let x_2310 : vec4<f32> = u_xlat2;
  let x_2312 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec4<f32>(x_2310.w, x_2310.x, x_2310.y, x_2310.z), x_2312);
  let x_2316 : f32 = u_xlat1.x;
  let x_2318 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2316 + x_2318);
  let x_2322 : f32 = u_xlat1.x;
  let x_2324 : f32 = u_xlat4.x;
  u_xlat0.y = (x_2322 / x_2324);
  let x_2328 : vec4<i32> = u_xlati8;
  let x_2330 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_2328.z, x_2328.w), x_2330);
  let x_2331 : vec4<u32> = u_xlatu3;
  u_xlati0 = (bitcast<vec4<i32>>(x_2331) + vec4<i32>(-1i, -1i, -1i, -1i));
  let x_2335 : vec4<f32> = u_xlat5;
  let x_2338 : vec4<f32> = u_xlat7;
  u_xlat1 = (-(vec4<f32>(x_2335.w, x_2335.x, x_2335.y, x_2335.z)) + vec4<f32>(x_2338.w, x_2338.w, x_2338.w, x_2338.w));
  let x_2341 : vec4<f32> = u_xlat1;
  let x_2344 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2341) + vec4<f32>(x_2344.w, x_2344.w, x_2344.w, x_2344.w));
  let x_2347 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2347);
  let x_2349 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_2349, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2353 : f32 = u_xlat3.x;
  let x_2355 : f32 = x_66.AdditionalParams.x;
  u_xlat3.x = (x_2353 + x_2355);
  let x_2358 : vec4<f32> = u_xlat10;
  let x_2359 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(x_2358, x_2359);
  let x_2363 : f32 = u_xlat1.x;
  let x_2365 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2363 + x_2365);
  let x_2368 : vec4<f32> = u_xlat1;
  let x_2370 : vec4<f32> = u_xlat3;
  let x_2372 : vec3<f32> = (vec3<f32>(x_2368.x, x_2368.x, x_2368.x) / vec3<f32>(x_2370.x, x_2370.x, x_2370.x));
  let x_2373 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2372.x, x_2373.y, x_2372.y, x_2372.z);
  let x_2375 : vec4<f32> = u_xlat6;
  let x_2378 : vec4<f32> = u_xlat4;
  u_xlat3 = (-(vec4<f32>(x_2375.w, x_2375.x, x_2375.y, x_2375.z)) + vec4<f32>(x_2378.w, x_2378.w, x_2378.w, x_2378.w));
  let x_2381 : vec4<f32> = u_xlat3;
  let x_2384 : vec4<f32> = x_66.AdditionalParams;
  u_xlat3 = (abs(x_2381) + vec4<f32>(x_2384.w, x_2384.w, x_2384.w, x_2384.w));
  let x_2387 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2387);
  let x_2389 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_2389, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2393 : f32 = u_xlat4.x;
  let x_2395 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2393 + x_2395);
  let x_2398 : vec4<f32> = u_xlat2;
  let x_2399 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_2398, x_2399);
  let x_2403 : f32 = u_xlat2.x;
  let x_2405 : f32 = x_66.AdditionalParams.x;
  u_xlat2.x = (x_2403 + x_2405);
  let x_2409 : f32 = u_xlat2.x;
  let x_2411 : f32 = u_xlat4.x;
  u_xlat1.y = (x_2409 / x_2411);
  let x_2415 : vec4<i32> = u_xlati0;
  let x_2417 : vec4<f32> = u_xlat1;
  textureStore(AoResult_origX0X, vec2<i32>(x_2415.x, x_2415.y), x_2417);
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn main(@builtin(local_invocation_id) gl_LocalInvocationID_param : vec3<u32>, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_LocalInvocationID = gl_LocalInvocationID_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

