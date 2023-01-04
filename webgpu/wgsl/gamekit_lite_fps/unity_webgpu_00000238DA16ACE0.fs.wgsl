let      UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct PGlobals {
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  @size(12)
  padding_2 : u32,
  x_EmissionColor : vec3<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_Cutoff : f32,
}

struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

struct unity_Builtins2Array_Type {
  unity_SHArArray : vec4<f32>,
  unity_SHAgArray : vec4<f32>,
  unity_SHAbArray : vec4<f32>,
  unity_SHBrArray : vec4<f32>,
  unity_SHBgArray : vec4<f32>,
  unity_SHBbArray : vec4<f32>,
  unity_SHCArray : vec4<f32>,
}

type Arr = array<unity_Builtins2Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw2 {
  unity_Builtins2Array : Arr,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD3 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_30 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> u_xlat22 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(5) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_EmissionMap : sampler;

var<private> u_xlat21 : f32;

var<private> u_xlatb21 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> vs_SV_InstanceID0 : u32;

@group(0) @binding(1) var<uniform> x_361 : UnityDrawCallInfo;

@group(0) @binding(2) var<uniform> x_375 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_255 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD3;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_25 : vec4<f32> = u_xlat0;
  let x_35 : vec4<f32> = x_30.x_Color;
  u_xlat0 = (x_25 * x_35);
  let x_39 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_52 : vec2<f32> = vs_TEXCOORD3;
  let x_53 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, x_52);
  let x_54 : vec3<f32> = vec3<f32>(x_53.x, x_53.y, x_53.w);
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_54.x, x_54.y, x_54.z, x_55.w);
  let x_61 : f32 = u_xlat2.z;
  let x_64 : f32 = u_xlat2.x;
  u_xlat2.x = (x_61 * x_64);
  let x_67 : vec4<f32> = u_xlat2;
  let x_74 : vec2<f32> = ((vec2<f32>(x_67.x, x_67.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_74.x, x_74.y, x_75.z, x_75.w);
  let x_77 : vec4<f32> = u_xlat2;
  let x_82 : f32 = x_30.x_BumpScale;
  let x_84 : vec2<f32> = (vec2<f32>(x_77.x, x_77.y) * vec2<f32>(x_82, x_82));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_85.z, x_85.w);
  let x_88 : vec4<f32> = u_xlat2;
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec2<f32>(x_88.x, x_88.y), vec2<f32>(x_90.x, x_90.y));
  let x_93 : f32 = u_xlat22;
  u_xlat22 = min(x_93, 1.0f);
  let x_96 : f32 = u_xlat22;
  u_xlat22 = (-(x_96) + 1.0f);
  let x_99 : f32 = u_xlat22;
  u_xlat2.z = sqrt(x_99);
  let x_102 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_102.x, x_102.y, x_102.z), vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_107 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_107);
  let x_109 : f32 = u_xlat22;
  let x_111 : vec4<f32> = u_xlat2;
  let x_113 : vec3<f32> = (vec3<f32>(x_109, x_109, x_109) * vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_122 : vec2<f32> = vs_TEXCOORD3;
  let x_123 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_122);
  u_xlat3 = vec3<f32>(x_123.x, x_123.y, x_123.z);
  let x_128 : f32 = u_xlat0.w;
  let x_131 : f32 = vs_COLOR0.w;
  let x_135 : f32 = x_30.x_Cutoff;
  u_xlat21 = ((x_128 * x_131) + -(x_135));
  let x_138 : f32 = u_xlat21;
  u_xlat21 = (x_138 + 0.0001f);
  let x_144 : f32 = u_xlat21;
  u_xlatb21 = (x_144 < 0.0f);
  let x_147 : bool = u_xlatb21;
  if (((select(0i, 1i, x_147) * -1i) != 0i)) {
    discard;
  }
  let x_159 : vec4<f32> = vs_TEXCOORD0;
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(vec3<f32>(x_159.x, x_159.y, x_159.z), vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_166 : vec4<f32> = vs_TEXCOORD1;
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(vec3<f32>(x_166.x, x_166.y, x_166.z), vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_174 : vec4<f32> = vs_TEXCOORD2;
  let x_176 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : vec4<f32> = u_xlat4;
  let x_182 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_180.x, x_180.y, x_180.z), vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_185);
  let x_187 : f32 = u_xlat21;
  let x_189 : vec4<f32> = u_xlat4;
  let x_191 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : f32 = x_30.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_195 == 1.0f);
  let x_197 : bool = u_xlatb21;
  if (x_197) {
    let x_201 : f32 = x_30.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_201 == 1.0f);
    let x_203 : vec4<f32> = vs_TEXCOORD1;
    let x_206 : vec4<f32> = x_30.unity_ProbeVolumeWorldToObject[1i];
    let x_208 : vec3<f32> = (vec3<f32>(x_203.w, x_203.w, x_203.w) * vec3<f32>(x_206.x, x_206.y, x_206.z));
    let x_209 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
    let x_212 : vec4<f32> = x_30.unity_ProbeVolumeWorldToObject[0i];
    let x_214 : vec4<f32> = vs_TEXCOORD0;
    let x_217 : vec4<f32> = u_xlat4;
    let x_219 : vec3<f32> = ((vec3<f32>(x_212.x, x_212.y, x_212.z) * vec3<f32>(x_214.w, x_214.w, x_214.w)) + vec3<f32>(x_217.x, x_217.y, x_217.z));
    let x_220 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
    let x_224 : vec4<f32> = x_30.unity_ProbeVolumeWorldToObject[2i];
    let x_226 : vec4<f32> = vs_TEXCOORD2;
    let x_229 : vec4<f32> = u_xlat4;
    let x_231 : vec3<f32> = ((vec3<f32>(x_224.x, x_224.y, x_224.z) * vec3<f32>(x_226.w, x_226.w, x_226.w)) + vec3<f32>(x_229.x, x_229.y, x_229.z));
    let x_232 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
    let x_234 : vec4<f32> = u_xlat4;
    let x_238 : vec4<f32> = x_30.unity_ProbeVolumeWorldToObject[3i];
    let x_240 : vec3<f32> = (vec3<f32>(x_234.x, x_234.y, x_234.z) + vec3<f32>(x_238.x, x_238.y, x_238.z));
    let x_241 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
    let x_245 : f32 = vs_TEXCOORD0.w;
    u_xlat12.x = x_245;
    let x_248 : f32 = vs_TEXCOORD1.w;
    u_xlat12.y = x_248;
    let x_251 : f32 = vs_TEXCOORD2.w;
    u_xlat12.z = x_251;
    let x_253 : bool = u_xlatb21;
    if (x_253) {
      let x_258 : vec4<f32> = u_xlat4;
      x_255 = vec3<f32>(x_258.x, x_258.y, x_258.z);
    } else {
      let x_261 : vec3<f32> = u_xlat12;
      x_255 = x_261;
    }
    let x_262 : vec3<f32> = x_255;
    let x_263 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_265 : vec4<f32> = u_xlat4;
    let x_269 : vec3<f32> = x_30.unity_ProbeVolumeMin;
    let x_271 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) + -(x_269));
    let x_272 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
    let x_274 : vec4<f32> = u_xlat4;
    let x_277 : vec3<f32> = x_30.unity_ProbeVolumeSizeInv;
    let x_278 : vec3<f32> = (vec3<f32>(x_274.x, x_274.y, x_274.z) * x_277);
    let x_279 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_279.x, x_278.x, x_278.y, x_278.z);
    let x_282 : f32 = u_xlat4.y;
    u_xlat21 = (x_282 * 0.25f);
    let x_286 : f32 = x_30.unity_ProbeVolumeParams.z;
    u_xlat22 = (x_286 * 0.5f);
    let x_291 : f32 = x_30.unity_ProbeVolumeParams.z;
    u_xlat24 = ((-(x_291) * 0.5f) + 0.25f);
    let x_295 : f32 = u_xlat21;
    let x_296 : f32 = u_xlat22;
    u_xlat21 = max(x_295, x_296);
    let x_298 : f32 = u_xlat24;
    let x_299 : f32 = u_xlat21;
    u_xlat4.x = min(x_298, x_299);
    let x_311 : vec4<f32> = u_xlat4;
    let x_313 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_311.x, x_311.z, x_311.w));
    u_xlat5 = x_313;
    let x_315 : vec4<f32> = u_xlat4;
    let x_318 : vec3<f32> = (vec3<f32>(x_315.x, x_315.z, x_315.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_319 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
    let x_324 : vec4<f32> = u_xlat6;
    let x_326 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_324.x, x_324.y, x_324.z));
    u_xlat6 = x_326;
    let x_327 : vec4<f32> = u_xlat4;
    let x_330 : vec3<f32> = (vec3<f32>(x_327.x, x_327.z, x_327.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_331 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
    let x_336 : vec4<f32> = u_xlat4;
    let x_338 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_336.x, x_336.y, x_336.z));
    u_xlat4 = x_338;
    u_xlat2.w = 1.0f;
    let x_340 : vec4<f32> = u_xlat5;
    let x_341 : vec4<f32> = u_xlat2;
    u_xlat5.x = dot(x_340, x_341);
    let x_344 : vec4<f32> = u_xlat6;
    let x_345 : vec4<f32> = u_xlat2;
    u_xlat5.y = dot(x_344, x_345);
    let x_348 : vec4<f32> = u_xlat4;
    let x_349 : vec4<f32> = u_xlat2;
    u_xlat5.z = dot(x_348, x_349);
  } else {
    let x_357 : u32 = vs_SV_InstanceID0;
    let x_364 : i32 = x_361.unity_BaseInstanceID;
    u_xlati21 = (bitcast<i32>(x_357) + x_364);
    let x_366 : i32 = u_xlati21;
    u_xlati21 = (x_366 * 7i);
    u_xlat2.w = 1.0f;
    let x_376 : i32 = u_xlati21;
    let x_379 : vec4<f32> = x_375.unity_Builtins2Array[(x_376 / 7i)].unity_SHArArray;
    let x_380 : vec4<f32> = u_xlat2;
    u_xlat5.x = dot(x_379, x_380);
    let x_383 : i32 = u_xlati21;
    let x_386 : vec4<f32> = x_375.unity_Builtins2Array[(x_383 / 7i)].unity_SHAgArray;
    let x_387 : vec4<f32> = u_xlat2;
    u_xlat5.y = dot(x_386, x_387);
    let x_390 : i32 = u_xlati21;
    let x_393 : vec4<f32> = x_375.unity_Builtins2Array[(x_390 / 7i)].unity_SHAbArray;
    let x_394 : vec4<f32> = u_xlat2;
    u_xlat5.z = dot(x_393, x_394);
  }
  let x_397 : vec4<f32> = u_xlat5;
  let x_401 : vec3<f32> = vs_TEXCOORD7;
  let x_402 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) + x_401);
  let x_403 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : vec4<f32> = u_xlat4;
  let x_408 : vec3<f32> = max(vec3<f32>(x_405.x, x_405.y, x_405.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec4<f32> = u_xlat0;
  let x_413 : vec4<f32> = vs_COLOR0;
  let x_418 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413.x, x_413.y, x_413.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_419 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_424 : f32 = x_30.x_Metallic;
  let x_426 : vec4<f32> = u_xlat0;
  let x_431 : vec3<f32> = ((vec3<f32>(x_424, x_424, x_424) * vec3<f32>(x_426.x, x_426.y, x_426.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_432 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_435 : f32 = x_30.x_Metallic;
  u_xlat0.x = ((-(x_435) * 0.959999979f) + 0.959999979f);
  let x_441 : vec4<f32> = u_xlat0;
  let x_443 : vec3<f32> = u_xlat1;
  let x_444 : vec3<f32> = (vec3<f32>(x_441.x, x_441.x, x_441.x) * x_443);
  let x_445 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat4;
  let x_449 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_447.x, x_447.y, x_447.z) * vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_453 : vec4<f32> = u_xlat2;
  let x_457 : vec3<f32> = ((vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_458 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec3<f32> = u_xlat3;
  let x_463 : f32 = x_30.x_EmissionColor.x;
  let x_465 : f32 = x_30.x_EmissionColor.y;
  let x_467 : f32 = x_30.x_EmissionColor.z;
  let x_470 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_460 * vec3<f32>(x_463, x_465, x_467)) + x_470);
  let x_473 : vec3<f32> = u_xlat1;
  let x_475 : vec3<f32> = exp2(-(x_473));
  let x_476 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_479 : vec4<f32> = u_xlat0;
  let x_480 : vec3<f32> = vec3<f32>(x_479.x, x_479.y, x_479.z);
  let x_481 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  SV_Target0.w = 1.0f;
  let x_487 : f32 = x_30.x_Glossiness;
  SV_Target1.w = x_487;
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD3_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(6) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(5) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target2, SV_Target3, SV_Target0);
}

