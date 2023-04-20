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

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat42 : f32;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_OcclusionMap : sampler;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlatb17 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_281 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

@group(1) @binding(2) var<uniform> x_509 : UnityPerDraw;

var<private> u_xlat43 : f32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat15 : vec2<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatb19 : bool;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat47 : f32;

@group(1) @binding(5) var<uniform> x_777 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatu15 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu48 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1279 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu19 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var x_196 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_728 : f32;
  var x_846 : f32;
  var x_857 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1411 : f32;
  var x_1421 : f32;
  var txVec1 : vec3<f32>;
  var x_1852 : f32;
  var x_1865 : f32;
  var x_1923 : f32;
  var x_1934 : vec3<f32>;
  var x_2098 : f32;
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
  let x_48 : vec2<f32> = vec2<f32>(x_47.x, x_47.w);
  let x_49 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_52 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_69 : vec2<f32> = vs_TEXCOORD0;
  let x_71 : f32 = x_28.x_GlobalMipBias.x;
  let x_72 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_69, x_71);
  u_xlat3 = vec3<f32>(x_72.x, x_72.y, x_72.w);
  let x_76 : f32 = u_xlat3.x;
  let x_79 : f32 = u_xlat3.z;
  u_xlat3.x = (x_76 * x_79);
  let x_84 : vec3<f32> = u_xlat3;
  u_xlat29 = ((vec2<f32>(x_84.x, x_84.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_93 : vec2<f32> = u_xlat29;
  let x_94 : vec2<f32> = u_xlat29;
  u_xlat42 = dot(x_93, x_94);
  let x_96 : f32 = u_xlat42;
  u_xlat42 = min(x_96, 1.0f);
  let x_99 : f32 = u_xlat42;
  u_xlat42 = (-(x_99) + 1.0f);
  let x_102 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_102);
  let x_104 : f32 = u_xlat42;
  u_xlat42 = max(x_104, 0.0000000000000001f);
  let x_107 : vec2<f32> = u_xlat29;
  let x_110 : f32 = x_56.x_BumpScale;
  let x_112 : f32 = x_56.x_BumpScale;
  let x_113 : vec2<f32> = vec2<f32>(x_110, x_112);
  u_xlat29 = (x_107 * vec2<f32>(x_113.x, x_113.y));
  let x_123 : vec2<f32> = vs_TEXCOORD0;
  let x_125 : f32 = x_28.x_GlobalMipBias.x;
  let x_126 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_123, x_125);
  u_xlat3.x = x_126.y;
  let x_133 : f32 = x_56.x_OcclusionStrength;
  u_xlat17.x = (-(x_133) + 1.0f);
  let x_138 : f32 = u_xlat3.x;
  let x_140 : f32 = x_56.x_OcclusionStrength;
  let x_143 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_138 * x_140) + x_143);
  let x_152 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb17 = (x_152 == 0.0f);
  let x_158 : vec3<f32> = vs_TEXCOORD1;
  let x_163 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_164 : vec3<f32> = (-(x_158) + x_163);
  let x_165 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec4<f32> = u_xlat4;
  let x_170 : vec4<f32> = u_xlat4;
  u_xlat31 = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_173);
  let x_175 : f32 = u_xlat31;
  let x_177 : vec4<f32> = u_xlat4;
  let x_179 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_185 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat5.x = x_185;
  let x_189 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat5.y = x_189;
  let x_192 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat5.z = x_192;
  let x_194 : bool = u_xlatb17;
  if (x_194) {
    let x_199 : vec4<f32> = u_xlat4;
    x_196 = vec3<f32>(x_199.x, x_199.y, x_199.z);
  } else {
    let x_202 : vec4<f32> = u_xlat5;
    x_196 = vec3<f32>(x_202.x, x_202.y, x_202.z);
  }
  let x_204 : vec3<f32> = x_196;
  u_xlat17 = x_204;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  let x_210 : vec4<f32> = vs_TEXCOORD3;
  let x_212 : vec3<f32> = (vec3<f32>(x_206.z, x_206.x, x_206.y) * vec3<f32>(x_210.y, x_210.z, x_210.x));
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_215 : vec3<f32> = vs_TEXCOORD2;
  let x_217 : vec4<f32> = vs_TEXCOORD3;
  let x_220 : vec4<f32> = u_xlat4;
  let x_223 : vec3<f32> = ((vec3<f32>(x_215.y, x_215.z, x_215.x) * vec3<f32>(x_217.z, x_217.x, x_217.y)) + -(vec3<f32>(x_220.x, x_220.y, x_220.z)));
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat4;
  let x_228 : vec4<f32> = vs_TEXCOORD3;
  let x_230 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(x_228.w, x_228.w, x_228.w));
  let x_231 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec2<f32> = u_xlat29;
  let x_235 : vec4<f32> = u_xlat4;
  let x_237 : vec3<f32> = (vec3<f32>(x_233.y, x_233.y, x_233.y) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec2<f32> = u_xlat29;
  let x_242 : vec4<f32> = vs_TEXCOORD3;
  let x_245 : vec4<f32> = u_xlat4;
  let x_247 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.x, x_240.x) * vec3<f32>(x_242.x, x_242.y, x_242.z)) + vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : f32 = u_xlat42;
  let x_252 : vec3<f32> = vs_TEXCOORD2;
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec3<f32> = ((vec3<f32>(x_250, x_250, x_250) * x_252) + vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : vec4<f32> = u_xlat4;
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_259.x, x_259.y, x_259.z), vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_264);
  let x_266 : f32 = u_xlat42;
  let x_268 : vec4<f32> = u_xlat4;
  let x_270 : vec3<f32> = (vec3<f32>(x_266, x_266, x_266) * vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec3<f32> = vs_TEXCOORD1;
  let x_283 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres0;
  let x_286 : vec3<f32> = (x_273 + -(vec3<f32>(x_283.x, x_283.y, x_283.z)));
  let x_287 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_290 : vec3<f32> = vs_TEXCOORD1;
  let x_292 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres1;
  let x_295 : vec3<f32> = (x_290 + -(vec3<f32>(x_292.x, x_292.y, x_292.z)));
  let x_296 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_299 : vec3<f32> = vs_TEXCOORD1;
  let x_302 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres2;
  let x_305 : vec3<f32> = (x_299 + -(vec3<f32>(x_302.x, x_302.y, x_302.z)));
  let x_306 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_309 : vec3<f32> = vs_TEXCOORD1;
  let x_311 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres3;
  let x_314 : vec3<f32> = (x_309 + -(vec3<f32>(x_311.x, x_311.y, x_311.z)));
  let x_315 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat5;
  let x_319 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_317.x, x_317.y, x_317.z), vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_323 : vec4<f32> = u_xlat6;
  let x_325 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_323.x, x_323.y, x_323.z), vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_329 : vec4<f32> = u_xlat7;
  let x_331 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_329.x, x_329.y, x_329.z), vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_335 : vec4<f32> = u_xlat8;
  let x_337 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_335.x, x_335.y, x_335.z), vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_344 : vec4<f32> = u_xlat5;
  let x_347 : vec4<f32> = x_281.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_344 < x_347);
  let x_350 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_350);
  let x_354 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_354);
  let x_358 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_358);
  let x_362 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_362);
  let x_366 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_366);
  let x_371 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_371);
  let x_375 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_375);
  let x_378 : vec4<f32> = u_xlat5;
  let x_380 : vec4<f32> = u_xlat6;
  let x_382 : vec3<f32> = (vec3<f32>(x_378.x, x_378.y, x_378.z) + vec3<f32>(x_380.y, x_380.z, x_380.w));
  let x_383 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec4<f32> = u_xlat5;
  let x_388 : vec3<f32> = max(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_389 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_389.x, x_388.x, x_388.y, x_388.z);
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_391, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_396 : f32 = u_xlat42;
  u_xlat42 = (-(x_396) + 4.0f);
  let x_401 : f32 = u_xlat42;
  u_xlatu42 = u32(x_401);
  let x_405 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_405) << bitcast<u32>(2i));
  let x_408 : vec3<f32> = vs_TEXCOORD1;
  let x_410 : i32 = u_xlati42;
  let x_413 : i32 = u_xlati42;
  let x_417 : vec4<f32> = x_281.x_MainLightWorldToShadow[((x_410 + 1i) / 4i)][((x_413 + 1i) % 4i)];
  let x_419 : vec3<f32> = (vec3<f32>(x_408.y, x_408.y, x_408.y) * vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : i32 = u_xlati42;
  let x_424 : i32 = u_xlati42;
  let x_427 : vec4<f32> = x_281.x_MainLightWorldToShadow[(x_422 / 4i)][(x_424 % 4i)];
  let x_429 : vec3<f32> = vs_TEXCOORD1;
  let x_432 : vec4<f32> = u_xlat5;
  let x_434 : vec3<f32> = ((vec3<f32>(x_427.x, x_427.y, x_427.z) * vec3<f32>(x_429.x, x_429.x, x_429.x)) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : i32 = u_xlati42;
  let x_440 : i32 = u_xlati42;
  let x_444 : vec4<f32> = x_281.x_MainLightWorldToShadow[((x_437 + 2i) / 4i)][((x_440 + 2i) % 4i)];
  let x_446 : vec3<f32> = vs_TEXCOORD1;
  let x_449 : vec4<f32> = u_xlat5;
  let x_451 : vec3<f32> = ((vec3<f32>(x_444.x, x_444.y, x_444.z) * vec3<f32>(x_446.z, x_446.z, x_446.z)) + vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat5;
  let x_456 : i32 = u_xlati42;
  let x_459 : i32 = u_xlati42;
  let x_463 : vec4<f32> = x_281.x_MainLightWorldToShadow[((x_456 + 3i) / 4i)][((x_459 + 3i) % 4i)];
  let x_465 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) + vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_470 : f32 = vs_TEXCOORD1.y;
  let x_472 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat42 = (x_470 * x_472);
  let x_475 : f32 = x_28.unity_MatrixV[0i].z;
  let x_477 : f32 = vs_TEXCOORD1.x;
  let x_479 : f32 = u_xlat42;
  u_xlat42 = ((x_475 * x_477) + x_479);
  let x_482 : f32 = x_28.unity_MatrixV[2i].z;
  let x_484 : f32 = vs_TEXCOORD1.z;
  let x_486 : f32 = u_xlat42;
  u_xlat42 = ((x_482 * x_484) + x_486);
  let x_488 : f32 = u_xlat42;
  let x_490 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat42 = (x_488 + x_490);
  let x_492 : f32 = u_xlat42;
  let x_495 : f32 = x_28.x_ProjectionParams.y;
  u_xlat42 = (-(x_492) + -(x_495));
  let x_498 : f32 = u_xlat42;
  u_xlat42 = max(x_498, 0.0f);
  let x_500 : f32 = u_xlat42;
  let x_503 : f32 = x_28.unity_FogParams.x;
  u_xlat42 = (x_500 * x_503);
  u_xlat4.w = 1.0f;
  let x_512 : vec4<f32> = x_509.unity_SHAr;
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_512, x_513);
  let x_518 : vec4<f32> = x_509.unity_SHAg;
  let x_519 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_518, x_519);
  let x_524 : vec4<f32> = x_509.unity_SHAb;
  let x_525 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_524, x_525);
  let x_528 : vec4<f32> = u_xlat4;
  let x_530 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_528.y, x_528.z, x_528.z, x_528.x) * vec4<f32>(x_530.x, x_530.y, x_530.z, x_530.z));
  let x_535 : vec4<f32> = x_509.unity_SHBr;
  let x_536 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_535, x_536);
  let x_541 : vec4<f32> = x_509.unity_SHBg;
  let x_542 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_541, x_542);
  let x_547 : vec4<f32> = x_509.unity_SHBb;
  let x_548 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_547, x_548);
  let x_552 : f32 = u_xlat4.y;
  let x_554 : f32 = u_xlat4.y;
  u_xlat29.x = (x_552 * x_554);
  let x_558 : f32 = u_xlat4.x;
  let x_560 : f32 = u_xlat4.x;
  let x_563 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_558 * x_560) + -(x_563));
  let x_569 : vec4<f32> = x_509.unity_SHC;
  let x_571 : vec2<f32> = u_xlat29;
  let x_574 : vec4<f32> = u_xlat8;
  let x_576 : vec3<f32> = ((vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_571.x, x_571.x, x_571.x)) + vec3<f32>(x_574.x, x_574.y, x_574.z));
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat6;
  let x_581 : vec4<f32> = u_xlat7;
  let x_583 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) + vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat6;
  let x_588 : vec3<f32> = max(vec3<f32>(x_586.x, x_586.y, x_586.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_589 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_592 : f32 = u_xlat1.x;
  u_xlat29.x = ((-(x_592) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_600 : f32 = u_xlat29.x;
  u_xlat43 = (-(x_600) + 1.0f);
  let x_604 : vec2<f32> = u_xlat29;
  let x_606 : vec4<f32> = u_xlat2;
  u_xlat16 = (vec3<f32>(x_604.x, x_604.x, x_604.x) * vec3<f32>(x_606.y, x_606.z, x_606.w));
  let x_609 : vec4<f32> = u_xlat0;
  let x_612 : vec4<f32> = x_56.x_BaseColor;
  let x_617 : vec3<f32> = ((vec3<f32>(x_609.x, x_609.y, x_609.z) * vec3<f32>(x_612.x, x_612.y, x_612.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_618 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec3<f32> = u_xlat1;
  let x_622 : vec4<f32> = u_xlat0;
  let x_627 : vec3<f32> = ((vec3<f32>(x_620.x, x_620.x, x_620.x) * vec3<f32>(x_622.x, x_622.y, x_622.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_628 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_631 : f32 = u_xlat1.y;
  let x_634 : f32 = x_56.x_Smoothness;
  u_xlat1.x = ((-(x_631) * x_634) + 1.0f);
  let x_639 : f32 = u_xlat1.x;
  let x_641 : f32 = u_xlat1.x;
  u_xlat29.x = (x_639 * x_641);
  let x_645 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_645, 0.0078125f);
  let x_651 : f32 = u_xlat29.x;
  let x_653 : f32 = u_xlat29.x;
  u_xlat46 = (x_651 * x_653);
  let x_657 : f32 = u_xlat1.y;
  let x_659 : f32 = x_56.x_Smoothness;
  let x_661 : f32 = u_xlat43;
  u_xlat15.x = ((x_657 * x_659) + x_661);
  let x_665 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_665, 0.0f, 1.0f);
  let x_669 : f32 = u_xlat29.x;
  u_xlat43 = ((x_669 * 4.0f) + 2.0f);
  let x_673 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_673, 1.0f);
  let x_677 : vec4<f32> = u_xlat5;
  let x_678 : vec2<f32> = vec2<f32>(x_677.x, x_677.y);
  let x_680 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_678.x, x_678.y, x_680);
  let x_692 : vec3<f32> = txVec0;
  let x_694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_692.xy, x_692.z);
  u_xlat5.x = x_694;
  let x_698 : f32 = x_281.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_698) + 1.0f);
  let x_703 : f32 = u_xlat5.x;
  let x_705 : f32 = x_281.x_MainLightShadowParams.x;
  let x_708 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_703 * x_705) + x_708);
  let x_713 : f32 = u_xlat5.z;
  u_xlatb19 = (0.0f >= x_713);
  let x_719 : f32 = u_xlat5.z;
  u_xlatb33.x = (x_719 >= 1.0f);
  let x_723 : bool = u_xlatb33.x;
  let x_724 : bool = u_xlatb19;
  u_xlatb19 = (x_723 | x_724);
  let x_726 : bool = u_xlatb19;
  if (x_726) {
    x_728 = 1.0f;
  } else {
    let x_733 : f32 = u_xlat5.x;
    x_728 = x_733;
  }
  let x_734 : f32 = x_728;
  u_xlat5.x = x_734;
  let x_736 : vec3<f32> = vs_TEXCOORD1;
  let x_738 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat19 = (x_736 + -(x_738));
  let x_741 : vec3<f32> = u_xlat19;
  let x_742 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_741, x_742);
  let x_747 : f32 = u_xlat19.x;
  let x_749 : f32 = x_281.x_MainLightShadowParams.z;
  let x_752 : f32 = x_281.x_MainLightShadowParams.w;
  u_xlat33.x = ((x_747 * x_749) + x_752);
  let x_756 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_756, 0.0f, 1.0f);
  let x_761 : f32 = u_xlat5.x;
  u_xlat47 = (-(x_761) + 1.0f);
  let x_765 : f32 = u_xlat33.x;
  let x_766 : f32 = u_xlat47;
  let x_769 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_765 * x_766) + x_769);
  let x_779 : f32 = x_777.x_MainLightCookieTextureFormat;
  u_xlatb33.x = !((x_779 == -1.0f));
  let x_783 : bool = u_xlatb33.x;
  if (x_783) {
    let x_786 : vec3<f32> = vs_TEXCOORD1;
    let x_789 : vec4<f32> = x_777.x_MainLightWorldToLight[1i];
    u_xlat33 = (vec2<f32>(x_786.y, x_786.y) * vec2<f32>(x_789.x, x_789.y));
    let x_793 : vec4<f32> = x_777.x_MainLightWorldToLight[0i];
    let x_795 : vec3<f32> = vs_TEXCOORD1;
    let x_798 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_793.x, x_793.y) * vec2<f32>(x_795.x, x_795.x)) + x_798);
    let x_801 : vec4<f32> = x_777.x_MainLightWorldToLight[2i];
    let x_803 : vec3<f32> = vs_TEXCOORD1;
    let x_806 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_801.x, x_801.y) * vec2<f32>(x_803.z, x_803.z)) + x_806);
    let x_808 : vec2<f32> = u_xlat33;
    let x_810 : vec4<f32> = x_777.x_MainLightWorldToLight[3i];
    u_xlat33 = (x_808 + vec2<f32>(x_810.x, x_810.y));
    let x_813 : vec2<f32> = u_xlat33;
    u_xlat33 = ((x_813 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_823 : vec2<f32> = u_xlat33;
    let x_825 : f32 = x_28.x_GlobalMipBias.x;
    let x_826 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_823, x_825);
    u_xlat7 = x_826;
    let x_828 : f32 = x_777.x_MainLightCookieTextureFormat;
    let x_830 : f32 = x_777.x_MainLightCookieTextureFormat;
    let x_832 : f32 = x_777.x_MainLightCookieTextureFormat;
    let x_834 : f32 = x_777.x_MainLightCookieTextureFormat;
    let x_835 : vec4<f32> = vec4<f32>(x_828, x_830, x_832, x_834);
    let x_842 : vec4<bool> = (vec4<f32>(x_835.x, x_835.y, x_835.z, x_835.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb33 = vec2<bool>(x_842.x, x_842.y);
    let x_845 : bool = u_xlatb33.y;
    if (x_845) {
      let x_850 : f32 = u_xlat7.w;
      x_846 = x_850;
    } else {
      let x_853 : f32 = u_xlat7.x;
      x_846 = x_853;
    }
    let x_854 : f32 = x_846;
    u_xlat47 = x_854;
    let x_856 : bool = u_xlatb33.x;
    if (x_856) {
      let x_860 : vec4<f32> = u_xlat7;
      x_857 = vec3<f32>(x_860.x, x_860.y, x_860.z);
    } else {
      let x_863 : f32 = u_xlat47;
      x_857 = vec3<f32>(x_863, x_863, x_863);
    }
    let x_865 : vec3<f32> = x_857;
    let x_866 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_872 : vec4<f32> = u_xlat7;
  let x_875 : vec4<f32> = x_28.x_MainLightColor;
  let x_877 : vec3<f32> = (vec3<f32>(x_872.x, x_872.y, x_872.z) * vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_878 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_880 : vec3<f32> = u_xlat17;
  let x_882 : vec4<f32> = u_xlat4;
  u_xlat33.x = dot(-(x_880), vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_887 : f32 = u_xlat33.x;
  let x_889 : f32 = u_xlat33.x;
  u_xlat33.x = (x_887 + x_889);
  let x_892 : vec4<f32> = u_xlat4;
  let x_894 : vec2<f32> = u_xlat33;
  let x_898 : vec3<f32> = u_xlat17;
  let x_900 : vec3<f32> = ((vec3<f32>(x_892.x, x_892.y, x_892.z) * -(vec3<f32>(x_894.x, x_894.x, x_894.x))) + -(x_898));
  let x_901 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  let x_903 : vec4<f32> = u_xlat4;
  let x_905 : vec3<f32> = u_xlat17;
  u_xlat33.x = dot(vec3<f32>(x_903.x, x_903.y, x_903.z), x_905);
  let x_909 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_909, 0.0f, 1.0f);
  let x_913 : f32 = u_xlat33.x;
  u_xlat33.x = (-(x_913) + 1.0f);
  let x_918 : f32 = u_xlat33.x;
  let x_920 : f32 = u_xlat33.x;
  u_xlat33.x = (x_918 * x_920);
  let x_924 : f32 = u_xlat33.x;
  let x_926 : f32 = u_xlat33.x;
  u_xlat33.x = (x_924 * x_926);
  let x_930 : f32 = u_xlat1.x;
  u_xlat47 = ((-(x_930) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_937 : f32 = u_xlat1.x;
  let x_938 : f32 = u_xlat47;
  u_xlat1.x = (x_937 * x_938);
  let x_942 : f32 = u_xlat1.x;
  u_xlat1.x = (x_942 * 6.0f);
  let x_954 : vec4<f32> = u_xlat8;
  let x_957 : f32 = u_xlat1.x;
  let x_958 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_954.x, x_954.y, x_954.z), x_957);
  u_xlat8 = x_958;
  let x_960 : f32 = u_xlat8.w;
  u_xlat1.x = (x_960 + -1.0f);
  let x_964 : f32 = x_509.unity_SpecCube0_HDR.w;
  let x_966 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_964 * x_966) + 1.0f);
  let x_971 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_971, 0.0f);
  let x_975 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_975);
  let x_979 : f32 = u_xlat1.x;
  let x_981 : f32 = x_509.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_979 * x_981);
  let x_985 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_985);
  let x_989 : f32 = u_xlat1.x;
  let x_991 : f32 = x_509.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_989 * x_991);
  let x_994 : vec4<f32> = u_xlat8;
  let x_996 : vec3<f32> = u_xlat1;
  let x_998 : vec3<f32> = (vec3<f32>(x_994.x, x_994.y, x_994.z) * vec3<f32>(x_996.x, x_996.x, x_996.x));
  let x_999 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec2<f32> = u_xlat29;
  let x_1003 : vec2<f32> = u_xlat29;
  let x_1007 : vec2<f32> = ((vec2<f32>(x_1001.x, x_1001.x) * vec2<f32>(x_1003.x, x_1003.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1008 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1007.x, x_1008.y, x_1007.y);
  let x_1011 : f32 = u_xlat1.z;
  u_xlat29.x = (1.0f / x_1011);
  let x_1015 : vec4<f32> = u_xlat0;
  let x_1018 : vec2<f32> = u_xlat15;
  u_xlat9 = (-(vec3<f32>(x_1015.x, x_1015.y, x_1015.z)) + vec3<f32>(x_1018.x, x_1018.x, x_1018.x));
  let x_1021 : vec2<f32> = u_xlat33;
  let x_1023 : vec3<f32> = u_xlat9;
  let x_1025 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_1021.x, x_1021.x, x_1021.x) * x_1023) + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec2<f32> = u_xlat29;
  let x_1030 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_1028.x, x_1028.x, x_1028.x) * x_1030);
  let x_1032 : vec4<f32> = u_xlat8;
  let x_1034 : vec3<f32> = u_xlat9;
  let x_1035 : vec3<f32> = (vec3<f32>(x_1032.x, x_1032.y, x_1032.z) * x_1034);
  let x_1036 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1038 : vec4<f32> = u_xlat6;
  let x_1040 : vec3<f32> = u_xlat16;
  let x_1042 : vec4<f32> = u_xlat8;
  let x_1044 : vec3<f32> = ((vec3<f32>(x_1038.x, x_1038.y, x_1038.z) * x_1040) + vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
  let x_1045 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1048 : f32 = u_xlat5.x;
  let x_1050 : f32 = x_509.unity_LightData.z;
  u_xlat15.x = (x_1048 * x_1050);
  let x_1053 : vec4<f32> = u_xlat4;
  let x_1056 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat29.x = dot(vec3<f32>(x_1053.x, x_1053.y, x_1053.z), vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1061 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_1061, 0.0f, 1.0f);
  let x_1065 : f32 = u_xlat29.x;
  let x_1067 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1065 * x_1067);
  let x_1070 : vec2<f32> = u_xlat15;
  let x_1072 : vec4<f32> = u_xlat7;
  let x_1074 : vec3<f32> = (vec3<f32>(x_1070.x, x_1070.x, x_1070.x) * vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1074.x, x_1075.y, x_1074.y, x_1074.z);
  let x_1077 : vec3<f32> = u_xlat17;
  let x_1079 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1081 : vec3<f32> = (x_1077 + vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
  let x_1082 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
  let x_1084 : vec4<f32> = u_xlat7;
  let x_1086 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_1084.x, x_1084.y, x_1084.z), vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1091 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_1091, 1.17549435e-38f);
  let x_1096 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_1096);
  let x_1099 : vec2<f32> = u_xlat15;
  let x_1101 : vec4<f32> = u_xlat7;
  let x_1103 : vec3<f32> = (vec3<f32>(x_1099.x, x_1099.x, x_1099.x) * vec3<f32>(x_1101.x, x_1101.y, x_1101.z));
  let x_1104 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
  let x_1106 : vec4<f32> = u_xlat4;
  let x_1108 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_1106.x, x_1106.y, x_1106.z), vec3<f32>(x_1108.x, x_1108.y, x_1108.z));
  let x_1113 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_1113, 0.0f, 1.0f);
  let x_1117 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1119 : vec4<f32> = u_xlat7;
  u_xlat15.y = dot(vec3<f32>(x_1117.x, x_1117.y, x_1117.z), vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
  let x_1124 : f32 = u_xlat15.y;
  u_xlat15.y = clamp(x_1124, 0.0f, 1.0f);
  let x_1127 : vec2<f32> = u_xlat15;
  let x_1128 : vec2<f32> = u_xlat15;
  u_xlat15 = (x_1127 * x_1128);
  let x_1131 : f32 = u_xlat15.x;
  let x_1133 : f32 = u_xlat1.x;
  u_xlat15.x = ((x_1131 * x_1133) + 1.00001001358032226562f);
  let x_1139 : f32 = u_xlat15.x;
  let x_1141 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1139 * x_1141);
  let x_1145 : f32 = u_xlat15.y;
  u_xlat29.x = max(x_1145, 0.10000000149011611938f);
  let x_1150 : f32 = u_xlat29.x;
  let x_1152 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1150 * x_1152);
  let x_1155 : f32 = u_xlat43;
  let x_1157 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1155 * x_1157);
  let x_1160 : f32 = u_xlat46;
  let x_1162 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1160 / x_1162);
  let x_1165 : vec4<f32> = u_xlat0;
  let x_1167 : vec2<f32> = u_xlat15;
  let x_1170 : vec3<f32> = u_xlat16;
  let x_1171 : vec3<f32> = ((vec3<f32>(x_1165.x, x_1165.y, x_1165.z) * vec3<f32>(x_1167.x, x_1167.x, x_1167.x)) + x_1170);
  let x_1172 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1172.w);
  let x_1174 : vec4<f32> = u_xlat5;
  let x_1176 : vec4<f32> = u_xlat7;
  let x_1178 : vec3<f32> = (vec3<f32>(x_1174.x, x_1174.z, x_1174.w) * vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1178.x, x_1179.y, x_1178.y, x_1178.z);
  let x_1182 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1184 : f32 = x_509.unity_LightData.y;
  u_xlat15.x = min(x_1182, x_1184);
  let x_1189 : f32 = u_xlat15.x;
  u_xlatu15 = bitcast<u32>(i32(x_1189));
  let x_1193 : f32 = u_xlat19.x;
  let x_1196 : f32 = x_281.x_AdditionalShadowFadeParams.x;
  let x_1199 : f32 = x_281.x_AdditionalShadowFadeParams.y;
  u_xlat29.x = ((x_1193 * x_1196) + x_1199);
  let x_1203 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_1203, 0.0f, 1.0f);
  let x_1208 : f32 = x_777.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1210 : f32 = x_777.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1212 : f32 = x_777.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1214 : f32 = x_777.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1215 : vec4<f32> = vec4<f32>(x_1208, x_1210, x_1212, x_1214);
  let x_1222 : vec4<bool> = (vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1215.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1222.x, x_1222.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1234 : u32 = u_xlatu_loop_1;
    let x_1235 : u32 = u_xlatu15;
    if ((x_1234 < x_1235)) {
    } else {
      break;
    }
    let x_1238 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1238 >> 2u);
    let x_1241 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1241 & 3u));
    let x_1245 : u32 = u_xlatu48;
    let x_1248 : vec4<f32> = x_509.unity_LightIndices[bitcast<i32>(x_1245)];
    let x_1258 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1263 : vec4<u32> = indexable[x_1258];
    u_xlat48 = dot(x_1248, bitcast<vec4<f32>>(x_1263));
    let x_1267 : f32 = u_xlat48;
    u_xlati48 = i32(x_1267);
    let x_1269 : vec3<f32> = vs_TEXCOORD1;
    let x_1280 : i32 = u_xlati48;
    let x_1282 : vec4<f32> = x_1279.x_AdditionalLightsPosition[x_1280];
    let x_1285 : i32 = u_xlati48;
    let x_1287 : vec4<f32> = x_1279.x_AdditionalLightsPosition[x_1285];
    u_xlat9 = ((-(x_1269) * vec3<f32>(x_1282.w, x_1282.w, x_1282.w)) + vec3<f32>(x_1287.x, x_1287.y, x_1287.z));
    let x_1291 : vec3<f32> = u_xlat9;
    let x_1292 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1291, x_1292);
    let x_1294 : f32 = u_xlat35;
    u_xlat35 = max(x_1294, 0.00006103515625f);
    let x_1298 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1298);
    let x_1301 : f32 = u_xlat49;
    let x_1303 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1301, x_1301, x_1301) * x_1303);
    let x_1306 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1306);
    let x_1308 : f32 = u_xlat35;
    let x_1309 : i32 = u_xlati48;
    let x_1311 : f32 = x_1279.x_AdditionalLightsAttenuation[x_1309].x;
    u_xlat35 = (x_1308 * x_1311);
    let x_1313 : f32 = u_xlat35;
    let x_1315 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1313) * x_1315) + 1.0f);
    let x_1318 : f32 = u_xlat35;
    u_xlat35 = max(x_1318, 0.0f);
    let x_1320 : f32 = u_xlat35;
    let x_1321 : f32 = u_xlat35;
    u_xlat35 = (x_1320 * x_1321);
    let x_1323 : f32 = u_xlat35;
    let x_1324 : f32 = u_xlat50;
    u_xlat35 = (x_1323 * x_1324);
    let x_1326 : i32 = u_xlati48;
    let x_1328 : vec4<f32> = x_1279.x_AdditionalLightsSpotDir[x_1326];
    let x_1330 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1328.x, x_1328.y, x_1328.z), x_1330);
    let x_1332 : f32 = u_xlat50;
    let x_1333 : i32 = u_xlati48;
    let x_1335 : f32 = x_1279.x_AdditionalLightsAttenuation[x_1333].z;
    let x_1337 : i32 = u_xlati48;
    let x_1339 : f32 = x_1279.x_AdditionalLightsAttenuation[x_1337].w;
    u_xlat50 = ((x_1332 * x_1335) + x_1339);
    let x_1341 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1341, 0.0f, 1.0f);
    let x_1343 : f32 = u_xlat50;
    let x_1344 : f32 = u_xlat50;
    u_xlat50 = (x_1343 * x_1344);
    let x_1346 : f32 = u_xlat35;
    let x_1347 : f32 = u_xlat50;
    u_xlat35 = (x_1346 * x_1347);
    let x_1351 : i32 = u_xlati48;
    let x_1353 : f32 = x_281.x_AdditionalShadowParams[x_1351].w;
    u_xlati50 = i32(x_1353);
    let x_1356 : i32 = u_xlati50;
    u_xlatb51 = (x_1356 >= 0i);
    let x_1358 : bool = u_xlatb51;
    if (x_1358) {
      let x_1362 : i32 = u_xlati48;
      let x_1364 : f32 = x_281.x_AdditionalShadowParams[x_1362].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1364, x_1364, x_1364, x_1364))));
      let x_1368 : bool = u_xlatb51;
      if (x_1368) {
        let x_1372 : vec3<f32> = u_xlat10;
        let x_1375 : vec3<f32> = u_xlat10;
        let x_1378 : vec4<bool> = (abs(vec4<f32>(x_1372.z, x_1372.z, x_1372.y, x_1372.z)) >= abs(vec4<f32>(x_1375.x, x_1375.y, x_1375.x, x_1375.x)));
        let x_1380 : vec3<bool> = vec3<bool>(x_1378.x, x_1378.y, x_1378.z);
        let x_1381 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
        let x_1384 : bool = u_xlatb11.y;
        let x_1386 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1384 & x_1386);
        let x_1388 : vec3<f32> = u_xlat10;
        let x_1391 : vec4<bool> = (-(vec4<f32>(x_1388.z, x_1388.y, x_1388.z, x_1388.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1392 : vec3<bool> = vec3<bool>(x_1391.x, x_1391.y, x_1391.w);
        let x_1393 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1392.x, x_1392.y, x_1393.z, x_1392.z);
        let x_1397 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1397);
        let x_1402 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1402);
        let x_1407 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1407);
        let x_1410 : bool = u_xlatb11.z;
        if (x_1410) {
          let x_1415 : f32 = u_xlat11.y;
          x_1411 = x_1415;
        } else {
          let x_1417 : f32 = u_xlat52;
          x_1411 = x_1417;
        }
        let x_1418 : f32 = x_1411;
        u_xlat52 = x_1418;
        let x_1420 : bool = u_xlatb51;
        if (x_1420) {
          let x_1425 : f32 = u_xlat11.x;
          x_1421 = x_1425;
        } else {
          let x_1427 : f32 = u_xlat52;
          x_1421 = x_1427;
        }
        let x_1428 : f32 = x_1421;
        u_xlat51 = x_1428;
        let x_1429 : i32 = u_xlati48;
        let x_1431 : f32 = x_281.x_AdditionalShadowParams[x_1429].w;
        u_xlat52 = trunc(x_1431);
        let x_1433 : f32 = u_xlat51;
        let x_1434 : f32 = u_xlat52;
        u_xlat51 = (x_1433 + x_1434);
        let x_1436 : f32 = u_xlat51;
        u_xlati50 = i32(x_1436);
      }
      let x_1438 : i32 = u_xlati50;
      u_xlati50 = (x_1438 << bitcast<u32>(2i));
      let x_1440 : vec3<f32> = vs_TEXCOORD1;
      let x_1443 : i32 = u_xlati50;
      let x_1446 : i32 = u_xlati50;
      let x_1450 : vec4<f32> = x_281.x_AdditionalLightsWorldToShadow[((x_1443 + 1i) / 4i)][((x_1446 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1440.y, x_1440.y, x_1440.y, x_1440.y) * x_1450);
      let x_1452 : i32 = u_xlati50;
      let x_1454 : i32 = u_xlati50;
      let x_1457 : vec4<f32> = x_281.x_AdditionalLightsWorldToShadow[(x_1452 / 4i)][(x_1454 % 4i)];
      let x_1458 : vec3<f32> = vs_TEXCOORD1;
      let x_1461 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1457 * vec4<f32>(x_1458.x, x_1458.x, x_1458.x, x_1458.x)) + x_1461);
      let x_1463 : i32 = u_xlati50;
      let x_1466 : i32 = u_xlati50;
      let x_1470 : vec4<f32> = x_281.x_AdditionalLightsWorldToShadow[((x_1463 + 2i) / 4i)][((x_1466 + 2i) % 4i)];
      let x_1471 : vec3<f32> = vs_TEXCOORD1;
      let x_1474 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1470 * vec4<f32>(x_1471.z, x_1471.z, x_1471.z, x_1471.z)) + x_1474);
      let x_1476 : vec4<f32> = u_xlat11;
      let x_1477 : i32 = u_xlati50;
      let x_1480 : i32 = u_xlati50;
      let x_1484 : vec4<f32> = x_281.x_AdditionalLightsWorldToShadow[((x_1477 + 3i) / 4i)][((x_1480 + 3i) % 4i)];
      u_xlat11 = (x_1476 + x_1484);
      let x_1486 : vec4<f32> = u_xlat11;
      let x_1488 : vec4<f32> = u_xlat11;
      let x_1490 : vec3<f32> = (vec3<f32>(x_1486.x, x_1486.y, x_1486.z) / vec3<f32>(x_1488.w, x_1488.w, x_1488.w));
      let x_1491 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1491.w);
      let x_1494 : vec4<f32> = u_xlat11;
      let x_1495 : vec2<f32> = vec2<f32>(x_1494.x, x_1494.y);
      let x_1497 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
      let x_1505 : vec3<f32> = txVec1;
      let x_1507 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1505.xy, x_1505.z);
      u_xlat50 = x_1507;
      let x_1508 : i32 = u_xlati48;
      let x_1510 : f32 = x_281.x_AdditionalShadowParams[x_1508].x;
      u_xlat51 = (1.0f + -(x_1510));
      let x_1513 : f32 = u_xlat50;
      let x_1514 : i32 = u_xlati48;
      let x_1516 : f32 = x_281.x_AdditionalShadowParams[x_1514].x;
      let x_1518 : f32 = u_xlat51;
      u_xlat50 = ((x_1513 * x_1516) + x_1518);
      let x_1521 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1521);
      let x_1525 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1525 >= 1.0f);
      let x_1527 : bool = u_xlatb51;
      let x_1528 : bool = u_xlatb52;
      u_xlatb51 = (x_1527 | x_1528);
      let x_1530 : bool = u_xlatb51;
      let x_1531 : f32 = u_xlat50;
      u_xlat50 = select(x_1531, 1.0f, x_1530);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1534 : f32 = u_xlat50;
    u_xlat51 = (-(x_1534) + 1.0f);
    let x_1538 : f32 = u_xlat29.x;
    let x_1539 : f32 = u_xlat51;
    let x_1541 : f32 = u_xlat50;
    u_xlat50 = ((x_1538 * x_1539) + x_1541);
    let x_1544 : i32 = u_xlati48;
    u_xlati51 = (1i << bitcast<u32>((x_1544 & 31i)));
    let x_1548 : i32 = u_xlati51;
    let x_1551 : f32 = x_777.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1548) & bitcast<u32>(x_1551)));
    let x_1555 : i32 = u_xlati51;
    if ((x_1555 != 0i)) {
      let x_1559 : i32 = u_xlati48;
      let x_1561 : f32 = x_777.x_AdditionalLightsLightTypes[x_1559].el;
      u_xlati51 = i32(x_1561);
      let x_1564 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1564 != 0i));
      let x_1568 : i32 = u_xlati48;
      u_xlati11 = (x_1568 << bitcast<u32>(2i));
      let x_1570 : i32 = u_xlati52;
      if ((x_1570 != 0i)) {
        let x_1575 : vec3<f32> = vs_TEXCOORD1;
        let x_1577 : i32 = u_xlati11;
        let x_1580 : i32 = u_xlati11;
        let x_1584 : vec4<f32> = x_777.x_AdditionalLightsWorldToLights[((x_1577 + 1i) / 4i)][((x_1580 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1575.y, x_1575.y, x_1575.y) * vec3<f32>(x_1584.x, x_1584.y, x_1584.w));
        let x_1587 : i32 = u_xlati11;
        let x_1589 : i32 = u_xlati11;
        let x_1592 : vec4<f32> = x_777.x_AdditionalLightsWorldToLights[(x_1587 / 4i)][(x_1589 % 4i)];
        let x_1594 : vec3<f32> = vs_TEXCOORD1;
        let x_1597 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1592.x, x_1592.y, x_1592.w) * vec3<f32>(x_1594.x, x_1594.x, x_1594.x)) + x_1597);
        let x_1599 : i32 = u_xlati11;
        let x_1602 : i32 = u_xlati11;
        let x_1606 : vec4<f32> = x_777.x_AdditionalLightsWorldToLights[((x_1599 + 2i) / 4i)][((x_1602 + 2i) % 4i)];
        let x_1608 : vec3<f32> = vs_TEXCOORD1;
        let x_1611 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1606.x, x_1606.y, x_1606.w) * vec3<f32>(x_1608.z, x_1608.z, x_1608.z)) + x_1611);
        let x_1613 : vec3<f32> = u_xlat25;
        let x_1614 : i32 = u_xlati11;
        let x_1617 : i32 = u_xlati11;
        let x_1621 : vec4<f32> = x_777.x_AdditionalLightsWorldToLights[((x_1614 + 3i) / 4i)][((x_1617 + 3i) % 4i)];
        u_xlat25 = (x_1613 + vec3<f32>(x_1621.x, x_1621.y, x_1621.w));
        let x_1624 : vec3<f32> = u_xlat25;
        let x_1626 : vec3<f32> = u_xlat25;
        let x_1628 : vec2<f32> = (vec2<f32>(x_1624.x, x_1624.y) / vec2<f32>(x_1626.z, x_1626.z));
        let x_1629 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1628.x, x_1628.y, x_1629.z);
        let x_1631 : vec3<f32> = u_xlat25;
        let x_1634 : vec2<f32> = ((vec2<f32>(x_1631.x, x_1631.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1635 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1634.x, x_1634.y, x_1635.z);
        let x_1637 : vec3<f32> = u_xlat25;
        let x_1641 : vec2<f32> = clamp(vec2<f32>(x_1637.x, x_1637.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1642 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1641.x, x_1641.y, x_1642.z);
        let x_1644 : i32 = u_xlati48;
        let x_1646 : vec4<f32> = x_777.x_AdditionalLightsCookieAtlasUVRects[x_1644];
        let x_1648 : vec3<f32> = u_xlat25;
        let x_1651 : i32 = u_xlati48;
        let x_1653 : vec4<f32> = x_777.x_AdditionalLightsCookieAtlasUVRects[x_1651];
        let x_1655 : vec2<f32> = ((vec2<f32>(x_1646.x, x_1646.y) * vec2<f32>(x_1648.x, x_1648.y)) + vec2<f32>(x_1653.z, x_1653.w));
        let x_1656 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1655.x, x_1655.y, x_1656.z);
      } else {
        let x_1659 : i32 = u_xlati51;
        u_xlatb51 = (x_1659 == 1i);
        let x_1661 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1661);
        let x_1663 : i32 = u_xlati51;
        if ((x_1663 != 0i)) {
          let x_1668 : vec3<f32> = vs_TEXCOORD1;
          let x_1670 : i32 = u_xlati11;
          let x_1673 : i32 = u_xlati11;
          let x_1677 : vec4<f32> = x_777.x_AdditionalLightsWorldToLights[((x_1670 + 1i) / 4i)][((x_1673 + 1i) % 4i)];
          let x_1679 : vec2<f32> = (vec2<f32>(x_1668.y, x_1668.y) * vec2<f32>(x_1677.x, x_1677.y));
          let x_1680 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1679.x, x_1679.y, x_1680.z, x_1680.w);
          let x_1682 : i32 = u_xlati11;
          let x_1684 : i32 = u_xlati11;
          let x_1687 : vec4<f32> = x_777.x_AdditionalLightsWorldToLights[(x_1682 / 4i)][(x_1684 % 4i)];
          let x_1689 : vec3<f32> = vs_TEXCOORD1;
          let x_1692 : vec4<f32> = u_xlat12;
          let x_1694 : vec2<f32> = ((vec2<f32>(x_1687.x, x_1687.y) * vec2<f32>(x_1689.x, x_1689.x)) + vec2<f32>(x_1692.x, x_1692.y));
          let x_1695 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1694.x, x_1694.y, x_1695.z, x_1695.w);
          let x_1697 : i32 = u_xlati11;
          let x_1700 : i32 = u_xlati11;
          let x_1704 : vec4<f32> = x_777.x_AdditionalLightsWorldToLights[((x_1697 + 2i) / 4i)][((x_1700 + 2i) % 4i)];
          let x_1706 : vec3<f32> = vs_TEXCOORD1;
          let x_1709 : vec4<f32> = u_xlat12;
          let x_1711 : vec2<f32> = ((vec2<f32>(x_1704.x, x_1704.y) * vec2<f32>(x_1706.z, x_1706.z)) + vec2<f32>(x_1709.x, x_1709.y));
          let x_1712 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1711.x, x_1711.y, x_1712.z, x_1712.w);
          let x_1714 : vec4<f32> = u_xlat12;
          let x_1716 : i32 = u_xlati11;
          let x_1719 : i32 = u_xlati11;
          let x_1723 : vec4<f32> = x_777.x_AdditionalLightsWorldToLights[((x_1716 + 3i) / 4i)][((x_1719 + 3i) % 4i)];
          let x_1725 : vec2<f32> = (vec2<f32>(x_1714.x, x_1714.y) + vec2<f32>(x_1723.x, x_1723.y));
          let x_1726 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1725.x, x_1725.y, x_1726.z, x_1726.w);
          let x_1728 : vec4<f32> = u_xlat12;
          let x_1731 : vec2<f32> = ((vec2<f32>(x_1728.x, x_1728.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1732 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1731.x, x_1731.y, x_1732.z, x_1732.w);
          let x_1734 : vec4<f32> = u_xlat12;
          let x_1736 : vec2<f32> = fract(vec2<f32>(x_1734.x, x_1734.y));
          let x_1737 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1736.x, x_1736.y, x_1737.z, x_1737.w);
          let x_1739 : i32 = u_xlati48;
          let x_1741 : vec4<f32> = x_777.x_AdditionalLightsCookieAtlasUVRects[x_1739];
          let x_1743 : vec4<f32> = u_xlat12;
          let x_1746 : i32 = u_xlati48;
          let x_1748 : vec4<f32> = x_777.x_AdditionalLightsCookieAtlasUVRects[x_1746];
          let x_1750 : vec2<f32> = ((vec2<f32>(x_1741.x, x_1741.y) * vec2<f32>(x_1743.x, x_1743.y)) + vec2<f32>(x_1748.z, x_1748.w));
          let x_1751 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1750.x, x_1750.y, x_1751.z);
        } else {
          let x_1754 : vec3<f32> = vs_TEXCOORD1;
          let x_1756 : i32 = u_xlati11;
          let x_1759 : i32 = u_xlati11;
          let x_1763 : vec4<f32> = x_777.x_AdditionalLightsWorldToLights[((x_1756 + 1i) / 4i)][((x_1759 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1754.y, x_1754.y, x_1754.y, x_1754.y) * x_1763);
          let x_1765 : i32 = u_xlati11;
          let x_1767 : i32 = u_xlati11;
          let x_1770 : vec4<f32> = x_777.x_AdditionalLightsWorldToLights[(x_1765 / 4i)][(x_1767 % 4i)];
          let x_1771 : vec3<f32> = vs_TEXCOORD1;
          let x_1774 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1770 * vec4<f32>(x_1771.x, x_1771.x, x_1771.x, x_1771.x)) + x_1774);
          let x_1776 : i32 = u_xlati11;
          let x_1779 : i32 = u_xlati11;
          let x_1783 : vec4<f32> = x_777.x_AdditionalLightsWorldToLights[((x_1776 + 2i) / 4i)][((x_1779 + 2i) % 4i)];
          let x_1784 : vec3<f32> = vs_TEXCOORD1;
          let x_1787 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1783 * vec4<f32>(x_1784.z, x_1784.z, x_1784.z, x_1784.z)) + x_1787);
          let x_1789 : vec4<f32> = u_xlat12;
          let x_1790 : i32 = u_xlati11;
          let x_1793 : i32 = u_xlati11;
          let x_1797 : vec4<f32> = x_777.x_AdditionalLightsWorldToLights[((x_1790 + 3i) / 4i)][((x_1793 + 3i) % 4i)];
          u_xlat12 = (x_1789 + x_1797);
          let x_1799 : vec4<f32> = u_xlat12;
          let x_1801 : vec4<f32> = u_xlat12;
          let x_1803 : vec3<f32> = (vec3<f32>(x_1799.x, x_1799.y, x_1799.z) / vec3<f32>(x_1801.w, x_1801.w, x_1801.w));
          let x_1804 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1803.x, x_1803.y, x_1803.z, x_1804.w);
          let x_1806 : vec4<f32> = u_xlat12;
          let x_1808 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1806.x, x_1806.y, x_1806.z), vec3<f32>(x_1808.x, x_1808.y, x_1808.z));
          let x_1811 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1811);
          let x_1813 : f32 = u_xlat51;
          let x_1815 : vec4<f32> = u_xlat12;
          let x_1817 : vec3<f32> = (vec3<f32>(x_1813, x_1813, x_1813) * vec3<f32>(x_1815.x, x_1815.y, x_1815.z));
          let x_1818 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
          let x_1820 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1820.x, x_1820.y, x_1820.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1825 : f32 = u_xlat51;
          u_xlat51 = max(x_1825, 0.00000099999999747524f);
          let x_1828 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1828);
          let x_1831 : f32 = u_xlat51;
          let x_1833 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1831, x_1831, x_1831) * vec3<f32>(x_1833.z, x_1833.x, x_1833.y));
          let x_1837 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1837);
          let x_1841 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1841, 0.0f, 1.0f);
          let x_1844 : vec3<f32> = u_xlat13;
          let x_1846 : vec4<bool> = (vec4<f32>(x_1844.y, x_1844.y, x_1844.y, x_1844.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1847 : vec2<bool> = vec2<bool>(x_1846.x, x_1846.w);
          let x_1848 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1847.x, x_1848.y, x_1848.z, x_1847.y);
          let x_1851 : bool = u_xlatb11.x;
          if (x_1851) {
            let x_1856 : f32 = u_xlat13.x;
            x_1852 = x_1856;
          } else {
            let x_1859 : f32 = u_xlat13.x;
            x_1852 = -(x_1859);
          }
          let x_1861 : f32 = x_1852;
          u_xlat11.x = x_1861;
          let x_1864 : bool = u_xlatb11.w;
          if (x_1864) {
            let x_1869 : f32 = u_xlat13.x;
            x_1865 = x_1869;
          } else {
            let x_1872 : f32 = u_xlat13.x;
            x_1865 = -(x_1872);
          }
          let x_1874 : f32 = x_1865;
          u_xlat11.w = x_1874;
          let x_1876 : vec4<f32> = u_xlat12;
          let x_1878 : f32 = u_xlat51;
          let x_1881 : vec4<f32> = u_xlat11;
          let x_1883 : vec2<f32> = ((vec2<f32>(x_1876.x, x_1876.y) * vec2<f32>(x_1878, x_1878)) + vec2<f32>(x_1881.x, x_1881.w));
          let x_1884 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1883.x, x_1884.y, x_1884.z, x_1883.y);
          let x_1886 : vec4<f32> = u_xlat11;
          let x_1889 : vec2<f32> = ((vec2<f32>(x_1886.x, x_1886.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1890 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1889.x, x_1890.y, x_1890.z, x_1889.y);
          let x_1892 : vec4<f32> = u_xlat11;
          let x_1896 : vec2<f32> = clamp(vec2<f32>(x_1892.x, x_1892.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1897 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1896.x, x_1897.y, x_1897.z, x_1896.y);
          let x_1899 : i32 = u_xlati48;
          let x_1901 : vec4<f32> = x_777.x_AdditionalLightsCookieAtlasUVRects[x_1899];
          let x_1903 : vec4<f32> = u_xlat11;
          let x_1906 : i32 = u_xlati48;
          let x_1908 : vec4<f32> = x_777.x_AdditionalLightsCookieAtlasUVRects[x_1906];
          let x_1910 : vec2<f32> = ((vec2<f32>(x_1901.x, x_1901.y) * vec2<f32>(x_1903.x, x_1903.w)) + vec2<f32>(x_1908.z, x_1908.w));
          let x_1911 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1910.x, x_1910.y, x_1911.z);
        }
      }
      let x_1918 : vec3<f32> = u_xlat25;
      let x_1920 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1918.x, x_1918.y), 0.0f);
      u_xlat11 = x_1920;
      let x_1922 : bool = u_xlatb7.y;
      if (x_1922) {
        let x_1927 : f32 = u_xlat11.w;
        x_1923 = x_1927;
      } else {
        let x_1930 : f32 = u_xlat11.x;
        x_1923 = x_1930;
      }
      let x_1931 : f32 = x_1923;
      u_xlat51 = x_1931;
      let x_1933 : bool = u_xlatb7.x;
      if (x_1933) {
        let x_1937 : vec4<f32> = u_xlat11;
        x_1934 = vec3<f32>(x_1937.x, x_1937.y, x_1937.z);
      } else {
        let x_1940 : f32 = u_xlat51;
        x_1934 = vec3<f32>(x_1940, x_1940, x_1940);
      }
      let x_1942 : vec3<f32> = x_1934;
      let x_1943 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1942.x, x_1942.y, x_1942.z, x_1943.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1949 : vec4<f32> = u_xlat11;
    let x_1951 : i32 = u_xlati48;
    let x_1953 : vec4<f32> = x_1279.x_AdditionalLightsColor[x_1951];
    let x_1955 : vec3<f32> = (vec3<f32>(x_1949.x, x_1949.y, x_1949.z) * vec3<f32>(x_1953.x, x_1953.y, x_1953.z));
    let x_1956 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1955.x, x_1955.y, x_1955.z, x_1956.w);
    let x_1958 : f32 = u_xlat35;
    let x_1959 : f32 = u_xlat50;
    u_xlat48 = (x_1958 * x_1959);
    let x_1961 : vec4<f32> = u_xlat4;
    let x_1963 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_1961.x, x_1961.y, x_1961.z), x_1963);
    let x_1965 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1965, 0.0f, 1.0f);
    let x_1967 : f32 = u_xlat48;
    let x_1968 : f32 = u_xlat35;
    u_xlat48 = (x_1967 * x_1968);
    let x_1970 : f32 = u_xlat48;
    let x_1972 : vec4<f32> = u_xlat11;
    let x_1974 : vec3<f32> = (vec3<f32>(x_1970, x_1970, x_1970) * vec3<f32>(x_1972.x, x_1972.y, x_1972.z));
    let x_1975 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1974.x, x_1974.y, x_1974.z, x_1975.w);
    let x_1977 : vec3<f32> = u_xlat9;
    let x_1978 : f32 = u_xlat49;
    let x_1981 : vec3<f32> = u_xlat17;
    u_xlat9 = ((x_1977 * vec3<f32>(x_1978, x_1978, x_1978)) + x_1981);
    let x_1983 : vec3<f32> = u_xlat9;
    let x_1984 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1983, x_1984);
    let x_1986 : f32 = u_xlat48;
    u_xlat48 = max(x_1986, 1.17549435e-38f);
    let x_1988 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1988);
    let x_1990 : f32 = u_xlat48;
    let x_1992 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1990, x_1990, x_1990) * x_1992);
    let x_1994 : vec4<f32> = u_xlat4;
    let x_1996 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1994.x, x_1994.y, x_1994.z), x_1996);
    let x_1998 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1998, 0.0f, 1.0f);
    let x_2000 : vec3<f32> = u_xlat10;
    let x_2001 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_2000, x_2001);
    let x_2003 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2003, 0.0f, 1.0f);
    let x_2005 : f32 = u_xlat48;
    let x_2006 : f32 = u_xlat48;
    u_xlat48 = (x_2005 * x_2006);
    let x_2008 : f32 = u_xlat48;
    let x_2010 : f32 = u_xlat1.x;
    u_xlat48 = ((x_2008 * x_2010) + 1.00001001358032226562f);
    let x_2013 : f32 = u_xlat35;
    let x_2014 : f32 = u_xlat35;
    u_xlat35 = (x_2013 * x_2014);
    let x_2016 : f32 = u_xlat48;
    let x_2017 : f32 = u_xlat48;
    u_xlat48 = (x_2016 * x_2017);
    let x_2019 : f32 = u_xlat35;
    u_xlat35 = max(x_2019, 0.10000000149011611938f);
    let x_2021 : f32 = u_xlat48;
    let x_2022 : f32 = u_xlat35;
    u_xlat48 = (x_2021 * x_2022);
    let x_2024 : f32 = u_xlat43;
    let x_2025 : f32 = u_xlat48;
    u_xlat48 = (x_2024 * x_2025);
    let x_2027 : f32 = u_xlat46;
    let x_2028 : f32 = u_xlat48;
    u_xlat48 = (x_2027 / x_2028);
    let x_2030 : vec4<f32> = u_xlat0;
    let x_2032 : f32 = u_xlat48;
    let x_2035 : vec3<f32> = u_xlat16;
    u_xlat9 = ((vec3<f32>(x_2030.x, x_2030.y, x_2030.z) * vec3<f32>(x_2032, x_2032, x_2032)) + x_2035);
    let x_2037 : vec3<f32> = u_xlat9;
    let x_2038 : vec4<f32> = u_xlat11;
    let x_2041 : vec4<f32> = u_xlat8;
    let x_2043 : vec3<f32> = ((x_2037 * vec3<f32>(x_2038.x, x_2038.y, x_2038.z)) + vec3<f32>(x_2041.x, x_2041.y, x_2041.z));
    let x_2044 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2043.x, x_2043.y, x_2043.z, x_2044.w);

    continuing {
      let x_2046 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2046 + bitcast<u32>(1i));
    }
  }
  let x_2048 : vec4<f32> = u_xlat6;
  let x_2050 : vec3<f32> = u_xlat3;
  let x_2053 : vec4<f32> = u_xlat5;
  let x_2055 : vec3<f32> = ((vec3<f32>(x_2048.x, x_2048.y, x_2048.z) * vec3<f32>(x_2050.x, x_2050.x, x_2050.x)) + vec3<f32>(x_2053.x, x_2053.z, x_2053.w));
  let x_2056 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2055.x, x_2055.y, x_2055.z, x_2056.w);
  let x_2058 : vec4<f32> = u_xlat8;
  let x_2060 : vec4<f32> = u_xlat0;
  let x_2062 : vec3<f32> = (vec3<f32>(x_2058.x, x_2058.y, x_2058.z) + vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
  let x_2063 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
  let x_2065 : f32 = u_xlat42;
  let x_2066 : f32 = u_xlat42;
  u_xlat42 = (x_2065 * -(x_2066));
  let x_2069 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2069);
  let x_2071 : vec4<f32> = u_xlat0;
  let x_2074 : vec4<f32> = x_28.unity_FogColor;
  let x_2077 : vec3<f32> = (vec3<f32>(x_2071.x, x_2071.y, x_2071.z) + -(vec3<f32>(x_2074.x, x_2074.y, x_2074.z)));
  let x_2078 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2077.x, x_2077.y, x_2077.z, x_2078.w);
  let x_2082 : f32 = u_xlat42;
  let x_2084 : vec4<f32> = u_xlat0;
  let x_2088 : vec4<f32> = x_28.unity_FogColor;
  let x_2090 : vec3<f32> = ((vec3<f32>(x_2082, x_2082, x_2082) * vec3<f32>(x_2084.x, x_2084.y, x_2084.z)) + vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
  let x_2091 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
  let x_2095 : f32 = x_56.x_Surface;
  u_xlatb0 = (x_2095 == 1.0f);
  let x_2097 : bool = u_xlatb0;
  if (x_2097) {
    let x_2102 : f32 = u_xlat2.x;
    x_2098 = x_2102;
  } else {
    x_2098 = 1.0f;
  }
  let x_2104 : f32 = x_2098;
  SV_Target0.w = x_2104;
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


