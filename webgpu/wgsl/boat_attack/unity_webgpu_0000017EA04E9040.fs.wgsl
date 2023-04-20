diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb36 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_145 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat29 : f32;

@group(1) @binding(4) var<uniform> x_327 : LightShadows;

var<private> u_xlatb29 : bool;

var<private> u_xlatb41 : bool;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(4) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati42 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_693 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb22 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu39 : u32;

var<private> u_xlatb42 : bool;

fn main_1() {
  var x_90 : f32;
  var x_103 : f32;
  var x_116 : f32;
  var txVec0 : vec3<f32>;
  var x_353 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_840 : f32;
  var x_851 : f32;
  var txVec1 : vec3<f32>;
  var x_968 : f32;
  var x_1114 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_55 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb36 = (x_55 == 0.0f);
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_66 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_67 : vec3<f32> = (-(x_61) + x_66);
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_72 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat38 = dot(vec3<f32>(x_72.x, x_72.y, x_72.z), vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_77 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_77);
  let x_79 : f32 = u_xlat38;
  let x_81 : vec4<f32> = u_xlat2;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : bool = u_xlatb36;
  if (x_88) {
    let x_94 : f32 = u_xlat2.x;
    x_90 = x_94;
  } else {
    let x_99 : f32 = x_28.unity_MatrixV[0i].z;
    x_90 = x_99;
  }
  let x_100 : f32 = x_90;
  u_xlat3.x = x_100;
  let x_102 : bool = u_xlatb36;
  if (x_102) {
    let x_108 : f32 = u_xlat2.y;
    x_103 = x_108;
  } else {
    let x_112 : f32 = x_28.unity_MatrixV[1i].z;
    x_103 = x_112;
  }
  let x_113 : f32 = x_103;
  u_xlat3.y = x_113;
  let x_115 : bool = u_xlatb36;
  if (x_115) {
    let x_120 : f32 = u_xlat2.z;
    x_116 = x_120;
  } else {
    let x_123 : f32 = x_28.unity_MatrixV[2i].z;
    x_116 = x_123;
  }
  let x_124 : f32 = x_116;
  u_xlat3.z = x_124;
  let x_128 : vec3<f32> = vs_TEXCOORD2;
  let x_129 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_128, x_129);
  let x_131 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_131);
  let x_133 : f32 = u_xlat36;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = (vec3<f32>(x_133, x_133, x_133) * x_135);
  let x_137 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  u_xlat2.w = 1.0f;
  let x_148 : vec4<f32> = x_145.unity_SHAr;
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_148, x_149);
  let x_154 : vec4<f32> = x_145.unity_SHAg;
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_154, x_155);
  let x_160 : vec4<f32> = x_145.unity_SHAb;
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_160, x_161);
  let x_165 : vec4<f32> = u_xlat2;
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_165.y, x_165.z, x_165.z, x_165.x) * vec4<f32>(x_167.x, x_167.y, x_167.z, x_167.z));
  let x_173 : vec4<f32> = x_145.unity_SHBr;
  let x_174 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_173, x_174);
  let x_179 : vec4<f32> = x_145.unity_SHBg;
  let x_180 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_145.unity_SHBb;
  let x_186 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_185, x_186);
  let x_190 : f32 = u_xlat2.y;
  let x_192 : f32 = u_xlat2.y;
  u_xlat36 = (x_190 * x_192);
  let x_195 : f32 = u_xlat2.x;
  let x_197 : f32 = u_xlat2.x;
  let x_199 : f32 = u_xlat36;
  u_xlat36 = ((x_195 * x_197) + -(x_199));
  let x_204 : vec4<f32> = x_145.unity_SHC;
  let x_206 : f32 = u_xlat36;
  let x_209 : vec4<f32> = u_xlat6;
  let x_211 : vec3<f32> = ((vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(x_206, x_206, x_206)) + vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_212 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_214 : vec3<f32> = u_xlat4;
  let x_215 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_214 + vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_218, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_223 : f32 = x_42.x_Metallic;
  u_xlat36 = ((-(x_223) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_228 : f32 = u_xlat36;
  let x_231 : f32 = x_42.x_Smoothness;
  u_xlat38 = (-(x_228) + x_231);
  let x_234 : f32 = u_xlat36;
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat13 = (vec3<f32>(x_234, x_234, x_234) * vec3<f32>(x_236.y, x_236.z, x_236.w));
  let x_239 : vec4<f32> = u_xlat0;
  let x_242 : vec4<f32> = x_42.x_BaseColor;
  let x_247 : vec3<f32> = ((vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_242.x, x_242.y, x_242.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_248 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_251 : f32 = x_42.x_Metallic;
  let x_253 : f32 = x_42.x_Metallic;
  let x_255 : f32 = x_42.x_Metallic;
  let x_256 : vec3<f32> = vec3<f32>(x_251, x_253, x_255);
  let x_261 : vec4<f32> = u_xlat0;
  let x_266 : vec3<f32> = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_261.x, x_261.y, x_261.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : f32 = x_42.x_Smoothness;
  u_xlat36 = (-(x_270) + 1.0f);
  let x_274 : f32 = u_xlat36;
  let x_275 : f32 = u_xlat36;
  u_xlat39 = (x_274 * x_275);
  let x_277 : f32 = u_xlat39;
  u_xlat39 = max(x_277, 0.0078125f);
  let x_281 : f32 = u_xlat39;
  let x_282 : f32 = u_xlat39;
  u_xlat40 = (x_281 * x_282);
  let x_284 : f32 = u_xlat38;
  u_xlat38 = (x_284 + 1.0f);
  let x_286 : f32 = u_xlat38;
  u_xlat38 = clamp(x_286, 0.0f, 1.0f);
  let x_288 : f32 = u_xlat39;
  u_xlat5.x = ((x_288 * 4.0f) + 2.0f);
  let x_298 : vec4<f32> = vs_TEXCOORD6;
  let x_299 : vec2<f32> = vec2<f32>(x_298.x, x_298.y);
  let x_302 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_299.x, x_299.y, x_302);
  let x_315 : vec3<f32> = txVec0;
  let x_317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_315.xy, x_315.z);
  u_xlat17.x = x_317;
  let x_330 : f32 = x_327.x_MainLightShadowParams.x;
  u_xlat29 = (-(x_330) + 1.0f);
  let x_334 : f32 = u_xlat17.x;
  let x_336 : f32 = x_327.x_MainLightShadowParams.x;
  let x_338 : f32 = u_xlat29;
  u_xlat17.x = ((x_334 * x_336) + x_338);
  let x_343 : f32 = vs_TEXCOORD6.z;
  u_xlatb29 = (0.0f >= x_343);
  let x_347 : f32 = vs_TEXCOORD6.z;
  u_xlatb41 = (x_347 >= 1.0f);
  let x_349 : bool = u_xlatb41;
  let x_350 : bool = u_xlatb29;
  u_xlatb29 = (x_349 | x_350);
  let x_352 : bool = u_xlatb29;
  if (x_352) {
    x_353 = 1.0f;
  } else {
    let x_358 : f32 = u_xlat17.x;
    x_353 = x_358;
  }
  let x_359 : f32 = x_353;
  u_xlat17.x = x_359;
  let x_361 : vec3<f32> = vs_TEXCOORD1;
  let x_363 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_365 : vec3<f32> = (x_361 + -(x_363));
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec4<f32> = u_xlat6;
  let x_370 : vec4<f32> = u_xlat6;
  u_xlat29 = dot(vec3<f32>(x_368.x, x_368.y, x_368.z), vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_374 : f32 = u_xlat29;
  let x_376 : f32 = x_327.x_MainLightShadowParams.z;
  let x_379 : f32 = x_327.x_MainLightShadowParams.w;
  u_xlat41 = ((x_374 * x_376) + x_379);
  let x_381 : f32 = u_xlat41;
  u_xlat41 = clamp(x_381, 0.0f, 1.0f);
  let x_384 : f32 = u_xlat17.x;
  u_xlat6.x = (-(x_384) + 1.0f);
  let x_388 : f32 = u_xlat41;
  let x_390 : f32 = u_xlat6.x;
  let x_393 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_388 * x_390) + x_393);
  let x_396 : vec3<f32> = u_xlat3;
  let x_398 : vec4<f32> = u_xlat2;
  u_xlat41 = dot(-(x_396), vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : f32 = u_xlat41;
  let x_402 : f32 = u_xlat41;
  u_xlat41 = (x_401 + x_402);
  let x_404 : vec4<f32> = u_xlat2;
  let x_406 : f32 = u_xlat41;
  let x_410 : vec3<f32> = u_xlat3;
  let x_412 : vec3<f32> = ((vec3<f32>(x_404.x, x_404.y, x_404.z) * -(vec3<f32>(x_406, x_406, x_406))) + -(x_410));
  let x_413 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat2;
  let x_417 : vec3<f32> = u_xlat3;
  u_xlat41 = dot(vec3<f32>(x_415.x, x_415.y, x_415.z), x_417);
  let x_419 : f32 = u_xlat41;
  u_xlat41 = clamp(x_419, 0.0f, 1.0f);
  let x_421 : f32 = u_xlat41;
  u_xlat41 = (-(x_421) + 1.0f);
  let x_424 : f32 = u_xlat41;
  let x_425 : f32 = u_xlat41;
  u_xlat41 = (x_424 * x_425);
  let x_427 : f32 = u_xlat41;
  let x_428 : f32 = u_xlat41;
  u_xlat41 = (x_427 * x_428);
  let x_431 : f32 = u_xlat36;
  u_xlat42 = ((-(x_431) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_437 : f32 = u_xlat36;
  let x_438 : f32 = u_xlat42;
  u_xlat36 = (x_437 * x_438);
  let x_440 : f32 = u_xlat36;
  u_xlat36 = (x_440 * 6.0f);
  let x_451 : vec4<f32> = u_xlat6;
  let x_453 : f32 = u_xlat36;
  let x_454 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_451.x, x_451.y, x_451.z), x_453);
  u_xlat6 = x_454;
  let x_456 : f32 = u_xlat6.w;
  u_xlat36 = (x_456 + -1.0f);
  let x_460 : f32 = x_145.unity_SpecCube0_HDR.w;
  let x_461 : f32 = u_xlat36;
  u_xlat36 = ((x_460 * x_461) + 1.0f);
  let x_464 : f32 = u_xlat36;
  u_xlat36 = max(x_464, 0.0f);
  let x_466 : f32 = u_xlat36;
  u_xlat36 = log2(x_466);
  let x_468 : f32 = u_xlat36;
  let x_470 : f32 = x_145.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_468 * x_470);
  let x_472 : f32 = u_xlat36;
  u_xlat36 = exp2(x_472);
  let x_474 : f32 = u_xlat36;
  let x_476 : f32 = x_145.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_474 * x_476);
  let x_478 : vec4<f32> = u_xlat6;
  let x_480 : f32 = u_xlat36;
  let x_482 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_480, x_480, x_480));
  let x_483 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_487 : f32 = u_xlat39;
  let x_489 : f32 = u_xlat39;
  u_xlat7 = ((vec2<f32>(x_487, x_487) * vec2<f32>(x_489, x_489)) + vec2<f32>(-1.0f, 1.0f));
  let x_495 : f32 = u_xlat7.y;
  u_xlat36 = (1.0f / x_495);
  let x_498 : vec4<f32> = u_xlat0;
  let x_501 : f32 = u_xlat38;
  u_xlat19 = (-(vec3<f32>(x_498.x, x_498.y, x_498.z)) + vec3<f32>(x_501, x_501, x_501));
  let x_504 : f32 = u_xlat41;
  let x_506 : vec3<f32> = u_xlat19;
  let x_508 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_504, x_504, x_504) * x_506) + vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : f32 = u_xlat36;
  let x_513 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_511, x_511, x_511) * x_513);
  let x_515 : vec4<f32> = u_xlat6;
  let x_517 : vec3<f32> = u_xlat19;
  let x_518 : vec3<f32> = (vec3<f32>(x_515.x, x_515.y, x_515.z) * x_517);
  let x_519 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_521 : vec3<f32> = u_xlat4;
  let x_522 : vec3<f32> = u_xlat13;
  let x_524 : vec4<f32> = u_xlat6;
  u_xlat4 = ((x_521 * x_522) + vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_528 : f32 = u_xlat17.x;
  let x_530 : f32 = x_145.unity_LightData.z;
  u_xlat36 = (x_528 * x_530);
  let x_532 : vec4<f32> = u_xlat2;
  let x_535 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_532.x, x_532.y, x_532.z), vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : f32 = u_xlat38;
  u_xlat38 = clamp(x_538, 0.0f, 1.0f);
  let x_540 : f32 = u_xlat36;
  let x_541 : f32 = u_xlat38;
  u_xlat36 = (x_540 * x_541);
  let x_543 : f32 = u_xlat36;
  let x_546 : vec4<f32> = x_28.x_MainLightColor;
  let x_548 : vec3<f32> = (vec3<f32>(x_543, x_543, x_543) * vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec3<f32> = u_xlat3;
  let x_553 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat19 = (x_551 + vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : vec3<f32> = u_xlat19;
  let x_557 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_556, x_557);
  let x_559 : f32 = u_xlat36;
  u_xlat36 = max(x_559, 1.17549435e-38f);
  let x_562 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_562);
  let x_564 : f32 = u_xlat36;
  let x_566 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_564, x_564, x_564) * x_566);
  let x_568 : vec4<f32> = u_xlat2;
  let x_570 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(vec3<f32>(x_568.x, x_568.y, x_568.z), x_570);
  let x_572 : f32 = u_xlat36;
  u_xlat36 = clamp(x_572, 0.0f, 1.0f);
  let x_575 : vec4<f32> = x_28.x_MainLightPosition;
  let x_577 : vec3<f32> = u_xlat19;
  u_xlat38 = dot(vec3<f32>(x_575.x, x_575.y, x_575.z), x_577);
  let x_579 : f32 = u_xlat38;
  u_xlat38 = clamp(x_579, 0.0f, 1.0f);
  let x_581 : f32 = u_xlat36;
  let x_582 : f32 = u_xlat36;
  u_xlat36 = (x_581 * x_582);
  let x_584 : f32 = u_xlat36;
  let x_586 : f32 = u_xlat7.x;
  u_xlat36 = ((x_584 * x_586) + 1.00001001358032226562f);
  let x_590 : f32 = u_xlat38;
  let x_591 : f32 = u_xlat38;
  u_xlat38 = (x_590 * x_591);
  let x_593 : f32 = u_xlat36;
  let x_594 : f32 = u_xlat36;
  u_xlat36 = (x_593 * x_594);
  let x_596 : f32 = u_xlat38;
  u_xlat38 = max(x_596, 0.10000000149011611938f);
  let x_599 : f32 = u_xlat36;
  let x_600 : f32 = u_xlat38;
  u_xlat36 = (x_599 * x_600);
  let x_603 : f32 = u_xlat5.x;
  let x_604 : f32 = u_xlat36;
  u_xlat36 = (x_603 * x_604);
  let x_606 : f32 = u_xlat40;
  let x_607 : f32 = u_xlat36;
  u_xlat36 = (x_606 / x_607);
  let x_609 : vec4<f32> = u_xlat0;
  let x_611 : f32 = u_xlat36;
  let x_614 : vec3<f32> = u_xlat13;
  u_xlat19 = ((vec3<f32>(x_609.x, x_609.y, x_609.z) * vec3<f32>(x_611, x_611, x_611)) + x_614);
  let x_618 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_620 : f32 = x_145.unity_LightData.y;
  u_xlat36 = min(x_618, x_620);
  let x_624 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_624));
  let x_627 : f32 = u_xlat29;
  let x_630 : f32 = x_327.x_AdditionalShadowFadeParams.x;
  let x_633 : f32 = x_327.x_AdditionalShadowFadeParams.y;
  u_xlat38 = ((x_627 * x_630) + x_633);
  let x_635 : f32 = u_xlat38;
  u_xlat38 = clamp(x_635, 0.0f, 1.0f);
  u_xlat17.x = 0.0f;
  u_xlat17.y = 0.0f;
  u_xlat17.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_647 : u32 = u_xlatu_loop_1;
    let x_648 : u32 = u_xlatu36;
    if ((x_647 < x_648)) {
    } else {
      break;
    }
    let x_651 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_651 >> 2u);
    let x_655 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_655 & 3u));
    let x_658 : u32 = u_xlatu42;
    let x_661 : vec4<f32> = x_145.unity_LightIndices[bitcast<i32>(x_658)];
    let x_671 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_676 : vec4<u32> = indexable[x_671];
    u_xlat42 = dot(x_661, bitcast<vec4<f32>>(x_676));
    let x_680 : f32 = u_xlat42;
    u_xlati42 = i32(x_680);
    let x_683 : vec3<f32> = vs_TEXCOORD1;
    let x_694 : i32 = u_xlati42;
    let x_696 : vec4<f32> = x_693.x_AdditionalLightsPosition[x_694];
    let x_699 : i32 = u_xlati42;
    let x_701 : vec4<f32> = x_693.x_AdditionalLightsPosition[x_699];
    u_xlat8 = ((-(x_683) * vec3<f32>(x_696.w, x_696.w, x_696.w)) + vec3<f32>(x_701.x, x_701.y, x_701.z));
    let x_705 : vec3<f32> = u_xlat8;
    let x_706 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_705, x_706);
    let x_708 : f32 = u_xlat44;
    u_xlat44 = max(x_708, 0.00006103515625f);
    let x_712 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_712);
    let x_715 : vec3<f32> = u_xlat8;
    let x_716 : f32 = u_xlat9;
    u_xlat21 = (x_715 * vec3<f32>(x_716, x_716, x_716));
    let x_720 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_720);
    let x_723 : f32 = u_xlat44;
    let x_724 : i32 = u_xlati42;
    let x_726 : f32 = x_693.x_AdditionalLightsAttenuation[x_724].x;
    u_xlat44 = (x_723 * x_726);
    let x_728 : f32 = u_xlat44;
    let x_730 : f32 = u_xlat44;
    u_xlat44 = ((-(x_728) * x_730) + 1.0f);
    let x_733 : f32 = u_xlat44;
    u_xlat44 = max(x_733, 0.0f);
    let x_735 : f32 = u_xlat44;
    let x_736 : f32 = u_xlat44;
    u_xlat44 = (x_735 * x_736);
    let x_738 : f32 = u_xlat44;
    let x_740 : f32 = u_xlat10.x;
    u_xlat44 = (x_738 * x_740);
    let x_742 : i32 = u_xlati42;
    let x_744 : vec4<f32> = x_693.x_AdditionalLightsSpotDir[x_742];
    let x_746 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_744.x, x_744.y, x_744.z), x_746);
    let x_750 : f32 = u_xlat10.x;
    let x_751 : i32 = u_xlati42;
    let x_753 : f32 = x_693.x_AdditionalLightsAttenuation[x_751].z;
    let x_755 : i32 = u_xlati42;
    let x_757 : f32 = x_693.x_AdditionalLightsAttenuation[x_755].w;
    u_xlat10.x = ((x_750 * x_753) + x_757);
    let x_761 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_761, 0.0f, 1.0f);
    let x_765 : f32 = u_xlat10.x;
    let x_767 : f32 = u_xlat10.x;
    u_xlat10.x = (x_765 * x_767);
    let x_770 : f32 = u_xlat44;
    let x_772 : f32 = u_xlat10.x;
    u_xlat44 = (x_770 * x_772);
    let x_776 : i32 = u_xlati42;
    let x_778 : f32 = x_327.x_AdditionalShadowParams[x_776].w;
    u_xlati10 = i32(x_778);
    let x_783 : i32 = u_xlati10;
    u_xlatb22.x = (x_783 >= 0i);
    let x_787 : bool = u_xlatb22.x;
    if (x_787) {
      let x_791 : i32 = u_xlati42;
      let x_793 : f32 = x_327.x_AdditionalShadowParams[x_791].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_793, x_793, x_793, x_793))));
      let x_800 : bool = u_xlatb22.x;
      if (x_800) {
        let x_803 : vec3<f32> = u_xlat21;
        let x_806 : vec3<f32> = u_xlat21;
        let x_809 : vec4<bool> = (abs(vec4<f32>(x_803.z, x_803.z, x_803.y, x_803.y)) >= abs(vec4<f32>(x_806.x, x_806.y, x_806.x, x_806.x)));
        u_xlatb22 = vec3<bool>(x_809.x, x_809.y, x_809.z);
        let x_812 : bool = u_xlatb22.y;
        let x_814 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_812 & x_814);
        let x_818 : vec3<f32> = u_xlat21;
        let x_821 : vec4<bool> = (-(vec4<f32>(x_818.z, x_818.y, x_818.x, x_818.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_821.x, x_821.y, x_821.z);
        let x_825 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_825);
        let x_830 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_830);
        let x_836 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_836);
        let x_839 : bool = u_xlatb22.z;
        if (x_839) {
          let x_844 : f32 = u_xlat11.y;
          x_840 = x_844;
        } else {
          let x_846 : f32 = u_xlat34;
          x_840 = x_846;
        }
        let x_847 : f32 = x_840;
        u_xlat34 = x_847;
        let x_850 : bool = u_xlatb22.x;
        if (x_850) {
          let x_855 : f32 = u_xlat11.x;
          x_851 = x_855;
        } else {
          let x_857 : f32 = u_xlat34;
          x_851 = x_857;
        }
        let x_858 : f32 = x_851;
        u_xlat22 = x_858;
        let x_859 : i32 = u_xlati42;
        let x_861 : f32 = x_327.x_AdditionalShadowParams[x_859].w;
        u_xlat34 = trunc(x_861);
        let x_863 : f32 = u_xlat22;
        let x_864 : f32 = u_xlat34;
        u_xlat22 = (x_863 + x_864);
        let x_866 : f32 = u_xlat22;
        u_xlati10 = i32(x_866);
      }
      let x_868 : i32 = u_xlati10;
      u_xlati10 = (x_868 << bitcast<u32>(2i));
      let x_870 : vec3<f32> = vs_TEXCOORD1;
      let x_873 : i32 = u_xlati10;
      let x_876 : i32 = u_xlati10;
      let x_880 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[((x_873 + 1i) / 4i)][((x_876 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_870.y, x_870.y, x_870.y, x_870.y) * x_880);
      let x_882 : i32 = u_xlati10;
      let x_884 : i32 = u_xlati10;
      let x_887 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[(x_882 / 4i)][(x_884 % 4i)];
      let x_888 : vec3<f32> = vs_TEXCOORD1;
      let x_891 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_887 * vec4<f32>(x_888.x, x_888.x, x_888.x, x_888.x)) + x_891);
      let x_893 : i32 = u_xlati10;
      let x_896 : i32 = u_xlati10;
      let x_900 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[((x_893 + 2i) / 4i)][((x_896 + 2i) % 4i)];
      let x_901 : vec3<f32> = vs_TEXCOORD1;
      let x_904 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_900 * vec4<f32>(x_901.z, x_901.z, x_901.z, x_901.z)) + x_904);
      let x_906 : vec4<f32> = u_xlat11;
      let x_907 : i32 = u_xlati10;
      let x_910 : i32 = u_xlati10;
      let x_914 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[((x_907 + 3i) / 4i)][((x_910 + 3i) % 4i)];
      u_xlat10 = (x_906 + x_914);
      let x_916 : vec4<f32> = u_xlat10;
      let x_918 : vec4<f32> = u_xlat10;
      let x_920 : vec3<f32> = (vec3<f32>(x_916.x, x_916.y, x_916.z) / vec3<f32>(x_918.w, x_918.w, x_918.w));
      let x_921 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
      let x_924 : vec4<f32> = u_xlat10;
      let x_925 : vec2<f32> = vec2<f32>(x_924.x, x_924.y);
      let x_927 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_925.x, x_925.y, x_927);
      let x_935 : vec3<f32> = txVec1;
      let x_937 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_935.xy, x_935.z);
      u_xlat10.x = x_937;
      let x_939 : i32 = u_xlati42;
      let x_941 : f32 = x_327.x_AdditionalShadowParams[x_939].x;
      u_xlat22 = (1.0f + -(x_941));
      let x_945 : f32 = u_xlat10.x;
      let x_946 : i32 = u_xlati42;
      let x_948 : f32 = x_327.x_AdditionalShadowParams[x_946].x;
      let x_950 : f32 = u_xlat22;
      u_xlat10.x = ((x_945 * x_948) + x_950);
      let x_954 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_954);
      let x_959 : f32 = u_xlat10.z;
      u_xlatb34 = (x_959 >= 1.0f);
      let x_961 : bool = u_xlatb34;
      let x_963 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_961 | x_963);
      let x_967 : bool = u_xlatb22.x;
      if (x_967) {
        x_968 = 1.0f;
      } else {
        let x_973 : f32 = u_xlat10.x;
        x_968 = x_973;
      }
      let x_974 : f32 = x_968;
      u_xlat10.x = x_974;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_979 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_979) + 1.0f);
    let x_982 : f32 = u_xlat38;
    let x_983 : f32 = u_xlat22;
    let x_986 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_982 * x_983) + x_986);
    let x_989 : f32 = u_xlat44;
    let x_991 : f32 = u_xlat10.x;
    u_xlat44 = (x_989 * x_991);
    let x_993 : vec4<f32> = u_xlat2;
    let x_995 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_993.x, x_993.y, x_993.z), x_995);
    let x_999 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_999, 0.0f, 1.0f);
    let x_1002 : f32 = u_xlat44;
    let x_1004 : f32 = u_xlat10.x;
    u_xlat44 = (x_1002 * x_1004);
    let x_1006 : f32 = u_xlat44;
    let x_1008 : i32 = u_xlati42;
    let x_1010 : vec4<f32> = x_693.x_AdditionalLightsColor[x_1008];
    let x_1012 : vec3<f32> = (vec3<f32>(x_1006, x_1006, x_1006) * vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
    let x_1013 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
    let x_1015 : vec3<f32> = u_xlat8;
    let x_1016 : f32 = u_xlat9;
    let x_1019 : vec3<f32> = u_xlat3;
    u_xlat8 = ((x_1015 * vec3<f32>(x_1016, x_1016, x_1016)) + x_1019);
    let x_1021 : vec3<f32> = u_xlat8;
    let x_1022 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1021, x_1022);
    let x_1024 : f32 = u_xlat42;
    u_xlat42 = max(x_1024, 1.17549435e-38f);
    let x_1026 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1026);
    let x_1028 : f32 = u_xlat42;
    let x_1030 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1028, x_1028, x_1028) * x_1030);
    let x_1032 : vec4<f32> = u_xlat2;
    let x_1034 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_1032.x, x_1032.y, x_1032.z), x_1034);
    let x_1036 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1036, 0.0f, 1.0f);
    let x_1038 : vec3<f32> = u_xlat21;
    let x_1039 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1038, x_1039);
    let x_1043 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1043, 0.0f, 1.0f);
    let x_1046 : f32 = u_xlat42;
    let x_1047 : f32 = u_xlat42;
    u_xlat42 = (x_1046 * x_1047);
    let x_1049 : f32 = u_xlat42;
    let x_1051 : f32 = u_xlat7.x;
    u_xlat42 = ((x_1049 * x_1051) + 1.00001001358032226562f);
    let x_1055 : f32 = u_xlat8.x;
    let x_1057 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1055 * x_1057);
    let x_1060 : f32 = u_xlat42;
    let x_1061 : f32 = u_xlat42;
    u_xlat42 = (x_1060 * x_1061);
    let x_1064 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1064, 0.10000000149011611938f);
    let x_1067 : f32 = u_xlat42;
    let x_1069 : f32 = u_xlat8.x;
    u_xlat42 = (x_1067 * x_1069);
    let x_1072 : f32 = u_xlat5.x;
    let x_1073 : f32 = u_xlat42;
    u_xlat42 = (x_1072 * x_1073);
    let x_1075 : f32 = u_xlat40;
    let x_1076 : f32 = u_xlat42;
    u_xlat42 = (x_1075 / x_1076);
    let x_1078 : vec4<f32> = u_xlat0;
    let x_1080 : f32 = u_xlat42;
    let x_1083 : vec3<f32> = u_xlat13;
    u_xlat8 = ((vec3<f32>(x_1078.x, x_1078.y, x_1078.z) * vec3<f32>(x_1080, x_1080, x_1080)) + x_1083);
    let x_1085 : vec3<f32> = u_xlat8;
    let x_1086 : vec4<f32> = u_xlat10;
    let x_1089 : vec3<f32> = u_xlat17;
    u_xlat17 = ((x_1085 * vec3<f32>(x_1086.x, x_1086.y, x_1086.z)) + x_1089);

    continuing {
      let x_1091 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1091 + bitcast<u32>(1i));
    }
  }
  let x_1093 : vec3<f32> = u_xlat19;
  let x_1094 : vec4<f32> = u_xlat6;
  let x_1097 : vec3<f32> = u_xlat4;
  let x_1098 : vec3<f32> = ((x_1093 * vec3<f32>(x_1094.x, x_1094.y, x_1094.z)) + x_1097);
  let x_1099 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
  let x_1103 : vec3<f32> = u_xlat17;
  let x_1104 : vec4<f32> = u_xlat0;
  let x_1106 : vec3<f32> = (x_1103 + vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
  let x_1111 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_1111 == 1.0f);
  let x_1113 : bool = u_xlatb0;
  if (x_1113) {
    let x_1118 : f32 = u_xlat1.x;
    x_1114 = x_1118;
  } else {
    x_1114 = 1.0f;
  }
  let x_1120 : f32 = x_1114;
  SV_Target0.w = x_1120;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


