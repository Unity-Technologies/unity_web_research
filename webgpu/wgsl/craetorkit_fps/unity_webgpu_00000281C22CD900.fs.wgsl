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
  var x_666 : f32;
  var x_678 : f32;
  var x_690 : f32;
  var u_xlatb47 : bool;
  var u_xlat47 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_850 : f32;
  var x_862 : f32;
  var x_874 : f32;
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
    let x_578 : vec4<f32> = x_32.unity_SHAg;
    let x_579 : vec4<f32> = u_xlat2;
    u_xlat9.y = dot(x_578, x_579);
    let x_584 : vec4<f32> = x_32.unity_SHAb;
    let x_585 : vec4<f32> = u_xlat2;
    u_xlat9.z = dot(x_584, x_585);
  }
  let x_588 : vec4<f32> = u_xlat9;
  let x_591 : vec4<f32> = vs_TEXCOORD5;
  let x_593 : vec3<f32> = (vec3<f32>(x_588.x, x_588.y, x_588.z) + vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec4<f32> = u_xlat8;
  let x_599 : vec3<f32> = max(vec3<f32>(x_596.x, x_596.y, x_596.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_600 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_604 : f32 = x_32.unity_SpecCube0_ProbePosition.w;
  u_xlatb45 = (0.0f < x_604);
  let x_606 : bool = u_xlatb45;
  if (x_606) {
    let x_609 : vec4<f32> = u_xlat6;
    let x_611 : vec4<f32> = u_xlat6;
    u_xlat45 = dot(vec3<f32>(x_609.x, x_609.y, x_609.z), vec3<f32>(x_611.x, x_611.y, x_611.z));
    let x_614 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_614);
    let x_616 : f32 = u_xlat45;
    let x_618 : vec4<f32> = u_xlat6;
    let x_620 : vec3<f32> = (vec3<f32>(x_616, x_616, x_616) * vec3<f32>(x_618.x, x_618.y, x_618.z));
    let x_621 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
    let x_623 : vec4<f32> = u_xlat5;
    let x_628 : vec4<f32> = x_32.unity_SpecCube0_BoxMax;
    let x_630 : vec3<f32> = (-(vec3<f32>(x_623.x, x_623.y, x_623.z)) + vec3<f32>(x_628.x, x_628.y, x_628.z));
    let x_631 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
    let x_633 : vec4<f32> = u_xlat10;
    let x_635 : vec4<f32> = u_xlat9;
    let x_637 : vec3<f32> = (vec3<f32>(x_633.x, x_633.y, x_633.z) / vec3<f32>(x_635.x, x_635.y, x_635.z));
    let x_638 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
    let x_641 : vec4<f32> = u_xlat5;
    let x_646 : vec4<f32> = x_32.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_641.x, x_641.y, x_641.z)) + vec3<f32>(x_646.x, x_646.y, x_646.z));
    let x_649 : vec3<f32> = u_xlat11;
    let x_650 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_649 / vec3<f32>(x_650.x, x_650.y, x_650.z));
    let x_657 : vec4<f32> = u_xlat9;
    let x_660 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_657.x, x_657.y, x_657.z, x_657.x));
    u_xlatb12 = vec3<bool>(x_660.x, x_660.y, x_660.z);
    let x_663 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_663;
    let x_665 : bool = u_xlatb12.x;
    if (x_665) {
      let x_670 : f32 = u_xlat10.x;
      x_666 = x_670;
    } else {
      let x_673 : f32 = u_xlat11.x;
      x_666 = x_673;
    }
    let x_674 : f32 = x_666;
    hlslcc_movcTemp.x = x_674;
    let x_677 : bool = u_xlatb12.y;
    if (x_677) {
      let x_682 : f32 = u_xlat10.y;
      x_678 = x_682;
    } else {
      let x_685 : f32 = u_xlat11.y;
      x_678 = x_685;
    }
    let x_686 : f32 = x_678;
    hlslcc_movcTemp.y = x_686;
    let x_689 : bool = u_xlatb12.z;
    if (x_689) {
      let x_694 : f32 = u_xlat10.z;
      x_690 = x_694;
    } else {
      let x_697 : f32 = u_xlat11.z;
      x_690 = x_697;
    }
    let x_698 : f32 = x_690;
    hlslcc_movcTemp.z = x_698;
    let x_700 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_700;
    let x_702 : f32 = u_xlat10.y;
    let x_704 : f32 = u_xlat10.x;
    u_xlat45 = min(x_702, x_704);
    let x_707 : f32 = u_xlat10.z;
    let x_708 : f32 = u_xlat45;
    u_xlat45 = min(x_707, x_708);
    let x_710 : vec4<f32> = u_xlat5;
    let x_713 : vec4<f32> = x_32.unity_SpecCube0_ProbePosition;
    let x_716 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) + -(vec3<f32>(x_713.x, x_713.y, x_713.z)));
    let x_717 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
    let x_719 : vec4<f32> = u_xlat9;
    let x_721 : f32 = u_xlat45;
    let x_724 : vec4<f32> = u_xlat10;
    let x_726 : vec3<f32> = ((vec3<f32>(x_719.x, x_719.y, x_719.z) * vec3<f32>(x_721, x_721, x_721)) + vec3<f32>(x_724.x, x_724.y, x_724.z));
    let x_727 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  } else {
    let x_730 : vec4<f32> = u_xlat6;
    let x_731 : vec3<f32> = vec3<f32>(x_730.x, x_730.y, x_730.z);
    let x_732 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  }
  let x_735 : f32 = u_xlat34.x;
  u_xlat45 = ((-(x_735) * 0.699999988f) + 1.700000048f);
  let x_741 : f32 = u_xlat45;
  let x_743 : f32 = u_xlat34.x;
  u_xlat45 = (x_741 * x_743);
  let x_745 : f32 = u_xlat45;
  u_xlat45 = (x_745 * 6.0f);
  let x_756 : vec4<f32> = u_xlat9;
  let x_758 : f32 = u_xlat45;
  let x_759 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_756.x, x_756.y, x_756.z), x_758);
  u_xlat9 = x_759;
  let x_761 : f32 = u_xlat9.w;
  u_xlat46 = (x_761 + -1.0f);
  let x_766 : f32 = x_32.unity_SpecCube0_HDR.w;
  let x_767 : f32 = u_xlat46;
  u_xlat46 = ((x_766 * x_767) + 1.0f);
  let x_770 : f32 = u_xlat46;
  u_xlat46 = log2(x_770);
  let x_772 : f32 = u_xlat46;
  let x_774 : f32 = x_32.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_772 * x_774);
  let x_776 : f32 = u_xlat46;
  u_xlat46 = exp2(x_776);
  let x_778 : f32 = u_xlat46;
  let x_780 : f32 = x_32.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_778 * x_780);
  let x_782 : vec4<f32> = u_xlat9;
  let x_784 : f32 = u_xlat46;
  let x_786 : vec3<f32> = (vec3<f32>(x_782.x, x_782.y, x_782.z) * vec3<f32>(x_784, x_784, x_784));
  let x_787 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_791 : f32 = x_32.unity_SpecCube0_BoxMin.w;
  u_xlatb47 = (x_791 < 0.999989986f);
  let x_794 : bool = u_xlatb47;
  if (x_794) {
    let x_799 : f32 = x_32.unity_SpecCube1_ProbePosition.w;
    u_xlatb47 = (0.0f < x_799);
    let x_801 : bool = u_xlatb47;
    if (x_801) {
      let x_805 : vec4<f32> = u_xlat6;
      let x_807 : vec4<f32> = u_xlat6;
      u_xlat47 = dot(vec3<f32>(x_805.x, x_805.y, x_805.z), vec3<f32>(x_807.x, x_807.y, x_807.z));
      let x_810 : f32 = u_xlat47;
      u_xlat47 = inverseSqrt(x_810);
      let x_812 : f32 = u_xlat47;
      let x_814 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_812, x_812, x_812) * vec3<f32>(x_814.x, x_814.y, x_814.z));
      let x_818 : vec4<f32> = u_xlat5;
      let x_823 : vec4<f32> = x_32.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(vec3<f32>(x_818.x, x_818.y, x_818.z)) + vec3<f32>(x_823.x, x_823.y, x_823.z));
      let x_826 : vec3<f32> = u_xlat12;
      let x_827 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_826 / x_827);
      let x_830 : vec4<f32> = u_xlat5;
      let x_835 : vec4<f32> = x_32.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(vec3<f32>(x_830.x, x_830.y, x_830.z)) + vec3<f32>(x_835.x, x_835.y, x_835.z));
      let x_838 : vec3<f32> = u_xlat13;
      let x_839 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_838 / x_839);
      let x_842 : vec3<f32> = u_xlat11;
      let x_844 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_842.x, x_842.y, x_842.z, x_842.x));
      u_xlatb14 = vec3<bool>(x_844.x, x_844.y, x_844.z);
      let x_847 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_847;
      let x_849 : bool = u_xlatb14.x;
      if (x_849) {
        let x_854 : f32 = u_xlat12.x;
        x_850 = x_854;
      } else {
        let x_857 : f32 = u_xlat13.x;
        x_850 = x_857;
      }
      let x_858 : f32 = x_850;
      hlslcc_movcTemp_1.x = x_858;
      let x_861 : bool = u_xlatb14.y;
      if (x_861) {
        let x_866 : f32 = u_xlat12.y;
        x_862 = x_866;
      } else {
        let x_869 : f32 = u_xlat13.y;
        x_862 = x_869;
      }
      let x_870 : f32 = x_862;
      hlslcc_movcTemp_1.y = x_870;
      let x_873 : bool = u_xlatb14.z;
      if (x_873) {
        let x_878 : f32 = u_xlat12.z;
        x_874 = x_878;
      } else {
        let x_881 : f32 = u_xlat13.z;
        x_874 = x_881;
      }
      let x_882 : f32 = x_874;
      hlslcc_movcTemp_1.z = x_882;
      let x_884 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_884;
      let x_886 : f32 = u_xlat12.y;
      let x_888 : f32 = u_xlat12.x;
      u_xlat47 = min(x_886, x_888);
      let x_891 : f32 = u_xlat12.z;
      let x_892 : f32 = u_xlat47;
      u_xlat47 = min(x_891, x_892);
      let x_894 : vec4<f32> = u_xlat5;
      let x_897 : vec4<f32> = x_32.unity_SpecCube1_ProbePosition;
      let x_900 : vec3<f32> = (vec3<f32>(x_894.x, x_894.y, x_894.z) + -(vec3<f32>(x_897.x, x_897.y, x_897.z)));
      let x_901 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
      let x_903 : vec3<f32> = u_xlat11;
      let x_904 : f32 = u_xlat47;
      let x_907 : vec4<f32> = u_xlat5;
      let x_909 : vec3<f32> = ((x_903 * vec3<f32>(x_904, x_904, x_904)) + vec3<f32>(x_907.x, x_907.y, x_907.z));
      let x_910 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
    }
    let x_916 : vec4<f32> = u_xlat6;
    let x_918 : f32 = u_xlat45;
    let x_919 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_916.x, x_916.y, x_916.z), x_918);
    u_xlat5 = x_919;
    let x_921 : f32 = u_xlat5.w;
    u_xlat45 = (x_921 + -1.0f);
    let x_925 : f32 = x_32.unity_SpecCube1_HDR.w;
    let x_926 : f32 = u_xlat45;
    u_xlat45 = ((x_925 * x_926) + 1.0f);
    let x_929 : f32 = u_xlat45;
    u_xlat45 = log2(x_929);
    let x_931 : f32 = u_xlat45;
    let x_933 : f32 = x_32.unity_SpecCube1_HDR.y;
    u_xlat45 = (x_931 * x_933);
    let x_935 : f32 = u_xlat45;
    u_xlat45 = exp2(x_935);
    let x_937 : f32 = u_xlat45;
    let x_939 : f32 = x_32.unity_SpecCube1_HDR.x;
    u_xlat45 = (x_937 * x_939);
    let x_941 : vec4<f32> = u_xlat5;
    let x_943 : f32 = u_xlat45;
    let x_945 : vec3<f32> = (vec3<f32>(x_941.x, x_941.y, x_941.z) * vec3<f32>(x_943, x_943, x_943));
    let x_946 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
    let x_948 : f32 = u_xlat46;
    let x_950 : vec4<f32> = u_xlat9;
    let x_953 : vec4<f32> = u_xlat5;
    let x_956 : vec3<f32> = ((vec3<f32>(x_948, x_948, x_948) * vec3<f32>(x_950.x, x_950.y, x_950.z)) + -(vec3<f32>(x_953.x, x_953.y, x_953.z)));
    let x_957 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
    let x_960 : vec4<f32> = x_32.unity_SpecCube0_BoxMin;
    let x_962 : vec4<f32> = u_xlat6;
    let x_965 : vec4<f32> = u_xlat5;
    let x_967 : vec3<f32> = ((vec3<f32>(x_960.w, x_960.w, x_960.w) * vec3<f32>(x_962.x, x_962.y, x_962.z)) + vec3<f32>(x_965.x, x_965.y, x_965.z));
    let x_968 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  }
  let x_970 : vec3<f32> = u_xlat19;
  let x_972 : vec4<f32> = u_xlat10;
  let x_974 : vec3<f32> = (vec3<f32>(x_970.x, x_970.x, x_970.x) * vec3<f32>(x_972.x, x_972.y, x_972.z));
  let x_975 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_977 : vec4<f32> = vs_TEXCOORD1;
  let x_980 : f32 = u_xlat3;
  let x_984 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  let x_986 : vec3<f32> = ((-(vec3<f32>(x_977.x, x_977.y, x_977.z)) * vec3<f32>(x_980, x_980, x_980)) + vec3<f32>(x_984.x, x_984.y, x_984.z));
  let x_987 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_989 : vec4<f32> = u_xlat6;
  let x_991 : vec4<f32> = u_xlat6;
  u_xlat45 = dot(vec3<f32>(x_989.x, x_989.y, x_989.z), vec3<f32>(x_991.x, x_991.y, x_991.z));
  let x_994 : f32 = u_xlat45;
  u_xlat45 = max(x_994, 0.001f);
  let x_997 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_997);
  let x_999 : f32 = u_xlat45;
  let x_1001 : vec4<f32> = u_xlat6;
  let x_1003 : vec3<f32> = (vec3<f32>(x_999, x_999, x_999) * vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
  let x_1004 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1006 : vec4<f32> = u_xlat2;
  let x_1008 : vec3<f32> = u_xlat18;
  u_xlat45 = dot(vec3<f32>(x_1006.x, x_1006.y, x_1006.z), -(x_1008));
  let x_1011 : vec4<f32> = u_xlat2;
  let x_1014 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  u_xlat46 = dot(vec3<f32>(x_1011.x, x_1011.y, x_1011.z), vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
  let x_1017 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1017, 0.0f, 1.0f);
  let x_1019 : vec4<f32> = u_xlat2;
  let x_1021 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_1019.x, x_1019.y, x_1019.z), vec3<f32>(x_1021.x, x_1021.y, x_1021.z));
  let x_1026 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1026, 0.0f, 1.0f);
  let x_1031 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  let x_1033 : vec4<f32> = u_xlat6;
  u_xlat17.x = dot(vec3<f32>(x_1031.x, x_1031.y, x_1031.z), vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1038 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1038, 0.0f, 1.0f);
  let x_1043 : f32 = u_xlat17.x;
  let x_1045 : f32 = u_xlat17.x;
  u_xlat32 = (x_1043 * x_1045);
  let x_1047 : f32 = u_xlat32;
  let x_1049 : vec2<f32> = u_xlat34;
  u_xlat32 = dot(vec2<f32>(x_1047, x_1047), vec2<f32>(x_1049.x, x_1049.x));
  let x_1052 : f32 = u_xlat32;
  u_xlat32 = (x_1052 + -0.5f);
  let x_1055 : f32 = u_xlat46;
  u_xlat47 = (-(x_1055) + 1.0f);
  let x_1058 : f32 = u_xlat47;
  let x_1059 : f32 = u_xlat47;
  u_xlat3 = (x_1058 * x_1059);
  let x_1061 : f32 = u_xlat3;
  let x_1062 : f32 = u_xlat3;
  u_xlat3 = (x_1061 * x_1062);
  let x_1064 : f32 = u_xlat47;
  let x_1065 : f32 = u_xlat3;
  u_xlat47 = (x_1064 * x_1065);
  let x_1067 : f32 = u_xlat32;
  let x_1068 : f32 = u_xlat47;
  u_xlat47 = ((x_1067 * x_1068) + 1.0f);
  let x_1071 : f32 = u_xlat45;
  u_xlat3 = (-(abs(x_1071)) + 1.0f);
  let x_1075 : f32 = u_xlat3;
  let x_1076 : f32 = u_xlat3;
  u_xlat18.x = (x_1075 * x_1076);
  let x_1080 : f32 = u_xlat18.x;
  let x_1082 : f32 = u_xlat18.x;
  u_xlat18.x = (x_1080 * x_1082);
  let x_1085 : f32 = u_xlat3;
  let x_1087 : f32 = u_xlat18.x;
  u_xlat3 = (x_1085 * x_1087);
  let x_1089 : f32 = u_xlat32;
  let x_1090 : f32 = u_xlat3;
  u_xlat32 = ((x_1089 * x_1090) + 1.0f);
  let x_1093 : f32 = u_xlat32;
  let x_1094 : f32 = u_xlat47;
  u_xlat32 = (x_1093 * x_1094);
  let x_1096 : f32 = u_xlat46;
  let x_1097 : f32 = u_xlat32;
  u_xlat32 = (x_1096 * x_1097);
  let x_1100 : f32 = u_xlat34.x;
  let x_1102 : f32 = u_xlat34.x;
  u_xlat47 = (x_1100 * x_1102);
  let x_1104 : f32 = u_xlat47;
  u_xlat47 = max(x_1104, 0.002f);
  let x_1107 : f32 = u_xlat47;
  u_xlat18.x = (-(x_1107) + 1.0f);
  let x_1112 : f32 = u_xlat45;
  let x_1115 : f32 = u_xlat18.x;
  let x_1117 : f32 = u_xlat47;
  u_xlat33 = ((abs(x_1112) * x_1115) + x_1117);
  let x_1119 : f32 = u_xlat46;
  let x_1121 : f32 = u_xlat18.x;
  let x_1123 : f32 = u_xlat47;
  u_xlat18.x = ((x_1119 * x_1121) + x_1123);
  let x_1126 : f32 = u_xlat45;
  let x_1129 : f32 = u_xlat18.x;
  u_xlat45 = (abs(x_1126) * x_1129);
  let x_1131 : f32 = u_xlat46;
  let x_1132 : f32 = u_xlat33;
  let x_1134 : f32 = u_xlat45;
  u_xlat45 = ((x_1131 * x_1132) + x_1134);
  let x_1136 : f32 = u_xlat45;
  u_xlat45 = (x_1136 + 0.00001f);
  let x_1139 : f32 = u_xlat45;
  u_xlat45 = (0.5f / x_1139);
  let x_1141 : f32 = u_xlat47;
  let x_1142 : f32 = u_xlat47;
  u_xlat18.x = (x_1141 * x_1142);
  let x_1146 : f32 = u_xlat2.x;
  let x_1148 : f32 = u_xlat18.x;
  let x_1151 : f32 = u_xlat2.x;
  u_xlat33 = ((x_1146 * x_1148) + -(x_1151));
  let x_1154 : f32 = u_xlat33;
  let x_1156 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1154 * x_1156) + 1.0f);
  let x_1161 : f32 = u_xlat18.x;
  u_xlat18.x = (x_1161 * 0.318309873f);
  let x_1166 : f32 = u_xlat2.x;
  let x_1168 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1166 * x_1168) + 0.0000001f);
  let x_1174 : f32 = u_xlat18.x;
  let x_1176 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1174 / x_1176);
  let x_1179 : f32 = u_xlat45;
  let x_1181 : f32 = u_xlat2.x;
  u_xlat45 = (x_1179 * x_1181);
  let x_1183 : f32 = u_xlat46;
  let x_1184 : f32 = u_xlat45;
  u_xlat45 = (x_1183 * x_1184);
  let x_1186 : f32 = u_xlat45;
  u_xlat45 = (x_1186 * 3.141592741f);
  let x_1189 : f32 = u_xlat45;
  u_xlat45 = max(x_1189, 0.0f);
  let x_1191 : f32 = u_xlat47;
  let x_1192 : f32 = u_xlat47;
  u_xlat46 = ((x_1191 * x_1192) + 1.0f);
  let x_1195 : f32 = u_xlat46;
  u_xlat46 = (1.0f / x_1195);
  let x_1197 : vec4<f32> = u_xlat0;
  let x_1199 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_1197.x, x_1197.y, x_1197.z), vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
  let x_1205 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1205 == 0.0f));
  let x_1207 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1207);
  let x_1210 : f32 = u_xlat45;
  let x_1212 : f32 = u_xlat2.x;
  u_xlat45 = (x_1210 * x_1212);
  let x_1215 : f32 = u_xlat4.x;
  let x_1217 : f32 = x_32.x_Glossiness;
  u_xlat2.x = (x_1215 + x_1217);
  let x_1221 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1221, 0.0f, 1.0f);
  let x_1224 : f32 = u_xlat32;
  let x_1226 : vec3<f32> = u_xlat7;
  u_xlat18 = (vec3<f32>(x_1224, x_1224, x_1224) * x_1226);
  let x_1228 : vec4<f32> = u_xlat8;
  let x_1230 : vec3<f32> = u_xlat19;
  let x_1233 : vec3<f32> = u_xlat18;
  u_xlat18 = ((vec3<f32>(x_1228.x, x_1228.y, x_1228.z) * vec3<f32>(x_1230.x, x_1230.x, x_1230.x)) + x_1233);
  let x_1235 : vec3<f32> = u_xlat7;
  let x_1236 : f32 = u_xlat45;
  u_xlat4 = (x_1235 * vec3<f32>(x_1236, x_1236, x_1236));
  let x_1240 : f32 = u_xlat17.x;
  u_xlat45 = (-(x_1240) + 1.0f);
  let x_1243 : f32 = u_xlat45;
  let x_1244 : f32 = u_xlat45;
  u_xlat17.x = (x_1243 * x_1244);
  let x_1248 : f32 = u_xlat17.x;
  let x_1250 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1248 * x_1250);
  let x_1253 : f32 = u_xlat45;
  let x_1255 : f32 = u_xlat17.x;
  u_xlat45 = (x_1253 * x_1255);
  let x_1257 : vec4<f32> = u_xlat0;
  u_xlat17 = (-(vec3<f32>(x_1257.x, x_1257.y, x_1257.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1262 : vec3<f32> = u_xlat17;
  let x_1263 : f32 = u_xlat45;
  let x_1266 : vec4<f32> = u_xlat0;
  u_xlat17 = ((x_1262 * vec3<f32>(x_1263, x_1263, x_1263)) + vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
  let x_1269 : vec3<f32> = u_xlat17;
  let x_1270 : vec3<f32> = u_xlat4;
  u_xlat17 = (x_1269 * x_1270);
  let x_1272 : vec4<f32> = u_xlat1;
  let x_1274 : vec3<f32> = u_xlat18;
  let x_1276 : vec3<f32> = u_xlat17;
  let x_1277 : vec3<f32> = ((vec3<f32>(x_1272.x, x_1272.y, x_1272.z) * x_1274) + x_1276);
  let x_1278 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
  let x_1280 : vec4<f32> = u_xlat5;
  let x_1282 : f32 = u_xlat46;
  u_xlat17 = (vec3<f32>(x_1280.x, x_1280.y, x_1280.z) * vec3<f32>(x_1282, x_1282, x_1282));
  let x_1285 : vec4<f32> = u_xlat0;
  let x_1288 : vec4<f32> = u_xlat2;
  u_xlat18 = (-(vec3<f32>(x_1285.x, x_1285.y, x_1285.z)) + vec3<f32>(x_1288.x, x_1288.x, x_1288.x));
  let x_1291 : f32 = u_xlat3;
  let x_1293 : vec3<f32> = u_xlat18;
  let x_1295 : vec4<f32> = u_xlat0;
  let x_1297 : vec3<f32> = ((vec3<f32>(x_1291, x_1291, x_1291) * x_1293) + vec3<f32>(x_1295.x, x_1295.y, x_1295.z));
  let x_1298 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);
  let x_1300 : vec3<f32> = u_xlat17;
  let x_1301 : vec4<f32> = u_xlat0;
  let x_1304 : vec4<f32> = u_xlat1;
  let x_1306 : vec3<f32> = ((x_1300 * vec3<f32>(x_1301.x, x_1301.y, x_1301.z)) + vec3<f32>(x_1304.x, x_1304.y, x_1304.z));
  let x_1307 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
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

