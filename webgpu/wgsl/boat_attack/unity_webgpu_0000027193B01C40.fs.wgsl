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
  /* @offset(208) */
  x_NightFade : f32,
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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(5) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(7) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_8BA53EED : sampler;

var<private> u_xlat45 : f32;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(8) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_AB84E4D0 : sampler;

var<private> u_xlat31 : f32;

@group(1) @binding(2) var<uniform> x_107 : UnityPerDraw;

var<private> u_xlatb31 : bool;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(6) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_F0A81025 : sampler;

var<private> u_xlatb46 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlatb47 : bool;

var<private> u_xlat47 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb45 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat33 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat50 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat51 : f32;

@group(1) @binding(3) var<uniform> x_504 : LightShadows;

var<private> u_xlatb51 : bool;

var<private> u_xlatb7 : bool;

var<private> u_xlat22 : f32;

@group(1) @binding(4) var<uniform> x_569 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat53 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlatu47 : u32;

var<private> u_xlatu50 : u32;

var<private> u_xlati51 : i32;

var<private> u_xlati50 : i32;

var<private> u_xlat10 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1041 : AdditionalLights;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlati38 : i32;

var<private> u_xlatb53 : bool;

var<private> u_xlatb12 : vec4<bool>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat55 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb55 : bool;

var<private> u_xlati53 : i32;

var<private> u_xlati55 : i32;

var<private> u_xlati56 : i32;

var<private> u_xlat42 : vec2<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb42 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu48 : u32;

var<private> u_xlatb50 : bool;

