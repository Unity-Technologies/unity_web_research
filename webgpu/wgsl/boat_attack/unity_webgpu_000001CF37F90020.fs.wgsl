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
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_C30C7CA3 : vec4<f32>,
  /* @offset(32) */
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_130 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat44 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat43 : f32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb15 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_494 : UnityPerDraw;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlatb34 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_833 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlatu3 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati3 : i32;

var<private> u_xlat23 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1275 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

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

var<private> u_xlatb3 : bool;

var<private> u_xlatu44 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_406 : f32;
  var x_455 : f32;
  var x_608 : vec3<f32>;
  var x_901 : f32;
  var x_912 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1406 : f32;
  var x_1417 : f32;
  var txVec1 : vec3<f32>;
  var x_1862 : f32;
  var x_1875 : f32;
  var x_1933 : f32;
  var x_1944 : vec3<f32>;
  var x_2127 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_INTERP9;
  let x_13 : vec3<f32> = vs_INTERP9;
  u_xlat0.x = dot(x_12, x_13);
  let x_20 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_20);
  let x_25 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_25);
  let x_28 : vec3<f32> = u_xlat0;
  let x_30 : vec3<f32> = vs_INTERP9;
  u_xlat0 = (vec3<f32>(x_28.x, x_28.x, x_28.x) * x_30);
  let x_48 : vec4<f32> = vs_INTERP5;
  let x_58 : f32 = x_53.x_GlobalMipBias.x;
  let x_59 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_48.x, x_48.y), x_58);
  u_xlat1 = x_59;
  let x_61 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = x_65.Color_C30C7CA3;
  u_xlat2 = (vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_78 : vec4<f32> = vs_INTERP5;
  let x_81 : f32 = x_53.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat3 = vec4<f32>(x_82.w, x_82.x, x_82.y, x_82.z);
  let x_85 : vec4<f32> = u_xlat3;
  u_xlat4 = ((vec4<f32>(x_85.y, x_85.z, x_85.w, x_85.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_94 : vec4<f32> = u_xlat4;
  let x_95 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_94, x_95);
  let x_97 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_97);
  let x_100 : f32 = u_xlat42;
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat17 = (vec3<f32>(x_100, x_100, x_100) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_109 : f32 = vs_INTERP6.y;
  u_xlat42 = (x_109 * 200.0f);
  let x_112 : f32 = u_xlat42;
  u_xlat42 = min(x_112, 1.0f);
  let x_114 : f32 = u_xlat42;
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec3<f32> = (vec3<f32>(x_114, x_114, x_114) * vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_122 : vec3<f32> = vs_INTERP8;
  let x_132 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres0;
  let x_135 : vec3<f32> = (x_122 + -(vec3<f32>(x_132.x, x_132.y, x_132.z)));
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec3<f32> = vs_INTERP8;
  let x_142 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres1;
  let x_145 : vec3<f32> = (x_139 + -(vec3<f32>(x_142.x, x_142.y, x_142.z)));
  let x_146 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_149 : vec3<f32> = vs_INTERP8;
  let x_152 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres2;
  let x_155 : vec3<f32> = (x_149 + -(vec3<f32>(x_152.x, x_152.y, x_152.z)));
  let x_156 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_159 : vec3<f32> = vs_INTERP8;
  let x_162 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres3;
  let x_165 : vec3<f32> = (x_159 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat4;
  let x_170 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_174 : vec4<f32> = u_xlat5;
  let x_176 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : vec4<f32> = u_xlat6;
  let x_182 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_180.x, x_180.y, x_180.z), vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_187 : vec4<f32> = u_xlat7;
  let x_189 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_198 : vec4<f32> = u_xlat4;
  let x_201 : vec4<f32> = x_130.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_198 < x_201);
  let x_205 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_205);
  let x_210 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_210);
  let x_214 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_214);
  let x_218 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_218);
  let x_222 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_222);
  let x_227 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_227);
  let x_231 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_231);
  let x_234 : vec4<f32> = u_xlat4;
  let x_236 : vec4<f32> = u_xlat5;
  let x_238 : vec3<f32> = (vec3<f32>(x_234.x, x_234.y, x_234.z) + vec3<f32>(x_236.y, x_236.z, x_236.w));
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat4;
  let x_244 : vec3<f32> = max(vec3<f32>(x_241.x, x_241.y, x_241.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_245 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_245.x, x_244.x, x_244.y, x_244.z);
  let x_247 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(x_247, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_252 : f32 = u_xlat42;
  u_xlat42 = (-(x_252) + 4.0f);
  let x_257 : f32 = u_xlat42;
  u_xlatu42 = u32(x_257);
  let x_261 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_261) << bitcast<u32>(2i));
  let x_264 : vec3<f32> = vs_INTERP8;
  let x_266 : i32 = u_xlati42;
  let x_269 : i32 = u_xlati42;
  let x_273 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_266 + 1i) / 4i)][((x_269 + 1i) % 4i)];
  let x_275 : vec3<f32> = (vec3<f32>(x_264.y, x_264.y, x_264.y) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : i32 = u_xlati42;
  let x_280 : i32 = u_xlati42;
  let x_283 : vec4<f32> = x_130.x_MainLightWorldToShadow[(x_278 / 4i)][(x_280 % 4i)];
  let x_285 : vec3<f32> = vs_INTERP8;
  let x_288 : vec4<f32> = u_xlat4;
  let x_290 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(x_285.x, x_285.x, x_285.x)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : i32 = u_xlati42;
  let x_296 : i32 = u_xlati42;
  let x_300 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_293 + 2i) / 4i)][((x_296 + 2i) % 4i)];
  let x_302 : vec3<f32> = vs_INTERP8;
  let x_305 : vec4<f32> = u_xlat4;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.z, x_302.z, x_302.z)) + vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : i32 = u_xlati42;
  let x_315 : i32 = u_xlati42;
  let x_319 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_312 + 3i) / 4i)][((x_315 + 3i) % 4i)];
  let x_321 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_326 : vec4<f32> = u_xlat4;
  let x_327 : vec2<f32> = vec2<f32>(x_326.x, x_326.y);
  let x_329 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_327.x, x_327.y, x_329);
  let x_341 : vec3<f32> = txVec0;
  let x_343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_341.xy, x_341.z);
  u_xlat42 = x_343;
  let x_347 : f32 = x_130.x_MainLightShadowParams.x;
  u_xlat44 = (-(x_347) + 1.0f);
  let x_350 : f32 = u_xlat42;
  let x_352 : f32 = x_130.x_MainLightShadowParams.x;
  let x_354 : f32 = u_xlat44;
  u_xlat42 = ((x_350 * x_352) + x_354);
  let x_358 : f32 = u_xlat4.z;
  u_xlatb44 = (0.0f >= x_358);
  let x_361 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_361 >= 1.0f);
  let x_364 : bool = u_xlatb44;
  let x_366 : bool = u_xlatb4.x;
  u_xlatb44 = (x_364 | x_366);
  let x_368 : bool = u_xlatb44;
  let x_369 : f32 = u_xlat42;
  u_xlat42 = select(x_369, 1.0f, x_368);
  let x_371 : vec3<f32> = u_xlat0;
  let x_373 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_371, -(vec3<f32>(x_373.x, x_373.y, x_373.z)));
  let x_379 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_379, 0.0f, 1.0f);
  let x_382 : f32 = u_xlat42;
  let x_385 : vec4<f32> = x_53.x_MainLightColor;
  let x_387 : vec3<f32> = (vec3<f32>(x_382, x_382, x_382) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec3<f32> = u_xlat0;
  let x_392 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec3<f32> = u_xlat0;
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_395 * vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_401 : f32 = u_xlat1.w;
  u_xlatb1 = (x_401 >= 0.40000000596046447754f);
  let x_404 : bool = u_xlatb1;
  if (x_404) {
    let x_410 : f32 = u_xlat1.w;
    x_406 = x_410;
  } else {
    x_406 = 0.0f;
  }
  let x_412 : f32 = x_406;
  u_xlat1.x = x_412;
  let x_416 : f32 = u_xlat1.w;
  u_xlat15.x = (x_416 + -0.40000000596046447754f);
  let x_422 : f32 = u_xlat1.w;
  u_xlat29 = dpdxCoarse(x_422);
  let x_426 : f32 = u_xlat1.w;
  u_xlat43 = dpdyCoarse(x_426);
  let x_428 : f32 = u_xlat43;
  let x_430 : f32 = u_xlat29;
  u_xlat29 = (abs(x_428) + abs(x_430));
  let x_433 : f32 = u_xlat29;
  u_xlat29 = max(x_433, 0.00009999999747378752f);
  let x_437 : f32 = u_xlat15.x;
  let x_438 : f32 = u_xlat29;
  u_xlat15.x = (x_437 / x_438);
  let x_442 : f32 = u_xlat15.x;
  u_xlat15.x = (x_442 + 0.5f);
  let x_447 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_447, 0.0f, 1.0f);
  let x_452 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb29 = !((x_452 == 0.0f));
  let x_454 : bool = u_xlatb29;
  if (x_454) {
    let x_459 : f32 = u_xlat15.x;
    x_455 = x_459;
  } else {
    let x_462 : f32 = u_xlat1.x;
    x_455 = x_462;
  }
  let x_463 : f32 = x_455;
  u_xlat1.x = x_463;
  let x_466 : f32 = u_xlat1.x;
  u_xlat15.x = (x_466 + -0.00009999999747378752f);
  let x_474 : f32 = u_xlat15.x;
  u_xlatb15.x = (x_474 < 0.0f);
  let x_478 : bool = u_xlatb15.x;
  if (((select(0i, 1i, x_478) * -1i) != 0i)) {
    discard;
  }
  let x_488 : f32 = vs_INTERP4.w;
  u_xlatb15.x = (0.0f < x_488);
  let x_496 : f32 = x_494.unity_WorldTransformParams.w;
  u_xlatb15.z = (x_496 >= 0.0f);
  let x_500 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_500);
  let x_504 : bool = u_xlatb15.z;
  u_xlat15.z = select(-1.0f, 1.0f, x_504);
  let x_508 : f32 = u_xlat15.z;
  let x_510 : f32 = u_xlat15.x;
  u_xlat15.x = (x_508 * x_510);
  let x_513 : vec4<f32> = vs_INTERP4;
  let x_515 : vec3<f32> = vs_INTERP9;
  let x_517 : vec3<f32> = (vec3<f32>(x_513.y, x_513.z, x_513.x) * vec3<f32>(x_515.z, x_515.x, x_515.y));
  let x_518 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec3<f32> = vs_INTERP9;
  let x_522 : vec4<f32> = vs_INTERP4;
  let x_525 : vec4<f32> = u_xlat4;
  let x_528 : vec3<f32> = ((vec3<f32>(x_520.y, x_520.z, x_520.x) * vec3<f32>(x_522.z, x_522.x, x_522.y)) + -(vec3<f32>(x_525.x, x_525.y, x_525.z)));
  let x_529 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec3<f32> = u_xlat15;
  let x_533 : vec4<f32> = u_xlat4;
  let x_535 : vec3<f32> = (vec3<f32>(x_531.x, x_531.x, x_531.x) * vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec3<f32> = u_xlat17;
  let x_540 : vec4<f32> = u_xlat4;
  let x_542 : vec3<f32> = (vec3<f32>(x_538.y, x_538.y, x_538.y) * vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec3<f32> = u_xlat17;
  let x_547 : vec4<f32> = vs_INTERP4;
  let x_550 : vec4<f32> = u_xlat4;
  let x_552 : vec3<f32> = ((vec3<f32>(x_545.x, x_545.x, x_545.x) * vec3<f32>(x_547.x, x_547.y, x_547.z)) + vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : vec3<f32> = u_xlat17;
  let x_557 : vec3<f32> = vs_INTERP9;
  let x_559 : vec4<f32> = u_xlat4;
  u_xlat17 = ((vec3<f32>(x_555.z, x_555.z, x_555.z) * x_557) + vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : vec3<f32> = u_xlat17;
  let x_563 : vec3<f32> = u_xlat17;
  u_xlat15.x = dot(x_562, x_563);
  let x_567 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_567);
  let x_570 : vec3<f32> = u_xlat15;
  let x_572 : vec3<f32> = u_xlat17;
  let x_573 : vec3<f32> = (vec3<f32>(x_570.x, x_570.x, x_570.x) * x_572);
  let x_574 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
  let x_578 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb15.x = (x_578 == 0.0f);
  let x_581 : vec3<f32> = vs_INTERP8;
  let x_585 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat17 = (-(x_581) + x_585);
  let x_587 : vec3<f32> = u_xlat17;
  let x_588 : vec3<f32> = u_xlat17;
  u_xlat43 = dot(x_587, x_588);
  let x_590 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_590);
  let x_592 : f32 = u_xlat43;
  let x_594 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_592, x_592, x_592) * x_594);
  let x_598 : f32 = x_53.unity_MatrixV[0i].z;
  u_xlat5.x = x_598;
  let x_601 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat5.y = x_601;
  let x_604 : f32 = x_53.unity_MatrixV[2i].z;
  u_xlat5.z = x_604;
  let x_607 : bool = u_xlatb15.x;
  if (x_607) {
    let x_611 : vec3<f32> = u_xlat17;
    x_608 = x_611;
  } else {
    let x_613 : vec4<f32> = u_xlat5;
    x_608 = vec3<f32>(x_613.x, x_613.y, x_613.z);
  }
  let x_615 : vec3<f32> = x_608;
  u_xlat17 = x_615;
  let x_617 : f32 = vs_INTERP8.y;
  let x_619 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat15.x = (x_617 * x_619);
  let x_623 : f32 = x_53.unity_MatrixV[0i].z;
  let x_625 : f32 = vs_INTERP8.x;
  let x_628 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_623 * x_625) + x_628);
  let x_632 : f32 = x_53.unity_MatrixV[2i].z;
  let x_634 : f32 = vs_INTERP8.z;
  let x_637 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_632 * x_634) + x_637);
  let x_641 : f32 = u_xlat15.x;
  let x_643 : f32 = x_53.unity_MatrixV[3i].z;
  u_xlat15.x = (x_641 + x_643);
  let x_647 : f32 = u_xlat15.x;
  let x_651 : f32 = x_53.x_ProjectionParams.y;
  u_xlat15.x = (-(x_647) + -(x_651));
  let x_656 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_656, 0.0f);
  let x_660 : f32 = u_xlat15.x;
  let x_662 : f32 = x_53.unity_FogParams.x;
  u_xlat15.x = (x_660 * x_662);
  u_xlat4.w = 1.0f;
  let x_668 : vec4<f32> = x_494.unity_SHAr;
  let x_669 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_668, x_669);
  let x_674 : vec4<f32> = x_494.unity_SHAg;
  let x_675 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_674, x_675);
  let x_680 : vec4<f32> = x_494.unity_SHAb;
  let x_681 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_680, x_681);
  let x_684 : vec4<f32> = u_xlat4;
  let x_686 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_684.y, x_684.z, x_684.z, x_684.x) * vec4<f32>(x_686.x, x_686.y, x_686.z, x_686.z));
  let x_691 : vec4<f32> = x_494.unity_SHBr;
  let x_692 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_691, x_692);
  let x_697 : vec4<f32> = x_494.unity_SHBg;
  let x_698 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_697, x_698);
  let x_703 : vec4<f32> = x_494.unity_SHBb;
  let x_704 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_703, x_704);
  let x_708 : f32 = u_xlat4.y;
  let x_710 : f32 = u_xlat4.y;
  u_xlat43 = (x_708 * x_710);
  let x_713 : f32 = u_xlat4.x;
  let x_715 : f32 = u_xlat4.x;
  let x_717 : f32 = u_xlat43;
  u_xlat43 = ((x_713 * x_715) + -(x_717));
  let x_722 : vec4<f32> = x_494.unity_SHC;
  let x_724 : f32 = u_xlat43;
  let x_727 : vec4<f32> = u_xlat7;
  let x_729 : vec3<f32> = ((vec3<f32>(x_722.x, x_722.y, x_722.z) * vec3<f32>(x_724, x_724, x_724)) + vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : vec4<f32> = u_xlat5;
  let x_734 : vec4<f32> = u_xlat6;
  let x_736 : vec3<f32> = (vec3<f32>(x_732.x, x_732.y, x_732.z) + vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec4<f32> = u_xlat5;
  let x_741 : vec3<f32> = max(vec3<f32>(x_739.x, x_739.y, x_739.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_742 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_745 : f32 = u_xlat3.x;
  u_xlat3.x = x_745;
  let x_748 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_748, 0.0f, 1.0f);
  let x_752 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_752, 1.0f);
  let x_755 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_755 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_760 : f32 = u_xlat3.x;
  u_xlat43 = (-(x_760) + 1.0f);
  let x_763 : f32 = u_xlat43;
  let x_764 : f32 = u_xlat43;
  u_xlat44 = (x_763 * x_764);
  let x_766 : f32 = u_xlat44;
  u_xlat44 = max(x_766, 0.0078125f);
  let x_770 : f32 = u_xlat44;
  let x_771 : f32 = u_xlat44;
  u_xlat46 = (x_770 * x_771);
  let x_774 : f32 = u_xlat3.x;
  u_xlat3.x = (x_774 + 0.04000002145767211914f);
  let x_779 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_779, 1.0f);
  let x_783 : f32 = u_xlat44;
  u_xlat47 = ((x_783 * 4.0f) + 2.0f);
  let x_787 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_787, 1.0f);
  let x_791 : vec3<f32> = vs_INTERP8;
  let x_793 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat20 = (x_791 + -(x_793));
  let x_796 : vec3<f32> = u_xlat20;
  let x_797 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_796, x_797);
  let x_803 : f32 = u_xlat20.x;
  let x_805 : f32 = x_130.x_MainLightShadowParams.z;
  let x_808 : f32 = x_130.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_803 * x_805) + x_808);
  let x_812 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_812, 0.0f, 1.0f);
  let x_816 : f32 = u_xlat42;
  u_xlat48 = (-(x_816) + 1.0f);
  let x_820 : f32 = u_xlat34.x;
  let x_821 : f32 = u_xlat48;
  let x_823 : f32 = u_xlat42;
  u_xlat42 = ((x_820 * x_821) + x_823);
  let x_835 : f32 = x_833.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_835 == -1.0f));
  let x_839 : bool = u_xlatb34.x;
  if (x_839) {
    let x_842 : vec3<f32> = vs_INTERP8;
    let x_845 : vec4<f32> = x_833.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_842.y, x_842.y) * vec2<f32>(x_845.x, x_845.y));
    let x_849 : vec4<f32> = x_833.x_MainLightWorldToLight[0i];
    let x_851 : vec3<f32> = vs_INTERP8;
    let x_854 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_849.x, x_849.y) * vec2<f32>(x_851.x, x_851.x)) + x_854);
    let x_857 : vec4<f32> = x_833.x_MainLightWorldToLight[2i];
    let x_859 : vec3<f32> = vs_INTERP8;
    let x_862 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_857.x, x_857.y) * vec2<f32>(x_859.z, x_859.z)) + x_862);
    let x_864 : vec2<f32> = u_xlat34;
    let x_866 : vec4<f32> = x_833.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_864 + vec2<f32>(x_866.x, x_866.y));
    let x_869 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_869 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_878 : vec2<f32> = u_xlat34;
    let x_880 : f32 = x_53.x_GlobalMipBias.x;
    let x_881 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_878, x_880);
    u_xlat7 = x_881;
    let x_883 : f32 = x_833.x_MainLightCookieTextureFormat;
    let x_885 : f32 = x_833.x_MainLightCookieTextureFormat;
    let x_887 : f32 = x_833.x_MainLightCookieTextureFormat;
    let x_889 : f32 = x_833.x_MainLightCookieTextureFormat;
    let x_890 : vec4<f32> = vec4<f32>(x_883, x_885, x_887, x_889);
    let x_897 : vec4<bool> = (vec4<f32>(x_890.x, x_890.y, x_890.z, x_890.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_897.x, x_897.y);
    let x_900 : bool = u_xlatb34.y;
    if (x_900) {
      let x_905 : f32 = u_xlat7.w;
      x_901 = x_905;
    } else {
      let x_908 : f32 = u_xlat7.x;
      x_901 = x_908;
    }
    let x_909 : f32 = x_901;
    u_xlat48 = x_909;
    let x_911 : bool = u_xlatb34.x;
    if (x_911) {
      let x_915 : vec4<f32> = u_xlat7;
      x_912 = vec3<f32>(x_915.x, x_915.y, x_915.z);
    } else {
      let x_918 : f32 = u_xlat48;
      x_912 = vec3<f32>(x_918, x_918, x_918);
    }
    let x_920 : vec3<f32> = x_912;
    let x_921 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_927 : vec4<f32> = u_xlat7;
  let x_930 : vec4<f32> = x_53.x_MainLightColor;
  let x_932 : vec3<f32> = (vec3<f32>(x_927.x, x_927.y, x_927.z) * vec3<f32>(x_930.x, x_930.y, x_930.z));
  let x_933 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_935 : vec3<f32> = u_xlat17;
  let x_937 : vec4<f32> = u_xlat4;
  u_xlat34.x = dot(-(x_935), vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_942 : f32 = u_xlat34.x;
  let x_944 : f32 = u_xlat34.x;
  u_xlat34.x = (x_942 + x_944);
  let x_948 : vec4<f32> = u_xlat4;
  let x_950 : vec2<f32> = u_xlat34;
  let x_954 : vec3<f32> = u_xlat17;
  let x_956 : vec3<f32> = ((vec3<f32>(x_948.x, x_948.y, x_948.z) * -(vec3<f32>(x_950.x, x_950.x, x_950.x))) + -(x_954));
  let x_957 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : vec4<f32> = u_xlat4;
  let x_961 : vec3<f32> = u_xlat17;
  u_xlat34.x = dot(vec3<f32>(x_959.x, x_959.y, x_959.z), x_961);
  let x_965 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_965, 0.0f, 1.0f);
  let x_969 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_969) + 1.0f);
  let x_974 : f32 = u_xlat34.x;
  let x_976 : f32 = u_xlat34.x;
  u_xlat34.x = (x_974 * x_976);
  let x_980 : f32 = u_xlat34.x;
  let x_982 : f32 = u_xlat34.x;
  u_xlat34.x = (x_980 * x_982);
  let x_985 : f32 = u_xlat43;
  u_xlat48 = ((-(x_985) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_991 : f32 = u_xlat43;
  let x_992 : f32 = u_xlat48;
  u_xlat43 = (x_991 * x_992);
  let x_994 : f32 = u_xlat43;
  u_xlat43 = (x_994 * 6.0f);
  let x_1005 : vec4<f32> = u_xlat8;
  let x_1007 : f32 = u_xlat43;
  let x_1008 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1005.x, x_1005.y, x_1005.z), x_1007);
  u_xlat8 = x_1008;
  let x_1010 : f32 = u_xlat8.w;
  u_xlat43 = (x_1010 + -1.0f);
  let x_1013 : f32 = x_494.unity_SpecCube0_HDR.w;
  let x_1014 : f32 = u_xlat43;
  u_xlat43 = ((x_1013 * x_1014) + 1.0f);
  let x_1017 : f32 = u_xlat43;
  u_xlat43 = max(x_1017, 0.0f);
  let x_1019 : f32 = u_xlat43;
  u_xlat43 = log2(x_1019);
  let x_1021 : f32 = u_xlat43;
  let x_1023 : f32 = x_494.unity_SpecCube0_HDR.y;
  u_xlat43 = (x_1021 * x_1023);
  let x_1025 : f32 = u_xlat43;
  u_xlat43 = exp2(x_1025);
  let x_1027 : f32 = u_xlat43;
  let x_1029 : f32 = x_494.unity_SpecCube0_HDR.x;
  u_xlat43 = (x_1027 * x_1029);
  let x_1031 : vec4<f32> = u_xlat8;
  let x_1033 : f32 = u_xlat43;
  let x_1035 : vec3<f32> = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) * vec3<f32>(x_1033, x_1033, x_1033));
  let x_1036 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1039 : f32 = u_xlat44;
  let x_1041 : f32 = u_xlat44;
  u_xlat9 = ((vec2<f32>(x_1039, x_1039) * vec2<f32>(x_1041, x_1041)) + vec2<f32>(-1.0f, 1.0f));
  let x_1047 : f32 = u_xlat9.y;
  u_xlat43 = (1.0f / x_1047);
  let x_1050 : f32 = u_xlat3.x;
  u_xlat44 = (x_1050 + -0.03999999910593032837f);
  let x_1054 : f32 = u_xlat34.x;
  let x_1055 : f32 = u_xlat44;
  u_xlat44 = ((x_1054 * x_1055) + 0.03999999910593032837f);
  let x_1059 : f32 = u_xlat43;
  let x_1060 : f32 = u_xlat44;
  u_xlat43 = (x_1059 * x_1060);
  let x_1062 : f32 = u_xlat43;
  let x_1064 : vec4<f32> = u_xlat8;
  let x_1066 : vec3<f32> = (vec3<f32>(x_1062, x_1062, x_1062) * vec3<f32>(x_1064.x, x_1064.y, x_1064.z));
  let x_1067 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
  let x_1069 : vec4<f32> = u_xlat5;
  let x_1071 : vec3<f32> = u_xlat2;
  let x_1073 : vec4<f32> = u_xlat8;
  let x_1075 : vec3<f32> = ((vec3<f32>(x_1069.x, x_1069.y, x_1069.z) * x_1071) + vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
  let x_1076 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1078 : f32 = u_xlat42;
  let x_1080 : f32 = x_494.unity_LightData.z;
  u_xlat42 = (x_1078 * x_1080);
  let x_1082 : vec4<f32> = u_xlat4;
  let x_1085 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1082.x, x_1082.y, x_1082.z), vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
  let x_1088 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1088, 0.0f, 1.0f);
  let x_1090 : f32 = u_xlat42;
  let x_1091 : f32 = u_xlat43;
  u_xlat42 = (x_1090 * x_1091);
  let x_1093 : f32 = u_xlat42;
  let x_1095 : vec4<f32> = u_xlat7;
  let x_1097 : vec3<f32> = (vec3<f32>(x_1093, x_1093, x_1093) * vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
  let x_1098 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
  let x_1100 : vec3<f32> = u_xlat17;
  let x_1102 : vec4<f32> = x_53.x_MainLightPosition;
  let x_1104 : vec3<f32> = (x_1100 + vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
  let x_1105 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
  let x_1107 : vec4<f32> = u_xlat8;
  let x_1109 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1107.x, x_1107.y, x_1107.z), vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
  let x_1112 : f32 = u_xlat42;
  u_xlat42 = max(x_1112, 1.17549435e-38f);
  let x_1115 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1115);
  let x_1117 : f32 = u_xlat42;
  let x_1119 : vec4<f32> = u_xlat8;
  let x_1121 : vec3<f32> = (vec3<f32>(x_1117, x_1117, x_1117) * vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
  let x_1122 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
  let x_1124 : vec4<f32> = u_xlat4;
  let x_1126 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1124.x, x_1124.y, x_1124.z), vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
  let x_1129 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1129, 0.0f, 1.0f);
  let x_1132 : vec4<f32> = x_53.x_MainLightPosition;
  let x_1134 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_1132.x, x_1132.y, x_1132.z), vec3<f32>(x_1134.x, x_1134.y, x_1134.z));
  let x_1137 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1137, 0.0f, 1.0f);
  let x_1139 : f32 = u_xlat42;
  let x_1140 : f32 = u_xlat42;
  u_xlat42 = (x_1139 * x_1140);
  let x_1142 : f32 = u_xlat42;
  let x_1144 : f32 = u_xlat9.x;
  u_xlat42 = ((x_1142 * x_1144) + 1.00001001358032226562f);
  let x_1148 : f32 = u_xlat43;
  let x_1149 : f32 = u_xlat43;
  u_xlat43 = (x_1148 * x_1149);
  let x_1151 : f32 = u_xlat42;
  let x_1152 : f32 = u_xlat42;
  u_xlat42 = (x_1151 * x_1152);
  let x_1154 : f32 = u_xlat43;
  u_xlat43 = max(x_1154, 0.10000000149011611938f);
  let x_1157 : f32 = u_xlat42;
  let x_1158 : f32 = u_xlat43;
  u_xlat42 = (x_1157 * x_1158);
  let x_1160 : f32 = u_xlat47;
  let x_1161 : f32 = u_xlat42;
  u_xlat42 = (x_1160 * x_1161);
  let x_1163 : f32 = u_xlat46;
  let x_1164 : f32 = u_xlat42;
  u_xlat42 = (x_1163 / x_1164);
  let x_1166 : f32 = u_xlat42;
  let x_1170 : vec3<f32> = u_xlat2;
  let x_1171 : vec3<f32> = ((vec3<f32>(x_1166, x_1166, x_1166) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1170);
  let x_1172 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1172.w);
  let x_1174 : vec4<f32> = u_xlat7;
  let x_1176 : vec4<f32> = u_xlat8;
  let x_1178 : vec3<f32> = (vec3<f32>(x_1174.x, x_1174.y, x_1174.z) * vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1182 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_1184 : f32 = x_494.unity_LightData.y;
  u_xlat42 = min(x_1182, x_1184);
  let x_1186 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1186));
  let x_1190 : f32 = u_xlat20.x;
  let x_1193 : f32 = x_130.x_AdditionalShadowFadeParams.x;
  let x_1196 : f32 = x_130.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_1190 * x_1193) + x_1196);
  let x_1198 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1198, 0.0f, 1.0f);
  let x_1202 : f32 = x_833.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1204 : f32 = x_833.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1206 : f32 = x_833.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1208 : f32 = x_833.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1209 : vec4<f32> = vec4<f32>(x_1202, x_1204, x_1206, x_1208);
  let x_1216 : vec4<bool> = (vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1209.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb20 = vec2<bool>(x_1216.x, x_1216.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1228 : u32 = u_xlatu_loop_1;
    let x_1229 : u32 = u_xlatu42;
    if ((x_1228 < x_1229)) {
    } else {
      break;
    }
    let x_1232 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1232 >> 2u);
    let x_1235 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1235 & 3u));
    let x_1238 : u32 = u_xlatu3;
    let x_1241 : vec4<f32> = x_494.unity_LightIndices[bitcast<i32>(x_1238)];
    let x_1251 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1256 : vec4<u32> = indexable[x_1251];
    u_xlat3.x = dot(x_1241, bitcast<vec4<f32>>(x_1256));
    let x_1262 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_1262);
    let x_1265 : vec3<f32> = vs_INTERP8;
    let x_1276 : i32 = u_xlati3;
    let x_1278 : vec4<f32> = x_1275.x_AdditionalLightsPosition[x_1276];
    let x_1281 : i32 = u_xlati3;
    let x_1283 : vec4<f32> = x_1275.x_AdditionalLightsPosition[x_1281];
    u_xlat23 = ((-(x_1265) * vec3<f32>(x_1278.w, x_1278.w, x_1278.w)) + vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
    let x_1286 : vec3<f32> = u_xlat23;
    let x_1287 : vec3<f32> = u_xlat23;
    u_xlat48 = dot(x_1286, x_1287);
    let x_1289 : f32 = u_xlat48;
    u_xlat48 = max(x_1289, 0.00006103515625f);
    let x_1293 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1293);
    let x_1296 : f32 = u_xlat49;
    let x_1298 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1296, x_1296, x_1296) * x_1298);
    let x_1301 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1301);
    let x_1303 : f32 = u_xlat48;
    let x_1304 : i32 = u_xlati3;
    let x_1306 : f32 = x_1275.x_AdditionalLightsAttenuation[x_1304].x;
    u_xlat48 = (x_1303 * x_1306);
    let x_1308 : f32 = u_xlat48;
    let x_1310 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1308) * x_1310) + 1.0f);
    let x_1313 : f32 = u_xlat48;
    u_xlat48 = max(x_1313, 0.0f);
    let x_1315 : f32 = u_xlat48;
    let x_1316 : f32 = u_xlat48;
    u_xlat48 = (x_1315 * x_1316);
    let x_1318 : f32 = u_xlat48;
    let x_1319 : f32 = u_xlat50;
    u_xlat48 = (x_1318 * x_1319);
    let x_1321 : i32 = u_xlati3;
    let x_1323 : vec4<f32> = x_1275.x_AdditionalLightsSpotDir[x_1321];
    let x_1325 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1323.x, x_1323.y, x_1323.z), x_1325);
    let x_1327 : f32 = u_xlat50;
    let x_1328 : i32 = u_xlati3;
    let x_1330 : f32 = x_1275.x_AdditionalLightsAttenuation[x_1328].z;
    let x_1332 : i32 = u_xlati3;
    let x_1334 : f32 = x_1275.x_AdditionalLightsAttenuation[x_1332].w;
    u_xlat50 = ((x_1327 * x_1330) + x_1334);
    let x_1336 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1336, 0.0f, 1.0f);
    let x_1338 : f32 = u_xlat50;
    let x_1339 : f32 = u_xlat50;
    u_xlat50 = (x_1338 * x_1339);
    let x_1341 : f32 = u_xlat48;
    let x_1342 : f32 = u_xlat50;
    u_xlat48 = (x_1341 * x_1342);
    let x_1346 : i32 = u_xlati3;
    let x_1348 : f32 = x_130.x_AdditionalShadowParams[x_1346].w;
    u_xlati50 = i32(x_1348);
    let x_1351 : i32 = u_xlati50;
    u_xlatb52 = (x_1351 >= 0i);
    let x_1353 : bool = u_xlatb52;
    if (x_1353) {
      let x_1357 : i32 = u_xlati3;
      let x_1359 : f32 = x_130.x_AdditionalShadowParams[x_1357].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1359, x_1359, x_1359, x_1359))));
      let x_1363 : bool = u_xlatb52;
      if (x_1363) {
        let x_1367 : vec3<f32> = u_xlat10;
        let x_1370 : vec3<f32> = u_xlat10;
        let x_1373 : vec4<bool> = (abs(vec4<f32>(x_1367.z, x_1367.z, x_1367.y, x_1367.z)) >= abs(vec4<f32>(x_1370.x, x_1370.y, x_1370.x, x_1370.x)));
        let x_1374 : vec3<bool> = vec3<bool>(x_1373.x, x_1373.y, x_1373.z);
        let x_1375 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1374.x, x_1374.y, x_1374.z, x_1375.w);
        let x_1378 : bool = u_xlatb11.y;
        let x_1380 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1378 & x_1380);
        let x_1382 : vec3<f32> = u_xlat10;
        let x_1385 : vec4<bool> = (-(vec4<f32>(x_1382.z, x_1382.y, x_1382.z, x_1382.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1386 : vec3<bool> = vec3<bool>(x_1385.x, x_1385.y, x_1385.w);
        let x_1387 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1386.x, x_1386.y, x_1387.z, x_1386.z);
        let x_1391 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1391);
        let x_1396 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1396);
        let x_1401 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1401);
        let x_1405 : bool = u_xlatb11.z;
        if (x_1405) {
          let x_1410 : f32 = u_xlat11.y;
          x_1406 = x_1410;
        } else {
          let x_1412 : f32 = u_xlat53;
          x_1406 = x_1412;
        }
        let x_1413 : f32 = x_1406;
        u_xlat25.x = x_1413;
        let x_1416 : bool = u_xlatb52;
        if (x_1416) {
          let x_1421 : f32 = u_xlat11.x;
          x_1417 = x_1421;
        } else {
          let x_1424 : f32 = u_xlat25.x;
          x_1417 = x_1424;
        }
        let x_1425 : f32 = x_1417;
        u_xlat52 = x_1425;
        let x_1426 : i32 = u_xlati3;
        let x_1428 : f32 = x_130.x_AdditionalShadowParams[x_1426].w;
        u_xlat11.x = trunc(x_1428);
        let x_1431 : f32 = u_xlat52;
        let x_1433 : f32 = u_xlat11.x;
        u_xlat52 = (x_1431 + x_1433);
        let x_1435 : f32 = u_xlat52;
        u_xlati50 = i32(x_1435);
      }
      let x_1437 : i32 = u_xlati50;
      u_xlati50 = (x_1437 << bitcast<u32>(2i));
      let x_1439 : vec3<f32> = vs_INTERP8;
      let x_1442 : i32 = u_xlati50;
      let x_1445 : i32 = u_xlati50;
      let x_1449 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1442 + 1i) / 4i)][((x_1445 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1439.y, x_1439.y, x_1439.y, x_1439.y) * x_1449);
      let x_1451 : i32 = u_xlati50;
      let x_1453 : i32 = u_xlati50;
      let x_1456 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[(x_1451 / 4i)][(x_1453 % 4i)];
      let x_1457 : vec3<f32> = vs_INTERP8;
      let x_1460 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1456 * vec4<f32>(x_1457.x, x_1457.x, x_1457.x, x_1457.x)) + x_1460);
      let x_1462 : i32 = u_xlati50;
      let x_1465 : i32 = u_xlati50;
      let x_1469 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1462 + 2i) / 4i)][((x_1465 + 2i) % 4i)];
      let x_1470 : vec3<f32> = vs_INTERP8;
      let x_1473 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1469 * vec4<f32>(x_1470.z, x_1470.z, x_1470.z, x_1470.z)) + x_1473);
      let x_1475 : vec4<f32> = u_xlat11;
      let x_1476 : i32 = u_xlati50;
      let x_1479 : i32 = u_xlati50;
      let x_1483 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1476 + 3i) / 4i)][((x_1479 + 3i) % 4i)];
      u_xlat11 = (x_1475 + x_1483);
      let x_1485 : vec4<f32> = u_xlat11;
      let x_1487 : vec4<f32> = u_xlat11;
      let x_1489 : vec3<f32> = (vec3<f32>(x_1485.x, x_1485.y, x_1485.z) / vec3<f32>(x_1487.w, x_1487.w, x_1487.w));
      let x_1490 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1489.x, x_1489.y, x_1489.z, x_1490.w);
      let x_1493 : vec4<f32> = u_xlat11;
      let x_1494 : vec2<f32> = vec2<f32>(x_1493.x, x_1493.y);
      let x_1496 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
      let x_1504 : vec3<f32> = txVec1;
      let x_1506 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1504.xy, x_1504.z);
      u_xlat50 = x_1506;
      let x_1507 : i32 = u_xlati3;
      let x_1509 : f32 = x_130.x_AdditionalShadowParams[x_1507].x;
      u_xlat52 = (1.0f + -(x_1509));
      let x_1512 : f32 = u_xlat50;
      let x_1513 : i32 = u_xlati3;
      let x_1515 : f32 = x_130.x_AdditionalShadowParams[x_1513].x;
      let x_1517 : f32 = u_xlat52;
      u_xlat50 = ((x_1512 * x_1515) + x_1517);
      let x_1520 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1520);
      let x_1523 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1523 >= 1.0f);
      let x_1526 : bool = u_xlatb52;
      let x_1528 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1526 | x_1528);
      let x_1530 : bool = u_xlatb52;
      let x_1531 : f32 = u_xlat50;
      u_xlat50 = select(x_1531, 1.0f, x_1530);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1534 : f32 = u_xlat50;
    u_xlat52 = (-(x_1534) + 1.0f);
    let x_1537 : f32 = u_xlat43;
    let x_1538 : f32 = u_xlat52;
    let x_1540 : f32 = u_xlat50;
    u_xlat50 = ((x_1537 * x_1538) + x_1540);
    let x_1543 : i32 = u_xlati3;
    u_xlati52 = (1i << bitcast<u32>((x_1543 & 31i)));
    let x_1547 : i32 = u_xlati52;
    let x_1550 : f32 = x_833.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1547) & bitcast<u32>(x_1550)));
    let x_1554 : i32 = u_xlati52;
    if ((x_1554 != 0i)) {
      let x_1558 : i32 = u_xlati3;
      let x_1560 : f32 = x_833.x_AdditionalLightsLightTypes[x_1558].el;
      u_xlati52 = i32(x_1560);
      let x_1563 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1563 != 0i));
      let x_1567 : i32 = u_xlati3;
      u_xlati25 = (x_1567 << bitcast<u32>(2i));
      let x_1569 : i32 = u_xlati11;
      if ((x_1569 != 0i)) {
        let x_1573 : vec3<f32> = vs_INTERP8;
        let x_1575 : i32 = u_xlati25;
        let x_1578 : i32 = u_xlati25;
        let x_1582 : vec4<f32> = x_833.x_AdditionalLightsWorldToLights[((x_1575 + 1i) / 4i)][((x_1578 + 1i) % 4i)];
        let x_1584 : vec3<f32> = (vec3<f32>(x_1573.y, x_1573.y, x_1573.y) * vec3<f32>(x_1582.x, x_1582.y, x_1582.w));
        let x_1585 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1584.x, x_1585.y, x_1584.y, x_1584.z);
        let x_1587 : i32 = u_xlati25;
        let x_1589 : i32 = u_xlati25;
        let x_1592 : vec4<f32> = x_833.x_AdditionalLightsWorldToLights[(x_1587 / 4i)][(x_1589 % 4i)];
        let x_1594 : vec3<f32> = vs_INTERP8;
        let x_1597 : vec4<f32> = u_xlat11;
        let x_1599 : vec3<f32> = ((vec3<f32>(x_1592.x, x_1592.y, x_1592.w) * vec3<f32>(x_1594.x, x_1594.x, x_1594.x)) + vec3<f32>(x_1597.x, x_1597.z, x_1597.w));
        let x_1600 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1599.x, x_1600.y, x_1599.y, x_1599.z);
        let x_1602 : i32 = u_xlati25;
        let x_1605 : i32 = u_xlati25;
        let x_1609 : vec4<f32> = x_833.x_AdditionalLightsWorldToLights[((x_1602 + 2i) / 4i)][((x_1605 + 2i) % 4i)];
        let x_1611 : vec3<f32> = vs_INTERP8;
        let x_1614 : vec4<f32> = u_xlat11;
        let x_1616 : vec3<f32> = ((vec3<f32>(x_1609.x, x_1609.y, x_1609.w) * vec3<f32>(x_1611.z, x_1611.z, x_1611.z)) + vec3<f32>(x_1614.x, x_1614.z, x_1614.w));
        let x_1617 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1616.x, x_1617.y, x_1616.y, x_1616.z);
        let x_1619 : vec4<f32> = u_xlat11;
        let x_1621 : i32 = u_xlati25;
        let x_1624 : i32 = u_xlati25;
        let x_1628 : vec4<f32> = x_833.x_AdditionalLightsWorldToLights[((x_1621 + 3i) / 4i)][((x_1624 + 3i) % 4i)];
        let x_1630 : vec3<f32> = (vec3<f32>(x_1619.x, x_1619.z, x_1619.w) + vec3<f32>(x_1628.x, x_1628.y, x_1628.w));
        let x_1631 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1630.x, x_1631.y, x_1630.y, x_1630.z);
        let x_1633 : vec4<f32> = u_xlat11;
        let x_1635 : vec4<f32> = u_xlat11;
        let x_1637 : vec2<f32> = (vec2<f32>(x_1633.x, x_1633.z) / vec2<f32>(x_1635.w, x_1635.w));
        let x_1638 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1637.x, x_1638.y, x_1637.y, x_1638.w);
        let x_1640 : vec4<f32> = u_xlat11;
        let x_1643 : vec2<f32> = ((vec2<f32>(x_1640.x, x_1640.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1644 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1643.x, x_1644.y, x_1643.y, x_1644.w);
        let x_1646 : vec4<f32> = u_xlat11;
        let x_1650 : vec2<f32> = clamp(vec2<f32>(x_1646.x, x_1646.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1651 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1650.x, x_1651.y, x_1650.y, x_1651.w);
        let x_1653 : i32 = u_xlati3;
        let x_1655 : vec4<f32> = x_833.x_AdditionalLightsCookieAtlasUVRects[x_1653];
        let x_1657 : vec4<f32> = u_xlat11;
        let x_1660 : i32 = u_xlati3;
        let x_1662 : vec4<f32> = x_833.x_AdditionalLightsCookieAtlasUVRects[x_1660];
        let x_1664 : vec2<f32> = ((vec2<f32>(x_1655.x, x_1655.y) * vec2<f32>(x_1657.x, x_1657.z)) + vec2<f32>(x_1662.z, x_1662.w));
        let x_1665 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1664.x, x_1665.y, x_1664.y, x_1665.w);
      } else {
        let x_1668 : i32 = u_xlati52;
        u_xlatb52 = (x_1668 == 1i);
        let x_1670 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1670);
        let x_1672 : i32 = u_xlati52;
        if ((x_1672 != 0i)) {
          let x_1677 : vec3<f32> = vs_INTERP8;
          let x_1679 : i32 = u_xlati25;
          let x_1682 : i32 = u_xlati25;
          let x_1686 : vec4<f32> = x_833.x_AdditionalLightsWorldToLights[((x_1679 + 1i) / 4i)][((x_1682 + 1i) % 4i)];
          let x_1688 : vec2<f32> = (vec2<f32>(x_1677.y, x_1677.y) * vec2<f32>(x_1686.x, x_1686.y));
          let x_1689 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1688.x, x_1688.y, x_1689.z, x_1689.w);
          let x_1691 : i32 = u_xlati25;
          let x_1693 : i32 = u_xlati25;
          let x_1696 : vec4<f32> = x_833.x_AdditionalLightsWorldToLights[(x_1691 / 4i)][(x_1693 % 4i)];
          let x_1698 : vec3<f32> = vs_INTERP8;
          let x_1701 : vec4<f32> = u_xlat12;
          let x_1703 : vec2<f32> = ((vec2<f32>(x_1696.x, x_1696.y) * vec2<f32>(x_1698.x, x_1698.x)) + vec2<f32>(x_1701.x, x_1701.y));
          let x_1704 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1703.x, x_1703.y, x_1704.z, x_1704.w);
          let x_1706 : i32 = u_xlati25;
          let x_1709 : i32 = u_xlati25;
          let x_1713 : vec4<f32> = x_833.x_AdditionalLightsWorldToLights[((x_1706 + 2i) / 4i)][((x_1709 + 2i) % 4i)];
          let x_1715 : vec3<f32> = vs_INTERP8;
          let x_1718 : vec4<f32> = u_xlat12;
          let x_1720 : vec2<f32> = ((vec2<f32>(x_1713.x, x_1713.y) * vec2<f32>(x_1715.z, x_1715.z)) + vec2<f32>(x_1718.x, x_1718.y));
          let x_1721 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1720.x, x_1720.y, x_1721.z, x_1721.w);
          let x_1723 : vec4<f32> = u_xlat12;
          let x_1725 : i32 = u_xlati25;
          let x_1728 : i32 = u_xlati25;
          let x_1732 : vec4<f32> = x_833.x_AdditionalLightsWorldToLights[((x_1725 + 3i) / 4i)][((x_1728 + 3i) % 4i)];
          let x_1734 : vec2<f32> = (vec2<f32>(x_1723.x, x_1723.y) + vec2<f32>(x_1732.x, x_1732.y));
          let x_1735 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1734.x, x_1734.y, x_1735.z, x_1735.w);
          let x_1737 : vec4<f32> = u_xlat12;
          let x_1740 : vec2<f32> = ((vec2<f32>(x_1737.x, x_1737.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1741 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1740.x, x_1740.y, x_1741.z, x_1741.w);
          let x_1743 : vec4<f32> = u_xlat12;
          let x_1745 : vec2<f32> = fract(vec2<f32>(x_1743.x, x_1743.y));
          let x_1746 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1745.x, x_1745.y, x_1746.z, x_1746.w);
          let x_1748 : i32 = u_xlati3;
          let x_1750 : vec4<f32> = x_833.x_AdditionalLightsCookieAtlasUVRects[x_1748];
          let x_1752 : vec4<f32> = u_xlat12;
          let x_1755 : i32 = u_xlati3;
          let x_1757 : vec4<f32> = x_833.x_AdditionalLightsCookieAtlasUVRects[x_1755];
          let x_1759 : vec2<f32> = ((vec2<f32>(x_1750.x, x_1750.y) * vec2<f32>(x_1752.x, x_1752.y)) + vec2<f32>(x_1757.z, x_1757.w));
          let x_1760 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1759.x, x_1760.y, x_1759.y, x_1760.w);
        } else {
          let x_1763 : vec3<f32> = vs_INTERP8;
          let x_1765 : i32 = u_xlati25;
          let x_1768 : i32 = u_xlati25;
          let x_1772 : vec4<f32> = x_833.x_AdditionalLightsWorldToLights[((x_1765 + 1i) / 4i)][((x_1768 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1763.y, x_1763.y, x_1763.y, x_1763.y) * x_1772);
          let x_1774 : i32 = u_xlati25;
          let x_1776 : i32 = u_xlati25;
          let x_1779 : vec4<f32> = x_833.x_AdditionalLightsWorldToLights[(x_1774 / 4i)][(x_1776 % 4i)];
          let x_1780 : vec3<f32> = vs_INTERP8;
          let x_1783 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1779 * vec4<f32>(x_1780.x, x_1780.x, x_1780.x, x_1780.x)) + x_1783);
          let x_1785 : i32 = u_xlati25;
          let x_1788 : i32 = u_xlati25;
          let x_1792 : vec4<f32> = x_833.x_AdditionalLightsWorldToLights[((x_1785 + 2i) / 4i)][((x_1788 + 2i) % 4i)];
          let x_1793 : vec3<f32> = vs_INTERP8;
          let x_1796 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1792 * vec4<f32>(x_1793.z, x_1793.z, x_1793.z, x_1793.z)) + x_1796);
          let x_1798 : vec4<f32> = u_xlat12;
          let x_1799 : i32 = u_xlati25;
          let x_1802 : i32 = u_xlati25;
          let x_1806 : vec4<f32> = x_833.x_AdditionalLightsWorldToLights[((x_1799 + 3i) / 4i)][((x_1802 + 3i) % 4i)];
          u_xlat12 = (x_1798 + x_1806);
          let x_1808 : vec4<f32> = u_xlat12;
          let x_1810 : vec4<f32> = u_xlat12;
          let x_1812 : vec3<f32> = (vec3<f32>(x_1808.x, x_1808.y, x_1808.z) / vec3<f32>(x_1810.w, x_1810.w, x_1810.w));
          let x_1813 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1812.x, x_1812.y, x_1812.z, x_1813.w);
          let x_1815 : vec4<f32> = u_xlat12;
          let x_1817 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1815.x, x_1815.y, x_1815.z), vec3<f32>(x_1817.x, x_1817.y, x_1817.z));
          let x_1820 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1820);
          let x_1822 : f32 = u_xlat52;
          let x_1824 : vec4<f32> = u_xlat12;
          let x_1826 : vec3<f32> = (vec3<f32>(x_1822, x_1822, x_1822) * vec3<f32>(x_1824.x, x_1824.y, x_1824.z));
          let x_1827 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1827.w);
          let x_1829 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1829.x, x_1829.y, x_1829.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1834 : f32 = u_xlat52;
          u_xlat52 = max(x_1834, 0.00000099999999747524f);
          let x_1837 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1837);
          let x_1840 : f32 = u_xlat52;
          let x_1842 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1840, x_1840, x_1840) * vec3<f32>(x_1842.z, x_1842.x, x_1842.y));
          let x_1846 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1846);
          let x_1850 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1850, 0.0f, 1.0f);
          let x_1854 : vec3<f32> = u_xlat13;
          let x_1856 : vec4<bool> = (vec4<f32>(x_1854.y, x_1854.y, x_1854.z, x_1854.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1857 : vec2<bool> = vec2<bool>(x_1856.x, x_1856.z);
          let x_1858 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1857.x, x_1858.y, x_1857.y);
          let x_1861 : bool = u_xlatb25.x;
          if (x_1861) {
            let x_1866 : f32 = u_xlat13.x;
            x_1862 = x_1866;
          } else {
            let x_1869 : f32 = u_xlat13.x;
            x_1862 = -(x_1869);
          }
          let x_1871 : f32 = x_1862;
          u_xlat25.x = x_1871;
          let x_1874 : bool = u_xlatb25.z;
          if (x_1874) {
            let x_1879 : f32 = u_xlat13.x;
            x_1875 = x_1879;
          } else {
            let x_1882 : f32 = u_xlat13.x;
            x_1875 = -(x_1882);
          }
          let x_1884 : f32 = x_1875;
          u_xlat25.z = x_1884;
          let x_1886 : vec4<f32> = u_xlat12;
          let x_1888 : f32 = u_xlat52;
          let x_1891 : vec3<f32> = u_xlat25;
          let x_1893 : vec2<f32> = ((vec2<f32>(x_1886.x, x_1886.y) * vec2<f32>(x_1888, x_1888)) + vec2<f32>(x_1891.x, x_1891.z));
          let x_1894 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1893.x, x_1894.y, x_1893.y);
          let x_1896 : vec3<f32> = u_xlat25;
          let x_1899 : vec2<f32> = ((vec2<f32>(x_1896.x, x_1896.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1900 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1899.x, x_1900.y, x_1899.y);
          let x_1902 : vec3<f32> = u_xlat25;
          let x_1906 : vec2<f32> = clamp(vec2<f32>(x_1902.x, x_1902.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1907 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1906.x, x_1907.y, x_1906.y);
          let x_1909 : i32 = u_xlati3;
          let x_1911 : vec4<f32> = x_833.x_AdditionalLightsCookieAtlasUVRects[x_1909];
          let x_1913 : vec3<f32> = u_xlat25;
          let x_1916 : i32 = u_xlati3;
          let x_1918 : vec4<f32> = x_833.x_AdditionalLightsCookieAtlasUVRects[x_1916];
          let x_1920 : vec2<f32> = ((vec2<f32>(x_1911.x, x_1911.y) * vec2<f32>(x_1913.x, x_1913.z)) + vec2<f32>(x_1918.z, x_1918.w));
          let x_1921 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1920.x, x_1921.y, x_1920.y, x_1921.w);
        }
      }
      let x_1928 : vec4<f32> = u_xlat11;
      let x_1930 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1928.x, x_1928.z), 0.0f);
      u_xlat11 = x_1930;
      let x_1932 : bool = u_xlatb20.y;
      if (x_1932) {
        let x_1937 : f32 = u_xlat11.w;
        x_1933 = x_1937;
      } else {
        let x_1940 : f32 = u_xlat11.x;
        x_1933 = x_1940;
      }
      let x_1941 : f32 = x_1933;
      u_xlat52 = x_1941;
      let x_1943 : bool = u_xlatb20.x;
      if (x_1943) {
        let x_1947 : vec4<f32> = u_xlat11;
        x_1944 = vec3<f32>(x_1947.x, x_1947.y, x_1947.z);
      } else {
        let x_1950 : f32 = u_xlat52;
        x_1944 = vec3<f32>(x_1950, x_1950, x_1950);
      }
      let x_1952 : vec3<f32> = x_1944;
      let x_1953 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1953.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1959 : vec4<f32> = u_xlat11;
    let x_1961 : i32 = u_xlati3;
    let x_1963 : vec4<f32> = x_1275.x_AdditionalLightsColor[x_1961];
    let x_1965 : vec3<f32> = (vec3<f32>(x_1959.x, x_1959.y, x_1959.z) * vec3<f32>(x_1963.x, x_1963.y, x_1963.z));
    let x_1966 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1965.x, x_1965.y, x_1965.z, x_1966.w);
    let x_1968 : f32 = u_xlat48;
    let x_1969 : f32 = u_xlat50;
    u_xlat3.x = (x_1968 * x_1969);
    let x_1972 : vec4<f32> = u_xlat4;
    let x_1974 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1972.x, x_1972.y, x_1972.z), x_1974);
    let x_1976 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1976, 0.0f, 1.0f);
    let x_1979 : f32 = u_xlat3.x;
    let x_1980 : f32 = u_xlat48;
    u_xlat3.x = (x_1979 * x_1980);
    let x_1983 : vec4<f32> = u_xlat3;
    let x_1985 : vec4<f32> = u_xlat11;
    let x_1987 : vec3<f32> = (vec3<f32>(x_1983.x, x_1983.x, x_1983.x) * vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
    let x_1988 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1987.x, x_1987.y, x_1987.z, x_1988.w);
    let x_1990 : vec3<f32> = u_xlat23;
    let x_1991 : f32 = u_xlat49;
    let x_1994 : vec3<f32> = u_xlat17;
    u_xlat23 = ((x_1990 * vec3<f32>(x_1991, x_1991, x_1991)) + x_1994);
    let x_1996 : vec3<f32> = u_xlat23;
    let x_1997 : vec3<f32> = u_xlat23;
    u_xlat3.x = dot(x_1996, x_1997);
    let x_2001 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_2001, 1.17549435e-38f);
    let x_2005 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_2005);
    let x_2008 : vec4<f32> = u_xlat3;
    let x_2010 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_2008.x, x_2008.x, x_2008.x) * x_2010);
    let x_2012 : vec4<f32> = u_xlat4;
    let x_2014 : vec3<f32> = u_xlat23;
    u_xlat3.x = dot(vec3<f32>(x_2012.x, x_2012.y, x_2012.z), x_2014);
    let x_2018 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2018, 0.0f, 1.0f);
    let x_2021 : vec3<f32> = u_xlat10;
    let x_2022 : vec3<f32> = u_xlat23;
    u_xlat48 = dot(x_2021, x_2022);
    let x_2024 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2024, 0.0f, 1.0f);
    let x_2027 : f32 = u_xlat3.x;
    let x_2029 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2027 * x_2029);
    let x_2033 : f32 = u_xlat3.x;
    let x_2035 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_2033 * x_2035) + 1.00001001358032226562f);
    let x_2039 : f32 = u_xlat48;
    let x_2040 : f32 = u_xlat48;
    u_xlat48 = (x_2039 * x_2040);
    let x_2043 : f32 = u_xlat3.x;
    let x_2045 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2043 * x_2045);
    let x_2048 : f32 = u_xlat48;
    u_xlat48 = max(x_2048, 0.10000000149011611938f);
    let x_2051 : f32 = u_xlat3.x;
    let x_2052 : f32 = u_xlat48;
    u_xlat3.x = (x_2051 * x_2052);
    let x_2055 : f32 = u_xlat47;
    let x_2057 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2055 * x_2057);
    let x_2060 : f32 = u_xlat46;
    let x_2062 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2060 / x_2062);
    let x_2065 : vec4<f32> = u_xlat3;
    let x_2068 : vec3<f32> = u_xlat2;
    u_xlat23 = ((vec3<f32>(x_2065.x, x_2065.x, x_2065.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_2068);
    let x_2070 : vec3<f32> = u_xlat23;
    let x_2071 : vec4<f32> = u_xlat11;
    let x_2074 : vec4<f32> = u_xlat8;
    let x_2076 : vec3<f32> = ((x_2070 * vec3<f32>(x_2071.x, x_2071.y, x_2071.z)) + vec3<f32>(x_2074.x, x_2074.y, x_2074.z));
    let x_2077 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2076.x, x_2076.y, x_2076.z, x_2077.w);

    continuing {
      let x_2079 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2079 + bitcast<u32>(1i));
    }
  }
  let x_2081 : vec4<f32> = u_xlat5;
  let x_2083 : vec4<f32> = u_xlat6;
  let x_2086 : vec4<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_2081.x, x_2081.y, x_2081.z) * vec3<f32>(x_2083.x, x_2083.x, x_2083.x)) + vec3<f32>(x_2086.x, x_2086.y, x_2086.z));
  let x_2089 : vec4<f32> = u_xlat8;
  let x_2091 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_2089.x, x_2089.y, x_2089.z) + x_2091);
  let x_2093 : vec4<f32> = vs_INTERP6;
  let x_2095 : vec3<f32> = u_xlat0;
  let x_2097 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_2093.w, x_2093.w, x_2093.w) * x_2095) + x_2097);
  let x_2100 : f32 = u_xlat15.x;
  let x_2102 : f32 = u_xlat15.x;
  u_xlat42 = (x_2100 * -(x_2102));
  let x_2105 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2105);
  let x_2107 : vec3<f32> = u_xlat0;
  let x_2110 : vec4<f32> = x_53.unity_FogColor;
  u_xlat0 = (x_2107 + -(vec3<f32>(x_2110.x, x_2110.y, x_2110.z)));
  let x_2116 : f32 = u_xlat42;
  let x_2118 : vec3<f32> = u_xlat0;
  let x_2121 : vec4<f32> = x_53.unity_FogColor;
  let x_2123 : vec3<f32> = ((vec3<f32>(x_2116, x_2116, x_2116) * x_2118) + vec3<f32>(x_2121.x, x_2121.y, x_2121.z));
  let x_2124 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2123.x, x_2123.y, x_2123.z, x_2124.w);
  let x_2126 : bool = u_xlatb29;
  if (x_2126) {
    let x_2131 : f32 = u_xlat1.x;
    x_2127 = x_2131;
  } else {
    x_2127 = 1.0f;
  }
  let x_2133 : f32 = x_2127;
  SV_Target0.w = x_2133;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP9_param : vec3<f32>, @location(1) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP6_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


