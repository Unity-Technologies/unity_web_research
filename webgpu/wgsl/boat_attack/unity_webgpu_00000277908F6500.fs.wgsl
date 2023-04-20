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

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_54 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_BumpMap : sampler;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat42 : f32;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_OcclusionMap : sampler;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlatb17 : bool;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(18) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_447 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

@group(1) @binding(5) var<uniform> x_516 : LightCookies;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_707 : UnityPerDraw;

var<private> u_xlatu15 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1020 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu47 : u32;

fn main_1() {
  var x_187 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_602 : f32;
  var x_613 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1153 : f32;
  var x_1163 : f32;
  var txVec1 : vec3<f32>;
  var x_1593 : f32;
  var x_1606 : f32;
  var x_1664 : f32;
  var x_1675 : vec3<f32>;
  var x_1862 : f32;
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
  let x_150 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb17 = (x_150 == 0.0f);
  let x_156 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_156) + x_161);
  let x_164 : vec3<f32> = u_xlat4;
  let x_165 : vec3<f32> = u_xlat4;
  u_xlat31 = dot(x_164, x_165);
  let x_167 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_167);
  let x_169 : f32 = u_xlat31;
  let x_171 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_169, x_169, x_169) * x_171);
  let x_176 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat5.x = x_176;
  let x_180 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat5.y = x_180;
  let x_183 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat5.z = x_183;
  let x_185 : bool = u_xlatb17;
  if (x_185) {
    let x_190 : vec3<f32> = u_xlat4;
    x_187 = x_190;
  } else {
    let x_192 : vec4<f32> = u_xlat5;
    x_187 = vec3<f32>(x_192.x, x_192.y, x_192.z);
  }
  let x_194 : vec3<f32> = x_187;
  u_xlat17 = x_194;
  let x_196 : vec3<f32> = vs_TEXCOORD2;
  let x_200 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (vec3<f32>(x_196.z, x_196.x, x_196.y) * vec3<f32>(x_200.y, x_200.z, x_200.x));
  let x_203 : vec3<f32> = vs_TEXCOORD2;
  let x_205 : vec4<f32> = vs_TEXCOORD3;
  let x_208 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_203.y, x_203.z, x_203.x) * vec3<f32>(x_205.z, x_205.x, x_205.y)) + -(x_208));
  let x_211 : vec3<f32> = u_xlat4;
  let x_212 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (x_211 * vec3<f32>(x_212.w, x_212.w, x_212.w));
  let x_215 : vec2<f32> = u_xlat29;
  let x_217 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_215.y, x_215.y, x_215.y) * x_217);
  let x_219 : vec2<f32> = u_xlat29;
  let x_221 : vec4<f32> = vs_TEXCOORD3;
  let x_224 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_219.x, x_219.x, x_219.x) * vec3<f32>(x_221.x, x_221.y, x_221.z)) + x_224);
  let x_226 : f32 = u_xlat42;
  let x_228 : vec3<f32> = vs_TEXCOORD2;
  let x_230 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_226, x_226, x_226) * x_228) + x_230);
  let x_232 : vec3<f32> = u_xlat4;
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat42 = dot(x_232, x_233);
  let x_235 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_235);
  let x_237 : f32 = u_xlat42;
  let x_239 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_237, x_237, x_237) * x_239);
  let x_243 : f32 = vs_TEXCOORD1.y;
  let x_245 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat42 = (x_243 * x_245);
  let x_248 : f32 = x_28.unity_MatrixV[0i].z;
  let x_250 : f32 = vs_TEXCOORD1.x;
  let x_252 : f32 = u_xlat42;
  u_xlat42 = ((x_248 * x_250) + x_252);
  let x_255 : f32 = x_28.unity_MatrixV[2i].z;
  let x_257 : f32 = vs_TEXCOORD1.z;
  let x_259 : f32 = u_xlat42;
  u_xlat42 = ((x_255 * x_257) + x_259);
  let x_261 : f32 = u_xlat42;
  let x_264 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat42 = (x_261 + x_264);
  let x_266 : f32 = u_xlat42;
  let x_270 : f32 = x_28.x_ProjectionParams.y;
  u_xlat42 = (-(x_266) + -(x_270));
  let x_273 : f32 = u_xlat42;
  u_xlat42 = max(x_273, 0.0f);
  let x_275 : f32 = u_xlat42;
  let x_278 : f32 = x_28.unity_FogParams.x;
  u_xlat42 = (x_275 * x_278);
  let x_286 : vec2<f32> = vs_TEXCOORD8;
  let x_288 : f32 = x_28.x_GlobalMipBias.x;
  let x_289 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_286, x_288);
  u_xlat5 = x_289;
  let x_295 : vec2<f32> = vs_TEXCOORD8;
  let x_297 : f32 = x_28.x_GlobalMipBias.x;
  let x_298 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_295, x_297);
  u_xlat6 = vec3<f32>(x_298.x, x_298.y, x_298.z);
  let x_300 : vec4<f32> = u_xlat5;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_305 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec3<f32> = u_xlat4;
  let x_308 : vec4<f32> = u_xlat5;
  u_xlat29.x = dot(x_307, vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_313 : f32 = u_xlat29.x;
  u_xlat29.x = (x_313 + 0.5f);
  let x_317 : vec2<f32> = u_xlat29;
  let x_319 : vec3<f32> = u_xlat6;
  let x_320 : vec3<f32> = (vec3<f32>(x_317.x, x_317.x, x_317.x) * x_319);
  let x_321 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_324 : f32 = u_xlat5.w;
  u_xlat29.x = max(x_324, 0.00009999999747378752f);
  let x_328 : vec4<f32> = u_xlat5;
  let x_330 : vec2<f32> = u_xlat29;
  let x_332 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) / vec3<f32>(x_330.x, x_330.x, x_330.x));
  let x_333 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_336 : f32 = u_xlat1.x;
  u_xlat29.x = ((-(x_336) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_344 : f32 = u_xlat1.y;
  let x_346 : f32 = x_54.x_Smoothness;
  let x_349 : f32 = u_xlat29.x;
  u_xlat43 = ((x_344 * x_346) + -(x_349));
  let x_353 : vec2<f32> = u_xlat29;
  let x_355 : vec4<f32> = u_xlat2;
  u_xlat16 = (vec3<f32>(x_353.x, x_353.x, x_353.x) * vec3<f32>(x_355.y, x_355.z, x_355.w));
  let x_358 : vec4<f32> = u_xlat0;
  let x_361 : vec4<f32> = x_54.x_BaseColor;
  let x_366 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_361.x, x_361.y, x_361.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_367 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : vec2<f32> = u_xlat1;
  let x_371 : vec4<f32> = u_xlat0;
  let x_376 : vec3<f32> = ((vec3<f32>(x_369.x, x_369.x, x_369.x) * vec3<f32>(x_371.x, x_371.y, x_371.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_377 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : f32 = u_xlat1.y;
  let x_383 : f32 = x_54.x_Smoothness;
  u_xlat1.x = ((-(x_380) * x_383) + 1.0f);
  let x_389 : f32 = u_xlat1.x;
  let x_391 : f32 = u_xlat1.x;
  u_xlat15.x = (x_389 * x_391);
  let x_395 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_395, 0.0078125f);
  let x_400 : f32 = u_xlat15.x;
  let x_402 : f32 = u_xlat15.x;
  u_xlat29.x = (x_400 * x_402);
  let x_405 : f32 = u_xlat43;
  u_xlat43 = (x_405 + 1.0f);
  let x_407 : f32 = u_xlat43;
  u_xlat43 = clamp(x_407, 0.0f, 1.0f);
  let x_411 : f32 = u_xlat15.x;
  u_xlat46 = ((x_411 * 4.0f) + 2.0f);
  let x_416 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_416, 1.0f);
  let x_421 : vec4<f32> = vs_TEXCOORD6;
  let x_422 : vec2<f32> = vec2<f32>(x_421.x, x_421.y);
  let x_424 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_422.x, x_422.y, x_424);
  let x_437 : vec3<f32> = txVec0;
  let x_439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_437.xy, x_437.z);
  u_xlat47 = x_439;
  let x_449 : f32 = x_447.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_449) + 1.0f);
  let x_453 : f32 = u_xlat47;
  let x_455 : f32 = x_447.x_MainLightShadowParams.x;
  let x_458 : f32 = u_xlat6.x;
  u_xlat47 = ((x_453 * x_455) + x_458);
  let x_462 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_462);
  let x_468 : f32 = vs_TEXCOORD6.z;
  u_xlatb20.x = (x_468 >= 1.0f);
  let x_472 : bool = u_xlatb20.x;
  let x_473 : bool = u_xlatb6;
  u_xlatb6 = (x_472 | x_473);
  let x_475 : bool = u_xlatb6;
  let x_476 : f32 = u_xlat47;
  u_xlat47 = select(x_476, 1.0f, x_475);
  let x_478 : vec3<f32> = vs_TEXCOORD1;
  let x_480 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat6 = (x_478 + -(x_480));
  let x_483 : vec3<f32> = u_xlat6;
  let x_484 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_483, x_484);
  let x_489 : f32 = u_xlat6.x;
  let x_491 : f32 = x_447.x_MainLightShadowParams.z;
  let x_494 : f32 = x_447.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_489 * x_491) + x_494);
  let x_498 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_498, 0.0f, 1.0f);
  let x_502 : f32 = u_xlat47;
  u_xlat34 = (-(x_502) + 1.0f);
  let x_506 : f32 = u_xlat20.x;
  let x_507 : f32 = u_xlat34;
  let x_509 : f32 = u_xlat47;
  u_xlat47 = ((x_506 * x_507) + x_509);
  let x_518 : f32 = x_516.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_518 == -1.0f));
  let x_522 : bool = u_xlatb20.x;
  if (x_522) {
    let x_525 : vec3<f32> = vs_TEXCOORD1;
    let x_528 : vec4<f32> = x_516.x_MainLightWorldToLight[1i];
    let x_530 : vec2<f32> = (vec2<f32>(x_525.y, x_525.y) * vec2<f32>(x_528.x, x_528.y));
    let x_531 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_530.x, x_530.y, x_531.z);
    let x_534 : vec4<f32> = x_516.x_MainLightWorldToLight[0i];
    let x_536 : vec3<f32> = vs_TEXCOORD1;
    let x_539 : vec3<f32> = u_xlat20;
    let x_541 : vec2<f32> = ((vec2<f32>(x_534.x, x_534.y) * vec2<f32>(x_536.x, x_536.x)) + vec2<f32>(x_539.x, x_539.y));
    let x_542 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_541.x, x_541.y, x_542.z);
    let x_545 : vec4<f32> = x_516.x_MainLightWorldToLight[2i];
    let x_547 : vec3<f32> = vs_TEXCOORD1;
    let x_550 : vec3<f32> = u_xlat20;
    let x_552 : vec2<f32> = ((vec2<f32>(x_545.x, x_545.y) * vec2<f32>(x_547.z, x_547.z)) + vec2<f32>(x_550.x, x_550.y));
    let x_553 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_552.x, x_552.y, x_553.z);
    let x_555 : vec3<f32> = u_xlat20;
    let x_558 : vec4<f32> = x_516.x_MainLightWorldToLight[3i];
    let x_560 : vec2<f32> = (vec2<f32>(x_555.x, x_555.y) + vec2<f32>(x_558.x, x_558.y));
    let x_561 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_560.x, x_560.y, x_561.z);
    let x_563 : vec3<f32> = u_xlat20;
    let x_567 : vec2<f32> = ((vec2<f32>(x_563.x, x_563.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_568 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_567.x, x_567.y, x_568.z);
    let x_576 : vec3<f32> = u_xlat20;
    let x_579 : f32 = x_28.x_GlobalMipBias.x;
    let x_580 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_576.x, x_576.y), x_579);
    u_xlat7 = x_580;
    let x_582 : f32 = x_516.x_MainLightCookieTextureFormat;
    let x_584 : f32 = x_516.x_MainLightCookieTextureFormat;
    let x_586 : f32 = x_516.x_MainLightCookieTextureFormat;
    let x_588 : f32 = x_516.x_MainLightCookieTextureFormat;
    let x_589 : vec4<f32> = vec4<f32>(x_582, x_584, x_586, x_588);
    let x_597 : vec4<bool> = (vec4<f32>(x_589.x, x_589.y, x_589.z, x_589.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_597.x, x_597.y);
    let x_600 : bool = u_xlatb20.y;
    if (x_600) {
      let x_606 : f32 = u_xlat7.w;
      x_602 = x_606;
    } else {
      let x_609 : f32 = u_xlat7.x;
      x_602 = x_609;
    }
    let x_610 : f32 = x_602;
    u_xlat34 = x_610;
    let x_612 : bool = u_xlatb20.x;
    if (x_612) {
      let x_616 : vec4<f32> = u_xlat7;
      x_613 = vec3<f32>(x_616.x, x_616.y, x_616.z);
    } else {
      let x_619 : f32 = u_xlat34;
      x_613 = vec3<f32>(x_619, x_619, x_619);
    }
    let x_621 : vec3<f32> = x_613;
    u_xlat20 = x_621;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_626 : vec3<f32> = u_xlat20;
  let x_628 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat20 = (x_626 * vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_631 : vec3<f32> = u_xlat17;
  let x_633 : vec3<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_631), x_633);
  let x_637 : f32 = u_xlat7.x;
  let x_639 : f32 = u_xlat7.x;
  u_xlat7.x = (x_637 + x_639);
  let x_642 : vec3<f32> = u_xlat4;
  let x_643 : vec4<f32> = u_xlat7;
  let x_647 : vec3<f32> = u_xlat17;
  let x_649 : vec3<f32> = ((x_642 * -(vec3<f32>(x_643.x, x_643.x, x_643.x))) + -(x_647));
  let x_650 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_653 : vec3<f32> = u_xlat4;
  let x_654 : vec3<f32> = u_xlat17;
  u_xlat49 = dot(x_653, x_654);
  let x_656 : f32 = u_xlat49;
  u_xlat49 = clamp(x_656, 0.0f, 1.0f);
  let x_658 : f32 = u_xlat49;
  u_xlat49 = (-(x_658) + 1.0f);
  let x_661 : f32 = u_xlat49;
  let x_662 : f32 = u_xlat49;
  u_xlat49 = (x_661 * x_662);
  let x_664 : f32 = u_xlat49;
  let x_665 : f32 = u_xlat49;
  u_xlat49 = (x_664 * x_665);
  let x_669 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_669) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_677 : f32 = u_xlat1.x;
  let x_679 : f32 = u_xlat8.x;
  u_xlat1.x = (x_677 * x_679);
  let x_683 : f32 = u_xlat1.x;
  u_xlat1.x = (x_683 * 6.0f);
  let x_695 : vec4<f32> = u_xlat7;
  let x_698 : f32 = u_xlat1.x;
  let x_699 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_695.x, x_695.y, x_695.z), x_698);
  u_xlat8 = x_699;
  let x_701 : f32 = u_xlat8.w;
  u_xlat1.x = (x_701 + -1.0f);
  let x_709 : f32 = x_707.unity_SpecCube0_HDR.w;
  let x_711 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_709 * x_711) + 1.0f);
  let x_716 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_716, 0.0f);
  let x_720 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_720);
  let x_724 : f32 = u_xlat1.x;
  let x_726 : f32 = x_707.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_724 * x_726);
  let x_730 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_730);
  let x_734 : f32 = u_xlat1.x;
  let x_736 : f32 = x_707.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_734 * x_736);
  let x_739 : vec4<f32> = u_xlat8;
  let x_741 : vec2<f32> = u_xlat1;
  let x_743 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) * vec3<f32>(x_741.x, x_741.x, x_741.x));
  let x_744 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : vec3<f32> = u_xlat15;
  let x_748 : vec3<f32> = u_xlat15;
  u_xlat1 = ((vec2<f32>(x_746.x, x_746.x) * vec2<f32>(x_748.x, x_748.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_754 : f32 = u_xlat1.y;
  u_xlat15.x = (1.0f / x_754);
  let x_757 : vec4<f32> = u_xlat0;
  let x_760 : f32 = u_xlat43;
  let x_762 : vec3<f32> = (-(vec3<f32>(x_757.x, x_757.y, x_757.z)) + vec3<f32>(x_760, x_760, x_760));
  let x_763 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : f32 = u_xlat49;
  let x_767 : vec4<f32> = u_xlat8;
  let x_770 : vec4<f32> = u_xlat0;
  let x_772 : vec3<f32> = ((vec3<f32>(x_765, x_765, x_765) * vec3<f32>(x_767.x, x_767.y, x_767.z)) + vec3<f32>(x_770.x, x_770.y, x_770.z));
  let x_773 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_775 : vec3<f32> = u_xlat15;
  let x_777 : vec4<f32> = u_xlat8;
  let x_779 : vec3<f32> = (vec3<f32>(x_775.x, x_775.x, x_775.x) * vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec4<f32> = u_xlat7;
  let x_784 : vec4<f32> = u_xlat8;
  let x_786 : vec3<f32> = (vec3<f32>(x_782.x, x_782.y, x_782.z) * vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_787 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_789 : vec4<f32> = u_xlat5;
  let x_791 : vec3<f32> = u_xlat16;
  let x_793 : vec4<f32> = u_xlat7;
  let x_795 : vec3<f32> = ((vec3<f32>(x_789.x, x_789.y, x_789.z) * x_791) + vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : f32 = u_xlat47;
  let x_800 : f32 = x_707.unity_LightData.z;
  u_xlat15.x = (x_798 * x_800);
  let x_803 : vec3<f32> = u_xlat4;
  let x_805 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat43 = dot(x_803, vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : f32 = u_xlat43;
  u_xlat43 = clamp(x_808, 0.0f, 1.0f);
  let x_810 : f32 = u_xlat43;
  let x_812 : f32 = u_xlat15.x;
  u_xlat15.x = (x_810 * x_812);
  let x_815 : vec3<f32> = u_xlat15;
  let x_817 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_815.x, x_815.x, x_815.x) * x_817);
  let x_819 : vec3<f32> = u_xlat17;
  let x_821 : vec4<f32> = x_28.x_MainLightPosition;
  let x_823 : vec3<f32> = (x_819 + vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_826 : vec4<f32> = u_xlat7;
  let x_828 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_826.x, x_826.y, x_826.z), vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_833 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_833, 1.17549435e-38f);
  let x_838 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_838);
  let x_841 : vec3<f32> = u_xlat15;
  let x_843 : vec4<f32> = u_xlat7;
  let x_845 : vec3<f32> = (vec3<f32>(x_841.x, x_841.x, x_841.x) * vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_848 : vec3<f32> = u_xlat4;
  let x_849 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(x_848, vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_854 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_854, 0.0f, 1.0f);
  let x_858 : vec4<f32> = x_28.x_MainLightPosition;
  let x_860 : vec4<f32> = u_xlat7;
  u_xlat15.z = dot(vec3<f32>(x_858.x, x_858.y, x_858.z), vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_865 : f32 = u_xlat15.z;
  u_xlat15.z = clamp(x_865, 0.0f, 1.0f);
  let x_868 : vec3<f32> = u_xlat15;
  let x_870 : vec3<f32> = u_xlat15;
  let x_872 : vec2<f32> = (vec2<f32>(x_868.x, x_868.z) * vec2<f32>(x_870.x, x_870.z));
  let x_873 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_872.x, x_873.y, x_872.y);
  let x_876 : f32 = u_xlat15.x;
  let x_878 : f32 = u_xlat1.x;
  u_xlat15.x = ((x_876 * x_878) + 1.00001001358032226562f);
  let x_884 : f32 = u_xlat15.x;
  let x_886 : f32 = u_xlat15.x;
  u_xlat15.x = (x_884 * x_886);
  let x_890 : f32 = u_xlat15.z;
  u_xlat43 = max(x_890, 0.10000000149011611938f);
  let x_893 : f32 = u_xlat43;
  let x_895 : f32 = u_xlat15.x;
  u_xlat15.x = (x_893 * x_895);
  let x_898 : f32 = u_xlat46;
  let x_900 : f32 = u_xlat15.x;
  u_xlat15.x = (x_898 * x_900);
  let x_904 : f32 = u_xlat29.x;
  let x_906 : f32 = u_xlat15.x;
  u_xlat15.x = (x_904 / x_906);
  let x_909 : vec4<f32> = u_xlat0;
  let x_911 : vec3<f32> = u_xlat15;
  let x_914 : vec3<f32> = u_xlat16;
  let x_915 : vec3<f32> = ((vec3<f32>(x_909.x, x_909.y, x_909.z) * vec3<f32>(x_911.x, x_911.x, x_911.x)) + x_914);
  let x_916 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec3<f32> = u_xlat20;
  let x_919 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_918 * vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_923 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_925 : f32 = x_707.unity_LightData.y;
  u_xlat15.x = min(x_923, x_925);
  let x_931 : f32 = u_xlat15.x;
  u_xlatu15 = bitcast<u32>(i32(x_931));
  let x_935 : f32 = u_xlat6.x;
  let x_938 : f32 = x_447.x_AdditionalShadowFadeParams.x;
  let x_941 : f32 = x_447.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_935 * x_938) + x_941);
  let x_943 : f32 = u_xlat43;
  u_xlat43 = clamp(x_943, 0.0f, 1.0f);
  let x_947 : f32 = x_516.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_949 : f32 = x_516.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_951 : f32 = x_516.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_953 : f32 = x_516.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_954 : vec4<f32> = vec4<f32>(x_947, x_949, x_951, x_953);
  let x_960 : vec4<bool> = (vec4<f32>(x_954.x, x_954.y, x_954.z, x_954.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_960.x, x_960.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_972 : u32 = u_xlatu_loop_1;
    let x_973 : u32 = u_xlatu15;
    if ((x_972 < x_973)) {
    } else {
      break;
    }
    let x_976 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_976 >> 2u);
    let x_980 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_980 & 3u));
    let x_983 : u32 = u_xlatu6;
    let x_986 : vec4<f32> = x_707.unity_LightIndices[bitcast<i32>(x_983)];
    let x_996 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1001 : vec4<u32> = indexable[x_996];
    u_xlat6.x = dot(x_986, bitcast<vec4<f32>>(x_1001));
    let x_1007 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1007);
    let x_1010 : vec3<f32> = vs_TEXCOORD1;
    let x_1021 : i32 = u_xlati6;
    let x_1023 : vec4<f32> = x_1020.x_AdditionalLightsPosition[x_1021];
    let x_1026 : i32 = u_xlati6;
    let x_1028 : vec4<f32> = x_1020.x_AdditionalLightsPosition[x_1026];
    u_xlat9 = ((-(x_1010) * vec3<f32>(x_1023.w, x_1023.w, x_1023.w)) + vec3<f32>(x_1028.x, x_1028.y, x_1028.z));
    let x_1032 : vec3<f32> = u_xlat9;
    let x_1033 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1032, x_1033);
    let x_1035 : f32 = u_xlat35;
    u_xlat35 = max(x_1035, 0.00006103515625f);
    let x_1038 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1038);
    let x_1041 : f32 = u_xlat49;
    let x_1043 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1041, x_1041, x_1041) * x_1043);
    let x_1046 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1046);
    let x_1048 : f32 = u_xlat35;
    let x_1049 : i32 = u_xlati6;
    let x_1051 : f32 = x_1020.x_AdditionalLightsAttenuation[x_1049].x;
    u_xlat35 = (x_1048 * x_1051);
    let x_1053 : f32 = u_xlat35;
    let x_1055 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1053) * x_1055) + 1.0f);
    let x_1058 : f32 = u_xlat35;
    u_xlat35 = max(x_1058, 0.0f);
    let x_1060 : f32 = u_xlat35;
    let x_1061 : f32 = u_xlat35;
    u_xlat35 = (x_1060 * x_1061);
    let x_1063 : f32 = u_xlat35;
    let x_1064 : f32 = u_xlat50;
    u_xlat35 = (x_1063 * x_1064);
    let x_1066 : i32 = u_xlati6;
    let x_1068 : vec4<f32> = x_1020.x_AdditionalLightsSpotDir[x_1066];
    let x_1070 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1068.x, x_1068.y, x_1068.z), x_1070);
    let x_1072 : f32 = u_xlat50;
    let x_1073 : i32 = u_xlati6;
    let x_1075 : f32 = x_1020.x_AdditionalLightsAttenuation[x_1073].z;
    let x_1077 : i32 = u_xlati6;
    let x_1079 : f32 = x_1020.x_AdditionalLightsAttenuation[x_1077].w;
    u_xlat50 = ((x_1072 * x_1075) + x_1079);
    let x_1081 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1081, 0.0f, 1.0f);
    let x_1083 : f32 = u_xlat50;
    let x_1084 : f32 = u_xlat50;
    u_xlat50 = (x_1083 * x_1084);
    let x_1086 : f32 = u_xlat35;
    let x_1087 : f32 = u_xlat50;
    u_xlat35 = (x_1086 * x_1087);
    let x_1091 : i32 = u_xlati6;
    let x_1093 : f32 = x_447.x_AdditionalShadowParams[x_1091].w;
    u_xlati50 = i32(x_1093);
    let x_1096 : i32 = u_xlati50;
    u_xlatb51 = (x_1096 >= 0i);
    let x_1098 : bool = u_xlatb51;
    if (x_1098) {
      let x_1102 : i32 = u_xlati6;
      let x_1104 : f32 = x_447.x_AdditionalShadowParams[x_1102].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1104, x_1104, x_1104, x_1104))));
      let x_1108 : bool = u_xlatb51;
      if (x_1108) {
        let x_1113 : vec3<f32> = u_xlat10;
        let x_1116 : vec3<f32> = u_xlat10;
        let x_1119 : vec4<bool> = (abs(vec4<f32>(x_1113.z, x_1113.z, x_1113.y, x_1113.z)) >= abs(vec4<f32>(x_1116.x, x_1116.y, x_1116.x, x_1116.x)));
        let x_1121 : vec3<bool> = vec3<bool>(x_1119.x, x_1119.y, x_1119.z);
        let x_1122 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
        let x_1125 : bool = u_xlatb11.y;
        let x_1127 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1125 & x_1127);
        let x_1129 : vec3<f32> = u_xlat10;
        let x_1132 : vec4<bool> = (-(vec4<f32>(x_1129.z, x_1129.y, x_1129.z, x_1129.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1133 : vec3<bool> = vec3<bool>(x_1132.x, x_1132.y, x_1132.w);
        let x_1134 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1133.x, x_1133.y, x_1134.z, x_1133.z);
        let x_1138 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1138);
        let x_1143 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1143);
        let x_1149 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1149);
        let x_1152 : bool = u_xlatb11.z;
        if (x_1152) {
          let x_1157 : f32 = u_xlat11.y;
          x_1153 = x_1157;
        } else {
          let x_1159 : f32 = u_xlat52;
          x_1153 = x_1159;
        }
        let x_1160 : f32 = x_1153;
        u_xlat52 = x_1160;
        let x_1162 : bool = u_xlatb51;
        if (x_1162) {
          let x_1167 : f32 = u_xlat11.x;
          x_1163 = x_1167;
        } else {
          let x_1169 : f32 = u_xlat52;
          x_1163 = x_1169;
        }
        let x_1170 : f32 = x_1163;
        u_xlat51 = x_1170;
        let x_1171 : i32 = u_xlati6;
        let x_1173 : f32 = x_447.x_AdditionalShadowParams[x_1171].w;
        u_xlat52 = trunc(x_1173);
        let x_1175 : f32 = u_xlat51;
        let x_1176 : f32 = u_xlat52;
        u_xlat51 = (x_1175 + x_1176);
        let x_1178 : f32 = u_xlat51;
        u_xlati50 = i32(x_1178);
      }
      let x_1180 : i32 = u_xlati50;
      u_xlati50 = (x_1180 << bitcast<u32>(2i));
      let x_1182 : vec3<f32> = vs_TEXCOORD1;
      let x_1185 : i32 = u_xlati50;
      let x_1188 : i32 = u_xlati50;
      let x_1192 : vec4<f32> = x_447.x_AdditionalLightsWorldToShadow[((x_1185 + 1i) / 4i)][((x_1188 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1182.y, x_1182.y, x_1182.y, x_1182.y) * x_1192);
      let x_1194 : i32 = u_xlati50;
      let x_1196 : i32 = u_xlati50;
      let x_1199 : vec4<f32> = x_447.x_AdditionalLightsWorldToShadow[(x_1194 / 4i)][(x_1196 % 4i)];
      let x_1200 : vec3<f32> = vs_TEXCOORD1;
      let x_1203 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1199 * vec4<f32>(x_1200.x, x_1200.x, x_1200.x, x_1200.x)) + x_1203);
      let x_1205 : i32 = u_xlati50;
      let x_1208 : i32 = u_xlati50;
      let x_1212 : vec4<f32> = x_447.x_AdditionalLightsWorldToShadow[((x_1205 + 2i) / 4i)][((x_1208 + 2i) % 4i)];
      let x_1213 : vec3<f32> = vs_TEXCOORD1;
      let x_1216 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1212 * vec4<f32>(x_1213.z, x_1213.z, x_1213.z, x_1213.z)) + x_1216);
      let x_1218 : vec4<f32> = u_xlat11;
      let x_1219 : i32 = u_xlati50;
      let x_1222 : i32 = u_xlati50;
      let x_1226 : vec4<f32> = x_447.x_AdditionalLightsWorldToShadow[((x_1219 + 3i) / 4i)][((x_1222 + 3i) % 4i)];
      u_xlat11 = (x_1218 + x_1226);
      let x_1228 : vec4<f32> = u_xlat11;
      let x_1230 : vec4<f32> = u_xlat11;
      let x_1232 : vec3<f32> = (vec3<f32>(x_1228.x, x_1228.y, x_1228.z) / vec3<f32>(x_1230.w, x_1230.w, x_1230.w));
      let x_1233 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
      let x_1236 : vec4<f32> = u_xlat11;
      let x_1237 : vec2<f32> = vec2<f32>(x_1236.x, x_1236.y);
      let x_1239 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1237.x, x_1237.y, x_1239);
      let x_1247 : vec3<f32> = txVec1;
      let x_1249 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1247.xy, x_1247.z);
      u_xlat50 = x_1249;
      let x_1250 : i32 = u_xlati6;
      let x_1252 : f32 = x_447.x_AdditionalShadowParams[x_1250].x;
      u_xlat51 = (1.0f + -(x_1252));
      let x_1255 : f32 = u_xlat50;
      let x_1256 : i32 = u_xlati6;
      let x_1258 : f32 = x_447.x_AdditionalShadowParams[x_1256].x;
      let x_1260 : f32 = u_xlat51;
      u_xlat50 = ((x_1255 * x_1258) + x_1260);
      let x_1263 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1263);
      let x_1267 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1267 >= 1.0f);
      let x_1269 : bool = u_xlatb51;
      let x_1270 : bool = u_xlatb52;
      u_xlatb51 = (x_1269 | x_1270);
      let x_1272 : bool = u_xlatb51;
      let x_1273 : f32 = u_xlat50;
      u_xlat50 = select(x_1273, 1.0f, x_1272);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1276 : f32 = u_xlat50;
    u_xlat51 = (-(x_1276) + 1.0f);
    let x_1279 : f32 = u_xlat43;
    let x_1280 : f32 = u_xlat51;
    let x_1282 : f32 = u_xlat50;
    u_xlat50 = ((x_1279 * x_1280) + x_1282);
    let x_1285 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1285 & 31i)));
    let x_1289 : i32 = u_xlati51;
    let x_1292 : f32 = x_516.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1289) & bitcast<u32>(x_1292)));
    let x_1296 : i32 = u_xlati51;
    if ((x_1296 != 0i)) {
      let x_1300 : i32 = u_xlati6;
      let x_1302 : f32 = x_516.x_AdditionalLightsLightTypes[x_1300].el;
      u_xlati51 = i32(x_1302);
      let x_1305 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1305 != 0i));
      let x_1309 : i32 = u_xlati6;
      u_xlati11 = (x_1309 << bitcast<u32>(2i));
      let x_1311 : i32 = u_xlati52;
      if ((x_1311 != 0i)) {
        let x_1316 : vec3<f32> = vs_TEXCOORD1;
        let x_1318 : i32 = u_xlati11;
        let x_1321 : i32 = u_xlati11;
        let x_1325 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1318 + 1i) / 4i)][((x_1321 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1316.y, x_1316.y, x_1316.y) * vec3<f32>(x_1325.x, x_1325.y, x_1325.w));
        let x_1328 : i32 = u_xlati11;
        let x_1330 : i32 = u_xlati11;
        let x_1333 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[(x_1328 / 4i)][(x_1330 % 4i)];
        let x_1335 : vec3<f32> = vs_TEXCOORD1;
        let x_1338 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1333.x, x_1333.y, x_1333.w) * vec3<f32>(x_1335.x, x_1335.x, x_1335.x)) + x_1338);
        let x_1340 : i32 = u_xlati11;
        let x_1343 : i32 = u_xlati11;
        let x_1347 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1340 + 2i) / 4i)][((x_1343 + 2i) % 4i)];
        let x_1349 : vec3<f32> = vs_TEXCOORD1;
        let x_1352 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1347.x, x_1347.y, x_1347.w) * vec3<f32>(x_1349.z, x_1349.z, x_1349.z)) + x_1352);
        let x_1354 : vec3<f32> = u_xlat25;
        let x_1355 : i32 = u_xlati11;
        let x_1358 : i32 = u_xlati11;
        let x_1362 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1355 + 3i) / 4i)][((x_1358 + 3i) % 4i)];
        u_xlat25 = (x_1354 + vec3<f32>(x_1362.x, x_1362.y, x_1362.w));
        let x_1365 : vec3<f32> = u_xlat25;
        let x_1367 : vec3<f32> = u_xlat25;
        let x_1369 : vec2<f32> = (vec2<f32>(x_1365.x, x_1365.y) / vec2<f32>(x_1367.z, x_1367.z));
        let x_1370 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1369.x, x_1369.y, x_1370.z);
        let x_1372 : vec3<f32> = u_xlat25;
        let x_1375 : vec2<f32> = ((vec2<f32>(x_1372.x, x_1372.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1376 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1375.x, x_1375.y, x_1376.z);
        let x_1378 : vec3<f32> = u_xlat25;
        let x_1382 : vec2<f32> = clamp(vec2<f32>(x_1378.x, x_1378.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1383 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1382.x, x_1382.y, x_1383.z);
        let x_1385 : i32 = u_xlati6;
        let x_1387 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1385];
        let x_1389 : vec3<f32> = u_xlat25;
        let x_1392 : i32 = u_xlati6;
        let x_1394 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1392];
        let x_1396 : vec2<f32> = ((vec2<f32>(x_1387.x, x_1387.y) * vec2<f32>(x_1389.x, x_1389.y)) + vec2<f32>(x_1394.z, x_1394.w));
        let x_1397 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1396.x, x_1396.y, x_1397.z);
      } else {
        let x_1400 : i32 = u_xlati51;
        u_xlatb51 = (x_1400 == 1i);
        let x_1402 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1402);
        let x_1404 : i32 = u_xlati51;
        if ((x_1404 != 0i)) {
          let x_1409 : vec3<f32> = vs_TEXCOORD1;
          let x_1411 : i32 = u_xlati11;
          let x_1414 : i32 = u_xlati11;
          let x_1418 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1411 + 1i) / 4i)][((x_1414 + 1i) % 4i)];
          let x_1420 : vec2<f32> = (vec2<f32>(x_1409.y, x_1409.y) * vec2<f32>(x_1418.x, x_1418.y));
          let x_1421 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1420.x, x_1420.y, x_1421.z, x_1421.w);
          let x_1423 : i32 = u_xlati11;
          let x_1425 : i32 = u_xlati11;
          let x_1428 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[(x_1423 / 4i)][(x_1425 % 4i)];
          let x_1430 : vec3<f32> = vs_TEXCOORD1;
          let x_1433 : vec4<f32> = u_xlat12;
          let x_1435 : vec2<f32> = ((vec2<f32>(x_1428.x, x_1428.y) * vec2<f32>(x_1430.x, x_1430.x)) + vec2<f32>(x_1433.x, x_1433.y));
          let x_1436 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1435.x, x_1435.y, x_1436.z, x_1436.w);
          let x_1438 : i32 = u_xlati11;
          let x_1441 : i32 = u_xlati11;
          let x_1445 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1438 + 2i) / 4i)][((x_1441 + 2i) % 4i)];
          let x_1447 : vec3<f32> = vs_TEXCOORD1;
          let x_1450 : vec4<f32> = u_xlat12;
          let x_1452 : vec2<f32> = ((vec2<f32>(x_1445.x, x_1445.y) * vec2<f32>(x_1447.z, x_1447.z)) + vec2<f32>(x_1450.x, x_1450.y));
          let x_1453 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1452.x, x_1452.y, x_1453.z, x_1453.w);
          let x_1455 : vec4<f32> = u_xlat12;
          let x_1457 : i32 = u_xlati11;
          let x_1460 : i32 = u_xlati11;
          let x_1464 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1457 + 3i) / 4i)][((x_1460 + 3i) % 4i)];
          let x_1466 : vec2<f32> = (vec2<f32>(x_1455.x, x_1455.y) + vec2<f32>(x_1464.x, x_1464.y));
          let x_1467 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1466.x, x_1466.y, x_1467.z, x_1467.w);
          let x_1469 : vec4<f32> = u_xlat12;
          let x_1472 : vec2<f32> = ((vec2<f32>(x_1469.x, x_1469.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1473 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1472.x, x_1472.y, x_1473.z, x_1473.w);
          let x_1475 : vec4<f32> = u_xlat12;
          let x_1477 : vec2<f32> = fract(vec2<f32>(x_1475.x, x_1475.y));
          let x_1478 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1477.x, x_1477.y, x_1478.z, x_1478.w);
          let x_1480 : i32 = u_xlati6;
          let x_1482 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1480];
          let x_1484 : vec4<f32> = u_xlat12;
          let x_1487 : i32 = u_xlati6;
          let x_1489 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1487];
          let x_1491 : vec2<f32> = ((vec2<f32>(x_1482.x, x_1482.y) * vec2<f32>(x_1484.x, x_1484.y)) + vec2<f32>(x_1489.z, x_1489.w));
          let x_1492 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1491.x, x_1491.y, x_1492.z);
        } else {
          let x_1495 : vec3<f32> = vs_TEXCOORD1;
          let x_1497 : i32 = u_xlati11;
          let x_1500 : i32 = u_xlati11;
          let x_1504 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1497 + 1i) / 4i)][((x_1500 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1495.y, x_1495.y, x_1495.y, x_1495.y) * x_1504);
          let x_1506 : i32 = u_xlati11;
          let x_1508 : i32 = u_xlati11;
          let x_1511 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[(x_1506 / 4i)][(x_1508 % 4i)];
          let x_1512 : vec3<f32> = vs_TEXCOORD1;
          let x_1515 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1511 * vec4<f32>(x_1512.x, x_1512.x, x_1512.x, x_1512.x)) + x_1515);
          let x_1517 : i32 = u_xlati11;
          let x_1520 : i32 = u_xlati11;
          let x_1524 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1517 + 2i) / 4i)][((x_1520 + 2i) % 4i)];
          let x_1525 : vec3<f32> = vs_TEXCOORD1;
          let x_1528 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1524 * vec4<f32>(x_1525.z, x_1525.z, x_1525.z, x_1525.z)) + x_1528);
          let x_1530 : vec4<f32> = u_xlat12;
          let x_1531 : i32 = u_xlati11;
          let x_1534 : i32 = u_xlati11;
          let x_1538 : vec4<f32> = x_516.x_AdditionalLightsWorldToLights[((x_1531 + 3i) / 4i)][((x_1534 + 3i) % 4i)];
          u_xlat12 = (x_1530 + x_1538);
          let x_1540 : vec4<f32> = u_xlat12;
          let x_1542 : vec4<f32> = u_xlat12;
          let x_1544 : vec3<f32> = (vec3<f32>(x_1540.x, x_1540.y, x_1540.z) / vec3<f32>(x_1542.w, x_1542.w, x_1542.w));
          let x_1545 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1544.x, x_1544.y, x_1544.z, x_1545.w);
          let x_1547 : vec4<f32> = u_xlat12;
          let x_1549 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1547.x, x_1547.y, x_1547.z), vec3<f32>(x_1549.x, x_1549.y, x_1549.z));
          let x_1552 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1552);
          let x_1554 : f32 = u_xlat51;
          let x_1556 : vec4<f32> = u_xlat12;
          let x_1558 : vec3<f32> = (vec3<f32>(x_1554, x_1554, x_1554) * vec3<f32>(x_1556.x, x_1556.y, x_1556.z));
          let x_1559 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1559.w);
          let x_1561 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1561.x, x_1561.y, x_1561.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1566 : f32 = u_xlat51;
          u_xlat51 = max(x_1566, 0.00000099999999747524f);
          let x_1569 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1569);
          let x_1572 : f32 = u_xlat51;
          let x_1574 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1572, x_1572, x_1572) * vec3<f32>(x_1574.z, x_1574.x, x_1574.y));
          let x_1578 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1578);
          let x_1582 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1582, 0.0f, 1.0f);
          let x_1585 : vec3<f32> = u_xlat13;
          let x_1587 : vec4<bool> = (vec4<f32>(x_1585.y, x_1585.y, x_1585.y, x_1585.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1588 : vec2<bool> = vec2<bool>(x_1587.x, x_1587.w);
          let x_1589 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1588.x, x_1589.y, x_1589.z, x_1588.y);
          let x_1592 : bool = u_xlatb11.x;
          if (x_1592) {
            let x_1597 : f32 = u_xlat13.x;
            x_1593 = x_1597;
          } else {
            let x_1600 : f32 = u_xlat13.x;
            x_1593 = -(x_1600);
          }
          let x_1602 : f32 = x_1593;
          u_xlat11.x = x_1602;
          let x_1605 : bool = u_xlatb11.w;
          if (x_1605) {
            let x_1610 : f32 = u_xlat13.x;
            x_1606 = x_1610;
          } else {
            let x_1613 : f32 = u_xlat13.x;
            x_1606 = -(x_1613);
          }
          let x_1615 : f32 = x_1606;
          u_xlat11.w = x_1615;
          let x_1617 : vec4<f32> = u_xlat12;
          let x_1619 : f32 = u_xlat51;
          let x_1622 : vec4<f32> = u_xlat11;
          let x_1624 : vec2<f32> = ((vec2<f32>(x_1617.x, x_1617.y) * vec2<f32>(x_1619, x_1619)) + vec2<f32>(x_1622.x, x_1622.w));
          let x_1625 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1624.x, x_1625.y, x_1625.z, x_1624.y);
          let x_1627 : vec4<f32> = u_xlat11;
          let x_1630 : vec2<f32> = ((vec2<f32>(x_1627.x, x_1627.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1631 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1630.x, x_1631.y, x_1631.z, x_1630.y);
          let x_1633 : vec4<f32> = u_xlat11;
          let x_1637 : vec2<f32> = clamp(vec2<f32>(x_1633.x, x_1633.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1638 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1637.x, x_1638.y, x_1638.z, x_1637.y);
          let x_1640 : i32 = u_xlati6;
          let x_1642 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1640];
          let x_1644 : vec4<f32> = u_xlat11;
          let x_1647 : i32 = u_xlati6;
          let x_1649 : vec4<f32> = x_516.x_AdditionalLightsCookieAtlasUVRects[x_1647];
          let x_1651 : vec2<f32> = ((vec2<f32>(x_1642.x, x_1642.y) * vec2<f32>(x_1644.x, x_1644.w)) + vec2<f32>(x_1649.z, x_1649.w));
          let x_1652 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1651.x, x_1651.y, x_1652.z);
        }
      }
      let x_1659 : vec3<f32> = u_xlat25;
      let x_1661 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1659.x, x_1659.y), 0.0f);
      u_xlat11 = x_1661;
      let x_1663 : bool = u_xlatb7.y;
      if (x_1663) {
        let x_1668 : f32 = u_xlat11.w;
        x_1664 = x_1668;
      } else {
        let x_1671 : f32 = u_xlat11.x;
        x_1664 = x_1671;
      }
      let x_1672 : f32 = x_1664;
      u_xlat51 = x_1672;
      let x_1674 : bool = u_xlatb7.x;
      if (x_1674) {
        let x_1678 : vec4<f32> = u_xlat11;
        x_1675 = vec3<f32>(x_1678.x, x_1678.y, x_1678.z);
      } else {
        let x_1681 : f32 = u_xlat51;
        x_1675 = vec3<f32>(x_1681, x_1681, x_1681);
      }
      let x_1683 : vec3<f32> = x_1675;
      let x_1684 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1683.x, x_1683.y, x_1683.z, x_1684.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1690 : vec4<f32> = u_xlat11;
    let x_1692 : i32 = u_xlati6;
    let x_1694 : vec4<f32> = x_1020.x_AdditionalLightsColor[x_1692];
    let x_1696 : vec3<f32> = (vec3<f32>(x_1690.x, x_1690.y, x_1690.z) * vec3<f32>(x_1694.x, x_1694.y, x_1694.z));
    let x_1697 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1697.w);
    let x_1699 : f32 = u_xlat35;
    let x_1700 : f32 = u_xlat50;
    u_xlat6.x = (x_1699 * x_1700);
    let x_1703 : vec3<f32> = u_xlat4;
    let x_1704 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(x_1703, x_1704);
    let x_1706 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1706, 0.0f, 1.0f);
    let x_1709 : f32 = u_xlat6.x;
    let x_1710 : f32 = u_xlat35;
    u_xlat6.x = (x_1709 * x_1710);
    let x_1713 : vec3<f32> = u_xlat6;
    let x_1715 : vec4<f32> = u_xlat11;
    let x_1717 : vec3<f32> = (vec3<f32>(x_1713.x, x_1713.x, x_1713.x) * vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
    let x_1718 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1718.w);
    let x_1720 : vec3<f32> = u_xlat9;
    let x_1721 : f32 = u_xlat49;
    let x_1724 : vec3<f32> = u_xlat17;
    u_xlat9 = ((x_1720 * vec3<f32>(x_1721, x_1721, x_1721)) + x_1724);
    let x_1726 : vec3<f32> = u_xlat9;
    let x_1727 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1726, x_1727);
    let x_1731 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1731, 1.17549435e-38f);
    let x_1735 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1735);
    let x_1738 : vec3<f32> = u_xlat6;
    let x_1740 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1738.x, x_1738.x, x_1738.x) * x_1740);
    let x_1742 : vec3<f32> = u_xlat4;
    let x_1743 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1742, x_1743);
    let x_1747 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1747, 0.0f, 1.0f);
    let x_1750 : vec3<f32> = u_xlat10;
    let x_1751 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1750, x_1751);
    let x_1753 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1753, 0.0f, 1.0f);
    let x_1756 : f32 = u_xlat6.x;
    let x_1758 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1756 * x_1758);
    let x_1762 : f32 = u_xlat6.x;
    let x_1764 : f32 = u_xlat1.x;
    u_xlat6.x = ((x_1762 * x_1764) + 1.00001001358032226562f);
    let x_1768 : f32 = u_xlat35;
    let x_1769 : f32 = u_xlat35;
    u_xlat35 = (x_1768 * x_1769);
    let x_1772 : f32 = u_xlat6.x;
    let x_1774 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1772 * x_1774);
    let x_1777 : f32 = u_xlat35;
    u_xlat35 = max(x_1777, 0.10000000149011611938f);
    let x_1780 : f32 = u_xlat6.x;
    let x_1781 : f32 = u_xlat35;
    u_xlat6.x = (x_1780 * x_1781);
    let x_1784 : f32 = u_xlat46;
    let x_1786 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1784 * x_1786);
    let x_1790 : f32 = u_xlat29.x;
    let x_1792 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1790 / x_1792);
    let x_1795 : vec4<f32> = u_xlat0;
    let x_1797 : vec3<f32> = u_xlat6;
    let x_1800 : vec3<f32> = u_xlat16;
    u_xlat9 = ((vec3<f32>(x_1795.x, x_1795.y, x_1795.z) * vec3<f32>(x_1797.x, x_1797.x, x_1797.x)) + x_1800);
    let x_1802 : vec3<f32> = u_xlat9;
    let x_1803 : vec4<f32> = u_xlat11;
    let x_1806 : vec4<f32> = u_xlat8;
    let x_1808 : vec3<f32> = ((x_1802 * vec3<f32>(x_1803.x, x_1803.y, x_1803.z)) + vec3<f32>(x_1806.x, x_1806.y, x_1806.z));
    let x_1809 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1809.w);

    continuing {
      let x_1811 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1811 + bitcast<u32>(1i));
    }
  }
  let x_1813 : vec4<f32> = u_xlat5;
  let x_1815 : vec3<f32> = u_xlat3;
  let x_1818 : vec3<f32> = u_xlat20;
  let x_1819 : vec3<f32> = ((vec3<f32>(x_1813.x, x_1813.y, x_1813.z) * vec3<f32>(x_1815.x, x_1815.x, x_1815.x)) + x_1818);
  let x_1820 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1819.x, x_1819.y, x_1819.z, x_1820.w);
  let x_1822 : vec4<f32> = u_xlat8;
  let x_1824 : vec4<f32> = u_xlat0;
  let x_1826 : vec3<f32> = (vec3<f32>(x_1822.x, x_1822.y, x_1822.z) + vec3<f32>(x_1824.x, x_1824.y, x_1824.z));
  let x_1827 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1827.w);
  let x_1829 : f32 = u_xlat42;
  let x_1830 : f32 = u_xlat42;
  u_xlat42 = (x_1829 * -(x_1830));
  let x_1833 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1833);
  let x_1835 : vec4<f32> = u_xlat0;
  let x_1838 : vec4<f32> = x_28.unity_FogColor;
  let x_1841 : vec3<f32> = (vec3<f32>(x_1835.x, x_1835.y, x_1835.z) + -(vec3<f32>(x_1838.x, x_1838.y, x_1838.z)));
  let x_1842 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1841.x, x_1841.y, x_1841.z, x_1842.w);
  let x_1846 : f32 = u_xlat42;
  let x_1848 : vec4<f32> = u_xlat0;
  let x_1852 : vec4<f32> = x_28.unity_FogColor;
  let x_1854 : vec3<f32> = ((vec3<f32>(x_1846, x_1846, x_1846) * vec3<f32>(x_1848.x, x_1848.y, x_1848.z)) + vec3<f32>(x_1852.x, x_1852.y, x_1852.z));
  let x_1855 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1854.x, x_1854.y, x_1854.z, x_1855.w);
  let x_1859 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_1859 == 1.0f);
  let x_1861 : bool = u_xlatb0;
  if (x_1861) {
    let x_1866 : f32 = u_xlat2.x;
    x_1862 = x_1866;
  } else {
    x_1862 = 1.0f;
  }
  let x_1868 : f32 = x_1862;
  SV_Target0.w = x_1868;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