fn main_1() {
  var x_279 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_657 : f32;
  var x_668 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1173 : f32;
  var x_1182 : f32;
  var txVec1 : vec3<f32>;
  var x_1605 : f32;
  var x_1618 : f32;
  var x_1666 : f32;
  var x_1677 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(Texture2D_52571568, samplerTexture2D_52571568, vec2<f32>(x_24.x, x_24.y), x_36);
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_37.z);
  let x_46 : vec4<f32> = vs_INTERP5;
  let x_49 : f32 = x_29.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(Texture2D_8BA53EED, samplerTexture2D_8BA53EED, vec2<f32>(x_46.x, x_46.y), x_49);
  let x_51 : vec3<f32> = vec3<f32>(x_50.x, x_50.y, x_50.w);
  let x_52 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_51.x, x_51.y, x_51.z, x_52.w);
  let x_56 : f32 = u_xlat1.x;
  let x_59 : f32 = u_xlat1.z;
  u_xlat1.x = (x_56 * x_59);
  let x_62 : vec4<f32> = u_xlat1;
  let x_69 : vec2<f32> = ((vec2<f32>(x_62.x, x_62.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat1;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat45 = dot(vec2<f32>(x_73.x, x_73.y), vec2<f32>(x_75.x, x_75.y));
  let x_78 : f32 = u_xlat45;
  u_xlat45 = min(x_78, 1.0f);
  let x_81 : f32 = u_xlat45;
  u_xlat45 = (-(x_81) + 1.0f);
  let x_84 : f32 = u_xlat45;
  u_xlat45 = sqrt(x_84);
  let x_86 : f32 = u_xlat45;
  u_xlat45 = max(x_86, 0.0000000000000001f);
  let x_95 : vec4<f32> = vs_INTERP5;
  let x_98 : f32 = x_29.x_GlobalMipBias.x;
  let x_99 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_95.x, x_95.y), x_98);
  let x_100 : vec3<f32> = vec3<f32>(x_99.x, x_99.y, x_99.z);
  let x_101 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_111 : vec4<f32> = x_107.unity_ObjectToWorld[3i];
  let x_114 : vec4<f32> = x_107.unity_ObjectToWorld[3i];
  u_xlat31 = dot(vec3<f32>(x_111.x, x_111.y, x_111.z), vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : f32 = u_xlat31;
  u_xlat31 = sqrt(x_117);
  let x_119 : f32 = u_xlat31;
  u_xlat31 = fract(x_119);
  let x_121 : f32 = u_xlat31;
  let x_124 : f32 = x_29.x_NightFade;
  u_xlat31 = (x_121 + x_124);
  let x_129 : f32 = u_xlat31;
  u_xlatb31 = (x_129 >= 1.0f);
  let x_131 : bool = u_xlatb31;
  u_xlat31 = select(0.0f, 1.0f, x_131);
  let x_140 : vec4<f32> = vs_INTERP5;
  let x_143 : f32 = x_29.x_GlobalMipBias.x;
  let x_144 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_140.x, x_140.y), x_143);
  u_xlat3 = vec3<f32>(x_144.x, x_144.w, x_144.y);
  let x_151 : f32 = vs_INTERP4.w;
  u_xlatb46 = (0.0f < x_151);
  let x_154 : bool = u_xlatb46;
  u_xlat46 = select(-1.0f, 1.0f, x_154);
  let x_158 : f32 = x_107.unity_WorldTransformParams.w;
  u_xlatb47 = (x_158 >= 0.0f);
  let x_161 : bool = u_xlatb47;
  u_xlat47 = select(-1.0f, 1.0f, x_161);
  let x_163 : f32 = u_xlat46;
  let x_164 : f32 = u_xlat47;
  u_xlat46 = (x_163 * x_164);
  let x_167 : vec4<f32> = vs_INTERP4;
  let x_171 : vec3<f32> = vs_INTERP8;
  let x_173 : vec3<f32> = (vec3<f32>(x_167.y, x_167.z, x_167.x) * vec3<f32>(x_171.z, x_171.x, x_171.y));
  let x_174 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_176 : vec3<f32> = vs_INTERP8;
  let x_178 : vec4<f32> = vs_INTERP4;
  let x_181 : vec4<f32> = u_xlat4;
  let x_184 : vec3<f32> = ((vec3<f32>(x_176.y, x_176.z, x_176.x) * vec3<f32>(x_178.z, x_178.x, x_178.y)) + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : f32 = u_xlat46;
  let x_189 : vec4<f32> = u_xlat4;
  let x_191 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat1;
  let x_196 : vec4<f32> = u_xlat4;
  let x_198 : vec3<f32> = (vec3<f32>(x_194.y, x_194.y, x_194.y) * vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec4<f32> = vs_INTERP4;
  let x_206 : vec4<f32> = u_xlat4;
  let x_208 : vec3<f32> = ((vec3<f32>(x_201.x, x_201.x, x_201.x) * vec3<f32>(x_203.x, x_203.y, x_203.z)) + vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_209.z, x_208.z);
  let x_211 : f32 = u_xlat45;
  let x_213 : vec3<f32> = vs_INTERP8;
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec3<f32> = ((vec3<f32>(x_211, x_211, x_211) * x_213) + vec3<f32>(x_215.x, x_215.y, x_215.w));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_217.z);
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat45 = dot(vec3<f32>(x_220.x, x_220.y, x_220.w), vec3<f32>(x_222.x, x_222.y, x_222.w));
  let x_225 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat45;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = (vec3<f32>(x_227, x_227, x_227) * vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_237 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb45 = (x_237 == 0.0f);
  let x_240 : vec3<f32> = vs_INTERP7;
  let x_245 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_246 : vec3<f32> = (-(x_240) + x_245);
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_246.x, x_246.y, x_247.z, x_246.z);
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat47 = dot(vec3<f32>(x_249.x, x_249.y, x_249.w), vec3<f32>(x_251.x, x_251.y, x_251.w));
  let x_254 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_254);
  let x_256 : vec4<f32> = u_xlat1;
  let x_258 : f32 = u_xlat47;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.w) * vec3<f32>(x_258, x_258, x_258));
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_261.z, x_260.z);
  let x_266 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat5.x = x_266;
  let x_270 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat5.y = x_270;
  let x_275 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat5.z = x_275;
  let x_277 : bool = u_xlatb45;
  if (x_277) {
    let x_282 : vec4<f32> = u_xlat1;
    x_279 = vec3<f32>(x_282.x, x_282.y, x_282.w);
  } else {
    let x_285 : vec3<f32> = u_xlat5;
    x_279 = x_285;
  }
  let x_286 : vec3<f32> = x_279;
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_286.x, x_286.y, x_287.z, x_286.z);
  let x_290 : f32 = vs_INTERP7.y;
  let x_292 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat45 = (x_290 * x_292);
  let x_295 : f32 = x_29.unity_MatrixV[0i].z;
  let x_297 : f32 = vs_INTERP7.x;
  let x_299 : f32 = u_xlat45;
  u_xlat45 = ((x_295 * x_297) + x_299);
  let x_302 : f32 = x_29.unity_MatrixV[2i].z;
  let x_304 : f32 = vs_INTERP7.z;
  let x_306 : f32 = u_xlat45;
  u_xlat45 = ((x_302 * x_304) + x_306);
  let x_308 : f32 = u_xlat45;
  let x_310 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat45 = (x_308 + x_310);
  let x_312 : f32 = u_xlat45;
  let x_316 : f32 = x_29.x_ProjectionParams.y;
  u_xlat45 = (-(x_312) + -(x_316));
  let x_319 : f32 = u_xlat45;
  u_xlat45 = max(x_319, 0.0f);
  let x_321 : f32 = u_xlat45;
  let x_324 : f32 = x_29.unity_FogParams.x;
  u_xlat45 = (x_321 * x_324);
  u_xlat4.w = 1.0f;
  let x_329 : vec4<f32> = x_107.unity_SHAr;
  let x_330 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_329, x_330);
  let x_335 : vec4<f32> = x_107.unity_SHAg;
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_335, x_336);
  let x_341 : vec4<f32> = x_107.unity_SHAb;
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_341, x_342);
  let x_346 : vec4<f32> = u_xlat4;
  let x_348 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_346.y, x_346.z, x_346.z, x_346.x) * vec4<f32>(x_348.x, x_348.y, x_348.z, x_348.z));
  let x_354 : vec4<f32> = x_107.unity_SHBr;
  let x_355 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_354, x_355);
  let x_360 : vec4<f32> = x_107.unity_SHBg;
  let x_361 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_360, x_361);
  let x_366 : vec4<f32> = x_107.unity_SHBb;
  let x_367 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_366, x_367);
  let x_371 : f32 = u_xlat4.y;
  let x_373 : f32 = u_xlat4.y;
  u_xlat47 = (x_371 * x_373);
  let x_376 : f32 = u_xlat4.x;
  let x_378 : f32 = u_xlat4.x;
  let x_380 : f32 = u_xlat47;
  u_xlat47 = ((x_376 * x_378) + -(x_380));
  let x_385 : vec4<f32> = x_107.unity_SHC;
  let x_387 : f32 = u_xlat47;
  let x_390 : vec4<f32> = u_xlat7;
  let x_392 : vec3<f32> = ((vec3<f32>(x_385.x, x_385.y, x_385.z) * vec3<f32>(x_387, x_387, x_387)) + vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : vec3<f32> = u_xlat5;
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_395 + vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_399, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_402 : vec3<f32> = u_xlat3;
  let x_403 : vec2<f32> = vec2<f32>(x_402.x, x_402.y);
  let x_404 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_403.x, x_403.y, x_404.z);
  let x_406 : vec3<f32> = u_xlat3;
  let x_410 : vec2<f32> = clamp(vec2<f32>(x_406.x, x_406.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_411 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_410.x, x_410.y, x_411.z);
  let x_414 : f32 = u_xlat3.x;
  u_xlat47 = ((-(x_414) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_420 : f32 = u_xlat47;
  let x_423 : f32 = u_xlat3.y;
  u_xlat48 = (-(x_420) + x_423);
  let x_425 : vec3<f32> = u_xlat0;
  let x_426 : f32 = u_xlat47;
  let x_428 : vec3<f32> = (x_425 * vec3<f32>(x_426, x_426, x_426));
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_431 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_435 : vec3<f32> = u_xlat3;
  let x_437 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_435.x, x_435.x, x_435.x) * x_437) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_443 : f32 = u_xlat3.y;
  u_xlat47 = (-(x_443) + 1.0f);
  let x_446 : f32 = u_xlat47;
  let x_447 : f32 = u_xlat47;
  u_xlat3.x = (x_446 * x_447);
  let x_451 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_451, 0.0078125f);
  let x_457 : f32 = u_xlat3.x;
  let x_459 : f32 = u_xlat3.x;
  u_xlat18 = (x_457 * x_459);
  let x_461 : f32 = u_xlat48;
  u_xlat48 = (x_461 + 1.0f);
  let x_463 : f32 = u_xlat48;
  u_xlat48 = min(x_463, 1.0f);
  let x_467 : f32 = u_xlat3.x;
  u_xlat49 = ((x_467 * 4.0f) + 2.0f);
  let x_473 : f32 = u_xlat3.z;
  u_xlat33 = min(x_473, 1.0f);
  let x_477 : vec4<f32> = vs_INTERP3;
  let x_478 : vec2<f32> = vec2<f32>(x_477.x, x_477.y);
  let x_480 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_478.x, x_478.y, x_480);
  let x_493 : vec3<f32> = txVec0;
  let x_495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_493.xy, x_493.z);
  u_xlat50 = x_495;
  let x_507 : f32 = x_504.x_MainLightShadowParams.x;
  u_xlat51 = (-(x_507) + 1.0f);
  let x_510 : f32 = u_xlat50;
  let x_512 : f32 = x_504.x_MainLightShadowParams.x;
  let x_514 : f32 = u_xlat51;
  u_xlat50 = ((x_510 * x_512) + x_514);
  let x_518 : f32 = vs_INTERP3.z;
  u_xlatb51 = (0.0f >= x_518);
  let x_522 : f32 = vs_INTERP3.z;
  u_xlatb7 = (x_522 >= 1.0f);
  let x_524 : bool = u_xlatb51;
  let x_525 : bool = u_xlatb7;
  u_xlatb51 = (x_524 | x_525);
  let x_527 : bool = u_xlatb51;
  let x_528 : f32 = u_xlat50;
  u_xlat50 = select(x_528, 1.0f, x_527);
  let x_530 : vec3<f32> = vs_INTERP7;
  let x_532 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_534 : vec3<f32> = (x_530 + -(x_532));
  let x_535 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec4<f32> = u_xlat7;
  let x_539 : vec4<f32> = u_xlat7;
  u_xlat51 = dot(vec3<f32>(x_537.x, x_537.y, x_537.z), vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_542 : f32 = u_xlat51;
  let x_544 : f32 = x_504.x_MainLightShadowParams.z;
  let x_547 : f32 = x_504.x_MainLightShadowParams.w;
  u_xlat7.x = ((x_542 * x_544) + x_547);
  let x_551 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_551, 0.0f, 1.0f);
  let x_555 : f32 = u_xlat50;
  u_xlat22 = (-(x_555) + 1.0f);
  let x_559 : f32 = u_xlat7.x;
  let x_560 : f32 = u_xlat22;
  let x_562 : f32 = u_xlat50;
  u_xlat50 = ((x_559 * x_560) + x_562);
  let x_571 : f32 = x_569.x_MainLightCookieTextureFormat;
  u_xlatb7 = !((x_571 == -1.0f));
  let x_573 : bool = u_xlatb7;
  if (x_573) {
    let x_576 : vec3<f32> = vs_INTERP7;
    let x_579 : vec4<f32> = x_569.x_MainLightWorldToLight[1i];
    let x_581 : vec2<f32> = (vec2<f32>(x_576.y, x_576.y) * vec2<f32>(x_579.x, x_579.y));
    let x_582 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
    let x_585 : vec4<f32> = x_569.x_MainLightWorldToLight[0i];
    let x_587 : vec3<f32> = vs_INTERP7;
    let x_590 : vec4<f32> = u_xlat7;
    let x_592 : vec2<f32> = ((vec2<f32>(x_585.x, x_585.y) * vec2<f32>(x_587.x, x_587.x)) + vec2<f32>(x_590.x, x_590.y));
    let x_593 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
    let x_596 : vec4<f32> = x_569.x_MainLightWorldToLight[2i];
    let x_598 : vec3<f32> = vs_INTERP7;
    let x_601 : vec4<f32> = u_xlat7;
    let x_603 : vec2<f32> = ((vec2<f32>(x_596.x, x_596.y) * vec2<f32>(x_598.z, x_598.z)) + vec2<f32>(x_601.x, x_601.y));
    let x_604 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
    let x_606 : vec4<f32> = u_xlat7;
    let x_609 : vec4<f32> = x_569.x_MainLightWorldToLight[3i];
    let x_611 : vec2<f32> = (vec2<f32>(x_606.x, x_606.y) + vec2<f32>(x_609.x, x_609.y));
    let x_612 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_612.w);
    let x_614 : vec4<f32> = u_xlat7;
    let x_619 : vec2<f32> = ((vec2<f32>(x_614.x, x_614.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_620 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_619.x, x_619.y, x_620.z, x_620.w);
    let x_627 : vec4<f32> = u_xlat7;
    let x_630 : f32 = x_29.x_GlobalMipBias.x;
    let x_631 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_627.x, x_627.y), x_630);
    u_xlat7 = x_631;
    let x_636 : f32 = x_569.x_MainLightCookieTextureFormat;
    let x_638 : f32 = x_569.x_MainLightCookieTextureFormat;
    let x_640 : f32 = x_569.x_MainLightCookieTextureFormat;
    let x_642 : f32 = x_569.x_MainLightCookieTextureFormat;
    let x_643 : vec4<f32> = vec4<f32>(x_636, x_638, x_640, x_642);
    let x_651 : vec4<bool> = (vec4<f32>(x_643.x, x_643.y, x_643.z, x_643.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_651.x, x_651.y);
    let x_655 : bool = u_xlatb8.y;
    if (x_655) {
      let x_661 : f32 = u_xlat7.w;
      x_657 = x_661;
    } else {
      let x_664 : f32 = u_xlat7.x;
      x_657 = x_664;
    }
    let x_665 : f32 = x_657;
    u_xlat52 = x_665;
    let x_667 : bool = u_xlatb8.x;
    if (x_667) {
      let x_671 : vec4<f32> = u_xlat7;
      x_668 = vec3<f32>(x_671.x, x_671.y, x_671.z);
    } else {
      let x_674 : f32 = u_xlat52;
      x_668 = vec3<f32>(x_674, x_674, x_674);
    }
    let x_676 : vec3<f32> = x_668;
    let x_677 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_683 : vec4<f32> = u_xlat7;
  let x_686 : vec4<f32> = x_29.x_MainLightColor;
  let x_688 : vec3<f32> = (vec3<f32>(x_683.x, x_683.y, x_683.z) * vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_689 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec4<f32> = u_xlat1;
  let x_694 : vec4<f32> = u_xlat4;
  u_xlat52 = dot(-(vec3<f32>(x_691.x, x_691.y, x_691.w)), vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : f32 = u_xlat52;
  let x_698 : f32 = u_xlat52;
  u_xlat52 = (x_697 + x_698);
  let x_701 : vec4<f32> = u_xlat4;
  let x_703 : f32 = u_xlat52;
  let x_707 : vec4<f32> = u_xlat1;
  let x_710 : vec3<f32> = ((vec3<f32>(x_701.x, x_701.y, x_701.z) * -(vec3<f32>(x_703, x_703, x_703))) + -(vec3<f32>(x_707.x, x_707.y, x_707.w)));
  let x_711 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat4;
  let x_715 : vec4<f32> = u_xlat1;
  u_xlat52 = dot(vec3<f32>(x_713.x, x_713.y, x_713.z), vec3<f32>(x_715.x, x_715.y, x_715.w));
  let x_718 : f32 = u_xlat52;
  u_xlat52 = clamp(x_718, 0.0f, 1.0f);
  let x_720 : f32 = u_xlat52;
  u_xlat52 = (-(x_720) + 1.0f);
  let x_723 : f32 = u_xlat52;
  let x_724 : f32 = u_xlat52;
  u_xlat52 = (x_723 * x_724);
  let x_726 : f32 = u_xlat52;
  let x_727 : f32 = u_xlat52;
  u_xlat52 = (x_726 * x_727);
  let x_730 : f32 = u_xlat47;
  u_xlat53 = ((-(x_730) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_736 : f32 = u_xlat47;
  let x_737 : f32 = u_xlat53;
  u_xlat2.w = (x_736 * x_737);
  let x_740 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_740 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_753 : vec4<f32> = u_xlat8;
  let x_756 : f32 = u_xlat2.w;
  let x_757 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_753.x, x_753.y, x_753.z), x_756);
  u_xlat8 = x_757;
  let x_759 : f32 = u_xlat8.w;
  u_xlat47 = (x_759 + -1.0f);
  let x_762 : f32 = x_107.unity_SpecCube0_HDR.w;
  let x_763 : f32 = u_xlat47;
  u_xlat47 = ((x_762 * x_763) + 1.0f);
  let x_766 : f32 = u_xlat47;
  u_xlat47 = max(x_766, 0.0f);
  let x_768 : f32 = u_xlat47;
  u_xlat47 = log2(x_768);
  let x_770 : f32 = u_xlat47;
  let x_772 : f32 = x_107.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_770 * x_772);
  let x_774 : f32 = u_xlat47;
  u_xlat47 = exp2(x_774);
  let x_776 : f32 = u_xlat47;
  let x_778 : f32 = x_107.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_776 * x_778);
  let x_780 : vec4<f32> = u_xlat8;
  let x_782 : f32 = u_xlat47;
  let x_784 : vec3<f32> = (vec3<f32>(x_780.x, x_780.y, x_780.z) * vec3<f32>(x_782, x_782, x_782));
  let x_785 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_789 : vec3<f32> = u_xlat3;
  let x_791 : vec3<f32> = u_xlat3;
  u_xlat9 = ((vec2<f32>(x_789.x, x_789.x) * vec2<f32>(x_791.x, x_791.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_797 : f32 = u_xlat9.y;
  u_xlat47 = (1.0f / x_797);
  let x_800 : vec3<f32> = u_xlat0;
  let x_802 : f32 = u_xlat48;
  u_xlat24 = (-(x_800) + vec3<f32>(x_802, x_802, x_802));
  let x_805 : f32 = u_xlat52;
  let x_807 : vec3<f32> = u_xlat24;
  let x_809 : vec3<f32> = u_xlat0;
  u_xlat24 = ((vec3<f32>(x_805, x_805, x_805) * x_807) + x_809);
  let x_811 : f32 = u_xlat47;
  let x_813 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_811, x_811, x_811) * x_813);
  let x_815 : vec4<f32> = u_xlat8;
  let x_817 : vec3<f32> = u_xlat24;
  let x_818 : vec3<f32> = (vec3<f32>(x_815.x, x_815.y, x_815.z) * x_817);
  let x_819 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec3<f32> = u_xlat5;
  let x_822 : vec4<f32> = u_xlat6;
  let x_825 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_821 * vec3<f32>(x_822.x, x_822.y, x_822.z)) + vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : f32 = u_xlat50;
  let x_830 : f32 = x_107.unity_LightData.z;
  u_xlat47 = (x_828 * x_830);
  let x_832 : vec4<f32> = u_xlat4;
  let x_835 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_832.x, x_832.y, x_832.z), vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_840 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_840, 0.0f, 1.0f);
  let x_843 : f32 = u_xlat47;
  let x_845 : f32 = u_xlat3.x;
  u_xlat47 = (x_843 * x_845);
  let x_847 : f32 = u_xlat47;
  let x_849 : vec4<f32> = u_xlat7;
  let x_851 : vec3<f32> = (vec3<f32>(x_847, x_847, x_847) * vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec4<f32> = u_xlat1;
  let x_857 : vec4<f32> = x_29.x_MainLightPosition;
  let x_859 : vec3<f32> = (vec3<f32>(x_854.x, x_854.y, x_854.w) + vec3<f32>(x_857.x, x_857.y, x_857.z));
  let x_860 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec4<f32> = u_xlat8;
  let x_864 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_862.x, x_862.y, x_862.z), vec3<f32>(x_864.x, x_864.y, x_864.z));
  let x_867 : f32 = u_xlat47;
  u_xlat47 = max(x_867, 1.17549435e-38f);
  let x_870 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_870);
  let x_872 : f32 = u_xlat47;
  let x_874 : vec4<f32> = u_xlat8;
  let x_876 : vec3<f32> = (vec3<f32>(x_872, x_872, x_872) * vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_877 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat4;
  let x_881 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_879.x, x_879.y, x_879.z), vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : f32 = u_xlat47;
  u_xlat47 = clamp(x_884, 0.0f, 1.0f);
  let x_887 : vec4<f32> = x_29.x_MainLightPosition;
  let x_889 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_887.x, x_887.y, x_887.z), vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_894 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_894, 0.0f, 1.0f);
  let x_897 : f32 = u_xlat47;
  let x_898 : f32 = u_xlat47;
  u_xlat47 = (x_897 * x_898);
  let x_900 : f32 = u_xlat47;
  let x_902 : f32 = u_xlat9.x;
  u_xlat47 = ((x_900 * x_902) + 1.00001001358032226562f);
  let x_907 : f32 = u_xlat3.x;
  let x_909 : f32 = u_xlat3.x;
  u_xlat3.x = (x_907 * x_909);
  let x_912 : f32 = u_xlat47;
  let x_913 : f32 = u_xlat47;
  u_xlat47 = (x_912 * x_913);
  let x_916 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_916, 0.10000000149011611938f);
  let x_920 : f32 = u_xlat47;
  let x_922 : f32 = u_xlat3.x;
  u_xlat47 = (x_920 * x_922);
  let x_924 : f32 = u_xlat49;
  let x_925 : f32 = u_xlat47;
  u_xlat47 = (x_924 * x_925);
  let x_927 : f32 = u_xlat18;
  let x_928 : f32 = u_xlat47;
  u_xlat47 = (x_927 / x_928);
  let x_930 : vec3<f32> = u_xlat0;
  let x_931 : f32 = u_xlat47;
  let x_934 : vec4<f32> = u_xlat6;
  let x_936 : vec3<f32> = ((x_930 * vec3<f32>(x_931, x_931, x_931)) + vec3<f32>(x_934.x, x_934.y, x_934.z));
  let x_937 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_939 : vec4<f32> = u_xlat7;
  let x_941 : vec4<f32> = u_xlat8;
  let x_943 : vec3<f32> = (vec3<f32>(x_939.x, x_939.y, x_939.z) * vec3<f32>(x_941.x, x_941.y, x_941.z));
  let x_944 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_947 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_949 : f32 = x_107.unity_LightData.y;
  u_xlat47 = min(x_947, x_949);
  let x_953 : f32 = u_xlat47;
  u_xlatu47 = bitcast<u32>(i32(x_953));
  let x_956 : f32 = u_xlat51;
  let x_959 : f32 = x_504.x_AdditionalShadowFadeParams.x;
  let x_962 : f32 = x_504.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_956 * x_959) + x_962);
  let x_966 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_966, 0.0f, 1.0f);
  let x_970 : f32 = x_569.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_972 : f32 = x_569.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_974 : f32 = x_569.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_976 : f32 = x_569.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_977 : vec4<f32> = vec4<f32>(x_970, x_972, x_974, x_976);
  let x_983 : vec4<bool> = (vec4<f32>(x_977.x, x_977.y, x_977.z, x_977.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_983.x, x_983.y);
  u_xlat24.x = 0.0f;
  u_xlat24.y = 0.0f;
  u_xlat24.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_995 : u32 = u_xlatu_loop_1;
    let x_996 : u32 = u_xlatu47;
    if ((x_995 < x_996)) {
    } else {
      break;
    }
    let x_999 : u32 = u_xlatu_loop_1;
    u_xlatu50 = (x_999 >> 2u);
    let x_1003 : u32 = u_xlatu_loop_1;
    u_xlati51 = bitcast<i32>((x_1003 & 3u));
    let x_1006 : u32 = u_xlatu50;
    let x_1009 : vec4<f32> = x_107.unity_LightIndices[bitcast<i32>(x_1006)];
    let x_1019 : i32 = u_xlati51;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1024 : vec4<u32> = indexable[x_1019];
    u_xlat50 = dot(x_1009, bitcast<vec4<f32>>(x_1024));
    let x_1028 : f32 = u_xlat50;
    u_xlati50 = i32(x_1028);
    let x_1031 : vec3<f32> = vs_INTERP7;
    let x_1042 : i32 = u_xlati50;
    let x_1044 : vec4<f32> = x_1041.x_AdditionalLightsPosition[x_1042];
    let x_1047 : i32 = u_xlati50;
    let x_1049 : vec4<f32> = x_1041.x_AdditionalLightsPosition[x_1047];
    u_xlat10 = ((-(x_1031) * vec3<f32>(x_1044.w, x_1044.w, x_1044.w)) + vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
    let x_1052 : vec3<f32> = u_xlat10;
    let x_1053 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(x_1052, x_1053);
    let x_1055 : f32 = u_xlat51;
    u_xlat51 = max(x_1055, 0.00006103515625f);
    let x_1058 : f32 = u_xlat51;
    u_xlat52 = inverseSqrt(x_1058);
    let x_1061 : f32 = u_xlat52;
    let x_1063 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_1061, x_1061, x_1061) * x_1063);
    let x_1066 : f32 = u_xlat51;
    u_xlat38 = (1.0f / x_1066);
    let x_1068 : f32 = u_xlat51;
    let x_1069 : i32 = u_xlati50;
    let x_1071 : f32 = x_1041.x_AdditionalLightsAttenuation[x_1069].x;
    u_xlat51 = (x_1068 * x_1071);
    let x_1073 : f32 = u_xlat51;
    let x_1075 : f32 = u_xlat51;
    u_xlat51 = ((-(x_1073) * x_1075) + 1.0f);
    let x_1078 : f32 = u_xlat51;
    u_xlat51 = max(x_1078, 0.0f);
    let x_1080 : f32 = u_xlat51;
    let x_1081 : f32 = u_xlat51;
    u_xlat51 = (x_1080 * x_1081);
    let x_1083 : f32 = u_xlat51;
    let x_1084 : f32 = u_xlat38;
    u_xlat51 = (x_1083 * x_1084);
    let x_1086 : i32 = u_xlati50;
    let x_1088 : vec4<f32> = x_1041.x_AdditionalLightsSpotDir[x_1086];
    let x_1090 : vec3<f32> = u_xlat11;
    u_xlat38 = dot(vec3<f32>(x_1088.x, x_1088.y, x_1088.z), x_1090);
    let x_1092 : f32 = u_xlat38;
    let x_1093 : i32 = u_xlati50;
    let x_1095 : f32 = x_1041.x_AdditionalLightsAttenuation[x_1093].z;
    let x_1097 : i32 = u_xlati50;
    let x_1099 : f32 = x_1041.x_AdditionalLightsAttenuation[x_1097].w;
    u_xlat38 = ((x_1092 * x_1095) + x_1099);
    let x_1101 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1101, 0.0f, 1.0f);
    let x_1103 : f32 = u_xlat38;
    let x_1104 : f32 = u_xlat38;
    u_xlat38 = (x_1103 * x_1104);
    let x_1106 : f32 = u_xlat51;
    let x_1107 : f32 = u_xlat38;
    u_xlat51 = (x_1106 * x_1107);
    let x_1111 : i32 = u_xlati50;
    let x_1113 : f32 = x_504.x_AdditionalShadowParams[x_1111].w;
    u_xlati38 = i32(x_1113);
    let x_1116 : i32 = u_xlati38;
    u_xlatb53 = (x_1116 >= 0i);
    let x_1118 : bool = u_xlatb53;
    if (x_1118) {
      let x_1122 : i32 = u_xlati50;
      let x_1124 : f32 = x_504.x_AdditionalShadowParams[x_1122].z;
      u_xlatb53 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1124, x_1124, x_1124, x_1124))));
      let x_1128 : bool = u_xlatb53;
      if (x_1128) {
        let x_1133 : vec3<f32> = u_xlat11;
        let x_1136 : vec3<f32> = u_xlat11;
        let x_1139 : vec4<bool> = (abs(vec4<f32>(x_1133.z, x_1133.z, x_1133.y, x_1133.z)) >= abs(vec4<f32>(x_1136.x, x_1136.y, x_1136.x, x_1136.x)));
        let x_1141 : vec3<bool> = vec3<bool>(x_1139.x, x_1139.y, x_1139.z);
        let x_1142 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_1141.x, x_1141.y, x_1141.z, x_1142.w);
        let x_1145 : bool = u_xlatb12.y;
        let x_1147 : bool = u_xlatb12.x;
        u_xlatb53 = (x_1145 & x_1147);
        let x_1149 : vec3<f32> = u_xlat11;
        let x_1152 : vec4<bool> = (-(vec4<f32>(x_1149.z, x_1149.y, x_1149.z, x_1149.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1153 : vec3<bool> = vec3<bool>(x_1152.x, x_1152.y, x_1152.w);
        let x_1154 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_1153.x, x_1153.y, x_1154.z, x_1153.z);
        let x_1158 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_1158);
        let x_1163 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_1163);
        let x_1169 : bool = u_xlatb12.w;
        u_xlat55 = select(0.0f, 1.0f, x_1169);
        let x_1172 : bool = u_xlatb12.z;
        if (x_1172) {
          let x_1177 : f32 = u_xlat12.y;
          x_1173 = x_1177;
        } else {
          let x_1179 : f32 = u_xlat55;
          x_1173 = x_1179;
        }
        let x_1180 : f32 = x_1173;
        u_xlat55 = x_1180;
        let x_1181 : bool = u_xlatb53;
        if (x_1181) {
          let x_1186 : f32 = u_xlat12.x;
          x_1182 = x_1186;
        } else {
          let x_1188 : f32 = u_xlat55;
          x_1182 = x_1188;
        }
        let x_1189 : f32 = x_1182;
        u_xlat53 = x_1189;
        let x_1190 : i32 = u_xlati50;
        let x_1192 : f32 = x_504.x_AdditionalShadowParams[x_1190].w;
        u_xlat55 = trunc(x_1192);
        let x_1194 : f32 = u_xlat53;
        let x_1195 : f32 = u_xlat55;
        u_xlat53 = (x_1194 + x_1195);
        let x_1197 : f32 = u_xlat53;
        u_xlati38 = i32(x_1197);
      }
      let x_1199 : i32 = u_xlati38;
      u_xlati38 = (x_1199 << bitcast<u32>(2i));
      let x_1201 : vec3<f32> = vs_INTERP7;
      let x_1204 : i32 = u_xlati38;
      let x_1207 : i32 = u_xlati38;
      let x_1211 : vec4<f32> = x_504.x_AdditionalLightsWorldToShadow[((x_1204 + 1i) / 4i)][((x_1207 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_1201.y, x_1201.y, x_1201.y, x_1201.y) * x_1211);
      let x_1213 : i32 = u_xlati38;
      let x_1215 : i32 = u_xlati38;
      let x_1218 : vec4<f32> = x_504.x_AdditionalLightsWorldToShadow[(x_1213 / 4i)][(x_1215 % 4i)];
      let x_1219 : vec3<f32> = vs_INTERP7;
      let x_1222 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_1218 * vec4<f32>(x_1219.x, x_1219.x, x_1219.x, x_1219.x)) + x_1222);
      let x_1224 : i32 = u_xlati38;
      let x_1227 : i32 = u_xlati38;
      let x_1231 : vec4<f32> = x_504.x_AdditionalLightsWorldToShadow[((x_1224 + 2i) / 4i)][((x_1227 + 2i) % 4i)];
      let x_1232 : vec3<f32> = vs_INTERP7;
      let x_1235 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_1231 * vec4<f32>(x_1232.z, x_1232.z, x_1232.z, x_1232.z)) + x_1235);
      let x_1237 : vec4<f32> = u_xlat12;
      let x_1238 : i32 = u_xlati38;
      let x_1241 : i32 = u_xlati38;
      let x_1245 : vec4<f32> = x_504.x_AdditionalLightsWorldToShadow[((x_1238 + 3i) / 4i)][((x_1241 + 3i) % 4i)];
      u_xlat12 = (x_1237 + x_1245);
      let x_1247 : vec4<f32> = u_xlat12;
      let x_1249 : vec4<f32> = u_xlat12;
      let x_1251 : vec3<f32> = (vec3<f32>(x_1247.x, x_1247.y, x_1247.z) / vec3<f32>(x_1249.w, x_1249.w, x_1249.w));
      let x_1252 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
      let x_1255 : vec4<f32> = u_xlat12;
      let x_1256 : vec2<f32> = vec2<f32>(x_1255.x, x_1255.y);
      let x_1258 : f32 = u_xlat12.z;
      txVec1 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
      let x_1266 : vec3<f32> = txVec1;
      let x_1268 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1266.xy, x_1266.z);
      u_xlat38 = x_1268;
      let x_1269 : i32 = u_xlati50;
      let x_1271 : f32 = x_504.x_AdditionalShadowParams[x_1269].x;
      u_xlat53 = (1.0f + -(x_1271));
      let x_1274 : f32 = u_xlat38;
      let x_1275 : i32 = u_xlati50;
      let x_1277 : f32 = x_504.x_AdditionalShadowParams[x_1275].x;
      let x_1279 : f32 = u_xlat53;
      u_xlat38 = ((x_1274 * x_1277) + x_1279);
      let x_1282 : f32 = u_xlat12.z;
      u_xlatb53 = (0.0f >= x_1282);
      let x_1286 : f32 = u_xlat12.z;
      u_xlatb55 = (x_1286 >= 1.0f);
      let x_1288 : bool = u_xlatb53;
      let x_1289 : bool = u_xlatb55;
      u_xlatb53 = (x_1288 | x_1289);
      let x_1291 : bool = u_xlatb53;
      let x_1292 : f32 = u_xlat38;
      u_xlat38 = select(x_1292, 1.0f, x_1291);
    } else {
      u_xlat38 = 1.0f;
    }
    let x_1295 : f32 = u_xlat38;
    u_xlat53 = (-(x_1295) + 1.0f);
    let x_1299 : f32 = u_xlat3.x;
    let x_1300 : f32 = u_xlat53;
    let x_1302 : f32 = u_xlat38;
    u_xlat38 = ((x_1299 * x_1300) + x_1302);
    let x_1305 : i32 = u_xlati50;
    u_xlati53 = (1i << bitcast<u32>((x_1305 & 31i)));
    let x_1309 : i32 = u_xlati53;
    let x_1312 : f32 = x_569.x_AdditionalLightsCookieEnableBits;
    u_xlati53 = bitcast<i32>((bitcast<u32>(x_1309) & bitcast<u32>(x_1312)));
    let x_1316 : i32 = u_xlati53;
    if ((x_1316 != 0i)) {
      let x_1320 : i32 = u_xlati50;
      let x_1322 : f32 = x_569.x_AdditionalLightsLightTypes[x_1320].el;
      u_xlati53 = i32(x_1322);
      let x_1325 : i32 = u_xlati53;
      u_xlati55 = select(1i, 0i, (x_1325 != 0i));
      let x_1329 : i32 = u_xlati50;
      u_xlati56 = (x_1329 << bitcast<u32>(2i));
      let x_1331 : i32 = u_xlati55;
      if ((x_1331 != 0i)) {
        let x_1335 : vec3<f32> = vs_INTERP7;
        let x_1337 : i32 = u_xlati56;
        let x_1340 : i32 = u_xlati56;
        let x_1344 : vec4<f32> = x_569.x_AdditionalLightsWorldToLights[((x_1337 + 1i) / 4i)][((x_1340 + 1i) % 4i)];
        let x_1346 : vec3<f32> = (vec3<f32>(x_1335.y, x_1335.y, x_1335.y) * vec3<f32>(x_1344.x, x_1344.y, x_1344.w));
        let x_1347 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1347.w);
        let x_1349 : i32 = u_xlati56;
        let x_1351 : i32 = u_xlati56;
        let x_1354 : vec4<f32> = x_569.x_AdditionalLightsWorldToLights[(x_1349 / 4i)][(x_1351 % 4i)];
        let x_1356 : vec3<f32> = vs_INTERP7;
        let x_1359 : vec4<f32> = u_xlat12;
        let x_1361 : vec3<f32> = ((vec3<f32>(x_1354.x, x_1354.y, x_1354.w) * vec3<f32>(x_1356.x, x_1356.x, x_1356.x)) + vec3<f32>(x_1359.x, x_1359.y, x_1359.z));
        let x_1362 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1361.x, x_1361.y, x_1361.z, x_1362.w);
        let x_1364 : i32 = u_xlati56;
        let x_1367 : i32 = u_xlati56;
        let x_1371 : vec4<f32> = x_569.x_AdditionalLightsWorldToLights[((x_1364 + 2i) / 4i)][((x_1367 + 2i) % 4i)];
        let x_1373 : vec3<f32> = vs_INTERP7;
        let x_1376 : vec4<f32> = u_xlat12;
        let x_1378 : vec3<f32> = ((vec3<f32>(x_1371.x, x_1371.y, x_1371.w) * vec3<f32>(x_1373.z, x_1373.z, x_1373.z)) + vec3<f32>(x_1376.x, x_1376.y, x_1376.z));
        let x_1379 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1379.w);
        let x_1381 : vec4<f32> = u_xlat12;
        let x_1383 : i32 = u_xlati56;
        let x_1386 : i32 = u_xlati56;
        let x_1390 : vec4<f32> = x_569.x_AdditionalLightsWorldToLights[((x_1383 + 3i) / 4i)][((x_1386 + 3i) % 4i)];
        let x_1392 : vec3<f32> = (vec3<f32>(x_1381.x, x_1381.y, x_1381.z) + vec3<f32>(x_1390.x, x_1390.y, x_1390.w));
        let x_1393 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1393.w);
        let x_1395 : vec4<f32> = u_xlat12;
        let x_1397 : vec4<f32> = u_xlat12;
        let x_1399 : vec2<f32> = (vec2<f32>(x_1395.x, x_1395.y) / vec2<f32>(x_1397.z, x_1397.z));
        let x_1400 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1399.x, x_1399.y, x_1400.z, x_1400.w);
        let x_1402 : vec4<f32> = u_xlat12;
        let x_1405 : vec2<f32> = ((vec2<f32>(x_1402.x, x_1402.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1406 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1405.x, x_1405.y, x_1406.z, x_1406.w);
        let x_1408 : vec4<f32> = u_xlat12;
        let x_1412 : vec2<f32> = clamp(vec2<f32>(x_1408.x, x_1408.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1413 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1412.x, x_1412.y, x_1413.z, x_1413.w);
        let x_1415 : i32 = u_xlati50;
        let x_1417 : vec4<f32> = x_569.x_AdditionalLightsCookieAtlasUVRects[x_1415];
        let x_1419 : vec4<f32> = u_xlat12;
        let x_1422 : i32 = u_xlati50;
        let x_1424 : vec4<f32> = x_569.x_AdditionalLightsCookieAtlasUVRects[x_1422];
        let x_1426 : vec2<f32> = ((vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(x_1419.x, x_1419.y)) + vec2<f32>(x_1424.z, x_1424.w));
        let x_1427 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1426.x, x_1426.y, x_1427.z, x_1427.w);
      } else {
        let x_1430 : i32 = u_xlati53;
        u_xlatb53 = (x_1430 == 1i);
        let x_1432 : bool = u_xlatb53;
        u_xlati53 = select(0i, 1i, x_1432);
        let x_1434 : i32 = u_xlati53;
        if ((x_1434 != 0i)) {
          let x_1439 : vec3<f32> = vs_INTERP7;
          let x_1441 : i32 = u_xlati56;
          let x_1444 : i32 = u_xlati56;
          let x_1448 : vec4<f32> = x_569.x_AdditionalLightsWorldToLights[((x_1441 + 1i) / 4i)][((x_1444 + 1i) % 4i)];
          u_xlat42 = (vec2<f32>(x_1439.y, x_1439.y) * vec2<f32>(x_1448.x, x_1448.y));
          let x_1451 : i32 = u_xlati56;
          let x_1453 : i32 = u_xlati56;
          let x_1456 : vec4<f32> = x_569.x_AdditionalLightsWorldToLights[(x_1451 / 4i)][(x_1453 % 4i)];
          let x_1458 : vec3<f32> = vs_INTERP7;
          let x_1461 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1456.x, x_1456.y) * vec2<f32>(x_1458.x, x_1458.x)) + x_1461);
          let x_1463 : i32 = u_xlati56;
          let x_1466 : i32 = u_xlati56;
          let x_1470 : vec4<f32> = x_569.x_AdditionalLightsWorldToLights[((x_1463 + 2i) / 4i)][((x_1466 + 2i) % 4i)];
          let x_1472 : vec3<f32> = vs_INTERP7;
          let x_1475 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1470.x, x_1470.y) * vec2<f32>(x_1472.z, x_1472.z)) + x_1475);
          let x_1477 : vec2<f32> = u_xlat42;
          let x_1478 : i32 = u_xlati56;
          let x_1481 : i32 = u_xlati56;
          let x_1485 : vec4<f32> = x_569.x_AdditionalLightsWorldToLights[((x_1478 + 3i) / 4i)][((x_1481 + 3i) % 4i)];
          u_xlat42 = (x_1477 + vec2<f32>(x_1485.x, x_1485.y));
          let x_1488 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_1488 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1491 : vec2<f32> = u_xlat42;
          u_xlat42 = fract(x_1491);
          let x_1493 : i32 = u_xlati50;
          let x_1495 : vec4<f32> = x_569.x_AdditionalLightsCookieAtlasUVRects[x_1493];
          let x_1497 : vec2<f32> = u_xlat42;
          let x_1499 : i32 = u_xlati50;
          let x_1501 : vec4<f32> = x_569.x_AdditionalLightsCookieAtlasUVRects[x_1499];
          let x_1503 : vec2<f32> = ((vec2<f32>(x_1495.x, x_1495.y) * x_1497) + vec2<f32>(x_1501.z, x_1501.w));
          let x_1504 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1503.x, x_1503.y, x_1504.z, x_1504.w);
        } else {
          let x_1508 : vec3<f32> = vs_INTERP7;
          let x_1510 : i32 = u_xlati56;
          let x_1513 : i32 = u_xlati56;
          let x_1517 : vec4<f32> = x_569.x_AdditionalLightsWorldToLights[((x_1510 + 1i) / 4i)][((x_1513 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1508.y, x_1508.y, x_1508.y, x_1508.y) * x_1517);
          let x_1519 : i32 = u_xlati56;
          let x_1521 : i32 = u_xlati56;
          let x_1524 : vec4<f32> = x_569.x_AdditionalLightsWorldToLights[(x_1519 / 4i)][(x_1521 % 4i)];
          let x_1525 : vec3<f32> = vs_INTERP7;
          let x_1528 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1524 * vec4<f32>(x_1525.x, x_1525.x, x_1525.x, x_1525.x)) + x_1528);
          let x_1530 : i32 = u_xlati56;
          let x_1533 : i32 = u_xlati56;
          let x_1537 : vec4<f32> = x_569.x_AdditionalLightsWorldToLights[((x_1530 + 2i) / 4i)][((x_1533 + 2i) % 4i)];
          let x_1538 : vec3<f32> = vs_INTERP7;
          let x_1541 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1537 * vec4<f32>(x_1538.z, x_1538.z, x_1538.z, x_1538.z)) + x_1541);
          let x_1543 : vec4<f32> = u_xlat13;
          let x_1544 : i32 = u_xlati56;
          let x_1547 : i32 = u_xlati56;
          let x_1551 : vec4<f32> = x_569.x_AdditionalLightsWorldToLights[((x_1544 + 3i) / 4i)][((x_1547 + 3i) % 4i)];
          u_xlat13 = (x_1543 + x_1551);
          let x_1553 : vec4<f32> = u_xlat13;
          let x_1555 : vec4<f32> = u_xlat13;
          let x_1557 : vec3<f32> = (vec3<f32>(x_1553.x, x_1553.y, x_1553.z) / vec3<f32>(x_1555.w, x_1555.w, x_1555.w));
          let x_1558 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1557.x, x_1557.y, x_1557.z, x_1558.w);
          let x_1560 : vec4<f32> = u_xlat13;
          let x_1562 : vec4<f32> = u_xlat13;
          u_xlat53 = dot(vec3<f32>(x_1560.x, x_1560.y, x_1560.z), vec3<f32>(x_1562.x, x_1562.y, x_1562.z));
          let x_1565 : f32 = u_xlat53;
          u_xlat53 = inverseSqrt(x_1565);
          let x_1567 : f32 = u_xlat53;
          let x_1569 : vec4<f32> = u_xlat13;
          let x_1571 : vec3<f32> = (vec3<f32>(x_1567, x_1567, x_1567) * vec3<f32>(x_1569.x, x_1569.y, x_1569.z));
          let x_1572 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1571.x, x_1571.y, x_1571.z, x_1572.w);
          let x_1574 : vec4<f32> = u_xlat13;
          u_xlat53 = dot(abs(vec3<f32>(x_1574.x, x_1574.y, x_1574.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1579 : f32 = u_xlat53;
          u_xlat53 = max(x_1579, 0.00000099999999747524f);
          let x_1582 : f32 = u_xlat53;
          u_xlat53 = (1.0f / x_1582);
          let x_1585 : f32 = u_xlat53;
          let x_1587 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1585, x_1585, x_1585) * vec3<f32>(x_1587.z, x_1587.x, x_1587.y));
          let x_1591 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1591);
          let x_1595 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1595, 0.0f, 1.0f);
          let x_1599 : vec3<f32> = u_xlat14;
          let x_1601 : vec4<bool> = (vec4<f32>(x_1599.y, x_1599.z, x_1599.y, x_1599.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb42 = vec2<bool>(x_1601.x, x_1601.y);
          let x_1604 : bool = u_xlatb42.x;
          if (x_1604) {
            let x_1609 : f32 = u_xlat14.x;
            x_1605 = x_1609;
          } else {
            let x_1612 : f32 = u_xlat14.x;
            x_1605 = -(x_1612);
          }
          let x_1614 : f32 = x_1605;
          u_xlat42.x = x_1614;
          let x_1617 : bool = u_xlatb42.y;
          if (x_1617) {
            let x_1622 : f32 = u_xlat14.x;
            x_1618 = x_1622;
          } else {
            let x_1625 : f32 = u_xlat14.x;
            x_1618 = -(x_1625);
          }
          let x_1627 : f32 = x_1618;
          u_xlat42.y = x_1627;
          let x_1629 : vec4<f32> = u_xlat13;
          let x_1631 : f32 = u_xlat53;
          let x_1634 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1629.x, x_1629.y) * vec2<f32>(x_1631, x_1631)) + x_1634);
          let x_1636 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_1636 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1639 : vec2<f32> = u_xlat42;
          u_xlat42 = clamp(x_1639, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1643 : i32 = u_xlati50;
          let x_1645 : vec4<f32> = x_569.x_AdditionalLightsCookieAtlasUVRects[x_1643];
          let x_1647 : vec2<f32> = u_xlat42;
          let x_1649 : i32 = u_xlati50;
          let x_1651 : vec4<f32> = x_569.x_AdditionalLightsCookieAtlasUVRects[x_1649];
          let x_1653 : vec2<f32> = ((vec2<f32>(x_1645.x, x_1645.y) * x_1647) + vec2<f32>(x_1651.z, x_1651.w));
          let x_1654 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1653.x, x_1653.y, x_1654.z, x_1654.w);
        }
      }
      let x_1661 : vec4<f32> = u_xlat12;
      let x_1663 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1661.x, x_1661.y), 0.0f);
      u_xlat12 = x_1663;
      let x_1665 : bool = u_xlatb8.y;
      if (x_1665) {
        let x_1670 : f32 = u_xlat12.w;
        x_1666 = x_1670;
      } else {
        let x_1673 : f32 = u_xlat12.x;
        x_1666 = x_1673;
      }
      let x_1674 : f32 = x_1666;
      u_xlat53 = x_1674;
      let x_1676 : bool = u_xlatb8.x;
      if (x_1676) {
        let x_1680 : vec4<f32> = u_xlat12;
        x_1677 = vec3<f32>(x_1680.x, x_1680.y, x_1680.z);
      } else {
        let x_1683 : f32 = u_xlat53;
        x_1677 = vec3<f32>(x_1683, x_1683, x_1683);
      }
      let x_1685 : vec3<f32> = x_1677;
      let x_1686 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1692 : vec4<f32> = u_xlat12;
    let x_1694 : i32 = u_xlati50;
    let x_1696 : vec4<f32> = x_1041.x_AdditionalLightsColor[x_1694];
    let x_1698 : vec3<f32> = (vec3<f32>(x_1692.x, x_1692.y, x_1692.z) * vec3<f32>(x_1696.x, x_1696.y, x_1696.z));
    let x_1699 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1698.x, x_1698.y, x_1698.z, x_1699.w);
    let x_1701 : f32 = u_xlat51;
    let x_1702 : f32 = u_xlat38;
    u_xlat50 = (x_1701 * x_1702);
    let x_1704 : vec4<f32> = u_xlat4;
    let x_1706 : vec3<f32> = u_xlat11;
    u_xlat51 = dot(vec3<f32>(x_1704.x, x_1704.y, x_1704.z), x_1706);
    let x_1708 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1708, 0.0f, 1.0f);
    let x_1710 : f32 = u_xlat50;
    let x_1711 : f32 = u_xlat51;
    u_xlat50 = (x_1710 * x_1711);
    let x_1713 : f32 = u_xlat50;
    let x_1715 : vec4<f32> = u_xlat12;
    let x_1717 : vec3<f32> = (vec3<f32>(x_1713, x_1713, x_1713) * vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
    let x_1718 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1718.w);
    let x_1720 : vec3<f32> = u_xlat10;
    let x_1721 : f32 = u_xlat52;
    let x_1724 : vec4<f32> = u_xlat1;
    u_xlat10 = ((x_1720 * vec3<f32>(x_1721, x_1721, x_1721)) + vec3<f32>(x_1724.x, x_1724.y, x_1724.w));
    let x_1727 : vec3<f32> = u_xlat10;
    let x_1728 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(x_1727, x_1728);
    let x_1730 : f32 = u_xlat50;
    u_xlat50 = max(x_1730, 1.17549435e-38f);
    let x_1732 : f32 = u_xlat50;
    u_xlat50 = inverseSqrt(x_1732);
    let x_1734 : f32 = u_xlat50;
    let x_1736 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1734, x_1734, x_1734) * x_1736);
    let x_1738 : vec4<f32> = u_xlat4;
    let x_1740 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1738.x, x_1738.y, x_1738.z), x_1740);
    let x_1742 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1742, 0.0f, 1.0f);
    let x_1744 : vec3<f32> = u_xlat11;
    let x_1745 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(x_1744, x_1745);
    let x_1747 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1747, 0.0f, 1.0f);
    let x_1749 : f32 = u_xlat50;
    let x_1750 : f32 = u_xlat50;
    u_xlat50 = (x_1749 * x_1750);
    let x_1752 : f32 = u_xlat50;
    let x_1754 : f32 = u_xlat9.x;
    u_xlat50 = ((x_1752 * x_1754) + 1.00001001358032226562f);
    let x_1757 : f32 = u_xlat51;
    let x_1758 : f32 = u_xlat51;
    u_xlat51 = (x_1757 * x_1758);
    let x_1760 : f32 = u_xlat50;
    let x_1761 : f32 = u_xlat50;
    u_xlat50 = (x_1760 * x_1761);
    let x_1763 : f32 = u_xlat51;
    u_xlat51 = max(x_1763, 0.10000000149011611938f);
    let x_1765 : f32 = u_xlat50;
    let x_1766 : f32 = u_xlat51;
    u_xlat50 = (x_1765 * x_1766);
    let x_1768 : f32 = u_xlat49;
    let x_1769 : f32 = u_xlat50;
    u_xlat50 = (x_1768 * x_1769);
    let x_1771 : f32 = u_xlat18;
    let x_1772 : f32 = u_xlat50;
    u_xlat50 = (x_1771 / x_1772);
    let x_1774 : vec3<f32> = u_xlat0;
    let x_1775 : f32 = u_xlat50;
    let x_1778 : vec4<f32> = u_xlat6;
    u_xlat10 = ((x_1774 * vec3<f32>(x_1775, x_1775, x_1775)) + vec3<f32>(x_1778.x, x_1778.y, x_1778.z));
    let x_1781 : vec3<f32> = u_xlat10;
    let x_1782 : vec4<f32> = u_xlat12;
    let x_1785 : vec3<f32> = u_xlat24;
    u_xlat24 = ((x_1781 * vec3<f32>(x_1782.x, x_1782.y, x_1782.z)) + x_1785);

    continuing {
      let x_1787 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1787 + bitcast<u32>(1i));
    }
  }
  let x_1789 : vec3<f32> = u_xlat5;
  let x_1790 : f32 = u_xlat33;
  let x_1793 : vec4<f32> = u_xlat7;
  u_xlat0 = ((x_1789 * vec3<f32>(x_1790, x_1790, x_1790)) + vec3<f32>(x_1793.x, x_1793.y, x_1793.z));
  let x_1796 : vec3<f32> = u_xlat24;
  let x_1797 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1796 + x_1797);
  let x_1799 : vec4<f32> = u_xlat2;
  let x_1801 : f32 = u_xlat31;
  let x_1804 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1799.x, x_1799.y, x_1799.z) * vec3<f32>(x_1801, x_1801, x_1801)) + x_1804);
  let x_1806 : f32 = u_xlat45;
  let x_1807 : f32 = u_xlat45;
  u_xlat45 = (x_1806 * -(x_1807));
  let x_1810 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1810);
  let x_1812 : vec3<f32> = u_xlat0;
  let x_1814 : vec4<f32> = x_29.unity_FogColor;
  u_xlat0 = (x_1812 + -(vec3<f32>(x_1814.x, x_1814.y, x_1814.z)));
  let x_1820 : f32 = u_xlat45;
  let x_1822 : vec3<f32> = u_xlat0;
  let x_1825 : vec4<f32> = x_29.unity_FogColor;
  let x_1827 : vec3<f32> = ((vec3<f32>(x_1820, x_1820, x_1820) * x_1822) + vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
  let x_1828 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1828.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


