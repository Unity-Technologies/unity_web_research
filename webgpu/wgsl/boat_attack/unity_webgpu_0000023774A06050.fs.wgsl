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

var<private> u_xlat5 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_298 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu45 : u32;

var<private> u_xlati45 : i32;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat33 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatb20 : bool;

var<private> u_xlatb35 : vec2<bool>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat50 : f32;

@group(1) @binding(4) var<uniform> x_774 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlatu47 : u32;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlatu20 : u32;

var<private> u_xlati51 : i32;

var<private> u_xlati20 : i32;

@group(1) @binding(1) var<uniform> x_1246 : AdditionalLights;

var<private> u_xlat51 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlati38 : i32;

var<private> u_xlatb53 : bool;

var<private> u_xlatb12 : vec4<bool>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat54 : f32;

var<private> u_xlat53 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb54 : bool;

var<private> u_xlati53 : i32;

var<private> u_xlati54 : i32;

var<private> u_xlati56 : i32;

var<private> u_xlat42 : vec2<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb42 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu18 : u32;

fn main_1() {
  var x_279 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_724 : f32;
  var x_843 : f32;
  var x_854 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1378 : f32;
  var x_1388 : f32;
  var txVec1 : vec3<f32>;
  var x_1811 : f32;
  var x_1824 : f32;
  var x_1872 : f32;
  var x_1883 : vec3<f32>;
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
    let x_285 : vec4<f32> = u_xlat5;
    x_279 = vec3<f32>(x_285.x, x_285.y, x_285.z);
  }
  let x_287 : vec3<f32> = x_279;
  let x_288 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_287.x, x_287.y, x_288.z, x_287.z);
  let x_290 : vec3<f32> = vs_INTERP7;
  let x_300 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres0;
  let x_303 : vec3<f32> = (x_290 + -(vec3<f32>(x_300.x, x_300.y, x_300.z)));
  let x_304 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_307 : vec3<f32> = vs_INTERP7;
  let x_309 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres1;
  let x_312 : vec3<f32> = (x_307 + -(vec3<f32>(x_309.x, x_309.y, x_309.z)));
  let x_313 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : vec3<f32> = vs_INTERP7;
  let x_318 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres2;
  let x_321 : vec3<f32> = (x_316 + -(vec3<f32>(x_318.x, x_318.y, x_318.z)));
  let x_322 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_325 : vec3<f32> = vs_INTERP7;
  let x_327 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres3;
  let x_330 : vec3<f32> = (x_325 + -(vec3<f32>(x_327.x, x_327.y, x_327.z)));
  let x_331 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat5;
  let x_335 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_339 : vec4<f32> = u_xlat6;
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_339.x, x_339.y, x_339.z), vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_345 : vec4<f32> = u_xlat7;
  let x_347 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_351 : vec4<f32> = u_xlat8;
  let x_353 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_351.x, x_351.y, x_351.z), vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_360 : vec4<f32> = u_xlat5;
  let x_363 : vec4<f32> = x_298.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_360 < x_363);
  let x_366 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_366);
  let x_370 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_370);
  let x_374 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_374);
  let x_378 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_378);
  let x_382 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_382);
  let x_387 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_387);
  let x_391 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_391);
  let x_394 : vec4<f32> = u_xlat5;
  let x_396 : vec4<f32> = u_xlat6;
  let x_398 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) + vec3<f32>(x_396.y, x_396.z, x_396.w));
  let x_399 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec4<f32> = u_xlat5;
  let x_404 : vec3<f32> = max(vec3<f32>(x_401.x, x_401.y, x_401.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_405.x, x_404.x, x_404.y, x_404.z);
  let x_407 : vec4<f32> = u_xlat6;
  u_xlat45 = dot(x_407, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_412 : f32 = u_xlat45;
  u_xlat45 = (-(x_412) + 4.0f);
  let x_417 : f32 = u_xlat45;
  u_xlatu45 = u32(x_417);
  let x_421 : u32 = u_xlatu45;
  u_xlati45 = (bitcast<i32>(x_421) << bitcast<u32>(2i));
  let x_424 : vec3<f32> = vs_INTERP7;
  let x_426 : i32 = u_xlati45;
  let x_429 : i32 = u_xlati45;
  let x_433 : vec4<f32> = x_298.x_MainLightWorldToShadow[((x_426 + 1i) / 4i)][((x_429 + 1i) % 4i)];
  let x_435 : vec3<f32> = (vec3<f32>(x_424.y, x_424.y, x_424.y) * vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : i32 = u_xlati45;
  let x_440 : i32 = u_xlati45;
  let x_443 : vec4<f32> = x_298.x_MainLightWorldToShadow[(x_438 / 4i)][(x_440 % 4i)];
  let x_445 : vec3<f32> = vs_INTERP7;
  let x_448 : vec4<f32> = u_xlat5;
  let x_450 : vec3<f32> = ((vec3<f32>(x_443.x, x_443.y, x_443.z) * vec3<f32>(x_445.x, x_445.x, x_445.x)) + vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : i32 = u_xlati45;
  let x_456 : i32 = u_xlati45;
  let x_460 : vec4<f32> = x_298.x_MainLightWorldToShadow[((x_453 + 2i) / 4i)][((x_456 + 2i) % 4i)];
  let x_462 : vec3<f32> = vs_INTERP7;
  let x_465 : vec4<f32> = u_xlat5;
  let x_467 : vec3<f32> = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(x_462.z, x_462.z, x_462.z)) + vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat5;
  let x_472 : i32 = u_xlati45;
  let x_475 : i32 = u_xlati45;
  let x_479 : vec4<f32> = x_298.x_MainLightWorldToShadow[((x_472 + 3i) / 4i)][((x_475 + 3i) % 4i)];
  let x_481 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : f32 = vs_INTERP7.y;
  let x_487 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat45 = (x_485 * x_487);
  let x_490 : f32 = x_29.unity_MatrixV[0i].z;
  let x_492 : f32 = vs_INTERP7.x;
  let x_494 : f32 = u_xlat45;
  u_xlat45 = ((x_490 * x_492) + x_494);
  let x_497 : f32 = x_29.unity_MatrixV[2i].z;
  let x_499 : f32 = vs_INTERP7.z;
  let x_501 : f32 = u_xlat45;
  u_xlat45 = ((x_497 * x_499) + x_501);
  let x_503 : f32 = u_xlat45;
  let x_505 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat45 = (x_503 + x_505);
  let x_507 : f32 = u_xlat45;
  let x_510 : f32 = x_29.x_ProjectionParams.y;
  u_xlat45 = (-(x_507) + -(x_510));
  let x_513 : f32 = u_xlat45;
  u_xlat45 = max(x_513, 0.0f);
  let x_515 : f32 = u_xlat45;
  let x_518 : f32 = x_29.unity_FogParams.x;
  u_xlat45 = (x_515 * x_518);
  u_xlat4.w = 1.0f;
  let x_523 : vec4<f32> = x_107.unity_SHAr;
  let x_524 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_523, x_524);
  let x_529 : vec4<f32> = x_107.unity_SHAg;
  let x_530 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_529, x_530);
  let x_535 : vec4<f32> = x_107.unity_SHAb;
  let x_536 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_535, x_536);
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_539.y, x_539.z, x_539.z, x_539.x) * vec4<f32>(x_541.x, x_541.y, x_541.z, x_541.z));
  let x_546 : vec4<f32> = x_107.unity_SHBr;
  let x_547 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_546, x_547);
  let x_552 : vec4<f32> = x_107.unity_SHBg;
  let x_553 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_552, x_553);
  let x_558 : vec4<f32> = x_107.unity_SHBb;
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_558, x_559);
  let x_563 : f32 = u_xlat4.y;
  let x_565 : f32 = u_xlat4.y;
  u_xlat47 = (x_563 * x_565);
  let x_568 : f32 = u_xlat4.x;
  let x_570 : f32 = u_xlat4.x;
  let x_572 : f32 = u_xlat47;
  u_xlat47 = ((x_568 * x_570) + -(x_572));
  let x_577 : vec4<f32> = x_107.unity_SHC;
  let x_579 : f32 = u_xlat47;
  let x_582 : vec4<f32> = u_xlat8;
  let x_584 : vec3<f32> = ((vec3<f32>(x_577.x, x_577.y, x_577.z) * vec3<f32>(x_579, x_579, x_579)) + vec3<f32>(x_582.x, x_582.y, x_582.z));
  let x_585 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat6;
  let x_589 : vec4<f32> = u_xlat7;
  let x_591 : vec3<f32> = (vec3<f32>(x_587.x, x_587.y, x_587.z) + vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_594 : vec4<f32> = u_xlat6;
  let x_596 : vec3<f32> = max(vec3<f32>(x_594.x, x_594.y, x_594.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_597 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec3<f32> = u_xlat3;
  let x_600 : vec2<f32> = vec2<f32>(x_599.x, x_599.y);
  let x_601 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_600.x, x_600.y, x_601.z);
  let x_603 : vec3<f32> = u_xlat3;
  let x_607 : vec2<f32> = clamp(vec2<f32>(x_603.x, x_603.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_608 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_607.x, x_607.y, x_608.z);
  let x_611 : f32 = u_xlat3.x;
  u_xlat47 = ((-(x_611) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_617 : f32 = u_xlat47;
  u_xlat48 = (-(x_617) + 1.0f);
  let x_620 : vec3<f32> = u_xlat0;
  let x_621 : f32 = u_xlat47;
  let x_623 : vec3<f32> = (x_620 * vec3<f32>(x_621, x_621, x_621));
  let x_624 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_626 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_630 : vec3<f32> = u_xlat3;
  let x_632 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_630.x, x_630.x, x_630.x) * x_632) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_638 : f32 = u_xlat3.y;
  u_xlat47 = (-(x_638) + 1.0f);
  let x_641 : f32 = u_xlat47;
  let x_642 : f32 = u_xlat47;
  u_xlat3.x = (x_641 * x_642);
  let x_646 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_646, 0.0078125f);
  let x_652 : f32 = u_xlat3.x;
  let x_654 : f32 = u_xlat3.x;
  u_xlat49 = (x_652 * x_654);
  let x_657 : f32 = u_xlat48;
  let x_659 : f32 = u_xlat3.y;
  u_xlat18 = (x_657 + x_659);
  let x_661 : f32 = u_xlat18;
  u_xlat18 = min(x_661, 1.0f);
  let x_664 : f32 = u_xlat3.x;
  u_xlat48 = ((x_664 * 4.0f) + 2.0f);
  let x_669 : f32 = u_xlat3.z;
  u_xlat33 = min(x_669, 1.0f);
  let x_672 : vec4<f32> = u_xlat5;
  let x_673 : vec2<f32> = vec2<f32>(x_672.x, x_672.y);
  let x_675 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_673.x, x_673.y, x_675);
  let x_687 : vec3<f32> = txVec0;
  let x_689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_687.xy, x_687.z);
  u_xlat5.x = x_689;
  let x_694 : f32 = x_298.x_MainLightShadowParams.x;
  u_xlat20.x = (-(x_694) + 1.0f);
  let x_699 : f32 = u_xlat5.x;
  let x_701 : f32 = x_298.x_MainLightShadowParams.x;
  let x_704 : f32 = u_xlat20.x;
  u_xlat5.x = ((x_699 * x_701) + x_704);
  let x_709 : f32 = u_xlat5.z;
  u_xlatb20 = (0.0f >= x_709);
  let x_715 : f32 = u_xlat5.z;
  u_xlatb35.x = (x_715 >= 1.0f);
  let x_719 : bool = u_xlatb35.x;
  let x_720 : bool = u_xlatb20;
  u_xlatb20 = (x_719 | x_720);
  let x_722 : bool = u_xlatb20;
  if (x_722) {
    x_724 = 1.0f;
  } else {
    let x_729 : f32 = u_xlat5.x;
    x_724 = x_729;
  }
  let x_730 : f32 = x_724;
  u_xlat5.x = x_730;
  let x_732 : vec3<f32> = vs_INTERP7;
  let x_734 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat20 = (x_732 + -(x_734));
  let x_737 : vec3<f32> = u_xlat20;
  let x_738 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_737, x_738);
  let x_744 : f32 = u_xlat20.x;
  let x_746 : f32 = x_298.x_MainLightShadowParams.z;
  let x_749 : f32 = x_298.x_MainLightShadowParams.w;
  u_xlat35.x = ((x_744 * x_746) + x_749);
  let x_753 : f32 = u_xlat35.x;
  u_xlat35.x = clamp(x_753, 0.0f, 1.0f);
  let x_758 : f32 = u_xlat5.x;
  u_xlat50 = (-(x_758) + 1.0f);
  let x_762 : f32 = u_xlat35.x;
  let x_763 : f32 = u_xlat50;
  let x_766 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_762 * x_763) + x_766);
  let x_776 : f32 = x_774.x_MainLightCookieTextureFormat;
  u_xlatb35.x = !((x_776 == -1.0f));
  let x_780 : bool = u_xlatb35.x;
  if (x_780) {
    let x_783 : vec3<f32> = vs_INTERP7;
    let x_786 : vec4<f32> = x_774.x_MainLightWorldToLight[1i];
    u_xlat35 = (vec2<f32>(x_783.y, x_783.y) * vec2<f32>(x_786.x, x_786.y));
    let x_790 : vec4<f32> = x_774.x_MainLightWorldToLight[0i];
    let x_792 : vec3<f32> = vs_INTERP7;
    let x_795 : vec2<f32> = u_xlat35;
    u_xlat35 = ((vec2<f32>(x_790.x, x_790.y) * vec2<f32>(x_792.x, x_792.x)) + x_795);
    let x_798 : vec4<f32> = x_774.x_MainLightWorldToLight[2i];
    let x_800 : vec3<f32> = vs_INTERP7;
    let x_803 : vec2<f32> = u_xlat35;
    u_xlat35 = ((vec2<f32>(x_798.x, x_798.y) * vec2<f32>(x_800.z, x_800.z)) + x_803);
    let x_805 : vec2<f32> = u_xlat35;
    let x_807 : vec4<f32> = x_774.x_MainLightWorldToLight[3i];
    u_xlat35 = (x_805 + vec2<f32>(x_807.x, x_807.y));
    let x_810 : vec2<f32> = u_xlat35;
    u_xlat35 = ((x_810 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_820 : vec2<f32> = u_xlat35;
    let x_822 : f32 = x_29.x_GlobalMipBias.x;
    let x_823 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_820, x_822);
    u_xlat8 = x_823;
    let x_825 : f32 = x_774.x_MainLightCookieTextureFormat;
    let x_827 : f32 = x_774.x_MainLightCookieTextureFormat;
    let x_829 : f32 = x_774.x_MainLightCookieTextureFormat;
    let x_831 : f32 = x_774.x_MainLightCookieTextureFormat;
    let x_832 : vec4<f32> = vec4<f32>(x_825, x_827, x_829, x_831);
    let x_839 : vec4<bool> = (vec4<f32>(x_832.x, x_832.y, x_832.z, x_832.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb35 = vec2<bool>(x_839.x, x_839.y);
    let x_842 : bool = u_xlatb35.y;
    if (x_842) {
      let x_847 : f32 = u_xlat8.w;
      x_843 = x_847;
    } else {
      let x_850 : f32 = u_xlat8.x;
      x_843 = x_850;
    }
    let x_851 : f32 = x_843;
    u_xlat50 = x_851;
    let x_853 : bool = u_xlatb35.x;
    if (x_853) {
      let x_857 : vec4<f32> = u_xlat8;
      x_854 = vec3<f32>(x_857.x, x_857.y, x_857.z);
    } else {
      let x_860 : f32 = u_xlat50;
      x_854 = vec3<f32>(x_860, x_860, x_860);
    }
    let x_862 : vec3<f32> = x_854;
    let x_863 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
  }
  let x_869 : vec4<f32> = u_xlat8;
  let x_872 : vec4<f32> = x_29.x_MainLightColor;
  let x_874 : vec3<f32> = (vec3<f32>(x_869.x, x_869.y, x_869.z) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat1;
  let x_880 : vec4<f32> = u_xlat4;
  u_xlat35.x = dot(-(vec3<f32>(x_877.x, x_877.y, x_877.w)), vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_885 : f32 = u_xlat35.x;
  let x_887 : f32 = u_xlat35.x;
  u_xlat35.x = (x_885 + x_887);
  let x_891 : vec4<f32> = u_xlat4;
  let x_893 : vec2<f32> = u_xlat35;
  let x_897 : vec4<f32> = u_xlat1;
  let x_900 : vec3<f32> = ((vec3<f32>(x_891.x, x_891.y, x_891.z) * -(vec3<f32>(x_893.x, x_893.x, x_893.x))) + -(vec3<f32>(x_897.x, x_897.y, x_897.w)));
  let x_901 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  let x_903 : vec4<f32> = u_xlat4;
  let x_905 : vec4<f32> = u_xlat1;
  u_xlat35.x = dot(vec3<f32>(x_903.x, x_903.y, x_903.z), vec3<f32>(x_905.x, x_905.y, x_905.w));
  let x_910 : f32 = u_xlat35.x;
  u_xlat35.x = clamp(x_910, 0.0f, 1.0f);
  let x_914 : f32 = u_xlat35.x;
  u_xlat35.x = (-(x_914) + 1.0f);
  let x_919 : f32 = u_xlat35.x;
  let x_921 : f32 = u_xlat35.x;
  u_xlat35.x = (x_919 * x_921);
  let x_925 : f32 = u_xlat35.x;
  let x_927 : f32 = u_xlat35.x;
  u_xlat35.x = (x_925 * x_927);
  let x_930 : f32 = u_xlat47;
  u_xlat50 = ((-(x_930) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_936 : f32 = u_xlat47;
  let x_937 : f32 = u_xlat50;
  u_xlat2.w = (x_936 * x_937);
  let x_940 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_940 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_953 : vec4<f32> = u_xlat9;
  let x_956 : f32 = u_xlat2.w;
  let x_957 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_953.x, x_953.y, x_953.z), x_956);
  u_xlat9 = x_957;
  let x_959 : f32 = u_xlat9.w;
  u_xlat47 = (x_959 + -1.0f);
  let x_962 : f32 = x_107.unity_SpecCube0_HDR.w;
  let x_963 : f32 = u_xlat47;
  u_xlat47 = ((x_962 * x_963) + 1.0f);
  let x_966 : f32 = u_xlat47;
  u_xlat47 = max(x_966, 0.0f);
  let x_968 : f32 = u_xlat47;
  u_xlat47 = log2(x_968);
  let x_970 : f32 = u_xlat47;
  let x_972 : f32 = x_107.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_970 * x_972);
  let x_974 : f32 = u_xlat47;
  u_xlat47 = exp2(x_974);
  let x_976 : f32 = u_xlat47;
  let x_978 : f32 = x_107.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_976 * x_978);
  let x_980 : vec4<f32> = u_xlat9;
  let x_982 : f32 = u_xlat47;
  let x_984 : vec3<f32> = (vec3<f32>(x_980.x, x_980.y, x_980.z) * vec3<f32>(x_982, x_982, x_982));
  let x_985 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_988 : vec3<f32> = u_xlat3;
  let x_990 : vec3<f32> = u_xlat3;
  u_xlat10 = ((vec2<f32>(x_988.x, x_988.x) * vec2<f32>(x_990.x, x_990.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_996 : f32 = u_xlat10.y;
  u_xlat47 = (1.0f / x_996);
  let x_999 : vec3<f32> = u_xlat0;
  let x_1001 : f32 = u_xlat18;
  u_xlat25 = (-(x_999) + vec3<f32>(x_1001, x_1001, x_1001));
  let x_1004 : vec2<f32> = u_xlat35;
  let x_1006 : vec3<f32> = u_xlat25;
  let x_1008 : vec3<f32> = u_xlat0;
  u_xlat25 = ((vec3<f32>(x_1004.x, x_1004.x, x_1004.x) * x_1006) + x_1008);
  let x_1010 : f32 = u_xlat47;
  let x_1012 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1010, x_1010, x_1010) * x_1012);
  let x_1014 : vec4<f32> = u_xlat9;
  let x_1016 : vec3<f32> = u_xlat25;
  let x_1017 : vec3<f32> = (vec3<f32>(x_1014.x, x_1014.y, x_1014.z) * x_1016);
  let x_1018 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat6;
  let x_1022 : vec4<f32> = u_xlat7;
  let x_1025 : vec4<f32> = u_xlat9;
  let x_1027 : vec3<f32> = ((vec3<f32>(x_1020.x, x_1020.y, x_1020.z) * vec3<f32>(x_1022.x, x_1022.y, x_1022.z)) + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1031 : f32 = u_xlat5.x;
  let x_1033 : f32 = x_107.unity_LightData.z;
  u_xlat47 = (x_1031 * x_1033);
  let x_1035 : vec4<f32> = u_xlat4;
  let x_1038 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1035.x, x_1035.y, x_1035.z), vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1043 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1043, 0.0f, 1.0f);
  let x_1046 : f32 = u_xlat47;
  let x_1048 : f32 = u_xlat3.x;
  u_xlat47 = (x_1046 * x_1048);
  let x_1050 : f32 = u_xlat47;
  let x_1052 : vec4<f32> = u_xlat8;
  let x_1054 : vec3<f32> = (vec3<f32>(x_1050, x_1050, x_1050) * vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
  let x_1055 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1054.x, x_1055.y, x_1054.y, x_1054.z);
  let x_1057 : vec4<f32> = u_xlat1;
  let x_1060 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1062 : vec3<f32> = (vec3<f32>(x_1057.x, x_1057.y, x_1057.w) + vec3<f32>(x_1060.x, x_1060.y, x_1060.z));
  let x_1063 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
  let x_1065 : vec4<f32> = u_xlat8;
  let x_1067 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_1065.x, x_1065.y, x_1065.z), vec3<f32>(x_1067.x, x_1067.y, x_1067.z));
  let x_1070 : f32 = u_xlat47;
  u_xlat47 = max(x_1070, 1.17549435e-38f);
  let x_1073 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_1073);
  let x_1075 : f32 = u_xlat47;
  let x_1077 : vec4<f32> = u_xlat8;
  let x_1079 : vec3<f32> = (vec3<f32>(x_1075, x_1075, x_1075) * vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
  let x_1080 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
  let x_1082 : vec4<f32> = u_xlat4;
  let x_1084 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_1082.x, x_1082.y, x_1082.z), vec3<f32>(x_1084.x, x_1084.y, x_1084.z));
  let x_1087 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1087, 0.0f, 1.0f);
  let x_1090 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1092 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_1090.x, x_1090.y, x_1090.z), vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1097 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1097, 0.0f, 1.0f);
  let x_1100 : f32 = u_xlat47;
  let x_1101 : f32 = u_xlat47;
  u_xlat47 = (x_1100 * x_1101);
  let x_1103 : f32 = u_xlat47;
  let x_1105 : f32 = u_xlat10.x;
  u_xlat47 = ((x_1103 * x_1105) + 1.00001001358032226562f);
  let x_1110 : f32 = u_xlat3.x;
  let x_1112 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1110 * x_1112);
  let x_1115 : f32 = u_xlat47;
  let x_1116 : f32 = u_xlat47;
  u_xlat47 = (x_1115 * x_1116);
  let x_1119 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1119, 0.10000000149011611938f);
  let x_1123 : f32 = u_xlat47;
  let x_1125 : f32 = u_xlat3.x;
  u_xlat47 = (x_1123 * x_1125);
  let x_1127 : f32 = u_xlat48;
  let x_1128 : f32 = u_xlat47;
  u_xlat47 = (x_1127 * x_1128);
  let x_1130 : f32 = u_xlat49;
  let x_1131 : f32 = u_xlat47;
  u_xlat47 = (x_1130 / x_1131);
  let x_1133 : vec3<f32> = u_xlat0;
  let x_1134 : f32 = u_xlat47;
  let x_1137 : vec4<f32> = u_xlat7;
  let x_1139 : vec3<f32> = ((x_1133 * vec3<f32>(x_1134, x_1134, x_1134)) + vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
  let x_1140 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
  let x_1142 : vec4<f32> = u_xlat5;
  let x_1144 : vec4<f32> = u_xlat8;
  let x_1146 : vec3<f32> = (vec3<f32>(x_1142.x, x_1142.z, x_1142.w) * vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
  let x_1147 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1146.x, x_1147.y, x_1146.y, x_1146.z);
  let x_1150 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1152 : f32 = x_107.unity_LightData.y;
  u_xlat47 = min(x_1150, x_1152);
  let x_1155 : f32 = u_xlat47;
  u_xlatu47 = bitcast<u32>(i32(x_1155));
  let x_1159 : f32 = u_xlat20.x;
  let x_1162 : f32 = x_298.x_AdditionalShadowFadeParams.x;
  let x_1165 : f32 = x_298.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1159 * x_1162) + x_1165);
  let x_1169 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1169, 0.0f, 1.0f);
  let x_1174 : f32 = x_774.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1176 : f32 = x_774.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1178 : f32 = x_774.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1180 : f32 = x_774.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1181 : vec4<f32> = vec4<f32>(x_1174, x_1176, x_1178, x_1180);
  let x_1188 : vec4<bool> = (vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1181.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_1188.x, x_1188.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1200 : u32 = u_xlatu_loop_1;
    let x_1201 : u32 = u_xlatu47;
    if ((x_1200 < x_1201)) {
    } else {
      break;
    }
    let x_1204 : u32 = u_xlatu_loop_1;
    u_xlatu20 = (x_1204 >> 2u);
    let x_1207 : u32 = u_xlatu_loop_1;
    u_xlati51 = bitcast<i32>((x_1207 & 3u));
    let x_1210 : u32 = u_xlatu20;
    let x_1213 : vec4<f32> = x_107.unity_LightIndices[bitcast<i32>(x_1210)];
    let x_1223 : i32 = u_xlati51;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1228 : vec4<u32> = indexable[x_1223];
    u_xlat20.x = dot(x_1213, bitcast<vec4<f32>>(x_1228));
    let x_1234 : f32 = u_xlat20.x;
    u_xlati20 = i32(x_1234);
    let x_1236 : vec3<f32> = vs_INTERP7;
    let x_1247 : i32 = u_xlati20;
    let x_1249 : vec4<f32> = x_1246.x_AdditionalLightsPosition[x_1247];
    let x_1252 : i32 = u_xlati20;
    let x_1254 : vec4<f32> = x_1246.x_AdditionalLightsPosition[x_1252];
    u_xlat25 = ((-(x_1236) * vec3<f32>(x_1249.w, x_1249.w, x_1249.w)) + vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
    let x_1258 : vec3<f32> = u_xlat25;
    let x_1259 : vec3<f32> = u_xlat25;
    u_xlat51 = dot(x_1258, x_1259);
    let x_1261 : f32 = u_xlat51;
    u_xlat51 = max(x_1261, 0.00006103515625f);
    let x_1265 : f32 = u_xlat51;
    u_xlat52 = inverseSqrt(x_1265);
    let x_1268 : f32 = u_xlat52;
    let x_1270 : vec3<f32> = u_xlat25;
    u_xlat11 = (vec3<f32>(x_1268, x_1268, x_1268) * x_1270);
    let x_1273 : f32 = u_xlat51;
    u_xlat38 = (1.0f / x_1273);
    let x_1275 : f32 = u_xlat51;
    let x_1276 : i32 = u_xlati20;
    let x_1278 : f32 = x_1246.x_AdditionalLightsAttenuation[x_1276].x;
    u_xlat51 = (x_1275 * x_1278);
    let x_1280 : f32 = u_xlat51;
    let x_1282 : f32 = u_xlat51;
    u_xlat51 = ((-(x_1280) * x_1282) + 1.0f);
    let x_1285 : f32 = u_xlat51;
    u_xlat51 = max(x_1285, 0.0f);
    let x_1287 : f32 = u_xlat51;
    let x_1288 : f32 = u_xlat51;
    u_xlat51 = (x_1287 * x_1288);
    let x_1290 : f32 = u_xlat51;
    let x_1291 : f32 = u_xlat38;
    u_xlat51 = (x_1290 * x_1291);
    let x_1293 : i32 = u_xlati20;
    let x_1295 : vec4<f32> = x_1246.x_AdditionalLightsSpotDir[x_1293];
    let x_1297 : vec3<f32> = u_xlat11;
    u_xlat38 = dot(vec3<f32>(x_1295.x, x_1295.y, x_1295.z), x_1297);
    let x_1299 : f32 = u_xlat38;
    let x_1300 : i32 = u_xlati20;
    let x_1302 : f32 = x_1246.x_AdditionalLightsAttenuation[x_1300].z;
    let x_1304 : i32 = u_xlati20;
    let x_1306 : f32 = x_1246.x_AdditionalLightsAttenuation[x_1304].w;
    u_xlat38 = ((x_1299 * x_1302) + x_1306);
    let x_1308 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1308, 0.0f, 1.0f);
    let x_1310 : f32 = u_xlat38;
    let x_1311 : f32 = u_xlat38;
    u_xlat38 = (x_1310 * x_1311);
    let x_1313 : f32 = u_xlat51;
    let x_1314 : f32 = u_xlat38;
    u_xlat51 = (x_1313 * x_1314);
    let x_1318 : i32 = u_xlati20;
    let x_1320 : f32 = x_298.x_AdditionalShadowParams[x_1318].w;
    u_xlati38 = i32(x_1320);
    let x_1323 : i32 = u_xlati38;
    u_xlatb53 = (x_1323 >= 0i);
    let x_1325 : bool = u_xlatb53;
    if (x_1325) {
      let x_1329 : i32 = u_xlati20;
      let x_1331 : f32 = x_298.x_AdditionalShadowParams[x_1329].z;
      u_xlatb53 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1331, x_1331, x_1331, x_1331))));
      let x_1335 : bool = u_xlatb53;
      if (x_1335) {
        let x_1339 : vec3<f32> = u_xlat11;
        let x_1342 : vec3<f32> = u_xlat11;
        let x_1345 : vec4<bool> = (abs(vec4<f32>(x_1339.z, x_1339.z, x_1339.y, x_1339.z)) >= abs(vec4<f32>(x_1342.x, x_1342.y, x_1342.x, x_1342.x)));
        let x_1347 : vec3<bool> = vec3<bool>(x_1345.x, x_1345.y, x_1345.z);
        let x_1348 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_1347.x, x_1347.y, x_1347.z, x_1348.w);
        let x_1351 : bool = u_xlatb12.y;
        let x_1353 : bool = u_xlatb12.x;
        u_xlatb53 = (x_1351 & x_1353);
        let x_1355 : vec3<f32> = u_xlat11;
        let x_1358 : vec4<bool> = (-(vec4<f32>(x_1355.z, x_1355.y, x_1355.z, x_1355.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1359 : vec3<bool> = vec3<bool>(x_1358.x, x_1358.y, x_1358.w);
        let x_1360 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_1359.x, x_1359.y, x_1360.z, x_1359.z);
        let x_1364 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_1364);
        let x_1369 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_1369);
        let x_1374 : bool = u_xlatb12.w;
        u_xlat54 = select(0.0f, 1.0f, x_1374);
        let x_1377 : bool = u_xlatb12.z;
        if (x_1377) {
          let x_1382 : f32 = u_xlat12.y;
          x_1378 = x_1382;
        } else {
          let x_1384 : f32 = u_xlat54;
          x_1378 = x_1384;
        }
        let x_1385 : f32 = x_1378;
        u_xlat54 = x_1385;
        let x_1387 : bool = u_xlatb53;
        if (x_1387) {
          let x_1392 : f32 = u_xlat12.x;
          x_1388 = x_1392;
        } else {
          let x_1394 : f32 = u_xlat54;
          x_1388 = x_1394;
        }
        let x_1395 : f32 = x_1388;
        u_xlat53 = x_1395;
        let x_1396 : i32 = u_xlati20;
        let x_1398 : f32 = x_298.x_AdditionalShadowParams[x_1396].w;
        u_xlat54 = trunc(x_1398);
        let x_1400 : f32 = u_xlat53;
        let x_1401 : f32 = u_xlat54;
        u_xlat53 = (x_1400 + x_1401);
        let x_1403 : f32 = u_xlat53;
        u_xlati38 = i32(x_1403);
      }
      let x_1405 : i32 = u_xlati38;
      u_xlati38 = (x_1405 << bitcast<u32>(2i));
      let x_1407 : vec3<f32> = vs_INTERP7;
      let x_1410 : i32 = u_xlati38;
      let x_1413 : i32 = u_xlati38;
      let x_1417 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_1410 + 1i) / 4i)][((x_1413 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_1407.y, x_1407.y, x_1407.y, x_1407.y) * x_1417);
      let x_1419 : i32 = u_xlati38;
      let x_1421 : i32 = u_xlati38;
      let x_1424 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[(x_1419 / 4i)][(x_1421 % 4i)];
      let x_1425 : vec3<f32> = vs_INTERP7;
      let x_1428 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_1424 * vec4<f32>(x_1425.x, x_1425.x, x_1425.x, x_1425.x)) + x_1428);
      let x_1430 : i32 = u_xlati38;
      let x_1433 : i32 = u_xlati38;
      let x_1437 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_1430 + 2i) / 4i)][((x_1433 + 2i) % 4i)];
      let x_1438 : vec3<f32> = vs_INTERP7;
      let x_1441 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_1437 * vec4<f32>(x_1438.z, x_1438.z, x_1438.z, x_1438.z)) + x_1441);
      let x_1443 : vec4<f32> = u_xlat12;
      let x_1444 : i32 = u_xlati38;
      let x_1447 : i32 = u_xlati38;
      let x_1451 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_1444 + 3i) / 4i)][((x_1447 + 3i) % 4i)];
      u_xlat12 = (x_1443 + x_1451);
      let x_1453 : vec4<f32> = u_xlat12;
      let x_1455 : vec4<f32> = u_xlat12;
      let x_1457 : vec3<f32> = (vec3<f32>(x_1453.x, x_1453.y, x_1453.z) / vec3<f32>(x_1455.w, x_1455.w, x_1455.w));
      let x_1458 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
      let x_1461 : vec4<f32> = u_xlat12;
      let x_1462 : vec2<f32> = vec2<f32>(x_1461.x, x_1461.y);
      let x_1464 : f32 = u_xlat12.z;
      txVec1 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
      let x_1472 : vec3<f32> = txVec1;
      let x_1474 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
      u_xlat38 = x_1474;
      let x_1475 : i32 = u_xlati20;
      let x_1477 : f32 = x_298.x_AdditionalShadowParams[x_1475].x;
      u_xlat53 = (1.0f + -(x_1477));
      let x_1480 : f32 = u_xlat38;
      let x_1481 : i32 = u_xlati20;
      let x_1483 : f32 = x_298.x_AdditionalShadowParams[x_1481].x;
      let x_1485 : f32 = u_xlat53;
      u_xlat38 = ((x_1480 * x_1483) + x_1485);
      let x_1488 : f32 = u_xlat12.z;
      u_xlatb53 = (0.0f >= x_1488);
      let x_1492 : f32 = u_xlat12.z;
      u_xlatb54 = (x_1492 >= 1.0f);
      let x_1494 : bool = u_xlatb53;
      let x_1495 : bool = u_xlatb54;
      u_xlatb53 = (x_1494 | x_1495);
      let x_1497 : bool = u_xlatb53;
      let x_1498 : f32 = u_xlat38;
      u_xlat38 = select(x_1498, 1.0f, x_1497);
    } else {
      u_xlat38 = 1.0f;
    }
    let x_1501 : f32 = u_xlat38;
    u_xlat53 = (-(x_1501) + 1.0f);
    let x_1505 : f32 = u_xlat3.x;
    let x_1506 : f32 = u_xlat53;
    let x_1508 : f32 = u_xlat38;
    u_xlat38 = ((x_1505 * x_1506) + x_1508);
    let x_1511 : i32 = u_xlati20;
    u_xlati53 = (1i << bitcast<u32>((x_1511 & 31i)));
    let x_1515 : i32 = u_xlati53;
    let x_1518 : f32 = x_774.x_AdditionalLightsCookieEnableBits;
    u_xlati53 = bitcast<i32>((bitcast<u32>(x_1515) & bitcast<u32>(x_1518)));
    let x_1522 : i32 = u_xlati53;
    if ((x_1522 != 0i)) {
      let x_1526 : i32 = u_xlati20;
      let x_1528 : f32 = x_774.x_AdditionalLightsLightTypes[x_1526].el;
      u_xlati53 = i32(x_1528);
      let x_1531 : i32 = u_xlati53;
      u_xlati54 = select(1i, 0i, (x_1531 != 0i));
      let x_1535 : i32 = u_xlati20;
      u_xlati56 = (x_1535 << bitcast<u32>(2i));
      let x_1537 : i32 = u_xlati54;
      if ((x_1537 != 0i)) {
        let x_1541 : vec3<f32> = vs_INTERP7;
        let x_1543 : i32 = u_xlati56;
        let x_1546 : i32 = u_xlati56;
        let x_1550 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_1543 + 1i) / 4i)][((x_1546 + 1i) % 4i)];
        let x_1552 : vec3<f32> = (vec3<f32>(x_1541.y, x_1541.y, x_1541.y) * vec3<f32>(x_1550.x, x_1550.y, x_1550.w));
        let x_1553 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1552.x, x_1552.y, x_1552.z, x_1553.w);
        let x_1555 : i32 = u_xlati56;
        let x_1557 : i32 = u_xlati56;
        let x_1560 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[(x_1555 / 4i)][(x_1557 % 4i)];
        let x_1562 : vec3<f32> = vs_INTERP7;
        let x_1565 : vec4<f32> = u_xlat12;
        let x_1567 : vec3<f32> = ((vec3<f32>(x_1560.x, x_1560.y, x_1560.w) * vec3<f32>(x_1562.x, x_1562.x, x_1562.x)) + vec3<f32>(x_1565.x, x_1565.y, x_1565.z));
        let x_1568 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1567.x, x_1567.y, x_1567.z, x_1568.w);
        let x_1570 : i32 = u_xlati56;
        let x_1573 : i32 = u_xlati56;
        let x_1577 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_1570 + 2i) / 4i)][((x_1573 + 2i) % 4i)];
        let x_1579 : vec3<f32> = vs_INTERP7;
        let x_1582 : vec4<f32> = u_xlat12;
        let x_1584 : vec3<f32> = ((vec3<f32>(x_1577.x, x_1577.y, x_1577.w) * vec3<f32>(x_1579.z, x_1579.z, x_1579.z)) + vec3<f32>(x_1582.x, x_1582.y, x_1582.z));
        let x_1585 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
        let x_1587 : vec4<f32> = u_xlat12;
        let x_1589 : i32 = u_xlati56;
        let x_1592 : i32 = u_xlati56;
        let x_1596 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_1589 + 3i) / 4i)][((x_1592 + 3i) % 4i)];
        let x_1598 : vec3<f32> = (vec3<f32>(x_1587.x, x_1587.y, x_1587.z) + vec3<f32>(x_1596.x, x_1596.y, x_1596.w));
        let x_1599 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
        let x_1601 : vec4<f32> = u_xlat12;
        let x_1603 : vec4<f32> = u_xlat12;
        let x_1605 : vec2<f32> = (vec2<f32>(x_1601.x, x_1601.y) / vec2<f32>(x_1603.z, x_1603.z));
        let x_1606 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1605.x, x_1605.y, x_1606.z, x_1606.w);
        let x_1608 : vec4<f32> = u_xlat12;
        let x_1611 : vec2<f32> = ((vec2<f32>(x_1608.x, x_1608.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1612 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1611.x, x_1611.y, x_1612.z, x_1612.w);
        let x_1614 : vec4<f32> = u_xlat12;
        let x_1618 : vec2<f32> = clamp(vec2<f32>(x_1614.x, x_1614.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1619 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1618.x, x_1618.y, x_1619.z, x_1619.w);
        let x_1621 : i32 = u_xlati20;
        let x_1623 : vec4<f32> = x_774.x_AdditionalLightsCookieAtlasUVRects[x_1621];
        let x_1625 : vec4<f32> = u_xlat12;
        let x_1628 : i32 = u_xlati20;
        let x_1630 : vec4<f32> = x_774.x_AdditionalLightsCookieAtlasUVRects[x_1628];
        let x_1632 : vec2<f32> = ((vec2<f32>(x_1623.x, x_1623.y) * vec2<f32>(x_1625.x, x_1625.y)) + vec2<f32>(x_1630.z, x_1630.w));
        let x_1633 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1632.x, x_1632.y, x_1633.z, x_1633.w);
      } else {
        let x_1636 : i32 = u_xlati53;
        u_xlatb53 = (x_1636 == 1i);
        let x_1638 : bool = u_xlatb53;
        u_xlati53 = select(0i, 1i, x_1638);
        let x_1640 : i32 = u_xlati53;
        if ((x_1640 != 0i)) {
          let x_1645 : vec3<f32> = vs_INTERP7;
          let x_1647 : i32 = u_xlati56;
          let x_1650 : i32 = u_xlati56;
          let x_1654 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_1647 + 1i) / 4i)][((x_1650 + 1i) % 4i)];
          u_xlat42 = (vec2<f32>(x_1645.y, x_1645.y) * vec2<f32>(x_1654.x, x_1654.y));
          let x_1657 : i32 = u_xlati56;
          let x_1659 : i32 = u_xlati56;
          let x_1662 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[(x_1657 / 4i)][(x_1659 % 4i)];
          let x_1664 : vec3<f32> = vs_INTERP7;
          let x_1667 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1662.x, x_1662.y) * vec2<f32>(x_1664.x, x_1664.x)) + x_1667);
          let x_1669 : i32 = u_xlati56;
          let x_1672 : i32 = u_xlati56;
          let x_1676 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_1669 + 2i) / 4i)][((x_1672 + 2i) % 4i)];
          let x_1678 : vec3<f32> = vs_INTERP7;
          let x_1681 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1676.x, x_1676.y) * vec2<f32>(x_1678.z, x_1678.z)) + x_1681);
          let x_1683 : vec2<f32> = u_xlat42;
          let x_1684 : i32 = u_xlati56;
          let x_1687 : i32 = u_xlati56;
          let x_1691 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_1684 + 3i) / 4i)][((x_1687 + 3i) % 4i)];
          u_xlat42 = (x_1683 + vec2<f32>(x_1691.x, x_1691.y));
          let x_1694 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_1694 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1697 : vec2<f32> = u_xlat42;
          u_xlat42 = fract(x_1697);
          let x_1699 : i32 = u_xlati20;
          let x_1701 : vec4<f32> = x_774.x_AdditionalLightsCookieAtlasUVRects[x_1699];
          let x_1703 : vec2<f32> = u_xlat42;
          let x_1705 : i32 = u_xlati20;
          let x_1707 : vec4<f32> = x_774.x_AdditionalLightsCookieAtlasUVRects[x_1705];
          let x_1709 : vec2<f32> = ((vec2<f32>(x_1701.x, x_1701.y) * x_1703) + vec2<f32>(x_1707.z, x_1707.w));
          let x_1710 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1709.x, x_1709.y, x_1710.z, x_1710.w);
        } else {
          let x_1714 : vec3<f32> = vs_INTERP7;
          let x_1716 : i32 = u_xlati56;
          let x_1719 : i32 = u_xlati56;
          let x_1723 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_1716 + 1i) / 4i)][((x_1719 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1714.y, x_1714.y, x_1714.y, x_1714.y) * x_1723);
          let x_1725 : i32 = u_xlati56;
          let x_1727 : i32 = u_xlati56;
          let x_1730 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[(x_1725 / 4i)][(x_1727 % 4i)];
          let x_1731 : vec3<f32> = vs_INTERP7;
          let x_1734 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1730 * vec4<f32>(x_1731.x, x_1731.x, x_1731.x, x_1731.x)) + x_1734);
          let x_1736 : i32 = u_xlati56;
          let x_1739 : i32 = u_xlati56;
          let x_1743 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_1736 + 2i) / 4i)][((x_1739 + 2i) % 4i)];
          let x_1744 : vec3<f32> = vs_INTERP7;
          let x_1747 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1743 * vec4<f32>(x_1744.z, x_1744.z, x_1744.z, x_1744.z)) + x_1747);
          let x_1749 : vec4<f32> = u_xlat13;
          let x_1750 : i32 = u_xlati56;
          let x_1753 : i32 = u_xlati56;
          let x_1757 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_1750 + 3i) / 4i)][((x_1753 + 3i) % 4i)];
          u_xlat13 = (x_1749 + x_1757);
          let x_1759 : vec4<f32> = u_xlat13;
          let x_1761 : vec4<f32> = u_xlat13;
          let x_1763 : vec3<f32> = (vec3<f32>(x_1759.x, x_1759.y, x_1759.z) / vec3<f32>(x_1761.w, x_1761.w, x_1761.w));
          let x_1764 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1763.x, x_1763.y, x_1763.z, x_1764.w);
          let x_1766 : vec4<f32> = u_xlat13;
          let x_1768 : vec4<f32> = u_xlat13;
          u_xlat53 = dot(vec3<f32>(x_1766.x, x_1766.y, x_1766.z), vec3<f32>(x_1768.x, x_1768.y, x_1768.z));
          let x_1771 : f32 = u_xlat53;
          u_xlat53 = inverseSqrt(x_1771);
          let x_1773 : f32 = u_xlat53;
          let x_1775 : vec4<f32> = u_xlat13;
          let x_1777 : vec3<f32> = (vec3<f32>(x_1773, x_1773, x_1773) * vec3<f32>(x_1775.x, x_1775.y, x_1775.z));
          let x_1778 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1778.w);
          let x_1780 : vec4<f32> = u_xlat13;
          u_xlat53 = dot(abs(vec3<f32>(x_1780.x, x_1780.y, x_1780.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1785 : f32 = u_xlat53;
          u_xlat53 = max(x_1785, 0.00000099999999747524f);
          let x_1788 : f32 = u_xlat53;
          u_xlat53 = (1.0f / x_1788);
          let x_1791 : f32 = u_xlat53;
          let x_1793 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1791, x_1791, x_1791) * vec3<f32>(x_1793.z, x_1793.x, x_1793.y));
          let x_1797 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1797);
          let x_1801 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1801, 0.0f, 1.0f);
          let x_1805 : vec3<f32> = u_xlat14;
          let x_1807 : vec4<bool> = (vec4<f32>(x_1805.y, x_1805.z, x_1805.y, x_1805.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb42 = vec2<bool>(x_1807.x, x_1807.y);
          let x_1810 : bool = u_xlatb42.x;
          if (x_1810) {
            let x_1815 : f32 = u_xlat14.x;
            x_1811 = x_1815;
          } else {
            let x_1818 : f32 = u_xlat14.x;
            x_1811 = -(x_1818);
          }
          let x_1820 : f32 = x_1811;
          u_xlat42.x = x_1820;
          let x_1823 : bool = u_xlatb42.y;
          if (x_1823) {
            let x_1828 : f32 = u_xlat14.x;
            x_1824 = x_1828;
          } else {
            let x_1831 : f32 = u_xlat14.x;
            x_1824 = -(x_1831);
          }
          let x_1833 : f32 = x_1824;
          u_xlat42.y = x_1833;
          let x_1835 : vec4<f32> = u_xlat13;
          let x_1837 : f32 = u_xlat53;
          let x_1840 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1835.x, x_1835.y) * vec2<f32>(x_1837, x_1837)) + x_1840);
          let x_1842 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_1842 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1845 : vec2<f32> = u_xlat42;
          u_xlat42 = clamp(x_1845, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1849 : i32 = u_xlati20;
          let x_1851 : vec4<f32> = x_774.x_AdditionalLightsCookieAtlasUVRects[x_1849];
          let x_1853 : vec2<f32> = u_xlat42;
          let x_1855 : i32 = u_xlati20;
          let x_1857 : vec4<f32> = x_774.x_AdditionalLightsCookieAtlasUVRects[x_1855];
          let x_1859 : vec2<f32> = ((vec2<f32>(x_1851.x, x_1851.y) * x_1853) + vec2<f32>(x_1857.z, x_1857.w));
          let x_1860 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1859.x, x_1859.y, x_1860.z, x_1860.w);
        }
      }
      let x_1867 : vec4<f32> = u_xlat12;
      let x_1869 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1867.x, x_1867.y), 0.0f);
      u_xlat12 = x_1869;
      let x_1871 : bool = u_xlatb8.y;
      if (x_1871) {
        let x_1876 : f32 = u_xlat12.w;
        x_1872 = x_1876;
      } else {
        let x_1879 : f32 = u_xlat12.x;
        x_1872 = x_1879;
      }
      let x_1880 : f32 = x_1872;
      u_xlat53 = x_1880;
      let x_1882 : bool = u_xlatb8.x;
      if (x_1882) {
        let x_1886 : vec4<f32> = u_xlat12;
        x_1883 = vec3<f32>(x_1886.x, x_1886.y, x_1886.z);
      } else {
        let x_1889 : f32 = u_xlat53;
        x_1883 = vec3<f32>(x_1889, x_1889, x_1889);
      }
      let x_1891 : vec3<f32> = x_1883;
      let x_1892 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1891.x, x_1891.y, x_1891.z, x_1892.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1898 : vec4<f32> = u_xlat12;
    let x_1900 : i32 = u_xlati20;
    let x_1902 : vec4<f32> = x_1246.x_AdditionalLightsColor[x_1900];
    let x_1904 : vec3<f32> = (vec3<f32>(x_1898.x, x_1898.y, x_1898.z) * vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
    let x_1905 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1904.x, x_1904.y, x_1904.z, x_1905.w);
    let x_1907 : f32 = u_xlat51;
    let x_1908 : f32 = u_xlat38;
    u_xlat20.x = (x_1907 * x_1908);
    let x_1911 : vec4<f32> = u_xlat4;
    let x_1913 : vec3<f32> = u_xlat11;
    u_xlat51 = dot(vec3<f32>(x_1911.x, x_1911.y, x_1911.z), x_1913);
    let x_1915 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1915, 0.0f, 1.0f);
    let x_1918 : f32 = u_xlat20.x;
    let x_1919 : f32 = u_xlat51;
    u_xlat20.x = (x_1918 * x_1919);
    let x_1922 : vec3<f32> = u_xlat20;
    let x_1924 : vec4<f32> = u_xlat12;
    let x_1926 : vec3<f32> = (vec3<f32>(x_1922.x, x_1922.x, x_1922.x) * vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
    let x_1927 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1927.w);
    let x_1929 : vec3<f32> = u_xlat25;
    let x_1930 : f32 = u_xlat52;
    let x_1933 : vec4<f32> = u_xlat1;
    u_xlat25 = ((x_1929 * vec3<f32>(x_1930, x_1930, x_1930)) + vec3<f32>(x_1933.x, x_1933.y, x_1933.w));
    let x_1936 : vec3<f32> = u_xlat25;
    let x_1937 : vec3<f32> = u_xlat25;
    u_xlat20.x = dot(x_1936, x_1937);
    let x_1941 : f32 = u_xlat20.x;
    u_xlat20.x = max(x_1941, 1.17549435e-38f);
    let x_1945 : f32 = u_xlat20.x;
    u_xlat20.x = inverseSqrt(x_1945);
    let x_1948 : vec3<f32> = u_xlat20;
    let x_1950 : vec3<f32> = u_xlat25;
    u_xlat25 = (vec3<f32>(x_1948.x, x_1948.x, x_1948.x) * x_1950);
    let x_1952 : vec4<f32> = u_xlat4;
    let x_1954 : vec3<f32> = u_xlat25;
    u_xlat20.x = dot(vec3<f32>(x_1952.x, x_1952.y, x_1952.z), x_1954);
    let x_1958 : f32 = u_xlat20.x;
    u_xlat20.x = clamp(x_1958, 0.0f, 1.0f);
    let x_1961 : vec3<f32> = u_xlat11;
    let x_1962 : vec3<f32> = u_xlat25;
    u_xlat51 = dot(x_1961, x_1962);
    let x_1964 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1964, 0.0f, 1.0f);
    let x_1967 : f32 = u_xlat20.x;
    let x_1969 : f32 = u_xlat20.x;
    u_xlat20.x = (x_1967 * x_1969);
    let x_1973 : f32 = u_xlat20.x;
    let x_1975 : f32 = u_xlat10.x;
    u_xlat20.x = ((x_1973 * x_1975) + 1.00001001358032226562f);
    let x_1979 : f32 = u_xlat51;
    let x_1980 : f32 = u_xlat51;
    u_xlat51 = (x_1979 * x_1980);
    let x_1983 : f32 = u_xlat20.x;
    let x_1985 : f32 = u_xlat20.x;
    u_xlat20.x = (x_1983 * x_1985);
    let x_1988 : f32 = u_xlat51;
    u_xlat51 = max(x_1988, 0.10000000149011611938f);
    let x_1991 : f32 = u_xlat20.x;
    let x_1992 : f32 = u_xlat51;
    u_xlat20.x = (x_1991 * x_1992);
    let x_1995 : f32 = u_xlat48;
    let x_1997 : f32 = u_xlat20.x;
    u_xlat20.x = (x_1995 * x_1997);
    let x_2000 : f32 = u_xlat49;
    let x_2002 : f32 = u_xlat20.x;
    u_xlat20.x = (x_2000 / x_2002);
    let x_2005 : vec3<f32> = u_xlat0;
    let x_2006 : vec3<f32> = u_xlat20;
    let x_2009 : vec4<f32> = u_xlat7;
    u_xlat25 = ((x_2005 * vec3<f32>(x_2006.x, x_2006.x, x_2006.x)) + vec3<f32>(x_2009.x, x_2009.y, x_2009.z));
    let x_2012 : vec3<f32> = u_xlat25;
    let x_2013 : vec4<f32> = u_xlat12;
    let x_2016 : vec4<f32> = u_xlat9;
    let x_2018 : vec3<f32> = ((x_2012 * vec3<f32>(x_2013.x, x_2013.y, x_2013.z)) + vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
    let x_2019 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2018.x, x_2018.y, x_2018.z, x_2019.w);

    continuing {
      let x_2021 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2021 + bitcast<u32>(1i));
    }
  }
  let x_2023 : vec4<f32> = u_xlat6;
  let x_2025 : f32 = u_xlat33;
  let x_2028 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_2023.x, x_2023.y, x_2023.z) * vec3<f32>(x_2025, x_2025, x_2025)) + vec3<f32>(x_2028.x, x_2028.z, x_2028.w));
  let x_2031 : vec4<f32> = u_xlat9;
  let x_2033 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2031.x, x_2031.y, x_2031.z) + x_2033);
  let x_2035 : vec4<f32> = u_xlat2;
  let x_2037 : f32 = u_xlat31;
  let x_2040 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_2035.x, x_2035.y, x_2035.z) * vec3<f32>(x_2037, x_2037, x_2037)) + x_2040);
  let x_2042 : f32 = u_xlat45;
  let x_2043 : f32 = u_xlat45;
  u_xlat45 = (x_2042 * -(x_2043));
  let x_2046 : f32 = u_xlat45;
  u_xlat45 = exp2(x_2046);
  let x_2048 : vec3<f32> = u_xlat0;
  let x_2050 : vec4<f32> = x_29.unity_FogColor;
  u_xlat0 = (x_2048 + -(vec3<f32>(x_2050.x, x_2050.y, x_2050.z)));
  let x_2056 : f32 = u_xlat45;
  let x_2058 : vec3<f32> = u_xlat0;
  let x_2061 : vec4<f32> = x_29.unity_FogColor;
  let x_2063 : vec3<f32> = ((vec3<f32>(x_2056, x_2056, x_2056) * x_2058) + vec3<f32>(x_2061.x, x_2061.y, x_2061.z));
  let x_2064 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2063.x, x_2063.y, x_2063.z, x_2064.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_INTERP5_param : vec4<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


