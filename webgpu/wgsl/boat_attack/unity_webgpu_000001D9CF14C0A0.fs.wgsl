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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb36 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat17 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat41 : f32;

@group(1) @binding(4) var<uniform> x_311 : LightShadows;

var<private> u_xlatb41 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat42 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_447 : UnityPerDraw;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatu29 : u32;

var<private> u_xlati41 : i32;

var<private> u_xlati29 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_677 : AdditionalLights;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlati44 : i32;

var<private> u_xlatb45 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat45 : f32;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb46 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlatu40 : u32;

fn main_1() {
  var x_96 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_338 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_810 : f32;
  var x_820 : f32;
  var txVec1 : vec3<f32>;
  var x_1096 : f32;
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
  let x_62 : vec3<f32> = vs_TEXCOORD1;
  let x_67 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_62) + x_67);
  let x_71 : vec3<f32> = u_xlat2;
  let x_72 : vec3<f32> = u_xlat2;
  u_xlat38 = dot(x_71, x_72);
  let x_74 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_74);
  let x_76 : f32 = u_xlat38;
  let x_78 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_76, x_76, x_76) * x_78);
  let x_84 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat3.x = x_84;
  let x_88 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat3.y = x_88;
  let x_92 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat3.z = x_92;
  let x_94 : bool = u_xlatb36;
  if (x_94) {
    let x_99 : vec3<f32> = u_xlat2;
    x_96 = x_99;
  } else {
    let x_101 : vec3<f32> = u_xlat3;
    x_96 = x_101;
  }
  let x_102 : vec3<f32> = x_96;
  u_xlat2 = x_102;
  let x_105 : vec3<f32> = vs_TEXCOORD2;
  let x_106 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_105, x_106);
  let x_108 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_108);
  let x_110 : f32 = u_xlat36;
  let x_112 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_110, x_110, x_110) * x_112);
  let x_116 : f32 = vs_TEXCOORD1.y;
  let x_118 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat36 = (x_116 * x_118);
  let x_121 : f32 = x_28.unity_MatrixV[0i].z;
  let x_123 : f32 = vs_TEXCOORD1.x;
  let x_125 : f32 = u_xlat36;
  u_xlat36 = ((x_121 * x_123) + x_125);
  let x_128 : f32 = x_28.unity_MatrixV[2i].z;
  let x_130 : f32 = vs_TEXCOORD1.z;
  let x_132 : f32 = u_xlat36;
  u_xlat36 = ((x_128 * x_130) + x_132);
  let x_134 : f32 = u_xlat36;
  let x_137 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat36 = (x_134 + x_137);
  let x_139 : f32 = u_xlat36;
  let x_143 : f32 = x_28.x_ProjectionParams.y;
  u_xlat36 = (-(x_139) + -(x_143));
  let x_146 : f32 = u_xlat36;
  u_xlat36 = max(x_146, 0.0f);
  let x_148 : f32 = u_xlat36;
  let x_151 : f32 = x_28.unity_FogParams.x;
  u_xlat36 = (x_148 * x_151);
  let x_160 : vec2<f32> = vs_TEXCOORD8;
  let x_162 : f32 = x_28.x_GlobalMipBias.x;
  let x_163 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_160, x_162);
  u_xlat4 = x_163;
  let x_169 : vec2<f32> = vs_TEXCOORD8;
  let x_171 : f32 = x_28.x_GlobalMipBias.x;
  let x_172 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_169, x_171);
  u_xlat5 = vec3<f32>(x_172.x, x_172.y, x_172.z);
  let x_174 : vec4<f32> = u_xlat4;
  let x_178 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_179 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_181 : vec3<f32> = u_xlat3;
  let x_182 : vec4<f32> = u_xlat4;
  u_xlat38 = dot(x_181, vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : f32 = u_xlat38;
  u_xlat38 = (x_185 + 0.5f);
  let x_188 : f32 = u_xlat38;
  let x_190 : vec3<f32> = u_xlat5;
  let x_191 : vec3<f32> = (vec3<f32>(x_188, x_188, x_188) * x_190);
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : f32 = u_xlat4.w;
  u_xlat38 = max(x_195, 0.00009999999747378752f);
  let x_198 : vec4<f32> = u_xlat4;
  let x_200 : f32 = u_xlat38;
  let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.y, x_198.z) / vec3<f32>(x_200, x_200, x_200));
  let x_203 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_206 : f32 = x_42.x_Metallic;
  u_xlat38 = ((-(x_206) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_212 : f32 = u_xlat38;
  let x_215 : f32 = x_42.x_Smoothness;
  u_xlat39 = (-(x_212) + x_215);
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : f32 = u_xlat38;
  u_xlat13 = (vec3<f32>(x_218.y, x_218.z, x_218.w) * vec3<f32>(x_220, x_220, x_220));
  let x_223 : vec4<f32> = u_xlat0;
  let x_226 : vec4<f32> = x_42.x_BaseColor;
  let x_231 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_226.x, x_226.y, x_226.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_232 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : f32 = x_42.x_Metallic;
  let x_237 : f32 = x_42.x_Metallic;
  let x_239 : f32 = x_42.x_Metallic;
  let x_240 : vec3<f32> = vec3<f32>(x_235, x_237, x_239);
  let x_245 : vec4<f32> = u_xlat0;
  let x_250 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(x_245.x, x_245.y, x_245.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_251 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_254 : f32 = x_42.x_Smoothness;
  u_xlat38 = (-(x_254) + 1.0f);
  let x_259 : f32 = u_xlat38;
  let x_260 : f32 = u_xlat38;
  u_xlat40 = (x_259 * x_260);
  let x_262 : f32 = u_xlat40;
  u_xlat40 = max(x_262, 0.0078125f);
  let x_265 : f32 = u_xlat40;
  let x_266 : f32 = u_xlat40;
  u_xlat5.x = (x_265 * x_266);
  let x_269 : f32 = u_xlat39;
  u_xlat39 = (x_269 + 1.0f);
  let x_271 : f32 = u_xlat39;
  u_xlat39 = clamp(x_271, 0.0f, 1.0f);
  let x_274 : f32 = u_xlat40;
  u_xlat17 = ((x_274 * 4.0f) + 2.0f);
  let x_282 : vec4<f32> = vs_TEXCOORD6;
  let x_283 : vec2<f32> = vec2<f32>(x_282.x, x_282.y);
  let x_285 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_283.x, x_283.y, x_285);
  let x_299 : vec3<f32> = txVec0;
  let x_301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_299.xy, x_299.z);
  u_xlat29.x = x_301;
  let x_314 : f32 = x_311.x_MainLightShadowParams.x;
  u_xlat41 = (-(x_314) + 1.0f);
  let x_318 : f32 = u_xlat29.x;
  let x_320 : f32 = x_311.x_MainLightShadowParams.x;
  let x_322 : f32 = u_xlat41;
  u_xlat29.x = ((x_318 * x_320) + x_322);
  let x_327 : f32 = vs_TEXCOORD6.z;
  u_xlatb41 = (0.0f >= x_327);
  let x_331 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_331 >= 1.0f);
  let x_333 : bool = u_xlatb41;
  let x_334 : bool = u_xlatb6;
  u_xlatb41 = (x_333 | x_334);
  let x_336 : bool = u_xlatb41;
  if (x_336) {
    x_338 = 1.0f;
  } else {
    let x_343 : f32 = u_xlat29.x;
    x_338 = x_343;
  }
  let x_344 : f32 = x_338;
  u_xlat29.x = x_344;
  let x_347 : vec3<f32> = vs_TEXCOORD1;
  let x_349 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat6 = (x_347 + -(x_349));
  let x_352 : vec3<f32> = u_xlat6;
  let x_353 : vec3<f32> = u_xlat6;
  u_xlat41 = dot(x_352, x_353);
  let x_355 : f32 = u_xlat41;
  let x_357 : f32 = x_311.x_MainLightShadowParams.z;
  let x_360 : f32 = x_311.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_355 * x_357) + x_360);
  let x_364 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_364, 0.0f, 1.0f);
  let x_369 : f32 = u_xlat29.x;
  u_xlat18 = (-(x_369) + 1.0f);
  let x_373 : f32 = u_xlat6.x;
  let x_374 : f32 = u_xlat18;
  let x_377 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_373 * x_374) + x_377);
  let x_380 : vec3<f32> = u_xlat2;
  let x_382 : vec3<f32> = u_xlat3;
  u_xlat6.x = dot(-(x_380), x_382);
  let x_386 : f32 = u_xlat6.x;
  let x_388 : f32 = u_xlat6.x;
  u_xlat6.x = (x_386 + x_388);
  let x_391 : vec3<f32> = u_xlat3;
  let x_392 : vec3<f32> = u_xlat6;
  let x_396 : vec3<f32> = u_xlat2;
  u_xlat6 = ((x_391 * -(vec3<f32>(x_392.x, x_392.x, x_392.x))) + -(x_396));
  let x_400 : vec3<f32> = u_xlat3;
  let x_401 : vec3<f32> = u_xlat2;
  u_xlat42 = dot(x_400, x_401);
  let x_403 : f32 = u_xlat42;
  u_xlat42 = clamp(x_403, 0.0f, 1.0f);
  let x_405 : f32 = u_xlat42;
  u_xlat42 = (-(x_405) + 1.0f);
  let x_408 : f32 = u_xlat42;
  let x_409 : f32 = u_xlat42;
  u_xlat42 = (x_408 * x_409);
  let x_411 : f32 = u_xlat42;
  let x_412 : f32 = u_xlat42;
  u_xlat42 = (x_411 * x_412);
  let x_415 : f32 = u_xlat38;
  u_xlat7.x = ((-(x_415) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_422 : f32 = u_xlat38;
  let x_424 : f32 = u_xlat7.x;
  u_xlat38 = (x_422 * x_424);
  let x_426 : f32 = u_xlat38;
  u_xlat38 = (x_426 * 6.0f);
  let x_437 : vec3<f32> = u_xlat6;
  let x_438 : f32 = u_xlat38;
  let x_439 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_437, x_438);
  u_xlat7 = x_439;
  let x_441 : f32 = u_xlat7.w;
  u_xlat38 = (x_441 + -1.0f);
  let x_449 : f32 = x_447.unity_SpecCube0_HDR.w;
  let x_450 : f32 = u_xlat38;
  u_xlat38 = ((x_449 * x_450) + 1.0f);
  let x_453 : f32 = u_xlat38;
  u_xlat38 = max(x_453, 0.0f);
  let x_455 : f32 = u_xlat38;
  u_xlat38 = log2(x_455);
  let x_457 : f32 = u_xlat38;
  let x_459 : f32 = x_447.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_457 * x_459);
  let x_461 : f32 = u_xlat38;
  u_xlat38 = exp2(x_461);
  let x_463 : f32 = u_xlat38;
  let x_465 : f32 = x_447.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_463 * x_465);
  let x_467 : vec4<f32> = u_xlat7;
  let x_469 : f32 = u_xlat38;
  u_xlat6 = (vec3<f32>(x_467.x, x_467.y, x_467.z) * vec3<f32>(x_469, x_469, x_469));
  let x_472 : f32 = u_xlat40;
  let x_474 : f32 = u_xlat40;
  let x_478 : vec2<f32> = ((vec2<f32>(x_472, x_472) * vec2<f32>(x_474, x_474)) + vec2<f32>(-1.0f, 1.0f));
  let x_479 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_478.x, x_478.y, x_479.z, x_479.w);
  let x_482 : f32 = u_xlat7.y;
  u_xlat38 = (1.0f / x_482);
  let x_485 : vec4<f32> = u_xlat0;
  let x_488 : f32 = u_xlat39;
  u_xlat19 = (-(vec3<f32>(x_485.x, x_485.y, x_485.z)) + vec3<f32>(x_488, x_488, x_488));
  let x_491 : f32 = u_xlat42;
  let x_493 : vec3<f32> = u_xlat19;
  let x_495 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_491, x_491, x_491) * x_493) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : f32 = u_xlat38;
  let x_500 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_498, x_498, x_498) * x_500);
  let x_502 : vec3<f32> = u_xlat6;
  let x_503 : vec3<f32> = u_xlat19;
  u_xlat6 = (x_502 * x_503);
  let x_505 : vec4<f32> = u_xlat4;
  let x_507 : vec3<f32> = u_xlat13;
  let x_509 : vec3<f32> = u_xlat6;
  let x_510 : vec3<f32> = ((vec3<f32>(x_505.x, x_505.y, x_505.z) * x_507) + x_509);
  let x_511 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_514 : f32 = u_xlat29.x;
  let x_516 : f32 = x_447.unity_LightData.z;
  u_xlat38 = (x_514 * x_516);
  let x_518 : vec3<f32> = u_xlat3;
  let x_520 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat39 = dot(x_518, vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : f32 = u_xlat39;
  u_xlat39 = clamp(x_523, 0.0f, 1.0f);
  let x_525 : f32 = u_xlat38;
  let x_526 : f32 = u_xlat39;
  u_xlat38 = (x_525 * x_526);
  let x_528 : f32 = u_xlat38;
  let x_531 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_528, x_528, x_528) * vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec3<f32> = u_xlat2;
  let x_536 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat19 = (x_534 + vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec3<f32> = u_xlat19;
  let x_540 : vec3<f32> = u_xlat19;
  u_xlat38 = dot(x_539, x_540);
  let x_542 : f32 = u_xlat38;
  u_xlat38 = max(x_542, 1.17549435e-38f);
  let x_545 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_545);
  let x_547 : f32 = u_xlat38;
  let x_549 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_547, x_547, x_547) * x_549);
  let x_551 : vec3<f32> = u_xlat3;
  let x_552 : vec3<f32> = u_xlat19;
  u_xlat38 = dot(x_551, x_552);
  let x_554 : f32 = u_xlat38;
  u_xlat38 = clamp(x_554, 0.0f, 1.0f);
  let x_557 : vec4<f32> = x_28.x_MainLightPosition;
  let x_559 : vec3<f32> = u_xlat19;
  u_xlat39 = dot(vec3<f32>(x_557.x, x_557.y, x_557.z), x_559);
  let x_561 : f32 = u_xlat39;
  u_xlat39 = clamp(x_561, 0.0f, 1.0f);
  let x_563 : f32 = u_xlat38;
  let x_564 : f32 = u_xlat38;
  u_xlat38 = (x_563 * x_564);
  let x_566 : f32 = u_xlat38;
  let x_568 : f32 = u_xlat7.x;
  u_xlat38 = ((x_566 * x_568) + 1.00001001358032226562f);
  let x_572 : f32 = u_xlat39;
  let x_573 : f32 = u_xlat39;
  u_xlat39 = (x_572 * x_573);
  let x_575 : f32 = u_xlat38;
  let x_576 : f32 = u_xlat38;
  u_xlat38 = (x_575 * x_576);
  let x_578 : f32 = u_xlat39;
  u_xlat39 = max(x_578, 0.10000000149011611938f);
  let x_581 : f32 = u_xlat38;
  let x_582 : f32 = u_xlat39;
  u_xlat38 = (x_581 * x_582);
  let x_584 : f32 = u_xlat17;
  let x_585 : f32 = u_xlat38;
  u_xlat38 = (x_584 * x_585);
  let x_588 : f32 = u_xlat5.x;
  let x_589 : f32 = u_xlat38;
  u_xlat38 = (x_588 / x_589);
  let x_591 : vec4<f32> = u_xlat0;
  let x_593 : f32 = u_xlat38;
  let x_596 : vec3<f32> = u_xlat13;
  u_xlat19 = ((vec3<f32>(x_591.x, x_591.y, x_591.z) * vec3<f32>(x_593, x_593, x_593)) + x_596);
  let x_599 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_601 : f32 = x_447.unity_LightData.y;
  u_xlat38 = min(x_599, x_601);
  let x_605 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_605));
  let x_608 : f32 = u_xlat41;
  let x_611 : f32 = x_311.x_AdditionalShadowFadeParams.x;
  let x_614 : f32 = x_311.x_AdditionalShadowFadeParams.y;
  u_xlat39 = ((x_608 * x_611) + x_614);
  let x_616 : f32 = u_xlat39;
  u_xlat39 = clamp(x_616, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_629 : u32 = u_xlatu_loop_1;
    let x_630 : u32 = u_xlatu38;
    if ((x_629 < x_630)) {
    } else {
      break;
    }
    let x_633 : u32 = u_xlatu_loop_1;
    u_xlatu29 = (x_633 >> 2u);
    let x_637 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_637 & 3u));
    let x_640 : u32 = u_xlatu29;
    let x_643 : vec4<f32> = x_447.unity_LightIndices[bitcast<i32>(x_640)];
    let x_653 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_658 : vec4<u32> = indexable[x_653];
    u_xlat29.x = dot(x_643, bitcast<vec4<f32>>(x_658));
    let x_664 : f32 = u_xlat29.x;
    u_xlati29 = i32(x_664);
    let x_667 : vec3<f32> = vs_TEXCOORD1;
    let x_678 : i32 = u_xlati29;
    let x_680 : vec4<f32> = x_677.x_AdditionalLightsPosition[x_678];
    let x_683 : i32 = u_xlati29;
    let x_685 : vec4<f32> = x_677.x_AdditionalLightsPosition[x_683];
    u_xlat9 = ((-(x_667) * vec3<f32>(x_680.w, x_680.w, x_680.w)) + vec3<f32>(x_685.x, x_685.y, x_685.z));
    let x_688 : vec3<f32> = u_xlat9;
    let x_689 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_688, x_689);
    let x_691 : f32 = u_xlat41;
    u_xlat41 = max(x_691, 0.00006103515625f);
    let x_694 : f32 = u_xlat41;
    u_xlat42 = inverseSqrt(x_694);
    let x_697 : f32 = u_xlat42;
    let x_699 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_697, x_697, x_697) * x_699);
    let x_702 : f32 = u_xlat41;
    u_xlat44 = (1.0f / x_702);
    let x_704 : f32 = u_xlat41;
    let x_705 : i32 = u_xlati29;
    let x_707 : f32 = x_677.x_AdditionalLightsAttenuation[x_705].x;
    u_xlat41 = (x_704 * x_707);
    let x_709 : f32 = u_xlat41;
    let x_711 : f32 = u_xlat41;
    u_xlat41 = ((-(x_709) * x_711) + 1.0f);
    let x_714 : f32 = u_xlat41;
    u_xlat41 = max(x_714, 0.0f);
    let x_716 : f32 = u_xlat41;
    let x_717 : f32 = u_xlat41;
    u_xlat41 = (x_716 * x_717);
    let x_719 : f32 = u_xlat41;
    let x_720 : f32 = u_xlat44;
    u_xlat41 = (x_719 * x_720);
    let x_722 : i32 = u_xlati29;
    let x_724 : vec4<f32> = x_677.x_AdditionalLightsSpotDir[x_722];
    let x_726 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_724.x, x_724.y, x_724.z), x_726);
    let x_728 : f32 = u_xlat44;
    let x_729 : i32 = u_xlati29;
    let x_731 : f32 = x_677.x_AdditionalLightsAttenuation[x_729].z;
    let x_733 : i32 = u_xlati29;
    let x_735 : f32 = x_677.x_AdditionalLightsAttenuation[x_733].w;
    u_xlat44 = ((x_728 * x_731) + x_735);
    let x_737 : f32 = u_xlat44;
    u_xlat44 = clamp(x_737, 0.0f, 1.0f);
    let x_739 : f32 = u_xlat44;
    let x_740 : f32 = u_xlat44;
    u_xlat44 = (x_739 * x_740);
    let x_742 : f32 = u_xlat41;
    let x_743 : f32 = u_xlat44;
    u_xlat41 = (x_742 * x_743);
    let x_747 : i32 = u_xlati29;
    let x_749 : f32 = x_311.x_AdditionalShadowParams[x_747].w;
    u_xlati44 = i32(x_749);
    let x_752 : i32 = u_xlati44;
    u_xlatb45 = (x_752 >= 0i);
    let x_754 : bool = u_xlatb45;
    if (x_754) {
      let x_758 : i32 = u_xlati29;
      let x_760 : f32 = x_311.x_AdditionalShadowParams[x_758].z;
      u_xlatb45 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_760, x_760, x_760, x_760))));
      let x_765 : bool = u_xlatb45;
      if (x_765) {
        let x_770 : vec3<f32> = u_xlat10;
        let x_773 : vec3<f32> = u_xlat10;
        let x_776 : vec4<bool> = (abs(vec4<f32>(x_770.z, x_770.z, x_770.y, x_770.z)) >= abs(vec4<f32>(x_773.x, x_773.y, x_773.x, x_773.x)));
        let x_778 : vec3<bool> = vec3<bool>(x_776.x, x_776.y, x_776.z);
        let x_779 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_778.x, x_778.y, x_778.z, x_779.w);
        let x_782 : bool = u_xlatb11.y;
        let x_784 : bool = u_xlatb11.x;
        u_xlatb45 = (x_782 & x_784);
        let x_786 : vec3<f32> = u_xlat10;
        let x_789 : vec4<bool> = (-(vec4<f32>(x_786.z, x_786.y, x_786.z, x_786.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_790 : vec3<bool> = vec3<bool>(x_789.x, x_789.y, x_789.w);
        let x_791 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_790.x, x_790.y, x_791.z, x_790.z);
        let x_795 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_795);
        let x_800 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_800);
        let x_806 : bool = u_xlatb11.w;
        u_xlat46 = select(0.0f, 1.0f, x_806);
        let x_809 : bool = u_xlatb11.z;
        if (x_809) {
          let x_814 : f32 = u_xlat11.y;
          x_810 = x_814;
        } else {
          let x_816 : f32 = u_xlat46;
          x_810 = x_816;
        }
        let x_817 : f32 = x_810;
        u_xlat46 = x_817;
        let x_819 : bool = u_xlatb45;
        if (x_819) {
          let x_824 : f32 = u_xlat11.x;
          x_820 = x_824;
        } else {
          let x_826 : f32 = u_xlat46;
          x_820 = x_826;
        }
        let x_827 : f32 = x_820;
        u_xlat45 = x_827;
        let x_828 : i32 = u_xlati29;
        let x_830 : f32 = x_311.x_AdditionalShadowParams[x_828].w;
        u_xlat46 = trunc(x_830);
        let x_832 : f32 = u_xlat45;
        let x_833 : f32 = u_xlat46;
        u_xlat45 = (x_832 + x_833);
        let x_835 : f32 = u_xlat45;
        u_xlati44 = i32(x_835);
      }
      let x_837 : i32 = u_xlati44;
      u_xlati44 = (x_837 << bitcast<u32>(2i));
      let x_839 : vec3<f32> = vs_TEXCOORD1;
      let x_842 : i32 = u_xlati44;
      let x_845 : i32 = u_xlati44;
      let x_849 : vec4<f32> = x_311.x_AdditionalLightsWorldToShadow[((x_842 + 1i) / 4i)][((x_845 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_839.y, x_839.y, x_839.y, x_839.y) * x_849);
      let x_851 : i32 = u_xlati44;
      let x_853 : i32 = u_xlati44;
      let x_856 : vec4<f32> = x_311.x_AdditionalLightsWorldToShadow[(x_851 / 4i)][(x_853 % 4i)];
      let x_857 : vec3<f32> = vs_TEXCOORD1;
      let x_860 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_856 * vec4<f32>(x_857.x, x_857.x, x_857.x, x_857.x)) + x_860);
      let x_862 : i32 = u_xlati44;
      let x_865 : i32 = u_xlati44;
      let x_869 : vec4<f32> = x_311.x_AdditionalLightsWorldToShadow[((x_862 + 2i) / 4i)][((x_865 + 2i) % 4i)];
      let x_870 : vec3<f32> = vs_TEXCOORD1;
      let x_873 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_869 * vec4<f32>(x_870.z, x_870.z, x_870.z, x_870.z)) + x_873);
      let x_875 : vec4<f32> = u_xlat11;
      let x_876 : i32 = u_xlati44;
      let x_879 : i32 = u_xlati44;
      let x_883 : vec4<f32> = x_311.x_AdditionalLightsWorldToShadow[((x_876 + 3i) / 4i)][((x_879 + 3i) % 4i)];
      u_xlat11 = (x_875 + x_883);
      let x_885 : vec4<f32> = u_xlat11;
      let x_887 : vec4<f32> = u_xlat11;
      let x_889 : vec3<f32> = (vec3<f32>(x_885.x, x_885.y, x_885.z) / vec3<f32>(x_887.w, x_887.w, x_887.w));
      let x_890 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
      let x_893 : vec4<f32> = u_xlat11;
      let x_894 : vec2<f32> = vec2<f32>(x_893.x, x_893.y);
      let x_896 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_894.x, x_894.y, x_896);
      let x_904 : vec3<f32> = txVec1;
      let x_906 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_904.xy, x_904.z);
      u_xlat44 = x_906;
      let x_907 : i32 = u_xlati29;
      let x_909 : f32 = x_311.x_AdditionalShadowParams[x_907].x;
      u_xlat45 = (1.0f + -(x_909));
      let x_912 : f32 = u_xlat44;
      let x_913 : i32 = u_xlati29;
      let x_915 : f32 = x_311.x_AdditionalShadowParams[x_913].x;
      let x_917 : f32 = u_xlat45;
      u_xlat44 = ((x_912 * x_915) + x_917);
      let x_920 : f32 = u_xlat11.z;
      u_xlatb45 = (0.0f >= x_920);
      let x_924 : f32 = u_xlat11.z;
      u_xlatb46 = (x_924 >= 1.0f);
      let x_926 : bool = u_xlatb45;
      let x_927 : bool = u_xlatb46;
      u_xlatb45 = (x_926 | x_927);
      let x_929 : bool = u_xlatb45;
      let x_930 : f32 = u_xlat44;
      u_xlat44 = select(x_930, 1.0f, x_929);
    } else {
      u_xlat44 = 1.0f;
    }
    let x_933 : f32 = u_xlat44;
    u_xlat45 = (-(x_933) + 1.0f);
    let x_936 : f32 = u_xlat39;
    let x_937 : f32 = u_xlat45;
    let x_939 : f32 = u_xlat44;
    u_xlat44 = ((x_936 * x_937) + x_939);
    let x_941 : f32 = u_xlat41;
    let x_942 : f32 = u_xlat44;
    u_xlat41 = (x_941 * x_942);
    let x_944 : vec3<f32> = u_xlat3;
    let x_945 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(x_944, x_945);
    let x_947 : f32 = u_xlat44;
    u_xlat44 = clamp(x_947, 0.0f, 1.0f);
    let x_949 : f32 = u_xlat41;
    let x_950 : f32 = u_xlat44;
    u_xlat41 = (x_949 * x_950);
    let x_952 : f32 = u_xlat41;
    let x_954 : i32 = u_xlati29;
    let x_956 : vec4<f32> = x_677.x_AdditionalLightsColor[x_954];
    let x_958 : vec3<f32> = (vec3<f32>(x_952, x_952, x_952) * vec3<f32>(x_956.x, x_956.y, x_956.z));
    let x_959 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
    let x_961 : vec3<f32> = u_xlat9;
    let x_962 : f32 = u_xlat42;
    let x_965 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_961 * vec3<f32>(x_962, x_962, x_962)) + x_965);
    let x_967 : vec3<f32> = u_xlat9;
    let x_968 : vec3<f32> = u_xlat9;
    u_xlat29.x = dot(x_967, x_968);
    let x_972 : f32 = u_xlat29.x;
    u_xlat29.x = max(x_972, 1.17549435e-38f);
    let x_976 : f32 = u_xlat29.x;
    u_xlat29.x = inverseSqrt(x_976);
    let x_979 : vec2<f32> = u_xlat29;
    let x_981 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_979.x, x_979.x, x_979.x) * x_981);
    let x_983 : vec3<f32> = u_xlat3;
    let x_984 : vec3<f32> = u_xlat9;
    u_xlat29.x = dot(x_983, x_984);
    let x_988 : f32 = u_xlat29.x;
    u_xlat29.x = clamp(x_988, 0.0f, 1.0f);
    let x_991 : vec3<f32> = u_xlat10;
    let x_992 : vec3<f32> = u_xlat9;
    u_xlat29.y = dot(x_991, x_992);
    let x_996 : f32 = u_xlat29.y;
    u_xlat29.y = clamp(x_996, 0.0f, 1.0f);
    let x_999 : vec2<f32> = u_xlat29;
    let x_1000 : vec2<f32> = u_xlat29;
    u_xlat29 = (x_999 * x_1000);
    let x_1003 : f32 = u_xlat29.x;
    let x_1005 : f32 = u_xlat7.x;
    u_xlat29.x = ((x_1003 * x_1005) + 1.00001001358032226562f);
    let x_1010 : f32 = u_xlat29.x;
    let x_1012 : f32 = u_xlat29.x;
    u_xlat29.x = (x_1010 * x_1012);
    let x_1016 : f32 = u_xlat29.y;
    u_xlat41 = max(x_1016, 0.10000000149011611938f);
    let x_1018 : f32 = u_xlat41;
    let x_1020 : f32 = u_xlat29.x;
    u_xlat29.x = (x_1018 * x_1020);
    let x_1023 : f32 = u_xlat17;
    let x_1025 : f32 = u_xlat29.x;
    u_xlat29.x = (x_1023 * x_1025);
    let x_1029 : f32 = u_xlat5.x;
    let x_1031 : f32 = u_xlat29.x;
    u_xlat29.x = (x_1029 / x_1031);
    let x_1034 : vec4<f32> = u_xlat0;
    let x_1036 : vec2<f32> = u_xlat29;
    let x_1039 : vec3<f32> = u_xlat13;
    u_xlat9 = ((vec3<f32>(x_1034.x, x_1034.y, x_1034.z) * vec3<f32>(x_1036.x, x_1036.x, x_1036.x)) + x_1039);
    let x_1041 : vec3<f32> = u_xlat9;
    let x_1042 : vec4<f32> = u_xlat11;
    let x_1045 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1041 * vec3<f32>(x_1042.x, x_1042.y, x_1042.z)) + x_1045);

    continuing {
      let x_1047 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1047 + bitcast<u32>(1i));
    }
  }
  let x_1049 : vec3<f32> = u_xlat19;
  let x_1050 : vec3<f32> = u_xlat6;
  let x_1052 : vec4<f32> = u_xlat4;
  let x_1054 : vec3<f32> = ((x_1049 * x_1050) + vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
  let x_1055 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
  let x_1057 : vec3<f32> = u_xlat8;
  let x_1058 : vec4<f32> = u_xlat0;
  let x_1060 : vec3<f32> = (x_1057 + vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1061 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1063 : f32 = u_xlat36;
  let x_1064 : f32 = u_xlat36;
  u_xlat36 = (x_1063 * -(x_1064));
  let x_1067 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1067);
  let x_1069 : vec4<f32> = u_xlat0;
  let x_1072 : vec4<f32> = x_28.unity_FogColor;
  let x_1075 : vec3<f32> = (vec3<f32>(x_1069.x, x_1069.y, x_1069.z) + -(vec3<f32>(x_1072.x, x_1072.y, x_1072.z)));
  let x_1076 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1080 : f32 = u_xlat36;
  let x_1082 : vec4<f32> = u_xlat0;
  let x_1086 : vec4<f32> = x_28.unity_FogColor;
  let x_1088 : vec3<f32> = ((vec3<f32>(x_1080, x_1080, x_1080) * vec3<f32>(x_1082.x, x_1082.y, x_1082.z)) + vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1089 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1093 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_1093 == 1.0f);
  let x_1095 : bool = u_xlatb0;
  if (x_1095) {
    let x_1100 : f32 = u_xlat1.x;
    x_1096 = x_1100;
  } else {
    x_1096 = 1.0f;
  }
  let x_1102 : f32 = x_1096;
  SV_Target0.w = x_1102;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


