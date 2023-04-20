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

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_315 : UnityPerDraw;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat15 : vec2<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_508 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

@group(1) @binding(5) var<uniform> x_581 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu15 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1089 : AdditionalLights;

var<private> u_xlat35 : f32;

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

var<private> u_xlatu47 : u32;

fn main_1() {
  var x_196 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_667 : f32;
  var x_678 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1222 : f32;
  var x_1232 : f32;
  var txVec1 : vec3<f32>;
  var x_1663 : f32;
  var x_1676 : f32;
  var x_1734 : f32;
  var x_1745 : vec3<f32>;
  var x_1932 : f32;
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
    let x_202 : vec3<f32> = u_xlat5;
    x_196 = x_202;
  }
  let x_203 : vec3<f32> = x_196;
  u_xlat17 = x_203;
  let x_205 : vec3<f32> = vs_TEXCOORD2;
  let x_209 : vec4<f32> = vs_TEXCOORD3;
  let x_211 : vec3<f32> = (vec3<f32>(x_205.z, x_205.x, x_205.y) * vec3<f32>(x_209.y, x_209.z, x_209.x));
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_214 : vec3<f32> = vs_TEXCOORD2;
  let x_216 : vec4<f32> = vs_TEXCOORD3;
  let x_219 : vec4<f32> = u_xlat4;
  let x_222 : vec3<f32> = ((vec3<f32>(x_214.y, x_214.z, x_214.x) * vec3<f32>(x_216.z, x_216.x, x_216.y)) + -(vec3<f32>(x_219.x, x_219.y, x_219.z)));
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_225 : vec4<f32> = u_xlat4;
  let x_227 : vec4<f32> = vs_TEXCOORD3;
  let x_229 : vec3<f32> = (vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.w, x_227.w, x_227.w));
  let x_230 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec2<f32> = u_xlat29;
  let x_234 : vec4<f32> = u_xlat4;
  let x_236 : vec3<f32> = (vec3<f32>(x_232.y, x_232.y, x_232.y) * vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_239 : vec2<f32> = u_xlat29;
  let x_241 : vec4<f32> = vs_TEXCOORD3;
  let x_244 : vec4<f32> = u_xlat4;
  let x_246 : vec3<f32> = ((vec3<f32>(x_239.x, x_239.x, x_239.x) * vec3<f32>(x_241.x, x_241.y, x_241.z)) + vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : f32 = u_xlat42;
  let x_251 : vec3<f32> = vs_TEXCOORD2;
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec3<f32> = ((vec3<f32>(x_249, x_249, x_249) * x_251) + vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat4;
  let x_260 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_258.x, x_258.y, x_258.z), vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_263);
  let x_265 : f32 = u_xlat42;
  let x_267 : vec4<f32> = u_xlat4;
  let x_269 : vec3<f32> = (vec3<f32>(x_265, x_265, x_265) * vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_274 : f32 = vs_TEXCOORD1.y;
  let x_276 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat42 = (x_274 * x_276);
  let x_279 : f32 = x_28.unity_MatrixV[0i].z;
  let x_281 : f32 = vs_TEXCOORD1.x;
  let x_283 : f32 = u_xlat42;
  u_xlat42 = ((x_279 * x_281) + x_283);
  let x_286 : f32 = x_28.unity_MatrixV[2i].z;
  let x_288 : f32 = vs_TEXCOORD1.z;
  let x_290 : f32 = u_xlat42;
  u_xlat42 = ((x_286 * x_288) + x_290);
  let x_292 : f32 = u_xlat42;
  let x_295 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat42 = (x_292 + x_295);
  let x_297 : f32 = u_xlat42;
  let x_301 : f32 = x_28.x_ProjectionParams.y;
  u_xlat42 = (-(x_297) + -(x_301));
  let x_304 : f32 = u_xlat42;
  u_xlat42 = max(x_304, 0.0f);
  let x_306 : f32 = u_xlat42;
  let x_309 : f32 = x_28.unity_FogParams.x;
  u_xlat42 = (x_306 * x_309);
  u_xlat4.w = 1.0f;
  let x_318 : vec4<f32> = x_315.unity_SHAr;
  let x_319 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_318, x_319);
  let x_324 : vec4<f32> = x_315.unity_SHAg;
  let x_325 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_324, x_325);
  let x_330 : vec4<f32> = x_315.unity_SHAb;
  let x_331 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_330, x_331);
  let x_335 : vec4<f32> = u_xlat4;
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_335.y, x_335.z, x_335.z, x_335.x) * vec4<f32>(x_337.x, x_337.y, x_337.z, x_337.z));
  let x_343 : vec4<f32> = x_315.unity_SHBr;
  let x_344 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_343, x_344);
  let x_349 : vec4<f32> = x_315.unity_SHBg;
  let x_350 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_349, x_350);
  let x_355 : vec4<f32> = x_315.unity_SHBb;
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_355, x_356);
  let x_360 : f32 = u_xlat4.y;
  let x_362 : f32 = u_xlat4.y;
  u_xlat29.x = (x_360 * x_362);
  let x_366 : f32 = u_xlat4.x;
  let x_368 : f32 = u_xlat4.x;
  let x_371 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_366 * x_368) + -(x_371));
  let x_377 : vec4<f32> = x_315.unity_SHC;
  let x_379 : vec2<f32> = u_xlat29;
  let x_382 : vec4<f32> = u_xlat7;
  let x_384 : vec3<f32> = ((vec3<f32>(x_377.x, x_377.y, x_377.z) * vec3<f32>(x_379.x, x_379.x, x_379.x)) + vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : vec3<f32> = u_xlat5;
  let x_388 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_387 + vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_391, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_395 : f32 = u_xlat1.x;
  u_xlat29.x = ((-(x_395) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_403 : f32 = u_xlat29.x;
  u_xlat43 = (-(x_403) + 1.0f);
  let x_407 : vec2<f32> = u_xlat29;
  let x_409 : vec4<f32> = u_xlat2;
  u_xlat16 = (vec3<f32>(x_407.x, x_407.x, x_407.x) * vec3<f32>(x_409.y, x_409.z, x_409.w));
  let x_412 : vec4<f32> = u_xlat0;
  let x_415 : vec4<f32> = x_56.x_BaseColor;
  let x_420 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_415.x, x_415.y, x_415.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_421 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec3<f32> = u_xlat1;
  let x_425 : vec4<f32> = u_xlat0;
  let x_430 : vec3<f32> = ((vec3<f32>(x_423.x, x_423.x, x_423.x) * vec3<f32>(x_425.x, x_425.y, x_425.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_431 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_434 : f32 = u_xlat1.y;
  let x_437 : f32 = x_56.x_Smoothness;
  u_xlat1.x = ((-(x_434) * x_437) + 1.0f);
  let x_442 : f32 = u_xlat1.x;
  let x_444 : f32 = u_xlat1.x;
  u_xlat29.x = (x_442 * x_444);
  let x_448 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_448, 0.0078125f);
  let x_454 : f32 = u_xlat29.x;
  let x_456 : f32 = u_xlat29.x;
  u_xlat46 = (x_454 * x_456);
  let x_460 : f32 = u_xlat1.y;
  let x_462 : f32 = x_56.x_Smoothness;
  let x_464 : f32 = u_xlat43;
  u_xlat15.x = ((x_460 * x_462) + x_464);
  let x_468 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_468, 0.0f, 1.0f);
  let x_472 : f32 = u_xlat29.x;
  u_xlat43 = ((x_472 * 4.0f) + 2.0f);
  let x_477 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_477, 1.0f);
  let x_482 : vec4<f32> = vs_TEXCOORD6;
  let x_483 : vec2<f32> = vec2<f32>(x_482.x, x_482.y);
  let x_485 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_483.x, x_483.y, x_485);
  let x_498 : vec3<f32> = txVec0;
  let x_500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_498.xy, x_498.z);
  u_xlat47 = x_500;
  let x_510 : f32 = x_508.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_510) + 1.0f);
  let x_514 : f32 = u_xlat47;
  let x_516 : f32 = x_508.x_MainLightShadowParams.x;
  let x_519 : f32 = u_xlat6.x;
  u_xlat47 = ((x_514 * x_516) + x_519);
  let x_523 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_523);
  let x_529 : f32 = vs_TEXCOORD6.z;
  u_xlatb20.x = (x_529 >= 1.0f);
  let x_533 : bool = u_xlatb20.x;
  let x_534 : bool = u_xlatb6;
  u_xlatb6 = (x_533 | x_534);
  let x_536 : bool = u_xlatb6;
  let x_537 : f32 = u_xlat47;
  u_xlat47 = select(x_537, 1.0f, x_536);
  let x_539 : vec3<f32> = vs_TEXCOORD1;
  let x_541 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_543 : vec3<f32> = (x_539 + -(x_541));
  let x_544 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_546.x, x_546.y, x_546.z), vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_554 : f32 = u_xlat6.x;
  let x_556 : f32 = x_508.x_MainLightShadowParams.z;
  let x_559 : f32 = x_508.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_554 * x_556) + x_559);
  let x_563 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_563, 0.0f, 1.0f);
  let x_567 : f32 = u_xlat47;
  u_xlat34 = (-(x_567) + 1.0f);
  let x_571 : f32 = u_xlat20.x;
  let x_572 : f32 = u_xlat34;
  let x_574 : f32 = u_xlat47;
  u_xlat47 = ((x_571 * x_572) + x_574);
  let x_583 : f32 = x_581.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_583 == -1.0f));
  let x_587 : bool = u_xlatb20.x;
  if (x_587) {
    let x_590 : vec3<f32> = vs_TEXCOORD1;
    let x_593 : vec4<f32> = x_581.x_MainLightWorldToLight[1i];
    let x_595 : vec2<f32> = (vec2<f32>(x_590.y, x_590.y) * vec2<f32>(x_593.x, x_593.y));
    let x_596 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_595.x, x_595.y, x_596.z);
    let x_599 : vec4<f32> = x_581.x_MainLightWorldToLight[0i];
    let x_601 : vec3<f32> = vs_TEXCOORD1;
    let x_604 : vec3<f32> = u_xlat20;
    let x_606 : vec2<f32> = ((vec2<f32>(x_599.x, x_599.y) * vec2<f32>(x_601.x, x_601.x)) + vec2<f32>(x_604.x, x_604.y));
    let x_607 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_606.x, x_606.y, x_607.z);
    let x_610 : vec4<f32> = x_581.x_MainLightWorldToLight[2i];
    let x_612 : vec3<f32> = vs_TEXCOORD1;
    let x_615 : vec3<f32> = u_xlat20;
    let x_617 : vec2<f32> = ((vec2<f32>(x_610.x, x_610.y) * vec2<f32>(x_612.z, x_612.z)) + vec2<f32>(x_615.x, x_615.y));
    let x_618 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_617.x, x_617.y, x_618.z);
    let x_620 : vec3<f32> = u_xlat20;
    let x_623 : vec4<f32> = x_581.x_MainLightWorldToLight[3i];
    let x_625 : vec2<f32> = (vec2<f32>(x_620.x, x_620.y) + vec2<f32>(x_623.x, x_623.y));
    let x_626 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_625.x, x_625.y, x_626.z);
    let x_628 : vec3<f32> = u_xlat20;
    let x_633 : vec2<f32> = ((vec2<f32>(x_628.x, x_628.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_634 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_633.x, x_633.y, x_634.z);
    let x_641 : vec3<f32> = u_xlat20;
    let x_644 : f32 = x_28.x_GlobalMipBias.x;
    let x_645 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_641.x, x_641.y), x_644);
    u_xlat7 = x_645;
    let x_647 : f32 = x_581.x_MainLightCookieTextureFormat;
    let x_649 : f32 = x_581.x_MainLightCookieTextureFormat;
    let x_651 : f32 = x_581.x_MainLightCookieTextureFormat;
    let x_653 : f32 = x_581.x_MainLightCookieTextureFormat;
    let x_654 : vec4<f32> = vec4<f32>(x_647, x_649, x_651, x_653);
    let x_662 : vec4<bool> = (vec4<f32>(x_654.x, x_654.y, x_654.z, x_654.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_662.x, x_662.y);
    let x_665 : bool = u_xlatb20.y;
    if (x_665) {
      let x_671 : f32 = u_xlat7.w;
      x_667 = x_671;
    } else {
      let x_674 : f32 = u_xlat7.x;
      x_667 = x_674;
    }
    let x_675 : f32 = x_667;
    u_xlat34 = x_675;
    let x_677 : bool = u_xlatb20.x;
    if (x_677) {
      let x_681 : vec4<f32> = u_xlat7;
      x_678 = vec3<f32>(x_681.x, x_681.y, x_681.z);
    } else {
      let x_684 : f32 = u_xlat34;
      x_678 = vec3<f32>(x_684, x_684, x_684);
    }
    let x_686 : vec3<f32> = x_678;
    u_xlat20 = x_686;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_691 : vec3<f32> = u_xlat20;
  let x_693 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat20 = (x_691 * vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec3<f32> = u_xlat17;
  let x_698 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_696), vec3<f32>(x_698.x, x_698.y, x_698.z));
  let x_703 : f32 = u_xlat7.x;
  let x_705 : f32 = u_xlat7.x;
  u_xlat7.x = (x_703 + x_705);
  let x_708 : vec4<f32> = u_xlat4;
  let x_710 : vec4<f32> = u_xlat7;
  let x_714 : vec3<f32> = u_xlat17;
  let x_716 : vec3<f32> = ((vec3<f32>(x_708.x, x_708.y, x_708.z) * -(vec3<f32>(x_710.x, x_710.x, x_710.x))) + -(x_714));
  let x_717 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_720 : vec4<f32> = u_xlat4;
  let x_722 : vec3<f32> = u_xlat17;
  u_xlat49 = dot(vec3<f32>(x_720.x, x_720.y, x_720.z), x_722);
  let x_724 : f32 = u_xlat49;
  u_xlat49 = clamp(x_724, 0.0f, 1.0f);
  let x_726 : f32 = u_xlat49;
  u_xlat49 = (-(x_726) + 1.0f);
  let x_729 : f32 = u_xlat49;
  let x_730 : f32 = u_xlat49;
  u_xlat49 = (x_729 * x_730);
  let x_732 : f32 = u_xlat49;
  let x_733 : f32 = u_xlat49;
  u_xlat49 = (x_732 * x_733);
  let x_737 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_737) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_745 : f32 = u_xlat1.x;
  let x_747 : f32 = u_xlat8.x;
  u_xlat1.x = (x_745 * x_747);
  let x_751 : f32 = u_xlat1.x;
  u_xlat1.x = (x_751 * 6.0f);
  let x_763 : vec4<f32> = u_xlat7;
  let x_766 : f32 = u_xlat1.x;
  let x_767 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_763.x, x_763.y, x_763.z), x_766);
  u_xlat8 = x_767;
  let x_769 : f32 = u_xlat8.w;
  u_xlat1.x = (x_769 + -1.0f);
  let x_773 : f32 = x_315.unity_SpecCube0_HDR.w;
  let x_775 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_773 * x_775) + 1.0f);
  let x_780 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_780, 0.0f);
  let x_784 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_784);
  let x_788 : f32 = u_xlat1.x;
  let x_790 : f32 = x_315.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_788 * x_790);
  let x_794 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_794);
  let x_798 : f32 = u_xlat1.x;
  let x_800 : f32 = x_315.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_798 * x_800);
  let x_803 : vec4<f32> = u_xlat8;
  let x_805 : vec3<f32> = u_xlat1;
  let x_807 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(x_805.x, x_805.x, x_805.x));
  let x_808 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec2<f32> = u_xlat29;
  let x_812 : vec2<f32> = u_xlat29;
  let x_816 : vec2<f32> = ((vec2<f32>(x_810.x, x_810.x) * vec2<f32>(x_812.x, x_812.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_817 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_816.x, x_817.y, x_816.y);
  let x_820 : f32 = u_xlat1.z;
  u_xlat29.x = (1.0f / x_820);
  let x_823 : vec4<f32> = u_xlat0;
  let x_826 : vec2<f32> = u_xlat15;
  let x_828 : vec3<f32> = (-(vec3<f32>(x_823.x, x_823.y, x_823.z)) + vec3<f32>(x_826.x, x_826.x, x_826.x));
  let x_829 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : f32 = u_xlat49;
  let x_833 : vec4<f32> = u_xlat8;
  let x_836 : vec4<f32> = u_xlat0;
  let x_838 : vec3<f32> = ((vec3<f32>(x_831, x_831, x_831) * vec3<f32>(x_833.x, x_833.y, x_833.z)) + vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec2<f32> = u_xlat29;
  let x_843 : vec4<f32> = u_xlat8;
  let x_845 : vec3<f32> = (vec3<f32>(x_841.x, x_841.x, x_841.x) * vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_848 : vec4<f32> = u_xlat7;
  let x_850 : vec4<f32> = u_xlat8;
  let x_852 : vec3<f32> = (vec3<f32>(x_848.x, x_848.y, x_848.z) * vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec3<f32> = u_xlat5;
  let x_856 : vec3<f32> = u_xlat16;
  let x_858 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_855 * x_856) + vec3<f32>(x_858.x, x_858.y, x_858.z));
  let x_861 : f32 = u_xlat47;
  let x_863 : f32 = x_315.unity_LightData.z;
  u_xlat15.x = (x_861 * x_863);
  let x_866 : vec4<f32> = u_xlat4;
  let x_869 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat29.x = dot(vec3<f32>(x_866.x, x_866.y, x_866.z), vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_874 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_874, 0.0f, 1.0f);
  let x_878 : f32 = u_xlat29.x;
  let x_880 : f32 = u_xlat15.x;
  u_xlat15.x = (x_878 * x_880);
  let x_883 : vec2<f32> = u_xlat15;
  let x_885 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_883.x, x_883.x, x_883.x) * x_885);
  let x_887 : vec3<f32> = u_xlat17;
  let x_889 : vec4<f32> = x_28.x_MainLightPosition;
  let x_891 : vec3<f32> = (x_887 + vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_892 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : vec4<f32> = u_xlat7;
  let x_896 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_894.x, x_894.y, x_894.z), vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_901 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_901, 1.17549435e-38f);
  let x_906 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_906);
  let x_909 : vec2<f32> = u_xlat15;
  let x_911 : vec4<f32> = u_xlat7;
  let x_913 : vec3<f32> = (vec3<f32>(x_909.x, x_909.x, x_909.x) * vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_916 : vec4<f32> = u_xlat4;
  let x_918 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_916.x, x_916.y, x_916.z), vec3<f32>(x_918.x, x_918.y, x_918.z));
  let x_923 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_923, 0.0f, 1.0f);
  let x_927 : vec4<f32> = x_28.x_MainLightPosition;
  let x_929 : vec4<f32> = u_xlat7;
  u_xlat15.y = dot(vec3<f32>(x_927.x, x_927.y, x_927.z), vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_934 : f32 = u_xlat15.y;
  u_xlat15.y = clamp(x_934, 0.0f, 1.0f);
  let x_937 : vec2<f32> = u_xlat15;
  let x_938 : vec2<f32> = u_xlat15;
  u_xlat15 = (x_937 * x_938);
  let x_941 : f32 = u_xlat15.x;
  let x_943 : f32 = u_xlat1.x;
  u_xlat15.x = ((x_941 * x_943) + 1.00001001358032226562f);
  let x_949 : f32 = u_xlat15.x;
  let x_951 : f32 = u_xlat15.x;
  u_xlat15.x = (x_949 * x_951);
  let x_955 : f32 = u_xlat15.y;
  u_xlat29.x = max(x_955, 0.10000000149011611938f);
  let x_960 : f32 = u_xlat29.x;
  let x_962 : f32 = u_xlat15.x;
  u_xlat15.x = (x_960 * x_962);
  let x_965 : f32 = u_xlat43;
  let x_967 : f32 = u_xlat15.x;
  u_xlat15.x = (x_965 * x_967);
  let x_970 : f32 = u_xlat46;
  let x_972 : f32 = u_xlat15.x;
  u_xlat15.x = (x_970 / x_972);
  let x_975 : vec4<f32> = u_xlat0;
  let x_977 : vec2<f32> = u_xlat15;
  let x_980 : vec3<f32> = u_xlat16;
  let x_981 : vec3<f32> = ((vec3<f32>(x_975.x, x_975.y, x_975.z) * vec3<f32>(x_977.x, x_977.x, x_977.x)) + x_980);
  let x_982 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  let x_984 : vec3<f32> = u_xlat20;
  let x_985 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_984 * vec3<f32>(x_985.x, x_985.y, x_985.z));
  let x_989 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_991 : f32 = x_315.unity_LightData.y;
  u_xlat15.x = min(x_989, x_991);
  let x_997 : f32 = u_xlat15.x;
  u_xlatu15 = bitcast<u32>(i32(x_997));
  let x_1001 : f32 = u_xlat6.x;
  let x_1004 : f32 = x_508.x_AdditionalShadowFadeParams.x;
  let x_1007 : f32 = x_508.x_AdditionalShadowFadeParams.y;
  u_xlat29.x = ((x_1001 * x_1004) + x_1007);
  let x_1011 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_1011, 0.0f, 1.0f);
  let x_1016 : f32 = x_581.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1018 : f32 = x_581.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1020 : f32 = x_581.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1022 : f32 = x_581.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1023 : vec4<f32> = vec4<f32>(x_1016, x_1018, x_1020, x_1022);
  let x_1029 : vec4<bool> = (vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1023.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1029.x, x_1029.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1041 : u32 = u_xlatu_loop_1;
    let x_1042 : u32 = u_xlatu15;
    if ((x_1041 < x_1042)) {
    } else {
      break;
    }
    let x_1045 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1045 >> 2u);
    let x_1049 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1049 & 3u));
    let x_1052 : u32 = u_xlatu6;
    let x_1055 : vec4<f32> = x_315.unity_LightIndices[bitcast<i32>(x_1052)];
    let x_1065 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1070 : vec4<u32> = indexable[x_1065];
    u_xlat6.x = dot(x_1055, bitcast<vec4<f32>>(x_1070));
    let x_1076 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1076);
    let x_1079 : vec3<f32> = vs_TEXCOORD1;
    let x_1090 : i32 = u_xlati6;
    let x_1092 : vec4<f32> = x_1089.x_AdditionalLightsPosition[x_1090];
    let x_1095 : i32 = u_xlati6;
    let x_1097 : vec4<f32> = x_1089.x_AdditionalLightsPosition[x_1095];
    u_xlat9 = ((-(x_1079) * vec3<f32>(x_1092.w, x_1092.w, x_1092.w)) + vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
    let x_1101 : vec3<f32> = u_xlat9;
    let x_1102 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1101, x_1102);
    let x_1104 : f32 = u_xlat35;
    u_xlat35 = max(x_1104, 0.00006103515625f);
    let x_1107 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1107);
    let x_1110 : f32 = u_xlat49;
    let x_1112 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1110, x_1110, x_1110) * x_1112);
    let x_1115 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1115);
    let x_1117 : f32 = u_xlat35;
    let x_1118 : i32 = u_xlati6;
    let x_1120 : f32 = x_1089.x_AdditionalLightsAttenuation[x_1118].x;
    u_xlat35 = (x_1117 * x_1120);
    let x_1122 : f32 = u_xlat35;
    let x_1124 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1122) * x_1124) + 1.0f);
    let x_1127 : f32 = u_xlat35;
    u_xlat35 = max(x_1127, 0.0f);
    let x_1129 : f32 = u_xlat35;
    let x_1130 : f32 = u_xlat35;
    u_xlat35 = (x_1129 * x_1130);
    let x_1132 : f32 = u_xlat35;
    let x_1133 : f32 = u_xlat50;
    u_xlat35 = (x_1132 * x_1133);
    let x_1135 : i32 = u_xlati6;
    let x_1137 : vec4<f32> = x_1089.x_AdditionalLightsSpotDir[x_1135];
    let x_1139 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1137.x, x_1137.y, x_1137.z), x_1139);
    let x_1141 : f32 = u_xlat50;
    let x_1142 : i32 = u_xlati6;
    let x_1144 : f32 = x_1089.x_AdditionalLightsAttenuation[x_1142].z;
    let x_1146 : i32 = u_xlati6;
    let x_1148 : f32 = x_1089.x_AdditionalLightsAttenuation[x_1146].w;
    u_xlat50 = ((x_1141 * x_1144) + x_1148);
    let x_1150 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1150, 0.0f, 1.0f);
    let x_1152 : f32 = u_xlat50;
    let x_1153 : f32 = u_xlat50;
    u_xlat50 = (x_1152 * x_1153);
    let x_1155 : f32 = u_xlat35;
    let x_1156 : f32 = u_xlat50;
    u_xlat35 = (x_1155 * x_1156);
    let x_1160 : i32 = u_xlati6;
    let x_1162 : f32 = x_508.x_AdditionalShadowParams[x_1160].w;
    u_xlati50 = i32(x_1162);
    let x_1165 : i32 = u_xlati50;
    u_xlatb51 = (x_1165 >= 0i);
    let x_1167 : bool = u_xlatb51;
    if (x_1167) {
      let x_1171 : i32 = u_xlati6;
      let x_1173 : f32 = x_508.x_AdditionalShadowParams[x_1171].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1173, x_1173, x_1173, x_1173))));
      let x_1177 : bool = u_xlatb51;
      if (x_1177) {
        let x_1182 : vec3<f32> = u_xlat10;
        let x_1185 : vec3<f32> = u_xlat10;
        let x_1188 : vec4<bool> = (abs(vec4<f32>(x_1182.z, x_1182.z, x_1182.y, x_1182.z)) >= abs(vec4<f32>(x_1185.x, x_1185.y, x_1185.x, x_1185.x)));
        let x_1190 : vec3<bool> = vec3<bool>(x_1188.x, x_1188.y, x_1188.z);
        let x_1191 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
        let x_1194 : bool = u_xlatb11.y;
        let x_1196 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1194 & x_1196);
        let x_1198 : vec3<f32> = u_xlat10;
        let x_1201 : vec4<bool> = (-(vec4<f32>(x_1198.z, x_1198.y, x_1198.z, x_1198.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1202 : vec3<bool> = vec3<bool>(x_1201.x, x_1201.y, x_1201.w);
        let x_1203 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1202.x, x_1202.y, x_1203.z, x_1202.z);
        let x_1207 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1207);
        let x_1212 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1212);
        let x_1218 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1218);
        let x_1221 : bool = u_xlatb11.z;
        if (x_1221) {
          let x_1226 : f32 = u_xlat11.y;
          x_1222 = x_1226;
        } else {
          let x_1228 : f32 = u_xlat52;
          x_1222 = x_1228;
        }
        let x_1229 : f32 = x_1222;
        u_xlat52 = x_1229;
        let x_1231 : bool = u_xlatb51;
        if (x_1231) {
          let x_1236 : f32 = u_xlat11.x;
          x_1232 = x_1236;
        } else {
          let x_1238 : f32 = u_xlat52;
          x_1232 = x_1238;
        }
        let x_1239 : f32 = x_1232;
        u_xlat51 = x_1239;
        let x_1240 : i32 = u_xlati6;
        let x_1242 : f32 = x_508.x_AdditionalShadowParams[x_1240].w;
        u_xlat52 = trunc(x_1242);
        let x_1244 : f32 = u_xlat51;
        let x_1245 : f32 = u_xlat52;
        u_xlat51 = (x_1244 + x_1245);
        let x_1247 : f32 = u_xlat51;
        u_xlati50 = i32(x_1247);
      }
      let x_1249 : i32 = u_xlati50;
      u_xlati50 = (x_1249 << bitcast<u32>(2i));
      let x_1251 : vec3<f32> = vs_TEXCOORD1;
      let x_1254 : i32 = u_xlati50;
      let x_1257 : i32 = u_xlati50;
      let x_1261 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_1254 + 1i) / 4i)][((x_1257 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1251.y, x_1251.y, x_1251.y, x_1251.y) * x_1261);
      let x_1263 : i32 = u_xlati50;
      let x_1265 : i32 = u_xlati50;
      let x_1268 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[(x_1263 / 4i)][(x_1265 % 4i)];
      let x_1269 : vec3<f32> = vs_TEXCOORD1;
      let x_1272 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1268 * vec4<f32>(x_1269.x, x_1269.x, x_1269.x, x_1269.x)) + x_1272);
      let x_1274 : i32 = u_xlati50;
      let x_1277 : i32 = u_xlati50;
      let x_1281 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_1274 + 2i) / 4i)][((x_1277 + 2i) % 4i)];
      let x_1282 : vec3<f32> = vs_TEXCOORD1;
      let x_1285 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1281 * vec4<f32>(x_1282.z, x_1282.z, x_1282.z, x_1282.z)) + x_1285);
      let x_1287 : vec4<f32> = u_xlat11;
      let x_1288 : i32 = u_xlati50;
      let x_1291 : i32 = u_xlati50;
      let x_1295 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_1288 + 3i) / 4i)][((x_1291 + 3i) % 4i)];
      u_xlat11 = (x_1287 + x_1295);
      let x_1297 : vec4<f32> = u_xlat11;
      let x_1299 : vec4<f32> = u_xlat11;
      let x_1301 : vec3<f32> = (vec3<f32>(x_1297.x, x_1297.y, x_1297.z) / vec3<f32>(x_1299.w, x_1299.w, x_1299.w));
      let x_1302 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
      let x_1305 : vec4<f32> = u_xlat11;
      let x_1306 : vec2<f32> = vec2<f32>(x_1305.x, x_1305.y);
      let x_1308 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
      let x_1316 : vec3<f32> = txVec1;
      let x_1318 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1316.xy, x_1316.z);
      u_xlat50 = x_1318;
      let x_1319 : i32 = u_xlati6;
      let x_1321 : f32 = x_508.x_AdditionalShadowParams[x_1319].x;
      u_xlat51 = (1.0f + -(x_1321));
      let x_1324 : f32 = u_xlat50;
      let x_1325 : i32 = u_xlati6;
      let x_1327 : f32 = x_508.x_AdditionalShadowParams[x_1325].x;
      let x_1329 : f32 = u_xlat51;
      u_xlat50 = ((x_1324 * x_1327) + x_1329);
      let x_1332 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1332);
      let x_1336 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1336 >= 1.0f);
      let x_1338 : bool = u_xlatb51;
      let x_1339 : bool = u_xlatb52;
      u_xlatb51 = (x_1338 | x_1339);
      let x_1341 : bool = u_xlatb51;
      let x_1342 : f32 = u_xlat50;
      u_xlat50 = select(x_1342, 1.0f, x_1341);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1345 : f32 = u_xlat50;
    u_xlat51 = (-(x_1345) + 1.0f);
    let x_1349 : f32 = u_xlat29.x;
    let x_1350 : f32 = u_xlat51;
    let x_1352 : f32 = u_xlat50;
    u_xlat50 = ((x_1349 * x_1350) + x_1352);
    let x_1355 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1355 & 31i)));
    let x_1359 : i32 = u_xlati51;
    let x_1362 : f32 = x_581.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1359) & bitcast<u32>(x_1362)));
    let x_1366 : i32 = u_xlati51;
    if ((x_1366 != 0i)) {
      let x_1370 : i32 = u_xlati6;
      let x_1372 : f32 = x_581.x_AdditionalLightsLightTypes[x_1370].el;
      u_xlati51 = i32(x_1372);
      let x_1375 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1375 != 0i));
      let x_1379 : i32 = u_xlati6;
      u_xlati11 = (x_1379 << bitcast<u32>(2i));
      let x_1381 : i32 = u_xlati52;
      if ((x_1381 != 0i)) {
        let x_1386 : vec3<f32> = vs_TEXCOORD1;
        let x_1388 : i32 = u_xlati11;
        let x_1391 : i32 = u_xlati11;
        let x_1395 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1388 + 1i) / 4i)][((x_1391 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1386.y, x_1386.y, x_1386.y) * vec3<f32>(x_1395.x, x_1395.y, x_1395.w));
        let x_1398 : i32 = u_xlati11;
        let x_1400 : i32 = u_xlati11;
        let x_1403 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[(x_1398 / 4i)][(x_1400 % 4i)];
        let x_1405 : vec3<f32> = vs_TEXCOORD1;
        let x_1408 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1403.x, x_1403.y, x_1403.w) * vec3<f32>(x_1405.x, x_1405.x, x_1405.x)) + x_1408);
        let x_1410 : i32 = u_xlati11;
        let x_1413 : i32 = u_xlati11;
        let x_1417 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1410 + 2i) / 4i)][((x_1413 + 2i) % 4i)];
        let x_1419 : vec3<f32> = vs_TEXCOORD1;
        let x_1422 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1417.x, x_1417.y, x_1417.w) * vec3<f32>(x_1419.z, x_1419.z, x_1419.z)) + x_1422);
        let x_1424 : vec3<f32> = u_xlat25;
        let x_1425 : i32 = u_xlati11;
        let x_1428 : i32 = u_xlati11;
        let x_1432 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1425 + 3i) / 4i)][((x_1428 + 3i) % 4i)];
        u_xlat25 = (x_1424 + vec3<f32>(x_1432.x, x_1432.y, x_1432.w));
        let x_1435 : vec3<f32> = u_xlat25;
        let x_1437 : vec3<f32> = u_xlat25;
        let x_1439 : vec2<f32> = (vec2<f32>(x_1435.x, x_1435.y) / vec2<f32>(x_1437.z, x_1437.z));
        let x_1440 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1439.x, x_1439.y, x_1440.z);
        let x_1442 : vec3<f32> = u_xlat25;
        let x_1445 : vec2<f32> = ((vec2<f32>(x_1442.x, x_1442.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1446 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1445.x, x_1445.y, x_1446.z);
        let x_1448 : vec3<f32> = u_xlat25;
        let x_1452 : vec2<f32> = clamp(vec2<f32>(x_1448.x, x_1448.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1453 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1452.x, x_1452.y, x_1453.z);
        let x_1455 : i32 = u_xlati6;
        let x_1457 : vec4<f32> = x_581.x_AdditionalLightsCookieAtlasUVRects[x_1455];
        let x_1459 : vec3<f32> = u_xlat25;
        let x_1462 : i32 = u_xlati6;
        let x_1464 : vec4<f32> = x_581.x_AdditionalLightsCookieAtlasUVRects[x_1462];
        let x_1466 : vec2<f32> = ((vec2<f32>(x_1457.x, x_1457.y) * vec2<f32>(x_1459.x, x_1459.y)) + vec2<f32>(x_1464.z, x_1464.w));
        let x_1467 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1466.x, x_1466.y, x_1467.z);
      } else {
        let x_1470 : i32 = u_xlati51;
        u_xlatb51 = (x_1470 == 1i);
        let x_1472 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1472);
        let x_1474 : i32 = u_xlati51;
        if ((x_1474 != 0i)) {
          let x_1479 : vec3<f32> = vs_TEXCOORD1;
          let x_1481 : i32 = u_xlati11;
          let x_1484 : i32 = u_xlati11;
          let x_1488 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1481 + 1i) / 4i)][((x_1484 + 1i) % 4i)];
          let x_1490 : vec2<f32> = (vec2<f32>(x_1479.y, x_1479.y) * vec2<f32>(x_1488.x, x_1488.y));
          let x_1491 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1490.x, x_1490.y, x_1491.z, x_1491.w);
          let x_1493 : i32 = u_xlati11;
          let x_1495 : i32 = u_xlati11;
          let x_1498 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[(x_1493 / 4i)][(x_1495 % 4i)];
          let x_1500 : vec3<f32> = vs_TEXCOORD1;
          let x_1503 : vec4<f32> = u_xlat12;
          let x_1505 : vec2<f32> = ((vec2<f32>(x_1498.x, x_1498.y) * vec2<f32>(x_1500.x, x_1500.x)) + vec2<f32>(x_1503.x, x_1503.y));
          let x_1506 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1505.x, x_1505.y, x_1506.z, x_1506.w);
          let x_1508 : i32 = u_xlati11;
          let x_1511 : i32 = u_xlati11;
          let x_1515 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1508 + 2i) / 4i)][((x_1511 + 2i) % 4i)];
          let x_1517 : vec3<f32> = vs_TEXCOORD1;
          let x_1520 : vec4<f32> = u_xlat12;
          let x_1522 : vec2<f32> = ((vec2<f32>(x_1515.x, x_1515.y) * vec2<f32>(x_1517.z, x_1517.z)) + vec2<f32>(x_1520.x, x_1520.y));
          let x_1523 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1522.x, x_1522.y, x_1523.z, x_1523.w);
          let x_1525 : vec4<f32> = u_xlat12;
          let x_1527 : i32 = u_xlati11;
          let x_1530 : i32 = u_xlati11;
          let x_1534 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1527 + 3i) / 4i)][((x_1530 + 3i) % 4i)];
          let x_1536 : vec2<f32> = (vec2<f32>(x_1525.x, x_1525.y) + vec2<f32>(x_1534.x, x_1534.y));
          let x_1537 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1536.x, x_1536.y, x_1537.z, x_1537.w);
          let x_1539 : vec4<f32> = u_xlat12;
          let x_1542 : vec2<f32> = ((vec2<f32>(x_1539.x, x_1539.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1543 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1542.x, x_1542.y, x_1543.z, x_1543.w);
          let x_1545 : vec4<f32> = u_xlat12;
          let x_1547 : vec2<f32> = fract(vec2<f32>(x_1545.x, x_1545.y));
          let x_1548 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1547.x, x_1547.y, x_1548.z, x_1548.w);
          let x_1550 : i32 = u_xlati6;
          let x_1552 : vec4<f32> = x_581.x_AdditionalLightsCookieAtlasUVRects[x_1550];
          let x_1554 : vec4<f32> = u_xlat12;
          let x_1557 : i32 = u_xlati6;
          let x_1559 : vec4<f32> = x_581.x_AdditionalLightsCookieAtlasUVRects[x_1557];
          let x_1561 : vec2<f32> = ((vec2<f32>(x_1552.x, x_1552.y) * vec2<f32>(x_1554.x, x_1554.y)) + vec2<f32>(x_1559.z, x_1559.w));
          let x_1562 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1561.x, x_1561.y, x_1562.z);
        } else {
          let x_1565 : vec3<f32> = vs_TEXCOORD1;
          let x_1567 : i32 = u_xlati11;
          let x_1570 : i32 = u_xlati11;
          let x_1574 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1567 + 1i) / 4i)][((x_1570 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1565.y, x_1565.y, x_1565.y, x_1565.y) * x_1574);
          let x_1576 : i32 = u_xlati11;
          let x_1578 : i32 = u_xlati11;
          let x_1581 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[(x_1576 / 4i)][(x_1578 % 4i)];
          let x_1582 : vec3<f32> = vs_TEXCOORD1;
          let x_1585 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1581 * vec4<f32>(x_1582.x, x_1582.x, x_1582.x, x_1582.x)) + x_1585);
          let x_1587 : i32 = u_xlati11;
          let x_1590 : i32 = u_xlati11;
          let x_1594 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1587 + 2i) / 4i)][((x_1590 + 2i) % 4i)];
          let x_1595 : vec3<f32> = vs_TEXCOORD1;
          let x_1598 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1594 * vec4<f32>(x_1595.z, x_1595.z, x_1595.z, x_1595.z)) + x_1598);
          let x_1600 : vec4<f32> = u_xlat12;
          let x_1601 : i32 = u_xlati11;
          let x_1604 : i32 = u_xlati11;
          let x_1608 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1601 + 3i) / 4i)][((x_1604 + 3i) % 4i)];
          u_xlat12 = (x_1600 + x_1608);
          let x_1610 : vec4<f32> = u_xlat12;
          let x_1612 : vec4<f32> = u_xlat12;
          let x_1614 : vec3<f32> = (vec3<f32>(x_1610.x, x_1610.y, x_1610.z) / vec3<f32>(x_1612.w, x_1612.w, x_1612.w));
          let x_1615 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1614.x, x_1614.y, x_1614.z, x_1615.w);
          let x_1617 : vec4<f32> = u_xlat12;
          let x_1619 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1617.x, x_1617.y, x_1617.z), vec3<f32>(x_1619.x, x_1619.y, x_1619.z));
          let x_1622 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1622);
          let x_1624 : f32 = u_xlat51;
          let x_1626 : vec4<f32> = u_xlat12;
          let x_1628 : vec3<f32> = (vec3<f32>(x_1624, x_1624, x_1624) * vec3<f32>(x_1626.x, x_1626.y, x_1626.z));
          let x_1629 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1628.x, x_1628.y, x_1628.z, x_1629.w);
          let x_1631 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1631.x, x_1631.y, x_1631.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1636 : f32 = u_xlat51;
          u_xlat51 = max(x_1636, 0.00000099999999747524f);
          let x_1639 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1639);
          let x_1642 : f32 = u_xlat51;
          let x_1644 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1642, x_1642, x_1642) * vec3<f32>(x_1644.z, x_1644.x, x_1644.y));
          let x_1648 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1648);
          let x_1652 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1652, 0.0f, 1.0f);
          let x_1655 : vec3<f32> = u_xlat13;
          let x_1657 : vec4<bool> = (vec4<f32>(x_1655.y, x_1655.y, x_1655.y, x_1655.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1658 : vec2<bool> = vec2<bool>(x_1657.x, x_1657.w);
          let x_1659 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1658.x, x_1659.y, x_1659.z, x_1658.y);
          let x_1662 : bool = u_xlatb11.x;
          if (x_1662) {
            let x_1667 : f32 = u_xlat13.x;
            x_1663 = x_1667;
          } else {
            let x_1670 : f32 = u_xlat13.x;
            x_1663 = -(x_1670);
          }
          let x_1672 : f32 = x_1663;
          u_xlat11.x = x_1672;
          let x_1675 : bool = u_xlatb11.w;
          if (x_1675) {
            let x_1680 : f32 = u_xlat13.x;
            x_1676 = x_1680;
          } else {
            let x_1683 : f32 = u_xlat13.x;
            x_1676 = -(x_1683);
          }
          let x_1685 : f32 = x_1676;
          u_xlat11.w = x_1685;
          let x_1687 : vec4<f32> = u_xlat12;
          let x_1689 : f32 = u_xlat51;
          let x_1692 : vec4<f32> = u_xlat11;
          let x_1694 : vec2<f32> = ((vec2<f32>(x_1687.x, x_1687.y) * vec2<f32>(x_1689, x_1689)) + vec2<f32>(x_1692.x, x_1692.w));
          let x_1695 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1694.x, x_1695.y, x_1695.z, x_1694.y);
          let x_1697 : vec4<f32> = u_xlat11;
          let x_1700 : vec2<f32> = ((vec2<f32>(x_1697.x, x_1697.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1701 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1700.x, x_1701.y, x_1701.z, x_1700.y);
          let x_1703 : vec4<f32> = u_xlat11;
          let x_1707 : vec2<f32> = clamp(vec2<f32>(x_1703.x, x_1703.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1708 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1707.x, x_1708.y, x_1708.z, x_1707.y);
          let x_1710 : i32 = u_xlati6;
          let x_1712 : vec4<f32> = x_581.x_AdditionalLightsCookieAtlasUVRects[x_1710];
          let x_1714 : vec4<f32> = u_xlat11;
          let x_1717 : i32 = u_xlati6;
          let x_1719 : vec4<f32> = x_581.x_AdditionalLightsCookieAtlasUVRects[x_1717];
          let x_1721 : vec2<f32> = ((vec2<f32>(x_1712.x, x_1712.y) * vec2<f32>(x_1714.x, x_1714.w)) + vec2<f32>(x_1719.z, x_1719.w));
          let x_1722 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1721.x, x_1721.y, x_1722.z);
        }
      }
      let x_1729 : vec3<f32> = u_xlat25;
      let x_1731 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1729.x, x_1729.y), 0.0f);
      u_xlat11 = x_1731;
      let x_1733 : bool = u_xlatb7.y;
      if (x_1733) {
        let x_1738 : f32 = u_xlat11.w;
        x_1734 = x_1738;
      } else {
        let x_1741 : f32 = u_xlat11.x;
        x_1734 = x_1741;
      }
      let x_1742 : f32 = x_1734;
      u_xlat51 = x_1742;
      let x_1744 : bool = u_xlatb7.x;
      if (x_1744) {
        let x_1748 : vec4<f32> = u_xlat11;
        x_1745 = vec3<f32>(x_1748.x, x_1748.y, x_1748.z);
      } else {
        let x_1751 : f32 = u_xlat51;
        x_1745 = vec3<f32>(x_1751, x_1751, x_1751);
      }
      let x_1753 : vec3<f32> = x_1745;
      let x_1754 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1753.x, x_1753.y, x_1753.z, x_1754.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1760 : vec4<f32> = u_xlat11;
    let x_1762 : i32 = u_xlati6;
    let x_1764 : vec4<f32> = x_1089.x_AdditionalLightsColor[x_1762];
    let x_1766 : vec3<f32> = (vec3<f32>(x_1760.x, x_1760.y, x_1760.z) * vec3<f32>(x_1764.x, x_1764.y, x_1764.z));
    let x_1767 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1766.x, x_1766.y, x_1766.z, x_1767.w);
    let x_1769 : f32 = u_xlat35;
    let x_1770 : f32 = u_xlat50;
    u_xlat6.x = (x_1769 * x_1770);
    let x_1773 : vec4<f32> = u_xlat4;
    let x_1775 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_1773.x, x_1773.y, x_1773.z), x_1775);
    let x_1777 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1777, 0.0f, 1.0f);
    let x_1780 : f32 = u_xlat6.x;
    let x_1781 : f32 = u_xlat35;
    u_xlat6.x = (x_1780 * x_1781);
    let x_1784 : vec4<f32> = u_xlat6;
    let x_1786 : vec4<f32> = u_xlat11;
    let x_1788 : vec3<f32> = (vec3<f32>(x_1784.x, x_1784.x, x_1784.x) * vec3<f32>(x_1786.x, x_1786.y, x_1786.z));
    let x_1789 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1788.x, x_1788.y, x_1788.z, x_1789.w);
    let x_1791 : vec3<f32> = u_xlat9;
    let x_1792 : f32 = u_xlat49;
    let x_1795 : vec3<f32> = u_xlat17;
    u_xlat9 = ((x_1791 * vec3<f32>(x_1792, x_1792, x_1792)) + x_1795);
    let x_1797 : vec3<f32> = u_xlat9;
    let x_1798 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1797, x_1798);
    let x_1802 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1802, 1.17549435e-38f);
    let x_1806 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1806);
    let x_1809 : vec4<f32> = u_xlat6;
    let x_1811 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1809.x, x_1809.x, x_1809.x) * x_1811);
    let x_1813 : vec4<f32> = u_xlat4;
    let x_1815 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_1813.x, x_1813.y, x_1813.z), x_1815);
    let x_1819 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1819, 0.0f, 1.0f);
    let x_1822 : vec3<f32> = u_xlat10;
    let x_1823 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1822, x_1823);
    let x_1825 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1825, 0.0f, 1.0f);
    let x_1828 : f32 = u_xlat6.x;
    let x_1830 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1828 * x_1830);
    let x_1834 : f32 = u_xlat6.x;
    let x_1836 : f32 = u_xlat1.x;
    u_xlat6.x = ((x_1834 * x_1836) + 1.00001001358032226562f);
    let x_1840 : f32 = u_xlat35;
    let x_1841 : f32 = u_xlat35;
    u_xlat35 = (x_1840 * x_1841);
    let x_1844 : f32 = u_xlat6.x;
    let x_1846 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1844 * x_1846);
    let x_1849 : f32 = u_xlat35;
    u_xlat35 = max(x_1849, 0.10000000149011611938f);
    let x_1852 : f32 = u_xlat6.x;
    let x_1853 : f32 = u_xlat35;
    u_xlat6.x = (x_1852 * x_1853);
    let x_1856 : f32 = u_xlat43;
    let x_1858 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1856 * x_1858);
    let x_1861 : f32 = u_xlat46;
    let x_1863 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1861 / x_1863);
    let x_1866 : vec4<f32> = u_xlat0;
    let x_1868 : vec4<f32> = u_xlat6;
    let x_1871 : vec3<f32> = u_xlat16;
    u_xlat9 = ((vec3<f32>(x_1866.x, x_1866.y, x_1866.z) * vec3<f32>(x_1868.x, x_1868.x, x_1868.x)) + x_1871);
    let x_1873 : vec3<f32> = u_xlat9;
    let x_1874 : vec4<f32> = u_xlat11;
    let x_1877 : vec4<f32> = u_xlat8;
    let x_1879 : vec3<f32> = ((x_1873 * vec3<f32>(x_1874.x, x_1874.y, x_1874.z)) + vec3<f32>(x_1877.x, x_1877.y, x_1877.z));
    let x_1880 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1879.x, x_1879.y, x_1879.z, x_1880.w);

    continuing {
      let x_1882 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1882 + bitcast<u32>(1i));
    }
  }
  let x_1884 : vec3<f32> = u_xlat5;
  let x_1885 : vec3<f32> = u_xlat3;
  let x_1888 : vec3<f32> = u_xlat20;
  let x_1889 : vec3<f32> = ((x_1884 * vec3<f32>(x_1885.x, x_1885.x, x_1885.x)) + x_1888);
  let x_1890 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1890.w);
  let x_1892 : vec4<f32> = u_xlat8;
  let x_1894 : vec4<f32> = u_xlat0;
  let x_1896 : vec3<f32> = (vec3<f32>(x_1892.x, x_1892.y, x_1892.z) + vec3<f32>(x_1894.x, x_1894.y, x_1894.z));
  let x_1897 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1896.x, x_1896.y, x_1896.z, x_1897.w);
  let x_1899 : f32 = u_xlat42;
  let x_1900 : f32 = u_xlat42;
  u_xlat42 = (x_1899 * -(x_1900));
  let x_1903 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1903);
  let x_1905 : vec4<f32> = u_xlat0;
  let x_1908 : vec4<f32> = x_28.unity_FogColor;
  let x_1911 : vec3<f32> = (vec3<f32>(x_1905.x, x_1905.y, x_1905.z) + -(vec3<f32>(x_1908.x, x_1908.y, x_1908.z)));
  let x_1912 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1911.x, x_1911.y, x_1911.z, x_1912.w);
  let x_1916 : f32 = u_xlat42;
  let x_1918 : vec4<f32> = u_xlat0;
  let x_1922 : vec4<f32> = x_28.unity_FogColor;
  let x_1924 : vec3<f32> = ((vec3<f32>(x_1916, x_1916, x_1916) * vec3<f32>(x_1918.x, x_1918.y, x_1918.z)) + vec3<f32>(x_1922.x, x_1922.y, x_1922.z));
  let x_1925 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
  let x_1929 : f32 = x_56.x_Surface;
  u_xlatb0 = (x_1929 == 1.0f);
  let x_1931 : bool = u_xlatb0;
  if (x_1931) {
    let x_1936 : f32 = u_xlat2.x;
    x_1932 = x_1936;
  } else {
    x_1932 = 1.0f;
  }
  let x_1938 : f32 = x_1932;
  SV_Target0.w = x_1938;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


