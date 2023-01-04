struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_335 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_478 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_692 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb33 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat3 : vec3<f32>;
  var x_109 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat16 : f32;
  var u_xlat38 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var x_362 : f32;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu35 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu37 : u32;
  var u_xlati39 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati37 : i32;
  var u_xlat39 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_896 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb33 = (x_69 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_76) + x_81);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat35 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat35;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_106 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_106;
  let x_108 : bool = u_xlatb33;
  if (x_108) {
    let x_112 : vec3<f32> = u_xlat2;
    x_109 = x_112;
  } else {
    let x_114 : vec3<f32> = u_xlat3;
    x_109 = x_114;
  }
  let x_115 : vec3<f32> = x_109;
  u_xlat2 = x_115;
  let x_118 : vec3<f32> = vs_TEXCOORD2;
  let x_119 : vec3<f32> = vs_TEXCOORD2;
  u_xlat33 = dot(x_118, x_119);
  let x_121 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_121);
  let x_123 : f32 = u_xlat33;
  let x_125 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_123, x_123, x_123) * x_125);
  let x_128 : f32 = vs_TEXCOORD1.y;
  let x_130 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_128 * x_130);
  let x_133 : f32 = x_44.unity_MatrixV[0i].z;
  let x_135 : f32 = vs_TEXCOORD1.x;
  let x_137 : f32 = u_xlat33;
  u_xlat33 = ((x_133 * x_135) + x_137);
  let x_140 : f32 = x_44.unity_MatrixV[2i].z;
  let x_142 : f32 = vs_TEXCOORD1.z;
  let x_144 : f32 = u_xlat33;
  u_xlat33 = ((x_140 * x_142) + x_144);
  let x_146 : f32 = u_xlat33;
  let x_149 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_146 + x_149);
  let x_151 : f32 = u_xlat33;
  let x_155 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_151) + -(x_155));
  let x_158 : f32 = u_xlat33;
  u_xlat33 = max(x_158, 0.0f);
  let x_160 : f32 = u_xlat33;
  let x_163 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_160 * x_163);
  let x_172 : vec2<f32> = vs_TEXCOORD8;
  let x_174 : f32 = x_44.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_172, x_174);
  u_xlat4 = vec3<f32>(x_175.x, x_175.y, x_175.z);
  let x_180 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_181 : vec2<f32> = vec2<f32>(x_180.x, x_180.y);
  let x_185 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_181.x, x_181.y));
  let x_186 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_185.x, x_185.y, x_186.z);
  let x_188 : vec3<f32> = u_xlat5;
  let x_190 : vec4<f32> = hlslcc_FragCoord;
  let x_192 : vec2<f32> = (vec2<f32>(x_188.x, x_188.y) * vec2<f32>(x_190.x, x_190.y));
  let x_193 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_192.x, x_192.y, x_193.z);
  let x_196 : f32 = u_xlat5.y;
  let x_199 : f32 = x_44.x_ScaleBiasRt.x;
  let x_202 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_196 * x_199) + x_202);
  let x_204 : f32 = u_xlat35;
  u_xlat5.z = (-(x_204) + 1.0f);
  let x_209 : f32 = x_57.x_Metallic;
  u_xlat35 = ((-(x_209) * 0.959999979f) + 0.959999979f);
  let x_215 : f32 = u_xlat35;
  let x_218 : f32 = x_57.x_Smoothness;
  u_xlat36 = (-(x_215) + x_218);
  let x_221 : vec4<f32> = u_xlat1;
  let x_223 : f32 = u_xlat35;
  u_xlat12 = (vec3<f32>(x_221.y, x_221.z, x_221.w) * vec3<f32>(x_223, x_223, x_223));
  let x_226 : vec4<f32> = u_xlat0;
  let x_229 : vec4<f32> = x_57.x_BaseColor;
  let x_234 : vec3<f32> = ((vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(x_229.x, x_229.y, x_229.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_235 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_238 : f32 = x_57.x_Metallic;
  let x_240 : f32 = x_57.x_Metallic;
  let x_242 : f32 = x_57.x_Metallic;
  let x_243 : vec3<f32> = vec3<f32>(x_238, x_240, x_242);
  let x_248 : vec4<f32> = u_xlat0;
  let x_253 : vec3<f32> = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_248.x, x_248.y, x_248.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_254 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : f32 = x_57.x_Smoothness;
  u_xlat35 = (-(x_257) + 1.0f);
  let x_261 : f32 = u_xlat35;
  let x_262 : f32 = u_xlat35;
  u_xlat37 = (x_261 * x_262);
  let x_264 : f32 = u_xlat37;
  u_xlat37 = max(x_264, 0.0078125f);
  let x_268 : f32 = u_xlat37;
  let x_269 : f32 = u_xlat37;
  u_xlat16 = (x_268 * x_269);
  let x_271 : f32 = u_xlat36;
  u_xlat36 = (x_271 + 1.0f);
  let x_273 : f32 = u_xlat36;
  u_xlat36 = clamp(x_273, 0.0f, 1.0f);
  let x_276 : f32 = u_xlat37;
  u_xlat38 = ((x_276 * 4.0f) + 2.0f);
  let x_286 : vec3<f32> = u_xlat5;
  let x_289 : f32 = x_44.x_GlobalMipBias.x;
  let x_290 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_286.x, x_286.z), x_289);
  u_xlat5.x = x_290.x;
  let x_295 : f32 = u_xlat5.x;
  u_xlat27 = (x_295 + -1.0f);
  let x_300 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_301 : f32 = u_xlat27;
  u_xlat27 = ((x_300 * x_301) + 1.0f);
  let x_305 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_305, 1.0f);
  let x_310 : vec4<f32> = vs_TEXCOORD6;
  let x_311 : vec2<f32> = vec2<f32>(x_310.x, x_310.y);
  let x_313 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_311.x, x_311.y, x_313);
  let x_326 : vec3<f32> = txVec0;
  let x_328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_326.xy, x_326.z);
  u_xlat6.x = x_328;
  let x_337 : f32 = x_335.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_337) + 1.0f);
  let x_342 : f32 = u_xlat6.x;
  let x_344 : f32 = x_335.x_MainLightShadowParams.x;
  let x_347 : f32 = u_xlat17.x;
  u_xlat6.x = ((x_342 * x_344) + x_347);
  let x_352 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (0.0f >= x_352);
  let x_356 : f32 = vs_TEXCOORD6.z;
  u_xlatb28 = (x_356 >= 1.0f);
  let x_358 : bool = u_xlatb28;
  let x_359 : bool = u_xlatb17;
  u_xlatb17 = (x_358 | x_359);
  let x_361 : bool = u_xlatb17;
  if (x_361) {
    x_362 = 1.0f;
  } else {
    let x_367 : f32 = u_xlat6.x;
    x_362 = x_367;
  }
  let x_368 : f32 = x_362;
  u_xlat6.x = x_368;
  let x_370 : vec3<f32> = vs_TEXCOORD1;
  let x_372 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat17 = (x_370 + -(x_372));
  let x_375 : vec3<f32> = u_xlat17;
  let x_376 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_375, x_376);
  let x_380 : f32 = u_xlat17.x;
  let x_382 : f32 = x_335.x_MainLightShadowParams.z;
  let x_385 : f32 = x_335.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_380 * x_382) + x_385);
  let x_389 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_389, 0.0f, 1.0f);
  let x_394 : f32 = u_xlat6.x;
  u_xlat28 = (-(x_394) + 1.0f);
  let x_398 : f32 = u_xlat17.x;
  let x_399 : f32 = u_xlat28;
  let x_402 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_398 * x_399) + x_402);
  let x_405 : f32 = u_xlat27;
  let x_408 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_405, x_405, x_405) * vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_412 : vec3<f32> = u_xlat2;
  let x_414 : vec3<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_412), x_414);
  let x_418 : f32 = u_xlat7.x;
  let x_420 : f32 = u_xlat7.x;
  u_xlat7.x = (x_418 + x_420);
  let x_423 : vec3<f32> = u_xlat3;
  let x_424 : vec3<f32> = u_xlat7;
  let x_428 : vec3<f32> = u_xlat2;
  u_xlat7 = ((x_423 * -(vec3<f32>(x_424.x, x_424.x, x_424.x))) + -(x_428));
  let x_432 : vec3<f32> = u_xlat3;
  let x_433 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(x_432, x_433);
  let x_435 : f32 = u_xlat40;
  u_xlat40 = clamp(x_435, 0.0f, 1.0f);
  let x_437 : f32 = u_xlat40;
  u_xlat40 = (-(x_437) + 1.0f);
  let x_440 : f32 = u_xlat40;
  let x_441 : f32 = u_xlat40;
  u_xlat40 = (x_440 * x_441);
  let x_443 : f32 = u_xlat40;
  let x_444 : f32 = u_xlat40;
  u_xlat40 = (x_443 * x_444);
  let x_447 : f32 = u_xlat35;
  u_xlat8.x = ((-(x_447) * 0.699999988f) + 1.700000048f);
  let x_454 : f32 = u_xlat35;
  let x_456 : f32 = u_xlat8.x;
  u_xlat35 = (x_454 * x_456);
  let x_458 : f32 = u_xlat35;
  u_xlat35 = (x_458 * 6.0f);
  let x_469 : vec3<f32> = u_xlat7;
  let x_470 : f32 = u_xlat35;
  let x_471 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_469, x_470);
  u_xlat8 = x_471;
  let x_473 : f32 = u_xlat8.w;
  u_xlat35 = (x_473 + -1.0f);
  let x_480 : f32 = x_478.unity_SpecCube0_HDR.w;
  let x_481 : f32 = u_xlat35;
  u_xlat35 = ((x_480 * x_481) + 1.0f);
  let x_484 : f32 = u_xlat35;
  u_xlat35 = max(x_484, 0.0f);
  let x_486 : f32 = u_xlat35;
  u_xlat35 = log2(x_486);
  let x_488 : f32 = u_xlat35;
  let x_490 : f32 = x_478.unity_SpecCube0_HDR.y;
  u_xlat35 = (x_488 * x_490);
  let x_492 : f32 = u_xlat35;
  u_xlat35 = exp2(x_492);
  let x_494 : f32 = u_xlat35;
  let x_496 : f32 = x_478.unity_SpecCube0_HDR.x;
  u_xlat35 = (x_494 * x_496);
  let x_498 : vec4<f32> = u_xlat8;
  let x_500 : f32 = u_xlat35;
  u_xlat7 = (vec3<f32>(x_498.x, x_498.y, x_498.z) * vec3<f32>(x_500, x_500, x_500));
  let x_503 : f32 = u_xlat37;
  let x_505 : f32 = u_xlat37;
  let x_509 : vec2<f32> = ((vec2<f32>(x_503, x_503) * vec2<f32>(x_505, x_505)) + vec2<f32>(-1.0f, 1.0f));
  let x_510 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_513 : f32 = u_xlat8.y;
  u_xlat35 = (1.0f / x_513);
  let x_516 : vec4<f32> = u_xlat0;
  let x_519 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_516.x, x_516.y, x_516.z)) + vec3<f32>(x_519, x_519, x_519));
  let x_522 : f32 = u_xlat40;
  let x_524 : vec3<f32> = u_xlat19;
  let x_526 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_522, x_522, x_522) * x_524) + vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : f32 = u_xlat35;
  let x_531 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_529, x_529, x_529) * x_531);
  let x_533 : vec3<f32> = u_xlat7;
  let x_534 : vec3<f32> = u_xlat19;
  u_xlat7 = (x_533 * x_534);
  let x_536 : vec3<f32> = u_xlat4;
  let x_537 : vec3<f32> = u_xlat12;
  let x_539 : vec3<f32> = u_xlat7;
  u_xlat4 = ((x_536 * x_537) + x_539);
  let x_542 : f32 = u_xlat6.x;
  let x_545 : f32 = x_478.unity_LightData.z;
  u_xlat35 = (x_542 * x_545);
  let x_547 : vec3<f32> = u_xlat3;
  let x_549 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat36 = dot(x_547, vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_552 : f32 = u_xlat36;
  u_xlat36 = clamp(x_552, 0.0f, 1.0f);
  let x_554 : f32 = u_xlat35;
  let x_555 : f32 = u_xlat36;
  u_xlat35 = (x_554 * x_555);
  let x_557 : f32 = u_xlat35;
  let x_559 : vec3<f32> = u_xlat17;
  u_xlat6 = (vec3<f32>(x_557, x_557, x_557) * x_559);
  let x_561 : vec3<f32> = u_xlat2;
  let x_563 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_561 + vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec3<f32> = u_xlat7;
  let x_567 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(x_566, x_567);
  let x_569 : f32 = u_xlat35;
  u_xlat35 = max(x_569, 1.17549435e-37f);
  let x_572 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_572);
  let x_574 : f32 = u_xlat35;
  let x_576 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_574, x_574, x_574) * x_576);
  let x_578 : vec3<f32> = u_xlat3;
  let x_579 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(x_578, x_579);
  let x_581 : f32 = u_xlat35;
  u_xlat35 = clamp(x_581, 0.0f, 1.0f);
  let x_584 : vec4<f32> = x_44.x_MainLightPosition;
  let x_586 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_584.x, x_584.y, x_584.z), x_586);
  let x_588 : f32 = u_xlat36;
  u_xlat36 = clamp(x_588, 0.0f, 1.0f);
  let x_590 : f32 = u_xlat35;
  let x_591 : f32 = u_xlat35;
  u_xlat35 = (x_590 * x_591);
  let x_593 : f32 = u_xlat35;
  let x_595 : f32 = u_xlat8.x;
  u_xlat35 = ((x_593 * x_595) + 1.000010014f);
  let x_599 : f32 = u_xlat36;
  let x_600 : f32 = u_xlat36;
  u_xlat36 = (x_599 * x_600);
  let x_602 : f32 = u_xlat35;
  let x_603 : f32 = u_xlat35;
  u_xlat35 = (x_602 * x_603);
  let x_605 : f32 = u_xlat36;
  u_xlat36 = max(x_605, 0.100000001f);
  let x_608 : f32 = u_xlat35;
  let x_609 : f32 = u_xlat36;
  u_xlat35 = (x_608 * x_609);
  let x_611 : f32 = u_xlat38;
  let x_612 : f32 = u_xlat35;
  u_xlat35 = (x_611 * x_612);
  let x_614 : f32 = u_xlat16;
  let x_615 : f32 = u_xlat35;
  u_xlat35 = (x_614 / x_615);
  let x_617 : vec4<f32> = u_xlat0;
  let x_619 : f32 = u_xlat35;
  let x_622 : vec3<f32> = u_xlat12;
  u_xlat7 = ((vec3<f32>(x_617.x, x_617.y, x_617.z) * vec3<f32>(x_619, x_619, x_619)) + x_622);
  let x_624 : vec3<f32> = u_xlat6;
  let x_625 : vec3<f32> = u_xlat7;
  u_xlat6 = (x_624 * x_625);
  let x_628 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_630 : f32 = x_478.unity_LightData.y;
  u_xlat35 = min(x_628, x_630);
  let x_634 : f32 = u_xlat35;
  u_xlatu35 = bitcast<u32>(i32(x_634));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_646 : u32 = u_xlatu_loop_1;
    let x_647 : u32 = u_xlatu35;
    if ((x_646 < x_647)) {
    } else {
      break;
    }
    let x_650 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_650 >> 2u);
    let x_654 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_654 & 3u));
    let x_657 : u32 = u_xlatu37;
    let x_660 : vec4<f32> = x_478.unity_LightIndices[bitcast<i32>(x_657)];
    let x_670 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_675 : vec4<u32> = indexable[x_670];
    u_xlat37 = dot(x_660, bitcast<vec4<f32>>(x_675));
    let x_679 : f32 = u_xlat37;
    u_xlati37 = i32(x_679);
    let x_681 : vec3<f32> = vs_TEXCOORD1;
    let x_693 : i32 = u_xlati37;
    let x_695 : vec4<f32> = x_692.x_AdditionalLightsPosition[x_693];
    let x_698 : i32 = u_xlati37;
    let x_700 : vec4<f32> = x_692.x_AdditionalLightsPosition[x_698];
    u_xlat19 = ((-(x_681) * vec3<f32>(x_695.w, x_695.w, x_695.w)) + vec3<f32>(x_700.x, x_700.y, x_700.z));
    let x_704 : vec3<f32> = u_xlat19;
    let x_705 : vec3<f32> = u_xlat19;
    u_xlat39 = dot(x_704, x_705);
    let x_707 : f32 = u_xlat39;
    u_xlat39 = max(x_707, 6.10351562e-05f);
    let x_710 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_710);
    let x_713 : f32 = u_xlat40;
    let x_715 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_713, x_713, x_713) * x_715);
    let x_718 : f32 = u_xlat39;
    u_xlat42 = (1.0f / x_718);
    let x_720 : f32 = u_xlat39;
    let x_721 : i32 = u_xlati37;
    let x_723 : f32 = x_692.x_AdditionalLightsAttenuation[x_721].x;
    u_xlat39 = (x_720 * x_723);
    let x_725 : f32 = u_xlat39;
    let x_727 : f32 = u_xlat39;
    u_xlat39 = ((-(x_725) * x_727) + 1.0f);
    let x_730 : f32 = u_xlat39;
    u_xlat39 = max(x_730, 0.0f);
    let x_732 : f32 = u_xlat39;
    let x_733 : f32 = u_xlat39;
    u_xlat39 = (x_732 * x_733);
    let x_735 : f32 = u_xlat39;
    let x_736 : f32 = u_xlat42;
    u_xlat39 = (x_735 * x_736);
    let x_738 : i32 = u_xlati37;
    let x_740 : vec4<f32> = x_692.x_AdditionalLightsSpotDir[x_738];
    let x_742 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_740.x, x_740.y, x_740.z), x_742);
    let x_744 : f32 = u_xlat42;
    let x_745 : i32 = u_xlati37;
    let x_747 : f32 = x_692.x_AdditionalLightsAttenuation[x_745].z;
    let x_749 : i32 = u_xlati37;
    let x_751 : f32 = x_692.x_AdditionalLightsAttenuation[x_749].w;
    u_xlat42 = ((x_744 * x_747) + x_751);
    let x_753 : f32 = u_xlat42;
    u_xlat42 = clamp(x_753, 0.0f, 1.0f);
    let x_755 : f32 = u_xlat42;
    let x_756 : f32 = u_xlat42;
    u_xlat42 = (x_755 * x_756);
    let x_758 : f32 = u_xlat39;
    let x_759 : f32 = u_xlat42;
    u_xlat39 = (x_758 * x_759);
    let x_762 : f32 = u_xlat27;
    let x_764 : i32 = u_xlati37;
    let x_766 : vec4<f32> = x_692.x_AdditionalLightsColor[x_764];
    u_xlat10 = (vec3<f32>(x_762, x_762, x_762) * vec3<f32>(x_766.x, x_766.y, x_766.z));
    let x_769 : vec3<f32> = u_xlat3;
    let x_770 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(x_769, x_770);
    let x_772 : f32 = u_xlat37;
    u_xlat37 = clamp(x_772, 0.0f, 1.0f);
    let x_774 : f32 = u_xlat37;
    let x_775 : f32 = u_xlat39;
    u_xlat37 = (x_774 * x_775);
    let x_777 : f32 = u_xlat37;
    let x_779 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_777, x_777, x_777) * x_779);
    let x_781 : vec3<f32> = u_xlat19;
    let x_782 : f32 = u_xlat40;
    let x_785 : vec3<f32> = u_xlat2;
    u_xlat19 = ((x_781 * vec3<f32>(x_782, x_782, x_782)) + x_785);
    let x_787 : vec3<f32> = u_xlat19;
    let x_788 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_787, x_788);
    let x_790 : f32 = u_xlat37;
    u_xlat37 = max(x_790, 1.17549435e-37f);
    let x_792 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_792);
    let x_794 : f32 = u_xlat37;
    let x_796 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_794, x_794, x_794) * x_796);
    let x_798 : vec3<f32> = u_xlat3;
    let x_799 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_798, x_799);
    let x_801 : f32 = u_xlat37;
    u_xlat37 = clamp(x_801, 0.0f, 1.0f);
    let x_803 : vec3<f32> = u_xlat9;
    let x_804 : vec3<f32> = u_xlat19;
    u_xlat39 = dot(x_803, x_804);
    let x_806 : f32 = u_xlat39;
    u_xlat39 = clamp(x_806, 0.0f, 1.0f);
    let x_808 : f32 = u_xlat37;
    let x_809 : f32 = u_xlat37;
    u_xlat37 = (x_808 * x_809);
    let x_811 : f32 = u_xlat37;
    let x_813 : f32 = u_xlat8.x;
    u_xlat37 = ((x_811 * x_813) + 1.000010014f);
    let x_816 : f32 = u_xlat39;
    let x_817 : f32 = u_xlat39;
    u_xlat39 = (x_816 * x_817);
    let x_819 : f32 = u_xlat37;
    let x_820 : f32 = u_xlat37;
    u_xlat37 = (x_819 * x_820);
    let x_822 : f32 = u_xlat39;
    u_xlat39 = max(x_822, 0.100000001f);
    let x_824 : f32 = u_xlat37;
    let x_825 : f32 = u_xlat39;
    u_xlat37 = (x_824 * x_825);
    let x_827 : f32 = u_xlat38;
    let x_828 : f32 = u_xlat37;
    u_xlat37 = (x_827 * x_828);
    let x_830 : f32 = u_xlat16;
    let x_831 : f32 = u_xlat37;
    u_xlat37 = (x_830 / x_831);
    let x_833 : vec4<f32> = u_xlat0;
    let x_835 : f32 = u_xlat37;
    let x_838 : vec3<f32> = u_xlat12;
    u_xlat19 = ((vec3<f32>(x_833.x, x_833.y, x_833.z) * vec3<f32>(x_835, x_835, x_835)) + x_838);
    let x_840 : vec3<f32> = u_xlat19;
    let x_841 : vec3<f32> = u_xlat10;
    let x_843 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_840 * x_841) + x_843);

    continuing {
      let x_845 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_845 + bitcast<u32>(1i));
    }
  }
  let x_847 : vec3<f32> = u_xlat4;
  let x_848 : vec3<f32> = u_xlat5;
  let x_851 : vec3<f32> = u_xlat6;
  let x_852 : vec3<f32> = ((x_847 * vec3<f32>(x_848.x, x_848.x, x_848.x)) + x_851);
  let x_853 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec3<f32> = u_xlat7;
  let x_856 : vec4<f32> = u_xlat0;
  let x_858 : vec3<f32> = (x_855 + vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : f32 = u_xlat33;
  let x_862 : f32 = u_xlat33;
  u_xlat33 = (x_861 * -(x_862));
  let x_865 : f32 = u_xlat33;
  u_xlat33 = exp2(x_865);
  let x_867 : vec4<f32> = u_xlat0;
  let x_871 : vec4<f32> = x_44.unity_FogColor;
  let x_874 : vec3<f32> = (vec3<f32>(x_867.x, x_867.y, x_867.z) + -(vec3<f32>(x_871.x, x_871.y, x_871.z)));
  let x_875 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_879 : f32 = u_xlat33;
  let x_881 : vec4<f32> = u_xlat0;
  let x_885 : vec4<f32> = x_44.unity_FogColor;
  let x_887 : vec3<f32> = ((vec3<f32>(x_879, x_879, x_879) * vec3<f32>(x_881.x, x_881.y, x_881.z)) + vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_893 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_893 == 1.0f);
  let x_895 : bool = u_xlatb0;
  if (x_895) {
    let x_900 : f32 = u_xlat1.x;
    x_896 = x_900;
  } else {
    x_896 = 1.0f;
  }
  let x_902 : f32 = x_896;
  SV_Target0.w = x_902;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

