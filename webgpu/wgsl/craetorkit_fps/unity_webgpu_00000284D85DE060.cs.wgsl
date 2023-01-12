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

@group(0) @binding(8) var samplerLoResAO1 : sampler;

@group(0) @binding(3) var LoResAO2 : texture_2d<f32>;

@group(0) @binding(9) var samplerLoResAO2 : sampler;

var<workgroup> TGSM1 : array<S, 256u>;

@group(0) @binding(0) var LoResDB : texture_2d<f32>;

@group(0) @binding(6) var samplerLoResDB : sampler;

var<workgroup> TGSM0 : array<S_1, 256u>;

var<private> gl_LocalInvocationIndex : u32;

var<workgroup> TGSM2 : array<S_2, 256u>;

@group(0) @binding(4) var HiResAO : texture_2d<f32>;

@group(0) @binding(10) var samplerHiResAO : sampler;

@group(0) @binding(1) var HiResDB : texture_2d<f32>;

@group(0) @binding(7) var samplerHiResDB : sampler;

@group(0) @binding(5) var AoResult_origX0X : texture_storage_2d<rg32float, write>;

fn main_1() {
  var u_xlati0 : vec4<i32>;
  var u_xlati15 : vec3<i32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlati45 : i32;
  var u_xlati31 : vec2<i32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb0 : vec2<bool>;
  var u_xlatu0 : u32;
  var u_xlatu1 : u32;
  var u_xlati30 : i32;
  var u_xlat30 : vec2<f32>;
  var u_xlati1 : vec4<i32>;
  var u_xlat32 : vec2<f32>;
  var u_xlat33 : vec2<f32>;
  var u_xlati4 : vec4<i32>;
  var u_xlat34 : vec2<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat35 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat36 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat31 : vec2<f32>;
  var u_xlat37 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat38 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat39 : vec2<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlatb35 : vec2<bool>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatb7 : vec2<bool>;
  var u_xlatb31 : vec2<bool>;
  var x_769 : f32;
  var x_782 : f32;
  var hlslcc_movcTemp : vec2<f32>;
  var x_796 : f32;
  var x_808 : f32;
  var u_xlati35 : vec2<i32>;
  var u_xlat14 : vec2<f32>;
  var x_840 : f32;
  var x_853 : f32;
  var x_866 : f32;
  var x_879 : f32;
  var x_894 : f32;
  var x_906 : f32;
  var x_955 : f32;
  var x_967 : f32;
  var u_xlati2 : vec4<i32>;
  var x_1001 : f32;
  var x_1014 : f32;
  var x_1027 : f32;
  var x_1040 : f32;
  var x_1055 : f32;
  var x_1067 : f32;
  var x_1109 : f32;
  var x_1121 : f32;
  var u_xlati32 : vec2<i32>;
  var x_1149 : f32;
  var x_1162 : f32;
  var x_1174 : f32;
  var x_1186 : f32;
  var u_xlatb33 : vec2<bool>;
  var u_xlatb4 : vec2<bool>;
  var u_xlatb5 : vec2<bool>;
  var u_xlatb34 : vec2<bool>;
  var x_1617 : f32;
  var x_1630 : f32;
  var hlslcc_movcTemp_1 : vec2<f32>;
  var x_1644 : f32;
  var x_1656 : f32;
  var u_xlati33 : vec2<i32>;
  var x_1685 : f32;
  var x_1698 : f32;
  var x_1711 : f32;
  var x_1724 : f32;
  var x_1739 : f32;
  var x_1751 : f32;
  var hlslcc_movcTemp_2 : vec4<f32>;
  var x_1781 : f32;
  var x_1793 : f32;
  var x_1821 : f32;
  var x_1834 : f32;
  var hlslcc_movcTemp_3 : vec2<f32>;
  var x_1848 : f32;
  var x_1860 : f32;
  var u_xlat0 : vec4<f32>;
  var u_xlatu3 : vec4<u32>;
  var u_xlati10 : vec4<i32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
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
  u_xlat2 = x_92;
  let x_99 : vec2<f32> = u_xlat15;
  let x_100 : vec4<f32> = textureGather(0i, LoResAO2, samplerLoResAO2, x_99);
  u_xlat3 = x_100;
  let x_101 : vec4<f32> = u_xlat1;
  let x_102 : vec4<f32> = u_xlat3;
  u_xlat1 = min(x_101, x_102);
  let x_107 : vec2<f32> = u_xlat15;
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
  u_xlati45 = (x_145 + 1i);
  let x_147 : i32 = u_xlati45;
  let x_149 : f32 = u_xlat3.z;
  TGSM1[x_147].value[0i] = bitcast<u32>(x_149);
  let x_152 : i32 = u_xlati45;
  let x_155 : f32 = u_xlat3.w;
  TGSM1[x_152].value[1i] = bitcast<u32>(x_155);
  let x_160 : vec4<i32> = u_xlati0;
  u_xlati31 = (vec2<i32>(x_160.x, x_160.x) + vec2<i32>(16i, 17i));
  let x_166 : vec4<f32> = u_xlat1;
  let x_167 : vec2<f32> = vec2<f32>(x_166.x, x_166.y);
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_167.x, x_168.y, x_167.y, x_168.w);
  let x_171 : i32 = u_xlati31.x;
  let x_173 : f32 = u_xlat2.x;
  TGSM1[x_171].value[0i] = bitcast<u32>(x_173);
  let x_177 : i32 = u_xlati31.x;
  let x_179 : f32 = u_xlat2.y;
  TGSM1[x_177].value[1i] = bitcast<u32>(x_179);
  let x_183 : i32 = u_xlati31.y;
  let x_185 : f32 = u_xlat2.z;
  TGSM1[x_183].value[0i] = bitcast<u32>(x_185);
  let x_189 : i32 = u_xlati31.y;
  let x_191 : f32 = u_xlat2.w;
  TGSM1[x_189].value[1i] = bitcast<u32>(x_191);
  let x_199 : vec2<f32> = u_xlat15;
  let x_200 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, x_199);
  u_xlat2 = x_200;
  let x_203 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_203);
  let x_208 : vec2<f32> = u_xlat15;
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
  let x_238 : i32 = u_xlati45;
  let x_240 : f32 = u_xlat4.z;
  TGSM0[x_238].value[0i] = bitcast<u32>(x_240);
  let x_243 : i32 = u_xlati45;
  let x_245 : f32 = u_xlat4.w;
  TGSM0[x_243].value[1i] = bitcast<u32>(x_245);
  let x_248 : vec4<f32> = u_xlat2;
  let x_249 : vec2<f32> = vec2<f32>(x_248.x, x_248.y);
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_250.y, x_249.y, x_250.w);
  let x_253 : i32 = u_xlati31.x;
  let x_255 : f32 = u_xlat3.x;
  TGSM0[x_253].value[0i] = bitcast<u32>(x_255);
  let x_259 : i32 = u_xlati31.x;
  let x_261 : f32 = u_xlat3.y;
  TGSM0[x_259].value[1i] = bitcast<u32>(x_261);
  let x_265 : i32 = u_xlati31.y;
  let x_267 : f32 = u_xlat3.z;
  TGSM0[x_265].value[0i] = bitcast<u32>(x_267);
  let x_271 : i32 = u_xlati31.y;
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
    u_xlati30 = (bitcast<i32>(x_307) * 3i);
    let x_311 : u32 = u_xlatu0;
    let x_314 : i32 = u_xlati30;
    u_xlati0.x = ((bitcast<i32>(x_311) * 16i) + x_314);
    let x_319 : i32 = u_xlati0.x;
    let x_321 : u32 = TGSM1[x_319].value[0i];
    let x_324 : i32 = u_xlati0.x;
    let x_326 : u32 = TGSM1[x_324].value[1i];
    u_xlat30 = vec2<f32>(bitcast<f32>(x_321), bitcast<f32>(x_326));
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
    u_xlat32 = vec2<f32>(bitcast<f32>(x_353), bitcast<f32>(x_358));
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
    u_xlat33 = vec2<f32>(bitcast<f32>(x_378), bitcast<f32>(x_383));
    let x_387 : vec4<i32> = u_xlati0;
    let x_392 : vec2<i32> = (vec2<i32>(x_387.x, x_387.x) + vec2<i32>(5i, 6i));
    let x_393 : vec4<i32> = u_xlati4;
    u_xlati4 = vec4<i32>(x_392.x, x_392.y, x_393.z, x_393.w);
    let x_397 : i32 = u_xlati4.x;
    let x_399 : u32 = TGSM1[x_397].value[0i];
    let x_402 : i32 = u_xlati4.x;
    let x_404 : u32 = TGSM1[x_402].value[1i];
    u_xlat34 = vec2<f32>(bitcast<f32>(x_399), bitcast<f32>(x_404));
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
    u_xlat35 = vec2<f32>(bitcast<f32>(x_425), bitcast<f32>(x_430));
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
    u_xlat36 = vec2<f32>(bitcast<f32>(x_451), bitcast<f32>(x_456));
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
    u_xlat31 = vec2<f32>(bitcast<f32>(x_477), bitcast<f32>(x_482));
    let x_487 : i32 = u_xlati4.x;
    let x_489 : u32 = TGSM0[x_487].value[0i];
    let x_492 : i32 = u_xlati4.x;
    let x_494 : u32 = TGSM0[x_492].value[1i];
    u_xlat37 = vec2<f32>(bitcast<f32>(x_489), bitcast<f32>(x_494));
    let x_498 : i32 = u_xlati4.y;
    let x_500 : u32 = TGSM0[x_498].value[0i];
    let x_503 : i32 = u_xlati4.y;
    let x_505 : u32 = TGSM0[x_503].value[1i];
    let x_507 : vec2<f32> = vec2<f32>(bitcast<f32>(x_500), bitcast<f32>(x_505));
    let x_508 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
    let x_510 : vec2<f32> = u_xlat35;
    let x_512 : vec4<f32> = u_xlat6;
    u_xlat35 = (-(x_510) + vec2<f32>(x_512.x, x_512.y));
    let x_515 : vec4<f32> = u_xlat6;
    let x_518 : vec2<f32> = u_xlat36;
    let x_519 : vec2<f32> = (-(vec2<f32>(x_515.x, x_515.y)) + x_518);
    let x_520 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
    let x_522 : vec2<f32> = u_xlat36;
    let x_524 : vec4<f32> = u_xlat7;
    u_xlat36 = (-(x_522) + vec2<f32>(x_524.x, x_524.y));
    let x_527 : vec4<f32> = u_xlat7;
    let x_530 : vec2<f32> = u_xlat31;
    let x_531 : vec2<f32> = (-(vec2<f32>(x_527.x, x_527.y)) + x_530);
    let x_532 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
    let x_534 : vec2<f32> = u_xlat31;
    let x_536 : vec2<f32> = u_xlat37;
    u_xlat31 = (-(x_534) + x_536);
    let x_538 : vec2<f32> = u_xlat37;
    let x_540 : vec4<f32> = u_xlat4;
    let x_542 : vec2<f32> = (-(x_538) + vec2<f32>(x_540.x, x_540.y));
    let x_543 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
    let x_545 : vec2<f32> = u_xlat35;
    let x_546 : vec2<f32> = u_xlat35;
    let x_549 : vec4<f32> = x_66.AdditionalParams;
    u_xlat37 = ((x_545 * x_546) + vec2<f32>(x_549.y, x_549.y));
    let x_553 : vec4<f32> = u_xlat6;
    let x_555 : vec4<f32> = u_xlat6;
    let x_559 : vec4<f32> = x_66.AdditionalParams;
    let x_561 : vec2<f32> = ((vec2<f32>(x_553.x, x_553.y) * vec2<f32>(x_555.x, x_555.y)) + vec2<f32>(x_559.y, x_559.y));
    let x_562 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
    let x_565 : vec2<f32> = u_xlat36;
    let x_566 : vec2<f32> = u_xlat36;
    let x_569 : vec4<f32> = x_66.AdditionalParams;
    u_xlat38 = ((x_565 * x_566) + vec2<f32>(x_569.y, x_569.y));
    let x_573 : vec4<f32> = u_xlat7;
    let x_575 : vec4<f32> = u_xlat7;
    let x_579 : vec4<f32> = x_66.AdditionalParams;
    let x_581 : vec2<f32> = ((vec2<f32>(x_573.x, x_573.y) * vec2<f32>(x_575.x, x_575.y)) + vec2<f32>(x_579.y, x_579.y));
    let x_582 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
    let x_585 : vec2<f32> = u_xlat31;
    let x_586 : vec2<f32> = u_xlat31;
    let x_589 : vec4<f32> = x_66.AdditionalParams;
    u_xlat39 = ((x_585 * x_586) + vec2<f32>(x_589.y, x_589.y));
    let x_593 : vec4<f32> = u_xlat4;
    let x_595 : vec4<f32> = u_xlat4;
    let x_599 : vec4<f32> = x_66.AdditionalParams;
    u_xlat10 = ((vec2<f32>(x_593.x, x_593.y) * vec2<f32>(x_595.x, x_595.y)) + vec2<f32>(x_599.y, x_599.y));
    let x_602 : vec2<f32> = u_xlat35;
    let x_603 : vec4<f32> = u_xlat6;
    let x_607 : vec4<f32> = x_66.AdditionalParams;
    u_xlat35 = ((x_602 * vec2<f32>(x_603.x, x_603.y)) + vec2<f32>(x_607.y, x_607.y));
    let x_610 : vec2<f32> = u_xlat35;
    let x_611 : vec2<f32> = u_xlat35;
    u_xlat35 = (x_610 * x_611);
    let x_613 : vec2<f32> = u_xlat37;
    let x_614 : vec4<f32> = u_xlat8;
    u_xlat37 = (x_613 * vec2<f32>(x_614.x, x_614.y));
    let x_617 : vec2<f32> = u_xlat37;
    let x_619 : vec4<f32> = x_66.AdditionalParams;
    u_xlat37 = (x_617 * vec2<f32>(x_619.z, x_619.z));
    let x_622 : vec4<f32> = u_xlat6;
    let x_624 : vec2<f32> = u_xlat36;
    let x_627 : vec4<f32> = x_66.AdditionalParams;
    let x_629 : vec2<f32> = ((vec2<f32>(x_622.x, x_622.y) * x_624) + vec2<f32>(x_627.y, x_627.y));
    let x_630 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
    let x_632 : vec2<f32> = u_xlat38;
    let x_633 : vec4<f32> = u_xlat8;
    let x_635 : vec2<f32> = (x_632 * vec2<f32>(x_633.x, x_633.y));
    let x_636 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_635.x, x_635.y, x_636.z, x_636.w);
    let x_638 : vec2<f32> = u_xlat36;
    let x_639 : vec4<f32> = u_xlat7;
    let x_643 : vec4<f32> = x_66.AdditionalParams;
    let x_645 : vec2<f32> = ((x_638 * vec2<f32>(x_639.x, x_639.y)) + vec2<f32>(x_643.y, x_643.y));
    let x_646 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_646.x, x_646.y, x_645.x, x_645.y);
    let x_648 : vec4<f32> = u_xlat6;
    let x_649 : vec4<f32> = u_xlat6;
    u_xlat6 = (x_648 * x_649);
    let x_651 : vec2<f32> = u_xlat38;
    let x_652 : vec4<f32> = u_xlat9;
    let x_654 : vec2<f32> = (x_651 * vec2<f32>(x_652.x, x_652.y));
    let x_655 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_655.x, x_655.y, x_654.x, x_654.y);
    let x_657 : vec4<f32> = u_xlat8;
    let x_659 : vec4<f32> = x_66.AdditionalParams;
    u_xlat8 = (x_657 * vec4<f32>(x_659.z, x_659.z, x_659.z, x_659.z));
    let x_662 : vec4<f32> = u_xlat7;
    let x_664 : vec2<f32> = u_xlat31;
    let x_667 : vec4<f32> = x_66.AdditionalParams;
    let x_669 : vec2<f32> = ((vec2<f32>(x_662.x, x_662.y) * x_664) + vec2<f32>(x_667.y, x_667.y));
    let x_670 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
    let x_672 : vec4<f32> = u_xlat7;
    let x_674 : vec4<f32> = u_xlat7;
    let x_676 : vec2<f32> = (vec2<f32>(x_672.x, x_672.y) * vec2<f32>(x_674.x, x_674.y));
    let x_677 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
    let x_679 : vec2<f32> = u_xlat39;
    let x_680 : vec4<f32> = u_xlat9;
    let x_682 : vec2<f32> = (x_679 * vec2<f32>(x_680.x, x_680.y));
    let x_683 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
    let x_685 : vec4<f32> = u_xlat9;
    let x_688 : vec4<f32> = x_66.AdditionalParams;
    let x_690 : vec2<f32> = (vec2<f32>(x_685.x, x_685.y) * vec2<f32>(x_688.z, x_688.z));
    let x_691 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_690.x, x_690.y, x_691.z, x_691.w);
    let x_693 : vec2<f32> = u_xlat31;
    let x_694 : vec4<f32> = u_xlat4;
    let x_698 : vec4<f32> = x_66.AdditionalParams;
    u_xlat31 = ((x_693 * vec2<f32>(x_694.x, x_694.y)) + vec2<f32>(x_698.y, x_698.y));
    let x_701 : vec2<f32> = u_xlat31;
    let x_702 : vec2<f32> = u_xlat31;
    u_xlat31 = (x_701 * x_702);
    let x_704 : vec2<f32> = u_xlat39;
    let x_705 : vec2<f32> = u_xlat10;
    let x_706 : vec2<f32> = (x_704 * x_705);
    let x_707 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_706.x, x_706.y, x_707.z, x_707.w);
    let x_709 : vec4<f32> = u_xlat4;
    let x_712 : vec4<f32> = x_66.AdditionalParams;
    let x_714 : vec2<f32> = (vec2<f32>(x_709.x, x_709.y) * vec2<f32>(x_712.z, x_712.z));
    let x_715 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_714.x, x_714.y, x_715.z, x_715.w);
    let x_718 : vec2<f32> = u_xlat37;
    let x_720 : vec2<f32> = u_xlat35;
    let x_722 : vec4<bool> = (vec4<f32>(x_718.x, x_718.y, x_718.x, x_718.y) < vec4<f32>(x_720.x, x_720.y, x_720.x, x_720.y));
    u_xlatb35 = vec2<bool>(x_722.x, x_722.y);
    let x_726 : vec4<f32> = u_xlat8;
    let x_727 : vec4<f32> = u_xlat6;
    u_xlatb6 = (x_726 < x_727);
    let x_730 : vec4<f32> = u_xlat9;
    let x_732 : vec4<f32> = u_xlat7;
    let x_734 : vec4<bool> = (vec4<f32>(x_730.x, x_730.y, x_730.x, x_730.x) < vec4<f32>(x_732.x, x_732.y, x_732.x, x_732.x));
    u_xlatb7 = vec2<bool>(x_734.x, x_734.y);
    let x_737 : vec4<f32> = u_xlat4;
    let x_739 : vec2<f32> = u_xlat31;
    let x_741 : vec4<bool> = (vec4<f32>(x_737.x, x_737.y, x_737.x, x_737.y) < vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y));
    u_xlatb31 = vec2<bool>(x_741.x, x_741.y);
    let x_743 : vec2<bool> = u_xlatb35;
    let x_750 : vec4<bool> = u_xlatb6;
    let x_756 : vec2<i32> = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_743) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_750.x, x_750.y)) * vec2<u32>(4294967295u, 4294967295u))));
    let x_757 : vec4<i32> = u_xlati4;
    u_xlati4 = vec4<i32>(x_756.x, x_756.y, x_757.z, x_757.w);
    let x_759 : vec4<i32> = u_xlati4;
    let x_763 : vec2<i32> = bitcast<vec2<i32>>((bitcast<vec2<u32>>(vec2<i32>(x_759.x, x_759.y)) & vec2<u32>(1u, 1u)));
    let x_764 : vec4<i32> = u_xlati4;
    u_xlati4 = vec4<i32>(x_763.x, x_763.y, x_764.z, x_764.w);
    let x_767 : i32 = u_xlati4.x;
    if ((x_767 != 0i)) {
      let x_773 : f32 = u_xlat2.x;
      x_769 = x_773;
    } else {
      let x_776 : f32 = u_xlat32.x;
      x_769 = x_776;
    }
    let x_777 : f32 = x_769;
    u_xlat4.x = x_777;
    let x_780 : i32 = u_xlati4.y;
    if ((x_780 != 0i)) {
      let x_786 : f32 = u_xlat2.y;
      x_782 = x_786;
    } else {
      let x_789 : f32 = u_xlat32.y;
      x_782 = x_789;
    }
    let x_790 : f32 = x_782;
    u_xlat4.y = x_790;
    let x_793 : vec2<f32> = u_xlat30;
    hlslcc_movcTemp = x_793;
    let x_795 : bool = u_xlatb35.x;
    if (x_795) {
      let x_800 : f32 = u_xlat30.x;
      x_796 = x_800;
    } else {
      let x_803 : f32 = u_xlat4.x;
      x_796 = x_803;
    }
    let x_804 : f32 = x_796;
    hlslcc_movcTemp.x = x_804;
    let x_807 : bool = u_xlatb35.y;
    if (x_807) {
      let x_812 : f32 = u_xlat30.y;
      x_808 = x_812;
    } else {
      let x_815 : f32 = u_xlat4.y;
      x_808 = x_815;
    }
    let x_816 : f32 = x_808;
    hlslcc_movcTemp.y = x_816;
    let x_818 : vec2<f32> = hlslcc_movcTemp;
    u_xlat30 = x_818;
    let x_820 : vec4<bool> = u_xlatb6;
    let x_825 : vec4<bool> = u_xlatb6;
    u_xlati35 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_820.x, x_820.y)) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_825.z, x_825.w)) * vec2<u32>(4294967295u, 4294967295u))));
    let x_832 : vec2<i32> = u_xlati35;
    u_xlati35 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_832) & vec2<u32>(1u, 1u)));
    let x_838 : i32 = u_xlati35.x;
    if ((x_838 != 0i)) {
      let x_844 : f32 = u_xlat32.x;
      x_840 = x_844;
    } else {
      let x_847 : f32 = u_xlat3.x;
      x_840 = x_847;
    }
    let x_848 : f32 = x_840;
    u_xlat14.x = x_848;
    let x_851 : i32 = u_xlati35.y;
    if ((x_851 != 0i)) {
      let x_857 : f32 = u_xlat32.y;
      x_853 = x_857;
    } else {
      let x_860 : f32 = u_xlat3.y;
      x_853 = x_860;
    }
    let x_861 : f32 = x_853;
    u_xlat14.y = x_861;
    let x_864 : i32 = u_xlati35.x;
    if ((x_864 != 0i)) {
      let x_870 : f32 = u_xlat3.x;
      x_866 = x_870;
    } else {
      let x_873 : f32 = u_xlat32.x;
      x_866 = x_873;
    }
    let x_874 : f32 = x_866;
    u_xlat9.x = x_874;
    let x_877 : i32 = u_xlati35.y;
    if ((x_877 != 0i)) {
      let x_883 : f32 = u_xlat3.y;
      x_879 = x_883;
    } else {
      let x_886 : f32 = u_xlat32.y;
      x_879 = x_886;
    }
    let x_887 : f32 = x_879;
    u_xlat9.y = x_887;
    let x_889 : vec2<f32> = u_xlat14;
    let x_890 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_889.x, x_889.y, x_890.z, x_890.w);
    let x_893 : bool = u_xlatb6.z;
    if (x_893) {
      let x_898 : f32 = u_xlat33.x;
      x_894 = x_898;
    } else {
      let x_901 : f32 = u_xlat9.x;
      x_894 = x_901;
    }
    let x_902 : f32 = x_894;
    u_xlat35.x = x_902;
    let x_905 : bool = u_xlatb6.w;
    if (x_905) {
      let x_910 : f32 = u_xlat33.y;
      x_906 = x_910;
    } else {
      let x_913 : f32 = u_xlat9.y;
      x_906 = x_913;
    }
    let x_914 : f32 = x_906;
    u_xlat35.y = x_914;
    let x_916 : vec2<f32> = u_xlat30;
    let x_917 : vec2<f32> = u_xlat35;
    u_xlat30 = (x_916 + x_917);
    let x_919 : vec2<f32> = u_xlat30;
    let x_923 : vec4<f32> = u_xlat4;
    u_xlat30 = ((x_919 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_923.x, x_923.y));
    let x_926 : vec2<f32> = u_xlat32;
    let x_927 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_926 + x_927);
    let x_929 : vec4<f32> = u_xlat9;
    let x_931 : vec2<f32> = u_xlat30;
    u_xlat30 = (vec2<f32>(x_929.x, x_929.y) + x_931);
    let x_933 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_933 * vec2<f32>(0.25f, 0.25f));
    let x_942 : i32 = u_xlati0.x;
    let x_944 : f32 = u_xlat30.x;
    TGSM2[x_942].value[0i] = bitcast<u32>(x_944);
    let x_948 : i32 = u_xlati0.x;
    let x_950 : f32 = u_xlat30.y;
    TGSM2[x_948].value[1i] = bitcast<u32>(x_950);
    let x_954 : bool = u_xlatb6.x;
    if (x_954) {
      let x_959 : f32 = u_xlat2.x;
      x_955 = x_959;
    } else {
      let x_962 : f32 = u_xlat8.x;
      x_955 = x_962;
    }
    let x_963 : f32 = x_955;
    u_xlat30.x = x_963;
    let x_966 : bool = u_xlatb6.y;
    if (x_966) {
      let x_971 : f32 = u_xlat2.y;
      x_967 = x_971;
    } else {
      let x_974 : f32 = u_xlat8.y;
      x_967 = x_974;
    }
    let x_975 : f32 = x_967;
    u_xlat30.y = x_975;
    let x_978 : vec4<bool> = u_xlatb6;
    let x_983 : vec2<bool> = u_xlatb7;
    let x_988 : vec2<i32> = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_978.z, x_978.w)) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_983) * vec2<u32>(4294967295u, 4294967295u))));
    let x_989 : vec4<i32> = u_xlati2;
    u_xlati2 = vec4<i32>(x_988.x, x_988.y, x_989.z, x_989.w);
    let x_991 : vec4<i32> = u_xlati2;
    let x_995 : vec2<i32> = bitcast<vec2<i32>>((bitcast<vec2<u32>>(vec2<i32>(x_991.x, x_991.y)) & vec2<u32>(1u, 1u)));
    let x_996 : vec4<i32> = u_xlati2;
    u_xlati2 = vec4<i32>(x_995.x, x_995.y, x_996.z, x_996.w);
    let x_999 : i32 = u_xlati2.x;
    if ((x_999 != 0i)) {
      let x_1005 : f32 = u_xlat3.x;
      x_1001 = x_1005;
    } else {
      let x_1008 : f32 = u_xlat33.x;
      x_1001 = x_1008;
    }
    let x_1009 : f32 = x_1001;
    u_xlat14.x = x_1009;
    let x_1012 : i32 = u_xlati2.y;
    if ((x_1012 != 0i)) {
      let x_1018 : f32 = u_xlat3.y;
      x_1014 = x_1018;
    } else {
      let x_1021 : f32 = u_xlat33.y;
      x_1014 = x_1021;
    }
    let x_1022 : f32 = x_1014;
    u_xlat14.y = x_1022;
    let x_1025 : i32 = u_xlati2.x;
    if ((x_1025 != 0i)) {
      let x_1031 : f32 = u_xlat33.x;
      x_1027 = x_1031;
    } else {
      let x_1034 : f32 = u_xlat3.x;
      x_1027 = x_1034;
    }
    let x_1035 : f32 = x_1027;
    u_xlat4.x = x_1035;
    let x_1038 : i32 = u_xlati2.y;
    if ((x_1038 != 0i)) {
      let x_1044 : f32 = u_xlat33.y;
      x_1040 = x_1044;
    } else {
      let x_1047 : f32 = u_xlat3.y;
      x_1040 = x_1047;
    }
    let x_1048 : f32 = x_1040;
    u_xlat4.y = x_1048;
    let x_1050 : vec2<f32> = u_xlat14;
    let x_1051 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1050.x, x_1050.y, x_1051.z, x_1051.w);
    let x_1054 : bool = u_xlatb7.x;
    if (x_1054) {
      let x_1059 : f32 = u_xlat34.x;
      x_1055 = x_1059;
    } else {
      let x_1062 : f32 = u_xlat4.x;
      x_1055 = x_1062;
    }
    let x_1063 : f32 = x_1055;
    u_xlat35.x = x_1063;
    let x_1066 : bool = u_xlatb7.y;
    if (x_1066) {
      let x_1071 : f32 = u_xlat34.y;
      x_1067 = x_1071;
    } else {
      let x_1074 : f32 = u_xlat4.y;
      x_1067 = x_1074;
    }
    let x_1075 : f32 = x_1067;
    u_xlat35.y = x_1075;
    let x_1077 : vec2<f32> = u_xlat30;
    let x_1078 : vec2<f32> = u_xlat35;
    u_xlat30 = (x_1077 + x_1078);
    let x_1080 : vec2<f32> = u_xlat30;
    let x_1082 : vec4<f32> = u_xlat8;
    u_xlat30 = ((x_1080 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1082.x, x_1082.y));
    let x_1085 : vec4<f32> = u_xlat3;
    let x_1087 : vec2<f32> = u_xlat30;
    u_xlat30 = (vec2<f32>(x_1085.x, x_1085.y) + x_1087);
    let x_1089 : vec4<f32> = u_xlat4;
    let x_1091 : vec2<f32> = u_xlat30;
    u_xlat30 = (vec2<f32>(x_1089.x, x_1089.y) + x_1091);
    let x_1093 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_1093 * vec2<f32>(0.25f, 0.25f));
    let x_1096 : i32 = u_xlati1.x;
    let x_1098 : f32 = u_xlat30.x;
    TGSM2[x_1096].value[0i] = bitcast<u32>(x_1098);
    let x_1102 : i32 = u_xlati1.x;
    let x_1104 : f32 = u_xlat30.y;
    TGSM2[x_1102].value[1i] = bitcast<u32>(x_1104);
    let x_1108 : bool = u_xlatb6.z;
    if (x_1108) {
      let x_1113 : f32 = u_xlat32.x;
      x_1109 = x_1113;
    } else {
      let x_1116 : f32 = u_xlat2.x;
      x_1109 = x_1116;
    }
    let x_1117 : f32 = x_1109;
    u_xlat30.x = x_1117;
    let x_1120 : bool = u_xlatb6.w;
    if (x_1120) {
      let x_1125 : f32 = u_xlat32.y;
      x_1121 = x_1125;
    } else {
      let x_1128 : f32 = u_xlat2.y;
      x_1121 = x_1128;
    }
    let x_1129 : f32 = x_1121;
    u_xlat30.y = x_1129;
    let x_1132 : vec2<bool> = u_xlatb7;
    let x_1136 : vec2<bool> = u_xlatb31;
    u_xlati32 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1132) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1136) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1142 : vec2<i32> = u_xlati32;
    u_xlati32 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1142) & vec2<u32>(1u, 1u)));
    let x_1147 : i32 = u_xlati32.x;
    if ((x_1147 != 0i)) {
      let x_1153 : f32 = u_xlat34.x;
      x_1149 = x_1153;
    } else {
      let x_1156 : f32 = u_xlat33.x;
      x_1149 = x_1156;
    }
    let x_1157 : f32 = x_1149;
    u_xlat32.x = x_1157;
    let x_1160 : i32 = u_xlati32.y;
    if ((x_1160 != 0i)) {
      let x_1166 : f32 = u_xlat34.y;
      x_1162 = x_1166;
    } else {
      let x_1169 : f32 = u_xlat33.y;
      x_1162 = x_1169;
    }
    let x_1170 : f32 = x_1162;
    u_xlat32.y = x_1170;
    let x_1173 : bool = u_xlatb31.x;
    if (x_1173) {
      let x_1178 : f32 = u_xlat5.x;
      x_1174 = x_1178;
    } else {
      let x_1181 : f32 = u_xlat32.x;
      x_1174 = x_1181;
    }
    let x_1182 : f32 = x_1174;
    u_xlat1.x = x_1182;
    let x_1185 : bool = u_xlatb31.y;
    if (x_1185) {
      let x_1190 : f32 = u_xlat5.y;
      x_1186 = x_1190;
    } else {
      let x_1193 : f32 = u_xlat32.y;
      x_1186 = x_1193;
    }
    let x_1194 : f32 = x_1186;
    u_xlat1.z = x_1194;
    let x_1196 : vec2<f32> = u_xlat30;
    let x_1197 : vec4<f32> = u_xlat1;
    u_xlat30 = (x_1196 + vec2<f32>(x_1197.x, x_1197.z));
    let x_1200 : vec2<f32> = u_xlat30;
    let x_1202 : vec4<f32> = u_xlat2;
    u_xlat30 = ((x_1200 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1202.x, x_1202.y));
    let x_1205 : vec2<f32> = u_xlat33;
    let x_1206 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_1205 + x_1206);
    let x_1208 : vec2<f32> = u_xlat32;
    let x_1209 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_1208 + x_1209);
    let x_1211 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_1211 * vec2<f32>(0.25f, 0.25f));
    let x_1214 : i32 = u_xlati1.y;
    let x_1216 : f32 = u_xlat30.x;
    TGSM2[x_1214].value[0i] = bitcast<u32>(x_1216);
    let x_1220 : i32 = u_xlati1.y;
    let x_1222 : f32 = u_xlat30.y;
    TGSM2[x_1220].value[1i] = bitcast<u32>(x_1222);
  }
  workgroupBarrier();
  let x_1226 : bool = u_xlatb0.y;
  if (x_1226) {
    let x_1229 : u32 = gl_LocalInvocationIndex;
    u_xlatu0 = (x_1229 / 9u);
    let x_1232 : u32 = gl_LocalInvocationIndex;
    u_xlatu1 = (x_1232 % 9u);
    let x_1234 : u32 = u_xlatu0;
    let x_1237 : u32 = u_xlatu1;
    u_xlati0.x = ((bitcast<i32>(x_1234) * 32i) + bitcast<i32>(x_1237));
    let x_1242 : i32 = u_xlati0.x;
    let x_1244 : u32 = TGSM2[x_1242].value[0i];
    let x_1247 : i32 = u_xlati0.x;
    let x_1249 : u32 = TGSM2[x_1247].value[1i];
    u_xlat15 = vec2<f32>(bitcast<f32>(x_1244), bitcast<f32>(x_1249));
    let x_1253 : i32 = u_xlati0.x;
    u_xlati45 = (x_1253 + 16i);
    let x_1255 : i32 = u_xlati45;
    let x_1257 : u32 = TGSM2[x_1255].value[0i];
    let x_1259 : i32 = u_xlati45;
    let x_1261 : u32 = TGSM2[x_1259].value[1i];
    let x_1263 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1257), bitcast<f32>(x_1261));
    let x_1264 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1263.x, x_1263.y, x_1264.z, x_1264.w);
    let x_1266 : vec4<i32> = u_xlati0;
    u_xlati2 = (vec4<i32>(x_1266.x, x_1266.x, x_1266.x, x_1266.x) + vec4<i32>(32i, 48i, 64i, 80i));
    let x_1274 : i32 = u_xlati2.x;
    let x_1276 : u32 = TGSM2[x_1274].value[0i];
    let x_1279 : i32 = u_xlati2.x;
    let x_1281 : u32 = TGSM2[x_1279].value[1i];
    u_xlat31 = vec2<f32>(bitcast<f32>(x_1276), bitcast<f32>(x_1281));
    let x_1285 : i32 = u_xlati2.y;
    let x_1287 : u32 = TGSM2[x_1285].value[0i];
    let x_1290 : i32 = u_xlati2.y;
    let x_1292 : u32 = TGSM2[x_1290].value[1i];
    let x_1294 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1287), bitcast<f32>(x_1292));
    let x_1295 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1294.x, x_1294.y, x_1295.z, x_1295.w);
    let x_1298 : i32 = u_xlati2.z;
    let x_1300 : u32 = TGSM2[x_1298].value[0i];
    let x_1303 : i32 = u_xlati2.z;
    let x_1305 : u32 = TGSM2[x_1303].value[1i];
    let x_1307 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1300), bitcast<f32>(x_1305));
    let x_1308 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
    let x_1311 : i32 = u_xlati2.w;
    let x_1313 : u32 = TGSM2[x_1311].value[0i];
    let x_1316 : i32 = u_xlati2.w;
    let x_1318 : u32 = TGSM2[x_1316].value[1i];
    u_xlat32 = vec2<f32>(bitcast<f32>(x_1313), bitcast<f32>(x_1318));
    let x_1321 : vec4<i32> = u_xlati0;
    u_xlati4 = (vec4<i32>(x_1321.x, x_1321.x, x_1321.x, x_1321.x) + vec4<i32>(2i, 18i, 34i, 50i));
    let x_1329 : i32 = u_xlati4.x;
    let x_1331 : u32 = TGSM0[x_1329].value[0i];
    let x_1334 : i32 = u_xlati4.x;
    let x_1336 : u32 = TGSM0[x_1334].value[1i];
    u_xlat33 = vec2<f32>(bitcast<f32>(x_1331), bitcast<f32>(x_1336));
    let x_1340 : i32 = u_xlati4.y;
    let x_1342 : u32 = TGSM0[x_1340].value[0i];
    let x_1345 : i32 = u_xlati4.y;
    let x_1347 : u32 = TGSM0[x_1345].value[1i];
    let x_1349 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1342), bitcast<f32>(x_1347));
    let x_1350 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1349.x, x_1349.y, x_1350.z, x_1350.w);
    let x_1353 : i32 = u_xlati4.z;
    let x_1355 : u32 = TGSM0[x_1353].value[0i];
    let x_1358 : i32 = u_xlati4.z;
    let x_1360 : u32 = TGSM0[x_1358].value[1i];
    let x_1362 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1355), bitcast<f32>(x_1360));
    let x_1363 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1362.x, x_1362.y, x_1363.z, x_1363.w);
    let x_1366 : i32 = u_xlati4.w;
    let x_1368 : u32 = TGSM0[x_1366].value[0i];
    let x_1371 : i32 = u_xlati4.w;
    let x_1373 : u32 = TGSM0[x_1371].value[1i];
    u_xlat34 = vec2<f32>(bitcast<f32>(x_1368), bitcast<f32>(x_1373));
    let x_1376 : vec4<i32> = u_xlati0;
    u_xlati35 = (vec2<i32>(x_1376.x, x_1376.x) + vec2<i32>(66i, 82i));
    let x_1383 : i32 = u_xlati35.x;
    let x_1385 : u32 = TGSM0[x_1383].value[0i];
    let x_1388 : i32 = u_xlati35.x;
    let x_1390 : u32 = TGSM0[x_1388].value[1i];
    let x_1392 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1385), bitcast<f32>(x_1390));
    let x_1393 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1392.x, x_1392.y, x_1393.z, x_1393.w);
    let x_1396 : i32 = u_xlati35.y;
    let x_1398 : u32 = TGSM0[x_1396].value[0i];
    let x_1401 : i32 = u_xlati35.y;
    let x_1403 : u32 = TGSM0[x_1401].value[1i];
    u_xlat35 = vec2<f32>(bitcast<f32>(x_1398), bitcast<f32>(x_1403));
    let x_1406 : vec2<f32> = u_xlat33;
    let x_1408 : vec4<f32> = u_xlat4;
    u_xlat33 = (-(x_1406) + vec2<f32>(x_1408.x, x_1408.y));
    let x_1411 : vec4<f32> = u_xlat4;
    let x_1414 : vec4<f32> = u_xlat5;
    let x_1416 : vec2<f32> = (-(vec2<f32>(x_1411.x, x_1411.y)) + vec2<f32>(x_1414.x, x_1414.y));
    let x_1417 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1416.x, x_1416.y, x_1417.z, x_1417.w);
    let x_1419 : vec4<f32> = u_xlat5;
    let x_1422 : vec2<f32> = u_xlat34;
    let x_1423 : vec2<f32> = (-(vec2<f32>(x_1419.x, x_1419.y)) + x_1422);
    let x_1424 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1423.x, x_1423.y, x_1424.z, x_1424.w);
    let x_1426 : vec2<f32> = u_xlat34;
    let x_1428 : vec4<f32> = u_xlat6;
    u_xlat34 = (-(x_1426) + vec2<f32>(x_1428.x, x_1428.y));
    let x_1431 : vec4<f32> = u_xlat6;
    let x_1434 : vec2<f32> = u_xlat35;
    u_xlat35 = (-(vec2<f32>(x_1431.x, x_1431.y)) + x_1434);
    let x_1436 : vec2<f32> = u_xlat33;
    let x_1437 : vec2<f32> = u_xlat33;
    let x_1440 : vec4<f32> = x_66.AdditionalParams;
    let x_1442 : vec2<f32> = ((x_1436 * x_1437) + vec2<f32>(x_1440.y, x_1440.y));
    let x_1443 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1442.x, x_1442.y, x_1443.z, x_1443.w);
    let x_1445 : vec4<f32> = u_xlat4;
    let x_1447 : vec4<f32> = u_xlat4;
    let x_1451 : vec4<f32> = x_66.AdditionalParams;
    u_xlat36 = ((vec2<f32>(x_1445.x, x_1445.y) * vec2<f32>(x_1447.x, x_1447.y)) + vec2<f32>(x_1451.y, x_1451.y));
    let x_1454 : vec4<f32> = u_xlat5;
    let x_1456 : vec4<f32> = u_xlat5;
    let x_1460 : vec4<f32> = x_66.AdditionalParams;
    let x_1462 : vec2<f32> = ((vec2<f32>(x_1454.x, x_1454.y) * vec2<f32>(x_1456.x, x_1456.y)) + vec2<f32>(x_1460.y, x_1460.y));
    let x_1463 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1462.x, x_1462.y, x_1463.z, x_1463.w);
    let x_1465 : vec2<f32> = u_xlat34;
    let x_1466 : vec2<f32> = u_xlat34;
    let x_1469 : vec4<f32> = x_66.AdditionalParams;
    u_xlat37 = ((x_1465 * x_1466) + vec2<f32>(x_1469.y, x_1469.y));
    let x_1472 : vec2<f32> = u_xlat35;
    let x_1473 : vec2<f32> = u_xlat35;
    let x_1476 : vec4<f32> = x_66.AdditionalParams;
    let x_1478 : vec2<f32> = ((x_1472 * x_1473) + vec2<f32>(x_1476.y, x_1476.y));
    let x_1479 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1478.x, x_1478.y, x_1479.z, x_1479.w);
    let x_1481 : vec2<f32> = u_xlat33;
    let x_1482 : vec4<f32> = u_xlat4;
    let x_1486 : vec4<f32> = x_66.AdditionalParams;
    u_xlat33 = ((x_1481 * vec2<f32>(x_1482.x, x_1482.y)) + vec2<f32>(x_1486.y, x_1486.y));
    let x_1489 : vec2<f32> = u_xlat33;
    let x_1490 : vec2<f32> = u_xlat33;
    u_xlat33 = (x_1489 * x_1490);
    let x_1492 : vec2<f32> = u_xlat36;
    let x_1493 : vec4<f32> = u_xlat6;
    let x_1495 : vec2<f32> = (x_1492 * vec2<f32>(x_1493.x, x_1493.y));
    let x_1496 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1495.x, x_1495.y, x_1496.z, x_1496.w);
    let x_1498 : vec4<f32> = u_xlat4;
    let x_1500 : vec4<f32> = u_xlat5;
    let x_1504 : vec4<f32> = x_66.AdditionalParams;
    let x_1506 : vec2<f32> = ((vec2<f32>(x_1498.x, x_1498.y) * vec2<f32>(x_1500.x, x_1500.y)) + vec2<f32>(x_1504.y, x_1504.y));
    let x_1507 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1506.x, x_1506.y, x_1507.z, x_1507.w);
    let x_1509 : vec2<f32> = u_xlat36;
    let x_1510 : vec4<f32> = u_xlat7;
    let x_1512 : vec2<f32> = (x_1509 * vec2<f32>(x_1510.x, x_1510.y));
    let x_1513 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1513.x, x_1513.y, x_1512.x, x_1512.y);
    let x_1515 : vec4<f32> = u_xlat6;
    let x_1517 : vec4<f32> = x_66.AdditionalParams;
    u_xlat6 = (x_1515 * vec4<f32>(x_1517.z, x_1517.z, x_1517.z, x_1517.z));
    let x_1520 : vec4<f32> = u_xlat5;
    let x_1522 : vec2<f32> = u_xlat34;
    let x_1525 : vec4<f32> = x_66.AdditionalParams;
    let x_1527 : vec2<f32> = ((vec2<f32>(x_1520.x, x_1520.y) * x_1522) + vec2<f32>(x_1525.y, x_1525.y));
    let x_1528 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1527.x, x_1527.y, x_1528.z, x_1528.w);
    let x_1530 : vec4<f32> = u_xlat5;
    let x_1532 : vec4<f32> = u_xlat5;
    let x_1534 : vec2<f32> = (vec2<f32>(x_1530.x, x_1530.y) * vec2<f32>(x_1532.x, x_1532.y));
    let x_1535 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1534.x, x_1534.y, x_1535.z, x_1535.w);
    let x_1537 : vec2<f32> = u_xlat37;
    let x_1538 : vec4<f32> = u_xlat7;
    let x_1540 : vec2<f32> = (x_1537 * vec2<f32>(x_1538.x, x_1538.y));
    let x_1541 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1540.x, x_1540.y, x_1541.z, x_1541.w);
    let x_1543 : vec4<f32> = u_xlat7;
    let x_1546 : vec4<f32> = x_66.AdditionalParams;
    let x_1548 : vec2<f32> = (vec2<f32>(x_1543.x, x_1543.y) * vec2<f32>(x_1546.z, x_1546.z));
    let x_1549 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1548.x, x_1548.y, x_1549.z, x_1549.w);
    let x_1551 : vec2<f32> = u_xlat34;
    let x_1552 : vec2<f32> = u_xlat35;
    let x_1555 : vec4<f32> = x_66.AdditionalParams;
    let x_1557 : vec2<f32> = ((x_1551 * x_1552) + vec2<f32>(x_1555.y, x_1555.y));
    let x_1558 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1558.x, x_1558.y, x_1557.x, x_1557.y);
    let x_1560 : vec4<f32> = u_xlat4;
    let x_1561 : vec4<f32> = u_xlat4;
    u_xlat4 = (x_1560 * x_1561);
    let x_1563 : vec2<f32> = u_xlat37;
    let x_1564 : vec4<f32> = u_xlat8;
    u_xlat35 = (x_1563 * vec2<f32>(x_1564.x, x_1564.y));
    let x_1567 : vec2<f32> = u_xlat35;
    let x_1569 : vec4<f32> = x_66.AdditionalParams;
    u_xlat35 = (x_1567 * vec2<f32>(x_1569.z, x_1569.z));
    let x_1573 : vec4<f32> = u_xlat6;
    let x_1575 : vec2<f32> = u_xlat33;
    let x_1577 : vec4<bool> = (vec4<f32>(x_1573.x, x_1573.y, x_1573.x, x_1573.y) < vec4<f32>(x_1575.x, x_1575.y, x_1575.x, x_1575.y));
    u_xlatb33 = vec2<bool>(x_1577.x, x_1577.y);
    let x_1580 : vec4<f32> = u_xlat6;
    let x_1582 : vec4<f32> = u_xlat4;
    let x_1584 : vec4<bool> = (vec4<f32>(x_1580.z, x_1580.w, x_1580.z, x_1580.z) < vec4<f32>(x_1582.x, x_1582.y, x_1582.x, x_1582.x));
    u_xlatb4 = vec2<bool>(x_1584.x, x_1584.y);
    let x_1587 : vec4<f32> = u_xlat7;
    let x_1589 : vec4<f32> = u_xlat5;
    let x_1591 : vec4<bool> = (vec4<f32>(x_1587.x, x_1587.y, x_1587.x, x_1587.x) < vec4<f32>(x_1589.x, x_1589.y, x_1589.x, x_1589.x));
    u_xlatb5 = vec2<bool>(x_1591.x, x_1591.y);
    let x_1594 : vec2<f32> = u_xlat35;
    let x_1596 : vec4<f32> = u_xlat4;
    let x_1598 : vec4<bool> = (vec4<f32>(x_1594.x, x_1594.y, x_1594.x, x_1594.y) < vec4<f32>(x_1596.z, x_1596.w, x_1596.z, x_1596.w));
    u_xlatb34 = vec2<bool>(x_1598.x, x_1598.y);
    let x_1600 : vec2<bool> = u_xlatb33;
    let x_1604 : vec2<bool> = u_xlatb4;
    u_xlati35 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1600) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1604) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1610 : vec2<i32> = u_xlati35;
    u_xlati35 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1610) & vec2<u32>(1u, 1u)));
    let x_1615 : i32 = u_xlati35.x;
    if ((x_1615 != 0i)) {
      let x_1621 : f32 = u_xlat1.x;
      x_1617 = x_1621;
    } else {
      let x_1624 : f32 = u_xlat31.x;
      x_1617 = x_1624;
    }
    let x_1625 : f32 = x_1617;
    u_xlat35.x = x_1625;
    let x_1628 : i32 = u_xlati35.y;
    if ((x_1628 != 0i)) {
      let x_1634 : f32 = u_xlat1.y;
      x_1630 = x_1634;
    } else {
      let x_1637 : f32 = u_xlat31.y;
      x_1630 = x_1637;
    }
    let x_1638 : f32 = x_1630;
    u_xlat35.y = x_1638;
    let x_1641 : vec2<f32> = u_xlat15;
    hlslcc_movcTemp_1 = x_1641;
    let x_1643 : bool = u_xlatb33.x;
    if (x_1643) {
      let x_1648 : f32 = u_xlat15.x;
      x_1644 = x_1648;
    } else {
      let x_1651 : f32 = u_xlat35.x;
      x_1644 = x_1651;
    }
    let x_1652 : f32 = x_1644;
    hlslcc_movcTemp_1.x = x_1652;
    let x_1655 : bool = u_xlatb33.y;
    if (x_1655) {
      let x_1660 : f32 = u_xlat15.y;
      x_1656 = x_1660;
    } else {
      let x_1663 : f32 = u_xlat35.y;
      x_1656 = x_1663;
    }
    let x_1664 : f32 = x_1656;
    hlslcc_movcTemp_1.y = x_1664;
    let x_1666 : vec2<f32> = hlslcc_movcTemp_1;
    u_xlat15 = x_1666;
    let x_1668 : vec2<bool> = u_xlatb4;
    let x_1672 : vec2<bool> = u_xlatb5;
    u_xlati33 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1668) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1672) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1678 : vec2<i32> = u_xlati33;
    u_xlati33 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1678) & vec2<u32>(1u, 1u)));
    let x_1683 : i32 = u_xlati33.x;
    if ((x_1683 != 0i)) {
      let x_1689 : f32 = u_xlat31.x;
      x_1685 = x_1689;
    } else {
      let x_1692 : f32 = u_xlat2.x;
      x_1685 = x_1692;
    }
    let x_1693 : f32 = x_1685;
    u_xlat14.x = x_1693;
    let x_1696 : i32 = u_xlati33.y;
    if ((x_1696 != 0i)) {
      let x_1702 : f32 = u_xlat31.y;
      x_1698 = x_1702;
    } else {
      let x_1705 : f32 = u_xlat2.y;
      x_1698 = x_1705;
    }
    let x_1706 : f32 = x_1698;
    u_xlat14.y = x_1706;
    let x_1709 : i32 = u_xlati33.x;
    if ((x_1709 != 0i)) {
      let x_1715 : f32 = u_xlat2.x;
      x_1711 = x_1715;
    } else {
      let x_1718 : f32 = u_xlat31.x;
      x_1711 = x_1718;
    }
    let x_1719 : f32 = x_1711;
    u_xlat7.x = x_1719;
    let x_1722 : i32 = u_xlati33.y;
    if ((x_1722 != 0i)) {
      let x_1728 : f32 = u_xlat2.y;
      x_1724 = x_1728;
    } else {
      let x_1731 : f32 = u_xlat31.y;
      x_1724 = x_1731;
    }
    let x_1732 : f32 = x_1724;
    u_xlat7.y = x_1732;
    let x_1734 : vec2<f32> = u_xlat14;
    let x_1735 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1734.x, x_1734.y, x_1735.z, x_1735.w);
    let x_1738 : bool = u_xlatb5.x;
    if (x_1738) {
      let x_1743 : f32 = u_xlat3.x;
      x_1739 = x_1743;
    } else {
      let x_1746 : f32 = u_xlat7.x;
      x_1739 = x_1746;
    }
    let x_1747 : f32 = x_1739;
    u_xlat33.x = x_1747;
    let x_1750 : bool = u_xlatb5.y;
    if (x_1750) {
      let x_1755 : f32 = u_xlat3.y;
      x_1751 = x_1755;
    } else {
      let x_1758 : f32 = u_xlat7.y;
      x_1751 = x_1758;
    }
    let x_1759 : f32 = x_1751;
    u_xlat33.y = x_1759;
    let x_1761 : vec2<f32> = u_xlat15;
    let x_1762 : vec2<f32> = u_xlat33;
    u_xlat15 = (x_1761 + x_1762);
    let x_1764 : vec2<f32> = u_xlat15;
    let x_1766 : vec2<f32> = u_xlat35;
    u_xlat15 = ((x_1764 * vec2<f32>(0.5f, 0.5f)) + x_1766);
    let x_1768 : vec2<f32> = u_xlat31;
    let x_1769 : vec2<f32> = u_xlat15;
    u_xlat15 = (x_1768 + x_1769);
    let x_1771 : vec4<f32> = u_xlat7;
    let x_1773 : vec2<f32> = u_xlat15;
    u_xlat15 = (vec2<f32>(x_1771.x, x_1771.y) + x_1773);
    let x_1775 : vec2<f32> = u_xlat15;
    u_xlat15 = (x_1775 * vec2<f32>(0.25f, 0.25f));
    let x_1778 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp_2 = x_1778;
    let x_1780 : bool = u_xlatb4.x;
    if (x_1780) {
      let x_1785 : f32 = u_xlat1.x;
      x_1781 = x_1785;
    } else {
      let x_1788 : f32 = u_xlat6.x;
      x_1781 = x_1788;
    }
    let x_1789 : f32 = x_1781;
    hlslcc_movcTemp_2.x = x_1789;
    let x_1792 : bool = u_xlatb4.y;
    if (x_1792) {
      let x_1797 : f32 = u_xlat1.y;
      x_1793 = x_1797;
    } else {
      let x_1800 : f32 = u_xlat6.y;
      x_1793 = x_1800;
    }
    let x_1801 : f32 = x_1793;
    hlslcc_movcTemp_2.y = x_1801;
    let x_1803 : vec4<f32> = hlslcc_movcTemp_2;
    u_xlat1 = x_1803;
    let x_1804 : vec2<bool> = u_xlatb5;
    let x_1808 : vec2<bool> = u_xlatb34;
    u_xlati31 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1804) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1808) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1814 : vec2<i32> = u_xlati31;
    u_xlati31 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1814) & vec2<u32>(1u, 1u)));
    let x_1819 : i32 = u_xlati31.x;
    if ((x_1819 != 0i)) {
      let x_1825 : f32 = u_xlat3.x;
      x_1821 = x_1825;
    } else {
      let x_1828 : f32 = u_xlat2.x;
      x_1821 = x_1828;
    }
    let x_1829 : f32 = x_1821;
    u_xlat31.x = x_1829;
    let x_1832 : i32 = u_xlati31.y;
    if ((x_1832 != 0i)) {
      let x_1838 : f32 = u_xlat3.y;
      x_1834 = x_1838;
    } else {
      let x_1841 : f32 = u_xlat2.y;
      x_1834 = x_1841;
    }
    let x_1842 : f32 = x_1834;
    u_xlat31.y = x_1842;
    let x_1845 : vec2<f32> = u_xlat32;
    hlslcc_movcTemp_3 = x_1845;
    let x_1847 : bool = u_xlatb34.x;
    if (x_1847) {
      let x_1852 : f32 = u_xlat32.x;
      x_1848 = x_1852;
    } else {
      let x_1855 : f32 = u_xlat31.x;
      x_1848 = x_1855;
    }
    let x_1856 : f32 = x_1848;
    hlslcc_movcTemp_3.x = x_1856;
    let x_1859 : bool = u_xlatb34.y;
    if (x_1859) {
      let x_1864 : f32 = u_xlat32.y;
      x_1860 = x_1864;
    } else {
      let x_1867 : f32 = u_xlat31.y;
      x_1860 = x_1867;
    }
    let x_1868 : f32 = x_1860;
    hlslcc_movcTemp_3.y = x_1868;
    let x_1870 : vec2<f32> = hlslcc_movcTemp_3;
    u_xlat32 = x_1870;
    let x_1871 : vec4<f32> = u_xlat1;
    let x_1873 : vec2<f32> = u_xlat32;
    let x_1874 : vec2<f32> = (vec2<f32>(x_1871.x, x_1871.y) + x_1873);
    let x_1875 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1874.x, x_1874.y, x_1875.z, x_1875.w);
    let x_1877 : vec4<f32> = u_xlat1;
    let x_1880 : vec4<f32> = u_xlat6;
    let x_1882 : vec2<f32> = ((vec2<f32>(x_1877.x, x_1877.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1880.x, x_1880.y));
    let x_1883 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1882.x, x_1882.y, x_1883.z, x_1883.w);
    let x_1885 : vec4<f32> = u_xlat2;
    let x_1887 : vec4<f32> = u_xlat1;
    let x_1889 : vec2<f32> = (vec2<f32>(x_1885.x, x_1885.y) + vec2<f32>(x_1887.x, x_1887.y));
    let x_1890 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1889.x, x_1889.y, x_1890.z, x_1890.w);
    let x_1892 : vec2<f32> = u_xlat31;
    let x_1893 : vec4<f32> = u_xlat1;
    let x_1895 : vec2<f32> = (x_1892 + vec2<f32>(x_1893.x, x_1893.y));
    let x_1896 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1895.x, x_1895.y, x_1896.z, x_1896.w);
    let x_1898 : vec4<f32> = u_xlat1;
    let x_1900 : vec2<f32> = (vec2<f32>(x_1898.x, x_1898.y) * vec2<f32>(0.25f, 0.25f));
    let x_1901 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1900.x, x_1900.y, x_1901.z, x_1901.w);
    let x_1904 : i32 = u_xlati0.x;
    let x_1906 : f32 = u_xlat15.x;
    TGSM1[x_1904].value[0i] = bitcast<u32>(x_1906);
    let x_1910 : i32 = u_xlati0.x;
    let x_1912 : f32 = u_xlat15.y;
    TGSM1[x_1910].value[1i] = bitcast<u32>(x_1912);
    let x_1915 : i32 = u_xlati45;
    let x_1917 : f32 = u_xlat1.x;
    TGSM1[x_1915].value[0i] = bitcast<u32>(x_1917);
    let x_1920 : i32 = u_xlati45;
    let x_1922 : f32 = u_xlat1.y;
    TGSM1[x_1920].value[1i] = bitcast<u32>(x_1922);
  }
  workgroupBarrier();
  let x_1926 : u32 = gl_LocalInvocationID.y;
  let x_1930 : u32 = gl_LocalInvocationID.x;
  u_xlati0.x = ((bitcast<i32>(x_1926) * 16i) + bitcast<i32>(x_1930));
  let x_1934 : vec4<i32> = u_xlati0;
  u_xlati15 = (vec3<i32>(x_1934.x, x_1934.x, x_1934.x) + vec3<i32>(16i, 17i, 1i));
  let x_1939 : i32 = u_xlati15.x;
  let x_1941 : u32 = TGSM1[x_1939].value[0i];
  let x_1944 : i32 = u_xlati15.x;
  let x_1946 : u32 = TGSM1[x_1944].value[1i];
  let x_1948 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1941), bitcast<f32>(x_1946));
  let x_1949 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1948.x, x_1948.y, x_1949.z, x_1949.w);
  let x_1952 : i32 = u_xlati15.y;
  let x_1954 : u32 = TGSM1[x_1952].value[0i];
  let x_1957 : i32 = u_xlati15.y;
  let x_1959 : u32 = TGSM1[x_1957].value[1i];
  u_xlat15 = vec2<f32>(bitcast<f32>(x_1954), bitcast<f32>(x_1959));
  let x_1963 : i32 = u_xlati15.z;
  let x_1965 : u32 = TGSM1[x_1963].value[0i];
  let x_1968 : i32 = u_xlati15.z;
  let x_1970 : u32 = TGSM1[x_1968].value[1i];
  let x_1972 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1965), bitcast<f32>(x_1970));
  let x_1973 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1973.x, x_1973.y, x_1972.x, x_1972.y);
  let x_1976 : i32 = u_xlati0.x;
  let x_1978 : u32 = TGSM1[x_1976].value[1i];
  let x_1981 : i32 = u_xlati0.x;
  let x_1983 : u32 = TGSM1[x_1981].value[0i];
  let x_1985 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1978), bitcast<f32>(x_1983));
  let x_1986 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1985.x, x_1985.y, x_1986.z, x_1986.w);
  let x_1989 : vec3<u32> = gl_GlobalInvocationID;
  let x_1991 : vec2<f32> = vec2<f32>(vec2<u32>(x_1989.x, x_1989.y));
  let x_1992 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1991.x, x_1992.y, x_1992.z, x_1991.y);
  let x_1994 : vec4<f32> = u_xlat0;
  let x_1997 : vec4<f32> = x_66.InvLowResolution;
  let x_1999 : vec2<f32> = (vec2<f32>(x_1994.x, x_1994.w) * vec2<f32>(x_1997.x, x_1997.y));
  let x_2000 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1999.x, x_2000.y, x_2000.z, x_1999.y);
  let x_2004 : vec3<u32> = gl_GlobalInvocationID;
  u_xlatu3 = bitcast<vec4<u32>>((bitcast<vec4<i32>>(vec4<u32>(x_2004.x, x_2004.y, x_2004.y, x_2004.y)) << bitcast<vec4<u32>>(vec4<i32>(1i, 1i, 1i, 1i))));
  let x_2010 : vec4<u32> = u_xlatu3;
  let x_2012 : vec2<f32> = vec2<f32>(vec2<u32>(x_2010.x, x_2010.w));
  let x_2013 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2012.x, x_2012.y, x_2013.z, x_2013.w);
  let x_2015 : vec4<f32> = u_xlat4;
  let x_2018 : vec4<f32> = x_66.InvHighResolution;
  let x_2020 : vec2<f32> = (vec2<f32>(x_2015.x, x_2015.y) * vec2<f32>(x_2018.x, x_2018.y));
  let x_2021 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2020.x, x_2020.y, x_2021.z, x_2021.w);
  let x_2028 : vec4<f32> = u_xlat4;
  let x_2030 : vec4<f32> = textureGather(0i, HiResAO, samplerHiResAO, vec2<f32>(x_2028.x, x_2028.y));
  u_xlat5 = x_2030;
  let x_2034 : vec4<f32> = u_xlat4;
  let x_2036 : vec4<f32> = textureGather(1i, HiResAO, samplerHiResAO, vec2<f32>(x_2034.x, x_2034.y));
  u_xlat6 = x_2036;
  let x_2040 : vec4<f32> = u_xlat0;
  let x_2042 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, vec2<f32>(x_2040.x, x_2040.w));
  u_xlat7 = x_2042;
  let x_2046 : vec4<f32> = u_xlat0;
  let x_2048 : vec4<f32> = textureGather(1i, LoResDB, samplerLoResDB, vec2<f32>(x_2046.x, x_2046.w));
  u_xlat8 = x_2048;
  let x_2054 : vec4<f32> = u_xlat4;
  let x_2056 : vec4<f32> = textureGather(0i, HiResDB, samplerHiResDB, vec2<f32>(x_2054.x, x_2054.y));
  u_xlat9 = x_2056;
  let x_2060 : vec4<f32> = u_xlat4;
  let x_2062 : vec4<f32> = textureGather(1i, HiResDB, samplerHiResDB, vec2<f32>(x_2060.x, x_2060.y));
  u_xlat4 = x_2062;
  let x_2064 : vec4<u32> = u_xlatu3;
  u_xlati10 = (bitcast<vec4<i32>>(vec4<u32>(x_2064.x, x_2064.w, x_2064.x, x_2064.w)) + vec4<i32>(-1i, 0i, 0i, -1i));
  let x_2071 : vec4<f32> = u_xlat7;
  let x_2073 : vec4<f32> = u_xlat9;
  u_xlat11 = (-(x_2071) + vec4<f32>(x_2073.x, x_2073.x, x_2073.x, x_2073.x));
  let x_2076 : vec4<f32> = u_xlat11;
  let x_2079 : vec4<f32> = x_66.AdditionalParams;
  u_xlat11 = (abs(x_2076) + vec4<f32>(x_2079.w, x_2079.w, x_2079.w, x_2079.w));
  let x_2085 : vec4<f32> = u_xlat11;
  u_xlat11 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2085);
  let x_2087 : vec4<f32> = u_xlat11;
  u_xlat0.x = dot(x_2087, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2092 : f32 = u_xlat15.x;
  u_xlat12.z = x_2092;
  let x_2094 : vec4<f32> = u_xlat1;
  let x_2095 : vec2<f32> = vec2<f32>(x_2094.x, x_2094.z);
  let x_2096 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_2096.x, x_2095.x, x_2096.z, x_2095.y);
  let x_2099 : f32 = u_xlat2.y;
  u_xlat12.x = x_2099;
  let x_2101 : vec4<f32> = u_xlat12;
  let x_2103 : vec4<f32> = u_xlat11;
  u_xlat0.y = dot(vec4<f32>(x_2101.y, x_2101.z, x_2101.w, x_2101.x), x_2103);
  let x_2106 : vec4<f32> = u_xlat0;
  let x_2109 : vec4<f32> = x_66.AdditionalParams;
  let x_2111 : vec2<f32> = (vec2<f32>(x_2106.x, x_2106.y) + vec2<f32>(x_2109.x, x_2109.x));
  let x_2112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2111.x, x_2111.y, x_2112.z, x_2112.w);
  let x_2115 : f32 = u_xlat0.y;
  let x_2117 : f32 = u_xlat5.x;
  u_xlat15.x = (x_2115 * x_2117);
  let x_2121 : vec2<f32> = u_xlat15;
  let x_2123 : vec4<f32> = u_xlat0;
  let x_2125 : vec3<f32> = (vec3<f32>(x_2121.x, x_2121.x, x_2121.x) / vec3<f32>(x_2123.x, x_2123.x, x_2123.x));
  let x_2126 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_2125.x, x_2126.y, x_2125.y, x_2125.z);
  let x_2129 : vec4<f32> = u_xlat8;
  let x_2131 : vec4<f32> = u_xlat4;
  u_xlat13 = (-(x_2129) + vec4<f32>(x_2131.x, x_2131.x, x_2131.x, x_2131.x));
  let x_2134 : vec4<f32> = u_xlat13;
  let x_2137 : vec4<f32> = x_66.AdditionalParams;
  u_xlat13 = (abs(x_2134) + vec4<f32>(x_2137.w, x_2137.w, x_2137.w, x_2137.w));
  let x_2140 : vec4<f32> = u_xlat13;
  u_xlat13 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2140);
  let x_2142 : vec4<f32> = u_xlat13;
  u_xlat0.x = dot(x_2142, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2146 : f32 = u_xlat15.y;
  u_xlat2.z = x_2146;
  let x_2148 : vec4<f32> = u_xlat1;
  let x_2149 : vec2<f32> = vec2<f32>(x_2148.y, x_2148.w);
  let x_2150 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2150.x, x_2149.x, x_2150.z, x_2149.y);
  let x_2152 : vec4<f32> = u_xlat2;
  let x_2154 : vec4<f32> = u_xlat13;
  u_xlat0.y = dot(vec4<f32>(x_2152.y, x_2152.z, x_2152.w, x_2152.x), x_2154);
  let x_2157 : vec4<f32> = u_xlat0;
  let x_2160 : vec4<f32> = x_66.AdditionalParams;
  let x_2162 : vec2<f32> = (vec2<f32>(x_2157.x, x_2157.y) + vec2<f32>(x_2160.x, x_2160.x));
  let x_2163 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2162.x, x_2162.y, x_2163.z, x_2163.w);
  let x_2166 : f32 = u_xlat0.y;
  let x_2168 : f32 = u_xlat6.x;
  u_xlat15.x = (x_2166 * x_2168);
  let x_2172 : f32 = u_xlat15.x;
  let x_2174 : f32 = u_xlat0.x;
  u_xlat11.y = (x_2172 / x_2174);
  let x_2181 : vec4<i32> = u_xlati10;
  let x_2183 : vec4<f32> = u_xlat11;
  textureStore(AoResult_origX0X, vec2<i32>(x_2181.x, x_2181.y), x_2183);
  let x_2184 : vec4<f32> = u_xlat7;
  let x_2187 : vec4<f32> = u_xlat9;
  u_xlat0 = (-(vec4<f32>(x_2184.y, x_2184.z, x_2184.w, x_2184.x)) + vec4<f32>(x_2187.y, x_2187.y, x_2187.y, x_2187.y));
  let x_2190 : vec4<f32> = u_xlat0;
  let x_2193 : vec4<f32> = x_66.AdditionalParams;
  u_xlat0 = (abs(x_2190) + vec4<f32>(x_2193.w, x_2193.w, x_2193.w, x_2193.w));
  let x_2196 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2196);
  let x_2198 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_2198, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2202 : f32 = u_xlat1.x;
  let x_2205 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2202 + x_2205);
  let x_2208 : vec4<f32> = u_xlat12;
  let x_2210 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec4<f32>(x_2208.z, x_2208.w, x_2208.x, x_2208.y), x_2210);
  let x_2214 : f32 = u_xlat0.x;
  let x_2216 : f32 = x_66.AdditionalParams.x;
  u_xlat0.x = (x_2214 + x_2216);
  let x_2220 : f32 = u_xlat0.x;
  let x_2222 : f32 = u_xlat5.y;
  u_xlat0.x = (x_2220 * x_2222);
  let x_2225 : vec4<f32> = u_xlat0;
  let x_2227 : vec4<f32> = u_xlat1;
  let x_2229 : vec3<f32> = (vec3<f32>(x_2225.x, x_2225.x, x_2225.x) / vec3<f32>(x_2227.x, x_2227.x, x_2227.x));
  let x_2230 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2229.x, x_2230.y, x_2229.y, x_2229.z);
  let x_2232 : vec4<f32> = u_xlat8;
  let x_2235 : vec4<f32> = u_xlat4;
  u_xlat1 = (-(vec4<f32>(x_2232.y, x_2232.z, x_2232.w, x_2232.x)) + vec4<f32>(x_2235.y, x_2235.y, x_2235.y, x_2235.y));
  let x_2238 : vec4<f32> = u_xlat1;
  let x_2241 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2238) + vec4<f32>(x_2241.w, x_2241.w, x_2241.w, x_2241.w));
  let x_2244 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2244);
  let x_2246 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_2246, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2250 : f32 = u_xlat4.x;
  let x_2252 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2250 + x_2252);
  let x_2255 : vec4<f32> = u_xlat2;
  let x_2257 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec4<f32>(x_2255.z, x_2255.w, x_2255.x, x_2255.y), x_2257);
  let x_2261 : f32 = u_xlat1.x;
  let x_2263 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2261 + x_2263);
  let x_2267 : f32 = u_xlat1.x;
  let x_2269 : f32 = u_xlat6.y;
  u_xlat1.x = (x_2267 * x_2269);
  let x_2273 : f32 = u_xlat1.x;
  let x_2275 : f32 = u_xlat4.x;
  u_xlat0.y = (x_2273 / x_2275);
  let x_2279 : vec4<u32> = u_xlatu3;
  let x_2282 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_2279.x, x_2279.w)), x_2282);
  let x_2283 : vec4<f32> = u_xlat7;
  let x_2286 : vec4<f32> = u_xlat9;
  u_xlat0 = (-(vec4<f32>(x_2283.z, x_2283.w, x_2283.x, x_2283.y)) + vec4<f32>(x_2286.z, x_2286.z, x_2286.z, x_2286.z));
  let x_2289 : vec4<f32> = u_xlat0;
  let x_2292 : vec4<f32> = x_66.AdditionalParams;
  u_xlat0 = (abs(x_2289) + vec4<f32>(x_2292.w, x_2292.w, x_2292.w, x_2292.w));
  let x_2295 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2295);
  let x_2297 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_2297, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2301 : f32 = u_xlat1.x;
  let x_2303 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2301 + x_2303);
  let x_2306 : vec4<f32> = u_xlat12;
  let x_2308 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec4<f32>(x_2306.w, x_2306.x, x_2306.y, x_2306.z), x_2308);
  let x_2312 : f32 = u_xlat0.x;
  let x_2314 : f32 = x_66.AdditionalParams.x;
  u_xlat0.x = (x_2312 + x_2314);
  let x_2318 : f32 = u_xlat0.x;
  let x_2320 : f32 = u_xlat5.z;
  u_xlat0.x = (x_2318 * x_2320);
  let x_2323 : vec4<f32> = u_xlat0;
  let x_2325 : vec4<f32> = u_xlat1;
  let x_2327 : vec3<f32> = (vec3<f32>(x_2323.x, x_2323.x, x_2323.x) / vec3<f32>(x_2325.x, x_2325.x, x_2325.x));
  let x_2328 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2327.x, x_2328.y, x_2327.y, x_2327.z);
  let x_2330 : vec4<f32> = u_xlat8;
  let x_2333 : vec4<f32> = u_xlat4;
  u_xlat1 = (-(vec4<f32>(x_2330.z, x_2330.w, x_2330.x, x_2330.y)) + vec4<f32>(x_2333.z, x_2333.z, x_2333.z, x_2333.z));
  let x_2336 : vec4<f32> = u_xlat1;
  let x_2339 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2336) + vec4<f32>(x_2339.w, x_2339.w, x_2339.w, x_2339.w));
  let x_2342 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2342);
  let x_2344 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_2344, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2348 : f32 = u_xlat4.x;
  let x_2350 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2348 + x_2350);
  let x_2353 : vec4<f32> = u_xlat2;
  let x_2355 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec4<f32>(x_2353.w, x_2353.x, x_2353.y, x_2353.z), x_2355);
  let x_2359 : f32 = u_xlat1.x;
  let x_2361 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2359 + x_2361);
  let x_2365 : f32 = u_xlat1.x;
  let x_2367 : f32 = u_xlat6.z;
  u_xlat1.x = (x_2365 * x_2367);
  let x_2371 : f32 = u_xlat1.x;
  let x_2373 : f32 = u_xlat4.x;
  u_xlat0.y = (x_2371 / x_2373);
  let x_2377 : vec4<i32> = u_xlati10;
  let x_2379 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_2377.z, x_2377.w), x_2379);
  let x_2380 : vec4<u32> = u_xlatu3;
  u_xlati0 = (bitcast<vec4<i32>>(x_2380) + vec4<i32>(-1i, -1i, -1i, -1i));
  let x_2384 : vec4<f32> = u_xlat7;
  let x_2387 : vec4<f32> = u_xlat9;
  u_xlat1 = (-(vec4<f32>(x_2384.w, x_2384.x, x_2384.y, x_2384.z)) + vec4<f32>(x_2387.w, x_2387.w, x_2387.w, x_2387.w));
  let x_2390 : vec4<f32> = u_xlat1;
  let x_2393 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2390) + vec4<f32>(x_2393.w, x_2393.w, x_2393.w, x_2393.w));
  let x_2396 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2396);
  let x_2398 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_2398, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2402 : f32 = u_xlat3.x;
  let x_2404 : f32 = x_66.AdditionalParams.x;
  u_xlat3.x = (x_2402 + x_2404);
  let x_2407 : vec4<f32> = u_xlat12;
  let x_2408 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(x_2407, x_2408);
  let x_2412 : f32 = u_xlat1.x;
  let x_2414 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2412 + x_2414);
  let x_2418 : f32 = u_xlat1.x;
  let x_2420 : f32 = u_xlat5.w;
  u_xlat1.x = (x_2418 * x_2420);
  let x_2423 : vec4<f32> = u_xlat1;
  let x_2425 : vec4<f32> = u_xlat3;
  let x_2427 : vec3<f32> = (vec3<f32>(x_2423.x, x_2423.x, x_2423.x) / vec3<f32>(x_2425.x, x_2425.x, x_2425.x));
  let x_2428 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2427.x, x_2428.y, x_2427.y, x_2427.z);
  let x_2430 : vec4<f32> = u_xlat8;
  let x_2433 : vec4<f32> = u_xlat4;
  u_xlat3 = (-(vec4<f32>(x_2430.w, x_2430.x, x_2430.y, x_2430.z)) + vec4<f32>(x_2433.w, x_2433.w, x_2433.w, x_2433.w));
  let x_2436 : vec4<f32> = u_xlat3;
  let x_2439 : vec4<f32> = x_66.AdditionalParams;
  u_xlat3 = (abs(x_2436) + vec4<f32>(x_2439.w, x_2439.w, x_2439.w, x_2439.w));
  let x_2442 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2442);
  let x_2444 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_2444, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2448 : f32 = u_xlat4.x;
  let x_2450 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2448 + x_2450);
  let x_2453 : vec4<f32> = u_xlat2;
  let x_2454 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_2453, x_2454);
  let x_2458 : f32 = u_xlat2.x;
  let x_2460 : f32 = x_66.AdditionalParams.x;
  u_xlat2.x = (x_2458 + x_2460);
  let x_2464 : f32 = u_xlat2.x;
  let x_2466 : f32 = u_xlat6.w;
  u_xlat2.x = (x_2464 * x_2466);
  let x_2470 : f32 = u_xlat2.x;
  let x_2472 : f32 = u_xlat4.x;
  u_xlat1.y = (x_2470 / x_2472);
  let x_2476 : vec4<i32> = u_xlati0;
  let x_2478 : vec4<f32> = u_xlat1;
  textureStore(AoResult_origX0X, vec2<i32>(x_2476.x, x_2476.y), x_2478);
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn main(@builtin(local_invocation_id) gl_LocalInvocationID_param : vec3<u32>, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_LocalInvocationID = gl_LocalInvocationID_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

