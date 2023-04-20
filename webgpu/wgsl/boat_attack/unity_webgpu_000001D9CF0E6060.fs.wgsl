diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
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
  x_ScreenParams : vec4<f32>,
  /* @offset(112) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(128) */
  unity_FogParams : vec4<f32>,
  /* @offset(144) */
  unity_FogColor : vec4<f32>,
  /* @offset(160) */
  unity_MatrixV : mat4x4<f32>,
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

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_C30C7CA3 : vec4<f32>,
  /* @offset(32) */
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb42 : bool;

@group(1) @binding(0) var<uniform> x_75 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_132 : UnityPerDraw;

var<private> u_xlat42 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_188 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_248 : LightShadows;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb43 : bool;

var<private> u_xlatb44 : bool;

var<private> u_xlat44 : f32;

var<private> u_xlatu2 : vec3<u32>;

var<private> u_xlatu30 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati30 : i32;

var<private> u_xlati16 : i32;

var<private> u_xlatu16 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlatb16 : vec2<bool>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlatb2 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlatb34 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_1036 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1488 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb52 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

var<private> u_xlatb48 : bool;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var x_120 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_511 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_644 : f32;
  var x_675 : f32;
  var x_725 : f32;
  var x_1104 : f32;
  var x_1115 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1621 : f32;
  var x_1632 : f32;
  var txVec1 : vec3<f32>;
  var x_2078 : f32;
  var x_2091 : f32;
  var x_2149 : f32;
  var x_2160 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_48 : vec3<f32> = vs_INTERP9;
  let x_49 : vec3<f32> = vs_INTERP9;
  u_xlat0.x = dot(x_48, x_49);
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_55);
  let x_60 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_60);
  let x_63 : vec3<f32> = u_xlat0;
  let x_65 : vec3<f32> = vs_INTERP9;
  u_xlat0 = (vec3<f32>(x_63.x, x_63.x, x_63.x) * x_65);
  let x_80 : f32 = x_75.unity_OrthoParams.w;
  u_xlatb42 = (x_80 == 0.0f);
  let x_85 : vec3<f32> = vs_INTERP8;
  let x_90 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_85) + x_90);
  let x_93 : vec3<f32> = u_xlat1;
  let x_94 : vec3<f32> = u_xlat1;
  u_xlat43 = dot(x_93, x_94);
  let x_96 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_96);
  let x_98 : f32 = u_xlat43;
  let x_100 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_107 : f32 = x_75.unity_MatrixV[0i].z;
  u_xlat2.x = x_107;
  let x_111 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat2.y = x_111;
  let x_116 : f32 = x_75.unity_MatrixV[2i].z;
  u_xlat2.z = x_116;
  let x_118 : bool = u_xlatb42;
  if (x_118) {
    let x_123 : vec3<f32> = u_xlat1;
    x_120 = x_123;
  } else {
    let x_125 : vec3<f32> = u_xlat2;
    x_120 = x_125;
  }
  let x_126 : vec3<f32> = x_120;
  u_xlat1 = x_126;
  let x_127 : vec3<f32> = u_xlat1;
  let x_135 : vec4<f32> = x_132.unity_WorldToObject[1i];
  u_xlat2 = (vec3<f32>(x_127.y, x_127.y, x_127.y) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_139 : vec4<f32> = x_132.unity_WorldToObject[0i];
  let x_141 : vec3<f32> = u_xlat1;
  let x_144 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + x_144);
  let x_147 : vec4<f32> = x_132.unity_WorldToObject[2i];
  let x_149 : vec3<f32> = u_xlat1;
  let x_152 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_147.x, x_147.y, x_147.z) * vec3<f32>(x_149.z, x_149.z, x_149.z)) + x_152);
  let x_155 : vec3<f32> = u_xlat2;
  let x_156 : vec3<f32> = u_xlat2;
  u_xlat42 = dot(x_155, x_156);
  let x_158 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_158);
  let x_160 : f32 = u_xlat42;
  let x_162 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_160, x_160, x_160) * x_162);
  let x_178 : vec4<f32> = vs_INTERP5;
  let x_181 : f32 = x_75.x_GlobalMipBias.x;
  let x_182 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_178.x, x_178.y), x_181);
  u_xlat3 = x_182;
  let x_184 : vec4<f32> = u_xlat3;
  let x_190 : vec4<f32> = x_188.Color_C30C7CA3;
  u_xlat4 = (vec3<f32>(x_184.x, x_184.y, x_184.z) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_199 : vec4<f32> = vs_INTERP5;
  let x_202 : f32 = x_75.x_GlobalMipBias.x;
  let x_203 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_199.x, x_199.y), x_202);
  u_xlat5 = vec4<f32>(x_203.w, x_203.x, x_203.y, x_203.z);
  let x_206 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_206.y, x_206.z, x_206.w, x_206.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_214 : vec4<f32> = u_xlat6;
  let x_215 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_214, x_215);
  let x_217 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_217);
  let x_220 : f32 = u_xlat42;
  let x_222 : vec4<f32> = u_xlat6;
  u_xlat19 = (vec3<f32>(x_220, x_220, x_220) * vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_228 : f32 = vs_INTERP6.y;
  u_xlat42 = (x_228 * 200.0f);
  let x_231 : f32 = u_xlat42;
  u_xlat42 = min(x_231, 1.0f);
  let x_233 : f32 = u_xlat42;
  let x_235 : vec4<f32> = u_xlat3;
  let x_237 : vec3<f32> = (vec3<f32>(x_233, x_233, x_233) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec3<f32> = vs_INTERP8;
  let x_250 : vec4<f32> = x_248.x_CascadeShadowSplitSpheres0;
  let x_253 : vec3<f32> = (x_240 + -(vec3<f32>(x_250.x, x_250.y, x_250.z)));
  let x_254 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : vec3<f32> = vs_INTERP8;
  let x_259 : vec4<f32> = x_248.x_CascadeShadowSplitSpheres1;
  let x_262 : vec3<f32> = (x_257 + -(vec3<f32>(x_259.x, x_259.y, x_259.z)));
  let x_263 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : vec3<f32> = vs_INTERP8;
  let x_269 : vec4<f32> = x_248.x_CascadeShadowSplitSpheres2;
  let x_272 : vec3<f32> = (x_266 + -(vec3<f32>(x_269.x, x_269.y, x_269.z)));
  let x_273 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_276 : vec3<f32> = vs_INTERP8;
  let x_279 : vec4<f32> = x_248.x_CascadeShadowSplitSpheres3;
  u_xlat9 = (x_276 + -(vec3<f32>(x_279.x, x_279.y, x_279.z)));
  let x_283 : vec4<f32> = u_xlat6;
  let x_285 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_283.x, x_283.y, x_283.z), vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_289 : vec4<f32> = u_xlat7;
  let x_291 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_295 : vec4<f32> = u_xlat8;
  let x_297 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_295.x, x_295.y, x_295.z), vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_301 : vec3<f32> = u_xlat9;
  let x_302 : vec3<f32> = u_xlat9;
  u_xlat6.w = dot(x_301, x_302);
  let x_308 : vec4<f32> = u_xlat6;
  let x_310 : vec4<f32> = x_248.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_308 < x_310);
  let x_313 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_313);
  let x_317 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_317);
  let x_321 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_321);
  let x_325 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_325);
  let x_329 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_329);
  let x_334 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_334);
  let x_338 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_338);
  let x_341 : vec4<f32> = u_xlat6;
  let x_343 : vec4<f32> = u_xlat7;
  let x_345 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) + vec3<f32>(x_343.y, x_343.z, x_343.w));
  let x_346 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat6;
  let x_351 : vec3<f32> = max(vec3<f32>(x_348.x, x_348.y, x_348.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_352 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_352.x, x_351.x, x_351.y, x_351.z);
  let x_354 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_354, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_359 : f32 = u_xlat42;
  u_xlat42 = (-(x_359) + 4.0f);
  let x_364 : f32 = u_xlat42;
  u_xlatu42 = u32(x_364);
  let x_368 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_368) << bitcast<u32>(2i));
  let x_371 : vec3<f32> = vs_INTERP8;
  let x_373 : i32 = u_xlati42;
  let x_376 : i32 = u_xlati42;
  let x_380 : vec4<f32> = x_248.x_MainLightWorldToShadow[((x_373 + 1i) / 4i)][((x_376 + 1i) % 4i)];
  let x_382 : vec3<f32> = (vec3<f32>(x_371.y, x_371.y, x_371.y) * vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : i32 = u_xlati42;
  let x_387 : i32 = u_xlati42;
  let x_390 : vec4<f32> = x_248.x_MainLightWorldToShadow[(x_385 / 4i)][(x_387 % 4i)];
  let x_392 : vec3<f32> = vs_INTERP8;
  let x_395 : vec4<f32> = u_xlat6;
  let x_397 : vec3<f32> = ((vec3<f32>(x_390.x, x_390.y, x_390.z) * vec3<f32>(x_392.x, x_392.x, x_392.x)) + vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_398 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : i32 = u_xlati42;
  let x_403 : i32 = u_xlati42;
  let x_407 : vec4<f32> = x_248.x_MainLightWorldToShadow[((x_400 + 2i) / 4i)][((x_403 + 2i) % 4i)];
  let x_409 : vec3<f32> = vs_INTERP8;
  let x_412 : vec4<f32> = u_xlat6;
  let x_414 : vec3<f32> = ((vec3<f32>(x_407.x, x_407.y, x_407.z) * vec3<f32>(x_409.z, x_409.z, x_409.z)) + vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat6;
  let x_419 : i32 = u_xlati42;
  let x_422 : i32 = u_xlati42;
  let x_426 : vec4<f32> = x_248.x_MainLightWorldToShadow[((x_419 + 3i) / 4i)][((x_422 + 3i) % 4i)];
  let x_428 : vec3<f32> = (vec3<f32>(x_417.x, x_417.y, x_417.z) + vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : vec4<f32> = u_xlat6;
  let x_433 : vec2<f32> = vec2<f32>(x_432.x, x_432.y);
  let x_435 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_433.x, x_433.y, x_435);
  let x_447 : vec3<f32> = txVec0;
  let x_449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_447.xy, x_447.z);
  u_xlat42 = x_449;
  let x_451 : f32 = x_248.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_451) + 1.0f);
  let x_454 : f32 = u_xlat42;
  let x_456 : f32 = x_248.x_MainLightShadowParams.x;
  let x_458 : f32 = u_xlat43;
  u_xlat42 = ((x_454 * x_456) + x_458);
  let x_462 : f32 = u_xlat6.z;
  u_xlatb43 = (0.0f >= x_462);
  let x_466 : f32 = u_xlat6.z;
  u_xlatb44 = (x_466 >= 1.0f);
  let x_468 : bool = u_xlatb43;
  let x_469 : bool = u_xlatb44;
  u_xlatb43 = (x_468 | x_469);
  let x_471 : bool = u_xlatb43;
  let x_472 : f32 = u_xlat42;
  u_xlat42 = select(x_472, 1.0f, x_471);
  let x_474 : vec3<f32> = u_xlat0;
  let x_476 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_474, -(vec3<f32>(x_476.x, x_476.y, x_476.z)));
  let x_482 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_482, 0.0f, 1.0f);
  let x_485 : f32 = u_xlat42;
  let x_488 : vec4<f32> = x_75.x_MainLightColor;
  let x_490 : vec3<f32> = (vec3<f32>(x_485, x_485, x_485) * vec3<f32>(x_488.x, x_488.y, x_488.z));
  let x_491 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_493 : vec3<f32> = u_xlat0;
  let x_495 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_493.x, x_493.x, x_493.x) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec3<f32> = u_xlat0;
  let x_499 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_498 * vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_503 : f32 = x_132.unity_LODFade.x;
  u_xlatb43 = (x_503 < 0.0f);
  let x_507 : f32 = x_132.unity_LODFade.x;
  u_xlat44 = (x_507 + 1.0f);
  let x_509 : bool = u_xlatb43;
  if (x_509) {
    let x_514 : f32 = u_xlat44;
    x_511 = x_514;
  } else {
    let x_517 : f32 = x_132.unity_LODFade.x;
    x_511 = x_517;
  }
  let x_518 : f32 = x_511;
  u_xlat43 = x_518;
  let x_520 : f32 = u_xlat43;
  u_xlatb44 = (0.5f >= x_520);
  let x_522 : vec3<f32> = u_xlat2;
  let x_526 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat2 = (abs(x_522) * vec3<f32>(x_526.x, x_526.y, x_526.x));
  let x_532 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_532);
  let x_536 : u32 = u_xlatu2.z;
  u_xlatu30 = (x_536 * 1025u);
  let x_540 : u32 = u_xlatu30;
  u_xlatu3 = (x_540 >> 6u);
  let x_544 : u32 = u_xlatu30;
  let x_545 : u32 = u_xlatu3;
  u_xlati30 = bitcast<i32>((x_544 ^ x_545));
  let x_548 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_548) * 9u);
  let x_552 : u32 = u_xlatu30;
  u_xlatu3 = (x_552 >> 11u);
  let x_555 : u32 = u_xlatu30;
  let x_556 : u32 = u_xlatu3;
  u_xlati30 = bitcast<i32>((x_555 ^ x_556));
  let x_559 : i32 = u_xlati30;
  u_xlati30 = (x_559 * 32769i);
  let x_563 : i32 = u_xlati30;
  let x_566 : u32 = u_xlatu2.y;
  u_xlati16 = bitcast<i32>((bitcast<u32>(x_563) ^ x_566));
  let x_570 : i32 = u_xlati16;
  u_xlatu16 = (bitcast<u32>(x_570) * 1025u);
  let x_573 : u32 = u_xlatu16;
  u_xlatu30 = (x_573 >> 6u);
  let x_575 : u32 = u_xlatu30;
  let x_576 : u32 = u_xlatu16;
  u_xlati16 = bitcast<i32>((x_575 ^ x_576));
  let x_579 : i32 = u_xlati16;
  u_xlatu16 = (bitcast<u32>(x_579) * 9u);
  let x_582 : u32 = u_xlatu16;
  u_xlatu30 = (x_582 >> 11u);
  let x_584 : u32 = u_xlatu30;
  let x_585 : u32 = u_xlatu16;
  u_xlati16 = bitcast<i32>((x_584 ^ x_585));
  let x_588 : i32 = u_xlati16;
  u_xlati16 = (x_588 * 32769i);
  let x_591 : i32 = u_xlati16;
  let x_594 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_591) ^ x_594));
  let x_597 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_597) * 1025u);
  let x_602 : u32 = u_xlatu2.x;
  u_xlatu16 = (x_602 >> 6u);
  let x_604 : u32 = u_xlatu16;
  let x_606 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_604 ^ x_606));
  let x_609 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_609) * 9u);
  let x_614 : u32 = u_xlatu2.x;
  u_xlatu16 = (x_614 >> 11u);
  let x_616 : u32 = u_xlatu16;
  let x_618 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_616 ^ x_618));
  let x_621 : i32 = u_xlati2;
  u_xlati2 = (x_621 * 32769i);
  param = 1065353216i;
  let x_627 : i32 = u_xlati2;
  param_1 = x_627;
  param_2 = 0i;
  param_3 = 23i;
  let x_630 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_630);
  let x_634 : f32 = u_xlat2.x;
  u_xlat2.x = (x_634 + -1.0f);
  let x_639 : f32 = u_xlat2.x;
  u_xlat16.x = (-(x_639) + 1.0f);
  let x_643 : bool = u_xlatb44;
  if (x_643) {
    let x_648 : f32 = u_xlat2.x;
    x_644 = x_648;
  } else {
    let x_651 : f32 = u_xlat16.x;
    x_644 = x_651;
  }
  let x_652 : f32 = x_644;
  u_xlat2.x = x_652;
  let x_654 : f32 = u_xlat43;
  let x_657 : f32 = u_xlat2.x;
  u_xlat43 = ((x_654 * 2.0f) + -(x_657));
  let x_660 : f32 = u_xlat43;
  let x_662 : f32 = u_xlat3.w;
  u_xlat2.x = (x_660 * x_662);
  let x_669 : f32 = u_xlat2.x;
  u_xlatb16.x = (x_669 >= 0.40000000596046447754f);
  let x_674 : bool = u_xlatb16.x;
  if (x_674) {
    let x_679 : f32 = u_xlat2.x;
    x_675 = x_679;
  } else {
    x_675 = 0.0f;
  }
  let x_681 : f32 = x_675;
  u_xlat16.x = x_681;
  let x_684 : f32 = u_xlat3.w;
  let x_685 : f32 = u_xlat43;
  u_xlat43 = ((x_684 * x_685) + -0.40000000596046447754f);
  let x_692 : f32 = u_xlat2.x;
  u_xlat30.x = dpdxCoarse(x_692);
  let x_696 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_696);
  let x_700 : f32 = u_xlat2.x;
  let x_703 : f32 = u_xlat30.x;
  u_xlat2.x = (abs(x_700) + abs(x_703));
  let x_708 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_708, 0.00009999999747378752f);
  let x_712 : f32 = u_xlat43;
  let x_714 : f32 = u_xlat2.x;
  u_xlat43 = (x_712 / x_714);
  let x_716 : f32 = u_xlat43;
  u_xlat43 = (x_716 + 0.5f);
  let x_718 : f32 = u_xlat43;
  u_xlat43 = clamp(x_718, 0.0f, 1.0f);
  let x_722 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_722 == 0.0f));
  let x_724 : bool = u_xlatb2;
  if (x_724) {
    let x_728 : f32 = u_xlat43;
    x_725 = x_728;
  } else {
    let x_731 : f32 = u_xlat16.x;
    x_725 = x_731;
  }
  let x_732 : f32 = x_725;
  u_xlat43 = x_732;
  let x_733 : f32 = u_xlat43;
  u_xlat16.x = (x_733 + -0.00009999999747378752f);
  let x_738 : f32 = u_xlat16.x;
  u_xlatb16.x = (x_738 < 0.0f);
  let x_742 : bool = u_xlatb16.x;
  if (((select(0i, 1i, x_742) * -1i) != 0i)) {
    discard;
  }
  let x_752 : f32 = vs_INTERP4.w;
  u_xlatb16.x = (0.0f < x_752);
  let x_756 : f32 = x_132.unity_WorldTransformParams.w;
  u_xlatb16.y = (x_756 >= 0.0f);
  let x_760 : bool = u_xlatb16.x;
  u_xlat16.x = select(-1.0f, 1.0f, x_760);
  let x_764 : bool = u_xlatb16.y;
  u_xlat16.y = select(-1.0f, 1.0f, x_764);
  let x_768 : f32 = u_xlat16.y;
  let x_770 : f32 = u_xlat16.x;
  u_xlat16.x = (x_768 * x_770);
  let x_773 : vec4<f32> = vs_INTERP4;
  let x_775 : vec3<f32> = vs_INTERP9;
  let x_777 : vec3<f32> = (vec3<f32>(x_773.y, x_773.z, x_773.x) * vec3<f32>(x_775.z, x_775.x, x_775.y));
  let x_778 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_780 : vec3<f32> = vs_INTERP9;
  let x_782 : vec4<f32> = vs_INTERP4;
  let x_785 : vec4<f32> = u_xlat3;
  let x_788 : vec3<f32> = ((vec3<f32>(x_780.y, x_780.z, x_780.x) * vec3<f32>(x_782.z, x_782.x, x_782.y)) + -(vec3<f32>(x_785.x, x_785.y, x_785.z)));
  let x_789 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_791 : vec3<f32> = u_xlat16;
  let x_793 : vec4<f32> = u_xlat3;
  u_xlat16 = (vec3<f32>(x_791.x, x_791.x, x_791.x) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec3<f32> = u_xlat16;
  let x_797 : vec3<f32> = u_xlat19;
  u_xlat16 = (x_796 * vec3<f32>(x_797.y, x_797.y, x_797.y));
  let x_800 : vec3<f32> = u_xlat19;
  let x_802 : vec4<f32> = vs_INTERP4;
  let x_805 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_800.x, x_800.x, x_800.x) * vec3<f32>(x_802.x, x_802.y, x_802.z)) + x_805);
  let x_807 : vec3<f32> = u_xlat19;
  let x_809 : vec3<f32> = vs_INTERP9;
  let x_811 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_807.z, x_807.z, x_807.z) * x_809) + x_811);
  let x_813 : vec3<f32> = u_xlat16;
  let x_814 : vec3<f32> = u_xlat16;
  u_xlat3.x = dot(x_813, x_814);
  let x_818 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_818);
  let x_821 : vec3<f32> = u_xlat16;
  let x_822 : vec4<f32> = u_xlat3;
  let x_824 : vec3<f32> = (x_821 * vec3<f32>(x_822.x, x_822.x, x_822.x));
  let x_825 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_828 : f32 = vs_INTERP8.y;
  let x_830 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat16.x = (x_828 * x_830);
  let x_834 : f32 = x_75.unity_MatrixV[0i].z;
  let x_836 : f32 = vs_INTERP8.x;
  let x_839 : f32 = u_xlat16.x;
  u_xlat16.x = ((x_834 * x_836) + x_839);
  let x_843 : f32 = x_75.unity_MatrixV[2i].z;
  let x_845 : f32 = vs_INTERP8.z;
  let x_848 : f32 = u_xlat16.x;
  u_xlat16.x = ((x_843 * x_845) + x_848);
  let x_852 : f32 = u_xlat16.x;
  let x_854 : f32 = x_75.unity_MatrixV[3i].z;
  u_xlat16.x = (x_852 + x_854);
  let x_858 : f32 = u_xlat16.x;
  let x_862 : f32 = x_75.x_ProjectionParams.y;
  u_xlat16.x = (-(x_858) + -(x_862));
  let x_867 : f32 = u_xlat16.x;
  u_xlat16.x = max(x_867, 0.0f);
  let x_871 : f32 = u_xlat16.x;
  let x_874 : f32 = x_75.unity_FogParams.x;
  u_xlat16.x = (x_871 * x_874);
  u_xlat3.w = 1.0f;
  let x_880 : vec4<f32> = x_132.unity_SHAr;
  let x_881 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_880, x_881);
  let x_886 : vec4<f32> = x_132.unity_SHAg;
  let x_887 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_886, x_887);
  let x_892 : vec4<f32> = x_132.unity_SHAb;
  let x_893 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_892, x_893);
  let x_896 : vec4<f32> = u_xlat3;
  let x_898 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_896.y, x_896.z, x_896.z, x_896.x) * vec4<f32>(x_898.x, x_898.y, x_898.z, x_898.z));
  let x_903 : vec4<f32> = x_132.unity_SHBr;
  let x_904 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_903, x_904);
  let x_909 : vec4<f32> = x_132.unity_SHBg;
  let x_910 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_909, x_910);
  let x_914 : vec4<f32> = x_132.unity_SHBb;
  let x_915 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_914, x_915);
  let x_919 : f32 = u_xlat3.y;
  let x_921 : f32 = u_xlat3.y;
  u_xlat30.x = (x_919 * x_921);
  let x_925 : f32 = u_xlat3.x;
  let x_927 : f32 = u_xlat3.x;
  let x_930 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_925 * x_927) + -(x_930));
  let x_936 : vec4<f32> = x_132.unity_SHC;
  let x_938 : vec2<f32> = u_xlat30;
  let x_941 : vec4<f32> = u_xlat8;
  u_xlat19 = ((vec3<f32>(x_936.x, x_936.y, x_936.z) * vec3<f32>(x_938.x, x_938.x, x_938.x)) + vec3<f32>(x_941.x, x_941.y, x_941.z));
  let x_944 : vec3<f32> = u_xlat19;
  let x_945 : vec4<f32> = u_xlat6;
  u_xlat19 = (x_944 + vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec3<f32> = u_xlat19;
  u_xlat19 = max(x_948, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_951 : f32 = u_xlat5.x;
  u_xlat5.x = x_951;
  let x_954 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_954, 0.0f, 1.0f);
  let x_957 : f32 = u_xlat43;
  u_xlat43 = x_957;
  let x_958 : f32 = u_xlat43;
  u_xlat43 = clamp(x_958, 0.0f, 1.0f);
  let x_960 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_960 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_965 : f32 = u_xlat5.x;
  u_xlat30.x = (-(x_965) + 1.0f);
  let x_970 : f32 = u_xlat30.x;
  let x_972 : f32 = u_xlat30.x;
  u_xlat44 = (x_970 * x_972);
  let x_974 : f32 = u_xlat44;
  u_xlat44 = max(x_974, 0.0078125f);
  let x_978 : f32 = u_xlat44;
  let x_979 : f32 = u_xlat44;
  u_xlat45 = (x_978 * x_979);
  let x_983 : f32 = u_xlat5.x;
  u_xlat46 = (x_983 + 0.04000002145767211914f);
  let x_986 : f32 = u_xlat46;
  u_xlat46 = min(x_986, 1.0f);
  let x_988 : f32 = u_xlat44;
  u_xlat5.x = ((x_988 * 4.0f) + 2.0f);
  let x_993 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_993, 1.0f);
  let x_997 : vec3<f32> = vs_INTERP8;
  let x_999 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat20 = (x_997 + -(x_999));
  let x_1002 : vec3<f32> = u_xlat20;
  let x_1003 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_1002, x_1003);
  let x_1008 : f32 = u_xlat20.x;
  let x_1010 : f32 = x_248.x_MainLightShadowParams.z;
  let x_1013 : f32 = x_248.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_1008 * x_1010) + x_1013);
  let x_1017 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1017, 0.0f, 1.0f);
  let x_1021 : f32 = u_xlat42;
  u_xlat48 = (-(x_1021) + 1.0f);
  let x_1025 : f32 = u_xlat34.x;
  let x_1026 : f32 = u_xlat48;
  let x_1028 : f32 = u_xlat42;
  u_xlat42 = ((x_1025 * x_1026) + x_1028);
  let x_1038 : f32 = x_1036.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_1038 == -1.0f));
  let x_1042 : bool = u_xlatb34.x;
  if (x_1042) {
    let x_1045 : vec3<f32> = vs_INTERP8;
    let x_1048 : vec4<f32> = x_1036.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_1045.y, x_1045.y) * vec2<f32>(x_1048.x, x_1048.y));
    let x_1052 : vec4<f32> = x_1036.x_MainLightWorldToLight[0i];
    let x_1054 : vec3<f32> = vs_INTERP8;
    let x_1057 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_1052.x, x_1052.y) * vec2<f32>(x_1054.x, x_1054.x)) + x_1057);
    let x_1060 : vec4<f32> = x_1036.x_MainLightWorldToLight[2i];
    let x_1062 : vec3<f32> = vs_INTERP8;
    let x_1065 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_1060.x, x_1060.y) * vec2<f32>(x_1062.z, x_1062.z)) + x_1065);
    let x_1067 : vec2<f32> = u_xlat34;
    let x_1069 : vec4<f32> = x_1036.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_1067 + vec2<f32>(x_1069.x, x_1069.y));
    let x_1072 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_1072 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1081 : vec2<f32> = u_xlat34;
    let x_1083 : f32 = x_75.x_GlobalMipBias.x;
    let x_1084 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1081, x_1083);
    u_xlat7 = x_1084;
    let x_1086 : f32 = x_1036.x_MainLightCookieTextureFormat;
    let x_1088 : f32 = x_1036.x_MainLightCookieTextureFormat;
    let x_1090 : f32 = x_1036.x_MainLightCookieTextureFormat;
    let x_1092 : f32 = x_1036.x_MainLightCookieTextureFormat;
    let x_1093 : vec4<f32> = vec4<f32>(x_1086, x_1088, x_1090, x_1092);
    let x_1100 : vec4<bool> = (vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1093.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_1100.x, x_1100.y);
    let x_1103 : bool = u_xlatb34.y;
    if (x_1103) {
      let x_1108 : f32 = u_xlat7.w;
      x_1104 = x_1108;
    } else {
      let x_1111 : f32 = u_xlat7.x;
      x_1104 = x_1111;
    }
    let x_1112 : f32 = x_1104;
    u_xlat48 = x_1112;
    let x_1114 : bool = u_xlatb34.x;
    if (x_1114) {
      let x_1118 : vec4<f32> = u_xlat7;
      x_1115 = vec3<f32>(x_1118.x, x_1118.y, x_1118.z);
    } else {
      let x_1121 : f32 = u_xlat48;
      x_1115 = vec3<f32>(x_1121, x_1121, x_1121);
    }
    let x_1123 : vec3<f32> = x_1115;
    let x_1124 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1130 : vec4<f32> = u_xlat7;
  let x_1133 : vec4<f32> = x_75.x_MainLightColor;
  let x_1135 : vec3<f32> = (vec3<f32>(x_1130.x, x_1130.y, x_1130.z) * vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : vec3<f32> = u_xlat1;
  let x_1140 : vec4<f32> = u_xlat3;
  u_xlat34.x = dot(-(x_1138), vec3<f32>(x_1140.x, x_1140.y, x_1140.z));
  let x_1145 : f32 = u_xlat34.x;
  let x_1147 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1145 + x_1147);
  let x_1150 : vec4<f32> = u_xlat3;
  let x_1152 : vec2<f32> = u_xlat34;
  let x_1156 : vec3<f32> = u_xlat1;
  let x_1158 : vec3<f32> = ((vec3<f32>(x_1150.x, x_1150.y, x_1150.z) * -(vec3<f32>(x_1152.x, x_1152.x, x_1152.x))) + -(x_1156));
  let x_1159 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
  let x_1161 : vec4<f32> = u_xlat3;
  let x_1163 : vec3<f32> = u_xlat1;
  u_xlat34.x = dot(vec3<f32>(x_1161.x, x_1161.y, x_1161.z), x_1163);
  let x_1167 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1167, 0.0f, 1.0f);
  let x_1171 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1171) + 1.0f);
  let x_1176 : f32 = u_xlat34.x;
  let x_1178 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1176 * x_1178);
  let x_1182 : f32 = u_xlat34.x;
  let x_1184 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1182 * x_1184);
  let x_1188 : f32 = u_xlat30.x;
  u_xlat48 = ((-(x_1188) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1195 : f32 = u_xlat30.x;
  let x_1196 : f32 = u_xlat48;
  u_xlat30.x = (x_1195 * x_1196);
  let x_1200 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1200 * 6.0f);
  let x_1212 : vec4<f32> = u_xlat8;
  let x_1215 : f32 = u_xlat30.x;
  let x_1216 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1212.x, x_1212.y, x_1212.z), x_1215);
  u_xlat8 = x_1216;
  let x_1218 : f32 = u_xlat8.w;
  u_xlat30.x = (x_1218 + -1.0f);
  let x_1222 : f32 = x_132.unity_SpecCube0_HDR.w;
  let x_1224 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1222 * x_1224) + 1.0f);
  let x_1229 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1229, 0.0f);
  let x_1233 : f32 = u_xlat30.x;
  u_xlat30.x = log2(x_1233);
  let x_1237 : f32 = u_xlat30.x;
  let x_1239 : f32 = x_132.unity_SpecCube0_HDR.y;
  u_xlat30.x = (x_1237 * x_1239);
  let x_1243 : f32 = u_xlat30.x;
  u_xlat30.x = exp2(x_1243);
  let x_1247 : f32 = u_xlat30.x;
  let x_1249 : f32 = x_132.unity_SpecCube0_HDR.x;
  u_xlat30.x = (x_1247 * x_1249);
  let x_1252 : vec4<f32> = u_xlat8;
  let x_1254 : vec2<f32> = u_xlat30;
  let x_1256 : vec3<f32> = (vec3<f32>(x_1252.x, x_1252.y, x_1252.z) * vec3<f32>(x_1254.x, x_1254.x, x_1254.x));
  let x_1257 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
  let x_1259 : f32 = u_xlat44;
  let x_1261 : f32 = u_xlat44;
  u_xlat30 = ((vec2<f32>(x_1259, x_1259) * vec2<f32>(x_1261, x_1261)) + vec2<f32>(-1.0f, 1.0f));
  let x_1267 : f32 = u_xlat30.y;
  u_xlat44 = (1.0f / x_1267);
  let x_1269 : f32 = u_xlat46;
  u_xlat46 = (x_1269 + -0.03999999910593032837f);
  let x_1273 : f32 = u_xlat34.x;
  let x_1274 : f32 = u_xlat46;
  u_xlat46 = ((x_1273 * x_1274) + 0.03999999910593032837f);
  let x_1278 : f32 = u_xlat44;
  let x_1279 : f32 = u_xlat46;
  u_xlat44 = (x_1278 * x_1279);
  let x_1281 : f32 = u_xlat44;
  let x_1283 : vec4<f32> = u_xlat8;
  let x_1285 : vec3<f32> = (vec3<f32>(x_1281, x_1281, x_1281) * vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
  let x_1286 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);
  let x_1288 : vec3<f32> = u_xlat19;
  let x_1289 : vec3<f32> = u_xlat4;
  let x_1291 : vec4<f32> = u_xlat8;
  u_xlat19 = ((x_1288 * x_1289) + vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
  let x_1294 : f32 = u_xlat42;
  let x_1296 : f32 = x_132.unity_LightData.z;
  u_xlat42 = (x_1294 * x_1296);
  let x_1298 : vec4<f32> = u_xlat3;
  let x_1301 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1298.x, x_1298.y, x_1298.z), vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
  let x_1304 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1304, 0.0f, 1.0f);
  let x_1306 : f32 = u_xlat42;
  let x_1307 : f32 = u_xlat44;
  u_xlat42 = (x_1306 * x_1307);
  let x_1309 : f32 = u_xlat42;
  let x_1311 : vec4<f32> = u_xlat7;
  let x_1313 : vec3<f32> = (vec3<f32>(x_1309, x_1309, x_1309) * vec3<f32>(x_1311.x, x_1311.y, x_1311.z));
  let x_1314 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1314.w);
  let x_1316 : vec3<f32> = u_xlat1;
  let x_1318 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1320 : vec3<f32> = (x_1316 + vec3<f32>(x_1318.x, x_1318.y, x_1318.z));
  let x_1321 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);
  let x_1323 : vec4<f32> = u_xlat8;
  let x_1325 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1323.x, x_1323.y, x_1323.z), vec3<f32>(x_1325.x, x_1325.y, x_1325.z));
  let x_1328 : f32 = u_xlat42;
  u_xlat42 = max(x_1328, 1.17549435e-38f);
  let x_1331 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1331);
  let x_1333 : f32 = u_xlat42;
  let x_1335 : vec4<f32> = u_xlat8;
  let x_1337 : vec3<f32> = (vec3<f32>(x_1333, x_1333, x_1333) * vec3<f32>(x_1335.x, x_1335.y, x_1335.z));
  let x_1338 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
  let x_1340 : vec4<f32> = u_xlat3;
  let x_1342 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1340.x, x_1340.y, x_1340.z), vec3<f32>(x_1342.x, x_1342.y, x_1342.z));
  let x_1345 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1345, 0.0f, 1.0f);
  let x_1348 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1350 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1348.x, x_1348.y, x_1348.z), vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
  let x_1353 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1353, 0.0f, 1.0f);
  let x_1355 : f32 = u_xlat42;
  let x_1356 : f32 = u_xlat42;
  u_xlat42 = (x_1355 * x_1356);
  let x_1358 : f32 = u_xlat42;
  let x_1360 : f32 = u_xlat30.x;
  u_xlat42 = ((x_1358 * x_1360) + 1.00001001358032226562f);
  let x_1364 : f32 = u_xlat44;
  let x_1365 : f32 = u_xlat44;
  u_xlat44 = (x_1364 * x_1365);
  let x_1367 : f32 = u_xlat42;
  let x_1368 : f32 = u_xlat42;
  u_xlat42 = (x_1367 * x_1368);
  let x_1370 : f32 = u_xlat44;
  u_xlat44 = max(x_1370, 0.10000000149011611938f);
  let x_1373 : f32 = u_xlat42;
  let x_1374 : f32 = u_xlat44;
  u_xlat42 = (x_1373 * x_1374);
  let x_1377 : f32 = u_xlat5.x;
  let x_1378 : f32 = u_xlat42;
  u_xlat42 = (x_1377 * x_1378);
  let x_1380 : f32 = u_xlat45;
  let x_1381 : f32 = u_xlat42;
  u_xlat42 = (x_1380 / x_1381);
  let x_1383 : f32 = u_xlat42;
  let x_1387 : vec3<f32> = u_xlat4;
  let x_1388 : vec3<f32> = ((vec3<f32>(x_1383, x_1383, x_1383) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1387);
  let x_1389 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1389.w);
  let x_1391 : vec4<f32> = u_xlat7;
  let x_1393 : vec4<f32> = u_xlat8;
  let x_1395 : vec3<f32> = (vec3<f32>(x_1391.x, x_1391.y, x_1391.z) * vec3<f32>(x_1393.x, x_1393.y, x_1393.z));
  let x_1396 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
  let x_1399 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_1401 : f32 = x_132.unity_LightData.y;
  u_xlat42 = min(x_1399, x_1401);
  let x_1403 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1403));
  let x_1407 : f32 = u_xlat20.x;
  let x_1410 : f32 = x_248.x_AdditionalShadowFadeParams.x;
  let x_1413 : f32 = x_248.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1407 * x_1410) + x_1413);
  let x_1415 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1415, 0.0f, 1.0f);
  let x_1419 : f32 = x_1036.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1421 : f32 = x_1036.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1423 : f32 = x_1036.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1425 : f32 = x_1036.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1426 : vec4<f32> = vec4<f32>(x_1419, x_1421, x_1423, x_1425);
  let x_1433 : vec4<bool> = (vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1426.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb20 = vec2<bool>(x_1433.x, x_1433.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1444 : u32 = u_xlatu_loop_1;
    let x_1445 : u32 = u_xlatu42;
    if ((x_1444 < x_1445)) {
    } else {
      break;
    }
    let x_1448 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1448 >> 2u);
    let x_1451 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1451 & 3u));
    let x_1454 : u32 = u_xlatu48;
    let x_1457 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_1454)];
    let x_1467 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1472 : vec4<u32> = indexable[x_1467];
    u_xlat48 = dot(x_1457, bitcast<vec4<f32>>(x_1472));
    let x_1476 : f32 = u_xlat48;
    u_xlati48 = i32(x_1476);
    let x_1478 : vec3<f32> = vs_INTERP8;
    let x_1489 : i32 = u_xlati48;
    let x_1491 : vec4<f32> = x_1488.x_AdditionalLightsPosition[x_1489];
    let x_1494 : i32 = u_xlati48;
    let x_1496 : vec4<f32> = x_1488.x_AdditionalLightsPosition[x_1494];
    u_xlat9 = ((-(x_1478) * vec3<f32>(x_1491.w, x_1491.w, x_1491.w)) + vec3<f32>(x_1496.x, x_1496.y, x_1496.z));
    let x_1500 : vec3<f32> = u_xlat9;
    let x_1501 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1500, x_1501);
    let x_1503 : f32 = u_xlat49;
    u_xlat49 = max(x_1503, 0.00006103515625f);
    let x_1507 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1507);
    let x_1510 : f32 = u_xlat50;
    let x_1512 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1510, x_1510, x_1510) * x_1512);
    let x_1515 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1515);
    let x_1517 : f32 = u_xlat49;
    let x_1518 : i32 = u_xlati48;
    let x_1520 : f32 = x_1488.x_AdditionalLightsAttenuation[x_1518].x;
    u_xlat49 = (x_1517 * x_1520);
    let x_1522 : f32 = u_xlat49;
    let x_1524 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1522) * x_1524) + 1.0f);
    let x_1527 : f32 = u_xlat49;
    u_xlat49 = max(x_1527, 0.0f);
    let x_1529 : f32 = u_xlat49;
    let x_1530 : f32 = u_xlat49;
    u_xlat49 = (x_1529 * x_1530);
    let x_1532 : f32 = u_xlat49;
    let x_1533 : f32 = u_xlat51;
    u_xlat49 = (x_1532 * x_1533);
    let x_1535 : i32 = u_xlati48;
    let x_1537 : vec4<f32> = x_1488.x_AdditionalLightsSpotDir[x_1535];
    let x_1539 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1537.x, x_1537.y, x_1537.z), x_1539);
    let x_1541 : f32 = u_xlat51;
    let x_1542 : i32 = u_xlati48;
    let x_1544 : f32 = x_1488.x_AdditionalLightsAttenuation[x_1542].z;
    let x_1546 : i32 = u_xlati48;
    let x_1548 : f32 = x_1488.x_AdditionalLightsAttenuation[x_1546].w;
    u_xlat51 = ((x_1541 * x_1544) + x_1548);
    let x_1550 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1550, 0.0f, 1.0f);
    let x_1552 : f32 = u_xlat51;
    let x_1553 : f32 = u_xlat51;
    u_xlat51 = (x_1552 * x_1553);
    let x_1555 : f32 = u_xlat49;
    let x_1556 : f32 = u_xlat51;
    u_xlat49 = (x_1555 * x_1556);
    let x_1560 : i32 = u_xlati48;
    let x_1562 : f32 = x_248.x_AdditionalShadowParams[x_1560].w;
    u_xlati51 = i32(x_1562);
    let x_1565 : i32 = u_xlati51;
    u_xlatb52 = (x_1565 >= 0i);
    let x_1567 : bool = u_xlatb52;
    if (x_1567) {
      let x_1571 : i32 = u_xlati48;
      let x_1573 : f32 = x_248.x_AdditionalShadowParams[x_1571].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1573, x_1573, x_1573, x_1573))));
      let x_1577 : bool = u_xlatb52;
      if (x_1577) {
        let x_1581 : vec3<f32> = u_xlat10;
        let x_1584 : vec3<f32> = u_xlat10;
        let x_1587 : vec4<bool> = (abs(vec4<f32>(x_1581.z, x_1581.z, x_1581.y, x_1581.z)) >= abs(vec4<f32>(x_1584.x, x_1584.y, x_1584.x, x_1584.x)));
        let x_1589 : vec3<bool> = vec3<bool>(x_1587.x, x_1587.y, x_1587.z);
        let x_1590 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1589.x, x_1589.y, x_1589.z, x_1590.w);
        let x_1593 : bool = u_xlatb11.y;
        let x_1595 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1593 & x_1595);
        let x_1597 : vec3<f32> = u_xlat10;
        let x_1600 : vec4<bool> = (-(vec4<f32>(x_1597.z, x_1597.y, x_1597.z, x_1597.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1601 : vec3<bool> = vec3<bool>(x_1600.x, x_1600.y, x_1600.w);
        let x_1602 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1601.x, x_1601.y, x_1602.z, x_1601.z);
        let x_1606 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1606);
        let x_1611 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1611);
        let x_1616 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1616);
        let x_1620 : bool = u_xlatb11.z;
        if (x_1620) {
          let x_1625 : f32 = u_xlat11.y;
          x_1621 = x_1625;
        } else {
          let x_1627 : f32 = u_xlat53;
          x_1621 = x_1627;
        }
        let x_1628 : f32 = x_1621;
        u_xlat25.x = x_1628;
        let x_1631 : bool = u_xlatb52;
        if (x_1631) {
          let x_1636 : f32 = u_xlat11.x;
          x_1632 = x_1636;
        } else {
          let x_1639 : f32 = u_xlat25.x;
          x_1632 = x_1639;
        }
        let x_1640 : f32 = x_1632;
        u_xlat52 = x_1640;
        let x_1641 : i32 = u_xlati48;
        let x_1643 : f32 = x_248.x_AdditionalShadowParams[x_1641].w;
        u_xlat11.x = trunc(x_1643);
        let x_1646 : f32 = u_xlat52;
        let x_1648 : f32 = u_xlat11.x;
        u_xlat52 = (x_1646 + x_1648);
        let x_1650 : f32 = u_xlat52;
        u_xlati51 = i32(x_1650);
      }
      let x_1652 : i32 = u_xlati51;
      u_xlati51 = (x_1652 << bitcast<u32>(2i));
      let x_1654 : vec3<f32> = vs_INTERP8;
      let x_1657 : i32 = u_xlati51;
      let x_1660 : i32 = u_xlati51;
      let x_1664 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_1657 + 1i) / 4i)][((x_1660 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1654.y, x_1654.y, x_1654.y, x_1654.y) * x_1664);
      let x_1666 : i32 = u_xlati51;
      let x_1668 : i32 = u_xlati51;
      let x_1671 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[(x_1666 / 4i)][(x_1668 % 4i)];
      let x_1672 : vec3<f32> = vs_INTERP8;
      let x_1675 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1671 * vec4<f32>(x_1672.x, x_1672.x, x_1672.x, x_1672.x)) + x_1675);
      let x_1677 : i32 = u_xlati51;
      let x_1680 : i32 = u_xlati51;
      let x_1684 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_1677 + 2i) / 4i)][((x_1680 + 2i) % 4i)];
      let x_1685 : vec3<f32> = vs_INTERP8;
      let x_1688 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1684 * vec4<f32>(x_1685.z, x_1685.z, x_1685.z, x_1685.z)) + x_1688);
      let x_1690 : vec4<f32> = u_xlat11;
      let x_1691 : i32 = u_xlati51;
      let x_1694 : i32 = u_xlati51;
      let x_1698 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_1691 + 3i) / 4i)][((x_1694 + 3i) % 4i)];
      u_xlat11 = (x_1690 + x_1698);
      let x_1700 : vec4<f32> = u_xlat11;
      let x_1702 : vec4<f32> = u_xlat11;
      let x_1704 : vec3<f32> = (vec3<f32>(x_1700.x, x_1700.y, x_1700.z) / vec3<f32>(x_1702.w, x_1702.w, x_1702.w));
      let x_1705 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1704.x, x_1704.y, x_1704.z, x_1705.w);
      let x_1708 : vec4<f32> = u_xlat11;
      let x_1709 : vec2<f32> = vec2<f32>(x_1708.x, x_1708.y);
      let x_1711 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1709.x, x_1709.y, x_1711);
      let x_1719 : vec3<f32> = txVec1;
      let x_1721 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1719.xy, x_1719.z);
      u_xlat51 = x_1721;
      let x_1722 : i32 = u_xlati48;
      let x_1724 : f32 = x_248.x_AdditionalShadowParams[x_1722].x;
      u_xlat52 = (1.0f + -(x_1724));
      let x_1727 : f32 = u_xlat51;
      let x_1728 : i32 = u_xlati48;
      let x_1730 : f32 = x_248.x_AdditionalShadowParams[x_1728].x;
      let x_1732 : f32 = u_xlat52;
      u_xlat51 = ((x_1727 * x_1730) + x_1732);
      let x_1735 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1735);
      let x_1738 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1738 >= 1.0f);
      let x_1741 : bool = u_xlatb52;
      let x_1743 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1741 | x_1743);
      let x_1745 : bool = u_xlatb52;
      let x_1746 : f32 = u_xlat51;
      u_xlat51 = select(x_1746, 1.0f, x_1745);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1749 : f32 = u_xlat51;
    u_xlat52 = (-(x_1749) + 1.0f);
    let x_1752 : f32 = u_xlat44;
    let x_1753 : f32 = u_xlat52;
    let x_1755 : f32 = u_xlat51;
    u_xlat51 = ((x_1752 * x_1753) + x_1755);
    let x_1758 : i32 = u_xlati48;
    u_xlati52 = (1i << bitcast<u32>((x_1758 & 31i)));
    let x_1762 : i32 = u_xlati52;
    let x_1765 : f32 = x_1036.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1762) & bitcast<u32>(x_1765)));
    let x_1769 : i32 = u_xlati52;
    if ((x_1769 != 0i)) {
      let x_1773 : i32 = u_xlati48;
      let x_1775 : f32 = x_1036.x_AdditionalLightsLightTypes[x_1773].el;
      u_xlati52 = i32(x_1775);
      let x_1778 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1778 != 0i));
      let x_1782 : i32 = u_xlati48;
      u_xlati25 = (x_1782 << bitcast<u32>(2i));
      let x_1784 : i32 = u_xlati11;
      if ((x_1784 != 0i)) {
        let x_1788 : vec3<f32> = vs_INTERP8;
        let x_1790 : i32 = u_xlati25;
        let x_1793 : i32 = u_xlati25;
        let x_1797 : vec4<f32> = x_1036.x_AdditionalLightsWorldToLights[((x_1790 + 1i) / 4i)][((x_1793 + 1i) % 4i)];
        let x_1799 : vec3<f32> = (vec3<f32>(x_1788.y, x_1788.y, x_1788.y) * vec3<f32>(x_1797.x, x_1797.y, x_1797.w));
        let x_1800 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1799.x, x_1800.y, x_1799.y, x_1799.z);
        let x_1802 : i32 = u_xlati25;
        let x_1804 : i32 = u_xlati25;
        let x_1807 : vec4<f32> = x_1036.x_AdditionalLightsWorldToLights[(x_1802 / 4i)][(x_1804 % 4i)];
        let x_1809 : vec3<f32> = vs_INTERP8;
        let x_1812 : vec4<f32> = u_xlat11;
        let x_1814 : vec3<f32> = ((vec3<f32>(x_1807.x, x_1807.y, x_1807.w) * vec3<f32>(x_1809.x, x_1809.x, x_1809.x)) + vec3<f32>(x_1812.x, x_1812.z, x_1812.w));
        let x_1815 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1814.x, x_1815.y, x_1814.y, x_1814.z);
        let x_1817 : i32 = u_xlati25;
        let x_1820 : i32 = u_xlati25;
        let x_1824 : vec4<f32> = x_1036.x_AdditionalLightsWorldToLights[((x_1817 + 2i) / 4i)][((x_1820 + 2i) % 4i)];
        let x_1826 : vec3<f32> = vs_INTERP8;
        let x_1829 : vec4<f32> = u_xlat11;
        let x_1831 : vec3<f32> = ((vec3<f32>(x_1824.x, x_1824.y, x_1824.w) * vec3<f32>(x_1826.z, x_1826.z, x_1826.z)) + vec3<f32>(x_1829.x, x_1829.z, x_1829.w));
        let x_1832 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1831.x, x_1832.y, x_1831.y, x_1831.z);
        let x_1834 : vec4<f32> = u_xlat11;
        let x_1836 : i32 = u_xlati25;
        let x_1839 : i32 = u_xlati25;
        let x_1843 : vec4<f32> = x_1036.x_AdditionalLightsWorldToLights[((x_1836 + 3i) / 4i)][((x_1839 + 3i) % 4i)];
        let x_1845 : vec3<f32> = (vec3<f32>(x_1834.x, x_1834.z, x_1834.w) + vec3<f32>(x_1843.x, x_1843.y, x_1843.w));
        let x_1846 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1845.x, x_1846.y, x_1845.y, x_1845.z);
        let x_1848 : vec4<f32> = u_xlat11;
        let x_1850 : vec4<f32> = u_xlat11;
        let x_1852 : vec2<f32> = (vec2<f32>(x_1848.x, x_1848.z) / vec2<f32>(x_1850.w, x_1850.w));
        let x_1853 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1852.x, x_1853.y, x_1852.y, x_1853.w);
        let x_1855 : vec4<f32> = u_xlat11;
        let x_1858 : vec2<f32> = ((vec2<f32>(x_1855.x, x_1855.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1859 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1858.x, x_1859.y, x_1858.y, x_1859.w);
        let x_1861 : vec4<f32> = u_xlat11;
        let x_1865 : vec2<f32> = clamp(vec2<f32>(x_1861.x, x_1861.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1866 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1865.x, x_1866.y, x_1865.y, x_1866.w);
        let x_1868 : i32 = u_xlati48;
        let x_1870 : vec4<f32> = x_1036.x_AdditionalLightsCookieAtlasUVRects[x_1868];
        let x_1872 : vec4<f32> = u_xlat11;
        let x_1875 : i32 = u_xlati48;
        let x_1877 : vec4<f32> = x_1036.x_AdditionalLightsCookieAtlasUVRects[x_1875];
        let x_1879 : vec2<f32> = ((vec2<f32>(x_1870.x, x_1870.y) * vec2<f32>(x_1872.x, x_1872.z)) + vec2<f32>(x_1877.z, x_1877.w));
        let x_1880 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1879.x, x_1880.y, x_1879.y, x_1880.w);
      } else {
        let x_1883 : i32 = u_xlati52;
        u_xlatb52 = (x_1883 == 1i);
        let x_1885 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1885);
        let x_1887 : i32 = u_xlati52;
        if ((x_1887 != 0i)) {
          let x_1892 : vec3<f32> = vs_INTERP8;
          let x_1894 : i32 = u_xlati25;
          let x_1897 : i32 = u_xlati25;
          let x_1901 : vec4<f32> = x_1036.x_AdditionalLightsWorldToLights[((x_1894 + 1i) / 4i)][((x_1897 + 1i) % 4i)];
          let x_1903 : vec2<f32> = (vec2<f32>(x_1892.y, x_1892.y) * vec2<f32>(x_1901.x, x_1901.y));
          let x_1904 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1903.x, x_1903.y, x_1904.z, x_1904.w);
          let x_1906 : i32 = u_xlati25;
          let x_1908 : i32 = u_xlati25;
          let x_1911 : vec4<f32> = x_1036.x_AdditionalLightsWorldToLights[(x_1906 / 4i)][(x_1908 % 4i)];
          let x_1913 : vec3<f32> = vs_INTERP8;
          let x_1916 : vec4<f32> = u_xlat12;
          let x_1918 : vec2<f32> = ((vec2<f32>(x_1911.x, x_1911.y) * vec2<f32>(x_1913.x, x_1913.x)) + vec2<f32>(x_1916.x, x_1916.y));
          let x_1919 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1918.x, x_1918.y, x_1919.z, x_1919.w);
          let x_1921 : i32 = u_xlati25;
          let x_1924 : i32 = u_xlati25;
          let x_1928 : vec4<f32> = x_1036.x_AdditionalLightsWorldToLights[((x_1921 + 2i) / 4i)][((x_1924 + 2i) % 4i)];
          let x_1930 : vec3<f32> = vs_INTERP8;
          let x_1933 : vec4<f32> = u_xlat12;
          let x_1935 : vec2<f32> = ((vec2<f32>(x_1928.x, x_1928.y) * vec2<f32>(x_1930.z, x_1930.z)) + vec2<f32>(x_1933.x, x_1933.y));
          let x_1936 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1935.x, x_1935.y, x_1936.z, x_1936.w);
          let x_1938 : vec4<f32> = u_xlat12;
          let x_1940 : i32 = u_xlati25;
          let x_1943 : i32 = u_xlati25;
          let x_1947 : vec4<f32> = x_1036.x_AdditionalLightsWorldToLights[((x_1940 + 3i) / 4i)][((x_1943 + 3i) % 4i)];
          let x_1949 : vec2<f32> = (vec2<f32>(x_1938.x, x_1938.y) + vec2<f32>(x_1947.x, x_1947.y));
          let x_1950 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1949.x, x_1949.y, x_1950.z, x_1950.w);
          let x_1952 : vec4<f32> = u_xlat12;
          let x_1955 : vec2<f32> = ((vec2<f32>(x_1952.x, x_1952.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1956 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1955.x, x_1955.y, x_1956.z, x_1956.w);
          let x_1958 : vec4<f32> = u_xlat12;
          let x_1960 : vec2<f32> = fract(vec2<f32>(x_1958.x, x_1958.y));
          let x_1961 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1960.x, x_1960.y, x_1961.z, x_1961.w);
          let x_1963 : i32 = u_xlati48;
          let x_1965 : vec4<f32> = x_1036.x_AdditionalLightsCookieAtlasUVRects[x_1963];
          let x_1967 : vec4<f32> = u_xlat12;
          let x_1970 : i32 = u_xlati48;
          let x_1972 : vec4<f32> = x_1036.x_AdditionalLightsCookieAtlasUVRects[x_1970];
          let x_1974 : vec2<f32> = ((vec2<f32>(x_1965.x, x_1965.y) * vec2<f32>(x_1967.x, x_1967.y)) + vec2<f32>(x_1972.z, x_1972.w));
          let x_1975 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1974.x, x_1975.y, x_1974.y, x_1975.w);
        } else {
          let x_1978 : vec3<f32> = vs_INTERP8;
          let x_1980 : i32 = u_xlati25;
          let x_1983 : i32 = u_xlati25;
          let x_1987 : vec4<f32> = x_1036.x_AdditionalLightsWorldToLights[((x_1980 + 1i) / 4i)][((x_1983 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1978.y, x_1978.y, x_1978.y, x_1978.y) * x_1987);
          let x_1989 : i32 = u_xlati25;
          let x_1991 : i32 = u_xlati25;
          let x_1994 : vec4<f32> = x_1036.x_AdditionalLightsWorldToLights[(x_1989 / 4i)][(x_1991 % 4i)];
          let x_1995 : vec3<f32> = vs_INTERP8;
          let x_1998 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1994 * vec4<f32>(x_1995.x, x_1995.x, x_1995.x, x_1995.x)) + x_1998);
          let x_2000 : i32 = u_xlati25;
          let x_2003 : i32 = u_xlati25;
          let x_2007 : vec4<f32> = x_1036.x_AdditionalLightsWorldToLights[((x_2000 + 2i) / 4i)][((x_2003 + 2i) % 4i)];
          let x_2008 : vec3<f32> = vs_INTERP8;
          let x_2011 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2007 * vec4<f32>(x_2008.z, x_2008.z, x_2008.z, x_2008.z)) + x_2011);
          let x_2013 : vec4<f32> = u_xlat12;
          let x_2014 : i32 = u_xlati25;
          let x_2017 : i32 = u_xlati25;
          let x_2021 : vec4<f32> = x_1036.x_AdditionalLightsWorldToLights[((x_2014 + 3i) / 4i)][((x_2017 + 3i) % 4i)];
          u_xlat12 = (x_2013 + x_2021);
          let x_2023 : vec4<f32> = u_xlat12;
          let x_2025 : vec4<f32> = u_xlat12;
          let x_2027 : vec3<f32> = (vec3<f32>(x_2023.x, x_2023.y, x_2023.z) / vec3<f32>(x_2025.w, x_2025.w, x_2025.w));
          let x_2028 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
          let x_2030 : vec4<f32> = u_xlat12;
          let x_2032 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_2030.x, x_2030.y, x_2030.z), vec3<f32>(x_2032.x, x_2032.y, x_2032.z));
          let x_2035 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_2035);
          let x_2037 : f32 = u_xlat52;
          let x_2039 : vec4<f32> = u_xlat12;
          let x_2041 : vec3<f32> = (vec3<f32>(x_2037, x_2037, x_2037) * vec3<f32>(x_2039.x, x_2039.y, x_2039.z));
          let x_2042 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2042.w);
          let x_2044 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_2044.x, x_2044.y, x_2044.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2049 : f32 = u_xlat52;
          u_xlat52 = max(x_2049, 0.00000099999999747524f);
          let x_2052 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_2052);
          let x_2055 : f32 = u_xlat52;
          let x_2057 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_2055, x_2055, x_2055) * vec3<f32>(x_2057.z, x_2057.x, x_2057.y));
          let x_2061 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2061);
          let x_2065 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2065, 0.0f, 1.0f);
          let x_2070 : vec3<f32> = u_xlat13;
          let x_2072 : vec4<bool> = (vec4<f32>(x_2070.y, x_2070.y, x_2070.z, x_2070.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2073 : vec2<bool> = vec2<bool>(x_2072.x, x_2072.z);
          let x_2074 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_2073.x, x_2074.y, x_2073.y);
          let x_2077 : bool = u_xlatb25.x;
          if (x_2077) {
            let x_2082 : f32 = u_xlat13.x;
            x_2078 = x_2082;
          } else {
            let x_2085 : f32 = u_xlat13.x;
            x_2078 = -(x_2085);
          }
          let x_2087 : f32 = x_2078;
          u_xlat25.x = x_2087;
          let x_2090 : bool = u_xlatb25.z;
          if (x_2090) {
            let x_2095 : f32 = u_xlat13.x;
            x_2091 = x_2095;
          } else {
            let x_2098 : f32 = u_xlat13.x;
            x_2091 = -(x_2098);
          }
          let x_2100 : f32 = x_2091;
          u_xlat25.z = x_2100;
          let x_2102 : vec4<f32> = u_xlat12;
          let x_2104 : f32 = u_xlat52;
          let x_2107 : vec3<f32> = u_xlat25;
          let x_2109 : vec2<f32> = ((vec2<f32>(x_2102.x, x_2102.y) * vec2<f32>(x_2104, x_2104)) + vec2<f32>(x_2107.x, x_2107.z));
          let x_2110 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2109.x, x_2110.y, x_2109.y);
          let x_2112 : vec3<f32> = u_xlat25;
          let x_2115 : vec2<f32> = ((vec2<f32>(x_2112.x, x_2112.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2116 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2115.x, x_2116.y, x_2115.y);
          let x_2118 : vec3<f32> = u_xlat25;
          let x_2122 : vec2<f32> = clamp(vec2<f32>(x_2118.x, x_2118.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2123 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2122.x, x_2123.y, x_2122.y);
          let x_2125 : i32 = u_xlati48;
          let x_2127 : vec4<f32> = x_1036.x_AdditionalLightsCookieAtlasUVRects[x_2125];
          let x_2129 : vec3<f32> = u_xlat25;
          let x_2132 : i32 = u_xlati48;
          let x_2134 : vec4<f32> = x_1036.x_AdditionalLightsCookieAtlasUVRects[x_2132];
          let x_2136 : vec2<f32> = ((vec2<f32>(x_2127.x, x_2127.y) * vec2<f32>(x_2129.x, x_2129.z)) + vec2<f32>(x_2134.z, x_2134.w));
          let x_2137 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2136.x, x_2137.y, x_2136.y, x_2137.w);
        }
      }
      let x_2144 : vec4<f32> = u_xlat11;
      let x_2146 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2144.x, x_2144.z), 0.0f);
      u_xlat11 = x_2146;
      let x_2148 : bool = u_xlatb20.y;
      if (x_2148) {
        let x_2153 : f32 = u_xlat11.w;
        x_2149 = x_2153;
      } else {
        let x_2156 : f32 = u_xlat11.x;
        x_2149 = x_2156;
      }
      let x_2157 : f32 = x_2149;
      u_xlat52 = x_2157;
      let x_2159 : bool = u_xlatb20.x;
      if (x_2159) {
        let x_2163 : vec4<f32> = u_xlat11;
        x_2160 = vec3<f32>(x_2163.x, x_2163.y, x_2163.z);
      } else {
        let x_2166 : f32 = u_xlat52;
        x_2160 = vec3<f32>(x_2166, x_2166, x_2166);
      }
      let x_2168 : vec3<f32> = x_2160;
      let x_2169 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2168.x, x_2168.y, x_2168.z, x_2169.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2175 : vec4<f32> = u_xlat11;
    let x_2177 : i32 = u_xlati48;
    let x_2179 : vec4<f32> = x_1488.x_AdditionalLightsColor[x_2177];
    let x_2181 : vec3<f32> = (vec3<f32>(x_2175.x, x_2175.y, x_2175.z) * vec3<f32>(x_2179.x, x_2179.y, x_2179.z));
    let x_2182 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2181.x, x_2181.y, x_2181.z, x_2182.w);
    let x_2184 : f32 = u_xlat49;
    let x_2185 : f32 = u_xlat51;
    u_xlat48 = (x_2184 * x_2185);
    let x_2187 : vec4<f32> = u_xlat3;
    let x_2189 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_2187.x, x_2187.y, x_2187.z), x_2189);
    let x_2191 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2191, 0.0f, 1.0f);
    let x_2193 : f32 = u_xlat48;
    let x_2194 : f32 = u_xlat49;
    u_xlat48 = (x_2193 * x_2194);
    let x_2196 : f32 = u_xlat48;
    let x_2198 : vec4<f32> = u_xlat11;
    let x_2200 : vec3<f32> = (vec3<f32>(x_2196, x_2196, x_2196) * vec3<f32>(x_2198.x, x_2198.y, x_2198.z));
    let x_2201 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2200.x, x_2200.y, x_2200.z, x_2201.w);
    let x_2203 : vec3<f32> = u_xlat9;
    let x_2204 : f32 = u_xlat50;
    let x_2207 : vec3<f32> = u_xlat1;
    u_xlat9 = ((x_2203 * vec3<f32>(x_2204, x_2204, x_2204)) + x_2207);
    let x_2209 : vec3<f32> = u_xlat9;
    let x_2210 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_2209, x_2210);
    let x_2212 : f32 = u_xlat48;
    u_xlat48 = max(x_2212, 1.17549435e-38f);
    let x_2214 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_2214);
    let x_2216 : f32 = u_xlat48;
    let x_2218 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_2216, x_2216, x_2216) * x_2218);
    let x_2220 : vec4<f32> = u_xlat3;
    let x_2222 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2220.x, x_2220.y, x_2220.z), x_2222);
    let x_2224 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2224, 0.0f, 1.0f);
    let x_2226 : vec3<f32> = u_xlat10;
    let x_2227 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_2226, x_2227);
    let x_2229 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2229, 0.0f, 1.0f);
    let x_2231 : f32 = u_xlat48;
    let x_2232 : f32 = u_xlat48;
    u_xlat48 = (x_2231 * x_2232);
    let x_2234 : f32 = u_xlat48;
    let x_2236 : f32 = u_xlat30.x;
    u_xlat48 = ((x_2234 * x_2236) + 1.00001001358032226562f);
    let x_2239 : f32 = u_xlat49;
    let x_2240 : f32 = u_xlat49;
    u_xlat49 = (x_2239 * x_2240);
    let x_2242 : f32 = u_xlat48;
    let x_2243 : f32 = u_xlat48;
    u_xlat48 = (x_2242 * x_2243);
    let x_2245 : f32 = u_xlat49;
    u_xlat49 = max(x_2245, 0.10000000149011611938f);
    let x_2247 : f32 = u_xlat48;
    let x_2248 : f32 = u_xlat49;
    u_xlat48 = (x_2247 * x_2248);
    let x_2251 : f32 = u_xlat5.x;
    let x_2252 : f32 = u_xlat48;
    u_xlat48 = (x_2251 * x_2252);
    let x_2254 : f32 = u_xlat45;
    let x_2255 : f32 = u_xlat48;
    u_xlat48 = (x_2254 / x_2255);
    let x_2257 : f32 = u_xlat48;
    let x_2260 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_2257, x_2257, x_2257) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_2260);
    let x_2262 : vec3<f32> = u_xlat9;
    let x_2263 : vec4<f32> = u_xlat11;
    let x_2266 : vec4<f32> = u_xlat8;
    let x_2268 : vec3<f32> = ((x_2262 * vec3<f32>(x_2263.x, x_2263.y, x_2263.z)) + vec3<f32>(x_2266.x, x_2266.y, x_2266.z));
    let x_2269 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2268.x, x_2268.y, x_2268.z, x_2269.w);

    continuing {
      let x_2271 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2271 + bitcast<u32>(1i));
    }
  }
  let x_2273 : vec3<f32> = u_xlat19;
  let x_2274 : vec4<f32> = u_xlat6;
  let x_2277 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_2273 * vec3<f32>(x_2274.x, x_2274.x, x_2274.x)) + vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
  let x_2280 : vec4<f32> = u_xlat8;
  let x_2282 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_2280.x, x_2280.y, x_2280.z) + x_2282);
  let x_2284 : vec4<f32> = vs_INTERP6;
  let x_2286 : vec3<f32> = u_xlat0;
  let x_2288 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_2284.w, x_2284.w, x_2284.w) * x_2286) + x_2288);
  let x_2291 : f32 = u_xlat16.x;
  let x_2293 : f32 = u_xlat16.x;
  u_xlat42 = (x_2291 * -(x_2293));
  let x_2296 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2296);
  let x_2298 : vec3<f32> = u_xlat0;
  let x_2301 : vec4<f32> = x_75.unity_FogColor;
  u_xlat0 = (x_2298 + -(vec3<f32>(x_2301.x, x_2301.y, x_2301.z)));
  let x_2307 : f32 = u_xlat42;
  let x_2309 : vec3<f32> = u_xlat0;
  let x_2312 : vec4<f32> = x_75.unity_FogColor;
  let x_2314 : vec3<f32> = ((vec3<f32>(x_2307, x_2307, x_2307) * x_2309) + vec3<f32>(x_2312.x, x_2312.y, x_2312.z));
  let x_2315 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2314.x, x_2314.y, x_2314.z, x_2315.w);
  let x_2317 : bool = u_xlatb2;
  let x_2318 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2318, x_2317);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP9_param : vec3<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP6_param : vec4<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


