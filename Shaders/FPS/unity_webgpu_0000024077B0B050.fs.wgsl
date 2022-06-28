struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
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
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  x_OcclusionStrength : f32,
  @size(4)
  padding_3 : u32,
  x_EmissionColor : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BumpMap : sampler;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat43 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlatb43 : bool;

var<private> u_xlat44 : f32;

@group(0) @binding(9) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(11) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(4) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_OcclusionMap : sampler;

var<private> u_xlat45 : f32;

var<private> u_xlatb42 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb11 : vec3<bool>;

@group(0) @binding(7) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb46 : bool;

var<private> u_xlat46 : f32;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb13 : vec3<bool>;

@group(0) @binding(8) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat14 : vec3<f32>;

@group(0) @binding(6) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_314 : vec3<f32>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_520 : f32;
  var x_532 : f32;
  var x_544 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_696 : f32;
  var x_708 : f32;
  var x_720 : f32;
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
    let x_307 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[3i];
    let x_309 : vec3<f32> = (vec3<f32>(x_304.x, x_304.y, x_304.z) + vec3<f32>(x_307.x, x_307.y, x_307.z));
    let x_310 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
    let x_312 : bool = u_xlatb43;
    if (x_312) {
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
      let x_524 : f32 = u_xlat9.x;
      x_520 = x_524;
    } else {
      let x_527 : f32 = u_xlat10.x;
      x_520 = x_527;
    }
    let x_528 : f32 = x_520;
    hlslcc_movcTemp.x = x_528;
    let x_531 : bool = u_xlatb11.y;
    if (x_531) {
      let x_536 : f32 = u_xlat9.y;
      x_532 = x_536;
    } else {
      let x_539 : f32 = u_xlat10.y;
      x_532 = x_539;
    }
    let x_540 : f32 = x_532;
    hlslcc_movcTemp.y = x_540;
    let x_543 : bool = u_xlatb11.z;
    if (x_543) {
      let x_548 : f32 = u_xlat9.z;
      x_544 = x_548;
    } else {
      let x_551 : f32 = u_xlat10.z;
      x_544 = x_551;
    }
    let x_552 : f32 = x_544;
    hlslcc_movcTemp.z = x_552;
    let x_554 : vec3<f32> = hlslcc_movcTemp;
    u_xlat9 = x_554;
    let x_556 : f32 = u_xlat9.y;
    let x_558 : f32 = u_xlat9.x;
    u_xlat42 = min(x_556, x_558);
    let x_561 : f32 = u_xlat9.z;
    let x_562 : f32 = u_xlat42;
    u_xlat42 = min(x_561, x_562);
    let x_564 : vec4<f32> = u_xlat5;
    let x_567 : vec4<f32> = x_45.unity_SpecCube0_ProbePosition;
    u_xlat9 = (vec3<f32>(x_564.x, x_564.y, x_564.z) + -(vec3<f32>(x_567.x, x_567.y, x_567.z)));
    let x_571 : vec4<f32> = u_xlat8;
    let x_573 : f32 = u_xlat42;
    let x_576 : vec3<f32> = u_xlat9;
    let x_577 : vec3<f32> = ((vec3<f32>(x_571.x, x_571.y, x_571.z) * vec3<f32>(x_573, x_573, x_573)) + x_576);
    let x_578 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  } else {
    let x_581 : vec4<f32> = u_xlat6;
    let x_582 : vec3<f32> = vec3<f32>(x_581.x, x_581.y, x_581.z);
    let x_583 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  }
  let x_585 : f32 = u_xlat44;
  u_xlat42 = ((-(x_585) * 0.699999988f) + 1.700000048f);
  let x_591 : f32 = u_xlat42;
  let x_592 : f32 = u_xlat44;
  u_xlat42 = (x_591 * x_592);
  let x_594 : f32 = u_xlat42;
  u_xlat42 = (x_594 * 6.0f);
  let x_605 : vec4<f32> = u_xlat8;
  let x_607 : f32 = u_xlat42;
  let x_608 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_605.x, x_605.y, x_605.z), x_607);
  u_xlat8 = x_608;
  let x_610 : f32 = u_xlat8.w;
  u_xlat45 = (x_610 + -1.0f);
  let x_614 : f32 = x_45.unity_SpecCube0_HDR.w;
  let x_615 : f32 = u_xlat45;
  u_xlat45 = ((x_614 * x_615) + 1.0f);
  let x_618 : f32 = u_xlat45;
  u_xlat45 = log2(x_618);
  let x_620 : f32 = u_xlat45;
  let x_622 : f32 = x_45.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_620 * x_622);
  let x_624 : f32 = u_xlat45;
  u_xlat45 = exp2(x_624);
  let x_626 : f32 = u_xlat45;
  let x_628 : f32 = x_45.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_626 * x_628);
  let x_630 : vec4<f32> = u_xlat8;
  let x_632 : f32 = u_xlat45;
  u_xlat9 = (vec3<f32>(x_630.x, x_630.y, x_630.z) * vec3<f32>(x_632, x_632, x_632));
  let x_637 : f32 = x_45.unity_SpecCube0_BoxMin.w;
  u_xlatb46 = (x_637 < 0.999989986f);
  let x_640 : bool = u_xlatb46;
  if (x_640) {
    let x_645 : f32 = x_45.unity_SpecCube1_ProbePosition.w;
    u_xlatb46 = (0.0f < x_645);
    let x_647 : bool = u_xlatb46;
    if (x_647) {
      let x_651 : vec4<f32> = u_xlat6;
      let x_653 : vec4<f32> = u_xlat6;
      u_xlat46 = dot(vec3<f32>(x_651.x, x_651.y, x_651.z), vec3<f32>(x_653.x, x_653.y, x_653.z));
      let x_656 : f32 = u_xlat46;
      u_xlat46 = inverseSqrt(x_656);
      let x_658 : f32 = u_xlat46;
      let x_660 : vec4<f32> = u_xlat6;
      u_xlat10 = (vec3<f32>(x_658, x_658, x_658) * vec3<f32>(x_660.x, x_660.y, x_660.z));
      let x_664 : vec4<f32> = u_xlat5;
      let x_669 : vec4<f32> = x_45.unity_SpecCube1_BoxMax;
      u_xlat11 = (-(vec3<f32>(x_664.x, x_664.y, x_664.z)) + vec3<f32>(x_669.x, x_669.y, x_669.z));
      let x_672 : vec3<f32> = u_xlat11;
      let x_673 : vec3<f32> = u_xlat10;
      u_xlat11 = (x_672 / x_673);
      let x_676 : vec4<f32> = u_xlat5;
      let x_681 : vec4<f32> = x_45.unity_SpecCube1_BoxMin;
      u_xlat12 = (-(vec3<f32>(x_676.x, x_676.y, x_676.z)) + vec3<f32>(x_681.x, x_681.y, x_681.z));
      let x_684 : vec3<f32> = u_xlat12;
      let x_685 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_684 / x_685);
      let x_688 : vec3<f32> = u_xlat10;
      let x_690 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_688.x, x_688.y, x_688.z, x_688.x));
      u_xlatb13 = vec3<bool>(x_690.x, x_690.y, x_690.z);
      let x_693 : vec3<f32> = u_xlat11;
      hlslcc_movcTemp_1 = x_693;
      let x_695 : bool = u_xlatb13.x;
      if (x_695) {
        let x_700 : f32 = u_xlat11.x;
        x_696 = x_700;
      } else {
        let x_703 : f32 = u_xlat12.x;
        x_696 = x_703;
      }
      let x_704 : f32 = x_696;
      hlslcc_movcTemp_1.x = x_704;
      let x_707 : bool = u_xlatb13.y;
      if (x_707) {
        let x_712 : f32 = u_xlat11.y;
        x_708 = x_712;
      } else {
        let x_715 : f32 = u_xlat12.y;
        x_708 = x_715;
      }
      let x_716 : f32 = x_708;
      hlslcc_movcTemp_1.y = x_716;
      let x_719 : bool = u_xlatb13.z;
      if (x_719) {
        let x_724 : f32 = u_xlat11.z;
        x_720 = x_724;
      } else {
        let x_727 : f32 = u_xlat12.z;
        x_720 = x_727;
      }
      let x_728 : f32 = x_720;
      hlslcc_movcTemp_1.z = x_728;
      let x_730 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat11 = x_730;
      let x_732 : f32 = u_xlat11.y;
      let x_734 : f32 = u_xlat11.x;
      u_xlat46 = min(x_732, x_734);
      let x_737 : f32 = u_xlat11.z;
      let x_738 : f32 = u_xlat46;
      u_xlat46 = min(x_737, x_738);
      let x_740 : vec4<f32> = u_xlat5;
      let x_743 : vec4<f32> = x_45.unity_SpecCube1_ProbePosition;
      let x_746 : vec3<f32> = (vec3<f32>(x_740.x, x_740.y, x_740.z) + -(vec3<f32>(x_743.x, x_743.y, x_743.z)));
      let x_747 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
      let x_749 : vec3<f32> = u_xlat10;
      let x_750 : f32 = u_xlat46;
      let x_753 : vec4<f32> = u_xlat5;
      let x_755 : vec3<f32> = ((x_749 * vec3<f32>(x_750, x_750, x_750)) + vec3<f32>(x_753.x, x_753.y, x_753.z));
      let x_756 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
    }
    let x_762 : vec4<f32> = u_xlat6;
    let x_764 : f32 = u_xlat42;
    let x_765 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_762.x, x_762.y, x_762.z), x_764);
    u_xlat5 = x_765;
    let x_767 : f32 = u_xlat5.w;
    u_xlat42 = (x_767 + -1.0f);
    let x_771 : f32 = x_45.unity_SpecCube1_HDR.w;
    let x_772 : f32 = u_xlat42;
    u_xlat42 = ((x_771 * x_772) + 1.0f);
    let x_775 : f32 = u_xlat42;
    u_xlat42 = log2(x_775);
    let x_777 : f32 = u_xlat42;
    let x_779 : f32 = x_45.unity_SpecCube1_HDR.y;
    u_xlat42 = (x_777 * x_779);
    let x_781 : f32 = u_xlat42;
    u_xlat42 = exp2(x_781);
    let x_783 : f32 = u_xlat42;
    let x_785 : f32 = x_45.unity_SpecCube1_HDR.x;
    u_xlat42 = (x_783 * x_785);
    let x_787 : vec4<f32> = u_xlat5;
    let x_789 : f32 = u_xlat42;
    let x_791 : vec3<f32> = (vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(x_789, x_789, x_789));
    let x_792 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
    let x_794 : f32 = u_xlat45;
    let x_796 : vec4<f32> = u_xlat8;
    let x_799 : vec4<f32> = u_xlat5;
    let x_802 : vec3<f32> = ((vec3<f32>(x_794, x_794, x_794) * vec3<f32>(x_796.x, x_796.y, x_796.z)) + -(vec3<f32>(x_799.x, x_799.y, x_799.z)));
    let x_803 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
    let x_806 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    let x_808 : vec4<f32> = u_xlat6;
    let x_811 : vec4<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_806.w, x_806.w, x_806.w) * vec3<f32>(x_808.x, x_808.y, x_808.z)) + vec3<f32>(x_811.x, x_811.y, x_811.z));
  }
  let x_814 : f32 = u_xlat43;
  let x_816 : vec3<f32> = u_xlat9;
  let x_817 : vec3<f32> = (vec3<f32>(x_814, x_814, x_814) * x_816);
  let x_818 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = vs_TEXCOORD1;
  let x_823 : vec2<f32> = u_xlat28;
  let x_827 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_829 : vec3<f32> = ((-(vec3<f32>(x_820.x, x_820.y, x_820.z)) * vec3<f32>(x_823.x, x_823.x, x_823.x)) + vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat6;
  let x_834 : vec4<f32> = u_xlat6;
  u_xlat28.x = dot(vec3<f32>(x_832.x, x_832.y, x_832.z), vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_839 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_839, 0.001f);
  let x_844 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_844);
  let x_847 : vec2<f32> = u_xlat28;
  let x_849 : vec4<f32> = u_xlat6;
  let x_851 : vec3<f32> = (vec3<f32>(x_847.x, x_847.x, x_847.x) * vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec3<f32> = u_xlat3;
  let x_855 : vec3<f32> = u_xlat4;
  u_xlat28.x = dot(x_854, -(x_855));
  let x_859 : vec3<f32> = u_xlat3;
  let x_861 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  u_xlat42 = dot(x_859, vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : f32 = u_xlat42;
  u_xlat42 = clamp(x_864, 0.0f, 1.0f);
  let x_866 : vec3<f32> = u_xlat3;
  let x_867 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(x_866, vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_870 : f32 = u_xlat43;
  u_xlat43 = clamp(x_870, 0.0f, 1.0f);
  let x_873 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_873.x, x_873.y, x_873.z), vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_880 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_880, 0.0f, 1.0f);
  let x_885 : f32 = u_xlat3.x;
  let x_887 : f32 = u_xlat3.x;
  u_xlat17 = (x_885 * x_887);
  let x_889 : f32 = u_xlat17;
  let x_891 : f32 = u_xlat44;
  u_xlat17 = dot(vec2<f32>(x_889, x_889), vec2<f32>(x_891, x_891));
  let x_894 : f32 = u_xlat17;
  u_xlat17 = (x_894 + -0.5f);
  let x_898 : f32 = u_xlat42;
  u_xlat31 = (-(x_898) + 1.0f);
  let x_901 : f32 = u_xlat31;
  let x_902 : f32 = u_xlat31;
  u_xlat45 = (x_901 * x_902);
  let x_904 : f32 = u_xlat45;
  let x_905 : f32 = u_xlat45;
  u_xlat45 = (x_904 * x_905);
  let x_907 : f32 = u_xlat31;
  let x_908 : f32 = u_xlat45;
  u_xlat31 = (x_907 * x_908);
  let x_910 : f32 = u_xlat17;
  let x_911 : f32 = u_xlat31;
  u_xlat31 = ((x_910 * x_911) + 1.0f);
  let x_915 : f32 = u_xlat28.x;
  u_xlat45 = (-(abs(x_915)) + 1.0f);
  let x_919 : f32 = u_xlat45;
  let x_920 : f32 = u_xlat45;
  u_xlat4.x = (x_919 * x_920);
  let x_924 : f32 = u_xlat4.x;
  let x_926 : f32 = u_xlat4.x;
  u_xlat4.x = (x_924 * x_926);
  let x_929 : f32 = u_xlat45;
  let x_931 : f32 = u_xlat4.x;
  u_xlat45 = (x_929 * x_931);
  let x_933 : f32 = u_xlat17;
  let x_934 : f32 = u_xlat45;
  u_xlat17 = ((x_933 * x_934) + 1.0f);
  let x_937 : f32 = u_xlat17;
  let x_938 : f32 = u_xlat31;
  u_xlat17 = (x_937 * x_938);
  let x_940 : f32 = u_xlat42;
  let x_941 : f32 = u_xlat17;
  u_xlat17 = (x_940 * x_941);
  let x_943 : f32 = u_xlat44;
  let x_944 : f32 = u_xlat44;
  u_xlat44 = (x_943 * x_944);
  let x_946 : f32 = u_xlat44;
  u_xlat44 = max(x_946, 0.002f);
  let x_949 : f32 = u_xlat44;
  u_xlat31 = (-(x_949) + 1.0f);
  let x_953 : f32 = u_xlat28.x;
  let x_955 : f32 = u_xlat31;
  let x_957 : f32 = u_xlat44;
  u_xlat4.x = ((abs(x_953) * x_955) + x_957);
  let x_960 : f32 = u_xlat42;
  let x_961 : f32 = u_xlat31;
  let x_963 : f32 = u_xlat44;
  u_xlat31 = ((x_960 * x_961) + x_963);
  let x_966 : f32 = u_xlat28.x;
  let x_968 : f32 = u_xlat31;
  u_xlat28.x = (abs(x_966) * x_968);
  let x_971 : f32 = u_xlat42;
  let x_973 : f32 = u_xlat4.x;
  let x_976 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_971 * x_973) + x_976);
  let x_980 : f32 = u_xlat28.x;
  u_xlat28.x = (x_980 + 0.00001f);
  let x_985 : f32 = u_xlat28.x;
  u_xlat28.x = (0.5f / x_985);
  let x_988 : f32 = u_xlat44;
  let x_989 : f32 = u_xlat44;
  u_xlat31 = (x_988 * x_989);
  let x_991 : f32 = u_xlat43;
  let x_992 : f32 = u_xlat31;
  let x_994 : f32 = u_xlat43;
  u_xlat4.x = ((x_991 * x_992) + -(x_994));
  let x_999 : f32 = u_xlat4.x;
  let x_1000 : f32 = u_xlat43;
  u_xlat43 = ((x_999 * x_1000) + 1.0f);
  let x_1003 : f32 = u_xlat31;
  u_xlat31 = (x_1003 * 0.318309873f);
  let x_1006 : f32 = u_xlat43;
  let x_1007 : f32 = u_xlat43;
  u_xlat43 = ((x_1006 * x_1007) + 0.0000001f);
  let x_1011 : f32 = u_xlat31;
  let x_1012 : f32 = u_xlat43;
  u_xlat43 = (x_1011 / x_1012);
  let x_1015 : f32 = u_xlat28.x;
  let x_1016 : f32 = u_xlat43;
  u_xlat28.x = (x_1015 * x_1016);
  let x_1019 : f32 = u_xlat42;
  let x_1021 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1019 * x_1021);
  let x_1025 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1025 * 3.141592741f);
  let x_1030 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_1030, 0.0f);
  let x_1033 : f32 = u_xlat44;
  let x_1034 : f32 = u_xlat44;
  u_xlat42 = ((x_1033 * x_1034) + 1.0f);
  let x_1037 : f32 = u_xlat42;
  u_xlat42 = (1.0f / x_1037);
  let x_1039 : vec3<f32> = u_xlat1;
  let x_1040 : vec3<f32> = u_xlat1;
  u_xlat43 = dot(x_1039, x_1040);
  let x_1042 : f32 = u_xlat43;
  u_xlatb43 = !((x_1042 == 0.0f));
  let x_1044 : bool = u_xlatb43;
  u_xlat43 = select(0.0f, 1.0f, x_1044);
  let x_1047 : f32 = u_xlat28.x;
  let x_1048 : f32 = u_xlat43;
  u_xlat28.x = (x_1047 * x_1048);
  let x_1052 : f32 = u_xlat0.y;
  let x_1054 : f32 = x_45.x_GlossMapScale;
  let x_1057 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1052 * x_1054) + -(x_1057));
  let x_1062 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1062 + 1.0f);
  let x_1066 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1066, 0.0f, 1.0f);
  let x_1069 : f32 = u_xlat17;
  let x_1071 : vec3<f32> = u_xlat7;
  u_xlat4 = (vec3<f32>(x_1069, x_1069, x_1069) * x_1071);
  let x_1073 : vec3<f32> = u_xlat7;
  let x_1074 : vec2<f32> = u_xlat28;
  let x_1076 : vec3<f32> = (x_1073 * vec3<f32>(x_1074.x, x_1074.x, x_1074.x));
  let x_1077 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1081 : f32 = u_xlat3.x;
  u_xlat14.x = (-(x_1081) + 1.0f);
  let x_1086 : f32 = u_xlat14.x;
  let x_1088 : f32 = u_xlat14.x;
  u_xlat28.x = (x_1086 * x_1088);
  let x_1092 : f32 = u_xlat28.x;
  let x_1094 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1092 * x_1094);
  let x_1098 : f32 = u_xlat14.x;
  let x_1100 : f32 = u_xlat28.x;
  u_xlat14.x = (x_1098 * x_1100);
  let x_1103 : vec3<f32> = u_xlat1;
  u_xlat3 = (-(x_1103) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1107 : vec3<f32> = u_xlat3;
  let x_1108 : vec3<f32> = u_xlat14;
  let x_1111 : vec3<f32> = u_xlat1;
  u_xlat3 = ((x_1107 * vec3<f32>(x_1108.x, x_1108.x, x_1108.x)) + x_1111);
  let x_1113 : vec3<f32> = u_xlat3;
  let x_1114 : vec4<f32> = u_xlat6;
  u_xlat3 = (x_1113 * vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
  let x_1117 : vec3<f32> = u_xlat2;
  let x_1118 : vec3<f32> = u_xlat4;
  let x_1120 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_1117 * x_1118) + x_1120);
  let x_1122 : vec4<f32> = u_xlat5;
  let x_1124 : f32 = u_xlat42;
  u_xlat14 = (vec3<f32>(x_1122.x, x_1122.y, x_1122.z) * vec3<f32>(x_1124, x_1124, x_1124));
  let x_1127 : vec3<f32> = u_xlat1;
  let x_1129 : vec3<f32> = u_xlat0;
  u_xlat3 = (-(x_1127) + vec3<f32>(x_1129.x, x_1129.x, x_1129.x));
  let x_1132 : f32 = u_xlat45;
  let x_1134 : vec3<f32> = u_xlat3;
  let x_1136 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1132, x_1132, x_1132) * x_1134) + x_1136);
  let x_1138 : vec3<f32> = u_xlat14;
  let x_1139 : vec3<f32> = u_xlat1;
  let x_1141 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_1138 * x_1139) + x_1141);
  let x_1148 : vec4<f32> = vs_TEXCOORD0;
  let x_1150 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_1148.x, x_1148.y));
  u_xlat1 = vec3<f32>(x_1150.x, x_1150.y, x_1150.z);
  let x_1154 : vec3<f32> = u_xlat1;
  let x_1157 : vec4<f32> = x_45.x_EmissionColor;
  let x_1160 : vec3<f32> = u_xlat0;
  let x_1161 : vec3<f32> = ((x_1154 * vec3<f32>(x_1157.x, x_1157.y, x_1157.z)) + x_1160);
  let x_1162 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
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

