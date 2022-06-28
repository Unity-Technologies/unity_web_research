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

@group(0) @binding(8) var samplerLoResAO1 : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var LoResAO2 : texture_2d<f32>;

@group(0) @binding(9) var samplerLoResAO2 : sampler;

var<workgroup> TGSM1 : array<S, 256u>;

var<private> u_xlati39 : i32;

var<private> u_xlati27 : vec2<i32>;

@group(0) @binding(1) var LoResDB : texture_2d<f32>;

@group(0) @binding(6) var samplerLoResDB : sampler;

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

@group(0) @binding(7) var samplerHiResDB : sampler;

var<private> u_xlati8 : vec4<i32>;

var<private> u_xlat11 : vec4<f32>;

@group(0) @binding(5) var AoResult_origX0X : texture_storage_2d<rg32float, write>;

fn main_1() {
  var x_773 : f32;
  var x_786 : f32;
  var hlslcc_movcTemp : vec2<f32>;
  var x_801 : f32;
  var x_813 : f32;
  var x_845 : f32;
  var x_858 : f32;
  var x_871 : f32;
  var x_884 : f32;
  var x_899 : f32;
  var x_911 : f32;
  var x_960 : f32;
  var x_972 : f32;
  var x_1006 : f32;
  var x_1019 : f32;
  var x_1032 : f32;
  var x_1045 : f32;
  var x_1060 : f32;
  var x_1072 : f32;
  var x_1114 : f32;
  var x_1126 : f32;
  var x_1154 : f32;
  var x_1167 : f32;
  var x_1179 : f32;
  var x_1191 : f32;
  var x_1622 : f32;
  var x_1635 : f32;
  var hlslcc_movcTemp_1 : vec2<f32>;
  var x_1649 : f32;
  var x_1661 : f32;
  var x_1690 : f32;
  var x_1703 : f32;
  var x_1716 : f32;
  var x_1729 : f32;
  var x_1744 : f32;
  var x_1756 : f32;
  var hlslcc_movcTemp_2 : vec4<f32>;
  var x_1787 : f32;
  var x_1799 : f32;
  var x_1827 : f32;
  var x_1840 : f32;
  var hlslcc_movcTemp_3 : vec2<f32>;
  var x_1854 : f32;
  var x_1866 : f32;
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
      let x_777 : f32 = u_xlat2.x;
      x_773 = x_777;
    } else {
      let x_780 : f32 = u_xlat28.x;
      x_773 = x_780;
    }
    let x_781 : f32 = x_773;
    u_xlat4.x = x_781;
    let x_784 : i32 = u_xlati4.y;
    if ((x_784 != 0i)) {
      let x_790 : f32 = u_xlat2.y;
      x_786 = x_790;
    } else {
      let x_793 : f32 = u_xlat28.y;
      x_786 = x_793;
    }
    let x_794 : f32 = x_786;
    u_xlat4.y = x_794;
    let x_798 : vec2<f32> = u_xlat26;
    hlslcc_movcTemp = x_798;
    let x_800 : bool = u_xlatb31.x;
    if (x_800) {
      let x_805 : f32 = u_xlat26.x;
      x_801 = x_805;
    } else {
      let x_808 : f32 = u_xlat4.x;
      x_801 = x_808;
    }
    let x_809 : f32 = x_801;
    hlslcc_movcTemp.x = x_809;
    let x_812 : bool = u_xlatb31.y;
    if (x_812) {
      let x_817 : f32 = u_xlat26.y;
      x_813 = x_817;
    } else {
      let x_820 : f32 = u_xlat4.y;
      x_813 = x_820;
    }
    let x_821 : f32 = x_813;
    hlslcc_movcTemp.y = x_821;
    let x_823 : vec2<f32> = hlslcc_movcTemp;
    u_xlat26 = x_823;
    let x_825 : vec4<bool> = u_xlatb6;
    let x_830 : vec4<bool> = u_xlatb6;
    u_xlati31 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_825.x, x_825.y)) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_830.z, x_830.w)) * vec2<u32>(4294967295u, 4294967295u))));
    let x_837 : vec2<i32> = u_xlati31;
    u_xlati31 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_837) & vec2<u32>(1u, 1u)));
    let x_843 : i32 = u_xlati31.x;
    if ((x_843 != 0i)) {
      let x_849 : f32 = u_xlat28.x;
      x_845 = x_849;
    } else {
      let x_852 : f32 = u_xlat3.x;
      x_845 = x_852;
    }
    let x_853 : f32 = x_845;
    u_xlat12.x = x_853;
    let x_856 : i32 = u_xlati31.y;
    if ((x_856 != 0i)) {
      let x_862 : f32 = u_xlat28.y;
      x_858 = x_862;
    } else {
      let x_865 : f32 = u_xlat3.y;
      x_858 = x_865;
    }
    let x_866 : f32 = x_858;
    u_xlat12.y = x_866;
    let x_869 : i32 = u_xlati31.x;
    if ((x_869 != 0i)) {
      let x_875 : f32 = u_xlat3.x;
      x_871 = x_875;
    } else {
      let x_878 : f32 = u_xlat28.x;
      x_871 = x_878;
    }
    let x_879 : f32 = x_871;
    u_xlat9.x = x_879;
    let x_882 : i32 = u_xlati31.y;
    if ((x_882 != 0i)) {
      let x_888 : f32 = u_xlat3.y;
      x_884 = x_888;
    } else {
      let x_891 : f32 = u_xlat28.y;
      x_884 = x_891;
    }
    let x_892 : f32 = x_884;
    u_xlat9.y = x_892;
    let x_894 : vec2<f32> = u_xlat12;
    let x_895 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_894.x, x_894.y, x_895.z, x_895.w);
    let x_898 : bool = u_xlatb6.z;
    if (x_898) {
      let x_903 : f32 = u_xlat29.x;
      x_899 = x_903;
    } else {
      let x_906 : f32 = u_xlat9.x;
      x_899 = x_906;
    }
    let x_907 : f32 = x_899;
    u_xlat31.x = x_907;
    let x_910 : bool = u_xlatb6.w;
    if (x_910) {
      let x_915 : f32 = u_xlat29.y;
      x_911 = x_915;
    } else {
      let x_918 : f32 = u_xlat9.y;
      x_911 = x_918;
    }
    let x_919 : f32 = x_911;
    u_xlat31.y = x_919;
    let x_921 : vec2<f32> = u_xlat26;
    let x_922 : vec2<f32> = u_xlat31;
    u_xlat26 = (x_921 + x_922);
    let x_924 : vec2<f32> = u_xlat26;
    let x_928 : vec4<f32> = u_xlat4;
    u_xlat26 = ((x_924 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_928.x, x_928.y));
    let x_931 : vec2<f32> = u_xlat28;
    let x_932 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_931 + x_932);
    let x_934 : vec4<f32> = u_xlat9;
    let x_936 : vec2<f32> = u_xlat26;
    u_xlat26 = (vec2<f32>(x_934.x, x_934.y) + x_936);
    let x_938 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_938 * vec2<f32>(0.25f, 0.25f));
    let x_947 : i32 = u_xlati0.x;
    let x_949 : f32 = u_xlat26.x;
    TGSM2[x_947].value[0i] = bitcast<u32>(x_949);
    let x_953 : i32 = u_xlati0.x;
    let x_955 : f32 = u_xlat26.y;
    TGSM2[x_953].value[1i] = bitcast<u32>(x_955);
    let x_959 : bool = u_xlatb6.x;
    if (x_959) {
      let x_964 : f32 = u_xlat2.x;
      x_960 = x_964;
    } else {
      let x_967 : f32 = u_xlat8.x;
      x_960 = x_967;
    }
    let x_968 : f32 = x_960;
    u_xlat26.x = x_968;
    let x_971 : bool = u_xlatb6.y;
    if (x_971) {
      let x_976 : f32 = u_xlat2.y;
      x_972 = x_976;
    } else {
      let x_979 : f32 = u_xlat8.y;
      x_972 = x_979;
    }
    let x_980 : f32 = x_972;
    u_xlat26.y = x_980;
    let x_983 : vec4<bool> = u_xlatb6;
    let x_988 : vec2<bool> = u_xlatb7;
    let x_993 : vec2<i32> = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_983.z, x_983.w)) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_988) * vec2<u32>(4294967295u, 4294967295u))));
    let x_994 : vec4<i32> = u_xlati2;
    u_xlati2 = vec4<i32>(x_993.x, x_993.y, x_994.z, x_994.w);
    let x_996 : vec4<i32> = u_xlati2;
    let x_1000 : vec2<i32> = bitcast<vec2<i32>>((bitcast<vec2<u32>>(vec2<i32>(x_996.x, x_996.y)) & vec2<u32>(1u, 1u)));
    let x_1001 : vec4<i32> = u_xlati2;
    u_xlati2 = vec4<i32>(x_1000.x, x_1000.y, x_1001.z, x_1001.w);
    let x_1004 : i32 = u_xlati2.x;
    if ((x_1004 != 0i)) {
      let x_1010 : f32 = u_xlat3.x;
      x_1006 = x_1010;
    } else {
      let x_1013 : f32 = u_xlat29.x;
      x_1006 = x_1013;
    }
    let x_1014 : f32 = x_1006;
    u_xlat12.x = x_1014;
    let x_1017 : i32 = u_xlati2.y;
    if ((x_1017 != 0i)) {
      let x_1023 : f32 = u_xlat3.y;
      x_1019 = x_1023;
    } else {
      let x_1026 : f32 = u_xlat29.y;
      x_1019 = x_1026;
    }
    let x_1027 : f32 = x_1019;
    u_xlat12.y = x_1027;
    let x_1030 : i32 = u_xlati2.x;
    if ((x_1030 != 0i)) {
      let x_1036 : f32 = u_xlat29.x;
      x_1032 = x_1036;
    } else {
      let x_1039 : f32 = u_xlat3.x;
      x_1032 = x_1039;
    }
    let x_1040 : f32 = x_1032;
    u_xlat4.x = x_1040;
    let x_1043 : i32 = u_xlati2.y;
    if ((x_1043 != 0i)) {
      let x_1049 : f32 = u_xlat29.y;
      x_1045 = x_1049;
    } else {
      let x_1052 : f32 = u_xlat3.y;
      x_1045 = x_1052;
    }
    let x_1053 : f32 = x_1045;
    u_xlat4.y = x_1053;
    let x_1055 : vec2<f32> = u_xlat12;
    let x_1056 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
    let x_1059 : bool = u_xlatb7.x;
    if (x_1059) {
      let x_1064 : f32 = u_xlat30.x;
      x_1060 = x_1064;
    } else {
      let x_1067 : f32 = u_xlat4.x;
      x_1060 = x_1067;
    }
    let x_1068 : f32 = x_1060;
    u_xlat31.x = x_1068;
    let x_1071 : bool = u_xlatb7.y;
    if (x_1071) {
      let x_1076 : f32 = u_xlat30.y;
      x_1072 = x_1076;
    } else {
      let x_1079 : f32 = u_xlat4.y;
      x_1072 = x_1079;
    }
    let x_1080 : f32 = x_1072;
    u_xlat31.y = x_1080;
    let x_1082 : vec2<f32> = u_xlat26;
    let x_1083 : vec2<f32> = u_xlat31;
    u_xlat26 = (x_1082 + x_1083);
    let x_1085 : vec2<f32> = u_xlat26;
    let x_1087 : vec4<f32> = u_xlat8;
    u_xlat26 = ((x_1085 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1087.x, x_1087.y));
    let x_1090 : vec4<f32> = u_xlat3;
    let x_1092 : vec2<f32> = u_xlat26;
    u_xlat26 = (vec2<f32>(x_1090.x, x_1090.y) + x_1092);
    let x_1094 : vec4<f32> = u_xlat4;
    let x_1096 : vec2<f32> = u_xlat26;
    u_xlat26 = (vec2<f32>(x_1094.x, x_1094.y) + x_1096);
    let x_1098 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1098 * vec2<f32>(0.25f, 0.25f));
    let x_1101 : i32 = u_xlati1.x;
    let x_1103 : f32 = u_xlat26.x;
    TGSM2[x_1101].value[0i] = bitcast<u32>(x_1103);
    let x_1107 : i32 = u_xlati1.x;
    let x_1109 : f32 = u_xlat26.y;
    TGSM2[x_1107].value[1i] = bitcast<u32>(x_1109);
    let x_1113 : bool = u_xlatb6.z;
    if (x_1113) {
      let x_1118 : f32 = u_xlat28.x;
      x_1114 = x_1118;
    } else {
      let x_1121 : f32 = u_xlat2.x;
      x_1114 = x_1121;
    }
    let x_1122 : f32 = x_1114;
    u_xlat26.x = x_1122;
    let x_1125 : bool = u_xlatb6.w;
    if (x_1125) {
      let x_1130 : f32 = u_xlat28.y;
      x_1126 = x_1130;
    } else {
      let x_1133 : f32 = u_xlat2.y;
      x_1126 = x_1133;
    }
    let x_1134 : f32 = x_1126;
    u_xlat26.y = x_1134;
    let x_1137 : vec2<bool> = u_xlatb7;
    let x_1141 : vec2<bool> = u_xlatb27;
    u_xlati28 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1137) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1141) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1147 : vec2<i32> = u_xlati28;
    u_xlati28 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1147) & vec2<u32>(1u, 1u)));
    let x_1152 : i32 = u_xlati28.x;
    if ((x_1152 != 0i)) {
      let x_1158 : f32 = u_xlat30.x;
      x_1154 = x_1158;
    } else {
      let x_1161 : f32 = u_xlat29.x;
      x_1154 = x_1161;
    }
    let x_1162 : f32 = x_1154;
    u_xlat28.x = x_1162;
    let x_1165 : i32 = u_xlati28.y;
    if ((x_1165 != 0i)) {
      let x_1171 : f32 = u_xlat30.y;
      x_1167 = x_1171;
    } else {
      let x_1174 : f32 = u_xlat29.y;
      x_1167 = x_1174;
    }
    let x_1175 : f32 = x_1167;
    u_xlat28.y = x_1175;
    let x_1178 : bool = u_xlatb27.x;
    if (x_1178) {
      let x_1183 : f32 = u_xlat5.x;
      x_1179 = x_1183;
    } else {
      let x_1186 : f32 = u_xlat28.x;
      x_1179 = x_1186;
    }
    let x_1187 : f32 = x_1179;
    u_xlat1.x = x_1187;
    let x_1190 : bool = u_xlatb27.y;
    if (x_1190) {
      let x_1195 : f32 = u_xlat5.y;
      x_1191 = x_1195;
    } else {
      let x_1198 : f32 = u_xlat28.y;
      x_1191 = x_1198;
    }
    let x_1199 : f32 = x_1191;
    u_xlat1.z = x_1199;
    let x_1201 : vec2<f32> = u_xlat26;
    let x_1202 : vec4<f32> = u_xlat1;
    u_xlat26 = (x_1201 + vec2<f32>(x_1202.x, x_1202.z));
    let x_1205 : vec2<f32> = u_xlat26;
    let x_1207 : vec4<f32> = u_xlat2;
    u_xlat26 = ((x_1205 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1207.x, x_1207.y));
    let x_1210 : vec2<f32> = u_xlat29;
    let x_1211 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1210 + x_1211);
    let x_1213 : vec2<f32> = u_xlat28;
    let x_1214 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1213 + x_1214);
    let x_1216 : vec2<f32> = u_xlat26;
    u_xlat26 = (x_1216 * vec2<f32>(0.25f, 0.25f));
    let x_1219 : i32 = u_xlati1.y;
    let x_1221 : f32 = u_xlat26.x;
    TGSM2[x_1219].value[0i] = bitcast<u32>(x_1221);
    let x_1225 : i32 = u_xlati1.y;
    let x_1227 : f32 = u_xlat26.y;
    TGSM2[x_1225].value[1i] = bitcast<u32>(x_1227);
  }
  workgroupBarrier();
  let x_1231 : bool = u_xlatb0.y;
  if (x_1231) {
    let x_1234 : u32 = gl_LocalInvocationIndex;
    u_xlatu0 = (x_1234 / 9u);
    let x_1237 : u32 = gl_LocalInvocationIndex;
    u_xlatu1 = (x_1237 % 9u);
    let x_1239 : u32 = u_xlatu0;
    let x_1242 : u32 = u_xlatu1;
    u_xlati0.x = ((bitcast<i32>(x_1239) * 32i) + bitcast<i32>(x_1242));
    let x_1247 : i32 = u_xlati0.x;
    let x_1249 : u32 = TGSM2[x_1247].value[0i];
    let x_1252 : i32 = u_xlati0.x;
    let x_1254 : u32 = TGSM2[x_1252].value[1i];
    u_xlat13 = vec2<f32>(bitcast<f32>(x_1249), bitcast<f32>(x_1254));
    let x_1258 : i32 = u_xlati0.x;
    u_xlati39 = (x_1258 + 16i);
    let x_1260 : i32 = u_xlati39;
    let x_1262 : u32 = TGSM2[x_1260].value[0i];
    let x_1264 : i32 = u_xlati39;
    let x_1266 : u32 = TGSM2[x_1264].value[1i];
    let x_1268 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1262), bitcast<f32>(x_1266));
    let x_1269 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1268.x, x_1268.y, x_1269.z, x_1269.w);
    let x_1271 : vec4<i32> = u_xlati0;
    u_xlati2 = (vec4<i32>(x_1271.x, x_1271.x, x_1271.x, x_1271.x) + vec4<i32>(32i, 48i, 64i, 80i));
    let x_1279 : i32 = u_xlati2.x;
    let x_1281 : u32 = TGSM2[x_1279].value[0i];
    let x_1284 : i32 = u_xlati2.x;
    let x_1286 : u32 = TGSM2[x_1284].value[1i];
    u_xlat27 = vec2<f32>(bitcast<f32>(x_1281), bitcast<f32>(x_1286));
    let x_1290 : i32 = u_xlati2.y;
    let x_1292 : u32 = TGSM2[x_1290].value[0i];
    let x_1295 : i32 = u_xlati2.y;
    let x_1297 : u32 = TGSM2[x_1295].value[1i];
    let x_1299 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1292), bitcast<f32>(x_1297));
    let x_1300 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1299.x, x_1299.y, x_1300.z, x_1300.w);
    let x_1303 : i32 = u_xlati2.z;
    let x_1305 : u32 = TGSM2[x_1303].value[0i];
    let x_1308 : i32 = u_xlati2.z;
    let x_1310 : u32 = TGSM2[x_1308].value[1i];
    let x_1312 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1305), bitcast<f32>(x_1310));
    let x_1313 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
    let x_1316 : i32 = u_xlati2.w;
    let x_1318 : u32 = TGSM2[x_1316].value[0i];
    let x_1321 : i32 = u_xlati2.w;
    let x_1323 : u32 = TGSM2[x_1321].value[1i];
    u_xlat28 = vec2<f32>(bitcast<f32>(x_1318), bitcast<f32>(x_1323));
    let x_1326 : vec4<i32> = u_xlati0;
    u_xlati4 = (vec4<i32>(x_1326.x, x_1326.x, x_1326.x, x_1326.x) + vec4<i32>(2i, 18i, 34i, 50i));
    let x_1334 : i32 = u_xlati4.x;
    let x_1336 : u32 = TGSM0[x_1334].value[0i];
    let x_1339 : i32 = u_xlati4.x;
    let x_1341 : u32 = TGSM0[x_1339].value[1i];
    u_xlat29 = vec2<f32>(bitcast<f32>(x_1336), bitcast<f32>(x_1341));
    let x_1345 : i32 = u_xlati4.y;
    let x_1347 : u32 = TGSM0[x_1345].value[0i];
    let x_1350 : i32 = u_xlati4.y;
    let x_1352 : u32 = TGSM0[x_1350].value[1i];
    let x_1354 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1347), bitcast<f32>(x_1352));
    let x_1355 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1354.x, x_1354.y, x_1355.z, x_1355.w);
    let x_1358 : i32 = u_xlati4.z;
    let x_1360 : u32 = TGSM0[x_1358].value[0i];
    let x_1363 : i32 = u_xlati4.z;
    let x_1365 : u32 = TGSM0[x_1363].value[1i];
    let x_1367 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1360), bitcast<f32>(x_1365));
    let x_1368 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1367.x, x_1367.y, x_1368.z, x_1368.w);
    let x_1371 : i32 = u_xlati4.w;
    let x_1373 : u32 = TGSM0[x_1371].value[0i];
    let x_1376 : i32 = u_xlati4.w;
    let x_1378 : u32 = TGSM0[x_1376].value[1i];
    u_xlat30 = vec2<f32>(bitcast<f32>(x_1373), bitcast<f32>(x_1378));
    let x_1381 : vec4<i32> = u_xlati0;
    u_xlati31 = (vec2<i32>(x_1381.x, x_1381.x) + vec2<i32>(66i, 82i));
    let x_1388 : i32 = u_xlati31.x;
    let x_1390 : u32 = TGSM0[x_1388].value[0i];
    let x_1393 : i32 = u_xlati31.x;
    let x_1395 : u32 = TGSM0[x_1393].value[1i];
    let x_1397 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1390), bitcast<f32>(x_1395));
    let x_1398 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1397.x, x_1397.y, x_1398.z, x_1398.w);
    let x_1401 : i32 = u_xlati31.y;
    let x_1403 : u32 = TGSM0[x_1401].value[0i];
    let x_1406 : i32 = u_xlati31.y;
    let x_1408 : u32 = TGSM0[x_1406].value[1i];
    u_xlat31 = vec2<f32>(bitcast<f32>(x_1403), bitcast<f32>(x_1408));
    let x_1411 : vec2<f32> = u_xlat29;
    let x_1413 : vec4<f32> = u_xlat4;
    u_xlat29 = (-(x_1411) + vec2<f32>(x_1413.x, x_1413.y));
    let x_1416 : vec4<f32> = u_xlat4;
    let x_1419 : vec4<f32> = u_xlat5;
    let x_1421 : vec2<f32> = (-(vec2<f32>(x_1416.x, x_1416.y)) + vec2<f32>(x_1419.x, x_1419.y));
    let x_1422 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1421.x, x_1421.y, x_1422.z, x_1422.w);
    let x_1424 : vec4<f32> = u_xlat5;
    let x_1427 : vec2<f32> = u_xlat30;
    let x_1428 : vec2<f32> = (-(vec2<f32>(x_1424.x, x_1424.y)) + x_1427);
    let x_1429 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1428.x, x_1428.y, x_1429.z, x_1429.w);
    let x_1431 : vec2<f32> = u_xlat30;
    let x_1433 : vec4<f32> = u_xlat6;
    u_xlat30 = (-(x_1431) + vec2<f32>(x_1433.x, x_1433.y));
    let x_1436 : vec4<f32> = u_xlat6;
    let x_1439 : vec2<f32> = u_xlat31;
    u_xlat31 = (-(vec2<f32>(x_1436.x, x_1436.y)) + x_1439);
    let x_1441 : vec2<f32> = u_xlat29;
    let x_1442 : vec2<f32> = u_xlat29;
    let x_1445 : vec4<f32> = x_66.AdditionalParams;
    let x_1447 : vec2<f32> = ((x_1441 * x_1442) + vec2<f32>(x_1445.y, x_1445.y));
    let x_1448 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1447.x, x_1447.y, x_1448.z, x_1448.w);
    let x_1450 : vec4<f32> = u_xlat4;
    let x_1452 : vec4<f32> = u_xlat4;
    let x_1456 : vec4<f32> = x_66.AdditionalParams;
    u_xlat32 = ((vec2<f32>(x_1450.x, x_1450.y) * vec2<f32>(x_1452.x, x_1452.y)) + vec2<f32>(x_1456.y, x_1456.y));
    let x_1459 : vec4<f32> = u_xlat5;
    let x_1461 : vec4<f32> = u_xlat5;
    let x_1465 : vec4<f32> = x_66.AdditionalParams;
    let x_1467 : vec2<f32> = ((vec2<f32>(x_1459.x, x_1459.y) * vec2<f32>(x_1461.x, x_1461.y)) + vec2<f32>(x_1465.y, x_1465.y));
    let x_1468 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1467.x, x_1467.y, x_1468.z, x_1468.w);
    let x_1470 : vec2<f32> = u_xlat30;
    let x_1471 : vec2<f32> = u_xlat30;
    let x_1474 : vec4<f32> = x_66.AdditionalParams;
    u_xlat33 = ((x_1470 * x_1471) + vec2<f32>(x_1474.y, x_1474.y));
    let x_1477 : vec2<f32> = u_xlat31;
    let x_1478 : vec2<f32> = u_xlat31;
    let x_1481 : vec4<f32> = x_66.AdditionalParams;
    let x_1483 : vec2<f32> = ((x_1477 * x_1478) + vec2<f32>(x_1481.y, x_1481.y));
    let x_1484 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1483.x, x_1483.y, x_1484.z, x_1484.w);
    let x_1486 : vec2<f32> = u_xlat29;
    let x_1487 : vec4<f32> = u_xlat4;
    let x_1491 : vec4<f32> = x_66.AdditionalParams;
    u_xlat29 = ((x_1486 * vec2<f32>(x_1487.x, x_1487.y)) + vec2<f32>(x_1491.y, x_1491.y));
    let x_1494 : vec2<f32> = u_xlat29;
    let x_1495 : vec2<f32> = u_xlat29;
    u_xlat29 = (x_1494 * x_1495);
    let x_1497 : vec2<f32> = u_xlat32;
    let x_1498 : vec4<f32> = u_xlat6;
    let x_1500 : vec2<f32> = (x_1497 * vec2<f32>(x_1498.x, x_1498.y));
    let x_1501 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1500.x, x_1500.y, x_1501.z, x_1501.w);
    let x_1503 : vec4<f32> = u_xlat4;
    let x_1505 : vec4<f32> = u_xlat5;
    let x_1509 : vec4<f32> = x_66.AdditionalParams;
    let x_1511 : vec2<f32> = ((vec2<f32>(x_1503.x, x_1503.y) * vec2<f32>(x_1505.x, x_1505.y)) + vec2<f32>(x_1509.y, x_1509.y));
    let x_1512 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1511.x, x_1511.y, x_1512.z, x_1512.w);
    let x_1514 : vec2<f32> = u_xlat32;
    let x_1515 : vec4<f32> = u_xlat7;
    let x_1517 : vec2<f32> = (x_1514 * vec2<f32>(x_1515.x, x_1515.y));
    let x_1518 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1518.x, x_1518.y, x_1517.x, x_1517.y);
    let x_1520 : vec4<f32> = u_xlat6;
    let x_1522 : vec4<f32> = x_66.AdditionalParams;
    u_xlat6 = (x_1520 * vec4<f32>(x_1522.z, x_1522.z, x_1522.z, x_1522.z));
    let x_1525 : vec4<f32> = u_xlat5;
    let x_1527 : vec2<f32> = u_xlat30;
    let x_1530 : vec4<f32> = x_66.AdditionalParams;
    let x_1532 : vec2<f32> = ((vec2<f32>(x_1525.x, x_1525.y) * x_1527) + vec2<f32>(x_1530.y, x_1530.y));
    let x_1533 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1532.x, x_1532.y, x_1533.z, x_1533.w);
    let x_1535 : vec4<f32> = u_xlat5;
    let x_1537 : vec4<f32> = u_xlat5;
    let x_1539 : vec2<f32> = (vec2<f32>(x_1535.x, x_1535.y) * vec2<f32>(x_1537.x, x_1537.y));
    let x_1540 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1539.x, x_1539.y, x_1540.z, x_1540.w);
    let x_1542 : vec2<f32> = u_xlat33;
    let x_1543 : vec4<f32> = u_xlat7;
    let x_1545 : vec2<f32> = (x_1542 * vec2<f32>(x_1543.x, x_1543.y));
    let x_1546 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1545.x, x_1545.y, x_1546.z, x_1546.w);
    let x_1548 : vec4<f32> = u_xlat7;
    let x_1551 : vec4<f32> = x_66.AdditionalParams;
    let x_1553 : vec2<f32> = (vec2<f32>(x_1548.x, x_1548.y) * vec2<f32>(x_1551.z, x_1551.z));
    let x_1554 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1553.x, x_1553.y, x_1554.z, x_1554.w);
    let x_1556 : vec2<f32> = u_xlat30;
    let x_1557 : vec2<f32> = u_xlat31;
    let x_1560 : vec4<f32> = x_66.AdditionalParams;
    let x_1562 : vec2<f32> = ((x_1556 * x_1557) + vec2<f32>(x_1560.y, x_1560.y));
    let x_1563 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1563.x, x_1563.y, x_1562.x, x_1562.y);
    let x_1565 : vec4<f32> = u_xlat4;
    let x_1566 : vec4<f32> = u_xlat4;
    u_xlat4 = (x_1565 * x_1566);
    let x_1568 : vec2<f32> = u_xlat33;
    let x_1569 : vec4<f32> = u_xlat8;
    u_xlat31 = (x_1568 * vec2<f32>(x_1569.x, x_1569.y));
    let x_1572 : vec2<f32> = u_xlat31;
    let x_1574 : vec4<f32> = x_66.AdditionalParams;
    u_xlat31 = (x_1572 * vec2<f32>(x_1574.z, x_1574.z));
    let x_1578 : vec4<f32> = u_xlat6;
    let x_1580 : vec2<f32> = u_xlat29;
    let x_1582 : vec4<bool> = (vec4<f32>(x_1578.x, x_1578.y, x_1578.x, x_1578.y) < vec4<f32>(x_1580.x, x_1580.y, x_1580.x, x_1580.y));
    u_xlatb29 = vec2<bool>(x_1582.x, x_1582.y);
    let x_1585 : vec4<f32> = u_xlat6;
    let x_1587 : vec4<f32> = u_xlat4;
    let x_1589 : vec4<bool> = (vec4<f32>(x_1585.z, x_1585.w, x_1585.z, x_1585.z) < vec4<f32>(x_1587.x, x_1587.y, x_1587.x, x_1587.x));
    u_xlatb4 = vec2<bool>(x_1589.x, x_1589.y);
    let x_1592 : vec4<f32> = u_xlat7;
    let x_1594 : vec4<f32> = u_xlat5;
    let x_1596 : vec4<bool> = (vec4<f32>(x_1592.x, x_1592.y, x_1592.x, x_1592.x) < vec4<f32>(x_1594.x, x_1594.y, x_1594.x, x_1594.x));
    u_xlatb5 = vec2<bool>(x_1596.x, x_1596.y);
    let x_1599 : vec2<f32> = u_xlat31;
    let x_1601 : vec4<f32> = u_xlat4;
    let x_1603 : vec4<bool> = (vec4<f32>(x_1599.x, x_1599.y, x_1599.x, x_1599.y) < vec4<f32>(x_1601.z, x_1601.w, x_1601.z, x_1601.w));
    u_xlatb30 = vec2<bool>(x_1603.x, x_1603.y);
    let x_1605 : vec2<bool> = u_xlatb29;
    let x_1609 : vec2<bool> = u_xlatb4;
    u_xlati31 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1605) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1609) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1615 : vec2<i32> = u_xlati31;
    u_xlati31 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1615) & vec2<u32>(1u, 1u)));
    let x_1620 : i32 = u_xlati31.x;
    if ((x_1620 != 0i)) {
      let x_1626 : f32 = u_xlat1.x;
      x_1622 = x_1626;
    } else {
      let x_1629 : f32 = u_xlat27.x;
      x_1622 = x_1629;
    }
    let x_1630 : f32 = x_1622;
    u_xlat31.x = x_1630;
    let x_1633 : i32 = u_xlati31.y;
    if ((x_1633 != 0i)) {
      let x_1639 : f32 = u_xlat1.y;
      x_1635 = x_1639;
    } else {
      let x_1642 : f32 = u_xlat27.y;
      x_1635 = x_1642;
    }
    let x_1643 : f32 = x_1635;
    u_xlat31.y = x_1643;
    let x_1646 : vec2<f32> = u_xlat13;
    hlslcc_movcTemp_1 = x_1646;
    let x_1648 : bool = u_xlatb29.x;
    if (x_1648) {
      let x_1653 : f32 = u_xlat13.x;
      x_1649 = x_1653;
    } else {
      let x_1656 : f32 = u_xlat31.x;
      x_1649 = x_1656;
    }
    let x_1657 : f32 = x_1649;
    hlslcc_movcTemp_1.x = x_1657;
    let x_1660 : bool = u_xlatb29.y;
    if (x_1660) {
      let x_1665 : f32 = u_xlat13.y;
      x_1661 = x_1665;
    } else {
      let x_1668 : f32 = u_xlat31.y;
      x_1661 = x_1668;
    }
    let x_1669 : f32 = x_1661;
    hlslcc_movcTemp_1.y = x_1669;
    let x_1671 : vec2<f32> = hlslcc_movcTemp_1;
    u_xlat13 = x_1671;
    let x_1673 : vec2<bool> = u_xlatb4;
    let x_1677 : vec2<bool> = u_xlatb5;
    u_xlati29 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1673) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1677) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1683 : vec2<i32> = u_xlati29;
    u_xlati29 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1683) & vec2<u32>(1u, 1u)));
    let x_1688 : i32 = u_xlati29.x;
    if ((x_1688 != 0i)) {
      let x_1694 : f32 = u_xlat27.x;
      x_1690 = x_1694;
    } else {
      let x_1697 : f32 = u_xlat2.x;
      x_1690 = x_1697;
    }
    let x_1698 : f32 = x_1690;
    u_xlat12.x = x_1698;
    let x_1701 : i32 = u_xlati29.y;
    if ((x_1701 != 0i)) {
      let x_1707 : f32 = u_xlat27.y;
      x_1703 = x_1707;
    } else {
      let x_1710 : f32 = u_xlat2.y;
      x_1703 = x_1710;
    }
    let x_1711 : f32 = x_1703;
    u_xlat12.y = x_1711;
    let x_1714 : i32 = u_xlati29.x;
    if ((x_1714 != 0i)) {
      let x_1720 : f32 = u_xlat2.x;
      x_1716 = x_1720;
    } else {
      let x_1723 : f32 = u_xlat27.x;
      x_1716 = x_1723;
    }
    let x_1724 : f32 = x_1716;
    u_xlat7.x = x_1724;
    let x_1727 : i32 = u_xlati29.y;
    if ((x_1727 != 0i)) {
      let x_1733 : f32 = u_xlat2.y;
      x_1729 = x_1733;
    } else {
      let x_1736 : f32 = u_xlat27.y;
      x_1729 = x_1736;
    }
    let x_1737 : f32 = x_1729;
    u_xlat7.y = x_1737;
    let x_1739 : vec2<f32> = u_xlat12;
    let x_1740 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1739.x, x_1739.y, x_1740.z, x_1740.w);
    let x_1743 : bool = u_xlatb5.x;
    if (x_1743) {
      let x_1748 : f32 = u_xlat3.x;
      x_1744 = x_1748;
    } else {
      let x_1751 : f32 = u_xlat7.x;
      x_1744 = x_1751;
    }
    let x_1752 : f32 = x_1744;
    u_xlat29.x = x_1752;
    let x_1755 : bool = u_xlatb5.y;
    if (x_1755) {
      let x_1760 : f32 = u_xlat3.y;
      x_1756 = x_1760;
    } else {
      let x_1763 : f32 = u_xlat7.y;
      x_1756 = x_1763;
    }
    let x_1764 : f32 = x_1756;
    u_xlat29.y = x_1764;
    let x_1766 : vec2<f32> = u_xlat13;
    let x_1767 : vec2<f32> = u_xlat29;
    u_xlat13 = (x_1766 + x_1767);
    let x_1769 : vec2<f32> = u_xlat13;
    let x_1771 : vec2<f32> = u_xlat31;
    u_xlat13 = ((x_1769 * vec2<f32>(0.5f, 0.5f)) + x_1771);
    let x_1773 : vec2<f32> = u_xlat27;
    let x_1774 : vec2<f32> = u_xlat13;
    u_xlat13 = (x_1773 + x_1774);
    let x_1776 : vec4<f32> = u_xlat7;
    let x_1778 : vec2<f32> = u_xlat13;
    u_xlat13 = (vec2<f32>(x_1776.x, x_1776.y) + x_1778);
    let x_1780 : vec2<f32> = u_xlat13;
    u_xlat13 = (x_1780 * vec2<f32>(0.25f, 0.25f));
    let x_1784 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp_2 = x_1784;
    let x_1786 : bool = u_xlatb4.x;
    if (x_1786) {
      let x_1791 : f32 = u_xlat1.x;
      x_1787 = x_1791;
    } else {
      let x_1794 : f32 = u_xlat6.x;
      x_1787 = x_1794;
    }
    let x_1795 : f32 = x_1787;
    hlslcc_movcTemp_2.x = x_1795;
    let x_1798 : bool = u_xlatb4.y;
    if (x_1798) {
      let x_1803 : f32 = u_xlat1.y;
      x_1799 = x_1803;
    } else {
      let x_1806 : f32 = u_xlat6.y;
      x_1799 = x_1806;
    }
    let x_1807 : f32 = x_1799;
    hlslcc_movcTemp_2.y = x_1807;
    let x_1809 : vec4<f32> = hlslcc_movcTemp_2;
    u_xlat1 = x_1809;
    let x_1810 : vec2<bool> = u_xlatb5;
    let x_1814 : vec2<bool> = u_xlatb30;
    u_xlati27 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1810) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1814) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1820 : vec2<i32> = u_xlati27;
    u_xlati27 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1820) & vec2<u32>(1u, 1u)));
    let x_1825 : i32 = u_xlati27.x;
    if ((x_1825 != 0i)) {
      let x_1831 : f32 = u_xlat3.x;
      x_1827 = x_1831;
    } else {
      let x_1834 : f32 = u_xlat2.x;
      x_1827 = x_1834;
    }
    let x_1835 : f32 = x_1827;
    u_xlat27.x = x_1835;
    let x_1838 : i32 = u_xlati27.y;
    if ((x_1838 != 0i)) {
      let x_1844 : f32 = u_xlat3.y;
      x_1840 = x_1844;
    } else {
      let x_1847 : f32 = u_xlat2.y;
      x_1840 = x_1847;
    }
    let x_1848 : f32 = x_1840;
    u_xlat27.y = x_1848;
    let x_1851 : vec2<f32> = u_xlat28;
    hlslcc_movcTemp_3 = x_1851;
    let x_1853 : bool = u_xlatb30.x;
    if (x_1853) {
      let x_1858 : f32 = u_xlat28.x;
      x_1854 = x_1858;
    } else {
      let x_1861 : f32 = u_xlat27.x;
      x_1854 = x_1861;
    }
    let x_1862 : f32 = x_1854;
    hlslcc_movcTemp_3.x = x_1862;
    let x_1865 : bool = u_xlatb30.y;
    if (x_1865) {
      let x_1870 : f32 = u_xlat28.y;
      x_1866 = x_1870;
    } else {
      let x_1873 : f32 = u_xlat27.y;
      x_1866 = x_1873;
    }
    let x_1874 : f32 = x_1866;
    hlslcc_movcTemp_3.y = x_1874;
    let x_1876 : vec2<f32> = hlslcc_movcTemp_3;
    u_xlat28 = x_1876;
    let x_1877 : vec4<f32> = u_xlat1;
    let x_1879 : vec2<f32> = u_xlat28;
    let x_1880 : vec2<f32> = (vec2<f32>(x_1877.x, x_1877.y) + x_1879);
    let x_1881 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1880.x, x_1880.y, x_1881.z, x_1881.w);
    let x_1883 : vec4<f32> = u_xlat1;
    let x_1886 : vec4<f32> = u_xlat6;
    let x_1888 : vec2<f32> = ((vec2<f32>(x_1883.x, x_1883.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1886.x, x_1886.y));
    let x_1889 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1888.x, x_1888.y, x_1889.z, x_1889.w);
    let x_1891 : vec4<f32> = u_xlat2;
    let x_1893 : vec4<f32> = u_xlat1;
    let x_1895 : vec2<f32> = (vec2<f32>(x_1891.x, x_1891.y) + vec2<f32>(x_1893.x, x_1893.y));
    let x_1896 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1895.x, x_1895.y, x_1896.z, x_1896.w);
    let x_1898 : vec2<f32> = u_xlat27;
    let x_1899 : vec4<f32> = u_xlat1;
    let x_1901 : vec2<f32> = (x_1898 + vec2<f32>(x_1899.x, x_1899.y));
    let x_1902 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1901.x, x_1901.y, x_1902.z, x_1902.w);
    let x_1904 : vec4<f32> = u_xlat1;
    let x_1906 : vec2<f32> = (vec2<f32>(x_1904.x, x_1904.y) * vec2<f32>(0.25f, 0.25f));
    let x_1907 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1906.x, x_1906.y, x_1907.z, x_1907.w);
    let x_1910 : i32 = u_xlati0.x;
    let x_1912 : f32 = u_xlat13.x;
    TGSM1[x_1910].value[0i] = bitcast<u32>(x_1912);
    let x_1916 : i32 = u_xlati0.x;
    let x_1918 : f32 = u_xlat13.y;
    TGSM1[x_1916].value[1i] = bitcast<u32>(x_1918);
    let x_1921 : i32 = u_xlati39;
    let x_1923 : f32 = u_xlat1.x;
    TGSM1[x_1921].value[0i] = bitcast<u32>(x_1923);
    let x_1926 : i32 = u_xlati39;
    let x_1928 : f32 = u_xlat1.y;
    TGSM1[x_1926].value[1i] = bitcast<u32>(x_1928);
  }
  workgroupBarrier();
  let x_1932 : u32 = gl_LocalInvocationID.y;
  let x_1936 : u32 = gl_LocalInvocationID.x;
  u_xlati0.x = ((bitcast<i32>(x_1932) * 16i) + bitcast<i32>(x_1936));
  let x_1940 : vec4<i32> = u_xlati0;
  u_xlati13 = (vec3<i32>(x_1940.x, x_1940.x, x_1940.x) + vec3<i32>(16i, 17i, 1i));
  let x_1945 : i32 = u_xlati13.x;
  let x_1947 : u32 = TGSM1[x_1945].value[0i];
  let x_1950 : i32 = u_xlati13.x;
  let x_1952 : u32 = TGSM1[x_1950].value[1i];
  let x_1954 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1947), bitcast<f32>(x_1952));
  let x_1955 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1954.x, x_1954.y, x_1955.z, x_1955.w);
  let x_1958 : i32 = u_xlati13.y;
  let x_1960 : u32 = TGSM1[x_1958].value[0i];
  let x_1963 : i32 = u_xlati13.y;
  let x_1965 : u32 = TGSM1[x_1963].value[1i];
  u_xlat13 = vec2<f32>(bitcast<f32>(x_1960), bitcast<f32>(x_1965));
  let x_1969 : i32 = u_xlati13.z;
  let x_1971 : u32 = TGSM1[x_1969].value[0i];
  let x_1974 : i32 = u_xlati13.z;
  let x_1976 : u32 = TGSM1[x_1974].value[1i];
  let x_1978 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1971), bitcast<f32>(x_1976));
  let x_1979 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1979.x, x_1979.y, x_1978.x, x_1978.y);
  let x_1982 : i32 = u_xlati0.x;
  let x_1984 : u32 = TGSM1[x_1982].value[1i];
  let x_1987 : i32 = u_xlati0.x;
  let x_1989 : u32 = TGSM1[x_1987].value[0i];
  let x_1991 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1984), bitcast<f32>(x_1989));
  let x_1992 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1991.x, x_1991.y, x_1992.z, x_1992.w);
  let x_1995 : vec3<u32> = gl_GlobalInvocationID;
  let x_1997 : vec2<f32> = vec2<f32>(vec2<u32>(x_1995.x, x_1995.y));
  let x_1998 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1997.x, x_1998.y, x_1998.z, x_1997.y);
  let x_2000 : vec4<f32> = u_xlat0;
  let x_2003 : vec4<f32> = x_66.InvLowResolution;
  let x_2005 : vec2<f32> = (vec2<f32>(x_2000.x, x_2000.w) * vec2<f32>(x_2003.x, x_2003.y));
  let x_2006 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2005.x, x_2006.y, x_2006.z, x_2005.y);
  let x_2010 : vec3<u32> = gl_GlobalInvocationID;
  u_xlatu3 = (vec4<u32>(x_2010.x, x_2010.y, x_2010.y, x_2010.y) << vec4<u32>(1u, 1u, 1u, 1u));
  let x_2014 : vec4<u32> = u_xlatu3;
  let x_2016 : vec2<f32> = vec2<f32>(vec2<u32>(x_2014.x, x_2014.w));
  let x_2017 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2016.x, x_2016.y, x_2017.z, x_2017.w);
  let x_2019 : vec4<f32> = u_xlat4;
  let x_2022 : vec4<f32> = x_66.InvHighResolution;
  let x_2024 : vec2<f32> = (vec2<f32>(x_2019.x, x_2019.y) * vec2<f32>(x_2022.x, x_2022.y));
  let x_2025 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2024.x, x_2024.y, x_2025.z, x_2025.w);
  let x_2030 : vec4<f32> = u_xlat0;
  let x_2032 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, vec2<f32>(x_2030.x, x_2030.w));
  u_xlat5 = x_2032;
  let x_2036 : vec4<f32> = u_xlat0;
  let x_2038 : vec4<f32> = textureGather(1i, LoResDB, samplerLoResDB, vec2<f32>(x_2036.x, x_2036.w));
  u_xlat6 = x_2038;
  let x_2044 : vec4<f32> = u_xlat4;
  let x_2046 : vec4<f32> = textureGather(0i, HiResDB, samplerHiResDB, vec2<f32>(x_2044.x, x_2044.y));
  u_xlat7 = x_2046;
  let x_2050 : vec4<f32> = u_xlat4;
  let x_2052 : vec4<f32> = textureGather(1i, HiResDB, samplerHiResDB, vec2<f32>(x_2050.x, x_2050.y));
  u_xlat4 = x_2052;
  let x_2054 : vec4<u32> = u_xlatu3;
  u_xlati8 = (bitcast<vec4<i32>>(vec4<u32>(x_2054.x, x_2054.w, x_2054.x, x_2054.w)) + vec4<i32>(-1i, 0i, 0i, -1i));
  let x_2060 : vec4<f32> = u_xlat5;
  let x_2062 : vec4<f32> = u_xlat7;
  u_xlat9 = (-(x_2060) + vec4<f32>(x_2062.x, x_2062.x, x_2062.x, x_2062.x));
  let x_2065 : vec4<f32> = u_xlat9;
  let x_2068 : vec4<f32> = x_66.AdditionalParams;
  u_xlat9 = (abs(x_2065) + vec4<f32>(x_2068.w, x_2068.w, x_2068.w, x_2068.w));
  let x_2074 : vec4<f32> = u_xlat9;
  u_xlat9 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2074);
  let x_2076 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_2076, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2080 : f32 = u_xlat13.x;
  u_xlat10.z = x_2080;
  let x_2082 : vec4<f32> = u_xlat1;
  let x_2083 : vec2<f32> = vec2<f32>(x_2082.x, x_2082.z);
  let x_2084 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2084.x, x_2083.x, x_2084.z, x_2083.y);
  let x_2087 : f32 = u_xlat2.y;
  u_xlat10.x = x_2087;
  let x_2089 : vec4<f32> = u_xlat10;
  let x_2091 : vec4<f32> = u_xlat9;
  u_xlat0.y = dot(vec4<f32>(x_2089.y, x_2089.z, x_2089.w, x_2089.x), x_2091);
  let x_2094 : vec4<f32> = u_xlat0;
  let x_2097 : vec4<f32> = x_66.AdditionalParams;
  let x_2099 : vec2<f32> = (vec2<f32>(x_2094.x, x_2094.y) + vec2<f32>(x_2097.x, x_2097.x));
  let x_2100 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2099.x, x_2099.y, x_2100.z, x_2100.w);
  let x_2103 : vec4<f32> = u_xlat0;
  let x_2105 : vec4<f32> = u_xlat0;
  let x_2107 : vec3<f32> = (vec3<f32>(x_2103.y, x_2103.y, x_2103.y) / vec3<f32>(x_2105.x, x_2105.x, x_2105.x));
  let x_2108 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2107.x, x_2108.y, x_2107.y, x_2107.z);
  let x_2111 : vec4<f32> = u_xlat6;
  let x_2113 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_2111) + vec4<f32>(x_2113.x, x_2113.x, x_2113.x, x_2113.x));
  let x_2116 : vec4<f32> = u_xlat11;
  let x_2119 : vec4<f32> = x_66.AdditionalParams;
  u_xlat11 = (abs(x_2116) + vec4<f32>(x_2119.w, x_2119.w, x_2119.w, x_2119.w));
  let x_2122 : vec4<f32> = u_xlat11;
  u_xlat11 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2122);
  let x_2124 : vec4<f32> = u_xlat11;
  u_xlat0.x = dot(x_2124, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2128 : f32 = u_xlat13.y;
  u_xlat2.z = x_2128;
  let x_2130 : vec4<f32> = u_xlat1;
  let x_2131 : vec2<f32> = vec2<f32>(x_2130.y, x_2130.w);
  let x_2132 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2132.x, x_2131.x, x_2132.z, x_2131.y);
  let x_2134 : vec4<f32> = u_xlat2;
  let x_2136 : vec4<f32> = u_xlat11;
  u_xlat0.y = dot(vec4<f32>(x_2134.y, x_2134.z, x_2134.w, x_2134.x), x_2136);
  let x_2139 : vec4<f32> = u_xlat0;
  let x_2142 : vec4<f32> = x_66.AdditionalParams;
  let x_2144 : vec2<f32> = (vec2<f32>(x_2139.x, x_2139.y) + vec2<f32>(x_2142.x, x_2142.x));
  let x_2145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2144.x, x_2144.y, x_2145.z, x_2145.w);
  let x_2148 : f32 = u_xlat0.y;
  let x_2150 : f32 = u_xlat0.x;
  u_xlat9.y = (x_2148 / x_2150);
  let x_2157 : vec4<i32> = u_xlati8;
  let x_2159 : vec4<f32> = u_xlat9;
  textureStore(AoResult_origX0X, vec2<i32>(x_2157.x, x_2157.y), x_2159);
  let x_2160 : vec4<f32> = u_xlat5;
  let x_2163 : vec4<f32> = u_xlat7;
  u_xlat0 = (-(vec4<f32>(x_2160.y, x_2160.z, x_2160.w, x_2160.x)) + vec4<f32>(x_2163.y, x_2163.y, x_2163.y, x_2163.y));
  let x_2166 : vec4<f32> = u_xlat0;
  let x_2169 : vec4<f32> = x_66.AdditionalParams;
  u_xlat0 = (abs(x_2166) + vec4<f32>(x_2169.w, x_2169.w, x_2169.w, x_2169.w));
  let x_2172 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2172);
  let x_2174 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_2174, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2178 : f32 = u_xlat1.x;
  let x_2181 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2178 + x_2181);
  let x_2184 : vec4<f32> = u_xlat10;
  let x_2186 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec4<f32>(x_2184.z, x_2184.w, x_2184.x, x_2184.y), x_2186);
  let x_2190 : f32 = u_xlat0.x;
  let x_2192 : f32 = x_66.AdditionalParams.x;
  u_xlat0.x = (x_2190 + x_2192);
  let x_2195 : vec4<f32> = u_xlat0;
  let x_2197 : vec4<f32> = u_xlat1;
  let x_2199 : vec3<f32> = (vec3<f32>(x_2195.x, x_2195.x, x_2195.x) / vec3<f32>(x_2197.x, x_2197.x, x_2197.x));
  let x_2200 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2199.x, x_2200.y, x_2199.y, x_2199.z);
  let x_2202 : vec4<f32> = u_xlat6;
  let x_2205 : vec4<f32> = u_xlat4;
  u_xlat1 = (-(vec4<f32>(x_2202.y, x_2202.z, x_2202.w, x_2202.x)) + vec4<f32>(x_2205.y, x_2205.y, x_2205.y, x_2205.y));
  let x_2208 : vec4<f32> = u_xlat1;
  let x_2211 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2208) + vec4<f32>(x_2211.w, x_2211.w, x_2211.w, x_2211.w));
  let x_2214 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2214);
  let x_2216 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_2216, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2220 : f32 = u_xlat4.x;
  let x_2222 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2220 + x_2222);
  let x_2225 : vec4<f32> = u_xlat2;
  let x_2227 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec4<f32>(x_2225.z, x_2225.w, x_2225.x, x_2225.y), x_2227);
  let x_2231 : f32 = u_xlat1.x;
  let x_2233 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2231 + x_2233);
  let x_2237 : f32 = u_xlat1.x;
  let x_2239 : f32 = u_xlat4.x;
  u_xlat0.y = (x_2237 / x_2239);
  let x_2243 : vec4<u32> = u_xlatu3;
  let x_2246 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_2243.x, x_2243.w)), x_2246);
  let x_2247 : vec4<f32> = u_xlat5;
  let x_2250 : vec4<f32> = u_xlat7;
  u_xlat0 = (-(vec4<f32>(x_2247.z, x_2247.w, x_2247.x, x_2247.y)) + vec4<f32>(x_2250.z, x_2250.z, x_2250.z, x_2250.z));
  let x_2253 : vec4<f32> = u_xlat0;
  let x_2256 : vec4<f32> = x_66.AdditionalParams;
  u_xlat0 = (abs(x_2253) + vec4<f32>(x_2256.w, x_2256.w, x_2256.w, x_2256.w));
  let x_2259 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2259);
  let x_2261 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_2261, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2265 : f32 = u_xlat1.x;
  let x_2267 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2265 + x_2267);
  let x_2270 : vec4<f32> = u_xlat10;
  let x_2272 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec4<f32>(x_2270.w, x_2270.x, x_2270.y, x_2270.z), x_2272);
  let x_2276 : f32 = u_xlat0.x;
  let x_2278 : f32 = x_66.AdditionalParams.x;
  u_xlat0.x = (x_2276 + x_2278);
  let x_2281 : vec4<f32> = u_xlat0;
  let x_2283 : vec4<f32> = u_xlat1;
  let x_2285 : vec3<f32> = (vec3<f32>(x_2281.x, x_2281.x, x_2281.x) / vec3<f32>(x_2283.x, x_2283.x, x_2283.x));
  let x_2286 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2285.x, x_2286.y, x_2285.y, x_2285.z);
  let x_2288 : vec4<f32> = u_xlat6;
  let x_2291 : vec4<f32> = u_xlat4;
  u_xlat1 = (-(vec4<f32>(x_2288.z, x_2288.w, x_2288.x, x_2288.y)) + vec4<f32>(x_2291.z, x_2291.z, x_2291.z, x_2291.z));
  let x_2294 : vec4<f32> = u_xlat1;
  let x_2297 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2294) + vec4<f32>(x_2297.w, x_2297.w, x_2297.w, x_2297.w));
  let x_2300 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2300);
  let x_2302 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_2302, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2306 : f32 = u_xlat4.x;
  let x_2308 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2306 + x_2308);
  let x_2311 : vec4<f32> = u_xlat2;
  let x_2313 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec4<f32>(x_2311.w, x_2311.x, x_2311.y, x_2311.z), x_2313);
  let x_2317 : f32 = u_xlat1.x;
  let x_2319 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2317 + x_2319);
  let x_2323 : f32 = u_xlat1.x;
  let x_2325 : f32 = u_xlat4.x;
  u_xlat0.y = (x_2323 / x_2325);
  let x_2329 : vec4<i32> = u_xlati8;
  let x_2331 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_2329.z, x_2329.w), x_2331);
  let x_2332 : vec4<u32> = u_xlatu3;
  u_xlati0 = (bitcast<vec4<i32>>(x_2332) + vec4<i32>(-1i, -1i, -1i, -1i));
  let x_2336 : vec4<f32> = u_xlat5;
  let x_2339 : vec4<f32> = u_xlat7;
  u_xlat1 = (-(vec4<f32>(x_2336.w, x_2336.x, x_2336.y, x_2336.z)) + vec4<f32>(x_2339.w, x_2339.w, x_2339.w, x_2339.w));
  let x_2342 : vec4<f32> = u_xlat1;
  let x_2345 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2342) + vec4<f32>(x_2345.w, x_2345.w, x_2345.w, x_2345.w));
  let x_2348 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2348);
  let x_2350 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_2350, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2354 : f32 = u_xlat3.x;
  let x_2356 : f32 = x_66.AdditionalParams.x;
  u_xlat3.x = (x_2354 + x_2356);
  let x_2359 : vec4<f32> = u_xlat10;
  let x_2360 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(x_2359, x_2360);
  let x_2364 : f32 = u_xlat1.x;
  let x_2366 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2364 + x_2366);
  let x_2369 : vec4<f32> = u_xlat1;
  let x_2371 : vec4<f32> = u_xlat3;
  let x_2373 : vec3<f32> = (vec3<f32>(x_2369.x, x_2369.x, x_2369.x) / vec3<f32>(x_2371.x, x_2371.x, x_2371.x));
  let x_2374 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2373.x, x_2374.y, x_2373.y, x_2373.z);
  let x_2376 : vec4<f32> = u_xlat6;
  let x_2379 : vec4<f32> = u_xlat4;
  u_xlat3 = (-(vec4<f32>(x_2376.w, x_2376.x, x_2376.y, x_2376.z)) + vec4<f32>(x_2379.w, x_2379.w, x_2379.w, x_2379.w));
  let x_2382 : vec4<f32> = u_xlat3;
  let x_2385 : vec4<f32> = x_66.AdditionalParams;
  u_xlat3 = (abs(x_2382) + vec4<f32>(x_2385.w, x_2385.w, x_2385.w, x_2385.w));
  let x_2388 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2388);
  let x_2390 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_2390, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2394 : f32 = u_xlat4.x;
  let x_2396 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2394 + x_2396);
  let x_2399 : vec4<f32> = u_xlat2;
  let x_2400 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_2399, x_2400);
  let x_2404 : f32 = u_xlat2.x;
  let x_2406 : f32 = x_66.AdditionalParams.x;
  u_xlat2.x = (x_2404 + x_2406);
  let x_2410 : f32 = u_xlat2.x;
  let x_2412 : f32 = u_xlat4.x;
  u_xlat1.y = (x_2410 / x_2412);
  let x_2416 : vec4<i32> = u_xlati0;
  let x_2418 : vec4<f32> = u_xlat1;
  textureStore(AoResult_origX0X, vec2<i32>(x_2416.x, x_2416.y), x_2418);
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn main(@builtin(local_invocation_id) gl_LocalInvocationID_param : vec3<u32>, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_LocalInvocationID = gl_LocalInvocationID_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

