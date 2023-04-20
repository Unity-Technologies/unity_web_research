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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_54 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat42 : f32;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_OcclusionMap : sampler;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlatb17 : vec2<bool>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_279 : LightShadows;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

@group(1) @binding(2) var<uniform> x_447 : UnityPerDraw;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat15 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlatb45 : bool;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(1) @binding(5) var<uniform> x_691 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlatu45 : u32;

var<private> u_xlati46 : i32;

var<private> u_xlati45 : i32;

@group(1) @binding(1) var<uniform> x_1147 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb50 : bool;

var<private> u_xlati49 : i32;

var<private> u_xlati50 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu15 : u32;

fn main_1() {
  var x_187 : f32;
  var x_200 : f32;
  var x_213 : f32;
  var txVec0 : vec3<f32>;
  var x_644 : f32;
  var x_774 : f32;
  var x_785 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1278 : f32;
  var x_1288 : f32;
  var txVec1 : vec3<f32>;
  var x_1711 : f32;
  var x_1724 : f32;
  var x_1772 : f32;
  var x_1783 : vec3<f32>;
  var x_1921 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_44 : vec2<f32> = vs_TEXCOORD0;
  let x_46 : f32 = x_28.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_44, x_46);
  u_xlat1 = vec2<f32>(x_47.x, x_47.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_54.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_50.w, x_50.x, x_50.y, x_50.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_68 : vec2<f32> = vs_TEXCOORD0;
  let x_70 : f32 = x_28.x_GlobalMipBias.x;
  let x_71 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_68, x_70);
  u_xlat3 = vec3<f32>(x_71.x, x_71.y, x_71.w);
  let x_75 : f32 = u_xlat3.x;
  let x_78 : f32 = u_xlat3.z;
  u_xlat3.x = (x_75 * x_78);
  let x_82 : vec3<f32> = u_xlat3;
  u_xlat29 = ((vec2<f32>(x_82.x, x_82.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec2<f32> = u_xlat29;
  let x_92 : vec2<f32> = u_xlat29;
  u_xlat42 = dot(x_91, x_92);
  let x_94 : f32 = u_xlat42;
  u_xlat42 = min(x_94, 1.0f);
  let x_97 : f32 = u_xlat42;
  u_xlat42 = (-(x_97) + 1.0f);
  let x_100 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_100);
  let x_102 : f32 = u_xlat42;
  u_xlat42 = max(x_102, 0.0000000000000001f);
  let x_105 : vec2<f32> = u_xlat29;
  let x_108 : f32 = x_54.x_BumpScale;
  let x_110 : f32 = x_54.x_BumpScale;
  let x_111 : vec2<f32> = vec2<f32>(x_108, x_110);
  u_xlat29 = (x_105 * vec2<f32>(x_111.x, x_111.y));
  let x_121 : vec2<f32> = vs_TEXCOORD0;
  let x_123 : f32 = x_28.x_GlobalMipBias.x;
  let x_124 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_121, x_123);
  u_xlat3.x = x_124.y;
  let x_131 : f32 = x_54.x_OcclusionStrength;
  u_xlat17.x = (-(x_131) + 1.0f);
  let x_136 : f32 = u_xlat3.x;
  let x_138 : f32 = x_54.x_OcclusionStrength;
  let x_141 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_136 * x_138) + x_141);
  let x_151 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb17.x = (x_151 == 0.0f);
  let x_159 : vec3<f32> = vs_TEXCOORD1;
  let x_164 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_165 : vec3<f32> = (-(x_159) + x_164);
  let x_166 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec4<f32> = u_xlat4;
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat31 = dot(vec3<f32>(x_169.x, x_169.y, x_169.z), vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_174);
  let x_176 : f32 = u_xlat31;
  let x_178 : vec4<f32> = u_xlat4;
  let x_180 : vec3<f32> = (vec3<f32>(x_176, x_176, x_176) * vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_185 : bool = u_xlatb17.x;
  if (x_185) {
    let x_191 : f32 = u_xlat4.x;
    x_187 = x_191;
  } else {
    let x_195 : f32 = x_28.unity_MatrixV[0i].z;
    x_187 = x_195;
  }
  let x_196 : f32 = x_187;
  u_xlat5.x = x_196;
  let x_199 : bool = u_xlatb17.x;
  if (x_199) {
    let x_204 : f32 = u_xlat4.y;
    x_200 = x_204;
  } else {
    let x_208 : f32 = x_28.unity_MatrixV[1i].z;
    x_200 = x_208;
  }
  let x_209 : f32 = x_200;
  u_xlat5.y = x_209;
  let x_212 : bool = u_xlatb17.x;
  if (x_212) {
    let x_217 : f32 = u_xlat4.z;
    x_213 = x_217;
  } else {
    let x_220 : f32 = x_28.unity_MatrixV[2i].z;
    x_213 = x_220;
  }
  let x_221 : f32 = x_213;
  u_xlat5.z = x_221;
  let x_224 : vec3<f32> = vs_TEXCOORD2;
  let x_228 : vec4<f32> = vs_TEXCOORD3;
  u_xlat17 = (vec3<f32>(x_224.z, x_224.x, x_224.y) * vec3<f32>(x_228.y, x_228.z, x_228.x));
  let x_231 : vec3<f32> = vs_TEXCOORD2;
  let x_233 : vec4<f32> = vs_TEXCOORD3;
  let x_236 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_231.y, x_231.z, x_231.x) * vec3<f32>(x_233.z, x_233.x, x_233.y)) + -(x_236));
  let x_239 : vec3<f32> = u_xlat17;
  let x_240 : vec4<f32> = vs_TEXCOORD3;
  u_xlat17 = (x_239 * vec3<f32>(x_240.w, x_240.w, x_240.w));
  let x_243 : vec2<f32> = u_xlat29;
  let x_245 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_243.y, x_243.y, x_243.y) * x_245);
  let x_247 : vec2<f32> = u_xlat29;
  let x_249 : vec4<f32> = vs_TEXCOORD3;
  let x_252 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_247.x, x_247.x, x_247.x) * vec3<f32>(x_249.x, x_249.y, x_249.z)) + x_252);
  let x_254 : f32 = u_xlat42;
  let x_256 : vec3<f32> = vs_TEXCOORD2;
  let x_258 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_254, x_254, x_254) * x_256) + x_258);
  let x_260 : vec3<f32> = u_xlat17;
  let x_261 : vec3<f32> = u_xlat17;
  u_xlat42 = dot(x_260, x_261);
  let x_263 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_263);
  let x_265 : f32 = u_xlat42;
  let x_267 : vec3<f32> = u_xlat17;
  let x_268 : vec3<f32> = (vec3<f32>(x_265, x_265, x_265) * x_267);
  let x_269 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec3<f32> = vs_TEXCOORD1;
  let x_281 : vec4<f32> = x_279.x_CascadeShadowSplitSpheres0;
  u_xlat17 = (x_271 + -(vec3<f32>(x_281.x, x_281.y, x_281.z)));
  let x_286 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : vec4<f32> = x_279.x_CascadeShadowSplitSpheres1;
  u_xlat6 = (x_286 + -(vec3<f32>(x_288.x, x_288.y, x_288.z)));
  let x_293 : vec3<f32> = vs_TEXCOORD1;
  let x_296 : vec4<f32> = x_279.x_CascadeShadowSplitSpheres2;
  let x_299 : vec3<f32> = (x_293 + -(vec3<f32>(x_296.x, x_296.y, x_296.z)));
  let x_300 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_305 : vec4<f32> = x_279.x_CascadeShadowSplitSpheres3;
  let x_308 : vec3<f32> = (x_303 + -(vec3<f32>(x_305.x, x_305.y, x_305.z)));
  let x_309 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_312 : vec3<f32> = u_xlat17;
  let x_313 : vec3<f32> = u_xlat17;
  u_xlat9.x = dot(x_312, x_313);
  let x_316 : vec3<f32> = u_xlat6;
  let x_317 : vec3<f32> = u_xlat6;
  u_xlat9.y = dot(x_316, x_317);
  let x_320 : vec4<f32> = u_xlat7;
  let x_322 : vec4<f32> = u_xlat7;
  u_xlat9.z = dot(vec3<f32>(x_320.x, x_320.y, x_320.z), vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_326 : vec4<f32> = u_xlat8;
  let x_328 : vec4<f32> = u_xlat8;
  u_xlat9.w = dot(vec3<f32>(x_326.x, x_326.y, x_326.z), vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_335 : vec4<f32> = u_xlat9;
  let x_337 : vec4<f32> = x_279.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_335 < x_337);
  let x_340 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_340);
  let x_344 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_344);
  let x_348 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_348);
  let x_352 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_352);
  let x_356 : bool = u_xlatb6.x;
  u_xlat17.x = select(-0.0f, -1.0f, x_356);
  let x_361 : bool = u_xlatb6.y;
  u_xlat17.y = select(-0.0f, -1.0f, x_361);
  let x_365 : bool = u_xlatb6.z;
  u_xlat17.z = select(-0.0f, -1.0f, x_365);
  let x_368 : vec3<f32> = u_xlat17;
  let x_369 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_368 + vec3<f32>(x_369.y, x_369.z, x_369.w));
  let x_372 : vec3<f32> = u_xlat17;
  let x_374 : vec3<f32> = max(x_372, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_375 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_375.x, x_374.x, x_374.y, x_374.z);
  let x_377 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_377, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_382 : f32 = u_xlat42;
  u_xlat42 = (-(x_382) + 4.0f);
  let x_387 : f32 = u_xlat42;
  u_xlatu42 = u32(x_387);
  let x_391 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_391) << bitcast<u32>(2i));
  let x_394 : vec3<f32> = vs_TEXCOORD1;
  let x_396 : i32 = u_xlati42;
  let x_399 : i32 = u_xlati42;
  let x_403 : vec4<f32> = x_279.x_MainLightWorldToShadow[((x_396 + 1i) / 4i)][((x_399 + 1i) % 4i)];
  u_xlat17 = (vec3<f32>(x_394.y, x_394.y, x_394.y) * vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : i32 = u_xlati42;
  let x_408 : i32 = u_xlati42;
  let x_411 : vec4<f32> = x_279.x_MainLightWorldToShadow[(x_406 / 4i)][(x_408 % 4i)];
  let x_413 : vec3<f32> = vs_TEXCOORD1;
  let x_416 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413.x, x_413.x, x_413.x)) + x_416);
  let x_418 : i32 = u_xlati42;
  let x_421 : i32 = u_xlati42;
  let x_425 : vec4<f32> = x_279.x_MainLightWorldToShadow[((x_418 + 2i) / 4i)][((x_421 + 2i) % 4i)];
  let x_427 : vec3<f32> = vs_TEXCOORD1;
  let x_430 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_427.z, x_427.z, x_427.z)) + x_430);
  let x_432 : vec3<f32> = u_xlat17;
  let x_433 : i32 = u_xlati42;
  let x_436 : i32 = u_xlati42;
  let x_440 : vec4<f32> = x_279.x_MainLightWorldToShadow[((x_433 + 3i) / 4i)][((x_436 + 3i) % 4i)];
  u_xlat17 = (x_432 + vec3<f32>(x_440.x, x_440.y, x_440.z));
  u_xlat4.w = 1.0f;
  let x_450 : vec4<f32> = x_447.unity_SHAr;
  let x_451 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_450, x_451);
  let x_456 : vec4<f32> = x_447.unity_SHAg;
  let x_457 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_456, x_457);
  let x_462 : vec4<f32> = x_447.unity_SHAb;
  let x_463 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_462, x_463);
  let x_466 : vec4<f32> = u_xlat4;
  let x_468 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_466.y, x_466.z, x_466.z, x_466.x) * vec4<f32>(x_468.x, x_468.y, x_468.z, x_468.z));
  let x_473 : vec4<f32> = x_447.unity_SHBr;
  let x_474 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_473, x_474);
  let x_479 : vec4<f32> = x_447.unity_SHBg;
  let x_480 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_479, x_480);
  let x_485 : vec4<f32> = x_447.unity_SHBb;
  let x_486 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_485, x_486);
  let x_490 : f32 = u_xlat4.y;
  let x_492 : f32 = u_xlat4.y;
  u_xlat42 = (x_490 * x_492);
  let x_495 : f32 = u_xlat4.x;
  let x_497 : f32 = u_xlat4.x;
  let x_499 : f32 = u_xlat42;
  u_xlat42 = ((x_495 * x_497) + -(x_499));
  let x_504 : vec4<f32> = x_447.unity_SHC;
  let x_506 : f32 = u_xlat42;
  let x_509 : vec4<f32> = u_xlat8;
  let x_511 : vec3<f32> = ((vec3<f32>(x_504.x, x_504.y, x_504.z) * vec3<f32>(x_506, x_506, x_506)) + vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_512 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec3<f32> = u_xlat6;
  let x_515 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_514 + vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_518, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_521 : f32 = u_xlat1.x;
  u_xlat42 = ((-(x_521) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_526 : f32 = u_xlat42;
  u_xlat29.x = (-(x_526) + 1.0f);
  let x_531 : f32 = u_xlat42;
  let x_533 : vec4<f32> = u_xlat2;
  u_xlat16 = (vec3<f32>(x_531, x_531, x_531) * vec3<f32>(x_533.y, x_533.z, x_533.w));
  let x_536 : vec4<f32> = u_xlat0;
  let x_539 : vec4<f32> = x_54.x_BaseColor;
  let x_544 : vec3<f32> = ((vec3<f32>(x_536.x, x_536.y, x_536.z) * vec3<f32>(x_539.x, x_539.y, x_539.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_545 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec2<f32> = u_xlat1;
  let x_549 : vec4<f32> = u_xlat0;
  let x_554 : vec3<f32> = ((vec3<f32>(x_547.x, x_547.x, x_547.x) * vec3<f32>(x_549.x, x_549.y, x_549.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_555 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_558 : f32 = u_xlat1.y;
  let x_561 : f32 = x_54.x_Smoothness;
  u_xlat42 = ((-(x_558) * x_561) + 1.0f);
  let x_564 : f32 = u_xlat42;
  let x_565 : f32 = u_xlat42;
  u_xlat1.x = (x_564 * x_565);
  let x_569 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_569, 0.0078125f);
  let x_575 : f32 = u_xlat1.x;
  let x_577 : f32 = u_xlat1.x;
  u_xlat43 = (x_575 * x_577);
  let x_581 : f32 = u_xlat1.y;
  let x_583 : f32 = x_54.x_Smoothness;
  let x_586 : f32 = u_xlat29.x;
  u_xlat15 = ((x_581 * x_583) + x_586);
  let x_588 : f32 = u_xlat15;
  u_xlat15 = clamp(x_588, 0.0f, 1.0f);
  let x_591 : f32 = u_xlat1.x;
  u_xlat29.x = ((x_591 * 4.0f) + 2.0f);
  let x_596 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_596, 1.0f);
  let x_601 : vec3<f32> = u_xlat17;
  let x_602 : vec2<f32> = vec2<f32>(x_601.x, x_601.y);
  let x_604 : f32 = u_xlat17.z;
  txVec0 = vec3<f32>(x_602.x, x_602.y, x_604);
  let x_616 : vec3<f32> = txVec0;
  let x_618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_616.xy, x_616.z);
  u_xlat17.x = x_618;
  let x_621 : f32 = x_279.x_MainLightShadowParams.x;
  u_xlat31 = (-(x_621) + 1.0f);
  let x_625 : f32 = u_xlat17.x;
  let x_627 : f32 = x_279.x_MainLightShadowParams.x;
  let x_629 : f32 = u_xlat31;
  u_xlat17.x = ((x_625 * x_627) + x_629);
  let x_634 : f32 = u_xlat17.z;
  u_xlatb31 = (0.0f >= x_634);
  let x_638 : f32 = u_xlat17.z;
  u_xlatb45 = (x_638 >= 1.0f);
  let x_640 : bool = u_xlatb45;
  let x_641 : bool = u_xlatb31;
  u_xlatb31 = (x_640 | x_641);
  let x_643 : bool = u_xlatb31;
  if (x_643) {
    x_644 = 1.0f;
  } else {
    let x_649 : f32 = u_xlat17.x;
    x_644 = x_649;
  }
  let x_650 : f32 = x_644;
  u_xlat17.x = x_650;
  let x_652 : vec3<f32> = vs_TEXCOORD1;
  let x_654 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_656 : vec3<f32> = (x_652 + -(x_654));
  let x_657 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_659 : vec4<f32> = u_xlat7;
  let x_661 : vec4<f32> = u_xlat7;
  u_xlat31 = dot(vec3<f32>(x_659.x, x_659.y, x_659.z), vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_665 : f32 = u_xlat31;
  let x_667 : f32 = x_279.x_MainLightShadowParams.z;
  let x_670 : f32 = x_279.x_MainLightShadowParams.w;
  u_xlat45 = ((x_665 * x_667) + x_670);
  let x_672 : f32 = u_xlat45;
  u_xlat45 = clamp(x_672, 0.0f, 1.0f);
  let x_676 : f32 = u_xlat17.x;
  u_xlat46 = (-(x_676) + 1.0f);
  let x_679 : f32 = u_xlat45;
  let x_680 : f32 = u_xlat46;
  let x_683 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_679 * x_680) + x_683);
  let x_693 : f32 = x_691.x_MainLightCookieTextureFormat;
  u_xlatb45 = !((x_693 == -1.0f));
  let x_695 : bool = u_xlatb45;
  if (x_695) {
    let x_698 : vec3<f32> = vs_TEXCOORD1;
    let x_701 : vec4<f32> = x_691.x_MainLightWorldToLight[1i];
    let x_703 : vec2<f32> = (vec2<f32>(x_698.y, x_698.y) * vec2<f32>(x_701.x, x_701.y));
    let x_704 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_703.x, x_703.y, x_704.z, x_704.w);
    let x_707 : vec4<f32> = x_691.x_MainLightWorldToLight[0i];
    let x_709 : vec3<f32> = vs_TEXCOORD1;
    let x_712 : vec4<f32> = u_xlat7;
    let x_714 : vec2<f32> = ((vec2<f32>(x_707.x, x_707.y) * vec2<f32>(x_709.x, x_709.x)) + vec2<f32>(x_712.x, x_712.y));
    let x_715 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_714.x, x_714.y, x_715.z, x_715.w);
    let x_718 : vec4<f32> = x_691.x_MainLightWorldToLight[2i];
    let x_720 : vec3<f32> = vs_TEXCOORD1;
    let x_723 : vec4<f32> = u_xlat7;
    let x_725 : vec2<f32> = ((vec2<f32>(x_718.x, x_718.y) * vec2<f32>(x_720.z, x_720.z)) + vec2<f32>(x_723.x, x_723.y));
    let x_726 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_725.x, x_725.y, x_726.z, x_726.w);
    let x_728 : vec4<f32> = u_xlat7;
    let x_731 : vec4<f32> = x_691.x_MainLightWorldToLight[3i];
    let x_733 : vec2<f32> = (vec2<f32>(x_728.x, x_728.y) + vec2<f32>(x_731.x, x_731.y));
    let x_734 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_733.x, x_733.y, x_734.z, x_734.w);
    let x_736 : vec4<f32> = u_xlat7;
    let x_741 : vec2<f32> = ((vec2<f32>(x_736.x, x_736.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_742 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_741.x, x_741.y, x_742.z, x_742.w);
    let x_749 : vec4<f32> = u_xlat7;
    let x_752 : f32 = x_28.x_GlobalMipBias.x;
    let x_753 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_749.x, x_749.y), x_752);
    u_xlat7 = x_753;
    let x_756 : f32 = x_691.x_MainLightCookieTextureFormat;
    let x_758 : f32 = x_691.x_MainLightCookieTextureFormat;
    let x_760 : f32 = x_691.x_MainLightCookieTextureFormat;
    let x_762 : f32 = x_691.x_MainLightCookieTextureFormat;
    let x_763 : vec4<f32> = vec4<f32>(x_756, x_758, x_760, x_762);
    let x_770 : vec4<bool> = (vec4<f32>(x_763.x, x_763.y, x_763.z, x_763.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_770.x, x_770.y);
    let x_773 : bool = u_xlatb8.y;
    if (x_773) {
      let x_778 : f32 = u_xlat7.w;
      x_774 = x_778;
    } else {
      let x_781 : f32 = u_xlat7.x;
      x_774 = x_781;
    }
    let x_782 : f32 = x_774;
    u_xlat45 = x_782;
    let x_784 : bool = u_xlatb8.x;
    if (x_784) {
      let x_788 : vec4<f32> = u_xlat7;
      x_785 = vec3<f32>(x_788.x, x_788.y, x_788.z);
    } else {
      let x_791 : f32 = u_xlat45;
      x_785 = vec3<f32>(x_791, x_791, x_791);
    }
    let x_793 : vec3<f32> = x_785;
    let x_794 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_800 : vec4<f32> = u_xlat7;
  let x_803 : vec4<f32> = x_28.x_MainLightColor;
  let x_805 : vec3<f32> = (vec3<f32>(x_800.x, x_800.y, x_800.z) * vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec3<f32> = u_xlat5;
  let x_810 : vec4<f32> = u_xlat4;
  u_xlat45 = dot(-(x_808), vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : f32 = u_xlat45;
  let x_814 : f32 = u_xlat45;
  u_xlat45 = (x_813 + x_814);
  let x_816 : vec4<f32> = u_xlat4;
  let x_818 : f32 = u_xlat45;
  let x_822 : vec3<f32> = u_xlat5;
  let x_824 : vec3<f32> = ((vec3<f32>(x_816.x, x_816.y, x_816.z) * -(vec3<f32>(x_818, x_818, x_818))) + -(x_822));
  let x_825 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec4<f32> = u_xlat4;
  let x_829 : vec3<f32> = u_xlat5;
  u_xlat45 = dot(vec3<f32>(x_827.x, x_827.y, x_827.z), x_829);
  let x_831 : f32 = u_xlat45;
  u_xlat45 = clamp(x_831, 0.0f, 1.0f);
  let x_833 : f32 = u_xlat45;
  u_xlat45 = (-(x_833) + 1.0f);
  let x_836 : f32 = u_xlat45;
  let x_837 : f32 = u_xlat45;
  u_xlat45 = (x_836 * x_837);
  let x_839 : f32 = u_xlat45;
  let x_840 : f32 = u_xlat45;
  u_xlat45 = (x_839 * x_840);
  let x_842 : f32 = u_xlat42;
  u_xlat46 = ((-(x_842) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_848 : f32 = u_xlat42;
  let x_849 : f32 = u_xlat46;
  u_xlat42 = (x_848 * x_849);
  let x_851 : f32 = u_xlat42;
  u_xlat42 = (x_851 * 6.0f);
  let x_862 : vec4<f32> = u_xlat8;
  let x_864 : f32 = u_xlat42;
  let x_865 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_862.x, x_862.y, x_862.z), x_864);
  u_xlat8 = x_865;
  let x_867 : f32 = u_xlat8.w;
  u_xlat42 = (x_867 + -1.0f);
  let x_870 : f32 = x_447.unity_SpecCube0_HDR.w;
  let x_871 : f32 = u_xlat42;
  u_xlat42 = ((x_870 * x_871) + 1.0f);
  let x_874 : f32 = u_xlat42;
  u_xlat42 = max(x_874, 0.0f);
  let x_876 : f32 = u_xlat42;
  u_xlat42 = log2(x_876);
  let x_878 : f32 = u_xlat42;
  let x_880 : f32 = x_447.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_878 * x_880);
  let x_882 : f32 = u_xlat42;
  u_xlat42 = exp2(x_882);
  let x_884 : f32 = u_xlat42;
  let x_886 : f32 = x_447.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_884 * x_886);
  let x_888 : vec4<f32> = u_xlat8;
  let x_890 : f32 = u_xlat42;
  let x_892 : vec3<f32> = (vec3<f32>(x_888.x, x_888.y, x_888.z) * vec3<f32>(x_890, x_890, x_890));
  let x_893 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : vec2<f32> = u_xlat1;
  let x_897 : vec2<f32> = u_xlat1;
  let x_901 : vec2<f32> = ((vec2<f32>(x_895.x, x_895.x) * vec2<f32>(x_897.x, x_897.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_902 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
  let x_905 : f32 = u_xlat9.y;
  u_xlat42 = (1.0f / x_905);
  let x_908 : vec4<f32> = u_xlat0;
  let x_911 : f32 = u_xlat15;
  u_xlat23 = (-(vec3<f32>(x_908.x, x_908.y, x_908.z)) + vec3<f32>(x_911, x_911, x_911));
  let x_914 : f32 = u_xlat45;
  let x_916 : vec3<f32> = u_xlat23;
  let x_918 : vec4<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_914, x_914, x_914) * x_916) + vec3<f32>(x_918.x, x_918.y, x_918.z));
  let x_921 : f32 = u_xlat42;
  let x_923 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_921, x_921, x_921) * x_923);
  let x_925 : vec4<f32> = u_xlat8;
  let x_927 : vec3<f32> = u_xlat23;
  let x_928 : vec3<f32> = (vec3<f32>(x_925.x, x_925.y, x_925.z) * x_927);
  let x_929 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec3<f32> = u_xlat6;
  let x_932 : vec3<f32> = u_xlat16;
  let x_934 : vec4<f32> = u_xlat8;
  u_xlat6 = ((x_931 * x_932) + vec3<f32>(x_934.x, x_934.y, x_934.z));
  let x_938 : f32 = u_xlat17.x;
  let x_940 : f32 = x_447.unity_LightData.z;
  u_xlat42 = (x_938 * x_940);
  let x_942 : vec4<f32> = u_xlat4;
  let x_945 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_942.x, x_942.y, x_942.z), vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_950 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_950, 0.0f, 1.0f);
  let x_953 : f32 = u_xlat42;
  let x_955 : f32 = u_xlat1.x;
  u_xlat42 = (x_953 * x_955);
  let x_957 : f32 = u_xlat42;
  let x_959 : vec4<f32> = u_xlat7;
  let x_961 : vec3<f32> = (vec3<f32>(x_957, x_957, x_957) * vec3<f32>(x_959.x, x_959.y, x_959.z));
  let x_962 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
  let x_964 : vec3<f32> = u_xlat5;
  let x_966 : vec4<f32> = x_28.x_MainLightPosition;
  let x_968 : vec3<f32> = (x_964 + vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_969 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
  let x_971 : vec4<f32> = u_xlat8;
  let x_973 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_971.x, x_971.y, x_971.z), vec3<f32>(x_973.x, x_973.y, x_973.z));
  let x_976 : f32 = u_xlat42;
  u_xlat42 = max(x_976, 1.17549435e-38f);
  let x_979 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_979);
  let x_981 : f32 = u_xlat42;
  let x_983 : vec4<f32> = u_xlat8;
  let x_985 : vec3<f32> = (vec3<f32>(x_981, x_981, x_981) * vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : vec4<f32> = u_xlat4;
  let x_990 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_988.x, x_988.y, x_988.z), vec3<f32>(x_990.x, x_990.y, x_990.z));
  let x_993 : f32 = u_xlat42;
  u_xlat42 = clamp(x_993, 0.0f, 1.0f);
  let x_996 : vec4<f32> = x_28.x_MainLightPosition;
  let x_998 : vec4<f32> = u_xlat8;
  u_xlat1.x = dot(vec3<f32>(x_996.x, x_996.y, x_996.z), vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1003 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1003, 0.0f, 1.0f);
  let x_1006 : f32 = u_xlat42;
  let x_1007 : f32 = u_xlat42;
  u_xlat42 = (x_1006 * x_1007);
  let x_1009 : f32 = u_xlat42;
  let x_1011 : f32 = u_xlat9.x;
  u_xlat42 = ((x_1009 * x_1011) + 1.00001001358032226562f);
  let x_1016 : f32 = u_xlat1.x;
  let x_1018 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1016 * x_1018);
  let x_1021 : f32 = u_xlat42;
  let x_1022 : f32 = u_xlat42;
  u_xlat42 = (x_1021 * x_1022);
  let x_1025 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1025, 0.10000000149011611938f);
  let x_1029 : f32 = u_xlat42;
  let x_1031 : f32 = u_xlat1.x;
  u_xlat42 = (x_1029 * x_1031);
  let x_1034 : f32 = u_xlat29.x;
  let x_1035 : f32 = u_xlat42;
  u_xlat42 = (x_1034 * x_1035);
  let x_1037 : f32 = u_xlat43;
  let x_1038 : f32 = u_xlat42;
  u_xlat42 = (x_1037 / x_1038);
  let x_1040 : vec4<f32> = u_xlat0;
  let x_1042 : f32 = u_xlat42;
  let x_1045 : vec3<f32> = u_xlat16;
  let x_1046 : vec3<f32> = ((vec3<f32>(x_1040.x, x_1040.y, x_1040.z) * vec3<f32>(x_1042, x_1042, x_1042)) + x_1045);
  let x_1047 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
  let x_1049 : vec4<f32> = u_xlat7;
  let x_1051 : vec4<f32> = u_xlat8;
  let x_1053 : vec3<f32> = (vec3<f32>(x_1049.x, x_1049.y, x_1049.z) * vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
  let x_1054 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
  let x_1057 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1059 : f32 = x_447.unity_LightData.y;
  u_xlat42 = min(x_1057, x_1059);
  let x_1061 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1061));
  let x_1064 : f32 = u_xlat31;
  let x_1067 : f32 = x_279.x_AdditionalShadowFadeParams.x;
  let x_1070 : f32 = x_279.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1064 * x_1067) + x_1070);
  let x_1074 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1074, 0.0f, 1.0f);
  let x_1078 : f32 = x_691.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1080 : f32 = x_691.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1082 : f32 = x_691.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1084 : f32 = x_691.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1085 : vec4<f32> = vec4<f32>(x_1078, x_1080, x_1082, x_1084);
  let x_1091 : vec4<bool> = (vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1085.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb17 = vec2<bool>(x_1091.x, x_1091.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1103 : u32 = u_xlatu_loop_1;
    let x_1104 : u32 = u_xlatu42;
    if ((x_1103 < x_1104)) {
    } else {
      break;
    }
    let x_1107 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1107 >> 2u);
    let x_1110 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1110 & 3u));
    let x_1113 : u32 = u_xlatu45;
    let x_1116 : vec4<f32> = x_447.unity_LightIndices[bitcast<i32>(x_1113)];
    let x_1126 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1131 : vec4<u32> = indexable[x_1126];
    u_xlat45 = dot(x_1116, bitcast<vec4<f32>>(x_1131));
    let x_1135 : f32 = u_xlat45;
    u_xlati45 = i32(x_1135);
    let x_1137 : vec3<f32> = vs_TEXCOORD1;
    let x_1148 : i32 = u_xlati45;
    let x_1150 : vec4<f32> = x_1147.x_AdditionalLightsPosition[x_1148];
    let x_1153 : i32 = u_xlati45;
    let x_1155 : vec4<f32> = x_1147.x_AdditionalLightsPosition[x_1153];
    u_xlat23 = ((-(x_1137) * vec3<f32>(x_1150.w, x_1150.w, x_1150.w)) + vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
    let x_1158 : vec3<f32> = u_xlat23;
    let x_1159 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(x_1158, x_1159);
    let x_1161 : f32 = u_xlat46;
    u_xlat46 = max(x_1161, 0.00006103515625f);
    let x_1165 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1165);
    let x_1168 : f32 = u_xlat47;
    let x_1170 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1168, x_1168, x_1168) * x_1170);
    let x_1173 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1173);
    let x_1175 : f32 = u_xlat46;
    let x_1176 : i32 = u_xlati45;
    let x_1178 : f32 = x_1147.x_AdditionalLightsAttenuation[x_1176].x;
    u_xlat46 = (x_1175 * x_1178);
    let x_1180 : f32 = u_xlat46;
    let x_1182 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1180) * x_1182) + 1.0f);
    let x_1185 : f32 = u_xlat46;
    u_xlat46 = max(x_1185, 0.0f);
    let x_1187 : f32 = u_xlat46;
    let x_1188 : f32 = u_xlat46;
    u_xlat46 = (x_1187 * x_1188);
    let x_1190 : f32 = u_xlat46;
    let x_1191 : f32 = u_xlat48;
    u_xlat46 = (x_1190 * x_1191);
    let x_1193 : i32 = u_xlati45;
    let x_1195 : vec4<f32> = x_1147.x_AdditionalLightsSpotDir[x_1193];
    let x_1197 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1195.x, x_1195.y, x_1195.z), x_1197);
    let x_1199 : f32 = u_xlat48;
    let x_1200 : i32 = u_xlati45;
    let x_1202 : f32 = x_1147.x_AdditionalLightsAttenuation[x_1200].z;
    let x_1204 : i32 = u_xlati45;
    let x_1206 : f32 = x_1147.x_AdditionalLightsAttenuation[x_1204].w;
    u_xlat48 = ((x_1199 * x_1202) + x_1206);
    let x_1208 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1208, 0.0f, 1.0f);
    let x_1210 : f32 = u_xlat48;
    let x_1211 : f32 = u_xlat48;
    u_xlat48 = (x_1210 * x_1211);
    let x_1213 : f32 = u_xlat46;
    let x_1214 : f32 = u_xlat48;
    u_xlat46 = (x_1213 * x_1214);
    let x_1218 : i32 = u_xlati45;
    let x_1220 : f32 = x_279.x_AdditionalShadowParams[x_1218].w;
    u_xlati48 = i32(x_1220);
    let x_1223 : i32 = u_xlati48;
    u_xlatb49 = (x_1223 >= 0i);
    let x_1225 : bool = u_xlatb49;
    if (x_1225) {
      let x_1229 : i32 = u_xlati45;
      let x_1231 : f32 = x_279.x_AdditionalShadowParams[x_1229].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1231, x_1231, x_1231, x_1231))));
      let x_1235 : bool = u_xlatb49;
      if (x_1235) {
        let x_1239 : vec3<f32> = u_xlat10;
        let x_1242 : vec3<f32> = u_xlat10;
        let x_1245 : vec4<bool> = (abs(vec4<f32>(x_1239.z, x_1239.z, x_1239.y, x_1239.z)) >= abs(vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.x)));
        let x_1247 : vec3<bool> = vec3<bool>(x_1245.x, x_1245.y, x_1245.z);
        let x_1248 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1247.x, x_1247.y, x_1247.z, x_1248.w);
        let x_1251 : bool = u_xlatb11.y;
        let x_1253 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1251 & x_1253);
        let x_1255 : vec3<f32> = u_xlat10;
        let x_1258 : vec4<bool> = (-(vec4<f32>(x_1255.z, x_1255.y, x_1255.z, x_1255.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1259 : vec3<bool> = vec3<bool>(x_1258.x, x_1258.y, x_1258.w);
        let x_1260 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1259.x, x_1259.y, x_1260.z, x_1259.z);
        let x_1264 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1264);
        let x_1269 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1269);
        let x_1274 : bool = u_xlatb11.w;
        u_xlat50 = select(0.0f, 1.0f, x_1274);
        let x_1277 : bool = u_xlatb11.z;
        if (x_1277) {
          let x_1282 : f32 = u_xlat11.y;
          x_1278 = x_1282;
        } else {
          let x_1284 : f32 = u_xlat50;
          x_1278 = x_1284;
        }
        let x_1285 : f32 = x_1278;
        u_xlat50 = x_1285;
        let x_1287 : bool = u_xlatb49;
        if (x_1287) {
          let x_1292 : f32 = u_xlat11.x;
          x_1288 = x_1292;
        } else {
          let x_1294 : f32 = u_xlat50;
          x_1288 = x_1294;
        }
        let x_1295 : f32 = x_1288;
        u_xlat49 = x_1295;
        let x_1296 : i32 = u_xlati45;
        let x_1298 : f32 = x_279.x_AdditionalShadowParams[x_1296].w;
        u_xlat50 = trunc(x_1298);
        let x_1300 : f32 = u_xlat49;
        let x_1301 : f32 = u_xlat50;
        u_xlat49 = (x_1300 + x_1301);
        let x_1303 : f32 = u_xlat49;
        u_xlati48 = i32(x_1303);
      }
      let x_1305 : i32 = u_xlati48;
      u_xlati48 = (x_1305 << bitcast<u32>(2i));
      let x_1307 : vec3<f32> = vs_TEXCOORD1;
      let x_1310 : i32 = u_xlati48;
      let x_1313 : i32 = u_xlati48;
      let x_1317 : vec4<f32> = x_279.x_AdditionalLightsWorldToShadow[((x_1310 + 1i) / 4i)][((x_1313 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1307.y, x_1307.y, x_1307.y, x_1307.y) * x_1317);
      let x_1319 : i32 = u_xlati48;
      let x_1321 : i32 = u_xlati48;
      let x_1324 : vec4<f32> = x_279.x_AdditionalLightsWorldToShadow[(x_1319 / 4i)][(x_1321 % 4i)];
      let x_1325 : vec3<f32> = vs_TEXCOORD1;
      let x_1328 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1324 * vec4<f32>(x_1325.x, x_1325.x, x_1325.x, x_1325.x)) + x_1328);
      let x_1330 : i32 = u_xlati48;
      let x_1333 : i32 = u_xlati48;
      let x_1337 : vec4<f32> = x_279.x_AdditionalLightsWorldToShadow[((x_1330 + 2i) / 4i)][((x_1333 + 2i) % 4i)];
      let x_1338 : vec3<f32> = vs_TEXCOORD1;
      let x_1341 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1337 * vec4<f32>(x_1338.z, x_1338.z, x_1338.z, x_1338.z)) + x_1341);
      let x_1343 : vec4<f32> = u_xlat11;
      let x_1344 : i32 = u_xlati48;
      let x_1347 : i32 = u_xlati48;
      let x_1351 : vec4<f32> = x_279.x_AdditionalLightsWorldToShadow[((x_1344 + 3i) / 4i)][((x_1347 + 3i) % 4i)];
      u_xlat11 = (x_1343 + x_1351);
      let x_1353 : vec4<f32> = u_xlat11;
      let x_1355 : vec4<f32> = u_xlat11;
      let x_1357 : vec3<f32> = (vec3<f32>(x_1353.x, x_1353.y, x_1353.z) / vec3<f32>(x_1355.w, x_1355.w, x_1355.w));
      let x_1358 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
      let x_1361 : vec4<f32> = u_xlat11;
      let x_1362 : vec2<f32> = vec2<f32>(x_1361.x, x_1361.y);
      let x_1364 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
      let x_1372 : vec3<f32> = txVec1;
      let x_1374 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1372.xy, x_1372.z);
      u_xlat48 = x_1374;
      let x_1375 : i32 = u_xlati45;
      let x_1377 : f32 = x_279.x_AdditionalShadowParams[x_1375].x;
      u_xlat49 = (1.0f + -(x_1377));
      let x_1380 : f32 = u_xlat48;
      let x_1381 : i32 = u_xlati45;
      let x_1383 : f32 = x_279.x_AdditionalShadowParams[x_1381].x;
      let x_1385 : f32 = u_xlat49;
      u_xlat48 = ((x_1380 * x_1383) + x_1385);
      let x_1388 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_1388);
      let x_1392 : f32 = u_xlat11.z;
      u_xlatb50 = (x_1392 >= 1.0f);
      let x_1394 : bool = u_xlatb49;
      let x_1395 : bool = u_xlatb50;
      u_xlatb49 = (x_1394 | x_1395);
      let x_1397 : bool = u_xlatb49;
      let x_1398 : f32 = u_xlat48;
      u_xlat48 = select(x_1398, 1.0f, x_1397);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_1401 : f32 = u_xlat48;
    u_xlat49 = (-(x_1401) + 1.0f);
    let x_1405 : f32 = u_xlat1.x;
    let x_1406 : f32 = u_xlat49;
    let x_1408 : f32 = u_xlat48;
    u_xlat48 = ((x_1405 * x_1406) + x_1408);
    let x_1411 : i32 = u_xlati45;
    u_xlati49 = (1i << bitcast<u32>((x_1411 & 31i)));
    let x_1415 : i32 = u_xlati49;
    let x_1418 : f32 = x_691.x_AdditionalLightsCookieEnableBits;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1415) & bitcast<u32>(x_1418)));
    let x_1422 : i32 = u_xlati49;
    if ((x_1422 != 0i)) {
      let x_1426 : i32 = u_xlati45;
      let x_1428 : f32 = x_691.x_AdditionalLightsLightTypes[x_1426].el;
      u_xlati49 = i32(x_1428);
      let x_1431 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1431 != 0i));
      let x_1435 : i32 = u_xlati45;
      u_xlati52 = (x_1435 << bitcast<u32>(2i));
      let x_1437 : i32 = u_xlati50;
      if ((x_1437 != 0i)) {
        let x_1441 : vec3<f32> = vs_TEXCOORD1;
        let x_1443 : i32 = u_xlati52;
        let x_1446 : i32 = u_xlati52;
        let x_1450 : vec4<f32> = x_691.x_AdditionalLightsWorldToLights[((x_1443 + 1i) / 4i)][((x_1446 + 1i) % 4i)];
        let x_1452 : vec3<f32> = (vec3<f32>(x_1441.y, x_1441.y, x_1441.y) * vec3<f32>(x_1450.x, x_1450.y, x_1450.w));
        let x_1453 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1453.w);
        let x_1455 : i32 = u_xlati52;
        let x_1457 : i32 = u_xlati52;
        let x_1460 : vec4<f32> = x_691.x_AdditionalLightsWorldToLights[(x_1455 / 4i)][(x_1457 % 4i)];
        let x_1462 : vec3<f32> = vs_TEXCOORD1;
        let x_1465 : vec4<f32> = u_xlat11;
        let x_1467 : vec3<f32> = ((vec3<f32>(x_1460.x, x_1460.y, x_1460.w) * vec3<f32>(x_1462.x, x_1462.x, x_1462.x)) + vec3<f32>(x_1465.x, x_1465.y, x_1465.z));
        let x_1468 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1467.x, x_1467.y, x_1467.z, x_1468.w);
        let x_1470 : i32 = u_xlati52;
        let x_1473 : i32 = u_xlati52;
        let x_1477 : vec4<f32> = x_691.x_AdditionalLightsWorldToLights[((x_1470 + 2i) / 4i)][((x_1473 + 2i) % 4i)];
        let x_1479 : vec3<f32> = vs_TEXCOORD1;
        let x_1482 : vec4<f32> = u_xlat11;
        let x_1484 : vec3<f32> = ((vec3<f32>(x_1477.x, x_1477.y, x_1477.w) * vec3<f32>(x_1479.z, x_1479.z, x_1479.z)) + vec3<f32>(x_1482.x, x_1482.y, x_1482.z));
        let x_1485 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1484.x, x_1484.y, x_1484.z, x_1485.w);
        let x_1487 : vec4<f32> = u_xlat11;
        let x_1489 : i32 = u_xlati52;
        let x_1492 : i32 = u_xlati52;
        let x_1496 : vec4<f32> = x_691.x_AdditionalLightsWorldToLights[((x_1489 + 3i) / 4i)][((x_1492 + 3i) % 4i)];
        let x_1498 : vec3<f32> = (vec3<f32>(x_1487.x, x_1487.y, x_1487.z) + vec3<f32>(x_1496.x, x_1496.y, x_1496.w));
        let x_1499 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1498.x, x_1498.y, x_1498.z, x_1499.w);
        let x_1501 : vec4<f32> = u_xlat11;
        let x_1503 : vec4<f32> = u_xlat11;
        let x_1505 : vec2<f32> = (vec2<f32>(x_1501.x, x_1501.y) / vec2<f32>(x_1503.z, x_1503.z));
        let x_1506 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1505.x, x_1505.y, x_1506.z, x_1506.w);
        let x_1508 : vec4<f32> = u_xlat11;
        let x_1511 : vec2<f32> = ((vec2<f32>(x_1508.x, x_1508.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1512 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1511.x, x_1511.y, x_1512.z, x_1512.w);
        let x_1514 : vec4<f32> = u_xlat11;
        let x_1518 : vec2<f32> = clamp(vec2<f32>(x_1514.x, x_1514.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1519 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1518.x, x_1518.y, x_1519.z, x_1519.w);
        let x_1521 : i32 = u_xlati45;
        let x_1523 : vec4<f32> = x_691.x_AdditionalLightsCookieAtlasUVRects[x_1521];
        let x_1525 : vec4<f32> = u_xlat11;
        let x_1528 : i32 = u_xlati45;
        let x_1530 : vec4<f32> = x_691.x_AdditionalLightsCookieAtlasUVRects[x_1528];
        let x_1532 : vec2<f32> = ((vec2<f32>(x_1523.x, x_1523.y) * vec2<f32>(x_1525.x, x_1525.y)) + vec2<f32>(x_1530.z, x_1530.w));
        let x_1533 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1532.x, x_1532.y, x_1533.z, x_1533.w);
      } else {
        let x_1536 : i32 = u_xlati49;
        u_xlatb49 = (x_1536 == 1i);
        let x_1538 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1538);
        let x_1540 : i32 = u_xlati49;
        if ((x_1540 != 0i)) {
          let x_1545 : vec3<f32> = vs_TEXCOORD1;
          let x_1547 : i32 = u_xlati52;
          let x_1550 : i32 = u_xlati52;
          let x_1554 : vec4<f32> = x_691.x_AdditionalLightsWorldToLights[((x_1547 + 1i) / 4i)][((x_1550 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1545.y, x_1545.y) * vec2<f32>(x_1554.x, x_1554.y));
          let x_1557 : i32 = u_xlati52;
          let x_1559 : i32 = u_xlati52;
          let x_1562 : vec4<f32> = x_691.x_AdditionalLightsWorldToLights[(x_1557 / 4i)][(x_1559 % 4i)];
          let x_1564 : vec3<f32> = vs_TEXCOORD1;
          let x_1567 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1562.x, x_1562.y) * vec2<f32>(x_1564.x, x_1564.x)) + x_1567);
          let x_1569 : i32 = u_xlati52;
          let x_1572 : i32 = u_xlati52;
          let x_1576 : vec4<f32> = x_691.x_AdditionalLightsWorldToLights[((x_1569 + 2i) / 4i)][((x_1572 + 2i) % 4i)];
          let x_1578 : vec3<f32> = vs_TEXCOORD1;
          let x_1581 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1576.x, x_1576.y) * vec2<f32>(x_1578.z, x_1578.z)) + x_1581);
          let x_1583 : vec2<f32> = u_xlat39;
          let x_1584 : i32 = u_xlati52;
          let x_1587 : i32 = u_xlati52;
          let x_1591 : vec4<f32> = x_691.x_AdditionalLightsWorldToLights[((x_1584 + 3i) / 4i)][((x_1587 + 3i) % 4i)];
          u_xlat39 = (x_1583 + vec2<f32>(x_1591.x, x_1591.y));
          let x_1594 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1594 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1597 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1597);
          let x_1599 : i32 = u_xlati45;
          let x_1601 : vec4<f32> = x_691.x_AdditionalLightsCookieAtlasUVRects[x_1599];
          let x_1603 : vec2<f32> = u_xlat39;
          let x_1605 : i32 = u_xlati45;
          let x_1607 : vec4<f32> = x_691.x_AdditionalLightsCookieAtlasUVRects[x_1605];
          let x_1609 : vec2<f32> = ((vec2<f32>(x_1601.x, x_1601.y) * x_1603) + vec2<f32>(x_1607.z, x_1607.w));
          let x_1610 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1609.x, x_1609.y, x_1610.z, x_1610.w);
        } else {
          let x_1614 : vec3<f32> = vs_TEXCOORD1;
          let x_1616 : i32 = u_xlati52;
          let x_1619 : i32 = u_xlati52;
          let x_1623 : vec4<f32> = x_691.x_AdditionalLightsWorldToLights[((x_1616 + 1i) / 4i)][((x_1619 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1614.y, x_1614.y, x_1614.y, x_1614.y) * x_1623);
          let x_1625 : i32 = u_xlati52;
          let x_1627 : i32 = u_xlati52;
          let x_1630 : vec4<f32> = x_691.x_AdditionalLightsWorldToLights[(x_1625 / 4i)][(x_1627 % 4i)];
          let x_1631 : vec3<f32> = vs_TEXCOORD1;
          let x_1634 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1630 * vec4<f32>(x_1631.x, x_1631.x, x_1631.x, x_1631.x)) + x_1634);
          let x_1636 : i32 = u_xlati52;
          let x_1639 : i32 = u_xlati52;
          let x_1643 : vec4<f32> = x_691.x_AdditionalLightsWorldToLights[((x_1636 + 2i) / 4i)][((x_1639 + 2i) % 4i)];
          let x_1644 : vec3<f32> = vs_TEXCOORD1;
          let x_1647 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1643 * vec4<f32>(x_1644.z, x_1644.z, x_1644.z, x_1644.z)) + x_1647);
          let x_1649 : vec4<f32> = u_xlat12;
          let x_1650 : i32 = u_xlati52;
          let x_1653 : i32 = u_xlati52;
          let x_1657 : vec4<f32> = x_691.x_AdditionalLightsWorldToLights[((x_1650 + 3i) / 4i)][((x_1653 + 3i) % 4i)];
          u_xlat12 = (x_1649 + x_1657);
          let x_1659 : vec4<f32> = u_xlat12;
          let x_1661 : vec4<f32> = u_xlat12;
          let x_1663 : vec3<f32> = (vec3<f32>(x_1659.x, x_1659.y, x_1659.z) / vec3<f32>(x_1661.w, x_1661.w, x_1661.w));
          let x_1664 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1663.x, x_1663.y, x_1663.z, x_1664.w);
          let x_1666 : vec4<f32> = u_xlat12;
          let x_1668 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1666.x, x_1666.y, x_1666.z), vec3<f32>(x_1668.x, x_1668.y, x_1668.z));
          let x_1671 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1671);
          let x_1673 : f32 = u_xlat49;
          let x_1675 : vec4<f32> = u_xlat12;
          let x_1677 : vec3<f32> = (vec3<f32>(x_1673, x_1673, x_1673) * vec3<f32>(x_1675.x, x_1675.y, x_1675.z));
          let x_1678 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1678.w);
          let x_1680 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1680.x, x_1680.y, x_1680.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1685 : f32 = u_xlat49;
          u_xlat49 = max(x_1685, 0.00000099999999747524f);
          let x_1688 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1688);
          let x_1691 : f32 = u_xlat49;
          let x_1693 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1691, x_1691, x_1691) * vec3<f32>(x_1693.z, x_1693.x, x_1693.y));
          let x_1697 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1697);
          let x_1701 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1701, 0.0f, 1.0f);
          let x_1705 : vec3<f32> = u_xlat13;
          let x_1707 : vec4<bool> = (vec4<f32>(x_1705.y, x_1705.z, x_1705.y, x_1705.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1707.x, x_1707.y);
          let x_1710 : bool = u_xlatb39.x;
          if (x_1710) {
            let x_1715 : f32 = u_xlat13.x;
            x_1711 = x_1715;
          } else {
            let x_1718 : f32 = u_xlat13.x;
            x_1711 = -(x_1718);
          }
          let x_1720 : f32 = x_1711;
          u_xlat39.x = x_1720;
          let x_1723 : bool = u_xlatb39.y;
          if (x_1723) {
            let x_1728 : f32 = u_xlat13.x;
            x_1724 = x_1728;
          } else {
            let x_1731 : f32 = u_xlat13.x;
            x_1724 = -(x_1731);
          }
          let x_1733 : f32 = x_1724;
          u_xlat39.y = x_1733;
          let x_1735 : vec4<f32> = u_xlat12;
          let x_1737 : f32 = u_xlat49;
          let x_1740 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1735.x, x_1735.y) * vec2<f32>(x_1737, x_1737)) + x_1740);
          let x_1742 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1742 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1745 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1745, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1749 : i32 = u_xlati45;
          let x_1751 : vec4<f32> = x_691.x_AdditionalLightsCookieAtlasUVRects[x_1749];
          let x_1753 : vec2<f32> = u_xlat39;
          let x_1755 : i32 = u_xlati45;
          let x_1757 : vec4<f32> = x_691.x_AdditionalLightsCookieAtlasUVRects[x_1755];
          let x_1759 : vec2<f32> = ((vec2<f32>(x_1751.x, x_1751.y) * x_1753) + vec2<f32>(x_1757.z, x_1757.w));
          let x_1760 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1759.x, x_1759.y, x_1760.z, x_1760.w);
        }
      }
      let x_1767 : vec4<f32> = u_xlat11;
      let x_1769 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1767.x, x_1767.y), 0.0f);
      u_xlat11 = x_1769;
      let x_1771 : bool = u_xlatb17.y;
      if (x_1771) {
        let x_1776 : f32 = u_xlat11.w;
        x_1772 = x_1776;
      } else {
        let x_1779 : f32 = u_xlat11.x;
        x_1772 = x_1779;
      }
      let x_1780 : f32 = x_1772;
      u_xlat49 = x_1780;
      let x_1782 : bool = u_xlatb17.x;
      if (x_1782) {
        let x_1786 : vec4<f32> = u_xlat11;
        x_1783 = vec3<f32>(x_1786.x, x_1786.y, x_1786.z);
      } else {
        let x_1789 : f32 = u_xlat49;
        x_1783 = vec3<f32>(x_1789, x_1789, x_1789);
      }
      let x_1791 : vec3<f32> = x_1783;
      let x_1792 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1791.x, x_1791.y, x_1791.z, x_1792.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1798 : vec4<f32> = u_xlat11;
    let x_1800 : i32 = u_xlati45;
    let x_1802 : vec4<f32> = x_1147.x_AdditionalLightsColor[x_1800];
    let x_1804 : vec3<f32> = (vec3<f32>(x_1798.x, x_1798.y, x_1798.z) * vec3<f32>(x_1802.x, x_1802.y, x_1802.z));
    let x_1805 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1805.w);
    let x_1807 : f32 = u_xlat46;
    let x_1808 : f32 = u_xlat48;
    u_xlat45 = (x_1807 * x_1808);
    let x_1810 : vec4<f32> = u_xlat4;
    let x_1812 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_1810.x, x_1810.y, x_1810.z), x_1812);
    let x_1814 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1814, 0.0f, 1.0f);
    let x_1816 : f32 = u_xlat45;
    let x_1817 : f32 = u_xlat46;
    u_xlat45 = (x_1816 * x_1817);
    let x_1819 : f32 = u_xlat45;
    let x_1821 : vec4<f32> = u_xlat11;
    let x_1823 : vec3<f32> = (vec3<f32>(x_1819, x_1819, x_1819) * vec3<f32>(x_1821.x, x_1821.y, x_1821.z));
    let x_1824 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1823.x, x_1823.y, x_1823.z, x_1824.w);
    let x_1826 : vec3<f32> = u_xlat23;
    let x_1827 : f32 = u_xlat47;
    let x_1830 : vec3<f32> = u_xlat5;
    u_xlat23 = ((x_1826 * vec3<f32>(x_1827, x_1827, x_1827)) + x_1830);
    let x_1832 : vec3<f32> = u_xlat23;
    let x_1833 : vec3<f32> = u_xlat23;
    u_xlat45 = dot(x_1832, x_1833);
    let x_1835 : f32 = u_xlat45;
    u_xlat45 = max(x_1835, 1.17549435e-38f);
    let x_1837 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1837);
    let x_1839 : f32 = u_xlat45;
    let x_1841 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1839, x_1839, x_1839) * x_1841);
    let x_1843 : vec4<f32> = u_xlat4;
    let x_1845 : vec3<f32> = u_xlat23;
    u_xlat45 = dot(vec3<f32>(x_1843.x, x_1843.y, x_1843.z), x_1845);
    let x_1847 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1847, 0.0f, 1.0f);
    let x_1849 : vec3<f32> = u_xlat10;
    let x_1850 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(x_1849, x_1850);
    let x_1852 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1852, 0.0f, 1.0f);
    let x_1854 : f32 = u_xlat45;
    let x_1855 : f32 = u_xlat45;
    u_xlat45 = (x_1854 * x_1855);
    let x_1857 : f32 = u_xlat45;
    let x_1859 : f32 = u_xlat9.x;
    u_xlat45 = ((x_1857 * x_1859) + 1.00001001358032226562f);
    let x_1862 : f32 = u_xlat46;
    let x_1863 : f32 = u_xlat46;
    u_xlat46 = (x_1862 * x_1863);
    let x_1865 : f32 = u_xlat45;
    let x_1866 : f32 = u_xlat45;
    u_xlat45 = (x_1865 * x_1866);
    let x_1868 : f32 = u_xlat46;
    u_xlat46 = max(x_1868, 0.10000000149011611938f);
    let x_1870 : f32 = u_xlat45;
    let x_1871 : f32 = u_xlat46;
    u_xlat45 = (x_1870 * x_1871);
    let x_1874 : f32 = u_xlat29.x;
    let x_1875 : f32 = u_xlat45;
    u_xlat45 = (x_1874 * x_1875);
    let x_1877 : f32 = u_xlat43;
    let x_1878 : f32 = u_xlat45;
    u_xlat45 = (x_1877 / x_1878);
    let x_1880 : vec4<f32> = u_xlat0;
    let x_1882 : f32 = u_xlat45;
    let x_1885 : vec3<f32> = u_xlat16;
    u_xlat23 = ((vec3<f32>(x_1880.x, x_1880.y, x_1880.z) * vec3<f32>(x_1882, x_1882, x_1882)) + x_1885);
    let x_1887 : vec3<f32> = u_xlat23;
    let x_1888 : vec4<f32> = u_xlat11;
    let x_1891 : vec4<f32> = u_xlat8;
    let x_1893 : vec3<f32> = ((x_1887 * vec3<f32>(x_1888.x, x_1888.y, x_1888.z)) + vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
    let x_1894 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);

    continuing {
      let x_1896 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1896 + bitcast<u32>(1i));
    }
  }
  let x_1898 : vec3<f32> = u_xlat6;
  let x_1899 : vec3<f32> = u_xlat3;
  let x_1902 : vec4<f32> = u_xlat7;
  let x_1904 : vec3<f32> = ((x_1898 * vec3<f32>(x_1899.x, x_1899.x, x_1899.x)) + vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
  let x_1905 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1904.x, x_1904.y, x_1904.z, x_1905.w);
  let x_1909 : vec4<f32> = u_xlat8;
  let x_1911 : vec4<f32> = u_xlat0;
  let x_1913 : vec3<f32> = (vec3<f32>(x_1909.x, x_1909.y, x_1909.z) + vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
  let x_1914 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1913.x, x_1913.y, x_1913.z, x_1914.w);
  let x_1918 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_1918 == 1.0f);
  let x_1920 : bool = u_xlatb0;
  if (x_1920) {
    let x_1925 : f32 = u_xlat2.x;
    x_1921 = x_1925;
  } else {
    x_1921 = 1.0f;
  }
  let x_1927 : f32 = x_1921;
  SV_Target0.w = x_1927;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


