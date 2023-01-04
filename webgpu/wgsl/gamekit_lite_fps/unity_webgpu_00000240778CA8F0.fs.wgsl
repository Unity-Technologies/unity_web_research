struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
  @size(4)
  padding_3 : u32,
  x_EmissionColor : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlat20 : vec3<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

var<private> u_xlat35 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb48 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlatb47 : bool;

var<private> u_xlat47 : f32;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb12 : vec3<bool>;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb14 : vec3<bool>;

@group(0) @binding(6) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat33 : f32;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_EmissionMap : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_261 : vec3<f32>;
  var x_469 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_655 : f32;
  var x_667 : f32;
  var x_679 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_833 : f32;
  var x_845 : f32;
  var x_857 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_32 : f32 = u_xlat0.w;
  let x_42 : f32 = x_37.x_Color.w;
  SV_Target0.w = (x_32 * x_42);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_37.x_Color;
  u_xlat1 = (vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_56 : vec4<f32> = x_37.x_Color;
  let x_58 : vec4<f32> = u_xlat0;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.y, x_58.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_68 : f32 = x_37.x_Metallic;
  let x_70 : f32 = x_37.x_Metallic;
  let x_72 : f32 = x_37.x_Metallic;
  let x_73 : vec3<f32> = vec3<f32>(x_68, x_70, x_72);
  let x_78 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = ((vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_78.x, x_78.y, x_78.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : f32 = x_37.x_Metallic;
  u_xlat45 = ((-(x_88) * 0.959999979f) + 0.959999979f);
  let x_93 : f32 = u_xlat45;
  let x_95 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_93, x_93, x_93) * x_95);
  let x_99 : vec4<f32> = vs_TEXCOORD4;
  let x_101 : vec4<f32> = vs_TEXCOORD4;
  u_xlat46 = dot(vec3<f32>(x_99.x, x_99.y, x_99.z), vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_104);
  let x_107 : f32 = u_xlat46;
  let x_109 : vec4<f32> = vs_TEXCOORD4;
  let x_111 : vec3<f32> = (vec3<f32>(x_107, x_107, x_107) * vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_112 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_115 : vec4<f32> = vs_TEXCOORD1;
  let x_117 : vec4<f32> = vs_TEXCOORD1;
  u_xlat46 = dot(vec3<f32>(x_115.x, x_115.y, x_115.z), vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_120 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_120);
  let x_123 : f32 = u_xlat46;
  let x_125 : vec4<f32> = vs_TEXCOORD1;
  let x_127 : vec3<f32> = (vec3<f32>(x_123, x_123, x_123) * vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_134 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_134;
  let x_139 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_139;
  let x_143 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_143;
  let x_147 : vec4<f32> = u_xlat4;
  let x_153 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  let x_154 : vec3<f32> = (-(vec3<f32>(x_147.x, x_147.y, x_147.z)) + x_153);
  let x_155 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_160 : f32 = x_37.unity_MatrixV[0i].z;
  u_xlat6.x = x_160;
  let x_164 : f32 = x_37.unity_MatrixV[1i].z;
  u_xlat6.y = x_164;
  let x_168 : f32 = x_37.unity_MatrixV[2i].z;
  u_xlat6.z = x_168;
  let x_171 : vec4<f32> = u_xlat5;
  let x_173 : vec3<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_171.x, x_171.y, x_171.z), x_173);
  let x_175 : vec4<f32> = u_xlat4;
  let x_179 : vec4<f32> = x_37.unity_ShadowFadeCenterAndType;
  let x_182 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) + -(vec3<f32>(x_179.x, x_179.y, x_179.z)));
  let x_183 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_186 : vec4<f32> = u_xlat5;
  let x_188 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_186.x, x_186.y, x_186.z), vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : f32 = u_xlat49;
  u_xlat49 = sqrt(x_191);
  let x_193 : f32 = u_xlat48;
  let x_195 : f32 = u_xlat49;
  u_xlat49 = (-(x_193) + x_195);
  let x_198 : f32 = x_37.unity_ShadowFadeCenterAndType.w;
  let x_199 : f32 = u_xlat49;
  let x_201 : f32 = u_xlat48;
  u_xlat48 = ((x_198 * x_199) + x_201);
  let x_203 : f32 = u_xlat48;
  let x_206 : f32 = x_37.x_LightShadowData.z;
  let x_209 : f32 = x_37.x_LightShadowData.w;
  u_xlat48 = ((x_203 * x_206) + x_209);
  let x_211 : f32 = u_xlat48;
  u_xlat48 = clamp(x_211, 0.0f, 1.0f);
  let x_220 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb49 = (x_220 == 1.0f);
  let x_222 : bool = u_xlatb49;
  if (x_222) {
    let x_227 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb5 = (x_227 == 1.0f);
    let x_230 : vec4<f32> = vs_TEXCOORD3;
    let x_234 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    u_xlat20 = (vec3<f32>(x_230.w, x_230.w, x_230.w) * vec3<f32>(x_234.x, x_234.y, x_234.z));
    let x_238 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_240 : vec4<f32> = vs_TEXCOORD2;
    let x_243 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.w, x_240.w, x_240.w)) + x_243);
    let x_246 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_248 : vec4<f32> = vs_TEXCOORD4;
    let x_251 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_246.x, x_246.y, x_246.z) * vec3<f32>(x_248.w, x_248.w, x_248.w)) + x_251);
    let x_253 : vec3<f32> = u_xlat20;
    let x_256 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    u_xlat20 = (x_253 + vec3<f32>(x_256.x, x_256.y, x_256.z));
    let x_259 : bool = u_xlatb5;
    if (x_259) {
      let x_264 : vec3<f32> = u_xlat20;
      x_261 = x_264;
    } else {
      let x_266 : vec4<f32> = u_xlat4;
      x_261 = vec3<f32>(x_266.x, x_266.y, x_266.z);
    }
    let x_268 : vec3<f32> = x_261;
    let x_269 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat5;
    let x_275 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_277 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) + -(x_275));
    let x_278 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_280 : vec4<f32> = u_xlat5;
    let x_284 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_285 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) * x_284);
    let x_286 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_286.x, x_285.x, x_285.y, x_285.z);
    let x_289 : f32 = u_xlat5.y;
    u_xlat20.x = ((x_289 * 0.25f) + 0.75f);
    let x_296 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat6.x = ((x_296 * 0.5f) + 0.75f);
    let x_302 : f32 = u_xlat20.x;
    let x_304 : f32 = u_xlat6.x;
    u_xlat5.x = max(x_302, x_304);
    let x_315 : vec4<f32> = u_xlat5;
    let x_317 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_315.x, x_315.z, x_315.w));
    u_xlat5 = x_317;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_323 : vec4<f32> = u_xlat5;
  let x_326 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat5.x = dot(x_323, x_326);
  let x_330 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_330, 0.0f, 1.0f);
  let x_334 : vec4<f32> = vs_TEXCOORD7;
  let x_336 : vec4<f32> = vs_TEXCOORD7;
  let x_338 : vec2<f32> = (vec2<f32>(x_334.x, x_334.y) / vec2<f32>(x_336.w, x_336.w));
  let x_339 : vec3<f32> = u_xlat20;
  u_xlat20 = vec3<f32>(x_338.x, x_338.y, x_339.z);
  let x_346 : vec3<f32> = u_xlat20;
  let x_348 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_346.x, x_346.y));
  u_xlat20.x = x_348.x;
  let x_352 : f32 = u_xlat20.x;
  let x_355 : f32 = u_xlat5.x;
  u_xlat5.x = (-(x_352) + x_355);
  let x_358 : f32 = u_xlat48;
  let x_360 : f32 = u_xlat5.x;
  let x_363 : f32 = u_xlat20.x;
  u_xlat48 = ((x_358 * x_360) + x_363);
  let x_370 : vec4<f32> = vs_TEXCOORD0;
  let x_372 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_370.x, x_370.y));
  u_xlat5.x = x_372.y;
  let x_377 : f32 = x_37.x_OcclusionStrength;
  u_xlat20.x = (-(x_377) + 1.0f);
  let x_382 : f32 = u_xlat5.x;
  let x_384 : f32 = x_37.x_OcclusionStrength;
  let x_387 : f32 = u_xlat20.x;
  u_xlat5.x = ((x_382 * x_384) + x_387);
  let x_392 : f32 = x_37.x_Glossiness;
  u_xlat20.x = (-(x_392) + 1.0f);
  let x_397 : vec4<f32> = u_xlat3;
  let x_399 : vec4<f32> = u_xlat2;
  u_xlat35 = dot(vec3<f32>(x_397.x, x_397.y, x_397.z), vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : f32 = u_xlat35;
  let x_403 : f32 = u_xlat35;
  u_xlat35 = (x_402 + x_403);
  let x_405 : vec4<f32> = u_xlat2;
  let x_407 : f32 = u_xlat35;
  let x_411 : vec4<f32> = u_xlat3;
  u_xlat6 = ((vec3<f32>(x_405.x, x_405.y, x_405.z) * -(vec3<f32>(x_407, x_407, x_407))) + vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_415 : f32 = u_xlat48;
  let x_419 : vec4<f32> = x_37.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_415, x_415, x_415) * vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : bool = u_xlatb49;
  if (x_422) {
    let x_427 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb48 = (x_427 == 1.0f);
    let x_430 : vec4<f32> = vs_TEXCOORD3;
    let x_433 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_435 : vec3<f32> = (vec3<f32>(x_430.w, x_430.w, x_430.w) * vec3<f32>(x_433.x, x_433.y, x_433.z));
    let x_436 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
    let x_439 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_441 : vec4<f32> = vs_TEXCOORD2;
    let x_444 : vec4<f32> = u_xlat8;
    let x_446 : vec3<f32> = ((vec3<f32>(x_439.x, x_439.y, x_439.z) * vec3<f32>(x_441.w, x_441.w, x_441.w)) + vec3<f32>(x_444.x, x_444.y, x_444.z));
    let x_447 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
    let x_450 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_452 : vec4<f32> = vs_TEXCOORD4;
    let x_455 : vec4<f32> = u_xlat8;
    let x_457 : vec3<f32> = ((vec3<f32>(x_450.x, x_450.y, x_450.z) * vec3<f32>(x_452.w, x_452.w, x_452.w)) + vec3<f32>(x_455.x, x_455.y, x_455.z));
    let x_458 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
    let x_460 : vec4<f32> = u_xlat8;
    let x_463 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_465 : vec3<f32> = (vec3<f32>(x_460.x, x_460.y, x_460.z) + vec3<f32>(x_463.x, x_463.y, x_463.z));
    let x_466 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
    let x_468 : bool = u_xlatb48;
    if (x_468) {
      let x_472 : vec4<f32> = u_xlat8;
      x_469 = vec3<f32>(x_472.x, x_472.y, x_472.z);
    } else {
      let x_475 : vec4<f32> = u_xlat4;
      x_469 = vec3<f32>(x_475.x, x_475.y, x_475.z);
    }
    let x_477 : vec3<f32> = x_469;
    let x_478 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
    let x_480 : vec4<f32> = u_xlat8;
    let x_483 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_485 : vec3<f32> = (vec3<f32>(x_480.x, x_480.y, x_480.z) + -(x_483));
    let x_486 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
    let x_488 : vec4<f32> = u_xlat8;
    let x_491 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_492 : vec3<f32> = (vec3<f32>(x_488.x, x_488.y, x_488.z) * x_491);
    let x_493 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_493.x, x_492.x, x_492.y, x_492.z);
    let x_496 : f32 = u_xlat8.y;
    u_xlat48 = (x_496 * 0.25f);
    let x_499 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat49 = (x_499 * 0.5f);
    let x_502 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat35 = ((-(x_502) * 0.5f) + 0.25f);
    let x_506 : f32 = u_xlat48;
    let x_507 : f32 = u_xlat49;
    u_xlat48 = max(x_506, x_507);
    let x_509 : f32 = u_xlat35;
    let x_510 : f32 = u_xlat48;
    u_xlat8.x = min(x_509, x_510);
    let x_517 : vec4<f32> = u_xlat8;
    let x_519 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_517.x, x_517.z, x_517.w));
    u_xlat9 = x_519;
    let x_521 : vec4<f32> = u_xlat8;
    let x_524 : vec3<f32> = (vec3<f32>(x_521.x, x_521.z, x_521.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_525 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
    let x_530 : vec4<f32> = u_xlat10;
    let x_532 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_530.x, x_530.y, x_530.z));
    u_xlat10 = x_532;
    let x_533 : vec4<f32> = u_xlat8;
    let x_536 : vec3<f32> = (vec3<f32>(x_533.x, x_533.z, x_533.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_537 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
    let x_542 : vec4<f32> = u_xlat8;
    let x_544 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_542.x, x_542.y, x_542.z));
    u_xlat8 = x_544;
    u_xlat2.w = 1.0f;
    let x_546 : vec4<f32> = u_xlat9;
    let x_547 : vec4<f32> = u_xlat2;
    u_xlat9.x = dot(x_546, x_547);
    let x_550 : vec4<f32> = u_xlat10;
    let x_551 : vec4<f32> = u_xlat2;
    u_xlat9.y = dot(x_550, x_551);
    let x_554 : vec4<f32> = u_xlat8;
    let x_555 : vec4<f32> = u_xlat2;
    u_xlat9.z = dot(x_554, x_555);
  } else {
    u_xlat2.w = 1.0f;
    let x_561 : vec4<f32> = x_37.unity_SHAr;
    let x_562 : vec4<f32> = u_xlat2;
    u_xlat9.x = dot(x_561, x_562);
    let x_566 : vec4<f32> = x_37.unity_SHAg;
    let x_567 : vec4<f32> = u_xlat2;
    u_xlat9.y = dot(x_566, x_567);
    let x_572 : vec4<f32> = x_37.unity_SHAb;
    let x_573 : vec4<f32> = u_xlat2;
    u_xlat9.z = dot(x_572, x_573);
  }
  let x_576 : vec4<f32> = u_xlat9;
  let x_579 : vec4<f32> = vs_TEXCOORD5;
  let x_581 : vec3<f32> = (vec3<f32>(x_576.x, x_576.y, x_576.z) + vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_584 : vec4<f32> = u_xlat8;
  let x_587 : vec3<f32> = max(vec3<f32>(x_584.x, x_584.y, x_584.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_588 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_593 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb47 = (0.0f < x_593);
  let x_595 : bool = u_xlatb47;
  if (x_595) {
    let x_599 : vec3<f32> = u_xlat6;
    let x_600 : vec3<f32> = u_xlat6;
    u_xlat47 = dot(x_599, x_600);
    let x_602 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_602);
    let x_604 : f32 = u_xlat47;
    let x_606 : vec3<f32> = u_xlat6;
    let x_607 : vec3<f32> = (vec3<f32>(x_604, x_604, x_604) * x_606);
    let x_608 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
    let x_610 : vec4<f32> = u_xlat4;
    let x_615 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    let x_617 : vec3<f32> = (-(vec3<f32>(x_610.x, x_610.y, x_610.z)) + vec3<f32>(x_615.x, x_615.y, x_615.z));
    let x_618 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
    let x_620 : vec4<f32> = u_xlat10;
    let x_622 : vec4<f32> = u_xlat9;
    let x_624 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) / vec3<f32>(x_622.x, x_622.y, x_622.z));
    let x_625 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
    let x_628 : vec4<f32> = u_xlat4;
    let x_633 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_628.x, x_628.y, x_628.z)) + vec3<f32>(x_633.x, x_633.y, x_633.z));
    let x_636 : vec3<f32> = u_xlat11;
    let x_637 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_636 / vec3<f32>(x_637.x, x_637.y, x_637.z));
    let x_644 : vec4<f32> = u_xlat9;
    let x_647 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_644.x, x_644.y, x_644.z, x_644.x));
    u_xlatb12 = vec3<bool>(x_647.x, x_647.y, x_647.z);
    let x_651 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_651;
    let x_653 : bool = u_xlatb12.x;
    if (x_653) {
      let x_659 : f32 = u_xlat10.x;
      x_655 = x_659;
    } else {
      let x_662 : f32 = u_xlat11.x;
      x_655 = x_662;
    }
    let x_663 : f32 = x_655;
    hlslcc_movcTemp.x = x_663;
    let x_666 : bool = u_xlatb12.y;
    if (x_666) {
      let x_671 : f32 = u_xlat10.y;
      x_667 = x_671;
    } else {
      let x_674 : f32 = u_xlat11.y;
      x_667 = x_674;
    }
    let x_675 : f32 = x_667;
    hlslcc_movcTemp.y = x_675;
    let x_678 : bool = u_xlatb12.z;
    if (x_678) {
      let x_683 : f32 = u_xlat10.z;
      x_679 = x_683;
    } else {
      let x_686 : f32 = u_xlat11.z;
      x_679 = x_686;
    }
    let x_687 : f32 = x_679;
    hlslcc_movcTemp.z = x_687;
    let x_689 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_689;
    let x_691 : f32 = u_xlat10.y;
    let x_693 : f32 = u_xlat10.x;
    u_xlat47 = min(x_691, x_693);
    let x_696 : f32 = u_xlat10.z;
    let x_697 : f32 = u_xlat47;
    u_xlat47 = min(x_696, x_697);
    let x_699 : vec4<f32> = u_xlat4;
    let x_702 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    let x_705 : vec3<f32> = (vec3<f32>(x_699.x, x_699.y, x_699.z) + -(vec3<f32>(x_702.x, x_702.y, x_702.z)));
    let x_706 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
    let x_708 : vec4<f32> = u_xlat9;
    let x_710 : f32 = u_xlat47;
    let x_713 : vec4<f32> = u_xlat10;
    let x_715 : vec3<f32> = ((vec3<f32>(x_708.x, x_708.y, x_708.z) * vec3<f32>(x_710, x_710, x_710)) + vec3<f32>(x_713.x, x_713.y, x_713.z));
    let x_716 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  } else {
    let x_719 : vec3<f32> = u_xlat6;
    let x_720 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  }
  let x_723 : f32 = u_xlat20.x;
  u_xlat47 = ((-(x_723) * 0.699999988f) + 1.700000048f);
  let x_729 : f32 = u_xlat47;
  let x_731 : f32 = u_xlat20.x;
  u_xlat47 = (x_729 * x_731);
  let x_733 : f32 = u_xlat47;
  u_xlat47 = (x_733 * 6.0f);
  let x_744 : vec4<f32> = u_xlat9;
  let x_746 : f32 = u_xlat47;
  let x_747 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_744.x, x_744.y, x_744.z), x_746);
  u_xlat9 = x_747;
  let x_749 : f32 = u_xlat9.w;
  u_xlat48 = (x_749 + -1.0f);
  let x_754 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_755 : f32 = u_xlat48;
  u_xlat48 = ((x_754 * x_755) + 1.0f);
  let x_758 : f32 = u_xlat48;
  u_xlat48 = log2(x_758);
  let x_760 : f32 = u_xlat48;
  let x_762 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat48 = (x_760 * x_762);
  let x_764 : f32 = u_xlat48;
  u_xlat48 = exp2(x_764);
  let x_766 : f32 = u_xlat48;
  let x_768 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat48 = (x_766 * x_768);
  let x_770 : vec4<f32> = u_xlat9;
  let x_772 : f32 = u_xlat48;
  let x_774 : vec3<f32> = (vec3<f32>(x_770.x, x_770.y, x_770.z) * vec3<f32>(x_772, x_772, x_772));
  let x_775 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_778 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb49 = (x_778 < 0.999989986f);
  let x_781 : bool = u_xlatb49;
  if (x_781) {
    let x_786 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb49 = (0.0f < x_786);
    let x_788 : bool = u_xlatb49;
    if (x_788) {
      let x_791 : vec3<f32> = u_xlat6;
      let x_792 : vec3<f32> = u_xlat6;
      u_xlat49 = dot(x_791, x_792);
      let x_794 : f32 = u_xlat49;
      u_xlat49 = inverseSqrt(x_794);
      let x_796 : f32 = u_xlat49;
      let x_798 : vec3<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_796, x_796, x_796) * x_798);
      let x_801 : vec4<f32> = u_xlat4;
      let x_806 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(vec3<f32>(x_801.x, x_801.y, x_801.z)) + vec3<f32>(x_806.x, x_806.y, x_806.z));
      let x_809 : vec3<f32> = u_xlat12;
      let x_810 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_809 / x_810);
      let x_813 : vec4<f32> = u_xlat4;
      let x_818 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(vec3<f32>(x_813.x, x_813.y, x_813.z)) + vec3<f32>(x_818.x, x_818.y, x_818.z));
      let x_821 : vec3<f32> = u_xlat13;
      let x_822 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_821 / x_822);
      let x_825 : vec3<f32> = u_xlat11;
      let x_827 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_825.x, x_825.y, x_825.z, x_825.x));
      u_xlatb14 = vec3<bool>(x_827.x, x_827.y, x_827.z);
      let x_830 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_830;
      let x_832 : bool = u_xlatb14.x;
      if (x_832) {
        let x_837 : f32 = u_xlat12.x;
        x_833 = x_837;
      } else {
        let x_840 : f32 = u_xlat13.x;
        x_833 = x_840;
      }
      let x_841 : f32 = x_833;
      hlslcc_movcTemp_1.x = x_841;
      let x_844 : bool = u_xlatb14.y;
      if (x_844) {
        let x_849 : f32 = u_xlat12.y;
        x_845 = x_849;
      } else {
        let x_852 : f32 = u_xlat13.y;
        x_845 = x_852;
      }
      let x_853 : f32 = x_845;
      hlslcc_movcTemp_1.y = x_853;
      let x_856 : bool = u_xlatb14.z;
      if (x_856) {
        let x_861 : f32 = u_xlat12.z;
        x_857 = x_861;
      } else {
        let x_864 : f32 = u_xlat13.z;
        x_857 = x_864;
      }
      let x_865 : f32 = x_857;
      hlslcc_movcTemp_1.z = x_865;
      let x_867 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_867;
      let x_869 : f32 = u_xlat12.y;
      let x_871 : f32 = u_xlat12.x;
      u_xlat49 = min(x_869, x_871);
      let x_874 : f32 = u_xlat12.z;
      let x_875 : f32 = u_xlat49;
      u_xlat49 = min(x_874, x_875);
      let x_877 : vec4<f32> = u_xlat4;
      let x_880 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      let x_883 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.z) + -(vec3<f32>(x_880.x, x_880.y, x_880.z)));
      let x_884 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
      let x_886 : vec3<f32> = u_xlat11;
      let x_887 : f32 = u_xlat49;
      let x_890 : vec4<f32> = u_xlat4;
      u_xlat6 = ((x_886 * vec3<f32>(x_887, x_887, x_887)) + vec3<f32>(x_890.x, x_890.y, x_890.z));
    }
    let x_897 : vec3<f32> = u_xlat6;
    let x_898 : f32 = u_xlat47;
    let x_899 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_897, x_898);
    u_xlat4 = x_899;
    let x_901 : f32 = u_xlat4.w;
    u_xlat47 = (x_901 + -1.0f);
    let x_905 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_906 : f32 = u_xlat47;
    u_xlat47 = ((x_905 * x_906) + 1.0f);
    let x_909 : f32 = u_xlat47;
    u_xlat47 = log2(x_909);
    let x_911 : f32 = u_xlat47;
    let x_913 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat47 = (x_911 * x_913);
    let x_915 : f32 = u_xlat47;
    u_xlat47 = exp2(x_915);
    let x_917 : f32 = u_xlat47;
    let x_919 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat47 = (x_917 * x_919);
    let x_921 : vec4<f32> = u_xlat4;
    let x_923 : f32 = u_xlat47;
    let x_925 : vec3<f32> = (vec3<f32>(x_921.x, x_921.y, x_921.z) * vec3<f32>(x_923, x_923, x_923));
    let x_926 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
    let x_928 : f32 = u_xlat48;
    let x_930 : vec4<f32> = u_xlat9;
    let x_933 : vec4<f32> = u_xlat4;
    u_xlat6 = ((vec3<f32>(x_928, x_928, x_928) * vec3<f32>(x_930.x, x_930.y, x_930.z)) + -(vec3<f32>(x_933.x, x_933.y, x_933.z)));
    let x_938 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_940 : vec3<f32> = u_xlat6;
    let x_942 : vec4<f32> = u_xlat4;
    let x_944 : vec3<f32> = ((vec3<f32>(x_938.w, x_938.w, x_938.w) * x_940) + vec3<f32>(x_942.x, x_942.y, x_942.z));
    let x_945 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
  }
  let x_947 : vec4<f32> = u_xlat5;
  let x_949 : vec4<f32> = u_xlat10;
  let x_951 : vec3<f32> = (vec3<f32>(x_947.x, x_947.x, x_947.x) * vec3<f32>(x_949.x, x_949.y, x_949.z));
  let x_952 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  let x_954 : vec4<f32> = vs_TEXCOORD1;
  let x_957 : f32 = u_xlat46;
  let x_961 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat6 = ((-(vec3<f32>(x_954.x, x_954.y, x_954.z)) * vec3<f32>(x_957, x_957, x_957)) + vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_964 : vec3<f32> = u_xlat6;
  let x_965 : vec3<f32> = u_xlat6;
  u_xlat46 = dot(x_964, x_965);
  let x_967 : f32 = u_xlat46;
  u_xlat46 = max(x_967, 0.001f);
  let x_970 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_970);
  let x_972 : f32 = u_xlat46;
  let x_974 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_972, x_972, x_972) * x_974);
  let x_976 : vec4<f32> = u_xlat2;
  let x_978 : vec4<f32> = u_xlat3;
  u_xlat46 = dot(vec3<f32>(x_976.x, x_976.y, x_976.z), -(vec3<f32>(x_978.x, x_978.y, x_978.z)));
  let x_982 : vec4<f32> = u_xlat2;
  let x_985 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat47 = dot(vec3<f32>(x_982.x, x_982.y, x_982.z), vec3<f32>(x_985.x, x_985.y, x_985.z));
  let x_988 : f32 = u_xlat47;
  u_xlat47 = clamp(x_988, 0.0f, 1.0f);
  let x_990 : vec4<f32> = u_xlat2;
  let x_992 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_990.x, x_990.y, x_990.z), x_992);
  let x_996 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_996, 0.0f, 1.0f);
  let x_1001 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_1003 : vec3<f32> = u_xlat6;
  u_xlat17.x = dot(vec3<f32>(x_1001.x, x_1001.y, x_1001.z), x_1003);
  let x_1007 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1007, 0.0f, 1.0f);
  let x_1012 : f32 = u_xlat17.x;
  let x_1014 : f32 = u_xlat17.x;
  u_xlat32 = (x_1012 * x_1014);
  let x_1016 : f32 = u_xlat32;
  let x_1018 : vec3<f32> = u_xlat20;
  u_xlat32 = dot(vec2<f32>(x_1016, x_1016), vec2<f32>(x_1018.x, x_1018.x));
  let x_1021 : f32 = u_xlat32;
  u_xlat32 = (x_1021 + -0.5f);
  let x_1024 : f32 = u_xlat47;
  u_xlat3.x = (-(x_1024) + 1.0f);
  let x_1030 : f32 = u_xlat3.x;
  let x_1032 : f32 = u_xlat3.x;
  u_xlat18 = (x_1030 * x_1032);
  let x_1034 : f32 = u_xlat18;
  let x_1035 : f32 = u_xlat18;
  u_xlat18 = (x_1034 * x_1035);
  let x_1038 : f32 = u_xlat3.x;
  let x_1039 : f32 = u_xlat18;
  u_xlat3.x = (x_1038 * x_1039);
  let x_1042 : f32 = u_xlat32;
  let x_1044 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1042 * x_1044) + 1.0f);
  let x_1048 : f32 = u_xlat46;
  u_xlat18 = (-(abs(x_1048)) + 1.0f);
  let x_1053 : f32 = u_xlat18;
  let x_1054 : f32 = u_xlat18;
  u_xlat33 = (x_1053 * x_1054);
  let x_1056 : f32 = u_xlat33;
  let x_1057 : f32 = u_xlat33;
  u_xlat33 = (x_1056 * x_1057);
  let x_1059 : f32 = u_xlat18;
  let x_1060 : f32 = u_xlat33;
  u_xlat18 = (x_1059 * x_1060);
  let x_1062 : f32 = u_xlat32;
  let x_1063 : f32 = u_xlat18;
  u_xlat32 = ((x_1062 * x_1063) + 1.0f);
  let x_1066 : f32 = u_xlat32;
  let x_1068 : f32 = u_xlat3.x;
  u_xlat32 = (x_1066 * x_1068);
  let x_1070 : f32 = u_xlat47;
  let x_1071 : f32 = u_xlat32;
  u_xlat32 = (x_1070 * x_1071);
  let x_1074 : f32 = u_xlat20.x;
  let x_1076 : f32 = u_xlat20.x;
  u_xlat3.x = (x_1074 * x_1076);
  let x_1080 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1080, 0.002f);
  let x_1085 : f32 = u_xlat3.x;
  u_xlat33 = (-(x_1085) + 1.0f);
  let x_1088 : f32 = u_xlat46;
  let x_1090 : f32 = u_xlat33;
  let x_1093 : f32 = u_xlat3.x;
  u_xlat48 = ((abs(x_1088) * x_1090) + x_1093);
  let x_1095 : f32 = u_xlat47;
  let x_1096 : f32 = u_xlat33;
  let x_1099 : f32 = u_xlat3.x;
  u_xlat33 = ((x_1095 * x_1096) + x_1099);
  let x_1101 : f32 = u_xlat46;
  let x_1103 : f32 = u_xlat33;
  u_xlat46 = (abs(x_1101) * x_1103);
  let x_1105 : f32 = u_xlat47;
  let x_1106 : f32 = u_xlat48;
  let x_1108 : f32 = u_xlat46;
  u_xlat46 = ((x_1105 * x_1106) + x_1108);
  let x_1110 : f32 = u_xlat46;
  u_xlat46 = (x_1110 + 0.00001f);
  let x_1113 : f32 = u_xlat46;
  u_xlat46 = (0.5f / x_1113);
  let x_1116 : f32 = u_xlat3.x;
  let x_1118 : f32 = u_xlat3.x;
  u_xlat33 = (x_1116 * x_1118);
  let x_1121 : f32 = u_xlat2.x;
  let x_1122 : f32 = u_xlat33;
  let x_1125 : f32 = u_xlat2.x;
  u_xlat48 = ((x_1121 * x_1122) + -(x_1125));
  let x_1128 : f32 = u_xlat48;
  let x_1130 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1128 * x_1130) + 1.0f);
  let x_1134 : f32 = u_xlat33;
  u_xlat33 = (x_1134 * 0.318309873f);
  let x_1138 : f32 = u_xlat2.x;
  let x_1140 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1138 * x_1140) + 0.0000001f);
  let x_1145 : f32 = u_xlat33;
  let x_1147 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1145 / x_1147);
  let x_1150 : f32 = u_xlat46;
  let x_1152 : f32 = u_xlat2.x;
  u_xlat46 = (x_1150 * x_1152);
  let x_1154 : f32 = u_xlat47;
  let x_1155 : f32 = u_xlat46;
  u_xlat46 = (x_1154 * x_1155);
  let x_1157 : f32 = u_xlat46;
  u_xlat46 = (x_1157 * 3.141592741f);
  let x_1160 : f32 = u_xlat46;
  u_xlat46 = max(x_1160, 0.0f);
  let x_1163 : f32 = u_xlat3.x;
  let x_1165 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_1163 * x_1165) + 1.0f);
  let x_1170 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_1170);
  let x_1173 : vec4<f32> = u_xlat0;
  let x_1175 : vec4<f32> = u_xlat0;
  u_xlat47 = dot(vec3<f32>(x_1173.x, x_1173.y, x_1173.z), vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
  let x_1178 : f32 = u_xlat47;
  u_xlatb47 = !((x_1178 == 0.0f));
  let x_1180 : bool = u_xlatb47;
  u_xlat47 = select(0.0f, 1.0f, x_1180);
  let x_1182 : f32 = u_xlat46;
  let x_1183 : f32 = u_xlat47;
  u_xlat46 = (x_1182 * x_1183);
  let x_1185 : f32 = u_xlat45;
  let x_1188 : f32 = x_37.x_Glossiness;
  u_xlat45 = (-(x_1185) + x_1188);
  let x_1190 : f32 = u_xlat45;
  u_xlat45 = (x_1190 + 1.0f);
  let x_1192 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1192, 0.0f, 1.0f);
  let x_1194 : f32 = u_xlat32;
  let x_1196 : vec3<f32> = u_xlat7;
  let x_1197 : vec3<f32> = (vec3<f32>(x_1194, x_1194, x_1194) * x_1196);
  let x_1198 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1197.x, x_1198.y, x_1197.y, x_1197.z);
  let x_1200 : vec4<f32> = u_xlat8;
  let x_1202 : vec4<f32> = u_xlat5;
  let x_1205 : vec4<f32> = u_xlat3;
  let x_1207 : vec3<f32> = ((vec3<f32>(x_1200.x, x_1200.y, x_1200.z) * vec3<f32>(x_1202.x, x_1202.x, x_1202.x)) + vec3<f32>(x_1205.x, x_1205.z, x_1205.w));
  let x_1208 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1207.x, x_1208.y, x_1207.y, x_1207.z);
  let x_1210 : vec3<f32> = u_xlat7;
  let x_1211 : f32 = u_xlat46;
  let x_1213 : vec3<f32> = (x_1210 * vec3<f32>(x_1211, x_1211, x_1211));
  let x_1214 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
  let x_1217 : f32 = u_xlat17.x;
  u_xlat46 = (-(x_1217) + 1.0f);
  let x_1220 : f32 = u_xlat46;
  let x_1221 : f32 = u_xlat46;
  u_xlat17.x = (x_1220 * x_1221);
  let x_1225 : f32 = u_xlat17.x;
  let x_1227 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1225 * x_1227);
  let x_1230 : f32 = u_xlat46;
  let x_1232 : f32 = u_xlat17.x;
  u_xlat46 = (x_1230 * x_1232);
  let x_1234 : vec4<f32> = u_xlat0;
  u_xlat17 = (-(vec3<f32>(x_1234.x, x_1234.y, x_1234.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1239 : vec3<f32> = u_xlat17;
  let x_1240 : f32 = u_xlat46;
  let x_1243 : vec4<f32> = u_xlat0;
  u_xlat17 = ((x_1239 * vec3<f32>(x_1240, x_1240, x_1240)) + vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1246 : vec3<f32> = u_xlat17;
  let x_1247 : vec4<f32> = u_xlat5;
  u_xlat17 = (x_1246 * vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec3<f32> = u_xlat1;
  let x_1251 : vec4<f32> = u_xlat3;
  let x_1254 : vec3<f32> = u_xlat17;
  u_xlat1 = ((x_1250 * vec3<f32>(x_1251.x, x_1251.z, x_1251.w)) + x_1254);
  let x_1256 : vec4<f32> = u_xlat4;
  let x_1258 : vec4<f32> = u_xlat2;
  let x_1260 : vec3<f32> = (vec3<f32>(x_1256.x, x_1256.y, x_1256.z) * vec3<f32>(x_1258.x, x_1258.x, x_1258.x));
  let x_1261 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1261.w);
  let x_1263 : vec4<f32> = u_xlat0;
  let x_1266 : f32 = u_xlat45;
  let x_1268 : vec3<f32> = (-(vec3<f32>(x_1263.x, x_1263.y, x_1263.z)) + vec3<f32>(x_1266, x_1266, x_1266));
  let x_1269 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1268.x, x_1269.y, x_1268.y, x_1268.z);
  let x_1271 : f32 = u_xlat18;
  let x_1273 : vec4<f32> = u_xlat3;
  let x_1276 : vec4<f32> = u_xlat0;
  let x_1278 : vec3<f32> = ((vec3<f32>(x_1271, x_1271, x_1271) * vec3<f32>(x_1273.x, x_1273.z, x_1273.w)) + vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
  let x_1279 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
  let x_1281 : vec4<f32> = u_xlat2;
  let x_1283 : vec4<f32> = u_xlat0;
  let x_1286 : vec3<f32> = u_xlat1;
  let x_1287 : vec3<f32> = ((vec3<f32>(x_1281.x, x_1281.y, x_1281.z) * vec3<f32>(x_1283.x, x_1283.y, x_1283.z)) + x_1286);
  let x_1288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
  let x_1295 : vec4<f32> = vs_TEXCOORD0;
  let x_1297 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_1295.x, x_1295.y));
  u_xlat1 = vec3<f32>(x_1297.x, x_1297.y, x_1297.z);
  let x_1299 : vec3<f32> = u_xlat1;
  let x_1302 : vec4<f32> = x_37.x_EmissionColor;
  let x_1305 : vec4<f32> = u_xlat0;
  let x_1307 : vec3<f32> = ((x_1299 * vec3<f32>(x_1302.x, x_1302.y, x_1302.z)) + vec3<f32>(x_1305.x, x_1305.y, x_1305.z));
  let x_1308 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1307.x, x_1307.y, x_1307.z, x_1308.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

