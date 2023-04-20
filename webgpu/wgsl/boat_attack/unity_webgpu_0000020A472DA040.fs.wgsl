diagnostic(off, derivative_uniformity);

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

var<private> u_xlat0 : f32;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb14 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_42 : UnityPerDraw;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_121 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_131 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_225 : LightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat43 : f32;

var<private> u_xlatb2 : bool;

var<private> u_xlatb16 : bool;

var<private> u_xlatb0 : bool;

var<private> u_xlat16 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat47 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb20 : bool;

var<private> u_xlatb34 : vec2<bool>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat48 : f32;

@group(1) @binding(4) var<uniform> x_711 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlatu43 : u32;

var<private> u_xlatb5 : vec3<bool>;

var<private> u_xlatu8 : u32;

var<private> u_xlati22 : i32;

var<private> u_xlati8 : i32;

var<private> u_xlat22 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1162 : AdditionalLights;

var<private> u_xlat23 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb52 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> u_xlat50 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlatu49 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_344 : f32;
  var x_390 : f32;
  var x_473 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var x_780 : f32;
  var x_791 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1296 : f32;
  var x_1307 : f32;
  var txVec2 : vec3<f32>;
  var x_1752 : f32;
  var x_1765 : f32;
  var x_1823 : f32;
  var x_1834 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_INTERP9;
  let x_13 : vec3<f32> = vs_INTERP9;
  u_xlat0 = dot(x_12, x_13);
  let x_15 : f32 = u_xlat0;
  u_xlat0 = sqrt(x_15);
  let x_18 : f32 = u_xlat0;
  u_xlat0 = (1.0f / x_18);
  let x_32 : f32 = vs_INTERP4.w;
  u_xlatb14.x = (0.0f < x_32);
  let x_47 : f32 = x_42.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_47 >= 0.0f);
  let x_54 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_54);
  let x_59 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_59);
  let x_63 : f32 = u_xlat14.y;
  let x_65 : f32 = u_xlat14.x;
  u_xlat14.x = (x_63 * x_65);
  let x_69 : vec4<f32> = vs_INTERP4;
  let x_71 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_69.y, x_69.z, x_69.x) * vec3<f32>(x_71.z, x_71.x, x_71.y));
  let x_74 : vec3<f32> = vs_INTERP9;
  let x_76 : vec4<f32> = vs_INTERP4;
  let x_79 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_74.y, x_74.z, x_74.x) * vec3<f32>(x_76.z, x_76.x, x_76.y)) + -(x_79));
  let x_82 : vec3<f32> = u_xlat14;
  let x_84 : vec3<f32> = u_xlat1;
  u_xlat14 = (vec3<f32>(x_82.x, x_82.x, x_82.x) * x_84);
  let x_86 : f32 = u_xlat0;
  let x_88 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_86, x_86, x_86) * x_88);
  let x_92 : f32 = u_xlat0;
  let x_94 : vec4<f32> = vs_INTERP4;
  let x_96 : vec3<f32> = (vec3<f32>(x_92, x_92, x_92) * vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_100 : vec3<f32> = u_xlat14;
  let x_101 : f32 = u_xlat0;
  u_xlat3 = (x_100 * vec3<f32>(x_101, x_101, x_101));
  let x_117 : vec4<f32> = vs_INTERP5;
  let x_124 : f32 = x_121.x_GlobalMipBias.x;
  let x_125 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_117.x, x_117.y), x_124);
  u_xlat4 = x_125;
  let x_127 : vec4<f32> = u_xlat4;
  let x_135 : vec4<f32> = x_131.Color_C30C7CA3;
  u_xlat5 = (vec3<f32>(x_127.x, x_127.y, x_127.z) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_144 : vec4<f32> = vs_INTERP5;
  let x_147 : f32 = x_121.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_144.x, x_144.y), x_147);
  u_xlat6 = vec4<f32>(x_148.w, x_148.x, x_148.y, x_148.z);
  let x_151 : vec4<f32> = u_xlat6;
  u_xlat7 = ((vec4<f32>(x_151.y, x_151.z, x_151.w, x_151.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_158 : vec4<f32> = u_xlat7;
  let x_159 : vec4<f32> = u_xlat7;
  u_xlat0 = dot(x_158, x_159);
  let x_161 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_161);
  let x_164 : f32 = u_xlat0;
  let x_166 : vec4<f32> = u_xlat7;
  u_xlat20 = (vec3<f32>(x_164, x_164, x_164) * vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_171 : f32 = vs_INTERP6.y;
  u_xlat0 = (x_171 * 200.0f);
  let x_174 : f32 = u_xlat0;
  u_xlat0 = min(x_174, 1.0f);
  let x_176 : f32 = u_xlat0;
  let x_178 : vec4<f32> = u_xlat4;
  let x_180 : vec3<f32> = (vec3<f32>(x_176, x_176, x_176) * vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_183 : vec3<f32> = u_xlat3;
  let x_184 : vec3<f32> = u_xlat20;
  u_xlat3 = (x_183 * vec3<f32>(x_184.y, x_184.y, x_184.y));
  let x_187 : vec3<f32> = u_xlat20;
  let x_189 : vec4<f32> = u_xlat2;
  let x_192 : vec3<f32> = u_xlat3;
  let x_193 : vec3<f32> = ((vec3<f32>(x_187.x, x_187.x, x_187.x) * vec3<f32>(x_189.x, x_189.y, x_189.z)) + x_192);
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec3<f32> = u_xlat20;
  let x_198 : vec3<f32> = u_xlat1;
  let x_200 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_196.z, x_196.z, x_196.z) * x_198) + vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec3<f32> = u_xlat1;
  let x_204 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_203, x_204);
  let x_206 : f32 = u_xlat0;
  u_xlat0 = max(x_206, 1.17549435e-38f);
  let x_209 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_209);
  let x_211 : f32 = u_xlat0;
  let x_213 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_211, x_211, x_211) * x_213);
  let x_216 : vec3<f32> = vs_INTERP8;
  let x_227 : vec4<f32> = x_225.x_MainLightWorldToShadow[0i][1i];
  let x_229 : vec3<f32> = (vec3<f32>(x_216.y, x_216.y, x_216.y) * vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : vec4<f32> = x_225.x_MainLightWorldToShadow[0i][0i];
  let x_235 : vec3<f32> = vs_INTERP8;
  let x_238 : vec4<f32> = u_xlat2;
  let x_240 : vec3<f32> = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.x, x_235.x, x_235.x)) + vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_245 : vec4<f32> = x_225.x_MainLightWorldToShadow[0i][2i];
  let x_247 : vec3<f32> = vs_INTERP8;
  let x_250 : vec4<f32> = u_xlat2;
  let x_252 : vec3<f32> = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.z, x_247.z, x_247.z)) + vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat2;
  let x_258 : vec4<f32> = x_225.x_MainLightWorldToShadow[0i][3i];
  let x_260 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) + vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_265 : vec4<f32> = u_xlat2;
  let x_266 : vec2<f32> = vec2<f32>(x_265.x, x_265.y);
  let x_268 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_266.x, x_266.y, x_268);
  let x_280 : vec3<f32> = txVec0;
  let x_282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_280.xy, x_280.z);
  u_xlat0 = x_282;
  let x_286 : f32 = x_225.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_286) + 1.0f);
  let x_289 : f32 = u_xlat0;
  let x_291 : f32 = x_225.x_MainLightShadowParams.x;
  let x_293 : f32 = u_xlat43;
  u_xlat0 = ((x_289 * x_291) + x_293);
  let x_297 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_297);
  let x_301 : f32 = u_xlat2.z;
  u_xlatb16 = (x_301 >= 1.0f);
  let x_303 : bool = u_xlatb16;
  let x_304 : bool = u_xlatb2;
  u_xlatb2 = (x_303 | x_304);
  let x_306 : bool = u_xlatb2;
  let x_307 : f32 = u_xlat0;
  u_xlat0 = select(x_307, 1.0f, x_306);
  let x_309 : vec3<f32> = u_xlat1;
  let x_311 : vec4<f32> = x_121.x_MainLightPosition;
  u_xlat1.x = dot(x_309, -(vec3<f32>(x_311.x, x_311.y, x_311.z)));
  let x_317 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_317, 0.0f, 1.0f);
  let x_320 : f32 = u_xlat0;
  let x_323 : vec4<f32> = x_121.x_MainLightColor;
  let x_325 : vec3<f32> = (vec3<f32>(x_320, x_320, x_320) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec3<f32> = u_xlat1;
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_328.x, x_328.x, x_328.x) * vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec3<f32> = u_xlat1;
  let x_334 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_333 * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_339 : f32 = u_xlat4.w;
  u_xlatb0 = (x_339 >= 0.40000000596046447754f);
  let x_342 : bool = u_xlatb0;
  if (x_342) {
    let x_348 : f32 = u_xlat4.w;
    x_344 = x_348;
  } else {
    x_344 = 0.0f;
  }
  let x_350 : f32 = x_344;
  u_xlat0 = x_350;
  let x_352 : f32 = u_xlat4.w;
  u_xlat2.x = (x_352 + -0.40000000596046447754f);
  let x_358 : f32 = u_xlat4.w;
  u_xlat16 = dpdxCoarse(x_358);
  let x_362 : f32 = u_xlat4.w;
  u_xlat30 = dpdyCoarse(x_362);
  let x_364 : f32 = u_xlat30;
  let x_366 : f32 = u_xlat16;
  u_xlat16 = (abs(x_364) + abs(x_366));
  let x_369 : f32 = u_xlat16;
  u_xlat16 = max(x_369, 0.00009999999747378752f);
  let x_373 : f32 = u_xlat2.x;
  let x_374 : f32 = u_xlat16;
  u_xlat2.x = (x_373 / x_374);
  let x_378 : f32 = u_xlat2.x;
  u_xlat2.x = (x_378 + 0.5f);
  let x_383 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_383, 0.0f, 1.0f);
  let x_387 : f32 = x_121.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_387 == 0.0f));
  let x_389 : bool = u_xlatb16;
  if (x_389) {
    let x_394 : f32 = u_xlat2.x;
    x_390 = x_394;
  } else {
    let x_396 : f32 = u_xlat0;
    x_390 = x_396;
  }
  let x_397 : f32 = x_390;
  u_xlat0 = x_397;
  let x_398 : f32 = u_xlat0;
  u_xlat2.x = (x_398 + -0.00009999999747378752f);
  let x_403 : f32 = u_xlat2.x;
  u_xlatb2 = (x_403 < 0.0f);
  let x_405 : bool = u_xlatb2;
  if (((select(0i, 1i, x_405) * -1i) != 0i)) {
    discard;
  }
  let x_413 : vec3<f32> = u_xlat14;
  let x_414 : vec3<f32> = u_xlat20;
  u_xlat14 = (x_413 * vec3<f32>(x_414.y, x_414.y, x_414.y));
  let x_417 : vec3<f32> = u_xlat20;
  let x_419 : vec4<f32> = vs_INTERP4;
  let x_422 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_417.x, x_417.x, x_417.x) * vec3<f32>(x_419.x, x_419.y, x_419.z)) + x_422);
  let x_424 : vec3<f32> = u_xlat20;
  let x_426 : vec3<f32> = vs_INTERP9;
  let x_428 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_424.z, x_424.z, x_424.z) * x_426) + x_428);
  let x_430 : vec3<f32> = u_xlat14;
  let x_431 : vec3<f32> = u_xlat14;
  u_xlat2.x = dot(x_430, x_431);
  let x_435 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_435);
  let x_438 : vec3<f32> = u_xlat14;
  let x_439 : vec4<f32> = u_xlat2;
  u_xlat14 = (x_438 * vec3<f32>(x_439.x, x_439.x, x_439.x));
  let x_444 : f32 = x_121.unity_OrthoParams.w;
  u_xlatb2 = (x_444 == 0.0f);
  let x_446 : vec3<f32> = vs_INTERP8;
  let x_451 : vec3<f32> = x_121.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_446) + x_451);
  let x_453 : vec3<f32> = u_xlat3;
  let x_454 : vec3<f32> = u_xlat3;
  u_xlat30 = dot(x_453, x_454);
  let x_456 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_456);
  let x_458 : f32 = u_xlat30;
  let x_460 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_458, x_458, x_458) * x_460);
  let x_464 : f32 = x_121.unity_MatrixV[0i].z;
  u_xlat4.x = x_464;
  let x_467 : f32 = x_121.unity_MatrixV[1i].z;
  u_xlat4.y = x_467;
  let x_470 : f32 = x_121.unity_MatrixV[2i].z;
  u_xlat4.z = x_470;
  let x_472 : bool = u_xlatb2;
  if (x_472) {
    let x_476 : vec3<f32> = u_xlat3;
    x_473 = x_476;
  } else {
    let x_478 : vec4<f32> = u_xlat4;
    x_473 = vec3<f32>(x_478.x, x_478.y, x_478.z);
  }
  let x_480 : vec3<f32> = x_473;
  let x_481 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_480.x, x_481.y, x_480.y, x_480.z);
  let x_484 : f32 = vs_INTERP8.y;
  let x_486 : f32 = x_121.unity_MatrixV[1i].z;
  u_xlat3.x = (x_484 * x_486);
  let x_490 : f32 = x_121.unity_MatrixV[0i].z;
  let x_492 : f32 = vs_INTERP8.x;
  let x_495 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_490 * x_492) + x_495);
  let x_499 : f32 = x_121.unity_MatrixV[2i].z;
  let x_501 : f32 = vs_INTERP8.z;
  let x_504 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_499 * x_501) + x_504);
  let x_508 : f32 = u_xlat3.x;
  let x_510 : f32 = x_121.unity_MatrixV[3i].z;
  u_xlat3.x = (x_508 + x_510);
  let x_514 : f32 = u_xlat3.x;
  let x_518 : f32 = x_121.x_ProjectionParams.y;
  u_xlat3.x = (-(x_514) + -(x_518));
  let x_523 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_523, 0.0f);
  let x_527 : f32 = u_xlat3.x;
  let x_529 : f32 = x_121.unity_FogParams.x;
  u_xlat3.x = (x_527 * x_529);
  let x_539 : vec2<f32> = vs_INTERP0;
  let x_541 : f32 = x_121.x_GlobalMipBias.x;
  let x_542 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_539, x_541);
  u_xlat4 = x_542;
  let x_548 : vec2<f32> = vs_INTERP0;
  let x_550 : f32 = x_121.x_GlobalMipBias.x;
  let x_551 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_548, x_550);
  u_xlat17 = vec3<f32>(x_551.x, x_551.y, x_551.z);
  let x_553 : vec4<f32> = u_xlat4;
  let x_557 : vec3<f32> = (vec3<f32>(x_553.x, x_553.y, x_553.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_558 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_560 : vec3<f32> = u_xlat14;
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(x_560, vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_566 : f32 = u_xlat4.x;
  u_xlat4.x = (x_566 + 0.5f);
  let x_569 : vec3<f32> = u_xlat17;
  let x_570 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_569 * vec3<f32>(x_570.x, x_570.x, x_570.x));
  let x_574 : f32 = u_xlat4.w;
  u_xlat4.x = max(x_574, 0.00009999999747378752f);
  let x_577 : vec3<f32> = u_xlat17;
  let x_578 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_577 / vec3<f32>(x_578.x, x_578.x, x_578.x));
  let x_582 : f32 = u_xlat6.x;
  u_xlat6.x = x_582;
  let x_585 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_585, 0.0f, 1.0f);
  let x_588 : f32 = u_xlat0;
  u_xlat0 = min(x_588, 1.0f);
  let x_590 : vec3<f32> = u_xlat5;
  let x_593 : vec3<f32> = (x_590 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_594 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_598 : f32 = u_xlat6.x;
  u_xlat46 = (-(x_598) + 1.0f);
  let x_601 : f32 = u_xlat46;
  let x_602 : f32 = u_xlat46;
  u_xlat5.x = (x_601 * x_602);
  let x_606 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_606, 0.0078125f);
  let x_612 : f32 = u_xlat5.x;
  let x_614 : f32 = u_xlat5.x;
  u_xlat19 = (x_612 * x_614);
  let x_618 : f32 = u_xlat6.x;
  u_xlat33 = (x_618 + 0.04000002145767211914f);
  let x_621 : f32 = u_xlat33;
  u_xlat33 = min(x_621, 1.0f);
  let x_625 : f32 = u_xlat5.x;
  u_xlat47 = ((x_625 * 4.0f) + 2.0f);
  let x_630 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_630, 1.0f);
  let x_635 : vec4<f32> = vs_INTERP3;
  let x_636 : vec2<f32> = vec2<f32>(x_635.x, x_635.y);
  let x_638 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_636.x, x_636.y, x_638);
  let x_645 : vec3<f32> = txVec1;
  let x_647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_645.xy, x_645.z);
  u_xlat20.x = x_647;
  let x_650 : f32 = u_xlat20.x;
  let x_652 : f32 = x_225.x_MainLightShadowParams.x;
  let x_654 : f32 = u_xlat43;
  u_xlat43 = ((x_650 * x_652) + x_654);
  let x_658 : f32 = vs_INTERP3.z;
  u_xlatb20 = (0.0f >= x_658);
  let x_662 : f32 = vs_INTERP3.z;
  u_xlatb34.x = (x_662 >= 1.0f);
  let x_666 : bool = u_xlatb34.x;
  let x_667 : bool = u_xlatb20;
  u_xlatb20 = (x_666 | x_667);
  let x_669 : bool = u_xlatb20;
  let x_670 : f32 = u_xlat43;
  u_xlat43 = select(x_670, 1.0f, x_669);
  let x_672 : vec3<f32> = vs_INTERP8;
  let x_674 : vec3<f32> = x_121.x_WorldSpaceCameraPos;
  u_xlat20 = (x_672 + -(x_674));
  let x_677 : vec3<f32> = u_xlat20;
  let x_678 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_677, x_678);
  let x_684 : f32 = u_xlat20.x;
  let x_686 : f32 = x_225.x_MainLightShadowParams.z;
  let x_689 : f32 = x_225.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_684 * x_686) + x_689);
  let x_693 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_693, 0.0f, 1.0f);
  let x_697 : f32 = u_xlat43;
  u_xlat48 = (-(x_697) + 1.0f);
  let x_701 : f32 = u_xlat34.x;
  let x_702 : f32 = u_xlat48;
  let x_704 : f32 = u_xlat43;
  u_xlat43 = ((x_701 * x_702) + x_704);
  let x_713 : f32 = x_711.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_713 == -1.0f));
  let x_717 : bool = u_xlatb34.x;
  if (x_717) {
    let x_720 : vec3<f32> = vs_INTERP8;
    let x_723 : vec4<f32> = x_711.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_720.y, x_720.y) * vec2<f32>(x_723.x, x_723.y));
    let x_727 : vec4<f32> = x_711.x_MainLightWorldToLight[0i];
    let x_729 : vec3<f32> = vs_INTERP8;
    let x_732 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_727.x, x_727.y) * vec2<f32>(x_729.x, x_729.x)) + x_732);
    let x_735 : vec4<f32> = x_711.x_MainLightWorldToLight[2i];
    let x_737 : vec3<f32> = vs_INTERP8;
    let x_740 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_735.x, x_735.y) * vec2<f32>(x_737.z, x_737.z)) + x_740);
    let x_742 : vec2<f32> = u_xlat34;
    let x_744 : vec4<f32> = x_711.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_742 + vec2<f32>(x_744.x, x_744.y));
    let x_747 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_747 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_756 : vec2<f32> = u_xlat34;
    let x_758 : f32 = x_121.x_GlobalMipBias.x;
    let x_759 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_756, x_758);
    u_xlat7 = x_759;
    let x_761 : f32 = x_711.x_MainLightCookieTextureFormat;
    let x_763 : f32 = x_711.x_MainLightCookieTextureFormat;
    let x_765 : f32 = x_711.x_MainLightCookieTextureFormat;
    let x_767 : f32 = x_711.x_MainLightCookieTextureFormat;
    let x_768 : vec4<f32> = vec4<f32>(x_761, x_763, x_765, x_767);
    let x_776 : vec4<bool> = (vec4<f32>(x_768.x, x_768.y, x_768.z, x_768.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_776.x, x_776.y);
    let x_779 : bool = u_xlatb34.y;
    if (x_779) {
      let x_784 : f32 = u_xlat7.w;
      x_780 = x_784;
    } else {
      let x_787 : f32 = u_xlat7.x;
      x_780 = x_787;
    }
    let x_788 : f32 = x_780;
    u_xlat48 = x_788;
    let x_790 : bool = u_xlatb34.x;
    if (x_790) {
      let x_794 : vec4<f32> = u_xlat7;
      x_791 = vec3<f32>(x_794.x, x_794.y, x_794.z);
    } else {
      let x_797 : f32 = u_xlat48;
      x_791 = vec3<f32>(x_797, x_797, x_797);
    }
    let x_799 : vec3<f32> = x_791;
    let x_800 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_806 : vec4<f32> = u_xlat7;
  let x_809 : vec4<f32> = x_121.x_MainLightColor;
  let x_811 : vec3<f32> = (vec3<f32>(x_806.x, x_806.y, x_806.z) * vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat2;
  let x_817 : vec3<f32> = u_xlat14;
  u_xlat34.x = dot(-(vec3<f32>(x_814.x, x_814.z, x_814.w)), x_817);
  let x_821 : f32 = u_xlat34.x;
  let x_823 : f32 = u_xlat34.x;
  u_xlat34.x = (x_821 + x_823);
  let x_827 : vec3<f32> = u_xlat14;
  let x_828 : vec2<f32> = u_xlat34;
  let x_832 : vec4<f32> = u_xlat2;
  let x_835 : vec3<f32> = ((x_827 * -(vec3<f32>(x_828.x, x_828.x, x_828.x))) + -(vec3<f32>(x_832.x, x_832.z, x_832.w)));
  let x_836 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_838 : vec3<f32> = u_xlat14;
  let x_839 : vec4<f32> = u_xlat2;
  u_xlat34.x = dot(x_838, vec3<f32>(x_839.x, x_839.z, x_839.w));
  let x_844 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_844, 0.0f, 1.0f);
  let x_848 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_848) + 1.0f);
  let x_853 : f32 = u_xlat34.x;
  let x_855 : f32 = u_xlat34.x;
  u_xlat34.x = (x_853 * x_855);
  let x_859 : f32 = u_xlat34.x;
  let x_861 : f32 = u_xlat34.x;
  u_xlat34.x = (x_859 * x_861);
  let x_864 : f32 = u_xlat46;
  u_xlat48 = ((-(x_864) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_870 : f32 = u_xlat46;
  let x_871 : f32 = u_xlat48;
  u_xlat46 = (x_870 * x_871);
  let x_873 : f32 = u_xlat46;
  u_xlat46 = (x_873 * 6.0f);
  let x_884 : vec4<f32> = u_xlat8;
  let x_886 : f32 = u_xlat46;
  let x_887 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_884.x, x_884.y, x_884.z), x_886);
  u_xlat8 = x_887;
  let x_889 : f32 = u_xlat8.w;
  u_xlat46 = (x_889 + -1.0f);
  let x_892 : f32 = x_42.unity_SpecCube0_HDR.w;
  let x_893 : f32 = u_xlat46;
  u_xlat46 = ((x_892 * x_893) + 1.0f);
  let x_896 : f32 = u_xlat46;
  u_xlat46 = max(x_896, 0.0f);
  let x_898 : f32 = u_xlat46;
  u_xlat46 = log2(x_898);
  let x_900 : f32 = u_xlat46;
  let x_902 : f32 = x_42.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_900 * x_902);
  let x_904 : f32 = u_xlat46;
  u_xlat46 = exp2(x_904);
  let x_906 : f32 = u_xlat46;
  let x_908 : f32 = x_42.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_906 * x_908);
  let x_910 : vec4<f32> = u_xlat8;
  let x_912 : f32 = u_xlat46;
  let x_914 : vec3<f32> = (vec3<f32>(x_910.x, x_910.y, x_910.z) * vec3<f32>(x_912, x_912, x_912));
  let x_915 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_918 : vec3<f32> = u_xlat5;
  let x_920 : vec3<f32> = u_xlat5;
  u_xlat9 = ((vec2<f32>(x_918.x, x_918.x) * vec2<f32>(x_920.x, x_920.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_926 : f32 = u_xlat9.y;
  u_xlat46 = (1.0f / x_926);
  let x_928 : f32 = u_xlat33;
  u_xlat5.x = (x_928 + -0.03999999910593032837f);
  let x_933 : f32 = u_xlat34.x;
  let x_935 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_933 * x_935) + 0.03999999910593032837f);
  let x_940 : f32 = u_xlat46;
  let x_942 : f32 = u_xlat5.x;
  u_xlat46 = (x_940 * x_942);
  let x_944 : f32 = u_xlat46;
  let x_946 : vec4<f32> = u_xlat8;
  let x_948 : vec3<f32> = (vec3<f32>(x_944, x_944, x_944) * vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : vec3<f32> = u_xlat17;
  let x_952 : vec4<f32> = u_xlat4;
  let x_955 : vec4<f32> = u_xlat8;
  u_xlat17 = ((x_951 * vec3<f32>(x_952.x, x_952.y, x_952.z)) + vec3<f32>(x_955.x, x_955.y, x_955.z));
  let x_958 : f32 = u_xlat43;
  let x_960 : f32 = x_42.unity_LightData.z;
  u_xlat43 = (x_958 * x_960);
  let x_962 : vec3<f32> = u_xlat14;
  let x_964 : vec4<f32> = x_121.x_MainLightPosition;
  u_xlat46 = dot(x_962, vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_967 : f32 = u_xlat46;
  u_xlat46 = clamp(x_967, 0.0f, 1.0f);
  let x_969 : f32 = u_xlat43;
  let x_970 : f32 = u_xlat46;
  u_xlat43 = (x_969 * x_970);
  let x_972 : f32 = u_xlat43;
  let x_974 : vec4<f32> = u_xlat7;
  let x_976 : vec3<f32> = (vec3<f32>(x_972, x_972, x_972) * vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec4<f32> = u_xlat2;
  let x_982 : vec4<f32> = x_121.x_MainLightPosition;
  let x_984 : vec3<f32> = (vec3<f32>(x_979.x, x_979.z, x_979.w) + vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_985 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_987 : vec4<f32> = u_xlat8;
  let x_989 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_987.x, x_987.y, x_987.z), vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : f32 = u_xlat43;
  u_xlat43 = max(x_992, 1.17549435e-38f);
  let x_994 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_994);
  let x_996 : f32 = u_xlat43;
  let x_998 : vec4<f32> = u_xlat8;
  let x_1000 : vec3<f32> = (vec3<f32>(x_996, x_996, x_996) * vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : vec3<f32> = u_xlat14;
  let x_1004 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(x_1003, vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1007, 0.0f, 1.0f);
  let x_1010 : vec4<f32> = x_121.x_MainLightPosition;
  let x_1012 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_1010.x, x_1010.y, x_1010.z), vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1015 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1015, 0.0f, 1.0f);
  let x_1017 : f32 = u_xlat43;
  let x_1018 : f32 = u_xlat43;
  u_xlat43 = (x_1017 * x_1018);
  let x_1020 : f32 = u_xlat43;
  let x_1022 : f32 = u_xlat9.x;
  u_xlat43 = ((x_1020 * x_1022) + 1.00001001358032226562f);
  let x_1026 : f32 = u_xlat46;
  let x_1027 : f32 = u_xlat46;
  u_xlat46 = (x_1026 * x_1027);
  let x_1029 : f32 = u_xlat43;
  let x_1030 : f32 = u_xlat43;
  u_xlat43 = (x_1029 * x_1030);
  let x_1032 : f32 = u_xlat46;
  u_xlat46 = max(x_1032, 0.10000000149011611938f);
  let x_1035 : f32 = u_xlat43;
  let x_1036 : f32 = u_xlat46;
  u_xlat43 = (x_1035 * x_1036);
  let x_1038 : f32 = u_xlat47;
  let x_1039 : f32 = u_xlat43;
  u_xlat43 = (x_1038 * x_1039);
  let x_1041 : f32 = u_xlat19;
  let x_1042 : f32 = u_xlat43;
  u_xlat43 = (x_1041 / x_1042);
  let x_1044 : f32 = u_xlat43;
  let x_1048 : vec4<f32> = u_xlat4;
  let x_1050 : vec3<f32> = ((vec3<f32>(x_1044, x_1044, x_1044) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
  let x_1051 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
  let x_1053 : vec4<f32> = u_xlat7;
  let x_1055 : vec4<f32> = u_xlat8;
  let x_1057 : vec3<f32> = (vec3<f32>(x_1053.x, x_1053.y, x_1053.z) * vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
  let x_1058 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
  let x_1062 : f32 = x_121.x_AdditionalLightsCount.x;
  let x_1064 : f32 = x_42.unity_LightData.y;
  u_xlat43 = min(x_1062, x_1064);
  let x_1068 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1068));
  let x_1072 : f32 = u_xlat20.x;
  let x_1075 : f32 = x_225.x_AdditionalShadowFadeParams.x;
  let x_1078 : f32 = x_225.x_AdditionalShadowFadeParams.y;
  u_xlat46 = ((x_1072 * x_1075) + x_1078);
  let x_1080 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1080, 0.0f, 1.0f);
  let x_1086 : f32 = x_711.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1088 : f32 = x_711.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1090 : f32 = x_711.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1092 : f32 = x_711.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1093 : vec4<f32> = vec4<f32>(x_1086, x_1088, x_1090, x_1092);
  let x_1100 : vec4<bool> = (vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1093.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_1101 : vec2<bool> = vec2<bool>(x_1100.x, x_1100.z);
  let x_1102 : vec3<bool> = u_xlatb5;
  u_xlatb5 = vec3<bool>(x_1101.x, x_1102.y, x_1101.y);
  u_xlat20.x = 0.0f;
  u_xlat20.y = 0.0f;
  u_xlat20.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1114 : u32 = u_xlatu_loop_1;
    let x_1115 : u32 = u_xlatu43;
    if ((x_1114 < x_1115)) {
    } else {
      break;
    }
    let x_1118 : u32 = u_xlatu_loop_1;
    u_xlatu8 = (x_1118 >> 2u);
    let x_1122 : u32 = u_xlatu_loop_1;
    u_xlati22 = bitcast<i32>((x_1122 & 3u));
    let x_1125 : u32 = u_xlatu8;
    let x_1128 : vec4<f32> = x_42.unity_LightIndices[bitcast<i32>(x_1125)];
    let x_1138 : i32 = u_xlati22;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1143 : vec4<u32> = indexable[x_1138];
    u_xlat8.x = dot(x_1128, bitcast<vec4<f32>>(x_1143));
    let x_1149 : f32 = u_xlat8.x;
    u_xlati8 = i32(x_1149);
    let x_1152 : vec3<f32> = vs_INTERP8;
    let x_1163 : i32 = u_xlati8;
    let x_1165 : vec4<f32> = x_1162.x_AdditionalLightsPosition[x_1163];
    let x_1168 : i32 = u_xlati8;
    let x_1170 : vec4<f32> = x_1162.x_AdditionalLightsPosition[x_1168];
    u_xlat22 = ((-(x_1152) * vec3<f32>(x_1165.w, x_1165.w, x_1165.w)) + vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
    let x_1174 : vec3<f32> = u_xlat22;
    let x_1175 : vec3<f32> = u_xlat22;
    u_xlat23 = dot(x_1174, x_1175);
    let x_1177 : f32 = u_xlat23;
    u_xlat23 = max(x_1177, 0.00006103515625f);
    let x_1181 : f32 = u_xlat23;
    u_xlat37 = inverseSqrt(x_1181);
    let x_1184 : vec3<f32> = u_xlat22;
    let x_1185 : f32 = u_xlat37;
    u_xlat10 = (x_1184 * vec3<f32>(x_1185, x_1185, x_1185));
    let x_1189 : f32 = u_xlat23;
    u_xlat51 = (1.0f / x_1189);
    let x_1191 : f32 = u_xlat23;
    let x_1192 : i32 = u_xlati8;
    let x_1194 : f32 = x_1162.x_AdditionalLightsAttenuation[x_1192].x;
    u_xlat23 = (x_1191 * x_1194);
    let x_1196 : f32 = u_xlat23;
    let x_1198 : f32 = u_xlat23;
    u_xlat23 = ((-(x_1196) * x_1198) + 1.0f);
    let x_1201 : f32 = u_xlat23;
    u_xlat23 = max(x_1201, 0.0f);
    let x_1203 : f32 = u_xlat23;
    let x_1204 : f32 = u_xlat23;
    u_xlat23 = (x_1203 * x_1204);
    let x_1206 : f32 = u_xlat23;
    let x_1207 : f32 = u_xlat51;
    u_xlat23 = (x_1206 * x_1207);
    let x_1209 : i32 = u_xlati8;
    let x_1211 : vec4<f32> = x_1162.x_AdditionalLightsSpotDir[x_1209];
    let x_1213 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1211.x, x_1211.y, x_1211.z), x_1213);
    let x_1215 : f32 = u_xlat51;
    let x_1216 : i32 = u_xlati8;
    let x_1218 : f32 = x_1162.x_AdditionalLightsAttenuation[x_1216].z;
    let x_1220 : i32 = u_xlati8;
    let x_1222 : f32 = x_1162.x_AdditionalLightsAttenuation[x_1220].w;
    u_xlat51 = ((x_1215 * x_1218) + x_1222);
    let x_1224 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1224, 0.0f, 1.0f);
    let x_1226 : f32 = u_xlat51;
    let x_1227 : f32 = u_xlat51;
    u_xlat51 = (x_1226 * x_1227);
    let x_1229 : f32 = u_xlat51;
    let x_1230 : f32 = u_xlat23;
    u_xlat23 = (x_1229 * x_1230);
    let x_1234 : i32 = u_xlati8;
    let x_1236 : f32 = x_225.x_AdditionalShadowParams[x_1234].w;
    u_xlati51 = i32(x_1236);
    let x_1239 : i32 = u_xlati51;
    u_xlatb52 = (x_1239 >= 0i);
    let x_1241 : bool = u_xlatb52;
    if (x_1241) {
      let x_1245 : i32 = u_xlati8;
      let x_1247 : f32 = x_225.x_AdditionalShadowParams[x_1245].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1247, x_1247, x_1247, x_1247))));
      let x_1251 : bool = u_xlatb52;
      if (x_1251) {
        let x_1256 : vec3<f32> = u_xlat10;
        let x_1259 : vec3<f32> = u_xlat10;
        let x_1262 : vec4<bool> = (abs(vec4<f32>(x_1256.z, x_1256.z, x_1256.y, x_1256.z)) >= abs(vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.x)));
        let x_1263 : vec3<bool> = vec3<bool>(x_1262.x, x_1262.y, x_1262.z);
        let x_1264 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
        let x_1267 : bool = u_xlatb11.y;
        let x_1269 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1267 & x_1269);
        let x_1271 : vec3<f32> = u_xlat10;
        let x_1274 : vec4<bool> = (-(vec4<f32>(x_1271.z, x_1271.y, x_1271.z, x_1271.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1275 : vec3<bool> = vec3<bool>(x_1274.x, x_1274.y, x_1274.w);
        let x_1276 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1275.x, x_1275.y, x_1276.z, x_1275.z);
        let x_1280 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1280);
        let x_1285 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1285);
        let x_1291 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1291);
        let x_1295 : bool = u_xlatb11.z;
        if (x_1295) {
          let x_1300 : f32 = u_xlat11.y;
          x_1296 = x_1300;
        } else {
          let x_1302 : f32 = u_xlat53;
          x_1296 = x_1302;
        }
        let x_1303 : f32 = x_1296;
        u_xlat25.x = x_1303;
        let x_1306 : bool = u_xlatb52;
        if (x_1306) {
          let x_1311 : f32 = u_xlat11.x;
          x_1307 = x_1311;
        } else {
          let x_1314 : f32 = u_xlat25.x;
          x_1307 = x_1314;
        }
        let x_1315 : f32 = x_1307;
        u_xlat52 = x_1315;
        let x_1316 : i32 = u_xlati8;
        let x_1318 : f32 = x_225.x_AdditionalShadowParams[x_1316].w;
        u_xlat11.x = trunc(x_1318);
        let x_1321 : f32 = u_xlat52;
        let x_1323 : f32 = u_xlat11.x;
        u_xlat52 = (x_1321 + x_1323);
        let x_1325 : f32 = u_xlat52;
        u_xlati51 = i32(x_1325);
      }
      let x_1327 : i32 = u_xlati51;
      u_xlati51 = (x_1327 << bitcast<u32>(2i));
      let x_1329 : vec3<f32> = vs_INTERP8;
      let x_1332 : i32 = u_xlati51;
      let x_1335 : i32 = u_xlati51;
      let x_1339 : vec4<f32> = x_225.x_AdditionalLightsWorldToShadow[((x_1332 + 1i) / 4i)][((x_1335 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1329.y, x_1329.y, x_1329.y, x_1329.y) * x_1339);
      let x_1341 : i32 = u_xlati51;
      let x_1343 : i32 = u_xlati51;
      let x_1346 : vec4<f32> = x_225.x_AdditionalLightsWorldToShadow[(x_1341 / 4i)][(x_1343 % 4i)];
      let x_1347 : vec3<f32> = vs_INTERP8;
      let x_1350 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1346 * vec4<f32>(x_1347.x, x_1347.x, x_1347.x, x_1347.x)) + x_1350);
      let x_1352 : i32 = u_xlati51;
      let x_1355 : i32 = u_xlati51;
      let x_1359 : vec4<f32> = x_225.x_AdditionalLightsWorldToShadow[((x_1352 + 2i) / 4i)][((x_1355 + 2i) % 4i)];
      let x_1360 : vec3<f32> = vs_INTERP8;
      let x_1363 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1359 * vec4<f32>(x_1360.z, x_1360.z, x_1360.z, x_1360.z)) + x_1363);
      let x_1365 : vec4<f32> = u_xlat11;
      let x_1366 : i32 = u_xlati51;
      let x_1369 : i32 = u_xlati51;
      let x_1373 : vec4<f32> = x_225.x_AdditionalLightsWorldToShadow[((x_1366 + 3i) / 4i)][((x_1369 + 3i) % 4i)];
      u_xlat11 = (x_1365 + x_1373);
      let x_1375 : vec4<f32> = u_xlat11;
      let x_1377 : vec4<f32> = u_xlat11;
      let x_1379 : vec3<f32> = (vec3<f32>(x_1375.x, x_1375.y, x_1375.z) / vec3<f32>(x_1377.w, x_1377.w, x_1377.w));
      let x_1380 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
      let x_1383 : vec4<f32> = u_xlat11;
      let x_1384 : vec2<f32> = vec2<f32>(x_1383.x, x_1383.y);
      let x_1386 : f32 = u_xlat11.z;
      txVec2 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
      let x_1394 : vec3<f32> = txVec2;
      let x_1396 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1394.xy, x_1394.z);
      u_xlat51 = x_1396;
      let x_1397 : i32 = u_xlati8;
      let x_1399 : f32 = x_225.x_AdditionalShadowParams[x_1397].x;
      u_xlat52 = (1.0f + -(x_1399));
      let x_1402 : f32 = u_xlat51;
      let x_1403 : i32 = u_xlati8;
      let x_1405 : f32 = x_225.x_AdditionalShadowParams[x_1403].x;
      let x_1407 : f32 = u_xlat52;
      u_xlat51 = ((x_1402 * x_1405) + x_1407);
      let x_1410 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1410);
      let x_1413 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1413 >= 1.0f);
      let x_1416 : bool = u_xlatb52;
      let x_1418 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1416 | x_1418);
      let x_1420 : bool = u_xlatb52;
      let x_1421 : f32 = u_xlat51;
      u_xlat51 = select(x_1421, 1.0f, x_1420);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1424 : f32 = u_xlat51;
    u_xlat52 = (-(x_1424) + 1.0f);
    let x_1427 : f32 = u_xlat46;
    let x_1428 : f32 = u_xlat52;
    let x_1430 : f32 = u_xlat51;
    u_xlat51 = ((x_1427 * x_1428) + x_1430);
    let x_1433 : i32 = u_xlati8;
    u_xlati52 = (1i << bitcast<u32>((x_1433 & 31i)));
    let x_1437 : i32 = u_xlati52;
    let x_1440 : f32 = x_711.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1437) & bitcast<u32>(x_1440)));
    let x_1444 : i32 = u_xlati52;
    if ((x_1444 != 0i)) {
      let x_1448 : i32 = u_xlati8;
      let x_1450 : f32 = x_711.x_AdditionalLightsLightTypes[x_1448].el;
      u_xlati52 = i32(x_1450);
      let x_1453 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1453 != 0i));
      let x_1457 : i32 = u_xlati8;
      u_xlati25 = (x_1457 << bitcast<u32>(2i));
      let x_1459 : i32 = u_xlati11;
      if ((x_1459 != 0i)) {
        let x_1463 : vec3<f32> = vs_INTERP8;
        let x_1465 : i32 = u_xlati25;
        let x_1468 : i32 = u_xlati25;
        let x_1472 : vec4<f32> = x_711.x_AdditionalLightsWorldToLights[((x_1465 + 1i) / 4i)][((x_1468 + 1i) % 4i)];
        let x_1474 : vec3<f32> = (vec3<f32>(x_1463.y, x_1463.y, x_1463.y) * vec3<f32>(x_1472.x, x_1472.y, x_1472.w));
        let x_1475 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1474.x, x_1475.y, x_1474.y, x_1474.z);
        let x_1477 : i32 = u_xlati25;
        let x_1479 : i32 = u_xlati25;
        let x_1482 : vec4<f32> = x_711.x_AdditionalLightsWorldToLights[(x_1477 / 4i)][(x_1479 % 4i)];
        let x_1484 : vec3<f32> = vs_INTERP8;
        let x_1487 : vec4<f32> = u_xlat11;
        let x_1489 : vec3<f32> = ((vec3<f32>(x_1482.x, x_1482.y, x_1482.w) * vec3<f32>(x_1484.x, x_1484.x, x_1484.x)) + vec3<f32>(x_1487.x, x_1487.z, x_1487.w));
        let x_1490 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1489.x, x_1490.y, x_1489.y, x_1489.z);
        let x_1492 : i32 = u_xlati25;
        let x_1495 : i32 = u_xlati25;
        let x_1499 : vec4<f32> = x_711.x_AdditionalLightsWorldToLights[((x_1492 + 2i) / 4i)][((x_1495 + 2i) % 4i)];
        let x_1501 : vec3<f32> = vs_INTERP8;
        let x_1504 : vec4<f32> = u_xlat11;
        let x_1506 : vec3<f32> = ((vec3<f32>(x_1499.x, x_1499.y, x_1499.w) * vec3<f32>(x_1501.z, x_1501.z, x_1501.z)) + vec3<f32>(x_1504.x, x_1504.z, x_1504.w));
        let x_1507 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1506.x, x_1507.y, x_1506.y, x_1506.z);
        let x_1509 : vec4<f32> = u_xlat11;
        let x_1511 : i32 = u_xlati25;
        let x_1514 : i32 = u_xlati25;
        let x_1518 : vec4<f32> = x_711.x_AdditionalLightsWorldToLights[((x_1511 + 3i) / 4i)][((x_1514 + 3i) % 4i)];
        let x_1520 : vec3<f32> = (vec3<f32>(x_1509.x, x_1509.z, x_1509.w) + vec3<f32>(x_1518.x, x_1518.y, x_1518.w));
        let x_1521 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1520.x, x_1521.y, x_1520.y, x_1520.z);
        let x_1523 : vec4<f32> = u_xlat11;
        let x_1525 : vec4<f32> = u_xlat11;
        let x_1527 : vec2<f32> = (vec2<f32>(x_1523.x, x_1523.z) / vec2<f32>(x_1525.w, x_1525.w));
        let x_1528 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1527.x, x_1528.y, x_1527.y, x_1528.w);
        let x_1530 : vec4<f32> = u_xlat11;
        let x_1533 : vec2<f32> = ((vec2<f32>(x_1530.x, x_1530.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1534 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1533.x, x_1534.y, x_1533.y, x_1534.w);
        let x_1536 : vec4<f32> = u_xlat11;
        let x_1540 : vec2<f32> = clamp(vec2<f32>(x_1536.x, x_1536.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1541 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1540.x, x_1541.y, x_1540.y, x_1541.w);
        let x_1543 : i32 = u_xlati8;
        let x_1545 : vec4<f32> = x_711.x_AdditionalLightsCookieAtlasUVRects[x_1543];
        let x_1547 : vec4<f32> = u_xlat11;
        let x_1550 : i32 = u_xlati8;
        let x_1552 : vec4<f32> = x_711.x_AdditionalLightsCookieAtlasUVRects[x_1550];
        let x_1554 : vec2<f32> = ((vec2<f32>(x_1545.x, x_1545.y) * vec2<f32>(x_1547.x, x_1547.z)) + vec2<f32>(x_1552.z, x_1552.w));
        let x_1555 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1554.x, x_1555.y, x_1554.y, x_1555.w);
      } else {
        let x_1558 : i32 = u_xlati52;
        u_xlatb52 = (x_1558 == 1i);
        let x_1560 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1560);
        let x_1562 : i32 = u_xlati52;
        if ((x_1562 != 0i)) {
          let x_1567 : vec3<f32> = vs_INTERP8;
          let x_1569 : i32 = u_xlati25;
          let x_1572 : i32 = u_xlati25;
          let x_1576 : vec4<f32> = x_711.x_AdditionalLightsWorldToLights[((x_1569 + 1i) / 4i)][((x_1572 + 1i) % 4i)];
          let x_1578 : vec2<f32> = (vec2<f32>(x_1567.y, x_1567.y) * vec2<f32>(x_1576.x, x_1576.y));
          let x_1579 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1578.x, x_1578.y, x_1579.z, x_1579.w);
          let x_1581 : i32 = u_xlati25;
          let x_1583 : i32 = u_xlati25;
          let x_1586 : vec4<f32> = x_711.x_AdditionalLightsWorldToLights[(x_1581 / 4i)][(x_1583 % 4i)];
          let x_1588 : vec3<f32> = vs_INTERP8;
          let x_1591 : vec4<f32> = u_xlat12;
          let x_1593 : vec2<f32> = ((vec2<f32>(x_1586.x, x_1586.y) * vec2<f32>(x_1588.x, x_1588.x)) + vec2<f32>(x_1591.x, x_1591.y));
          let x_1594 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1593.x, x_1593.y, x_1594.z, x_1594.w);
          let x_1596 : i32 = u_xlati25;
          let x_1599 : i32 = u_xlati25;
          let x_1603 : vec4<f32> = x_711.x_AdditionalLightsWorldToLights[((x_1596 + 2i) / 4i)][((x_1599 + 2i) % 4i)];
          let x_1605 : vec3<f32> = vs_INTERP8;
          let x_1608 : vec4<f32> = u_xlat12;
          let x_1610 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(x_1605.z, x_1605.z)) + vec2<f32>(x_1608.x, x_1608.y));
          let x_1611 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1610.x, x_1610.y, x_1611.z, x_1611.w);
          let x_1613 : vec4<f32> = u_xlat12;
          let x_1615 : i32 = u_xlati25;
          let x_1618 : i32 = u_xlati25;
          let x_1622 : vec4<f32> = x_711.x_AdditionalLightsWorldToLights[((x_1615 + 3i) / 4i)][((x_1618 + 3i) % 4i)];
          let x_1624 : vec2<f32> = (vec2<f32>(x_1613.x, x_1613.y) + vec2<f32>(x_1622.x, x_1622.y));
          let x_1625 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1624.x, x_1624.y, x_1625.z, x_1625.w);
          let x_1627 : vec4<f32> = u_xlat12;
          let x_1630 : vec2<f32> = ((vec2<f32>(x_1627.x, x_1627.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1631 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1630.x, x_1630.y, x_1631.z, x_1631.w);
          let x_1633 : vec4<f32> = u_xlat12;
          let x_1635 : vec2<f32> = fract(vec2<f32>(x_1633.x, x_1633.y));
          let x_1636 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1635.x, x_1635.y, x_1636.z, x_1636.w);
          let x_1638 : i32 = u_xlati8;
          let x_1640 : vec4<f32> = x_711.x_AdditionalLightsCookieAtlasUVRects[x_1638];
          let x_1642 : vec4<f32> = u_xlat12;
          let x_1645 : i32 = u_xlati8;
          let x_1647 : vec4<f32> = x_711.x_AdditionalLightsCookieAtlasUVRects[x_1645];
          let x_1649 : vec2<f32> = ((vec2<f32>(x_1640.x, x_1640.y) * vec2<f32>(x_1642.x, x_1642.y)) + vec2<f32>(x_1647.z, x_1647.w));
          let x_1650 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1649.x, x_1650.y, x_1649.y, x_1650.w);
        } else {
          let x_1653 : vec3<f32> = vs_INTERP8;
          let x_1655 : i32 = u_xlati25;
          let x_1658 : i32 = u_xlati25;
          let x_1662 : vec4<f32> = x_711.x_AdditionalLightsWorldToLights[((x_1655 + 1i) / 4i)][((x_1658 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1653.y, x_1653.y, x_1653.y, x_1653.y) * x_1662);
          let x_1664 : i32 = u_xlati25;
          let x_1666 : i32 = u_xlati25;
          let x_1669 : vec4<f32> = x_711.x_AdditionalLightsWorldToLights[(x_1664 / 4i)][(x_1666 % 4i)];
          let x_1670 : vec3<f32> = vs_INTERP8;
          let x_1673 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1669 * vec4<f32>(x_1670.x, x_1670.x, x_1670.x, x_1670.x)) + x_1673);
          let x_1675 : i32 = u_xlati25;
          let x_1678 : i32 = u_xlati25;
          let x_1682 : vec4<f32> = x_711.x_AdditionalLightsWorldToLights[((x_1675 + 2i) / 4i)][((x_1678 + 2i) % 4i)];
          let x_1683 : vec3<f32> = vs_INTERP8;
          let x_1686 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1682 * vec4<f32>(x_1683.z, x_1683.z, x_1683.z, x_1683.z)) + x_1686);
          let x_1688 : vec4<f32> = u_xlat12;
          let x_1689 : i32 = u_xlati25;
          let x_1692 : i32 = u_xlati25;
          let x_1696 : vec4<f32> = x_711.x_AdditionalLightsWorldToLights[((x_1689 + 3i) / 4i)][((x_1692 + 3i) % 4i)];
          u_xlat12 = (x_1688 + x_1696);
          let x_1698 : vec4<f32> = u_xlat12;
          let x_1700 : vec4<f32> = u_xlat12;
          let x_1702 : vec3<f32> = (vec3<f32>(x_1698.x, x_1698.y, x_1698.z) / vec3<f32>(x_1700.w, x_1700.w, x_1700.w));
          let x_1703 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1703.w);
          let x_1705 : vec4<f32> = u_xlat12;
          let x_1707 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1705.x, x_1705.y, x_1705.z), vec3<f32>(x_1707.x, x_1707.y, x_1707.z));
          let x_1710 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1710);
          let x_1712 : f32 = u_xlat52;
          let x_1714 : vec4<f32> = u_xlat12;
          let x_1716 : vec3<f32> = (vec3<f32>(x_1712, x_1712, x_1712) * vec3<f32>(x_1714.x, x_1714.y, x_1714.z));
          let x_1717 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1716.x, x_1716.y, x_1716.z, x_1717.w);
          let x_1719 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1719.x, x_1719.y, x_1719.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1724 : f32 = u_xlat52;
          u_xlat52 = max(x_1724, 0.00000099999999747524f);
          let x_1727 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1727);
          let x_1730 : f32 = u_xlat52;
          let x_1732 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1730, x_1730, x_1730) * vec3<f32>(x_1732.z, x_1732.x, x_1732.y));
          let x_1736 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1736);
          let x_1740 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1740, 0.0f, 1.0f);
          let x_1744 : vec3<f32> = u_xlat13;
          let x_1746 : vec4<bool> = (vec4<f32>(x_1744.y, x_1744.y, x_1744.z, x_1744.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1747 : vec2<bool> = vec2<bool>(x_1746.x, x_1746.z);
          let x_1748 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1747.x, x_1748.y, x_1747.y);
          let x_1751 : bool = u_xlatb25.x;
          if (x_1751) {
            let x_1756 : f32 = u_xlat13.x;
            x_1752 = x_1756;
          } else {
            let x_1759 : f32 = u_xlat13.x;
            x_1752 = -(x_1759);
          }
          let x_1761 : f32 = x_1752;
          u_xlat25.x = x_1761;
          let x_1764 : bool = u_xlatb25.z;
          if (x_1764) {
            let x_1769 : f32 = u_xlat13.x;
            x_1765 = x_1769;
          } else {
            let x_1772 : f32 = u_xlat13.x;
            x_1765 = -(x_1772);
          }
          let x_1774 : f32 = x_1765;
          u_xlat25.z = x_1774;
          let x_1776 : vec4<f32> = u_xlat12;
          let x_1778 : f32 = u_xlat52;
          let x_1781 : vec3<f32> = u_xlat25;
          let x_1783 : vec2<f32> = ((vec2<f32>(x_1776.x, x_1776.y) * vec2<f32>(x_1778, x_1778)) + vec2<f32>(x_1781.x, x_1781.z));
          let x_1784 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1783.x, x_1784.y, x_1783.y);
          let x_1786 : vec3<f32> = u_xlat25;
          let x_1789 : vec2<f32> = ((vec2<f32>(x_1786.x, x_1786.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1790 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1789.x, x_1790.y, x_1789.y);
          let x_1792 : vec3<f32> = u_xlat25;
          let x_1796 : vec2<f32> = clamp(vec2<f32>(x_1792.x, x_1792.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1797 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1796.x, x_1797.y, x_1796.y);
          let x_1799 : i32 = u_xlati8;
          let x_1801 : vec4<f32> = x_711.x_AdditionalLightsCookieAtlasUVRects[x_1799];
          let x_1803 : vec3<f32> = u_xlat25;
          let x_1806 : i32 = u_xlati8;
          let x_1808 : vec4<f32> = x_711.x_AdditionalLightsCookieAtlasUVRects[x_1806];
          let x_1810 : vec2<f32> = ((vec2<f32>(x_1801.x, x_1801.y) * vec2<f32>(x_1803.x, x_1803.z)) + vec2<f32>(x_1808.z, x_1808.w));
          let x_1811 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1810.x, x_1811.y, x_1810.y, x_1811.w);
        }
      }
      let x_1818 : vec4<f32> = u_xlat11;
      let x_1820 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1818.x, x_1818.z), 0.0f);
      u_xlat11 = x_1820;
      let x_1822 : bool = u_xlatb5.z;
      if (x_1822) {
        let x_1827 : f32 = u_xlat11.w;
        x_1823 = x_1827;
      } else {
        let x_1830 : f32 = u_xlat11.x;
        x_1823 = x_1830;
      }
      let x_1831 : f32 = x_1823;
      u_xlat52 = x_1831;
      let x_1833 : bool = u_xlatb5.x;
      if (x_1833) {
        let x_1837 : vec4<f32> = u_xlat11;
        x_1834 = vec3<f32>(x_1837.x, x_1837.y, x_1837.z);
      } else {
        let x_1840 : f32 = u_xlat52;
        x_1834 = vec3<f32>(x_1840, x_1840, x_1840);
      }
      let x_1842 : vec3<f32> = x_1834;
      let x_1843 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1842.x, x_1842.y, x_1842.z, x_1843.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1849 : vec4<f32> = u_xlat11;
    let x_1851 : i32 = u_xlati8;
    let x_1853 : vec4<f32> = x_1162.x_AdditionalLightsColor[x_1851];
    let x_1855 : vec3<f32> = (vec3<f32>(x_1849.x, x_1849.y, x_1849.z) * vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
    let x_1856 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1856.w);
    let x_1858 : f32 = u_xlat51;
    let x_1859 : f32 = u_xlat23;
    u_xlat8.x = (x_1858 * x_1859);
    let x_1862 : vec3<f32> = u_xlat14;
    let x_1863 : vec3<f32> = u_xlat10;
    u_xlat23 = dot(x_1862, x_1863);
    let x_1865 : f32 = u_xlat23;
    u_xlat23 = clamp(x_1865, 0.0f, 1.0f);
    let x_1868 : f32 = u_xlat8.x;
    let x_1869 : f32 = u_xlat23;
    u_xlat8.x = (x_1868 * x_1869);
    let x_1872 : vec4<f32> = u_xlat8;
    let x_1874 : vec4<f32> = u_xlat11;
    let x_1876 : vec3<f32> = (vec3<f32>(x_1872.x, x_1872.x, x_1872.x) * vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
    let x_1877 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1876.x, x_1876.y, x_1876.z, x_1877.w);
    let x_1879 : vec3<f32> = u_xlat22;
    let x_1880 : f32 = u_xlat37;
    let x_1883 : vec4<f32> = u_xlat2;
    let x_1885 : vec3<f32> = ((x_1879 * vec3<f32>(x_1880, x_1880, x_1880)) + vec3<f32>(x_1883.x, x_1883.z, x_1883.w));
    let x_1886 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1885.x, x_1885.y, x_1885.z, x_1886.w);
    let x_1889 : vec4<f32> = u_xlat8;
    let x_1891 : vec4<f32> = u_xlat8;
    u_xlat50 = dot(vec3<f32>(x_1889.x, x_1889.y, x_1889.z), vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
    let x_1894 : f32 = u_xlat50;
    u_xlat50 = max(x_1894, 1.17549435e-38f);
    let x_1896 : f32 = u_xlat50;
    u_xlat50 = inverseSqrt(x_1896);
    let x_1898 : f32 = u_xlat50;
    let x_1900 : vec4<f32> = u_xlat8;
    let x_1902 : vec3<f32> = (vec3<f32>(x_1898, x_1898, x_1898) * vec3<f32>(x_1900.x, x_1900.y, x_1900.z));
    let x_1903 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1902.x, x_1902.y, x_1902.z, x_1903.w);
    let x_1905 : vec3<f32> = u_xlat14;
    let x_1906 : vec4<f32> = u_xlat8;
    u_xlat8.w = dot(x_1905, vec3<f32>(x_1906.x, x_1906.y, x_1906.z));
    let x_1911 : f32 = u_xlat8.w;
    u_xlat8.w = clamp(x_1911, 0.0f, 1.0f);
    let x_1914 : vec3<f32> = u_xlat10;
    let x_1915 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1914, vec3<f32>(x_1915.x, x_1915.y, x_1915.z));
    let x_1920 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1920, 0.0f, 1.0f);
    let x_1923 : vec4<f32> = u_xlat8;
    let x_1925 : vec4<f32> = u_xlat8;
    let x_1927 : vec2<f32> = (vec2<f32>(x_1923.x, x_1923.w) * vec2<f32>(x_1925.x, x_1925.w));
    let x_1928 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1927.x, x_1927.y, x_1928.z, x_1928.w);
    let x_1931 : f32 = u_xlat8.y;
    let x_1933 : f32 = u_xlat9.x;
    u_xlat22.x = ((x_1931 * x_1933) + 1.00001001358032226562f);
    let x_1938 : f32 = u_xlat22.x;
    let x_1940 : f32 = u_xlat22.x;
    u_xlat22.x = (x_1938 * x_1940);
    let x_1944 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1944, 0.10000000149011611938f);
    let x_1948 : f32 = u_xlat8.x;
    let x_1950 : f32 = u_xlat22.x;
    u_xlat8.x = (x_1948 * x_1950);
    let x_1953 : f32 = u_xlat47;
    let x_1955 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1953 * x_1955);
    let x_1958 : f32 = u_xlat19;
    let x_1960 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1958 / x_1960);
    let x_1963 : vec4<f32> = u_xlat8;
    let x_1966 : vec4<f32> = u_xlat4;
    let x_1968 : vec3<f32> = ((vec3<f32>(x_1963.x, x_1963.x, x_1963.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1966.x, x_1966.y, x_1966.z));
    let x_1969 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1968.x, x_1968.y, x_1968.z, x_1969.w);
    let x_1971 : vec4<f32> = u_xlat8;
    let x_1973 : vec4<f32> = u_xlat11;
    let x_1976 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_1971.x, x_1971.y, x_1971.z) * vec3<f32>(x_1973.x, x_1973.y, x_1973.z)) + x_1976);

    continuing {
      let x_1978 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1978 + bitcast<u32>(1i));
    }
  }
  let x_1980 : vec3<f32> = u_xlat17;
  let x_1981 : vec4<f32> = u_xlat6;
  let x_1984 : vec4<f32> = u_xlat7;
  u_xlat14 = ((x_1980 * vec3<f32>(x_1981.x, x_1981.x, x_1981.x)) + vec3<f32>(x_1984.x, x_1984.y, x_1984.z));
  let x_1987 : vec3<f32> = u_xlat20;
  let x_1988 : vec3<f32> = u_xlat14;
  u_xlat14 = (x_1987 + x_1988);
  let x_1990 : vec4<f32> = vs_INTERP6;
  let x_1992 : vec3<f32> = u_xlat1;
  let x_1994 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_1990.w, x_1990.w, x_1990.w) * x_1992) + x_1994);
  let x_1997 : f32 = u_xlat3.x;
  let x_1999 : f32 = u_xlat3.x;
  u_xlat1.x = (x_1997 * -(x_1999));
  let x_2004 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2004);
  let x_2007 : vec3<f32> = u_xlat14;
  let x_2010 : vec4<f32> = x_121.unity_FogColor;
  u_xlat14 = (x_2007 + -(vec3<f32>(x_2010.x, x_2010.y, x_2010.z)));
  let x_2016 : vec3<f32> = u_xlat1;
  let x_2018 : vec3<f32> = u_xlat14;
  let x_2021 : vec4<f32> = x_121.unity_FogColor;
  let x_2023 : vec3<f32> = ((vec3<f32>(x_2016.x, x_2016.x, x_2016.x) * x_2018) + vec3<f32>(x_2021.x, x_2021.y, x_2021.z));
  let x_2024 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2023.x, x_2023.y, x_2023.z, x_2024.w);
  let x_2026 : bool = u_xlatb16;
  let x_2027 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_2027, x_2026);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


