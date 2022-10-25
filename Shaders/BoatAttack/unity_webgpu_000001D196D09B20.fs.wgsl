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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_169 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_363 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_941 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb36 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat38 : f32;
  var u_xlat4 : vec3<f32>;
  var x_114 : f32;
  var x_128 : f32;
  var x_140 : f32;
  var u_xlat36 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var u_xlat13 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlatb17 : bool;
  var u_xlatb29 : bool;
  var x_611 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu39 : u32;
  var u_xlati8 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati39 : i32;
  var u_xlat44 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1160 : f32;
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
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_44.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_EmissionMap, sampler_EmissionMap, x_71, x_73);
  u_xlat2 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_81 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb36 = (x_81 == 0.0f);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_92 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_93 : vec3<f32> = (-(x_87) + x_92);
  let x_94 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_98 : vec4<f32> = u_xlat3;
  let x_100 : vec4<f32> = u_xlat3;
  u_xlat38 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_103);
  let x_105 : f32 = u_xlat38;
  let x_107 : vec4<f32> = u_xlat3;
  let x_109 : vec3<f32> = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_110 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_113 : bool = u_xlatb36;
  if (x_113) {
    let x_118 : f32 = u_xlat3.x;
    x_114 = x_118;
  } else {
    let x_124 : f32 = x_44.unity_MatrixV[0i].z;
    x_114 = x_124;
  }
  let x_125 : f32 = x_114;
  u_xlat4.x = x_125;
  let x_127 : bool = u_xlatb36;
  if (x_127) {
    let x_133 : f32 = u_xlat3.y;
    x_128 = x_133;
  } else {
    let x_136 : f32 = x_44.unity_MatrixV[1i].z;
    x_128 = x_136;
  }
  let x_137 : f32 = x_128;
  u_xlat4.y = x_137;
  let x_139 : bool = u_xlatb36;
  if (x_139) {
    let x_144 : f32 = u_xlat3.z;
    x_140 = x_144;
  } else {
    let x_147 : f32 = x_44.unity_MatrixV[2i].z;
    x_140 = x_147;
  }
  let x_148 : f32 = x_140;
  u_xlat4.z = x_148;
  let x_152 : vec3<f32> = vs_TEXCOORD2;
  let x_153 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_152, x_153);
  let x_155 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_155);
  let x_157 : f32 = u_xlat36;
  let x_159 : vec3<f32> = vs_TEXCOORD2;
  let x_160 : vec3<f32> = (vec3<f32>(x_157, x_157, x_157) * x_159);
  let x_161 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec3<f32> = vs_TEXCOORD1;
  let x_171 : vec4<f32> = x_169.x_CascadeShadowSplitSpheres0;
  let x_174 : vec3<f32> = (x_164 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD1;
  let x_180 : vec4<f32> = x_169.x_CascadeShadowSplitSpheres1;
  let x_183 : vec3<f32> = (x_178 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_184 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : vec3<f32> = vs_TEXCOORD1;
  let x_190 : vec4<f32> = x_169.x_CascadeShadowSplitSpheres2;
  let x_193 : vec3<f32> = (x_187 + -(vec3<f32>(x_190.x, x_190.y, x_190.z)));
  let x_194 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_197 : vec3<f32> = vs_TEXCOORD1;
  let x_200 : vec4<f32> = x_169.x_CascadeShadowSplitSpheres3;
  let x_203 : vec3<f32> = (x_197 + -(vec3<f32>(x_200.x, x_200.y, x_200.z)));
  let x_204 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat5;
  let x_208 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_206.x, x_206.y, x_206.z), vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_212 : vec4<f32> = u_xlat6;
  let x_214 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_212.x, x_212.y, x_212.z), vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_218 : vec4<f32> = u_xlat7;
  let x_220 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_218.x, x_218.y, x_218.z), vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_224 : vec4<f32> = u_xlat8;
  let x_226 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_224.x, x_224.y, x_224.z), vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_233 : vec4<f32> = u_xlat5;
  let x_236 : vec4<f32> = x_169.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_233 < x_236);
  let x_239 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_239);
  let x_243 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_243);
  let x_247 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_247);
  let x_251 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_251);
  let x_255 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_255);
  let x_261 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_261);
  let x_265 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_265);
  let x_268 : vec4<f32> = u_xlat5;
  let x_270 : vec4<f32> = u_xlat6;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) + vec3<f32>(x_270.y, x_270.z, x_270.w));
  let x_273 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : vec4<f32> = u_xlat5;
  let x_278 : vec3<f32> = max(vec3<f32>(x_275.x, x_275.y, x_275.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_279 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_279.x, x_278.x, x_278.y, x_278.z);
  let x_281 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_281, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_287 : f32 = u_xlat36;
  u_xlat36 = (-(x_287) + 4.0f);
  let x_292 : f32 = u_xlat36;
  u_xlatu36 = u32(x_292);
  let x_296 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_296) << bitcast<u32>(2i));
  let x_299 : vec3<f32> = vs_TEXCOORD1;
  let x_301 : i32 = u_xlati36;
  let x_304 : i32 = u_xlati36;
  let x_308 : vec4<f32> = x_169.x_MainLightWorldToShadow[((x_301 + 1i) / 4i)][((x_304 + 1i) % 4i)];
  let x_310 : vec3<f32> = (vec3<f32>(x_299.y, x_299.y, x_299.y) * vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : i32 = u_xlati36;
  let x_315 : i32 = u_xlati36;
  let x_318 : vec4<f32> = x_169.x_MainLightWorldToShadow[(x_313 / 4i)][(x_315 % 4i)];
  let x_320 : vec3<f32> = vs_TEXCOORD1;
  let x_323 : vec4<f32> = u_xlat5;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.x, x_320.x, x_320.x)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : i32 = u_xlati36;
  let x_331 : i32 = u_xlati36;
  let x_335 : vec4<f32> = x_169.x_MainLightWorldToShadow[((x_328 + 2i) / 4i)][((x_331 + 2i) % 4i)];
  let x_337 : vec3<f32> = vs_TEXCOORD1;
  let x_340 : vec4<f32> = u_xlat5;
  let x_342 : vec3<f32> = ((vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_337.z, x_337.z, x_337.z)) + vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat5;
  let x_347 : i32 = u_xlati36;
  let x_350 : i32 = u_xlati36;
  let x_354 : vec4<f32> = x_169.x_MainLightWorldToShadow[((x_347 + 3i) / 4i)][((x_350 + 3i) % 4i)];
  let x_356 : vec3<f32> = (vec3<f32>(x_345.x, x_345.y, x_345.z) + vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  u_xlat3.w = 1.0f;
  let x_366 : vec4<f32> = x_363.unity_SHAr;
  let x_367 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_366, x_367);
  let x_372 : vec4<f32> = x_363.unity_SHAg;
  let x_373 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_372, x_373);
  let x_378 : vec4<f32> = x_363.unity_SHAb;
  let x_379 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_378, x_379);
  let x_382 : vec4<f32> = u_xlat3;
  let x_384 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_382.y, x_382.z, x_382.z, x_382.x) * vec4<f32>(x_384.x, x_384.y, x_384.z, x_384.z));
  let x_389 : vec4<f32> = x_363.unity_SHBr;
  let x_390 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_389, x_390);
  let x_395 : vec4<f32> = x_363.unity_SHBg;
  let x_396 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_395, x_396);
  let x_401 : vec4<f32> = x_363.unity_SHBb;
  let x_402 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_401, x_402);
  let x_406 : f32 = u_xlat3.y;
  let x_408 : f32 = u_xlat3.y;
  u_xlat36 = (x_406 * x_408);
  let x_411 : f32 = u_xlat3.x;
  let x_413 : f32 = u_xlat3.x;
  let x_415 : f32 = u_xlat36;
  u_xlat36 = ((x_411 * x_413) + -(x_415));
  let x_420 : vec4<f32> = x_363.unity_SHC;
  let x_422 : f32 = u_xlat36;
  let x_425 : vec4<f32> = u_xlat8;
  let x_427 : vec3<f32> = ((vec3<f32>(x_420.x, x_420.y, x_420.z) * vec3<f32>(x_422, x_422, x_422)) + vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat6;
  let x_432 : vec4<f32> = u_xlat7;
  let x_434 : vec3<f32> = (vec3<f32>(x_430.x, x_430.y, x_430.z) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat6;
  let x_439 : vec3<f32> = max(vec3<f32>(x_437.x, x_437.y, x_437.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_440 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_444 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_445 : vec2<f32> = vec2<f32>(x_444.x, x_444.y);
  let x_449 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_445.x, x_445.y));
  let x_450 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat7;
  let x_454 : vec4<f32> = hlslcc_FragCoord;
  let x_456 : vec2<f32> = (vec2<f32>(x_452.x, x_452.y) * vec2<f32>(x_454.x, x_454.y));
  let x_457 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
  let x_460 : f32 = u_xlat7.y;
  let x_463 : f32 = x_44.x_ScaleBiasRt.x;
  let x_466 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat36 = ((x_460 * x_463) + x_466);
  let x_468 : f32 = u_xlat36;
  u_xlat7.z = (-(x_468) + 1.0f);
  let x_473 : f32 = x_57.x_Metallic;
  u_xlat36 = ((-(x_473) * 0.959999979f) + 0.959999979f);
  let x_478 : f32 = u_xlat36;
  u_xlat38 = (-(x_478) + 1.0f);
  let x_482 : f32 = u_xlat36;
  let x_484 : vec4<f32> = u_xlat1;
  u_xlat13 = (vec3<f32>(x_482, x_482, x_482) * vec3<f32>(x_484.y, x_484.z, x_484.w));
  let x_487 : vec4<f32> = u_xlat0;
  let x_490 : vec4<f32> = x_57.x_BaseColor;
  let x_495 : vec3<f32> = ((vec3<f32>(x_487.x, x_487.y, x_487.z) * vec3<f32>(x_490.x, x_490.y, x_490.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_496 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_499 : f32 = x_57.x_Metallic;
  let x_501 : f32 = x_57.x_Metallic;
  let x_503 : f32 = x_57.x_Metallic;
  let x_504 : vec3<f32> = vec3<f32>(x_499, x_501, x_503);
  let x_509 : vec4<f32> = u_xlat0;
  let x_514 : vec3<f32> = ((vec3<f32>(x_504.x, x_504.y, x_504.z) * vec3<f32>(x_509.x, x_509.y, x_509.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_515 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_518 : f32 = x_57.x_Smoothness;
  u_xlat36 = (-(x_518) + 1.0f);
  let x_522 : f32 = u_xlat36;
  let x_523 : f32 = u_xlat36;
  u_xlat39 = (x_522 * x_523);
  let x_525 : f32 = u_xlat39;
  u_xlat39 = max(x_525, 0.0078125f);
  let x_529 : f32 = u_xlat39;
  let x_530 : f32 = u_xlat39;
  u_xlat40 = (x_529 * x_530);
  let x_532 : f32 = u_xlat38;
  let x_534 : f32 = x_57.x_Smoothness;
  u_xlat38 = (x_532 + x_534);
  let x_536 : f32 = u_xlat38;
  u_xlat38 = clamp(x_536, 0.0f, 1.0f);
  let x_539 : f32 = u_xlat39;
  u_xlat41 = ((x_539 * 4.0f) + 2.0f);
  let x_548 : vec4<f32> = u_xlat7;
  let x_551 : f32 = x_44.x_GlobalMipBias.x;
  let x_552 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_548.x, x_548.z), x_551);
  u_xlat42 = x_552.x;
  let x_554 : f32 = u_xlat42;
  u_xlat7.x = (x_554 + -1.0f);
  let x_558 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_560 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_558 * x_560) + 1.0f);
  let x_564 : f32 = u_xlat42;
  u_xlat42 = min(x_564, 1.0f);
  let x_567 : vec4<f32> = u_xlat5;
  let x_568 : vec2<f32> = vec2<f32>(x_567.x, x_567.y);
  let x_570 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_568.x, x_568.y, x_570);
  let x_582 : vec3<f32> = txVec0;
  let x_584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_582.xy, x_582.z);
  u_xlat5.x = x_584;
  let x_588 : f32 = x_169.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_588) + 1.0f);
  let x_592 : f32 = u_xlat5.x;
  let x_594 : f32 = x_169.x_MainLightShadowParams.x;
  let x_596 : f32 = u_xlat17;
  u_xlat5.x = ((x_592 * x_594) + x_596);
  let x_601 : f32 = u_xlat5.z;
  u_xlatb17 = (0.0f >= x_601);
  let x_605 : f32 = u_xlat5.z;
  u_xlatb29 = (x_605 >= 1.0f);
  let x_607 : bool = u_xlatb29;
  let x_608 : bool = u_xlatb17;
  u_xlatb17 = (x_607 | x_608);
  let x_610 : bool = u_xlatb17;
  if (x_610) {
    x_611 = 1.0f;
  } else {
    let x_616 : f32 = u_xlat5.x;
    x_611 = x_616;
  }
  let x_617 : f32 = x_611;
  u_xlat5.x = x_617;
  let x_620 : vec3<f32> = vs_TEXCOORD1;
  let x_622 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat19 = (x_620 + -(x_622));
  let x_625 : vec3<f32> = u_xlat19;
  let x_626 : vec3<f32> = u_xlat19;
  u_xlat17 = dot(x_625, x_626);
  let x_628 : f32 = u_xlat17;
  let x_630 : f32 = x_169.x_MainLightShadowParams.z;
  let x_633 : f32 = x_169.x_MainLightShadowParams.w;
  u_xlat17 = ((x_628 * x_630) + x_633);
  let x_635 : f32 = u_xlat17;
  u_xlat17 = clamp(x_635, 0.0f, 1.0f);
  let x_639 : f32 = u_xlat5.x;
  u_xlat29 = (-(x_639) + 1.0f);
  let x_642 : f32 = u_xlat17;
  let x_643 : f32 = u_xlat29;
  let x_646 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_642 * x_643) + x_646);
  let x_649 : vec4<f32> = u_xlat7;
  let x_652 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat19 = (vec3<f32>(x_649.x, x_649.x, x_649.x) * vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec3<f32> = u_xlat4;
  let x_657 : vec4<f32> = u_xlat3;
  u_xlat17 = dot(-(x_655), vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : f32 = u_xlat17;
  let x_661 : f32 = u_xlat17;
  u_xlat17 = (x_660 + x_661);
  let x_663 : vec4<f32> = u_xlat3;
  let x_665 : f32 = u_xlat17;
  let x_669 : vec3<f32> = u_xlat4;
  let x_671 : vec3<f32> = ((vec3<f32>(x_663.x, x_663.y, x_663.z) * -(vec3<f32>(x_665, x_665, x_665))) + -(x_669));
  let x_672 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : vec4<f32> = u_xlat3;
  let x_676 : vec3<f32> = u_xlat4;
  u_xlat17 = dot(vec3<f32>(x_674.x, x_674.y, x_674.z), x_676);
  let x_678 : f32 = u_xlat17;
  u_xlat17 = clamp(x_678, 0.0f, 1.0f);
  let x_680 : f32 = u_xlat17;
  u_xlat17 = (-(x_680) + 1.0f);
  let x_683 : f32 = u_xlat17;
  let x_684 : f32 = u_xlat17;
  u_xlat17 = (x_683 * x_684);
  let x_686 : f32 = u_xlat17;
  let x_687 : f32 = u_xlat17;
  u_xlat17 = (x_686 * x_687);
  let x_689 : f32 = u_xlat36;
  u_xlat29 = ((-(x_689) * 0.699999988f) + 1.700000048f);
  let x_695 : f32 = u_xlat36;
  let x_696 : f32 = u_xlat29;
  u_xlat36 = (x_695 * x_696);
  let x_698 : f32 = u_xlat36;
  u_xlat36 = (x_698 * 6.0f);
  let x_709 : vec4<f32> = u_xlat8;
  let x_711 : f32 = u_xlat36;
  let x_712 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_709.x, x_709.y, x_709.z), x_711);
  u_xlat8 = x_712;
  let x_714 : f32 = u_xlat8.w;
  u_xlat36 = (x_714 + -1.0f);
  let x_717 : f32 = x_363.unity_SpecCube0_HDR.w;
  let x_718 : f32 = u_xlat36;
  u_xlat36 = ((x_717 * x_718) + 1.0f);
  let x_721 : f32 = u_xlat36;
  u_xlat36 = max(x_721, 0.0f);
  let x_723 : f32 = u_xlat36;
  u_xlat36 = log2(x_723);
  let x_725 : f32 = u_xlat36;
  let x_727 : f32 = x_363.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_725 * x_727);
  let x_729 : f32 = u_xlat36;
  u_xlat36 = exp2(x_729);
  let x_731 : f32 = u_xlat36;
  let x_733 : f32 = x_363.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_731 * x_733);
  let x_735 : vec4<f32> = u_xlat8;
  let x_737 : f32 = u_xlat36;
  let x_739 : vec3<f32> = (vec3<f32>(x_735.x, x_735.y, x_735.z) * vec3<f32>(x_737, x_737, x_737));
  let x_740 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_744 : f32 = u_xlat39;
  let x_746 : f32 = u_xlat39;
  u_xlat9 = ((vec2<f32>(x_744, x_744) * vec2<f32>(x_746, x_746)) + vec2<f32>(-1.0f, 1.0f));
  let x_752 : f32 = u_xlat9.y;
  u_xlat36 = (1.0f / x_752);
  let x_755 : vec4<f32> = u_xlat0;
  let x_758 : f32 = u_xlat38;
  u_xlat21 = (-(vec3<f32>(x_755.x, x_755.y, x_755.z)) + vec3<f32>(x_758, x_758, x_758));
  let x_761 : f32 = u_xlat17;
  let x_763 : vec3<f32> = u_xlat21;
  let x_765 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_761, x_761, x_761) * x_763) + vec3<f32>(x_765.x, x_765.y, x_765.z));
  let x_768 : f32 = u_xlat36;
  let x_770 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_768, x_768, x_768) * x_770);
  let x_772 : vec4<f32> = u_xlat8;
  let x_774 : vec3<f32> = u_xlat21;
  let x_775 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) * x_774);
  let x_776 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat6;
  let x_780 : vec3<f32> = u_xlat13;
  let x_782 : vec4<f32> = u_xlat8;
  let x_784 : vec3<f32> = ((vec3<f32>(x_778.x, x_778.y, x_778.z) * x_780) + vec3<f32>(x_782.x, x_782.y, x_782.z));
  let x_785 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_788 : f32 = u_xlat5.x;
  let x_790 : f32 = x_363.unity_LightData.z;
  u_xlat36 = (x_788 * x_790);
  let x_792 : vec4<f32> = u_xlat3;
  let x_795 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_792.x, x_792.y, x_792.z), vec3<f32>(x_795.x, x_795.y, x_795.z));
  let x_798 : f32 = u_xlat38;
  u_xlat38 = clamp(x_798, 0.0f, 1.0f);
  let x_800 : f32 = u_xlat36;
  let x_801 : f32 = u_xlat38;
  u_xlat36 = (x_800 * x_801);
  let x_803 : f32 = u_xlat36;
  let x_805 : vec3<f32> = u_xlat19;
  let x_806 : vec3<f32> = (vec3<f32>(x_803, x_803, x_803) * x_805);
  let x_807 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec3<f32> = u_xlat4;
  let x_811 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat19 = (x_809 + vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : vec3<f32> = u_xlat19;
  let x_815 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_814, x_815);
  let x_817 : f32 = u_xlat36;
  u_xlat36 = max(x_817, 1.17549435e-37f);
  let x_820 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_820);
  let x_822 : f32 = u_xlat36;
  let x_824 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_822, x_822, x_822) * x_824);
  let x_826 : vec4<f32> = u_xlat3;
  let x_828 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(vec3<f32>(x_826.x, x_826.y, x_826.z), x_828);
  let x_830 : f32 = u_xlat36;
  u_xlat36 = clamp(x_830, 0.0f, 1.0f);
  let x_833 : vec4<f32> = x_44.x_MainLightPosition;
  let x_835 : vec3<f32> = u_xlat19;
  u_xlat38 = dot(vec3<f32>(x_833.x, x_833.y, x_833.z), x_835);
  let x_837 : f32 = u_xlat38;
  u_xlat38 = clamp(x_837, 0.0f, 1.0f);
  let x_839 : f32 = u_xlat36;
  let x_840 : f32 = u_xlat36;
  u_xlat36 = (x_839 * x_840);
  let x_842 : f32 = u_xlat36;
  let x_844 : f32 = u_xlat9.x;
  u_xlat36 = ((x_842 * x_844) + 1.000010014f);
  let x_848 : f32 = u_xlat38;
  let x_849 : f32 = u_xlat38;
  u_xlat38 = (x_848 * x_849);
  let x_851 : f32 = u_xlat36;
  let x_852 : f32 = u_xlat36;
  u_xlat36 = (x_851 * x_852);
  let x_854 : f32 = u_xlat38;
  u_xlat38 = max(x_854, 0.100000001f);
  let x_857 : f32 = u_xlat36;
  let x_858 : f32 = u_xlat38;
  u_xlat36 = (x_857 * x_858);
  let x_860 : f32 = u_xlat41;
  let x_861 : f32 = u_xlat36;
  u_xlat36 = (x_860 * x_861);
  let x_863 : f32 = u_xlat40;
  let x_864 : f32 = u_xlat36;
  u_xlat36 = (x_863 / x_864);
  let x_866 : vec4<f32> = u_xlat0;
  let x_868 : f32 = u_xlat36;
  let x_871 : vec3<f32> = u_xlat13;
  u_xlat19 = ((vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(x_868, x_868, x_868)) + x_871);
  let x_873 : vec4<f32> = u_xlat5;
  let x_875 : vec3<f32> = u_xlat19;
  let x_876 : vec3<f32> = (vec3<f32>(x_873.x, x_873.y, x_873.z) * x_875);
  let x_877 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_880 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_882 : f32 = x_363.unity_LightData.y;
  u_xlat36 = min(x_880, x_882);
  let x_884 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_884));
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_896 : u32 = u_xlatu_loop_1;
    let x_897 : u32 = u_xlatu36;
    if ((x_896 < x_897)) {
    } else {
      break;
    }
    let x_900 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_900 >> 2u);
    let x_903 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_903 & 3u));
    let x_906 : u32 = u_xlatu39;
    let x_909 : vec4<f32> = x_363.unity_LightIndices[bitcast<i32>(x_906)];
    let x_919 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_924 : vec4<u32> = indexable[x_919];
    u_xlat39 = dot(x_909, bitcast<vec4<f32>>(x_924));
    let x_928 : f32 = u_xlat39;
    u_xlati39 = i32(x_928);
    let x_930 : vec3<f32> = vs_TEXCOORD1;
    let x_942 : i32 = u_xlati39;
    let x_944 : vec4<f32> = x_941.x_AdditionalLightsPosition[x_942];
    let x_947 : i32 = u_xlati39;
    let x_949 : vec4<f32> = x_941.x_AdditionalLightsPosition[x_947];
    let x_951 : vec3<f32> = ((-(x_930) * vec3<f32>(x_944.w, x_944.w, x_944.w)) + vec3<f32>(x_949.x, x_949.y, x_949.z));
    let x_952 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
    let x_955 : vec4<f32> = u_xlat8;
    let x_957 : vec4<f32> = u_xlat8;
    u_xlat44 = dot(vec3<f32>(x_955.x, x_955.y, x_955.z), vec3<f32>(x_957.x, x_957.y, x_957.z));
    let x_960 : f32 = u_xlat44;
    u_xlat44 = max(x_960, 6.10351562e-05f);
    let x_963 : f32 = u_xlat44;
    u_xlat21.x = inverseSqrt(x_963);
    let x_967 : vec4<f32> = u_xlat8;
    let x_969 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_967.x, x_967.y, x_967.z) * vec3<f32>(x_969.x, x_969.x, x_969.x));
    let x_973 : f32 = u_xlat44;
    u_xlat33 = (1.0f / x_973);
    let x_975 : f32 = u_xlat44;
    let x_976 : i32 = u_xlati39;
    let x_978 : f32 = x_941.x_AdditionalLightsAttenuation[x_976].x;
    u_xlat44 = (x_975 * x_978);
    let x_980 : f32 = u_xlat44;
    let x_982 : f32 = u_xlat44;
    u_xlat44 = ((-(x_980) * x_982) + 1.0f);
    let x_985 : f32 = u_xlat44;
    u_xlat44 = max(x_985, 0.0f);
    let x_987 : f32 = u_xlat44;
    let x_988 : f32 = u_xlat44;
    u_xlat44 = (x_987 * x_988);
    let x_990 : f32 = u_xlat44;
    let x_991 : f32 = u_xlat33;
    u_xlat44 = (x_990 * x_991);
    let x_993 : i32 = u_xlati39;
    let x_995 : vec4<f32> = x_941.x_AdditionalLightsSpotDir[x_993];
    let x_997 : vec3<f32> = u_xlat10;
    u_xlat33 = dot(vec3<f32>(x_995.x, x_995.y, x_995.z), x_997);
    let x_999 : f32 = u_xlat33;
    let x_1000 : i32 = u_xlati39;
    let x_1002 : f32 = x_941.x_AdditionalLightsAttenuation[x_1000].z;
    let x_1004 : i32 = u_xlati39;
    let x_1006 : f32 = x_941.x_AdditionalLightsAttenuation[x_1004].w;
    u_xlat33 = ((x_999 * x_1002) + x_1006);
    let x_1008 : f32 = u_xlat33;
    u_xlat33 = clamp(x_1008, 0.0f, 1.0f);
    let x_1010 : f32 = u_xlat33;
    let x_1011 : f32 = u_xlat33;
    u_xlat33 = (x_1010 * x_1011);
    let x_1013 : f32 = u_xlat44;
    let x_1014 : f32 = u_xlat33;
    u_xlat44 = (x_1013 * x_1014);
    let x_1017 : vec4<f32> = u_xlat7;
    let x_1019 : i32 = u_xlati39;
    let x_1021 : vec4<f32> = x_941.x_AdditionalLightsColor[x_1019];
    u_xlat11 = (vec3<f32>(x_1017.x, x_1017.x, x_1017.x) * vec3<f32>(x_1021.x, x_1021.y, x_1021.z));
    let x_1024 : vec4<f32> = u_xlat3;
    let x_1026 : vec3<f32> = u_xlat10;
    u_xlat39 = dot(vec3<f32>(x_1024.x, x_1024.y, x_1024.z), x_1026);
    let x_1028 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1028, 0.0f, 1.0f);
    let x_1030 : f32 = u_xlat39;
    let x_1031 : f32 = u_xlat44;
    u_xlat39 = (x_1030 * x_1031);
    let x_1033 : f32 = u_xlat39;
    let x_1035 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1033, x_1033, x_1033) * x_1035);
    let x_1037 : vec4<f32> = u_xlat8;
    let x_1039 : vec3<f32> = u_xlat21;
    let x_1042 : vec3<f32> = u_xlat4;
    let x_1043 : vec3<f32> = ((vec3<f32>(x_1037.x, x_1037.y, x_1037.z) * vec3<f32>(x_1039.x, x_1039.x, x_1039.x)) + x_1042);
    let x_1044 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
    let x_1046 : vec4<f32> = u_xlat8;
    let x_1048 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1046.x, x_1046.y, x_1046.z), vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
    let x_1051 : f32 = u_xlat39;
    u_xlat39 = max(x_1051, 1.17549435e-37f);
    let x_1053 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1053);
    let x_1055 : f32 = u_xlat39;
    let x_1057 : vec4<f32> = u_xlat8;
    let x_1059 : vec3<f32> = (vec3<f32>(x_1055, x_1055, x_1055) * vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
    let x_1060 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
    let x_1062 : vec4<f32> = u_xlat3;
    let x_1064 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1062.x, x_1062.y, x_1062.z), vec3<f32>(x_1064.x, x_1064.y, x_1064.z));
    let x_1067 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1067, 0.0f, 1.0f);
    let x_1069 : vec3<f32> = u_xlat10;
    let x_1070 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1069, vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
    let x_1075 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1075, 0.0f, 1.0f);
    let x_1078 : f32 = u_xlat39;
    let x_1079 : f32 = u_xlat39;
    u_xlat39 = (x_1078 * x_1079);
    let x_1081 : f32 = u_xlat39;
    let x_1083 : f32 = u_xlat9.x;
    u_xlat39 = ((x_1081 * x_1083) + 1.000010014f);
    let x_1087 : f32 = u_xlat8.x;
    let x_1089 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1087 * x_1089);
    let x_1092 : f32 = u_xlat39;
    let x_1093 : f32 = u_xlat39;
    u_xlat39 = (x_1092 * x_1093);
    let x_1096 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1096, 0.100000001f);
    let x_1099 : f32 = u_xlat39;
    let x_1101 : f32 = u_xlat8.x;
    u_xlat39 = (x_1099 * x_1101);
    let x_1103 : f32 = u_xlat41;
    let x_1104 : f32 = u_xlat39;
    u_xlat39 = (x_1103 * x_1104);
    let x_1106 : f32 = u_xlat40;
    let x_1107 : f32 = u_xlat39;
    u_xlat39 = (x_1106 / x_1107);
    let x_1109 : vec4<f32> = u_xlat0;
    let x_1111 : f32 = u_xlat39;
    let x_1114 : vec3<f32> = u_xlat13;
    let x_1115 : vec3<f32> = ((vec3<f32>(x_1109.x, x_1109.y, x_1109.z) * vec3<f32>(x_1111, x_1111, x_1111)) + x_1114);
    let x_1116 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
    let x_1118 : vec4<f32> = u_xlat8;
    let x_1120 : vec3<f32> = u_xlat11;
    let x_1122 : vec3<f32> = u_xlat19;
    u_xlat19 = ((vec3<f32>(x_1118.x, x_1118.y, x_1118.z) * x_1120) + x_1122);

    continuing {
      let x_1124 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1124 + bitcast<u32>(1i));
    }
  }
  let x_1126 : vec4<f32> = u_xlat6;
  let x_1128 : f32 = u_xlat42;
  let x_1131 : vec4<f32> = u_xlat5;
  let x_1133 : vec3<f32> = ((vec3<f32>(x_1126.x, x_1126.y, x_1126.z) * vec3<f32>(x_1128, x_1128, x_1128)) + vec3<f32>(x_1131.x, x_1131.y, x_1131.z));
  let x_1134 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
  let x_1136 : vec3<f32> = u_xlat19;
  let x_1137 : vec4<f32> = u_xlat0;
  let x_1139 : vec3<f32> = (x_1136 + vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
  let x_1140 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
  let x_1144 : vec3<f32> = u_xlat2;
  let x_1146 : vec4<f32> = x_57.x_EmissionColor;
  let x_1149 : vec4<f32> = u_xlat0;
  let x_1151 : vec3<f32> = ((x_1144 * vec3<f32>(x_1146.x, x_1146.y, x_1146.z)) + vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
  let x_1152 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  let x_1157 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1157 == 1.0f);
  let x_1159 : bool = u_xlatb0;
  if (x_1159) {
    let x_1164 : f32 = u_xlat1.x;
    x_1160 = x_1164;
  } else {
    x_1160 = 1.0f;
  }
  let x_1166 : f32 = x_1160;
  SV_Target0.w = x_1166;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

