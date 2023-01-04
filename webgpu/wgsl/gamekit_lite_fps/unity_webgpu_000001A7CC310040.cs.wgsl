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

@group(0) @binding(9) var samplerLoResAO1 : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var LoResAO2 : texture_2d<f32>;

@group(0) @binding(10) var samplerLoResAO2 : sampler;

var<workgroup> TGSM1 : array<S, 256u>;

var<private> u_xlati45 : i32;

var<private> u_xlati31 : vec2<i32>;

@group(0) @binding(1) var LoResDB : texture_2d<f32>;

@group(0) @binding(7) var samplerLoResDB : sampler;

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

@group(0) @binding(5) var HiResAO : texture_2d<f32>;

@group(0) @binding(11) var samplerHiResAO : sampler;

@group(0) @binding(2) var HiResDB : texture_2d<f32>;

@group(0) @binding(8) var samplerHiResDB : sampler;

var<private> u_xlati10 : vec4<i32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

@group(0) @binding(6) var AoResult_origX0X : texture_storage_2d<rg32float, write>;

fn main_1() {
  var x_770 : f32;
  var x_783 : f32;
  var hlslcc_movcTemp : vec2<f32>;
  var x_798 : f32;
  var x_810 : f32;
  var x_842 : f32;
  var x_855 : f32;
  var x_868 : f32;
  var x_881 : f32;
  var x_896 : f32;
  var x_908 : f32;
  var x_957 : f32;
  var x_969 : f32;
  var x_1003 : f32;
  var x_1016 : f32;
  var x_1029 : f32;
  var x_1042 : f32;
  var x_1057 : f32;
  var x_1069 : f32;
  var x_1111 : f32;
  var x_1123 : f32;
  var x_1151 : f32;
  var x_1164 : f32;
  var x_1176 : f32;
  var x_1188 : f32;
  var x_1619 : f32;
  var x_1632 : f32;
  var hlslcc_movcTemp_1 : vec2<f32>;
  var x_1646 : f32;
  var x_1658 : f32;
  var x_1687 : f32;
  var x_1700 : f32;
  var x_1713 : f32;
  var x_1726 : f32;
  var x_1741 : f32;
  var x_1753 : f32;
  var hlslcc_movcTemp_2 : vec4<f32>;
  var x_1784 : f32;
  var x_1796 : f32;
  var x_1824 : f32;
  var x_1837 : f32;
  var hlslcc_movcTemp_3 : vec2<f32>;
  var x_1851 : f32;
  var x_1863 : f32;
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
      let x_774 : f32 = u_xlat2.x;
      x_770 = x_774;
    } else {
      let x_777 : f32 = u_xlat32.x;
      x_770 = x_777;
    }
    let x_778 : f32 = x_770;
    u_xlat4.x = x_778;
    let x_781 : i32 = u_xlati4.y;
    if ((x_781 != 0i)) {
      let x_787 : f32 = u_xlat2.y;
      x_783 = x_787;
    } else {
      let x_790 : f32 = u_xlat32.y;
      x_783 = x_790;
    }
    let x_791 : f32 = x_783;
    u_xlat4.y = x_791;
    let x_795 : vec2<f32> = u_xlat30;
    hlslcc_movcTemp = x_795;
    let x_797 : bool = u_xlatb35.x;
    if (x_797) {
      let x_802 : f32 = u_xlat30.x;
      x_798 = x_802;
    } else {
      let x_805 : f32 = u_xlat4.x;
      x_798 = x_805;
    }
    let x_806 : f32 = x_798;
    hlslcc_movcTemp.x = x_806;
    let x_809 : bool = u_xlatb35.y;
    if (x_809) {
      let x_814 : f32 = u_xlat30.y;
      x_810 = x_814;
    } else {
      let x_817 : f32 = u_xlat4.y;
      x_810 = x_817;
    }
    let x_818 : f32 = x_810;
    hlslcc_movcTemp.y = x_818;
    let x_820 : vec2<f32> = hlslcc_movcTemp;
    u_xlat30 = x_820;
    let x_822 : vec4<bool> = u_xlatb6;
    let x_827 : vec4<bool> = u_xlatb6;
    u_xlati35 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_822.x, x_822.y)) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_827.z, x_827.w)) * vec2<u32>(4294967295u, 4294967295u))));
    let x_834 : vec2<i32> = u_xlati35;
    u_xlati35 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_834) & vec2<u32>(1u, 1u)));
    let x_840 : i32 = u_xlati35.x;
    if ((x_840 != 0i)) {
      let x_846 : f32 = u_xlat32.x;
      x_842 = x_846;
    } else {
      let x_849 : f32 = u_xlat3.x;
      x_842 = x_849;
    }
    let x_850 : f32 = x_842;
    u_xlat14.x = x_850;
    let x_853 : i32 = u_xlati35.y;
    if ((x_853 != 0i)) {
      let x_859 : f32 = u_xlat32.y;
      x_855 = x_859;
    } else {
      let x_862 : f32 = u_xlat3.y;
      x_855 = x_862;
    }
    let x_863 : f32 = x_855;
    u_xlat14.y = x_863;
    let x_866 : i32 = u_xlati35.x;
    if ((x_866 != 0i)) {
      let x_872 : f32 = u_xlat3.x;
      x_868 = x_872;
    } else {
      let x_875 : f32 = u_xlat32.x;
      x_868 = x_875;
    }
    let x_876 : f32 = x_868;
    u_xlat9.x = x_876;
    let x_879 : i32 = u_xlati35.y;
    if ((x_879 != 0i)) {
      let x_885 : f32 = u_xlat3.y;
      x_881 = x_885;
    } else {
      let x_888 : f32 = u_xlat32.y;
      x_881 = x_888;
    }
    let x_889 : f32 = x_881;
    u_xlat9.y = x_889;
    let x_891 : vec2<f32> = u_xlat14;
    let x_892 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_891.x, x_891.y, x_892.z, x_892.w);
    let x_895 : bool = u_xlatb6.z;
    if (x_895) {
      let x_900 : f32 = u_xlat33.x;
      x_896 = x_900;
    } else {
      let x_903 : f32 = u_xlat9.x;
      x_896 = x_903;
    }
    let x_904 : f32 = x_896;
    u_xlat35.x = x_904;
    let x_907 : bool = u_xlatb6.w;
    if (x_907) {
      let x_912 : f32 = u_xlat33.y;
      x_908 = x_912;
    } else {
      let x_915 : f32 = u_xlat9.y;
      x_908 = x_915;
    }
    let x_916 : f32 = x_908;
    u_xlat35.y = x_916;
    let x_918 : vec2<f32> = u_xlat30;
    let x_919 : vec2<f32> = u_xlat35;
    u_xlat30 = (x_918 + x_919);
    let x_921 : vec2<f32> = u_xlat30;
    let x_925 : vec4<f32> = u_xlat4;
    u_xlat30 = ((x_921 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_925.x, x_925.y));
    let x_928 : vec2<f32> = u_xlat32;
    let x_929 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_928 + x_929);
    let x_931 : vec4<f32> = u_xlat9;
    let x_933 : vec2<f32> = u_xlat30;
    u_xlat30 = (vec2<f32>(x_931.x, x_931.y) + x_933);
    let x_935 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_935 * vec2<f32>(0.25f, 0.25f));
    let x_944 : i32 = u_xlati0.x;
    let x_946 : f32 = u_xlat30.x;
    TGSM2[x_944].value[0i] = bitcast<u32>(x_946);
    let x_950 : i32 = u_xlati0.x;
    let x_952 : f32 = u_xlat30.y;
    TGSM2[x_950].value[1i] = bitcast<u32>(x_952);
    let x_956 : bool = u_xlatb6.x;
    if (x_956) {
      let x_961 : f32 = u_xlat2.x;
      x_957 = x_961;
    } else {
      let x_964 : f32 = u_xlat8.x;
      x_957 = x_964;
    }
    let x_965 : f32 = x_957;
    u_xlat30.x = x_965;
    let x_968 : bool = u_xlatb6.y;
    if (x_968) {
      let x_973 : f32 = u_xlat2.y;
      x_969 = x_973;
    } else {
      let x_976 : f32 = u_xlat8.y;
      x_969 = x_976;
    }
    let x_977 : f32 = x_969;
    u_xlat30.y = x_977;
    let x_980 : vec4<bool> = u_xlatb6;
    let x_985 : vec2<bool> = u_xlatb7;
    let x_990 : vec2<i32> = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_980.z, x_980.w)) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_985) * vec2<u32>(4294967295u, 4294967295u))));
    let x_991 : vec4<i32> = u_xlati2;
    u_xlati2 = vec4<i32>(x_990.x, x_990.y, x_991.z, x_991.w);
    let x_993 : vec4<i32> = u_xlati2;
    let x_997 : vec2<i32> = bitcast<vec2<i32>>((bitcast<vec2<u32>>(vec2<i32>(x_993.x, x_993.y)) & vec2<u32>(1u, 1u)));
    let x_998 : vec4<i32> = u_xlati2;
    u_xlati2 = vec4<i32>(x_997.x, x_997.y, x_998.z, x_998.w);
    let x_1001 : i32 = u_xlati2.x;
    if ((x_1001 != 0i)) {
      let x_1007 : f32 = u_xlat3.x;
      x_1003 = x_1007;
    } else {
      let x_1010 : f32 = u_xlat33.x;
      x_1003 = x_1010;
    }
    let x_1011 : f32 = x_1003;
    u_xlat14.x = x_1011;
    let x_1014 : i32 = u_xlati2.y;
    if ((x_1014 != 0i)) {
      let x_1020 : f32 = u_xlat3.y;
      x_1016 = x_1020;
    } else {
      let x_1023 : f32 = u_xlat33.y;
      x_1016 = x_1023;
    }
    let x_1024 : f32 = x_1016;
    u_xlat14.y = x_1024;
    let x_1027 : i32 = u_xlati2.x;
    if ((x_1027 != 0i)) {
      let x_1033 : f32 = u_xlat33.x;
      x_1029 = x_1033;
    } else {
      let x_1036 : f32 = u_xlat3.x;
      x_1029 = x_1036;
    }
    let x_1037 : f32 = x_1029;
    u_xlat4.x = x_1037;
    let x_1040 : i32 = u_xlati2.y;
    if ((x_1040 != 0i)) {
      let x_1046 : f32 = u_xlat33.y;
      x_1042 = x_1046;
    } else {
      let x_1049 : f32 = u_xlat3.y;
      x_1042 = x_1049;
    }
    let x_1050 : f32 = x_1042;
    u_xlat4.y = x_1050;
    let x_1052 : vec2<f32> = u_xlat14;
    let x_1053 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1052.x, x_1052.y, x_1053.z, x_1053.w);
    let x_1056 : bool = u_xlatb7.x;
    if (x_1056) {
      let x_1061 : f32 = u_xlat34.x;
      x_1057 = x_1061;
    } else {
      let x_1064 : f32 = u_xlat4.x;
      x_1057 = x_1064;
    }
    let x_1065 : f32 = x_1057;
    u_xlat35.x = x_1065;
    let x_1068 : bool = u_xlatb7.y;
    if (x_1068) {
      let x_1073 : f32 = u_xlat34.y;
      x_1069 = x_1073;
    } else {
      let x_1076 : f32 = u_xlat4.y;
      x_1069 = x_1076;
    }
    let x_1077 : f32 = x_1069;
    u_xlat35.y = x_1077;
    let x_1079 : vec2<f32> = u_xlat30;
    let x_1080 : vec2<f32> = u_xlat35;
    u_xlat30 = (x_1079 + x_1080);
    let x_1082 : vec2<f32> = u_xlat30;
    let x_1084 : vec4<f32> = u_xlat8;
    u_xlat30 = ((x_1082 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1084.x, x_1084.y));
    let x_1087 : vec4<f32> = u_xlat3;
    let x_1089 : vec2<f32> = u_xlat30;
    u_xlat30 = (vec2<f32>(x_1087.x, x_1087.y) + x_1089);
    let x_1091 : vec4<f32> = u_xlat4;
    let x_1093 : vec2<f32> = u_xlat30;
    u_xlat30 = (vec2<f32>(x_1091.x, x_1091.y) + x_1093);
    let x_1095 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_1095 * vec2<f32>(0.25f, 0.25f));
    let x_1098 : i32 = u_xlati1.x;
    let x_1100 : f32 = u_xlat30.x;
    TGSM2[x_1098].value[0i] = bitcast<u32>(x_1100);
    let x_1104 : i32 = u_xlati1.x;
    let x_1106 : f32 = u_xlat30.y;
    TGSM2[x_1104].value[1i] = bitcast<u32>(x_1106);
    let x_1110 : bool = u_xlatb6.z;
    if (x_1110) {
      let x_1115 : f32 = u_xlat32.x;
      x_1111 = x_1115;
    } else {
      let x_1118 : f32 = u_xlat2.x;
      x_1111 = x_1118;
    }
    let x_1119 : f32 = x_1111;
    u_xlat30.x = x_1119;
    let x_1122 : bool = u_xlatb6.w;
    if (x_1122) {
      let x_1127 : f32 = u_xlat32.y;
      x_1123 = x_1127;
    } else {
      let x_1130 : f32 = u_xlat2.y;
      x_1123 = x_1130;
    }
    let x_1131 : f32 = x_1123;
    u_xlat30.y = x_1131;
    let x_1134 : vec2<bool> = u_xlatb7;
    let x_1138 : vec2<bool> = u_xlatb31;
    u_xlati32 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1134) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1138) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1144 : vec2<i32> = u_xlati32;
    u_xlati32 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1144) & vec2<u32>(1u, 1u)));
    let x_1149 : i32 = u_xlati32.x;
    if ((x_1149 != 0i)) {
      let x_1155 : f32 = u_xlat34.x;
      x_1151 = x_1155;
    } else {
      let x_1158 : f32 = u_xlat33.x;
      x_1151 = x_1158;
    }
    let x_1159 : f32 = x_1151;
    u_xlat32.x = x_1159;
    let x_1162 : i32 = u_xlati32.y;
    if ((x_1162 != 0i)) {
      let x_1168 : f32 = u_xlat34.y;
      x_1164 = x_1168;
    } else {
      let x_1171 : f32 = u_xlat33.y;
      x_1164 = x_1171;
    }
    let x_1172 : f32 = x_1164;
    u_xlat32.y = x_1172;
    let x_1175 : bool = u_xlatb31.x;
    if (x_1175) {
      let x_1180 : f32 = u_xlat5.x;
      x_1176 = x_1180;
    } else {
      let x_1183 : f32 = u_xlat32.x;
      x_1176 = x_1183;
    }
    let x_1184 : f32 = x_1176;
    u_xlat1.x = x_1184;
    let x_1187 : bool = u_xlatb31.y;
    if (x_1187) {
      let x_1192 : f32 = u_xlat5.y;
      x_1188 = x_1192;
    } else {
      let x_1195 : f32 = u_xlat32.y;
      x_1188 = x_1195;
    }
    let x_1196 : f32 = x_1188;
    u_xlat1.z = x_1196;
    let x_1198 : vec2<f32> = u_xlat30;
    let x_1199 : vec4<f32> = u_xlat1;
    u_xlat30 = (x_1198 + vec2<f32>(x_1199.x, x_1199.z));
    let x_1202 : vec2<f32> = u_xlat30;
    let x_1204 : vec4<f32> = u_xlat2;
    u_xlat30 = ((x_1202 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1204.x, x_1204.y));
    let x_1207 : vec2<f32> = u_xlat33;
    let x_1208 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_1207 + x_1208);
    let x_1210 : vec2<f32> = u_xlat32;
    let x_1211 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_1210 + x_1211);
    let x_1213 : vec2<f32> = u_xlat30;
    u_xlat30 = (x_1213 * vec2<f32>(0.25f, 0.25f));
    let x_1216 : i32 = u_xlati1.y;
    let x_1218 : f32 = u_xlat30.x;
    TGSM2[x_1216].value[0i] = bitcast<u32>(x_1218);
    let x_1222 : i32 = u_xlati1.y;
    let x_1224 : f32 = u_xlat30.y;
    TGSM2[x_1222].value[1i] = bitcast<u32>(x_1224);
  }
  workgroupBarrier();
  let x_1228 : bool = u_xlatb0.y;
  if (x_1228) {
    let x_1231 : u32 = gl_LocalInvocationIndex;
    u_xlatu0 = (x_1231 / 9u);
    let x_1234 : u32 = gl_LocalInvocationIndex;
    u_xlatu1 = (x_1234 % 9u);
    let x_1236 : u32 = u_xlatu0;
    let x_1239 : u32 = u_xlatu1;
    u_xlati0.x = ((bitcast<i32>(x_1236) * 32i) + bitcast<i32>(x_1239));
    let x_1244 : i32 = u_xlati0.x;
    let x_1246 : u32 = TGSM2[x_1244].value[0i];
    let x_1249 : i32 = u_xlati0.x;
    let x_1251 : u32 = TGSM2[x_1249].value[1i];
    u_xlat15 = vec2<f32>(bitcast<f32>(x_1246), bitcast<f32>(x_1251));
    let x_1255 : i32 = u_xlati0.x;
    u_xlati45 = (x_1255 + 16i);
    let x_1257 : i32 = u_xlati45;
    let x_1259 : u32 = TGSM2[x_1257].value[0i];
    let x_1261 : i32 = u_xlati45;
    let x_1263 : u32 = TGSM2[x_1261].value[1i];
    let x_1265 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1259), bitcast<f32>(x_1263));
    let x_1266 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1265.x, x_1265.y, x_1266.z, x_1266.w);
    let x_1268 : vec4<i32> = u_xlati0;
    u_xlati2 = (vec4<i32>(x_1268.x, x_1268.x, x_1268.x, x_1268.x) + vec4<i32>(32i, 48i, 64i, 80i));
    let x_1276 : i32 = u_xlati2.x;
    let x_1278 : u32 = TGSM2[x_1276].value[0i];
    let x_1281 : i32 = u_xlati2.x;
    let x_1283 : u32 = TGSM2[x_1281].value[1i];
    u_xlat31 = vec2<f32>(bitcast<f32>(x_1278), bitcast<f32>(x_1283));
    let x_1287 : i32 = u_xlati2.y;
    let x_1289 : u32 = TGSM2[x_1287].value[0i];
    let x_1292 : i32 = u_xlati2.y;
    let x_1294 : u32 = TGSM2[x_1292].value[1i];
    let x_1296 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1289), bitcast<f32>(x_1294));
    let x_1297 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1296.x, x_1296.y, x_1297.z, x_1297.w);
    let x_1300 : i32 = u_xlati2.z;
    let x_1302 : u32 = TGSM2[x_1300].value[0i];
    let x_1305 : i32 = u_xlati2.z;
    let x_1307 : u32 = TGSM2[x_1305].value[1i];
    let x_1309 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1302), bitcast<f32>(x_1307));
    let x_1310 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1309.x, x_1309.y, x_1310.z, x_1310.w);
    let x_1313 : i32 = u_xlati2.w;
    let x_1315 : u32 = TGSM2[x_1313].value[0i];
    let x_1318 : i32 = u_xlati2.w;
    let x_1320 : u32 = TGSM2[x_1318].value[1i];
    u_xlat32 = vec2<f32>(bitcast<f32>(x_1315), bitcast<f32>(x_1320));
    let x_1323 : vec4<i32> = u_xlati0;
    u_xlati4 = (vec4<i32>(x_1323.x, x_1323.x, x_1323.x, x_1323.x) + vec4<i32>(2i, 18i, 34i, 50i));
    let x_1331 : i32 = u_xlati4.x;
    let x_1333 : u32 = TGSM0[x_1331].value[0i];
    let x_1336 : i32 = u_xlati4.x;
    let x_1338 : u32 = TGSM0[x_1336].value[1i];
    u_xlat33 = vec2<f32>(bitcast<f32>(x_1333), bitcast<f32>(x_1338));
    let x_1342 : i32 = u_xlati4.y;
    let x_1344 : u32 = TGSM0[x_1342].value[0i];
    let x_1347 : i32 = u_xlati4.y;
    let x_1349 : u32 = TGSM0[x_1347].value[1i];
    let x_1351 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1344), bitcast<f32>(x_1349));
    let x_1352 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1351.x, x_1351.y, x_1352.z, x_1352.w);
    let x_1355 : i32 = u_xlati4.z;
    let x_1357 : u32 = TGSM0[x_1355].value[0i];
    let x_1360 : i32 = u_xlati4.z;
    let x_1362 : u32 = TGSM0[x_1360].value[1i];
    let x_1364 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1357), bitcast<f32>(x_1362));
    let x_1365 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1364.x, x_1364.y, x_1365.z, x_1365.w);
    let x_1368 : i32 = u_xlati4.w;
    let x_1370 : u32 = TGSM0[x_1368].value[0i];
    let x_1373 : i32 = u_xlati4.w;
    let x_1375 : u32 = TGSM0[x_1373].value[1i];
    u_xlat34 = vec2<f32>(bitcast<f32>(x_1370), bitcast<f32>(x_1375));
    let x_1378 : vec4<i32> = u_xlati0;
    u_xlati35 = (vec2<i32>(x_1378.x, x_1378.x) + vec2<i32>(66i, 82i));
    let x_1385 : i32 = u_xlati35.x;
    let x_1387 : u32 = TGSM0[x_1385].value[0i];
    let x_1390 : i32 = u_xlati35.x;
    let x_1392 : u32 = TGSM0[x_1390].value[1i];
    let x_1394 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1387), bitcast<f32>(x_1392));
    let x_1395 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1394.x, x_1394.y, x_1395.z, x_1395.w);
    let x_1398 : i32 = u_xlati35.y;
    let x_1400 : u32 = TGSM0[x_1398].value[0i];
    let x_1403 : i32 = u_xlati35.y;
    let x_1405 : u32 = TGSM0[x_1403].value[1i];
    u_xlat35 = vec2<f32>(bitcast<f32>(x_1400), bitcast<f32>(x_1405));
    let x_1408 : vec2<f32> = u_xlat33;
    let x_1410 : vec4<f32> = u_xlat4;
    u_xlat33 = (-(x_1408) + vec2<f32>(x_1410.x, x_1410.y));
    let x_1413 : vec4<f32> = u_xlat4;
    let x_1416 : vec4<f32> = u_xlat5;
    let x_1418 : vec2<f32> = (-(vec2<f32>(x_1413.x, x_1413.y)) + vec2<f32>(x_1416.x, x_1416.y));
    let x_1419 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1418.x, x_1418.y, x_1419.z, x_1419.w);
    let x_1421 : vec4<f32> = u_xlat5;
    let x_1424 : vec2<f32> = u_xlat34;
    let x_1425 : vec2<f32> = (-(vec2<f32>(x_1421.x, x_1421.y)) + x_1424);
    let x_1426 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1425.x, x_1425.y, x_1426.z, x_1426.w);
    let x_1428 : vec2<f32> = u_xlat34;
    let x_1430 : vec4<f32> = u_xlat6;
    u_xlat34 = (-(x_1428) + vec2<f32>(x_1430.x, x_1430.y));
    let x_1433 : vec4<f32> = u_xlat6;
    let x_1436 : vec2<f32> = u_xlat35;
    u_xlat35 = (-(vec2<f32>(x_1433.x, x_1433.y)) + x_1436);
    let x_1438 : vec2<f32> = u_xlat33;
    let x_1439 : vec2<f32> = u_xlat33;
    let x_1442 : vec4<f32> = x_66.AdditionalParams;
    let x_1444 : vec2<f32> = ((x_1438 * x_1439) + vec2<f32>(x_1442.y, x_1442.y));
    let x_1445 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1444.x, x_1444.y, x_1445.z, x_1445.w);
    let x_1447 : vec4<f32> = u_xlat4;
    let x_1449 : vec4<f32> = u_xlat4;
    let x_1453 : vec4<f32> = x_66.AdditionalParams;
    u_xlat36 = ((vec2<f32>(x_1447.x, x_1447.y) * vec2<f32>(x_1449.x, x_1449.y)) + vec2<f32>(x_1453.y, x_1453.y));
    let x_1456 : vec4<f32> = u_xlat5;
    let x_1458 : vec4<f32> = u_xlat5;
    let x_1462 : vec4<f32> = x_66.AdditionalParams;
    let x_1464 : vec2<f32> = ((vec2<f32>(x_1456.x, x_1456.y) * vec2<f32>(x_1458.x, x_1458.y)) + vec2<f32>(x_1462.y, x_1462.y));
    let x_1465 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1464.x, x_1464.y, x_1465.z, x_1465.w);
    let x_1467 : vec2<f32> = u_xlat34;
    let x_1468 : vec2<f32> = u_xlat34;
    let x_1471 : vec4<f32> = x_66.AdditionalParams;
    u_xlat37 = ((x_1467 * x_1468) + vec2<f32>(x_1471.y, x_1471.y));
    let x_1474 : vec2<f32> = u_xlat35;
    let x_1475 : vec2<f32> = u_xlat35;
    let x_1478 : vec4<f32> = x_66.AdditionalParams;
    let x_1480 : vec2<f32> = ((x_1474 * x_1475) + vec2<f32>(x_1478.y, x_1478.y));
    let x_1481 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1480.x, x_1480.y, x_1481.z, x_1481.w);
    let x_1483 : vec2<f32> = u_xlat33;
    let x_1484 : vec4<f32> = u_xlat4;
    let x_1488 : vec4<f32> = x_66.AdditionalParams;
    u_xlat33 = ((x_1483 * vec2<f32>(x_1484.x, x_1484.y)) + vec2<f32>(x_1488.y, x_1488.y));
    let x_1491 : vec2<f32> = u_xlat33;
    let x_1492 : vec2<f32> = u_xlat33;
    u_xlat33 = (x_1491 * x_1492);
    let x_1494 : vec2<f32> = u_xlat36;
    let x_1495 : vec4<f32> = u_xlat6;
    let x_1497 : vec2<f32> = (x_1494 * vec2<f32>(x_1495.x, x_1495.y));
    let x_1498 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1497.x, x_1497.y, x_1498.z, x_1498.w);
    let x_1500 : vec4<f32> = u_xlat4;
    let x_1502 : vec4<f32> = u_xlat5;
    let x_1506 : vec4<f32> = x_66.AdditionalParams;
    let x_1508 : vec2<f32> = ((vec2<f32>(x_1500.x, x_1500.y) * vec2<f32>(x_1502.x, x_1502.y)) + vec2<f32>(x_1506.y, x_1506.y));
    let x_1509 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1508.x, x_1508.y, x_1509.z, x_1509.w);
    let x_1511 : vec2<f32> = u_xlat36;
    let x_1512 : vec4<f32> = u_xlat7;
    let x_1514 : vec2<f32> = (x_1511 * vec2<f32>(x_1512.x, x_1512.y));
    let x_1515 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1515.x, x_1515.y, x_1514.x, x_1514.y);
    let x_1517 : vec4<f32> = u_xlat6;
    let x_1519 : vec4<f32> = x_66.AdditionalParams;
    u_xlat6 = (x_1517 * vec4<f32>(x_1519.z, x_1519.z, x_1519.z, x_1519.z));
    let x_1522 : vec4<f32> = u_xlat5;
    let x_1524 : vec2<f32> = u_xlat34;
    let x_1527 : vec4<f32> = x_66.AdditionalParams;
    let x_1529 : vec2<f32> = ((vec2<f32>(x_1522.x, x_1522.y) * x_1524) + vec2<f32>(x_1527.y, x_1527.y));
    let x_1530 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1529.x, x_1529.y, x_1530.z, x_1530.w);
    let x_1532 : vec4<f32> = u_xlat5;
    let x_1534 : vec4<f32> = u_xlat5;
    let x_1536 : vec2<f32> = (vec2<f32>(x_1532.x, x_1532.y) * vec2<f32>(x_1534.x, x_1534.y));
    let x_1537 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1536.x, x_1536.y, x_1537.z, x_1537.w);
    let x_1539 : vec2<f32> = u_xlat37;
    let x_1540 : vec4<f32> = u_xlat7;
    let x_1542 : vec2<f32> = (x_1539 * vec2<f32>(x_1540.x, x_1540.y));
    let x_1543 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1542.x, x_1542.y, x_1543.z, x_1543.w);
    let x_1545 : vec4<f32> = u_xlat7;
    let x_1548 : vec4<f32> = x_66.AdditionalParams;
    let x_1550 : vec2<f32> = (vec2<f32>(x_1545.x, x_1545.y) * vec2<f32>(x_1548.z, x_1548.z));
    let x_1551 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1550.x, x_1550.y, x_1551.z, x_1551.w);
    let x_1553 : vec2<f32> = u_xlat34;
    let x_1554 : vec2<f32> = u_xlat35;
    let x_1557 : vec4<f32> = x_66.AdditionalParams;
    let x_1559 : vec2<f32> = ((x_1553 * x_1554) + vec2<f32>(x_1557.y, x_1557.y));
    let x_1560 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1560.x, x_1560.y, x_1559.x, x_1559.y);
    let x_1562 : vec4<f32> = u_xlat4;
    let x_1563 : vec4<f32> = u_xlat4;
    u_xlat4 = (x_1562 * x_1563);
    let x_1565 : vec2<f32> = u_xlat37;
    let x_1566 : vec4<f32> = u_xlat8;
    u_xlat35 = (x_1565 * vec2<f32>(x_1566.x, x_1566.y));
    let x_1569 : vec2<f32> = u_xlat35;
    let x_1571 : vec4<f32> = x_66.AdditionalParams;
    u_xlat35 = (x_1569 * vec2<f32>(x_1571.z, x_1571.z));
    let x_1575 : vec4<f32> = u_xlat6;
    let x_1577 : vec2<f32> = u_xlat33;
    let x_1579 : vec4<bool> = (vec4<f32>(x_1575.x, x_1575.y, x_1575.x, x_1575.y) < vec4<f32>(x_1577.x, x_1577.y, x_1577.x, x_1577.y));
    u_xlatb33 = vec2<bool>(x_1579.x, x_1579.y);
    let x_1582 : vec4<f32> = u_xlat6;
    let x_1584 : vec4<f32> = u_xlat4;
    let x_1586 : vec4<bool> = (vec4<f32>(x_1582.z, x_1582.w, x_1582.z, x_1582.z) < vec4<f32>(x_1584.x, x_1584.y, x_1584.x, x_1584.x));
    u_xlatb4 = vec2<bool>(x_1586.x, x_1586.y);
    let x_1589 : vec4<f32> = u_xlat7;
    let x_1591 : vec4<f32> = u_xlat5;
    let x_1593 : vec4<bool> = (vec4<f32>(x_1589.x, x_1589.y, x_1589.x, x_1589.x) < vec4<f32>(x_1591.x, x_1591.y, x_1591.x, x_1591.x));
    u_xlatb5 = vec2<bool>(x_1593.x, x_1593.y);
    let x_1596 : vec2<f32> = u_xlat35;
    let x_1598 : vec4<f32> = u_xlat4;
    let x_1600 : vec4<bool> = (vec4<f32>(x_1596.x, x_1596.y, x_1596.x, x_1596.y) < vec4<f32>(x_1598.z, x_1598.w, x_1598.z, x_1598.w));
    u_xlatb34 = vec2<bool>(x_1600.x, x_1600.y);
    let x_1602 : vec2<bool> = u_xlatb33;
    let x_1606 : vec2<bool> = u_xlatb4;
    u_xlati35 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1602) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1606) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1612 : vec2<i32> = u_xlati35;
    u_xlati35 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1612) & vec2<u32>(1u, 1u)));
    let x_1617 : i32 = u_xlati35.x;
    if ((x_1617 != 0i)) {
      let x_1623 : f32 = u_xlat1.x;
      x_1619 = x_1623;
    } else {
      let x_1626 : f32 = u_xlat31.x;
      x_1619 = x_1626;
    }
    let x_1627 : f32 = x_1619;
    u_xlat35.x = x_1627;
    let x_1630 : i32 = u_xlati35.y;
    if ((x_1630 != 0i)) {
      let x_1636 : f32 = u_xlat1.y;
      x_1632 = x_1636;
    } else {
      let x_1639 : f32 = u_xlat31.y;
      x_1632 = x_1639;
    }
    let x_1640 : f32 = x_1632;
    u_xlat35.y = x_1640;
    let x_1643 : vec2<f32> = u_xlat15;
    hlslcc_movcTemp_1 = x_1643;
    let x_1645 : bool = u_xlatb33.x;
    if (x_1645) {
      let x_1650 : f32 = u_xlat15.x;
      x_1646 = x_1650;
    } else {
      let x_1653 : f32 = u_xlat35.x;
      x_1646 = x_1653;
    }
    let x_1654 : f32 = x_1646;
    hlslcc_movcTemp_1.x = x_1654;
    let x_1657 : bool = u_xlatb33.y;
    if (x_1657) {
      let x_1662 : f32 = u_xlat15.y;
      x_1658 = x_1662;
    } else {
      let x_1665 : f32 = u_xlat35.y;
      x_1658 = x_1665;
    }
    let x_1666 : f32 = x_1658;
    hlslcc_movcTemp_1.y = x_1666;
    let x_1668 : vec2<f32> = hlslcc_movcTemp_1;
    u_xlat15 = x_1668;
    let x_1670 : vec2<bool> = u_xlatb4;
    let x_1674 : vec2<bool> = u_xlatb5;
    u_xlati33 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1670) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1674) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1680 : vec2<i32> = u_xlati33;
    u_xlati33 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1680) & vec2<u32>(1u, 1u)));
    let x_1685 : i32 = u_xlati33.x;
    if ((x_1685 != 0i)) {
      let x_1691 : f32 = u_xlat31.x;
      x_1687 = x_1691;
    } else {
      let x_1694 : f32 = u_xlat2.x;
      x_1687 = x_1694;
    }
    let x_1695 : f32 = x_1687;
    u_xlat14.x = x_1695;
    let x_1698 : i32 = u_xlati33.y;
    if ((x_1698 != 0i)) {
      let x_1704 : f32 = u_xlat31.y;
      x_1700 = x_1704;
    } else {
      let x_1707 : f32 = u_xlat2.y;
      x_1700 = x_1707;
    }
    let x_1708 : f32 = x_1700;
    u_xlat14.y = x_1708;
    let x_1711 : i32 = u_xlati33.x;
    if ((x_1711 != 0i)) {
      let x_1717 : f32 = u_xlat2.x;
      x_1713 = x_1717;
    } else {
      let x_1720 : f32 = u_xlat31.x;
      x_1713 = x_1720;
    }
    let x_1721 : f32 = x_1713;
    u_xlat7.x = x_1721;
    let x_1724 : i32 = u_xlati33.y;
    if ((x_1724 != 0i)) {
      let x_1730 : f32 = u_xlat2.y;
      x_1726 = x_1730;
    } else {
      let x_1733 : f32 = u_xlat31.y;
      x_1726 = x_1733;
    }
    let x_1734 : f32 = x_1726;
    u_xlat7.y = x_1734;
    let x_1736 : vec2<f32> = u_xlat14;
    let x_1737 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1736.x, x_1736.y, x_1737.z, x_1737.w);
    let x_1740 : bool = u_xlatb5.x;
    if (x_1740) {
      let x_1745 : f32 = u_xlat3.x;
      x_1741 = x_1745;
    } else {
      let x_1748 : f32 = u_xlat7.x;
      x_1741 = x_1748;
    }
    let x_1749 : f32 = x_1741;
    u_xlat33.x = x_1749;
    let x_1752 : bool = u_xlatb5.y;
    if (x_1752) {
      let x_1757 : f32 = u_xlat3.y;
      x_1753 = x_1757;
    } else {
      let x_1760 : f32 = u_xlat7.y;
      x_1753 = x_1760;
    }
    let x_1761 : f32 = x_1753;
    u_xlat33.y = x_1761;
    let x_1763 : vec2<f32> = u_xlat15;
    let x_1764 : vec2<f32> = u_xlat33;
    u_xlat15 = (x_1763 + x_1764);
    let x_1766 : vec2<f32> = u_xlat15;
    let x_1768 : vec2<f32> = u_xlat35;
    u_xlat15 = ((x_1766 * vec2<f32>(0.5f, 0.5f)) + x_1768);
    let x_1770 : vec2<f32> = u_xlat31;
    let x_1771 : vec2<f32> = u_xlat15;
    u_xlat15 = (x_1770 + x_1771);
    let x_1773 : vec4<f32> = u_xlat7;
    let x_1775 : vec2<f32> = u_xlat15;
    u_xlat15 = (vec2<f32>(x_1773.x, x_1773.y) + x_1775);
    let x_1777 : vec2<f32> = u_xlat15;
    u_xlat15 = (x_1777 * vec2<f32>(0.25f, 0.25f));
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
    let x_1811 : vec2<bool> = u_xlatb34;
    u_xlati31 = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1807) * vec2<u32>(4294967295u, 4294967295u)) | (select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), x_1811) * vec2<u32>(4294967295u, 4294967295u))));
    let x_1817 : vec2<i32> = u_xlati31;
    u_xlati31 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_1817) & vec2<u32>(1u, 1u)));
    let x_1822 : i32 = u_xlati31.x;
    if ((x_1822 != 0i)) {
      let x_1828 : f32 = u_xlat3.x;
      x_1824 = x_1828;
    } else {
      let x_1831 : f32 = u_xlat2.x;
      x_1824 = x_1831;
    }
    let x_1832 : f32 = x_1824;
    u_xlat31.x = x_1832;
    let x_1835 : i32 = u_xlati31.y;
    if ((x_1835 != 0i)) {
      let x_1841 : f32 = u_xlat3.y;
      x_1837 = x_1841;
    } else {
      let x_1844 : f32 = u_xlat2.y;
      x_1837 = x_1844;
    }
    let x_1845 : f32 = x_1837;
    u_xlat31.y = x_1845;
    let x_1848 : vec2<f32> = u_xlat32;
    hlslcc_movcTemp_3 = x_1848;
    let x_1850 : bool = u_xlatb34.x;
    if (x_1850) {
      let x_1855 : f32 = u_xlat32.x;
      x_1851 = x_1855;
    } else {
      let x_1858 : f32 = u_xlat31.x;
      x_1851 = x_1858;
    }
    let x_1859 : f32 = x_1851;
    hlslcc_movcTemp_3.x = x_1859;
    let x_1862 : bool = u_xlatb34.y;
    if (x_1862) {
      let x_1867 : f32 = u_xlat32.y;
      x_1863 = x_1867;
    } else {
      let x_1870 : f32 = u_xlat31.y;
      x_1863 = x_1870;
    }
    let x_1871 : f32 = x_1863;
    hlslcc_movcTemp_3.y = x_1871;
    let x_1873 : vec2<f32> = hlslcc_movcTemp_3;
    u_xlat32 = x_1873;
    let x_1874 : vec4<f32> = u_xlat1;
    let x_1876 : vec2<f32> = u_xlat32;
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
    let x_1895 : vec2<f32> = u_xlat31;
    let x_1896 : vec4<f32> = u_xlat1;
    let x_1898 : vec2<f32> = (x_1895 + vec2<f32>(x_1896.x, x_1896.y));
    let x_1899 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1898.x, x_1898.y, x_1899.z, x_1899.w);
    let x_1901 : vec4<f32> = u_xlat1;
    let x_1903 : vec2<f32> = (vec2<f32>(x_1901.x, x_1901.y) * vec2<f32>(0.25f, 0.25f));
    let x_1904 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1903.x, x_1903.y, x_1904.z, x_1904.w);
    let x_1907 : i32 = u_xlati0.x;
    let x_1909 : f32 = u_xlat15.x;
    TGSM1[x_1907].value[0i] = bitcast<u32>(x_1909);
    let x_1913 : i32 = u_xlati0.x;
    let x_1915 : f32 = u_xlat15.y;
    TGSM1[x_1913].value[1i] = bitcast<u32>(x_1915);
    let x_1918 : i32 = u_xlati45;
    let x_1920 : f32 = u_xlat1.x;
    TGSM1[x_1918].value[0i] = bitcast<u32>(x_1920);
    let x_1923 : i32 = u_xlati45;
    let x_1925 : f32 = u_xlat1.y;
    TGSM1[x_1923].value[1i] = bitcast<u32>(x_1925);
  }
  workgroupBarrier();
  let x_1929 : u32 = gl_LocalInvocationID.y;
  let x_1933 : u32 = gl_LocalInvocationID.x;
  u_xlati0.x = ((bitcast<i32>(x_1929) * 16i) + bitcast<i32>(x_1933));
  let x_1937 : vec4<i32> = u_xlati0;
  u_xlati15 = (vec3<i32>(x_1937.x, x_1937.x, x_1937.x) + vec3<i32>(16i, 17i, 1i));
  let x_1942 : i32 = u_xlati15.x;
  let x_1944 : u32 = TGSM1[x_1942].value[0i];
  let x_1947 : i32 = u_xlati15.x;
  let x_1949 : u32 = TGSM1[x_1947].value[1i];
  let x_1951 : vec2<f32> = vec2<f32>(bitcast<f32>(x_1944), bitcast<f32>(x_1949));
  let x_1952 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1951.x, x_1951.y, x_1952.z, x_1952.w);
  let x_1955 : i32 = u_xlati15.y;
  let x_1957 : u32 = TGSM1[x_1955].value[0i];
  let x_1960 : i32 = u_xlati15.y;
  let x_1962 : u32 = TGSM1[x_1960].value[1i];
  u_xlat15 = vec2<f32>(bitcast<f32>(x_1957), bitcast<f32>(x_1962));
  let x_1966 : i32 = u_xlati15.z;
  let x_1968 : u32 = TGSM1[x_1966].value[0i];
  let x_1971 : i32 = u_xlati15.z;
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
  u_xlatu3 = (vec4<u32>(x_2007.x, x_2007.y, x_2007.y, x_2007.y) << vec4<u32>(1u, 1u, 1u, 1u));
  let x_2011 : vec4<u32> = u_xlatu3;
  let x_2013 : vec2<f32> = vec2<f32>(vec2<u32>(x_2011.x, x_2011.w));
  let x_2014 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2013.x, x_2013.y, x_2014.z, x_2014.w);
  let x_2016 : vec4<f32> = u_xlat4;
  let x_2019 : vec4<f32> = x_66.InvHighResolution;
  let x_2021 : vec2<f32> = (vec2<f32>(x_2016.x, x_2016.y) * vec2<f32>(x_2019.x, x_2019.y));
  let x_2022 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2021.x, x_2021.y, x_2022.z, x_2022.w);
  let x_2029 : vec4<f32> = u_xlat4;
  let x_2031 : vec4<f32> = textureGather(0i, HiResAO, samplerHiResAO, vec2<f32>(x_2029.x, x_2029.y));
  u_xlat5 = x_2031;
  let x_2035 : vec4<f32> = u_xlat4;
  let x_2037 : vec4<f32> = textureGather(1i, HiResAO, samplerHiResAO, vec2<f32>(x_2035.x, x_2035.y));
  u_xlat6 = x_2037;
  let x_2041 : vec4<f32> = u_xlat0;
  let x_2043 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, vec2<f32>(x_2041.x, x_2041.w));
  u_xlat7 = x_2043;
  let x_2047 : vec4<f32> = u_xlat0;
  let x_2049 : vec4<f32> = textureGather(1i, LoResDB, samplerLoResDB, vec2<f32>(x_2047.x, x_2047.w));
  u_xlat8 = x_2049;
  let x_2055 : vec4<f32> = u_xlat4;
  let x_2057 : vec4<f32> = textureGather(0i, HiResDB, samplerHiResDB, vec2<f32>(x_2055.x, x_2055.y));
  u_xlat9 = x_2057;
  let x_2061 : vec4<f32> = u_xlat4;
  let x_2063 : vec4<f32> = textureGather(1i, HiResDB, samplerHiResDB, vec2<f32>(x_2061.x, x_2061.y));
  u_xlat4 = x_2063;
  let x_2065 : vec4<u32> = u_xlatu3;
  u_xlati10 = (bitcast<vec4<i32>>(vec4<u32>(x_2065.x, x_2065.w, x_2065.x, x_2065.w)) + vec4<i32>(-1i, 0i, 0i, -1i));
  let x_2072 : vec4<f32> = u_xlat7;
  let x_2074 : vec4<f32> = u_xlat9;
  u_xlat11 = (-(x_2072) + vec4<f32>(x_2074.x, x_2074.x, x_2074.x, x_2074.x));
  let x_2077 : vec4<f32> = u_xlat11;
  let x_2080 : vec4<f32> = x_66.AdditionalParams;
  u_xlat11 = (abs(x_2077) + vec4<f32>(x_2080.w, x_2080.w, x_2080.w, x_2080.w));
  let x_2086 : vec4<f32> = u_xlat11;
  u_xlat11 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2086);
  let x_2088 : vec4<f32> = u_xlat11;
  u_xlat0.x = dot(x_2088, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2093 : f32 = u_xlat15.x;
  u_xlat12.z = x_2093;
  let x_2095 : vec4<f32> = u_xlat1;
  let x_2096 : vec2<f32> = vec2<f32>(x_2095.x, x_2095.z);
  let x_2097 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_2097.x, x_2096.x, x_2097.z, x_2096.y);
  let x_2100 : f32 = u_xlat2.y;
  u_xlat12.x = x_2100;
  let x_2102 : vec4<f32> = u_xlat12;
  let x_2104 : vec4<f32> = u_xlat11;
  u_xlat0.y = dot(vec4<f32>(x_2102.y, x_2102.z, x_2102.w, x_2102.x), x_2104);
  let x_2107 : vec4<f32> = u_xlat0;
  let x_2110 : vec4<f32> = x_66.AdditionalParams;
  let x_2112 : vec2<f32> = (vec2<f32>(x_2107.x, x_2107.y) + vec2<f32>(x_2110.x, x_2110.x));
  let x_2113 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2112.x, x_2112.y, x_2113.z, x_2113.w);
  let x_2116 : f32 = u_xlat0.y;
  let x_2118 : f32 = u_xlat5.x;
  u_xlat15.x = (x_2116 * x_2118);
  let x_2122 : vec2<f32> = u_xlat15;
  let x_2124 : vec4<f32> = u_xlat0;
  let x_2126 : vec3<f32> = (vec3<f32>(x_2122.x, x_2122.x, x_2122.x) / vec3<f32>(x_2124.x, x_2124.x, x_2124.x));
  let x_2127 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_2126.x, x_2127.y, x_2126.y, x_2126.z);
  let x_2130 : vec4<f32> = u_xlat8;
  let x_2132 : vec4<f32> = u_xlat4;
  u_xlat13 = (-(x_2130) + vec4<f32>(x_2132.x, x_2132.x, x_2132.x, x_2132.x));
  let x_2135 : vec4<f32> = u_xlat13;
  let x_2138 : vec4<f32> = x_66.AdditionalParams;
  u_xlat13 = (abs(x_2135) + vec4<f32>(x_2138.w, x_2138.w, x_2138.w, x_2138.w));
  let x_2141 : vec4<f32> = u_xlat13;
  u_xlat13 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2141);
  let x_2143 : vec4<f32> = u_xlat13;
  u_xlat0.x = dot(x_2143, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2147 : f32 = u_xlat15.y;
  u_xlat2.z = x_2147;
  let x_2149 : vec4<f32> = u_xlat1;
  let x_2150 : vec2<f32> = vec2<f32>(x_2149.y, x_2149.w);
  let x_2151 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2151.x, x_2150.x, x_2151.z, x_2150.y);
  let x_2153 : vec4<f32> = u_xlat2;
  let x_2155 : vec4<f32> = u_xlat13;
  u_xlat0.y = dot(vec4<f32>(x_2153.y, x_2153.z, x_2153.w, x_2153.x), x_2155);
  let x_2158 : vec4<f32> = u_xlat0;
  let x_2161 : vec4<f32> = x_66.AdditionalParams;
  let x_2163 : vec2<f32> = (vec2<f32>(x_2158.x, x_2158.y) + vec2<f32>(x_2161.x, x_2161.x));
  let x_2164 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2163.x, x_2163.y, x_2164.z, x_2164.w);
  let x_2167 : f32 = u_xlat0.y;
  let x_2169 : f32 = u_xlat6.x;
  u_xlat15.x = (x_2167 * x_2169);
  let x_2173 : f32 = u_xlat15.x;
  let x_2175 : f32 = u_xlat0.x;
  u_xlat11.y = (x_2173 / x_2175);
  let x_2182 : vec4<i32> = u_xlati10;
  let x_2184 : vec4<f32> = u_xlat11;
  textureStore(AoResult_origX0X, vec2<i32>(x_2182.x, x_2182.y), x_2184);
  let x_2185 : vec4<f32> = u_xlat7;
  let x_2188 : vec4<f32> = u_xlat9;
  u_xlat0 = (-(vec4<f32>(x_2185.y, x_2185.z, x_2185.w, x_2185.x)) + vec4<f32>(x_2188.y, x_2188.y, x_2188.y, x_2188.y));
  let x_2191 : vec4<f32> = u_xlat0;
  let x_2194 : vec4<f32> = x_66.AdditionalParams;
  u_xlat0 = (abs(x_2191) + vec4<f32>(x_2194.w, x_2194.w, x_2194.w, x_2194.w));
  let x_2197 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2197);
  let x_2199 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_2199, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2203 : f32 = u_xlat1.x;
  let x_2206 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2203 + x_2206);
  let x_2209 : vec4<f32> = u_xlat12;
  let x_2211 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec4<f32>(x_2209.z, x_2209.w, x_2209.x, x_2209.y), x_2211);
  let x_2215 : f32 = u_xlat0.x;
  let x_2217 : f32 = x_66.AdditionalParams.x;
  u_xlat0.x = (x_2215 + x_2217);
  let x_2221 : f32 = u_xlat0.x;
  let x_2223 : f32 = u_xlat5.y;
  u_xlat0.x = (x_2221 * x_2223);
  let x_2226 : vec4<f32> = u_xlat0;
  let x_2228 : vec4<f32> = u_xlat1;
  let x_2230 : vec3<f32> = (vec3<f32>(x_2226.x, x_2226.x, x_2226.x) / vec3<f32>(x_2228.x, x_2228.x, x_2228.x));
  let x_2231 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2230.x, x_2231.y, x_2230.y, x_2230.z);
  let x_2233 : vec4<f32> = u_xlat8;
  let x_2236 : vec4<f32> = u_xlat4;
  u_xlat1 = (-(vec4<f32>(x_2233.y, x_2233.z, x_2233.w, x_2233.x)) + vec4<f32>(x_2236.y, x_2236.y, x_2236.y, x_2236.y));
  let x_2239 : vec4<f32> = u_xlat1;
  let x_2242 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2239) + vec4<f32>(x_2242.w, x_2242.w, x_2242.w, x_2242.w));
  let x_2245 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2245);
  let x_2247 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_2247, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2251 : f32 = u_xlat4.x;
  let x_2253 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2251 + x_2253);
  let x_2256 : vec4<f32> = u_xlat2;
  let x_2258 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec4<f32>(x_2256.z, x_2256.w, x_2256.x, x_2256.y), x_2258);
  let x_2262 : f32 = u_xlat1.x;
  let x_2264 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2262 + x_2264);
  let x_2268 : f32 = u_xlat1.x;
  let x_2270 : f32 = u_xlat6.y;
  u_xlat1.x = (x_2268 * x_2270);
  let x_2274 : f32 = u_xlat1.x;
  let x_2276 : f32 = u_xlat4.x;
  u_xlat0.y = (x_2274 / x_2276);
  let x_2280 : vec4<u32> = u_xlatu3;
  let x_2283 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_2280.x, x_2280.w)), x_2283);
  let x_2284 : vec4<f32> = u_xlat7;
  let x_2287 : vec4<f32> = u_xlat9;
  u_xlat0 = (-(vec4<f32>(x_2284.z, x_2284.w, x_2284.x, x_2284.y)) + vec4<f32>(x_2287.z, x_2287.z, x_2287.z, x_2287.z));
  let x_2290 : vec4<f32> = u_xlat0;
  let x_2293 : vec4<f32> = x_66.AdditionalParams;
  u_xlat0 = (abs(x_2290) + vec4<f32>(x_2293.w, x_2293.w, x_2293.w, x_2293.w));
  let x_2296 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2296);
  let x_2298 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_2298, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2302 : f32 = u_xlat1.x;
  let x_2304 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2302 + x_2304);
  let x_2307 : vec4<f32> = u_xlat12;
  let x_2309 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec4<f32>(x_2307.w, x_2307.x, x_2307.y, x_2307.z), x_2309);
  let x_2313 : f32 = u_xlat0.x;
  let x_2315 : f32 = x_66.AdditionalParams.x;
  u_xlat0.x = (x_2313 + x_2315);
  let x_2319 : f32 = u_xlat0.x;
  let x_2321 : f32 = u_xlat5.z;
  u_xlat0.x = (x_2319 * x_2321);
  let x_2324 : vec4<f32> = u_xlat0;
  let x_2326 : vec4<f32> = u_xlat1;
  let x_2328 : vec3<f32> = (vec3<f32>(x_2324.x, x_2324.x, x_2324.x) / vec3<f32>(x_2326.x, x_2326.x, x_2326.x));
  let x_2329 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2328.x, x_2329.y, x_2328.y, x_2328.z);
  let x_2331 : vec4<f32> = u_xlat8;
  let x_2334 : vec4<f32> = u_xlat4;
  u_xlat1 = (-(vec4<f32>(x_2331.z, x_2331.w, x_2331.x, x_2331.y)) + vec4<f32>(x_2334.z, x_2334.z, x_2334.z, x_2334.z));
  let x_2337 : vec4<f32> = u_xlat1;
  let x_2340 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2337) + vec4<f32>(x_2340.w, x_2340.w, x_2340.w, x_2340.w));
  let x_2343 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2343);
  let x_2345 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_2345, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2349 : f32 = u_xlat4.x;
  let x_2351 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2349 + x_2351);
  let x_2354 : vec4<f32> = u_xlat2;
  let x_2356 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec4<f32>(x_2354.w, x_2354.x, x_2354.y, x_2354.z), x_2356);
  let x_2360 : f32 = u_xlat1.x;
  let x_2362 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2360 + x_2362);
  let x_2366 : f32 = u_xlat1.x;
  let x_2368 : f32 = u_xlat6.z;
  u_xlat1.x = (x_2366 * x_2368);
  let x_2372 : f32 = u_xlat1.x;
  let x_2374 : f32 = u_xlat4.x;
  u_xlat0.y = (x_2372 / x_2374);
  let x_2378 : vec4<i32> = u_xlati10;
  let x_2380 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_2378.z, x_2378.w), x_2380);
  let x_2381 : vec4<u32> = u_xlatu3;
  u_xlati0 = (bitcast<vec4<i32>>(x_2381) + vec4<i32>(-1i, -1i, -1i, -1i));
  let x_2385 : vec4<f32> = u_xlat7;
  let x_2388 : vec4<f32> = u_xlat9;
  u_xlat1 = (-(vec4<f32>(x_2385.w, x_2385.x, x_2385.y, x_2385.z)) + vec4<f32>(x_2388.w, x_2388.w, x_2388.w, x_2388.w));
  let x_2391 : vec4<f32> = u_xlat1;
  let x_2394 : vec4<f32> = x_66.AdditionalParams;
  u_xlat1 = (abs(x_2391) + vec4<f32>(x_2394.w, x_2394.w, x_2394.w, x_2394.w));
  let x_2397 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2397);
  let x_2399 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_2399, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2403 : f32 = u_xlat3.x;
  let x_2405 : f32 = x_66.AdditionalParams.x;
  u_xlat3.x = (x_2403 + x_2405);
  let x_2408 : vec4<f32> = u_xlat12;
  let x_2409 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(x_2408, x_2409);
  let x_2413 : f32 = u_xlat1.x;
  let x_2415 : f32 = x_66.AdditionalParams.x;
  u_xlat1.x = (x_2413 + x_2415);
  let x_2419 : f32 = u_xlat1.x;
  let x_2421 : f32 = u_xlat5.w;
  u_xlat1.x = (x_2419 * x_2421);
  let x_2424 : vec4<f32> = u_xlat1;
  let x_2426 : vec4<f32> = u_xlat3;
  let x_2428 : vec3<f32> = (vec3<f32>(x_2424.x, x_2424.x, x_2424.x) / vec3<f32>(x_2426.x, x_2426.x, x_2426.x));
  let x_2429 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2428.x, x_2429.y, x_2428.y, x_2428.z);
  let x_2431 : vec4<f32> = u_xlat8;
  let x_2434 : vec4<f32> = u_xlat4;
  u_xlat3 = (-(vec4<f32>(x_2431.w, x_2431.x, x_2431.y, x_2431.z)) + vec4<f32>(x_2434.w, x_2434.w, x_2434.w, x_2434.w));
  let x_2437 : vec4<f32> = u_xlat3;
  let x_2440 : vec4<f32> = x_66.AdditionalParams;
  u_xlat3 = (abs(x_2437) + vec4<f32>(x_2440.w, x_2440.w, x_2440.w, x_2440.w));
  let x_2443 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_2443);
  let x_2445 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_2445, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_2449 : f32 = u_xlat4.x;
  let x_2451 : f32 = x_66.AdditionalParams.x;
  u_xlat4.x = (x_2449 + x_2451);
  let x_2454 : vec4<f32> = u_xlat2;
  let x_2455 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_2454, x_2455);
  let x_2459 : f32 = u_xlat2.x;
  let x_2461 : f32 = x_66.AdditionalParams.x;
  u_xlat2.x = (x_2459 + x_2461);
  let x_2465 : f32 = u_xlat2.x;
  let x_2467 : f32 = u_xlat6.w;
  u_xlat2.x = (x_2465 * x_2467);
  let x_2471 : f32 = u_xlat2.x;
  let x_2473 : f32 = u_xlat4.x;
  u_xlat1.y = (x_2471 / x_2473);
  let x_2477 : vec4<i32> = u_xlati0;
  let x_2479 : vec4<f32> = u_xlat1;
  textureStore(AoResult_origX0X, vec2<i32>(x_2477.x, x_2477.y), x_2479);
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn main(@builtin(local_invocation_id) gl_LocalInvocationID_param : vec3<u32>, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_LocalInvocationID = gl_LocalInvocationID_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

