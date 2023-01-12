struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
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
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  x_OcclusionStrength : f32,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(3) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_OcclusionMap : sampler;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(6) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat43 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlatb43 : bool;
  var x_314 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlatb42 : bool;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb11 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_519 : f32;
  var x_531 : f32;
  var x_543 : f32;
  var u_xlatb46 : bool;
  var u_xlat46 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb13 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_695 : f32;
  var x_707 : f32;
  var x_719 : f32;
  var u_xlat17 : f32;
  var u_xlat31 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_24.x, x_24.y));
  let x_27 : vec2<f32> = vec2<f32>(x_26.x, x_26.w);
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_27.x, x_27.y, x_28.z);
  let x_36 : vec4<f32> = vs_TEXCOORD0;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_36.x, x_36.y));
  u_xlat1 = vec3<f32>(x_38.x, x_38.y, x_38.z);
  let x_41 : vec3<f32> = u_xlat1;
  let x_50 : vec4<f32> = x_45.x_Color;
  u_xlat2 = (x_41 * vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_54 : vec4<f32> = x_45.x_Color;
  let x_56 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_54.x, x_54.y, x_54.z) * x_56) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_61.x, x_61.x, x_61.x) * x_63) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_72 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_72) * 0.959999979f) + 0.959999979f);
  let x_78 : vec3<f32> = u_xlat0;
  let x_80 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_78.x, x_78.x, x_78.x) * x_80);
  let x_88 : vec4<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_88.x, x_88.y));
  u_xlat3 = vec3<f32>(x_90.x, x_90.y, x_90.w);
  let x_94 : f32 = u_xlat3.z;
  let x_96 : f32 = u_xlat3.x;
  u_xlat3.x = (x_94 * x_96);
  let x_101 : vec3<f32> = u_xlat3;
  u_xlat28 = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec2<f32> = u_xlat28;
  let x_113 : f32 = x_45.x_BumpScale;
  u_xlat28 = (x_109 * vec2<f32>(x_113, x_113));
  let x_117 : vec2<f32> = u_xlat28;
  let x_118 : vec2<f32> = u_xlat28;
  u_xlat43 = dot(x_117, x_118);
  let x_120 : f32 = u_xlat43;
  u_xlat43 = min(x_120, 1.0f);
  let x_123 : f32 = u_xlat43;
  u_xlat43 = (-(x_123) + 1.0f);
  let x_126 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_126);
  let x_128 : vec2<f32> = u_xlat28;
  let x_131 : vec4<f32> = vs_TEXCOORD3;
  u_xlat3 = (vec3<f32>(x_128.y, x_128.y, x_128.y) * vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_135 : vec4<f32> = vs_TEXCOORD2;
  let x_137 : vec2<f32> = u_xlat28;
  let x_140 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_135.x, x_135.y, x_135.z) * vec3<f32>(x_137.x, x_137.x, x_137.x)) + x_140);
  let x_143 : vec4<f32> = vs_TEXCOORD4;
  let x_145 : f32 = u_xlat43;
  let x_148 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_143.x, x_143.y, x_143.z) * vec3<f32>(x_145, x_145, x_145)) + x_148);
  let x_150 : vec3<f32> = u_xlat3;
  let x_151 : vec3<f32> = u_xlat3;
  u_xlat28.x = dot(x_150, x_151);
  let x_155 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_155);
  let x_158 : vec2<f32> = u_xlat28;
  let x_160 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_158.x, x_158.x, x_158.x) * x_160);
  let x_163 : vec4<f32> = vs_TEXCOORD1;
  let x_165 : vec4<f32> = vs_TEXCOORD1;
  u_xlat28.x = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_170 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_170);
  let x_174 : vec2<f32> = u_xlat28;
  let x_176 : vec4<f32> = vs_TEXCOORD1;
  u_xlat4 = (vec3<f32>(x_174.x, x_174.x, x_174.x) * vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_184 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_184;
  let x_187 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_187;
  let x_191 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_191;
  let x_194 : vec4<f32> = u_xlat5;
  let x_200 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_201 : vec3<f32> = (-(vec3<f32>(x_194.x, x_194.y, x_194.z)) + x_200);
  let x_202 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_207 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat7.x = x_207;
  let x_211 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat7.y = x_211;
  let x_215 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat7.z = x_215;
  let x_218 : vec4<f32> = u_xlat6;
  let x_220 : vec3<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_218.x, x_218.y, x_218.z), x_220);
  let x_222 : vec4<f32> = u_xlat5;
  let x_226 : vec4<f32> = x_45.unity_ShadowFadeCenterAndType;
  let x_229 : vec3<f32> = (vec3<f32>(x_222.x, x_222.y, x_222.z) + -(vec3<f32>(x_226.x, x_226.y, x_226.z)));
  let x_230 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec4<f32> = u_xlat6;
  let x_234 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_232.x, x_232.y, x_232.z), vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_237);
  let x_239 : f32 = u_xlat42;
  let x_241 : f32 = u_xlat43;
  u_xlat43 = (-(x_239) + x_241);
  let x_244 : f32 = x_45.unity_ShadowFadeCenterAndType.w;
  let x_245 : f32 = u_xlat43;
  let x_247 : f32 = u_xlat42;
  u_xlat42 = ((x_244 * x_245) + x_247);
  let x_249 : f32 = u_xlat42;
  let x_252 : f32 = x_45.x_LightShadowData.z;
  let x_255 : f32 = x_45.x_LightShadowData.w;
  u_xlat42 = ((x_249 * x_252) + x_255);
  let x_257 : f32 = u_xlat42;
  u_xlat42 = clamp(x_257, 0.0f, 1.0f);
  let x_265 : f32 = x_45.unity_ProbeVolumeParams.x;
  u_xlatb43 = (x_265 == 1.0f);
  let x_267 : bool = u_xlatb43;
  if (x_267) {
    let x_271 : f32 = x_45.unity_ProbeVolumeParams.y;
    u_xlatb43 = (x_271 == 1.0f);
    let x_273 : vec4<f32> = vs_TEXCOORD3;
    let x_277 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[1i];
    let x_279 : vec3<f32> = (vec3<f32>(x_273.w, x_273.w, x_273.w) * vec3<f32>(x_277.x, x_277.y, x_277.z));
    let x_280 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
    let x_283 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[0i];
    let x_285 : vec4<f32> = vs_TEXCOORD2;
    let x_288 : vec4<f32> = u_xlat6;
    let x_290 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(x_285.w, x_285.w, x_285.w)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
    let x_291 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
    let x_294 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[2i];
    let x_296 : vec4<f32> = vs_TEXCOORD4;
    let x_299 : vec4<f32> = u_xlat6;
    let x_301 : vec3<f32> = ((vec3<f32>(x_294.x, x_294.y, x_294.z) * vec3<f32>(x_296.w, x_296.w, x_296.w)) + vec3<f32>(x_299.x, x_299.y, x_299.z));
    let x_302 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
    let x_304 : vec4<f32> = u_xlat6;
    let x_308 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[3i];
    let x_310 : vec3<f32> = (vec3<f32>(x_304.x, x_304.y, x_304.z) + vec3<f32>(x_308.x, x_308.y, x_308.z));
    let x_311 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
    let x_313 : bool = u_xlatb43;
    if (x_313) {
      let x_317 : vec4<f32> = u_xlat6;
      x_314 = vec3<f32>(x_317.x, x_317.y, x_317.z);
    } else {
      let x_320 : vec4<f32> = u_xlat5;
      x_314 = vec3<f32>(x_320.x, x_320.y, x_320.z);
    }
    let x_322 : vec3<f32> = x_314;
    let x_323 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
    let x_325 : vec4<f32> = u_xlat6;
    let x_329 : vec3<f32> = x_45.unity_ProbeVolumeMin;
    let x_331 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) + -(x_329));
    let x_332 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
    let x_334 : vec4<f32> = u_xlat6;
    let x_338 : vec3<f32> = x_45.unity_ProbeVolumeSizeInv;
    let x_339 : vec3<f32> = (vec3<f32>(x_334.x, x_334.y, x_334.z) * x_338);
    let x_340 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_340.x, x_339.x, x_339.y, x_339.z);
    let x_343 : f32 = u_xlat6.y;
    u_xlat43 = ((x_343 * 0.25f) + 0.75f);
    let x_350 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat44 = ((x_350 * 0.5f) + 0.75f);
    let x_354 : f32 = u_xlat43;
    let x_355 : f32 = u_xlat44;
    u_xlat6.x = max(x_354, x_355);
    let x_366 : vec4<f32> = u_xlat6;
    let x_368 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_366.x, x_366.z, x_366.w));
    u_xlat6 = x_368;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_374 : vec4<f32> = u_xlat6;
  let x_376 : vec4<f32> = x_45.unity_OcclusionMaskSelector;
  u_xlat43 = dot(x_374, x_376);
  let x_378 : f32 = u_xlat43;
  u_xlat43 = clamp(x_378, 0.0f, 1.0f);
  let x_381 : vec4<f32> = vs_TEXCOORD7;
  let x_383 : vec4<f32> = vs_TEXCOORD7;
  let x_385 : vec2<f32> = (vec2<f32>(x_381.x, x_381.y) / vec2<f32>(x_383.w, x_383.w));
  let x_386 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_385.x, x_385.y, x_386.z, x_386.w);
  let x_393 : vec4<f32> = u_xlat6;
  let x_395 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_393.x, x_393.y));
  u_xlat44 = x_395.x;
  let x_397 : f32 = u_xlat43;
  let x_398 : f32 = u_xlat44;
  u_xlat43 = (x_397 + -(x_398));
  let x_401 : f32 = u_xlat42;
  let x_402 : f32 = u_xlat43;
  let x_404 : f32 = u_xlat44;
  u_xlat42 = ((x_401 * x_402) + x_404);
  let x_411 : vec4<f32> = vs_TEXCOORD0;
  let x_413 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_411.x, x_411.y));
  u_xlat43 = x_413.y;
  let x_417 : f32 = x_45.x_OcclusionStrength;
  u_xlat44 = (-(x_417) + 1.0f);
  let x_420 : f32 = u_xlat43;
  let x_422 : f32 = x_45.x_OcclusionStrength;
  let x_424 : f32 = u_xlat44;
  u_xlat43 = ((x_420 * x_422) + x_424);
  let x_427 : f32 = u_xlat0.y;
  let x_431 : f32 = x_45.x_GlossMapScale;
  u_xlat44 = ((-(x_427) * x_431) + 1.0f);
  let x_435 : vec3<f32> = u_xlat4;
  let x_436 : vec3<f32> = u_xlat3;
  u_xlat45 = dot(x_435, x_436);
  let x_438 : f32 = u_xlat45;
  let x_439 : f32 = u_xlat45;
  u_xlat45 = (x_438 + x_439);
  let x_441 : vec3<f32> = u_xlat3;
  let x_442 : f32 = u_xlat45;
  let x_446 : vec3<f32> = u_xlat4;
  let x_447 : vec3<f32> = ((x_441 * -(vec3<f32>(x_442, x_442, x_442))) + x_446);
  let x_448 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : f32 = u_xlat42;
  let x_454 : vec4<f32> = x_45.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_450, x_450, x_450) * vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_460 : f32 = x_45.unity_SpecCube0_ProbePosition.w;
  u_xlatb42 = (0.0f < x_460);
  let x_462 : bool = u_xlatb42;
  if (x_462) {
    let x_465 : vec4<f32> = u_xlat6;
    let x_467 : vec4<f32> = u_xlat6;
    u_xlat42 = dot(vec3<f32>(x_465.x, x_465.y, x_465.z), vec3<f32>(x_467.x, x_467.y, x_467.z));
    let x_470 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_470);
    let x_473 : f32 = u_xlat42;
    let x_475 : vec4<f32> = u_xlat6;
    let x_477 : vec3<f32> = (vec3<f32>(x_473, x_473, x_473) * vec3<f32>(x_475.x, x_475.y, x_475.z));
    let x_478 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
    let x_481 : vec4<f32> = u_xlat5;
    let x_486 : vec4<f32> = x_45.unity_SpecCube0_BoxMax;
    u_xlat9 = (-(vec3<f32>(x_481.x, x_481.y, x_481.z)) + vec3<f32>(x_486.x, x_486.y, x_486.z));
    let x_489 : vec3<f32> = u_xlat9;
    let x_490 : vec4<f32> = u_xlat8;
    u_xlat9 = (x_489 / vec3<f32>(x_490.x, x_490.y, x_490.z));
    let x_494 : vec4<f32> = u_xlat5;
    let x_499 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    u_xlat10 = (-(vec3<f32>(x_494.x, x_494.y, x_494.z)) + vec3<f32>(x_499.x, x_499.y, x_499.z));
    let x_502 : vec3<f32> = u_xlat10;
    let x_503 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_502 / vec3<f32>(x_503.x, x_503.y, x_503.z));
    let x_510 : vec4<f32> = u_xlat8;
    let x_513 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_510.x, x_510.y, x_510.z, x_510.x));
    u_xlatb11 = vec3<bool>(x_513.x, x_513.y, x_513.z);
    let x_516 : vec3<f32> = u_xlat9;
    hlslcc_movcTemp = x_516;
    let x_518 : bool = u_xlatb11.x;
    if (x_518) {
      let x_523 : f32 = u_xlat9.x;
      x_519 = x_523;
    } else {
      let x_526 : f32 = u_xlat10.x;
      x_519 = x_526;
    }
    let x_527 : f32 = x_519;
    hlslcc_movcTemp.x = x_527;
    let x_530 : bool = u_xlatb11.y;
    if (x_530) {
      let x_535 : f32 = u_xlat9.y;
      x_531 = x_535;
    } else {
      let x_538 : f32 = u_xlat10.y;
      x_531 = x_538;
    }
    let x_539 : f32 = x_531;
    hlslcc_movcTemp.y = x_539;
    let x_542 : bool = u_xlatb11.z;
    if (x_542) {
      let x_547 : f32 = u_xlat9.z;
      x_543 = x_547;
    } else {
      let x_550 : f32 = u_xlat10.z;
      x_543 = x_550;
    }
    let x_551 : f32 = x_543;
    hlslcc_movcTemp.z = x_551;
    let x_553 : vec3<f32> = hlslcc_movcTemp;
    u_xlat9 = x_553;
    let x_555 : f32 = u_xlat9.y;
    let x_557 : f32 = u_xlat9.x;
    u_xlat42 = min(x_555, x_557);
    let x_560 : f32 = u_xlat9.z;
    let x_561 : f32 = u_xlat42;
    u_xlat42 = min(x_560, x_561);
    let x_563 : vec4<f32> = u_xlat5;
    let x_566 : vec4<f32> = x_45.unity_SpecCube0_ProbePosition;
    u_xlat9 = (vec3<f32>(x_563.x, x_563.y, x_563.z) + -(vec3<f32>(x_566.x, x_566.y, x_566.z)));
    let x_570 : vec4<f32> = u_xlat8;
    let x_572 : f32 = u_xlat42;
    let x_575 : vec3<f32> = u_xlat9;
    let x_576 : vec3<f32> = ((vec3<f32>(x_570.x, x_570.y, x_570.z) * vec3<f32>(x_572, x_572, x_572)) + x_575);
    let x_577 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  } else {
    let x_580 : vec4<f32> = u_xlat6;
    let x_581 : vec3<f32> = vec3<f32>(x_580.x, x_580.y, x_580.z);
    let x_582 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  }
  let x_584 : f32 = u_xlat44;
  u_xlat42 = ((-(x_584) * 0.699999988f) + 1.700000048f);
  let x_590 : f32 = u_xlat42;
  let x_591 : f32 = u_xlat44;
  u_xlat42 = (x_590 * x_591);
  let x_593 : f32 = u_xlat42;
  u_xlat42 = (x_593 * 6.0f);
  let x_604 : vec4<f32> = u_xlat8;
  let x_606 : f32 = u_xlat42;
  let x_607 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_604.x, x_604.y, x_604.z), x_606);
  u_xlat8 = x_607;
  let x_609 : f32 = u_xlat8.w;
  u_xlat45 = (x_609 + -1.0f);
  let x_613 : f32 = x_45.unity_SpecCube0_HDR.w;
  let x_614 : f32 = u_xlat45;
  u_xlat45 = ((x_613 * x_614) + 1.0f);
  let x_617 : f32 = u_xlat45;
  u_xlat45 = log2(x_617);
  let x_619 : f32 = u_xlat45;
  let x_621 : f32 = x_45.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_619 * x_621);
  let x_623 : f32 = u_xlat45;
  u_xlat45 = exp2(x_623);
  let x_625 : f32 = u_xlat45;
  let x_627 : f32 = x_45.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_625 * x_627);
  let x_629 : vec4<f32> = u_xlat8;
  let x_631 : f32 = u_xlat45;
  u_xlat9 = (vec3<f32>(x_629.x, x_629.y, x_629.z) * vec3<f32>(x_631, x_631, x_631));
  let x_636 : f32 = x_45.unity_SpecCube0_BoxMin.w;
  u_xlatb46 = (x_636 < 0.999989986f);
  let x_639 : bool = u_xlatb46;
  if (x_639) {
    let x_644 : f32 = x_45.unity_SpecCube1_ProbePosition.w;
    u_xlatb46 = (0.0f < x_644);
    let x_646 : bool = u_xlatb46;
    if (x_646) {
      let x_650 : vec4<f32> = u_xlat6;
      let x_652 : vec4<f32> = u_xlat6;
      u_xlat46 = dot(vec3<f32>(x_650.x, x_650.y, x_650.z), vec3<f32>(x_652.x, x_652.y, x_652.z));
      let x_655 : f32 = u_xlat46;
      u_xlat46 = inverseSqrt(x_655);
      let x_657 : f32 = u_xlat46;
      let x_659 : vec4<f32> = u_xlat6;
      u_xlat10 = (vec3<f32>(x_657, x_657, x_657) * vec3<f32>(x_659.x, x_659.y, x_659.z));
      let x_663 : vec4<f32> = u_xlat5;
      let x_668 : vec4<f32> = x_45.unity_SpecCube1_BoxMax;
      u_xlat11 = (-(vec3<f32>(x_663.x, x_663.y, x_663.z)) + vec3<f32>(x_668.x, x_668.y, x_668.z));
      let x_671 : vec3<f32> = u_xlat11;
      let x_672 : vec3<f32> = u_xlat10;
      u_xlat11 = (x_671 / x_672);
      let x_675 : vec4<f32> = u_xlat5;
      let x_680 : vec4<f32> = x_45.unity_SpecCube1_BoxMin;
      u_xlat12 = (-(vec3<f32>(x_675.x, x_675.y, x_675.z)) + vec3<f32>(x_680.x, x_680.y, x_680.z));
      let x_683 : vec3<f32> = u_xlat12;
      let x_684 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_683 / x_684);
      let x_687 : vec3<f32> = u_xlat10;
      let x_689 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_687.x, x_687.y, x_687.z, x_687.x));
      u_xlatb13 = vec3<bool>(x_689.x, x_689.y, x_689.z);
      let x_692 : vec3<f32> = u_xlat11;
      hlslcc_movcTemp_1 = x_692;
      let x_694 : bool = u_xlatb13.x;
      if (x_694) {
        let x_699 : f32 = u_xlat11.x;
        x_695 = x_699;
      } else {
        let x_702 : f32 = u_xlat12.x;
        x_695 = x_702;
      }
      let x_703 : f32 = x_695;
      hlslcc_movcTemp_1.x = x_703;
      let x_706 : bool = u_xlatb13.y;
      if (x_706) {
        let x_711 : f32 = u_xlat11.y;
        x_707 = x_711;
      } else {
        let x_714 : f32 = u_xlat12.y;
        x_707 = x_714;
      }
      let x_715 : f32 = x_707;
      hlslcc_movcTemp_1.y = x_715;
      let x_718 : bool = u_xlatb13.z;
      if (x_718) {
        let x_723 : f32 = u_xlat11.z;
        x_719 = x_723;
      } else {
        let x_726 : f32 = u_xlat12.z;
        x_719 = x_726;
      }
      let x_727 : f32 = x_719;
      hlslcc_movcTemp_1.z = x_727;
      let x_729 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat11 = x_729;
      let x_731 : f32 = u_xlat11.y;
      let x_733 : f32 = u_xlat11.x;
      u_xlat46 = min(x_731, x_733);
      let x_736 : f32 = u_xlat11.z;
      let x_737 : f32 = u_xlat46;
      u_xlat46 = min(x_736, x_737);
      let x_739 : vec4<f32> = u_xlat5;
      let x_742 : vec4<f32> = x_45.unity_SpecCube1_ProbePosition;
      let x_745 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) + -(vec3<f32>(x_742.x, x_742.y, x_742.z)));
      let x_746 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
      let x_748 : vec3<f32> = u_xlat10;
      let x_749 : f32 = u_xlat46;
      let x_752 : vec4<f32> = u_xlat5;
      let x_754 : vec3<f32> = ((x_748 * vec3<f32>(x_749, x_749, x_749)) + vec3<f32>(x_752.x, x_752.y, x_752.z));
      let x_755 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
    }
    let x_761 : vec4<f32> = u_xlat6;
    let x_763 : f32 = u_xlat42;
    let x_764 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_761.x, x_761.y, x_761.z), x_763);
    u_xlat5 = x_764;
    let x_766 : f32 = u_xlat5.w;
    u_xlat42 = (x_766 + -1.0f);
    let x_770 : f32 = x_45.unity_SpecCube1_HDR.w;
    let x_771 : f32 = u_xlat42;
    u_xlat42 = ((x_770 * x_771) + 1.0f);
    let x_774 : f32 = u_xlat42;
    u_xlat42 = log2(x_774);
    let x_776 : f32 = u_xlat42;
    let x_778 : f32 = x_45.unity_SpecCube1_HDR.y;
    u_xlat42 = (x_776 * x_778);
    let x_780 : f32 = u_xlat42;
    u_xlat42 = exp2(x_780);
    let x_782 : f32 = u_xlat42;
    let x_784 : f32 = x_45.unity_SpecCube1_HDR.x;
    u_xlat42 = (x_782 * x_784);
    let x_786 : vec4<f32> = u_xlat5;
    let x_788 : f32 = u_xlat42;
    let x_790 : vec3<f32> = (vec3<f32>(x_786.x, x_786.y, x_786.z) * vec3<f32>(x_788, x_788, x_788));
    let x_791 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
    let x_793 : f32 = u_xlat45;
    let x_795 : vec4<f32> = u_xlat8;
    let x_798 : vec4<f32> = u_xlat5;
    let x_801 : vec3<f32> = ((vec3<f32>(x_793, x_793, x_793) * vec3<f32>(x_795.x, x_795.y, x_795.z)) + -(vec3<f32>(x_798.x, x_798.y, x_798.z)));
    let x_802 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
    let x_805 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    let x_807 : vec4<f32> = u_xlat6;
    let x_810 : vec4<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_805.w, x_805.w, x_805.w) * vec3<f32>(x_807.x, x_807.y, x_807.z)) + vec3<f32>(x_810.x, x_810.y, x_810.z));
  }
  let x_813 : f32 = u_xlat43;
  let x_815 : vec3<f32> = u_xlat9;
  let x_816 : vec3<f32> = (vec3<f32>(x_813, x_813, x_813) * x_815);
  let x_817 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = vs_TEXCOORD1;
  let x_822 : vec2<f32> = u_xlat28;
  let x_826 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_828 : vec3<f32> = ((-(vec3<f32>(x_819.x, x_819.y, x_819.z)) * vec3<f32>(x_822.x, x_822.x, x_822.x)) + vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec4<f32> = u_xlat6;
  let x_833 : vec4<f32> = u_xlat6;
  u_xlat28.x = dot(vec3<f32>(x_831.x, x_831.y, x_831.z), vec3<f32>(x_833.x, x_833.y, x_833.z));
  let x_838 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_838, 0.001f);
  let x_843 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_843);
  let x_846 : vec2<f32> = u_xlat28;
  let x_848 : vec4<f32> = u_xlat6;
  let x_850 : vec3<f32> = (vec3<f32>(x_846.x, x_846.x, x_846.x) * vec3<f32>(x_848.x, x_848.y, x_848.z));
  let x_851 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec3<f32> = u_xlat3;
  let x_854 : vec3<f32> = u_xlat4;
  u_xlat28.x = dot(x_853, -(x_854));
  let x_858 : vec3<f32> = u_xlat3;
  let x_860 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  u_xlat42 = dot(x_858, vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_863 : f32 = u_xlat42;
  u_xlat42 = clamp(x_863, 0.0f, 1.0f);
  let x_865 : vec3<f32> = u_xlat3;
  let x_866 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(x_865, vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_869 : f32 = u_xlat43;
  u_xlat43 = clamp(x_869, 0.0f, 1.0f);
  let x_872 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_874 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_872.x, x_872.y, x_872.z), vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_879 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_879, 0.0f, 1.0f);
  let x_884 : f32 = u_xlat3.x;
  let x_886 : f32 = u_xlat3.x;
  u_xlat17 = (x_884 * x_886);
  let x_888 : f32 = u_xlat17;
  let x_890 : f32 = u_xlat44;
  u_xlat17 = dot(vec2<f32>(x_888, x_888), vec2<f32>(x_890, x_890));
  let x_893 : f32 = u_xlat17;
  u_xlat17 = (x_893 + -0.5f);
  let x_897 : f32 = u_xlat42;
  u_xlat31 = (-(x_897) + 1.0f);
  let x_900 : f32 = u_xlat31;
  let x_901 : f32 = u_xlat31;
  u_xlat45 = (x_900 * x_901);
  let x_903 : f32 = u_xlat45;
  let x_904 : f32 = u_xlat45;
  u_xlat45 = (x_903 * x_904);
  let x_906 : f32 = u_xlat31;
  let x_907 : f32 = u_xlat45;
  u_xlat31 = (x_906 * x_907);
  let x_909 : f32 = u_xlat17;
  let x_910 : f32 = u_xlat31;
  u_xlat31 = ((x_909 * x_910) + 1.0f);
  let x_914 : f32 = u_xlat28.x;
  u_xlat45 = (-(abs(x_914)) + 1.0f);
  let x_918 : f32 = u_xlat45;
  let x_919 : f32 = u_xlat45;
  u_xlat4.x = (x_918 * x_919);
  let x_923 : f32 = u_xlat4.x;
  let x_925 : f32 = u_xlat4.x;
  u_xlat4.x = (x_923 * x_925);
  let x_928 : f32 = u_xlat45;
  let x_930 : f32 = u_xlat4.x;
  u_xlat45 = (x_928 * x_930);
  let x_932 : f32 = u_xlat17;
  let x_933 : f32 = u_xlat45;
  u_xlat17 = ((x_932 * x_933) + 1.0f);
  let x_936 : f32 = u_xlat17;
  let x_937 : f32 = u_xlat31;
  u_xlat17 = (x_936 * x_937);
  let x_939 : f32 = u_xlat42;
  let x_940 : f32 = u_xlat17;
  u_xlat17 = (x_939 * x_940);
  let x_942 : f32 = u_xlat44;
  let x_943 : f32 = u_xlat44;
  u_xlat44 = (x_942 * x_943);
  let x_945 : f32 = u_xlat44;
  u_xlat44 = max(x_945, 0.002f);
  let x_948 : f32 = u_xlat44;
  u_xlat31 = (-(x_948) + 1.0f);
  let x_952 : f32 = u_xlat28.x;
  let x_954 : f32 = u_xlat31;
  let x_956 : f32 = u_xlat44;
  u_xlat4.x = ((abs(x_952) * x_954) + x_956);
  let x_959 : f32 = u_xlat42;
  let x_960 : f32 = u_xlat31;
  let x_962 : f32 = u_xlat44;
  u_xlat31 = ((x_959 * x_960) + x_962);
  let x_965 : f32 = u_xlat28.x;
  let x_967 : f32 = u_xlat31;
  u_xlat28.x = (abs(x_965) * x_967);
  let x_970 : f32 = u_xlat42;
  let x_972 : f32 = u_xlat4.x;
  let x_975 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_970 * x_972) + x_975);
  let x_979 : f32 = u_xlat28.x;
  u_xlat28.x = (x_979 + 0.00001f);
  let x_984 : f32 = u_xlat28.x;
  u_xlat28.x = (0.5f / x_984);
  let x_987 : f32 = u_xlat44;
  let x_988 : f32 = u_xlat44;
  u_xlat31 = (x_987 * x_988);
  let x_990 : f32 = u_xlat43;
  let x_991 : f32 = u_xlat31;
  let x_993 : f32 = u_xlat43;
  u_xlat4.x = ((x_990 * x_991) + -(x_993));
  let x_998 : f32 = u_xlat4.x;
  let x_999 : f32 = u_xlat43;
  u_xlat43 = ((x_998 * x_999) + 1.0f);
  let x_1002 : f32 = u_xlat31;
  u_xlat31 = (x_1002 * 0.318309873f);
  let x_1005 : f32 = u_xlat43;
  let x_1006 : f32 = u_xlat43;
  u_xlat43 = ((x_1005 * x_1006) + 0.0000001f);
  let x_1010 : f32 = u_xlat31;
  let x_1011 : f32 = u_xlat43;
  u_xlat43 = (x_1010 / x_1011);
  let x_1014 : f32 = u_xlat28.x;
  let x_1015 : f32 = u_xlat43;
  u_xlat28.x = (x_1014 * x_1015);
  let x_1018 : f32 = u_xlat42;
  let x_1020 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1018 * x_1020);
  let x_1024 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1024 * 3.141592741f);
  let x_1029 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_1029, 0.0f);
  let x_1032 : f32 = u_xlat44;
  let x_1033 : f32 = u_xlat44;
  u_xlat42 = ((x_1032 * x_1033) + 1.0f);
  let x_1036 : f32 = u_xlat42;
  u_xlat42 = (1.0f / x_1036);
  let x_1038 : vec3<f32> = u_xlat1;
  let x_1039 : vec3<f32> = u_xlat1;
  u_xlat43 = dot(x_1038, x_1039);
  let x_1041 : f32 = u_xlat43;
  u_xlatb43 = !((x_1041 == 0.0f));
  let x_1043 : bool = u_xlatb43;
  u_xlat43 = select(0.0f, 1.0f, x_1043);
  let x_1046 : f32 = u_xlat28.x;
  let x_1047 : f32 = u_xlat43;
  u_xlat28.x = (x_1046 * x_1047);
  let x_1051 : f32 = u_xlat0.y;
  let x_1053 : f32 = x_45.x_GlossMapScale;
  let x_1056 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1051 * x_1053) + -(x_1056));
  let x_1061 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1061 + 1.0f);
  let x_1065 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1065, 0.0f, 1.0f);
  let x_1068 : f32 = u_xlat17;
  let x_1070 : vec3<f32> = u_xlat7;
  u_xlat4 = (vec3<f32>(x_1068, x_1068, x_1068) * x_1070);
  let x_1072 : vec3<f32> = u_xlat7;
  let x_1073 : vec2<f32> = u_xlat28;
  let x_1075 : vec3<f32> = (x_1072 * vec3<f32>(x_1073.x, x_1073.x, x_1073.x));
  let x_1076 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1080 : f32 = u_xlat3.x;
  u_xlat14.x = (-(x_1080) + 1.0f);
  let x_1085 : f32 = u_xlat14.x;
  let x_1087 : f32 = u_xlat14.x;
  u_xlat28.x = (x_1085 * x_1087);
  let x_1091 : f32 = u_xlat28.x;
  let x_1093 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1091 * x_1093);
  let x_1097 : f32 = u_xlat14.x;
  let x_1099 : f32 = u_xlat28.x;
  u_xlat14.x = (x_1097 * x_1099);
  let x_1102 : vec3<f32> = u_xlat1;
  u_xlat3 = (-(x_1102) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1106 : vec3<f32> = u_xlat3;
  let x_1107 : vec3<f32> = u_xlat14;
  let x_1110 : vec3<f32> = u_xlat1;
  u_xlat3 = ((x_1106 * vec3<f32>(x_1107.x, x_1107.x, x_1107.x)) + x_1110);
  let x_1112 : vec3<f32> = u_xlat3;
  let x_1113 : vec4<f32> = u_xlat6;
  u_xlat3 = (x_1112 * vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : vec3<f32> = u_xlat2;
  let x_1117 : vec3<f32> = u_xlat4;
  let x_1119 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_1116 * x_1117) + x_1119);
  let x_1121 : vec4<f32> = u_xlat5;
  let x_1123 : f32 = u_xlat42;
  u_xlat14 = (vec3<f32>(x_1121.x, x_1121.y, x_1121.z) * vec3<f32>(x_1123, x_1123, x_1123));
  let x_1126 : vec3<f32> = u_xlat1;
  let x_1128 : vec3<f32> = u_xlat0;
  u_xlat3 = (-(x_1126) + vec3<f32>(x_1128.x, x_1128.x, x_1128.x));
  let x_1131 : f32 = u_xlat45;
  let x_1133 : vec3<f32> = u_xlat3;
  let x_1135 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1131, x_1131, x_1131) * x_1133) + x_1135);
  let x_1137 : vec3<f32> = u_xlat14;
  let x_1138 : vec3<f32> = u_xlat1;
  let x_1140 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_1137 * x_1138) + x_1140);
  let x_1143 : f32 = vs_TEXCOORD1.w;
  let x_1145 : f32 = x_45.x_ProjectionParams.y;
  u_xlat42 = (x_1143 / x_1145);
  let x_1147 : f32 = u_xlat42;
  u_xlat42 = (-(x_1147) + 1.0f);
  let x_1150 : f32 = u_xlat42;
  let x_1152 : f32 = x_45.x_ProjectionParams.z;
  u_xlat42 = (x_1150 * x_1152);
  let x_1154 : f32 = u_xlat42;
  u_xlat42 = max(x_1154, 0.0f);
  let x_1156 : f32 = u_xlat42;
  let x_1159 : f32 = x_45.unity_FogParams.x;
  u_xlat42 = (x_1156 * x_1159);
  let x_1161 : f32 = u_xlat42;
  let x_1162 : f32 = u_xlat42;
  u_xlat42 = (x_1161 * -(x_1162));
  let x_1165 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1165);
  let x_1167 : vec3<f32> = u_xlat0;
  let x_1170 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1167 + -(vec3<f32>(x_1170.x, x_1170.y, x_1170.z)));
  let x_1176 : f32 = u_xlat42;
  let x_1178 : vec3<f32> = u_xlat0;
  let x_1181 : vec4<f32> = x_45.unity_FogColor;
  let x_1183 : vec3<f32> = ((vec3<f32>(x_1176, x_1176, x_1176) * x_1178) + vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

