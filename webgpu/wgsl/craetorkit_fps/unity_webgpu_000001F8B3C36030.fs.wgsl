struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat45 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : f32;
  var u_xlat18 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlatb46 : bool;
  var u_xlatb19 : bool;
  var x_279 : vec3<f32>;
  var u_xlat34 : vec2<f32>;
  var u_xlat49 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlatb45 : bool;
  var u_xlat8 : vec4<f32>;
  var x_481 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_667 : f32;
  var x_679 : f32;
  var x_691 : f32;
  var u_xlatb47 : bool;
  var u_xlat47 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_851 : f32;
  var x_863 : f32;
  var x_875 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat32 : f32;
  var u_xlat33 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Color;
  u_xlat1 = (x_27 * x_37);
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = x_32.x_Color;
  let x_47 : vec3<f32> = ((vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_42.x, x_42.y, x_42.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_47.z, x_48.w);
  let x_53 : f32 = x_32.x_Metallic;
  let x_55 : f32 = x_32.x_Metallic;
  let x_57 : f32 = x_32.x_Metallic;
  let x_58 : vec3<f32> = vec3<f32>(x_53, x_55, x_57);
  let x_63 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_63.x, x_63.y, x_63.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : f32 = x_32.x_Metallic;
  u_xlat45 = ((-(x_74) * 0.959999979f) + 0.959999979f);
  let x_79 : f32 = u_xlat45;
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec4<f32> = vs_TEXCOORD4;
  let x_90 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_88.x, x_88.y, x_88.z), vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_97 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_97);
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = vs_TEXCOORD4;
  let x_104 : vec3<f32> = (vec3<f32>(x_100.x, x_100.x, x_100.x) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_109 : vec4<f32> = vs_TEXCOORD1;
  let x_111 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = dot(vec3<f32>(x_109.x, x_109.y, x_109.z), vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : f32 = u_xlat3;
  u_xlat3 = inverseSqrt(x_114);
  let x_118 : f32 = u_xlat3;
  let x_120 : vec4<f32> = vs_TEXCOORD1;
  u_xlat18 = (vec3<f32>(x_118, x_118, x_118) * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec3<f32> = (vec3<f32>(x_123.w, x_123.w, x_123.w) * vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_131 : f32 = u_xlat45;
  u_xlat4.x = (-(x_131) + 1.0f);
  let x_140 : f32 = u_xlat1.w;
  let x_141 : f32 = u_xlat45;
  let x_144 : f32 = u_xlat4.x;
  SV_Target0.w = ((x_140 * x_141) + x_144);
  let x_152 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_152;
  let x_156 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_156;
  let x_160 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_160;
  let x_164 : vec4<f32> = u_xlat5;
  let x_170 : vec3<f32> = x_32.x_WorldSpaceCameraPos;
  u_xlat19 = (-(vec3<f32>(x_164.x, x_164.y, x_164.z)) + x_170);
  let x_175 : f32 = x_32.unity_MatrixV[0i].z;
  u_xlat6.x = x_175;
  let x_179 : f32 = x_32.unity_MatrixV[1i].z;
  u_xlat6.y = x_179;
  let x_183 : f32 = x_32.unity_MatrixV[2i].z;
  u_xlat6.z = x_183;
  let x_185 : vec3<f32> = u_xlat19;
  let x_186 : vec4<f32> = u_xlat6;
  u_xlat45 = dot(x_185, vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : vec4<f32> = u_xlat5;
  let x_193 : vec4<f32> = x_32.unity_ShadowFadeCenterAndType;
  u_xlat19 = (vec3<f32>(x_189.x, x_189.y, x_189.z) + -(vec3<f32>(x_193.x, x_193.y, x_193.z)));
  let x_198 : vec3<f32> = u_xlat19;
  let x_199 : vec3<f32> = u_xlat19;
  u_xlat46 = dot(x_198, x_199);
  let x_201 : f32 = u_xlat46;
  u_xlat46 = sqrt(x_201);
  let x_203 : f32 = u_xlat45;
  let x_205 : f32 = u_xlat46;
  u_xlat46 = (-(x_203) + x_205);
  let x_208 : f32 = x_32.unity_ShadowFadeCenterAndType.w;
  let x_209 : f32 = u_xlat46;
  let x_211 : f32 = u_xlat45;
  u_xlat45 = ((x_208 * x_209) + x_211);
  let x_213 : f32 = u_xlat45;
  let x_216 : f32 = x_32.x_LightShadowData.z;
  let x_219 : f32 = x_32.x_LightShadowData.w;
  u_xlat45 = ((x_213 * x_216) + x_219);
  let x_221 : f32 = u_xlat45;
  u_xlat45 = clamp(x_221, 0.0f, 1.0f);
  let x_229 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb46 = (x_229 == 1.0f);
  let x_231 : bool = u_xlatb46;
  if (x_231) {
    let x_236 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_236 == 1.0f);
    let x_238 : vec4<f32> = vs_TEXCOORD3;
    let x_242 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_244 : vec3<f32> = (vec3<f32>(x_238.w, x_238.w, x_238.w) * vec3<f32>(x_242.x, x_242.y, x_242.z));
    let x_245 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
    let x_248 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_250 : vec4<f32> = vs_TEXCOORD2;
    let x_253 : vec4<f32> = u_xlat6;
    let x_255 : vec3<f32> = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.w, x_250.w, x_250.w)) + vec3<f32>(x_253.x, x_253.y, x_253.z));
    let x_256 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_259 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_261 : vec4<f32> = vs_TEXCOORD4;
    let x_264 : vec4<f32> = u_xlat6;
    let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.w, x_261.w, x_261.w)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
    let x_267 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
    let x_269 : vec4<f32> = u_xlat6;
    let x_273 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_275 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) + vec3<f32>(x_273.x, x_273.y, x_273.z));
    let x_276 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
    let x_278 : bool = u_xlatb19;
    if (x_278) {
      let x_282 : vec4<f32> = u_xlat6;
      x_279 = vec3<f32>(x_282.x, x_282.y, x_282.z);
    } else {
      let x_285 : vec4<f32> = u_xlat5;
      x_279 = vec3<f32>(x_285.x, x_285.y, x_285.z);
    }
    let x_287 : vec3<f32> = x_279;
    u_xlat19 = x_287;
    let x_288 : vec3<f32> = u_xlat19;
    let x_291 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    u_xlat19 = (x_288 + -(x_291));
    let x_294 : vec3<f32> = u_xlat19;
    let x_297 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_298 : vec3<f32> = (x_294 * x_297);
    let x_299 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_299.x, x_298.x, x_298.y, x_298.z);
    let x_302 : f32 = u_xlat6.y;
    u_xlat19.x = ((x_302 * 0.25f) + 0.75f);
    let x_311 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat34.x = ((x_311 * 0.5f) + 0.75f);
    let x_317 : f32 = u_xlat34.x;
    let x_319 : f32 = u_xlat19.x;
    u_xlat6.x = max(x_317, x_319);
    let x_330 : vec4<f32> = u_xlat6;
    let x_332 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_330.x, x_330.z, x_330.w));
    u_xlat6 = x_332;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_338 : vec4<f32> = u_xlat6;
  let x_341 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat19.x = dot(x_338, x_341);
  let x_345 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_345, 0.0f, 1.0f);
  let x_349 : vec4<f32> = vs_TEXCOORD7;
  let x_351 : vec4<f32> = vs_TEXCOORD7;
  u_xlat34 = (vec2<f32>(x_349.x, x_349.y) / vec2<f32>(x_351.w, x_351.w));
  let x_359 : vec2<f32> = u_xlat34;
  let x_360 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_359);
  u_xlat34.x = x_360.x;
  let x_364 : f32 = u_xlat34.x;
  let x_367 : f32 = u_xlat19.x;
  u_xlat19.x = (-(x_364) + x_367);
  let x_370 : f32 = u_xlat45;
  let x_372 : f32 = u_xlat19.x;
  let x_375 : f32 = u_xlat34.x;
  u_xlat45 = ((x_370 * x_372) + x_375);
  let x_382 : vec4<f32> = vs_TEXCOORD0;
  let x_384 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_382.x, x_382.y));
  u_xlat19.x = x_384.y;
  let x_389 : f32 = x_32.x_OcclusionStrength;
  u_xlat34.x = (-(x_389) + 1.0f);
  let x_394 : f32 = u_xlat19.x;
  let x_396 : f32 = x_32.x_OcclusionStrength;
  let x_399 : f32 = u_xlat34.x;
  u_xlat19.x = ((x_394 * x_396) + x_399);
  let x_404 : f32 = x_32.x_Glossiness;
  u_xlat34.x = (-(x_404) + 1.0f);
  let x_409 : vec3<f32> = u_xlat18;
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat49 = dot(x_409, vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : f32 = u_xlat49;
  let x_414 : f32 = u_xlat49;
  u_xlat49 = (x_413 + x_414);
  let x_416 : vec4<f32> = u_xlat2;
  let x_418 : f32 = u_xlat49;
  let x_422 : vec3<f32> = u_xlat18;
  let x_423 : vec3<f32> = ((vec3<f32>(x_416.x, x_416.y, x_416.z) * -(vec3<f32>(x_418, x_418, x_418))) + x_422);
  let x_424 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_427 : f32 = u_xlat45;
  let x_431 : vec4<f32> = x_32.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : bool = u_xlatb46;
  if (x_434) {
    let x_439 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb45 = (x_439 == 1.0f);
    let x_442 : vec4<f32> = vs_TEXCOORD3;
    let x_445 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_447 : vec3<f32> = (vec3<f32>(x_442.w, x_442.w, x_442.w) * vec3<f32>(x_445.x, x_445.y, x_445.z));
    let x_448 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
    let x_451 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_453 : vec4<f32> = vs_TEXCOORD2;
    let x_456 : vec4<f32> = u_xlat8;
    let x_458 : vec3<f32> = ((vec3<f32>(x_451.x, x_451.y, x_451.z) * vec3<f32>(x_453.w, x_453.w, x_453.w)) + vec3<f32>(x_456.x, x_456.y, x_456.z));
    let x_459 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
    let x_462 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_464 : vec4<f32> = vs_TEXCOORD4;
    let x_467 : vec4<f32> = u_xlat8;
    let x_469 : vec3<f32> = ((vec3<f32>(x_462.x, x_462.y, x_462.z) * vec3<f32>(x_464.w, x_464.w, x_464.w)) + vec3<f32>(x_467.x, x_467.y, x_467.z));
    let x_470 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
    let x_472 : vec4<f32> = u_xlat8;
    let x_475 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_477 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) + vec3<f32>(x_475.x, x_475.y, x_475.z));
    let x_478 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
    let x_480 : bool = u_xlatb45;
    if (x_480) {
      let x_484 : vec4<f32> = u_xlat8;
      x_481 = vec3<f32>(x_484.x, x_484.y, x_484.z);
    } else {
      let x_487 : vec4<f32> = u_xlat5;
      x_481 = vec3<f32>(x_487.x, x_487.y, x_487.z);
    }
    let x_489 : vec3<f32> = x_481;
    let x_490 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
    let x_492 : vec4<f32> = u_xlat8;
    let x_495 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_497 : vec3<f32> = (vec3<f32>(x_492.x, x_492.y, x_492.z) + -(x_495));
    let x_498 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
    let x_500 : vec4<f32> = u_xlat8;
    let x_503 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_504 : vec3<f32> = (vec3<f32>(x_500.x, x_500.y, x_500.z) * x_503);
    let x_505 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_505.x, x_504.x, x_504.y, x_504.z);
    let x_508 : f32 = u_xlat8.y;
    u_xlat45 = (x_508 * 0.25f);
    let x_511 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat46 = (x_511 * 0.5f);
    let x_514 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat49 = ((-(x_514) * 0.5f) + 0.25f);
    let x_518 : f32 = u_xlat45;
    let x_519 : f32 = u_xlat46;
    u_xlat45 = max(x_518, x_519);
    let x_521 : f32 = u_xlat49;
    let x_522 : f32 = u_xlat45;
    u_xlat8.x = min(x_521, x_522);
    let x_529 : vec4<f32> = u_xlat8;
    let x_531 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_529.x, x_529.z, x_529.w));
    u_xlat9 = x_531;
    let x_533 : vec4<f32> = u_xlat8;
    let x_536 : vec3<f32> = (vec3<f32>(x_533.x, x_533.z, x_533.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_537 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
    let x_542 : vec4<f32> = u_xlat10;
    let x_544 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_542.x, x_542.y, x_542.z));
    u_xlat10 = x_544;
    let x_545 : vec4<f32> = u_xlat8;
    let x_548 : vec3<f32> = (vec3<f32>(x_545.x, x_545.z, x_545.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_549 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
    let x_554 : vec4<f32> = u_xlat8;
    let x_556 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_554.x, x_554.y, x_554.z));
    u_xlat8 = x_556;
    u_xlat2.w = 1.0f;
    let x_558 : vec4<f32> = u_xlat9;
    let x_559 : vec4<f32> = u_xlat2;
    u_xlat9.x = dot(x_558, x_559);
    let x_562 : vec4<f32> = u_xlat10;
    let x_563 : vec4<f32> = u_xlat2;
    u_xlat9.y = dot(x_562, x_563);
    let x_566 : vec4<f32> = u_xlat8;
    let x_567 : vec4<f32> = u_xlat2;
    u_xlat9.z = dot(x_566, x_567);
  } else {
    u_xlat2.w = 1.0f;
    let x_573 : vec4<f32> = x_32.unity_SHAr;
    let x_574 : vec4<f32> = u_xlat2;
    u_xlat9.x = dot(x_573, x_574);
    let x_579 : vec4<f32> = x_32.unity_SHAg;
    let x_580 : vec4<f32> = u_xlat2;
    u_xlat9.y = dot(x_579, x_580);
    let x_585 : vec4<f32> = x_32.unity_SHAb;
    let x_586 : vec4<f32> = u_xlat2;
    u_xlat9.z = dot(x_585, x_586);
  }
  let x_589 : vec4<f32> = u_xlat9;
  let x_592 : vec4<f32> = vs_TEXCOORD5;
  let x_594 : vec3<f32> = (vec3<f32>(x_589.x, x_589.y, x_589.z) + vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat8;
  let x_600 : vec3<f32> = max(vec3<f32>(x_597.x, x_597.y, x_597.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_601 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_605 : f32 = x_32.unity_SpecCube0_ProbePosition.w;
  u_xlatb45 = (0.0f < x_605);
  let x_607 : bool = u_xlatb45;
  if (x_607) {
    let x_610 : vec4<f32> = u_xlat6;
    let x_612 : vec4<f32> = u_xlat6;
    u_xlat45 = dot(vec3<f32>(x_610.x, x_610.y, x_610.z), vec3<f32>(x_612.x, x_612.y, x_612.z));
    let x_615 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_615);
    let x_617 : f32 = u_xlat45;
    let x_619 : vec4<f32> = u_xlat6;
    let x_621 : vec3<f32> = (vec3<f32>(x_617, x_617, x_617) * vec3<f32>(x_619.x, x_619.y, x_619.z));
    let x_622 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
    let x_624 : vec4<f32> = u_xlat5;
    let x_629 : vec4<f32> = x_32.unity_SpecCube0_BoxMax;
    let x_631 : vec3<f32> = (-(vec3<f32>(x_624.x, x_624.y, x_624.z)) + vec3<f32>(x_629.x, x_629.y, x_629.z));
    let x_632 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
    let x_634 : vec4<f32> = u_xlat10;
    let x_636 : vec4<f32> = u_xlat9;
    let x_638 : vec3<f32> = (vec3<f32>(x_634.x, x_634.y, x_634.z) / vec3<f32>(x_636.x, x_636.y, x_636.z));
    let x_639 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
    let x_642 : vec4<f32> = u_xlat5;
    let x_647 : vec4<f32> = x_32.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_642.x, x_642.y, x_642.z)) + vec3<f32>(x_647.x, x_647.y, x_647.z));
    let x_650 : vec3<f32> = u_xlat11;
    let x_651 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_650 / vec3<f32>(x_651.x, x_651.y, x_651.z));
    let x_658 : vec4<f32> = u_xlat9;
    let x_661 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_658.x, x_658.y, x_658.z, x_658.x));
    u_xlatb12 = vec3<bool>(x_661.x, x_661.y, x_661.z);
    let x_664 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_664;
    let x_666 : bool = u_xlatb12.x;
    if (x_666) {
      let x_671 : f32 = u_xlat10.x;
      x_667 = x_671;
    } else {
      let x_674 : f32 = u_xlat11.x;
      x_667 = x_674;
    }
    let x_675 : f32 = x_667;
    hlslcc_movcTemp.x = x_675;
    let x_678 : bool = u_xlatb12.y;
    if (x_678) {
      let x_683 : f32 = u_xlat10.y;
      x_679 = x_683;
    } else {
      let x_686 : f32 = u_xlat11.y;
      x_679 = x_686;
    }
    let x_687 : f32 = x_679;
    hlslcc_movcTemp.y = x_687;
    let x_690 : bool = u_xlatb12.z;
    if (x_690) {
      let x_695 : f32 = u_xlat10.z;
      x_691 = x_695;
    } else {
      let x_698 : f32 = u_xlat11.z;
      x_691 = x_698;
    }
    let x_699 : f32 = x_691;
    hlslcc_movcTemp.z = x_699;
    let x_701 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_701;
    let x_703 : f32 = u_xlat10.y;
    let x_705 : f32 = u_xlat10.x;
    u_xlat45 = min(x_703, x_705);
    let x_708 : f32 = u_xlat10.z;
    let x_709 : f32 = u_xlat45;
    u_xlat45 = min(x_708, x_709);
    let x_711 : vec4<f32> = u_xlat5;
    let x_714 : vec4<f32> = x_32.unity_SpecCube0_ProbePosition;
    let x_717 : vec3<f32> = (vec3<f32>(x_711.x, x_711.y, x_711.z) + -(vec3<f32>(x_714.x, x_714.y, x_714.z)));
    let x_718 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
    let x_720 : vec4<f32> = u_xlat9;
    let x_722 : f32 = u_xlat45;
    let x_725 : vec4<f32> = u_xlat10;
    let x_727 : vec3<f32> = ((vec3<f32>(x_720.x, x_720.y, x_720.z) * vec3<f32>(x_722, x_722, x_722)) + vec3<f32>(x_725.x, x_725.y, x_725.z));
    let x_728 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  } else {
    let x_731 : vec4<f32> = u_xlat6;
    let x_732 : vec3<f32> = vec3<f32>(x_731.x, x_731.y, x_731.z);
    let x_733 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  }
  let x_736 : f32 = u_xlat34.x;
  u_xlat45 = ((-(x_736) * 0.699999988f) + 1.700000048f);
  let x_742 : f32 = u_xlat45;
  let x_744 : f32 = u_xlat34.x;
  u_xlat45 = (x_742 * x_744);
  let x_746 : f32 = u_xlat45;
  u_xlat45 = (x_746 * 6.0f);
  let x_757 : vec4<f32> = u_xlat9;
  let x_759 : f32 = u_xlat45;
  let x_760 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_757.x, x_757.y, x_757.z), x_759);
  u_xlat9 = x_760;
  let x_762 : f32 = u_xlat9.w;
  u_xlat46 = (x_762 + -1.0f);
  let x_767 : f32 = x_32.unity_SpecCube0_HDR.w;
  let x_768 : f32 = u_xlat46;
  u_xlat46 = ((x_767 * x_768) + 1.0f);
  let x_771 : f32 = u_xlat46;
  u_xlat46 = log2(x_771);
  let x_773 : f32 = u_xlat46;
  let x_775 : f32 = x_32.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_773 * x_775);
  let x_777 : f32 = u_xlat46;
  u_xlat46 = exp2(x_777);
  let x_779 : f32 = u_xlat46;
  let x_781 : f32 = x_32.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_779 * x_781);
  let x_783 : vec4<f32> = u_xlat9;
  let x_785 : f32 = u_xlat46;
  let x_787 : vec3<f32> = (vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(x_785, x_785, x_785));
  let x_788 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_792 : f32 = x_32.unity_SpecCube0_BoxMin.w;
  u_xlatb47 = (x_792 < 0.999989986f);
  let x_795 : bool = u_xlatb47;
  if (x_795) {
    let x_800 : f32 = x_32.unity_SpecCube1_ProbePosition.w;
    u_xlatb47 = (0.0f < x_800);
    let x_802 : bool = u_xlatb47;
    if (x_802) {
      let x_806 : vec4<f32> = u_xlat6;
      let x_808 : vec4<f32> = u_xlat6;
      u_xlat47 = dot(vec3<f32>(x_806.x, x_806.y, x_806.z), vec3<f32>(x_808.x, x_808.y, x_808.z));
      let x_811 : f32 = u_xlat47;
      u_xlat47 = inverseSqrt(x_811);
      let x_813 : f32 = u_xlat47;
      let x_815 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_813, x_813, x_813) * vec3<f32>(x_815.x, x_815.y, x_815.z));
      let x_819 : vec4<f32> = u_xlat5;
      let x_824 : vec4<f32> = x_32.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(vec3<f32>(x_819.x, x_819.y, x_819.z)) + vec3<f32>(x_824.x, x_824.y, x_824.z));
      let x_827 : vec3<f32> = u_xlat12;
      let x_828 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_827 / x_828);
      let x_831 : vec4<f32> = u_xlat5;
      let x_836 : vec4<f32> = x_32.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(vec3<f32>(x_831.x, x_831.y, x_831.z)) + vec3<f32>(x_836.x, x_836.y, x_836.z));
      let x_839 : vec3<f32> = u_xlat13;
      let x_840 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_839 / x_840);
      let x_843 : vec3<f32> = u_xlat11;
      let x_845 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_843.x, x_843.y, x_843.z, x_843.x));
      u_xlatb14 = vec3<bool>(x_845.x, x_845.y, x_845.z);
      let x_848 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_848;
      let x_850 : bool = u_xlatb14.x;
      if (x_850) {
        let x_855 : f32 = u_xlat12.x;
        x_851 = x_855;
      } else {
        let x_858 : f32 = u_xlat13.x;
        x_851 = x_858;
      }
      let x_859 : f32 = x_851;
      hlslcc_movcTemp_1.x = x_859;
      let x_862 : bool = u_xlatb14.y;
      if (x_862) {
        let x_867 : f32 = u_xlat12.y;
        x_863 = x_867;
      } else {
        let x_870 : f32 = u_xlat13.y;
        x_863 = x_870;
      }
      let x_871 : f32 = x_863;
      hlslcc_movcTemp_1.y = x_871;
      let x_874 : bool = u_xlatb14.z;
      if (x_874) {
        let x_879 : f32 = u_xlat12.z;
        x_875 = x_879;
      } else {
        let x_882 : f32 = u_xlat13.z;
        x_875 = x_882;
      }
      let x_883 : f32 = x_875;
      hlslcc_movcTemp_1.z = x_883;
      let x_885 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_885;
      let x_887 : f32 = u_xlat12.y;
      let x_889 : f32 = u_xlat12.x;
      u_xlat47 = min(x_887, x_889);
      let x_892 : f32 = u_xlat12.z;
      let x_893 : f32 = u_xlat47;
      u_xlat47 = min(x_892, x_893);
      let x_895 : vec4<f32> = u_xlat5;
      let x_898 : vec4<f32> = x_32.unity_SpecCube1_ProbePosition;
      let x_901 : vec3<f32> = (vec3<f32>(x_895.x, x_895.y, x_895.z) + -(vec3<f32>(x_898.x, x_898.y, x_898.z)));
      let x_902 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
      let x_904 : vec3<f32> = u_xlat11;
      let x_905 : f32 = u_xlat47;
      let x_908 : vec4<f32> = u_xlat5;
      let x_910 : vec3<f32> = ((x_904 * vec3<f32>(x_905, x_905, x_905)) + vec3<f32>(x_908.x, x_908.y, x_908.z));
      let x_911 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
    }
    let x_917 : vec4<f32> = u_xlat6;
    let x_919 : f32 = u_xlat45;
    let x_920 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_917.x, x_917.y, x_917.z), x_919);
    u_xlat5 = x_920;
    let x_922 : f32 = u_xlat5.w;
    u_xlat45 = (x_922 + -1.0f);
    let x_926 : f32 = x_32.unity_SpecCube1_HDR.w;
    let x_927 : f32 = u_xlat45;
    u_xlat45 = ((x_926 * x_927) + 1.0f);
    let x_930 : f32 = u_xlat45;
    u_xlat45 = log2(x_930);
    let x_932 : f32 = u_xlat45;
    let x_934 : f32 = x_32.unity_SpecCube1_HDR.y;
    u_xlat45 = (x_932 * x_934);
    let x_936 : f32 = u_xlat45;
    u_xlat45 = exp2(x_936);
    let x_938 : f32 = u_xlat45;
    let x_940 : f32 = x_32.unity_SpecCube1_HDR.x;
    u_xlat45 = (x_938 * x_940);
    let x_942 : vec4<f32> = u_xlat5;
    let x_944 : f32 = u_xlat45;
    let x_946 : vec3<f32> = (vec3<f32>(x_942.x, x_942.y, x_942.z) * vec3<f32>(x_944, x_944, x_944));
    let x_947 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
    let x_949 : f32 = u_xlat46;
    let x_951 : vec4<f32> = u_xlat9;
    let x_954 : vec4<f32> = u_xlat5;
    let x_957 : vec3<f32> = ((vec3<f32>(x_949, x_949, x_949) * vec3<f32>(x_951.x, x_951.y, x_951.z)) + -(vec3<f32>(x_954.x, x_954.y, x_954.z)));
    let x_958 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
    let x_961 : vec4<f32> = x_32.unity_SpecCube0_BoxMin;
    let x_963 : vec4<f32> = u_xlat6;
    let x_966 : vec4<f32> = u_xlat5;
    let x_968 : vec3<f32> = ((vec3<f32>(x_961.w, x_961.w, x_961.w) * vec3<f32>(x_963.x, x_963.y, x_963.z)) + vec3<f32>(x_966.x, x_966.y, x_966.z));
    let x_969 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
  }
  let x_971 : vec3<f32> = u_xlat19;
  let x_973 : vec4<f32> = u_xlat10;
  let x_975 : vec3<f32> = (vec3<f32>(x_971.x, x_971.x, x_971.x) * vec3<f32>(x_973.x, x_973.y, x_973.z));
  let x_976 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_978 : vec4<f32> = vs_TEXCOORD1;
  let x_981 : f32 = u_xlat3;
  let x_985 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  let x_987 : vec3<f32> = ((-(vec3<f32>(x_978.x, x_978.y, x_978.z)) * vec3<f32>(x_981, x_981, x_981)) + vec3<f32>(x_985.x, x_985.y, x_985.z));
  let x_988 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
  let x_990 : vec4<f32> = u_xlat6;
  let x_992 : vec4<f32> = u_xlat6;
  u_xlat45 = dot(vec3<f32>(x_990.x, x_990.y, x_990.z), vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : f32 = u_xlat45;
  u_xlat45 = max(x_995, 0.001f);
  let x_998 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_998);
  let x_1000 : f32 = u_xlat45;
  let x_1002 : vec4<f32> = u_xlat6;
  let x_1004 : vec3<f32> = (vec3<f32>(x_1000, x_1000, x_1000) * vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1005 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
  let x_1007 : vec4<f32> = u_xlat2;
  let x_1009 : vec3<f32> = u_xlat18;
  u_xlat45 = dot(vec3<f32>(x_1007.x, x_1007.y, x_1007.z), -(x_1009));
  let x_1012 : vec4<f32> = u_xlat2;
  let x_1015 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  u_xlat46 = dot(vec3<f32>(x_1012.x, x_1012.y, x_1012.z), vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1018, 0.0f, 1.0f);
  let x_1020 : vec4<f32> = u_xlat2;
  let x_1022 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_1020.x, x_1020.y, x_1020.z), vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1027 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1027, 0.0f, 1.0f);
  let x_1032 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  let x_1034 : vec4<f32> = u_xlat6;
  u_xlat17.x = dot(vec3<f32>(x_1032.x, x_1032.y, x_1032.z), vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1039 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1039, 0.0f, 1.0f);
  let x_1044 : f32 = u_xlat17.x;
  let x_1046 : f32 = u_xlat17.x;
  u_xlat32 = (x_1044 * x_1046);
  let x_1048 : f32 = u_xlat32;
  let x_1050 : vec2<f32> = u_xlat34;
  u_xlat32 = dot(vec2<f32>(x_1048, x_1048), vec2<f32>(x_1050.x, x_1050.x));
  let x_1053 : f32 = u_xlat32;
  u_xlat32 = (x_1053 + -0.5f);
  let x_1056 : f32 = u_xlat46;
  u_xlat47 = (-(x_1056) + 1.0f);
  let x_1059 : f32 = u_xlat47;
  let x_1060 : f32 = u_xlat47;
  u_xlat3 = (x_1059 * x_1060);
  let x_1062 : f32 = u_xlat3;
  let x_1063 : f32 = u_xlat3;
  u_xlat3 = (x_1062 * x_1063);
  let x_1065 : f32 = u_xlat47;
  let x_1066 : f32 = u_xlat3;
  u_xlat47 = (x_1065 * x_1066);
  let x_1068 : f32 = u_xlat32;
  let x_1069 : f32 = u_xlat47;
  u_xlat47 = ((x_1068 * x_1069) + 1.0f);
  let x_1072 : f32 = u_xlat45;
  u_xlat3 = (-(abs(x_1072)) + 1.0f);
  let x_1076 : f32 = u_xlat3;
  let x_1077 : f32 = u_xlat3;
  u_xlat18.x = (x_1076 * x_1077);
  let x_1081 : f32 = u_xlat18.x;
  let x_1083 : f32 = u_xlat18.x;
  u_xlat18.x = (x_1081 * x_1083);
  let x_1086 : f32 = u_xlat3;
  let x_1088 : f32 = u_xlat18.x;
  u_xlat3 = (x_1086 * x_1088);
  let x_1090 : f32 = u_xlat32;
  let x_1091 : f32 = u_xlat3;
  u_xlat32 = ((x_1090 * x_1091) + 1.0f);
  let x_1094 : f32 = u_xlat32;
  let x_1095 : f32 = u_xlat47;
  u_xlat32 = (x_1094 * x_1095);
  let x_1097 : f32 = u_xlat46;
  let x_1098 : f32 = u_xlat32;
  u_xlat32 = (x_1097 * x_1098);
  let x_1101 : f32 = u_xlat34.x;
  let x_1103 : f32 = u_xlat34.x;
  u_xlat47 = (x_1101 * x_1103);
  let x_1105 : f32 = u_xlat47;
  u_xlat47 = max(x_1105, 0.002f);
  let x_1108 : f32 = u_xlat47;
  u_xlat18.x = (-(x_1108) + 1.0f);
  let x_1113 : f32 = u_xlat45;
  let x_1116 : f32 = u_xlat18.x;
  let x_1118 : f32 = u_xlat47;
  u_xlat33 = ((abs(x_1113) * x_1116) + x_1118);
  let x_1120 : f32 = u_xlat46;
  let x_1122 : f32 = u_xlat18.x;
  let x_1124 : f32 = u_xlat47;
  u_xlat18.x = ((x_1120 * x_1122) + x_1124);
  let x_1127 : f32 = u_xlat45;
  let x_1130 : f32 = u_xlat18.x;
  u_xlat45 = (abs(x_1127) * x_1130);
  let x_1132 : f32 = u_xlat46;
  let x_1133 : f32 = u_xlat33;
  let x_1135 : f32 = u_xlat45;
  u_xlat45 = ((x_1132 * x_1133) + x_1135);
  let x_1137 : f32 = u_xlat45;
  u_xlat45 = (x_1137 + 0.00001f);
  let x_1140 : f32 = u_xlat45;
  u_xlat45 = (0.5f / x_1140);
  let x_1142 : f32 = u_xlat47;
  let x_1143 : f32 = u_xlat47;
  u_xlat18.x = (x_1142 * x_1143);
  let x_1147 : f32 = u_xlat2.x;
  let x_1149 : f32 = u_xlat18.x;
  let x_1152 : f32 = u_xlat2.x;
  u_xlat33 = ((x_1147 * x_1149) + -(x_1152));
  let x_1155 : f32 = u_xlat33;
  let x_1157 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1155 * x_1157) + 1.0f);
  let x_1162 : f32 = u_xlat18.x;
  u_xlat18.x = (x_1162 * 0.318309873f);
  let x_1167 : f32 = u_xlat2.x;
  let x_1169 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1167 * x_1169) + 0.0000001f);
  let x_1175 : f32 = u_xlat18.x;
  let x_1177 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1175 / x_1177);
  let x_1180 : f32 = u_xlat45;
  let x_1182 : f32 = u_xlat2.x;
  u_xlat45 = (x_1180 * x_1182);
  let x_1184 : f32 = u_xlat46;
  let x_1185 : f32 = u_xlat45;
  u_xlat45 = (x_1184 * x_1185);
  let x_1187 : f32 = u_xlat45;
  u_xlat45 = (x_1187 * 3.141592741f);
  let x_1190 : f32 = u_xlat45;
  u_xlat45 = max(x_1190, 0.0f);
  let x_1192 : f32 = u_xlat47;
  let x_1193 : f32 = u_xlat47;
  u_xlat46 = ((x_1192 * x_1193) + 1.0f);
  let x_1196 : f32 = u_xlat46;
  u_xlat46 = (1.0f / x_1196);
  let x_1198 : vec4<f32> = u_xlat0;
  let x_1200 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_1198.x, x_1198.y, x_1198.z), vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
  let x_1206 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1206 == 0.0f));
  let x_1208 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1208);
  let x_1211 : f32 = u_xlat45;
  let x_1213 : f32 = u_xlat2.x;
  u_xlat45 = (x_1211 * x_1213);
  let x_1216 : f32 = u_xlat4.x;
  let x_1218 : f32 = x_32.x_Glossiness;
  u_xlat2.x = (x_1216 + x_1218);
  let x_1222 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1222, 0.0f, 1.0f);
  let x_1225 : f32 = u_xlat32;
  let x_1227 : vec3<f32> = u_xlat7;
  u_xlat18 = (vec3<f32>(x_1225, x_1225, x_1225) * x_1227);
  let x_1229 : vec4<f32> = u_xlat8;
  let x_1231 : vec3<f32> = u_xlat19;
  let x_1234 : vec3<f32> = u_xlat18;
  u_xlat18 = ((vec3<f32>(x_1229.x, x_1229.y, x_1229.z) * vec3<f32>(x_1231.x, x_1231.x, x_1231.x)) + x_1234);
  let x_1236 : vec3<f32> = u_xlat7;
  let x_1237 : f32 = u_xlat45;
  u_xlat4 = (x_1236 * vec3<f32>(x_1237, x_1237, x_1237));
  let x_1241 : f32 = u_xlat17.x;
  u_xlat45 = (-(x_1241) + 1.0f);
  let x_1244 : f32 = u_xlat45;
  let x_1245 : f32 = u_xlat45;
  u_xlat17.x = (x_1244 * x_1245);
  let x_1249 : f32 = u_xlat17.x;
  let x_1251 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1249 * x_1251);
  let x_1254 : f32 = u_xlat45;
  let x_1256 : f32 = u_xlat17.x;
  u_xlat45 = (x_1254 * x_1256);
  let x_1258 : vec4<f32> = u_xlat0;
  u_xlat17 = (-(vec3<f32>(x_1258.x, x_1258.y, x_1258.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1263 : vec3<f32> = u_xlat17;
  let x_1264 : f32 = u_xlat45;
  let x_1267 : vec4<f32> = u_xlat0;
  u_xlat17 = ((x_1263 * vec3<f32>(x_1264, x_1264, x_1264)) + vec3<f32>(x_1267.x, x_1267.y, x_1267.z));
  let x_1270 : vec3<f32> = u_xlat17;
  let x_1271 : vec3<f32> = u_xlat4;
  u_xlat17 = (x_1270 * x_1271);
  let x_1273 : vec4<f32> = u_xlat1;
  let x_1275 : vec3<f32> = u_xlat18;
  let x_1277 : vec3<f32> = u_xlat17;
  let x_1278 : vec3<f32> = ((vec3<f32>(x_1273.x, x_1273.y, x_1273.z) * x_1275) + x_1277);
  let x_1279 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
  let x_1281 : vec4<f32> = u_xlat5;
  let x_1283 : f32 = u_xlat46;
  u_xlat17 = (vec3<f32>(x_1281.x, x_1281.y, x_1281.z) * vec3<f32>(x_1283, x_1283, x_1283));
  let x_1286 : vec4<f32> = u_xlat0;
  let x_1289 : vec4<f32> = u_xlat2;
  u_xlat18 = (-(vec3<f32>(x_1286.x, x_1286.y, x_1286.z)) + vec3<f32>(x_1289.x, x_1289.x, x_1289.x));
  let x_1292 : f32 = u_xlat3;
  let x_1294 : vec3<f32> = u_xlat18;
  let x_1296 : vec4<f32> = u_xlat0;
  let x_1298 : vec3<f32> = ((vec3<f32>(x_1292, x_1292, x_1292) * x_1294) + vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
  let x_1299 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
  let x_1301 : vec3<f32> = u_xlat17;
  let x_1302 : vec4<f32> = u_xlat0;
  let x_1305 : vec4<f32> = u_xlat1;
  let x_1307 : vec3<f32> = ((x_1301 * vec3<f32>(x_1302.x, x_1302.y, x_1302.z)) + vec3<f32>(x_1305.x, x_1305.y, x_1305.z));
  let x_1308 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1307.x, x_1307.y, x_1307.z, x_1308.w);
  let x_1311 : f32 = vs_TEXCOORD1.w;
  let x_1313 : f32 = x_32.x_ProjectionParams.y;
  u_xlat45 = (x_1311 / x_1313);
  let x_1315 : f32 = u_xlat45;
  u_xlat45 = (-(x_1315) + 1.0f);
  let x_1318 : f32 = u_xlat45;
  let x_1320 : f32 = x_32.x_ProjectionParams.z;
  u_xlat45 = (x_1318 * x_1320);
  let x_1322 : f32 = u_xlat45;
  u_xlat45 = max(x_1322, 0.0f);
  let x_1324 : f32 = u_xlat45;
  let x_1327 : f32 = x_32.unity_FogParams.x;
  u_xlat45 = (x_1324 * x_1327);
  let x_1329 : f32 = u_xlat45;
  let x_1330 : f32 = u_xlat45;
  u_xlat45 = (x_1329 * -(x_1330));
  let x_1333 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1333);
  let x_1335 : vec4<f32> = u_xlat0;
  let x_1339 : vec4<f32> = x_32.unity_FogColor;
  let x_1342 : vec3<f32> = (vec3<f32>(x_1335.x, x_1335.y, x_1335.z) + -(vec3<f32>(x_1339.x, x_1339.y, x_1339.z)));
  let x_1343 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
  let x_1345 : f32 = u_xlat45;
  let x_1347 : vec4<f32> = u_xlat0;
  let x_1351 : vec4<f32> = x_32.unity_FogColor;
  let x_1353 : vec3<f32> = ((vec3<f32>(x_1345, x_1345, x_1345) * vec3<f32>(x_1347.x, x_1347.y, x_1347.z)) + vec3<f32>(x_1351.x, x_1351.y, x_1351.z));
  let x_1354 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
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

