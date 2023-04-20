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
  /* @offset(160) */
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

@group(0) @binding(7) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(9) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_8BA53EED : sampler;

var<private> u_xlat45 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(10) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(19) var samplerTexture2D_AB84E4D0 : sampler;

var<private> u_xlat31 : f32;

@group(1) @binding(2) var<uniform> x_109 : UnityPerDraw;

var<private> u_xlatb31 : bool;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(8) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_F0A81025 : sampler;

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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat33 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat49 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat50 : f32;

@group(1) @binding(3) var<uniform> x_457 : LightShadows;

var<private> u_xlatb50 : bool;

var<private> u_xlatb51 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat51 : f32;

@group(1) @binding(4) var<uniform> x_521 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlatu45 : u32;

var<private> u_xlatu49 : u32;

var<private> u_xlati50 : i32;

var<private> u_xlati49 : i32;

var<private> u_xlat10 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_967 : AdditionalLights;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlati52 : i32;

var<private> u_xlatb38 : bool;

var<private> u_xlatb12 : vec4<bool>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat38 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb53 : bool;

var<private> u_xlati38 : i32;

var<private> u_xlati53 : i32;

var<private> u_xlati55 : i32;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb42 : vec2<bool>;

var<private> u_xlat42 : vec2<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu3 : u32;

var<private> u_xlatb49 : bool;

fn main_1() {
  var x_268 : f32;
  var x_280 : f32;
  var x_293 : f32;
  var txVec0 : vec3<f32>;
  var x_606 : f32;
  var x_617 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1098 : f32;
  var x_1108 : f32;
  var txVec1 : vec3<f32>;
  var x_1546 : f32;
  var x_1559 : f32;
  var x_1607 : f32;
  var x_1619 : vec3<f32>;
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
  u_xlat2 = vec3<f32>(x_99.x, x_99.y, x_99.z);
  let x_101 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_101 * vec3<f32>(14.0f, 14.0f, 14.0f));
  let x_113 : vec4<f32> = x_109.unity_ObjectToWorld[3i];
  let x_116 : vec4<f32> = x_109.unity_ObjectToWorld[3i];
  u_xlat31 = dot(vec3<f32>(x_113.x, x_113.y, x_113.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : f32 = u_xlat31;
  u_xlat31 = sqrt(x_119);
  let x_121 : f32 = u_xlat31;
  u_xlat31 = fract(x_121);
  let x_123 : f32 = u_xlat31;
  let x_126 : f32 = x_29.x_NightFade;
  u_xlat31 = (x_123 + x_126);
  let x_131 : f32 = u_xlat31;
  u_xlatb31 = (x_131 >= 1.0f);
  let x_133 : bool = u_xlatb31;
  u_xlat31 = select(0.0f, 1.0f, x_133);
  let x_142 : vec4<f32> = vs_INTERP5;
  let x_145 : f32 = x_29.x_GlobalMipBias.x;
  let x_146 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_142.x, x_142.y), x_145);
  u_xlat3 = vec3<f32>(x_146.x, x_146.w, x_146.y);
  let x_153 : f32 = vs_INTERP4.w;
  u_xlatb46 = (0.0f < x_153);
  let x_156 : bool = u_xlatb46;
  u_xlat46 = select(-1.0f, 1.0f, x_156);
  let x_160 : f32 = x_109.unity_WorldTransformParams.w;
  u_xlatb47 = (x_160 >= 0.0f);
  let x_163 : bool = u_xlatb47;
  u_xlat47 = select(-1.0f, 1.0f, x_163);
  let x_165 : f32 = u_xlat46;
  let x_166 : f32 = u_xlat47;
  u_xlat46 = (x_165 * x_166);
  let x_169 : vec4<f32> = vs_INTERP4;
  let x_173 : vec3<f32> = vs_INTERP8;
  let x_175 : vec3<f32> = (vec3<f32>(x_169.y, x_169.z, x_169.x) * vec3<f32>(x_173.z, x_173.x, x_173.y));
  let x_176 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_178 : vec3<f32> = vs_INTERP8;
  let x_180 : vec4<f32> = vs_INTERP4;
  let x_183 : vec4<f32> = u_xlat4;
  let x_186 : vec3<f32> = ((vec3<f32>(x_178.y, x_178.z, x_178.x) * vec3<f32>(x_180.z, x_180.x, x_180.y)) + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_189 : f32 = u_xlat46;
  let x_191 : vec4<f32> = u_xlat4;
  let x_193 : vec3<f32> = (vec3<f32>(x_189, x_189, x_189) * vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat1;
  let x_198 : vec4<f32> = u_xlat4;
  let x_200 : vec3<f32> = (vec3<f32>(x_196.y, x_196.y, x_196.y) * vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_201 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_203 : vec4<f32> = u_xlat1;
  let x_205 : vec4<f32> = vs_INTERP4;
  let x_208 : vec4<f32> = u_xlat4;
  let x_210 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.x, x_203.x) * vec3<f32>(x_205.x, x_205.y, x_205.z)) + vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_211.z, x_210.z);
  let x_213 : f32 = u_xlat45;
  let x_215 : vec3<f32> = vs_INTERP8;
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = ((vec3<f32>(x_213, x_213, x_213) * x_215) + vec3<f32>(x_217.x, x_217.y, x_217.w));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_219.z);
  let x_222 : vec4<f32> = u_xlat1;
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat45 = dot(vec3<f32>(x_222.x, x_222.y, x_222.w), vec3<f32>(x_224.x, x_224.y, x_224.w));
  let x_227 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_227);
  let x_229 : f32 = u_xlat45;
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = (vec3<f32>(x_229, x_229, x_229) * vec3<f32>(x_231.x, x_231.y, x_231.w));
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_233.x, x_233.y, x_234.z, x_233.z);
  let x_239 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb45 = (x_239 == 0.0f);
  let x_242 : vec3<f32> = vs_INTERP7;
  let x_247 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_248 : vec3<f32> = (-(x_242) + x_247);
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec4<f32> = u_xlat4;
  let x_253 : vec4<f32> = u_xlat4;
  u_xlat47 = dot(vec3<f32>(x_251.x, x_251.y, x_251.z), vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_256);
  let x_258 : f32 = u_xlat47;
  let x_260 : vec4<f32> = u_xlat4;
  let x_262 : vec3<f32> = (vec3<f32>(x_258, x_258, x_258) * vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : bool = u_xlatb45;
  if (x_266) {
    let x_272 : f32 = u_xlat4.x;
    x_268 = x_272;
  } else {
    let x_276 : f32 = x_29.unity_MatrixV[0i].z;
    x_268 = x_276;
  }
  let x_277 : f32 = x_268;
  u_xlat5.x = x_277;
  let x_279 : bool = u_xlatb45;
  if (x_279) {
    let x_285 : f32 = u_xlat4.y;
    x_280 = x_285;
  } else {
    let x_289 : f32 = x_29.unity_MatrixV[1i].z;
    x_280 = x_289;
  }
  let x_290 : f32 = x_280;
  u_xlat5.y = x_290;
  let x_292 : bool = u_xlatb45;
  if (x_292) {
    let x_297 : f32 = u_xlat4.z;
    x_293 = x_297;
  } else {
    let x_301 : f32 = x_29.unity_MatrixV[2i].z;
    x_293 = x_301;
  }
  let x_302 : f32 = x_293;
  u_xlat5.z = x_302;
  let x_311 : vec2<f32> = vs_INTERP0;
  let x_313 : f32 = x_29.x_GlobalMipBias.x;
  let x_314 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_311, x_313);
  u_xlat4 = x_314;
  let x_320 : vec2<f32> = vs_INTERP0;
  let x_322 : f32 = x_29.x_GlobalMipBias.x;
  let x_323 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_320, x_322);
  u_xlat6 = vec3<f32>(x_323.x, x_323.y, x_323.z);
  let x_325 : vec4<f32> = u_xlat4;
  let x_329 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_330 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat1;
  let x_334 : vec4<f32> = u_xlat4;
  u_xlat45 = dot(vec3<f32>(x_332.x, x_332.y, x_332.w), vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : f32 = u_xlat45;
  u_xlat45 = (x_337 + 0.5f);
  let x_340 : f32 = u_xlat45;
  let x_342 : vec3<f32> = u_xlat6;
  let x_343 : vec3<f32> = (vec3<f32>(x_340, x_340, x_340) * x_342);
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_347 : f32 = u_xlat4.w;
  u_xlat45 = max(x_347, 0.00009999999747378752f);
  let x_350 : vec4<f32> = u_xlat4;
  let x_352 : f32 = u_xlat45;
  let x_354 : vec3<f32> = (vec3<f32>(x_350.x, x_350.y, x_350.z) / vec3<f32>(x_352, x_352, x_352));
  let x_355 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec3<f32> = u_xlat3;
  let x_358 : vec2<f32> = vec2<f32>(x_357.x, x_357.y);
  let x_359 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_358.x, x_358.y, x_359.z);
  let x_361 : vec3<f32> = u_xlat3;
  let x_365 : vec2<f32> = clamp(vec2<f32>(x_361.x, x_361.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_366 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_365.x, x_365.y, x_366.z);
  let x_369 : f32 = u_xlat3.x;
  u_xlat45 = ((-(x_369) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_374 : f32 = u_xlat45;
  let x_377 : f32 = u_xlat3.y;
  u_xlat47 = (-(x_374) + x_377);
  let x_379 : f32 = u_xlat45;
  let x_381 : vec3<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_379, x_379, x_379) * x_381);
  let x_383 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_383 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_387 : vec3<f32> = u_xlat3;
  let x_389 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_387.x, x_387.x, x_387.x) * x_389) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_395 : f32 = u_xlat3.y;
  u_xlat45 = (-(x_395) + 1.0f);
  let x_398 : f32 = u_xlat45;
  let x_399 : f32 = u_xlat45;
  u_xlat3.x = (x_398 * x_399);
  let x_403 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_403, 0.0078125f);
  let x_409 : f32 = u_xlat3.x;
  let x_411 : f32 = u_xlat3.x;
  u_xlat18 = (x_409 * x_411);
  let x_413 : f32 = u_xlat47;
  u_xlat47 = (x_413 + 1.0f);
  let x_415 : f32 = u_xlat47;
  u_xlat47 = min(x_415, 1.0f);
  let x_419 : f32 = u_xlat3.x;
  u_xlat48 = ((x_419 * 4.0f) + 2.0f);
  let x_425 : f32 = u_xlat3.z;
  u_xlat33 = min(x_425, 1.0f);
  let x_430 : vec4<f32> = vs_INTERP3;
  let x_431 : vec2<f32> = vec2<f32>(x_430.x, x_430.y);
  let x_433 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_431.x, x_431.y, x_433);
  let x_446 : vec3<f32> = txVec0;
  let x_448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_446.xy, x_446.z);
  u_xlat49 = x_448;
  let x_460 : f32 = x_457.x_MainLightShadowParams.x;
  u_xlat50 = (-(x_460) + 1.0f);
  let x_463 : f32 = u_xlat49;
  let x_465 : f32 = x_457.x_MainLightShadowParams.x;
  let x_467 : f32 = u_xlat50;
  u_xlat49 = ((x_463 * x_465) + x_467);
  let x_471 : f32 = vs_INTERP3.z;
  u_xlatb50 = (0.0f >= x_471);
  let x_475 : f32 = vs_INTERP3.z;
  u_xlatb51 = (x_475 >= 1.0f);
  let x_477 : bool = u_xlatb50;
  let x_478 : bool = u_xlatb51;
  u_xlatb50 = (x_477 | x_478);
  let x_480 : bool = u_xlatb50;
  let x_481 : f32 = u_xlat49;
  u_xlat49 = select(x_481, 1.0f, x_480);
  let x_484 : vec3<f32> = vs_INTERP7;
  let x_486 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_488 : vec3<f32> = (x_484 + -(x_486));
  let x_489 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat7;
  let x_493 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_491.x, x_491.y, x_491.z), vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_497 : f32 = u_xlat50;
  let x_499 : f32 = x_457.x_MainLightShadowParams.z;
  let x_502 : f32 = x_457.x_MainLightShadowParams.w;
  u_xlat51 = ((x_497 * x_499) + x_502);
  let x_504 : f32 = u_xlat51;
  u_xlat51 = clamp(x_504, 0.0f, 1.0f);
  let x_506 : f32 = u_xlat49;
  u_xlat7.x = (-(x_506) + 1.0f);
  let x_510 : f32 = u_xlat51;
  let x_512 : f32 = u_xlat7.x;
  let x_514 : f32 = u_xlat49;
  u_xlat49 = ((x_510 * x_512) + x_514);
  let x_523 : f32 = x_521.x_MainLightCookieTextureFormat;
  u_xlatb51 = !((x_523 == -1.0f));
  let x_525 : bool = u_xlatb51;
  if (x_525) {
    let x_528 : vec3<f32> = vs_INTERP7;
    let x_531 : vec4<f32> = x_521.x_MainLightWorldToLight[1i];
    let x_533 : vec2<f32> = (vec2<f32>(x_528.y, x_528.y) * vec2<f32>(x_531.x, x_531.y));
    let x_534 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_533.x, x_533.y, x_534.z, x_534.w);
    let x_537 : vec4<f32> = x_521.x_MainLightWorldToLight[0i];
    let x_539 : vec3<f32> = vs_INTERP7;
    let x_542 : vec4<f32> = u_xlat7;
    let x_544 : vec2<f32> = ((vec2<f32>(x_537.x, x_537.y) * vec2<f32>(x_539.x, x_539.x)) + vec2<f32>(x_542.x, x_542.y));
    let x_545 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_544.x, x_544.y, x_545.z, x_545.w);
    let x_548 : vec4<f32> = x_521.x_MainLightWorldToLight[2i];
    let x_550 : vec3<f32> = vs_INTERP7;
    let x_553 : vec4<f32> = u_xlat7;
    let x_555 : vec2<f32> = ((vec2<f32>(x_548.x, x_548.y) * vec2<f32>(x_550.z, x_550.z)) + vec2<f32>(x_553.x, x_553.y));
    let x_556 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
    let x_558 : vec4<f32> = u_xlat7;
    let x_561 : vec4<f32> = x_521.x_MainLightWorldToLight[3i];
    let x_563 : vec2<f32> = (vec2<f32>(x_558.x, x_558.y) + vec2<f32>(x_561.x, x_561.y));
    let x_564 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_563.x, x_563.y, x_564.z, x_564.w);
    let x_566 : vec4<f32> = u_xlat7;
    let x_570 : vec2<f32> = ((vec2<f32>(x_566.x, x_566.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_571 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
    let x_578 : vec4<f32> = u_xlat7;
    let x_581 : f32 = x_29.x_GlobalMipBias.x;
    let x_582 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_578.x, x_578.y), x_581);
    u_xlat7 = x_582;
    let x_587 : f32 = x_521.x_MainLightCookieTextureFormat;
    let x_589 : f32 = x_521.x_MainLightCookieTextureFormat;
    let x_591 : f32 = x_521.x_MainLightCookieTextureFormat;
    let x_593 : f32 = x_521.x_MainLightCookieTextureFormat;
    let x_594 : vec4<f32> = vec4<f32>(x_587, x_589, x_591, x_593);
    let x_602 : vec4<bool> = (vec4<f32>(x_594.x, x_594.y, x_594.z, x_594.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_602.x, x_602.y);
    let x_605 : bool = u_xlatb8.y;
    if (x_605) {
      let x_610 : f32 = u_xlat7.w;
      x_606 = x_610;
    } else {
      let x_613 : f32 = u_xlat7.x;
      x_606 = x_613;
    }
    let x_614 : f32 = x_606;
    u_xlat51 = x_614;
    let x_616 : bool = u_xlatb8.x;
    if (x_616) {
      let x_620 : vec4<f32> = u_xlat7;
      x_617 = vec3<f32>(x_620.x, x_620.y, x_620.z);
    } else {
      let x_623 : f32 = u_xlat51;
      x_617 = vec3<f32>(x_623, x_623, x_623);
    }
    let x_625 : vec3<f32> = x_617;
    let x_626 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_632 : vec4<f32> = u_xlat7;
  let x_635 : vec4<f32> = x_29.x_MainLightColor;
  let x_637 : vec3<f32> = (vec3<f32>(x_632.x, x_632.y, x_632.z) * vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_640 : vec3<f32> = u_xlat5;
  let x_642 : vec4<f32> = u_xlat1;
  u_xlat51 = dot(-(x_640), vec3<f32>(x_642.x, x_642.y, x_642.w));
  let x_645 : f32 = u_xlat51;
  let x_646 : f32 = u_xlat51;
  u_xlat51 = (x_645 + x_646);
  let x_649 : vec4<f32> = u_xlat1;
  let x_651 : f32 = u_xlat51;
  let x_655 : vec3<f32> = u_xlat5;
  let x_657 : vec3<f32> = ((vec3<f32>(x_649.x, x_649.y, x_649.w) * -(vec3<f32>(x_651, x_651, x_651))) + -(x_655));
  let x_658 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec4<f32> = u_xlat1;
  let x_662 : vec3<f32> = u_xlat5;
  u_xlat51 = dot(vec3<f32>(x_660.x, x_660.y, x_660.w), x_662);
  let x_664 : f32 = u_xlat51;
  u_xlat51 = clamp(x_664, 0.0f, 1.0f);
  let x_666 : f32 = u_xlat51;
  u_xlat51 = (-(x_666) + 1.0f);
  let x_669 : f32 = u_xlat51;
  let x_670 : f32 = u_xlat51;
  u_xlat51 = (x_669 * x_670);
  let x_672 : f32 = u_xlat51;
  let x_673 : f32 = u_xlat51;
  u_xlat51 = (x_672 * x_673);
  let x_676 : f32 = u_xlat45;
  u_xlat52 = ((-(x_676) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_682 : f32 = u_xlat45;
  let x_683 : f32 = u_xlat52;
  u_xlat45 = (x_682 * x_683);
  let x_685 : f32 = u_xlat45;
  u_xlat45 = (x_685 * 6.0f);
  let x_696 : vec4<f32> = u_xlat8;
  let x_698 : f32 = u_xlat45;
  let x_699 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_696.x, x_696.y, x_696.z), x_698);
  u_xlat8 = x_699;
  let x_701 : f32 = u_xlat8.w;
  u_xlat45 = (x_701 + -1.0f);
  let x_704 : f32 = x_109.unity_SpecCube0_HDR.w;
  let x_705 : f32 = u_xlat45;
  u_xlat45 = ((x_704 * x_705) + 1.0f);
  let x_708 : f32 = u_xlat45;
  u_xlat45 = max(x_708, 0.0f);
  let x_710 : f32 = u_xlat45;
  u_xlat45 = log2(x_710);
  let x_712 : f32 = u_xlat45;
  let x_714 : f32 = x_109.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_712 * x_714);
  let x_716 : f32 = u_xlat45;
  u_xlat45 = exp2(x_716);
  let x_718 : f32 = u_xlat45;
  let x_720 : f32 = x_109.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_718 * x_720);
  let x_722 : vec4<f32> = u_xlat8;
  let x_724 : f32 = u_xlat45;
  let x_726 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) * vec3<f32>(x_724, x_724, x_724));
  let x_727 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_731 : vec3<f32> = u_xlat3;
  let x_733 : vec3<f32> = u_xlat3;
  u_xlat9 = ((vec2<f32>(x_731.x, x_731.x) * vec2<f32>(x_733.x, x_733.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_739 : f32 = u_xlat9.y;
  u_xlat45 = (1.0f / x_739);
  let x_742 : vec3<f32> = u_xlat0;
  let x_744 : f32 = u_xlat47;
  u_xlat24 = (-(x_742) + vec3<f32>(x_744, x_744, x_744));
  let x_747 : f32 = u_xlat51;
  let x_749 : vec3<f32> = u_xlat24;
  let x_751 : vec3<f32> = u_xlat0;
  u_xlat24 = ((vec3<f32>(x_747, x_747, x_747) * x_749) + x_751);
  let x_753 : f32 = u_xlat45;
  let x_755 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_753, x_753, x_753) * x_755);
  let x_757 : vec4<f32> = u_xlat8;
  let x_759 : vec3<f32> = u_xlat24;
  let x_760 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) * x_759);
  let x_761 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat4;
  let x_765 : vec3<f32> = u_xlat6;
  let x_767 : vec4<f32> = u_xlat8;
  let x_769 : vec3<f32> = ((vec3<f32>(x_763.x, x_763.y, x_763.z) * x_765) + vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : f32 = u_xlat49;
  let x_774 : f32 = x_109.unity_LightData.z;
  u_xlat45 = (x_772 * x_774);
  let x_776 : vec4<f32> = u_xlat1;
  let x_779 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat47 = dot(vec3<f32>(x_776.x, x_776.y, x_776.w), vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : f32 = u_xlat47;
  u_xlat47 = clamp(x_782, 0.0f, 1.0f);
  let x_784 : f32 = u_xlat45;
  let x_785 : f32 = u_xlat47;
  u_xlat45 = (x_784 * x_785);
  let x_787 : f32 = u_xlat45;
  let x_789 : vec4<f32> = u_xlat7;
  let x_791 : vec3<f32> = (vec3<f32>(x_787, x_787, x_787) * vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : vec3<f32> = u_xlat5;
  let x_796 : vec4<f32> = x_29.x_MainLightPosition;
  let x_798 : vec3<f32> = (x_794 + vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : vec4<f32> = u_xlat8;
  let x_803 : vec4<f32> = u_xlat8;
  u_xlat45 = dot(vec3<f32>(x_801.x, x_801.y, x_801.z), vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : f32 = u_xlat45;
  u_xlat45 = max(x_806, 1.17549435e-38f);
  let x_809 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_809);
  let x_811 : f32 = u_xlat45;
  let x_813 : vec4<f32> = u_xlat8;
  let x_815 : vec3<f32> = (vec3<f32>(x_811, x_811, x_811) * vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat1;
  let x_820 : vec4<f32> = u_xlat8;
  u_xlat45 = dot(vec3<f32>(x_818.x, x_818.y, x_818.w), vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : f32 = u_xlat45;
  u_xlat45 = clamp(x_823, 0.0f, 1.0f);
  let x_826 : vec4<f32> = x_29.x_MainLightPosition;
  let x_828 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_826.x, x_826.y, x_826.z), vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : f32 = u_xlat47;
  u_xlat47 = clamp(x_831, 0.0f, 1.0f);
  let x_833 : f32 = u_xlat45;
  let x_834 : f32 = u_xlat45;
  u_xlat45 = (x_833 * x_834);
  let x_836 : f32 = u_xlat45;
  let x_838 : f32 = u_xlat9.x;
  u_xlat45 = ((x_836 * x_838) + 1.00001001358032226562f);
  let x_842 : f32 = u_xlat47;
  let x_843 : f32 = u_xlat47;
  u_xlat47 = (x_842 * x_843);
  let x_845 : f32 = u_xlat45;
  let x_846 : f32 = u_xlat45;
  u_xlat45 = (x_845 * x_846);
  let x_848 : f32 = u_xlat47;
  u_xlat47 = max(x_848, 0.10000000149011611938f);
  let x_851 : f32 = u_xlat45;
  let x_852 : f32 = u_xlat47;
  u_xlat45 = (x_851 * x_852);
  let x_854 : f32 = u_xlat48;
  let x_855 : f32 = u_xlat45;
  u_xlat45 = (x_854 * x_855);
  let x_857 : f32 = u_xlat18;
  let x_858 : f32 = u_xlat45;
  u_xlat45 = (x_857 / x_858);
  let x_860 : vec3<f32> = u_xlat0;
  let x_861 : f32 = u_xlat45;
  let x_864 : vec3<f32> = u_xlat6;
  let x_865 : vec3<f32> = ((x_860 * vec3<f32>(x_861, x_861, x_861)) + x_864);
  let x_866 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec4<f32> = u_xlat7;
  let x_870 : vec4<f32> = u_xlat8;
  let x_872 : vec3<f32> = (vec3<f32>(x_868.x, x_868.y, x_868.z) * vec3<f32>(x_870.x, x_870.y, x_870.z));
  let x_873 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_876 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_878 : f32 = x_109.unity_LightData.y;
  u_xlat45 = min(x_876, x_878);
  let x_882 : f32 = u_xlat45;
  u_xlatu45 = bitcast<u32>(i32(x_882));
  let x_885 : f32 = u_xlat50;
  let x_888 : f32 = x_457.x_AdditionalShadowFadeParams.x;
  let x_891 : f32 = x_457.x_AdditionalShadowFadeParams.y;
  u_xlat47 = ((x_885 * x_888) + x_891);
  let x_893 : f32 = u_xlat47;
  u_xlat47 = clamp(x_893, 0.0f, 1.0f);
  let x_896 : f32 = x_521.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_898 : f32 = x_521.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_900 : f32 = x_521.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_902 : f32 = x_521.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_903 : vec4<f32> = vec4<f32>(x_896, x_898, x_900, x_902);
  let x_909 : vec4<bool> = (vec4<f32>(x_903.x, x_903.y, x_903.z, x_903.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_909.x, x_909.y);
  u_xlat24.x = 0.0f;
  u_xlat24.y = 0.0f;
  u_xlat24.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_921 : u32 = u_xlatu_loop_1;
    let x_922 : u32 = u_xlatu45;
    if ((x_921 < x_922)) {
    } else {
      break;
    }
    let x_925 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_925 >> 2u);
    let x_929 : u32 = u_xlatu_loop_1;
    u_xlati50 = bitcast<i32>((x_929 & 3u));
    let x_932 : u32 = u_xlatu49;
    let x_935 : vec4<f32> = x_109.unity_LightIndices[bitcast<i32>(x_932)];
    let x_945 : i32 = u_xlati50;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_950 : vec4<u32> = indexable[x_945];
    u_xlat49 = dot(x_935, bitcast<vec4<f32>>(x_950));
    let x_954 : f32 = u_xlat49;
    u_xlati49 = i32(x_954);
    let x_957 : vec3<f32> = vs_INTERP7;
    let x_968 : i32 = u_xlati49;
    let x_970 : vec4<f32> = x_967.x_AdditionalLightsPosition[x_968];
    let x_973 : i32 = u_xlati49;
    let x_975 : vec4<f32> = x_967.x_AdditionalLightsPosition[x_973];
    u_xlat10 = ((-(x_957) * vec3<f32>(x_970.w, x_970.w, x_970.w)) + vec3<f32>(x_975.x, x_975.y, x_975.z));
    let x_978 : vec3<f32> = u_xlat10;
    let x_979 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(x_978, x_979);
    let x_981 : f32 = u_xlat50;
    u_xlat50 = max(x_981, 0.00006103515625f);
    let x_984 : f32 = u_xlat50;
    u_xlat51 = inverseSqrt(x_984);
    let x_987 : f32 = u_xlat51;
    let x_989 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_987, x_987, x_987) * x_989);
    let x_991 : f32 = u_xlat50;
    u_xlat52 = (1.0f / x_991);
    let x_993 : f32 = u_xlat50;
    let x_994 : i32 = u_xlati49;
    let x_996 : f32 = x_967.x_AdditionalLightsAttenuation[x_994].x;
    u_xlat50 = (x_993 * x_996);
    let x_998 : f32 = u_xlat50;
    let x_1000 : f32 = u_xlat50;
    u_xlat50 = ((-(x_998) * x_1000) + 1.0f);
    let x_1003 : f32 = u_xlat50;
    u_xlat50 = max(x_1003, 0.0f);
    let x_1005 : f32 = u_xlat50;
    let x_1006 : f32 = u_xlat50;
    u_xlat50 = (x_1005 * x_1006);
    let x_1008 : f32 = u_xlat50;
    let x_1009 : f32 = u_xlat52;
    u_xlat50 = (x_1008 * x_1009);
    let x_1011 : i32 = u_xlati49;
    let x_1013 : vec4<f32> = x_967.x_AdditionalLightsSpotDir[x_1011];
    let x_1015 : vec3<f32> = u_xlat11;
    u_xlat52 = dot(vec3<f32>(x_1013.x, x_1013.y, x_1013.z), x_1015);
    let x_1017 : f32 = u_xlat52;
    let x_1018 : i32 = u_xlati49;
    let x_1020 : f32 = x_967.x_AdditionalLightsAttenuation[x_1018].z;
    let x_1022 : i32 = u_xlati49;
    let x_1024 : f32 = x_967.x_AdditionalLightsAttenuation[x_1022].w;
    u_xlat52 = ((x_1017 * x_1020) + x_1024);
    let x_1026 : f32 = u_xlat52;
    u_xlat52 = clamp(x_1026, 0.0f, 1.0f);
    let x_1028 : f32 = u_xlat52;
    let x_1029 : f32 = u_xlat52;
    u_xlat52 = (x_1028 * x_1029);
    let x_1031 : f32 = u_xlat50;
    let x_1032 : f32 = u_xlat52;
    u_xlat50 = (x_1031 * x_1032);
    let x_1036 : i32 = u_xlati49;
    let x_1038 : f32 = x_457.x_AdditionalShadowParams[x_1036].w;
    u_xlati52 = i32(x_1038);
    let x_1041 : i32 = u_xlati52;
    u_xlatb38 = (x_1041 >= 0i);
    let x_1043 : bool = u_xlatb38;
    if (x_1043) {
      let x_1047 : i32 = u_xlati49;
      let x_1049 : f32 = x_457.x_AdditionalShadowParams[x_1047].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1049, x_1049, x_1049, x_1049))));
      let x_1053 : bool = u_xlatb38;
      if (x_1053) {
        let x_1058 : vec3<f32> = u_xlat11;
        let x_1061 : vec3<f32> = u_xlat11;
        let x_1064 : vec4<bool> = (abs(vec4<f32>(x_1058.z, x_1058.z, x_1058.y, x_1058.z)) >= abs(vec4<f32>(x_1061.x, x_1061.y, x_1061.x, x_1061.x)));
        let x_1066 : vec3<bool> = vec3<bool>(x_1064.x, x_1064.y, x_1064.z);
        let x_1067 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
        let x_1070 : bool = u_xlatb12.y;
        let x_1072 : bool = u_xlatb12.x;
        u_xlatb38 = (x_1070 & x_1072);
        let x_1074 : vec3<f32> = u_xlat11;
        let x_1077 : vec4<bool> = (-(vec4<f32>(x_1074.z, x_1074.y, x_1074.z, x_1074.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1078 : vec3<bool> = vec3<bool>(x_1077.x, x_1077.y, x_1077.w);
        let x_1079 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_1078.x, x_1078.y, x_1079.z, x_1078.z);
        let x_1083 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_1083);
        let x_1088 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_1088);
        let x_1094 : bool = u_xlatb12.w;
        u_xlat53 = select(0.0f, 1.0f, x_1094);
        let x_1097 : bool = u_xlatb12.z;
        if (x_1097) {
          let x_1102 : f32 = u_xlat12.y;
          x_1098 = x_1102;
        } else {
          let x_1104 : f32 = u_xlat53;
          x_1098 = x_1104;
        }
        let x_1105 : f32 = x_1098;
        u_xlat53 = x_1105;
        let x_1107 : bool = u_xlatb38;
        if (x_1107) {
          let x_1112 : f32 = u_xlat12.x;
          x_1108 = x_1112;
        } else {
          let x_1114 : f32 = u_xlat53;
          x_1108 = x_1114;
        }
        let x_1115 : f32 = x_1108;
        u_xlat38.x = x_1115;
        let x_1117 : i32 = u_xlati49;
        let x_1119 : f32 = x_457.x_AdditionalShadowParams[x_1117].w;
        u_xlat53 = trunc(x_1119);
        let x_1122 : f32 = u_xlat38.x;
        let x_1123 : f32 = u_xlat53;
        u_xlat38.x = (x_1122 + x_1123);
        let x_1127 : f32 = u_xlat38.x;
        u_xlati52 = i32(x_1127);
      }
      let x_1129 : i32 = u_xlati52;
      u_xlati52 = (x_1129 << bitcast<u32>(2i));
      let x_1131 : vec3<f32> = vs_INTERP7;
      let x_1134 : i32 = u_xlati52;
      let x_1137 : i32 = u_xlati52;
      let x_1141 : vec4<f32> = x_457.x_AdditionalLightsWorldToShadow[((x_1134 + 1i) / 4i)][((x_1137 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_1131.y, x_1131.y, x_1131.y, x_1131.y) * x_1141);
      let x_1143 : i32 = u_xlati52;
      let x_1145 : i32 = u_xlati52;
      let x_1148 : vec4<f32> = x_457.x_AdditionalLightsWorldToShadow[(x_1143 / 4i)][(x_1145 % 4i)];
      let x_1149 : vec3<f32> = vs_INTERP7;
      let x_1152 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_1148 * vec4<f32>(x_1149.x, x_1149.x, x_1149.x, x_1149.x)) + x_1152);
      let x_1154 : i32 = u_xlati52;
      let x_1157 : i32 = u_xlati52;
      let x_1161 : vec4<f32> = x_457.x_AdditionalLightsWorldToShadow[((x_1154 + 2i) / 4i)][((x_1157 + 2i) % 4i)];
      let x_1162 : vec3<f32> = vs_INTERP7;
      let x_1165 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_1161 * vec4<f32>(x_1162.z, x_1162.z, x_1162.z, x_1162.z)) + x_1165);
      let x_1167 : vec4<f32> = u_xlat12;
      let x_1168 : i32 = u_xlati52;
      let x_1171 : i32 = u_xlati52;
      let x_1175 : vec4<f32> = x_457.x_AdditionalLightsWorldToShadow[((x_1168 + 3i) / 4i)][((x_1171 + 3i) % 4i)];
      u_xlat12 = (x_1167 + x_1175);
      let x_1177 : vec4<f32> = u_xlat12;
      let x_1179 : vec4<f32> = u_xlat12;
      let x_1181 : vec3<f32> = (vec3<f32>(x_1177.x, x_1177.y, x_1177.z) / vec3<f32>(x_1179.w, x_1179.w, x_1179.w));
      let x_1182 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
      let x_1185 : vec4<f32> = u_xlat12;
      let x_1186 : vec2<f32> = vec2<f32>(x_1185.x, x_1185.y);
      let x_1188 : f32 = u_xlat12.z;
      txVec1 = vec3<f32>(x_1186.x, x_1186.y, x_1188);
      let x_1196 : vec3<f32> = txVec1;
      let x_1198 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1196.xy, x_1196.z);
      u_xlat52 = x_1198;
      let x_1199 : i32 = u_xlati49;
      let x_1201 : f32 = x_457.x_AdditionalShadowParams[x_1199].x;
      u_xlat38.x = (1.0f + -(x_1201));
      let x_1205 : f32 = u_xlat52;
      let x_1206 : i32 = u_xlati49;
      let x_1208 : f32 = x_457.x_AdditionalShadowParams[x_1206].x;
      let x_1211 : f32 = u_xlat38.x;
      u_xlat52 = ((x_1205 * x_1208) + x_1211);
      let x_1214 : f32 = u_xlat12.z;
      u_xlatb38 = (0.0f >= x_1214);
      let x_1218 : f32 = u_xlat12.z;
      u_xlatb53 = (x_1218 >= 1.0f);
      let x_1220 : bool = u_xlatb53;
      let x_1221 : bool = u_xlatb38;
      u_xlatb38 = (x_1220 | x_1221);
      let x_1223 : bool = u_xlatb38;
      let x_1224 : f32 = u_xlat52;
      u_xlat52 = select(x_1224, 1.0f, x_1223);
    } else {
      u_xlat52 = 1.0f;
    }
    let x_1227 : f32 = u_xlat52;
    u_xlat38.x = (-(x_1227) + 1.0f);
    let x_1231 : f32 = u_xlat47;
    let x_1233 : f32 = u_xlat38.x;
    let x_1235 : f32 = u_xlat52;
    u_xlat52 = ((x_1231 * x_1233) + x_1235);
    let x_1238 : i32 = u_xlati49;
    u_xlati38 = (1i << bitcast<u32>((x_1238 & 31i)));
    let x_1242 : i32 = u_xlati38;
    let x_1245 : f32 = x_521.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_1242) & bitcast<u32>(x_1245)));
    let x_1249 : i32 = u_xlati38;
    if ((x_1249 != 0i)) {
      let x_1253 : i32 = u_xlati49;
      let x_1255 : f32 = x_521.x_AdditionalLightsLightTypes[x_1253].el;
      u_xlati38 = i32(x_1255);
      let x_1258 : i32 = u_xlati38;
      u_xlati53 = select(1i, 0i, (x_1258 != 0i));
      let x_1262 : i32 = u_xlati49;
      u_xlati55 = (x_1262 << bitcast<u32>(2i));
      let x_1264 : i32 = u_xlati53;
      if ((x_1264 != 0i)) {
        let x_1268 : vec3<f32> = vs_INTERP7;
        let x_1270 : i32 = u_xlati55;
        let x_1273 : i32 = u_xlati55;
        let x_1277 : vec4<f32> = x_521.x_AdditionalLightsWorldToLights[((x_1270 + 1i) / 4i)][((x_1273 + 1i) % 4i)];
        let x_1279 : vec3<f32> = (vec3<f32>(x_1268.y, x_1268.y, x_1268.y) * vec3<f32>(x_1277.x, x_1277.y, x_1277.w));
        let x_1280 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
        let x_1282 : i32 = u_xlati55;
        let x_1284 : i32 = u_xlati55;
        let x_1287 : vec4<f32> = x_521.x_AdditionalLightsWorldToLights[(x_1282 / 4i)][(x_1284 % 4i)];
        let x_1289 : vec3<f32> = vs_INTERP7;
        let x_1292 : vec4<f32> = u_xlat12;
        let x_1294 : vec3<f32> = ((vec3<f32>(x_1287.x, x_1287.y, x_1287.w) * vec3<f32>(x_1289.x, x_1289.x, x_1289.x)) + vec3<f32>(x_1292.x, x_1292.y, x_1292.z));
        let x_1295 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1295.w);
        let x_1297 : i32 = u_xlati55;
        let x_1300 : i32 = u_xlati55;
        let x_1304 : vec4<f32> = x_521.x_AdditionalLightsWorldToLights[((x_1297 + 2i) / 4i)][((x_1300 + 2i) % 4i)];
        let x_1306 : vec3<f32> = vs_INTERP7;
        let x_1309 : vec4<f32> = u_xlat12;
        let x_1311 : vec3<f32> = ((vec3<f32>(x_1304.x, x_1304.y, x_1304.w) * vec3<f32>(x_1306.z, x_1306.z, x_1306.z)) + vec3<f32>(x_1309.x, x_1309.y, x_1309.z));
        let x_1312 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
        let x_1314 : vec4<f32> = u_xlat12;
        let x_1316 : i32 = u_xlati55;
        let x_1319 : i32 = u_xlati55;
        let x_1323 : vec4<f32> = x_521.x_AdditionalLightsWorldToLights[((x_1316 + 3i) / 4i)][((x_1319 + 3i) % 4i)];
        let x_1325 : vec3<f32> = (vec3<f32>(x_1314.x, x_1314.y, x_1314.z) + vec3<f32>(x_1323.x, x_1323.y, x_1323.w));
        let x_1326 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
        let x_1328 : vec4<f32> = u_xlat12;
        let x_1330 : vec4<f32> = u_xlat12;
        let x_1332 : vec2<f32> = (vec2<f32>(x_1328.x, x_1328.y) / vec2<f32>(x_1330.z, x_1330.z));
        let x_1333 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1332.x, x_1332.y, x_1333.z, x_1333.w);
        let x_1335 : vec4<f32> = u_xlat12;
        let x_1338 : vec2<f32> = ((vec2<f32>(x_1335.x, x_1335.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1339 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1338.x, x_1338.y, x_1339.z, x_1339.w);
        let x_1341 : vec4<f32> = u_xlat12;
        let x_1345 : vec2<f32> = clamp(vec2<f32>(x_1341.x, x_1341.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1346 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1345.x, x_1345.y, x_1346.z, x_1346.w);
        let x_1348 : i32 = u_xlati49;
        let x_1350 : vec4<f32> = x_521.x_AdditionalLightsCookieAtlasUVRects[x_1348];
        let x_1352 : vec4<f32> = u_xlat12;
        let x_1355 : i32 = u_xlati49;
        let x_1357 : vec4<f32> = x_521.x_AdditionalLightsCookieAtlasUVRects[x_1355];
        let x_1359 : vec2<f32> = ((vec2<f32>(x_1350.x, x_1350.y) * vec2<f32>(x_1352.x, x_1352.y)) + vec2<f32>(x_1357.z, x_1357.w));
        let x_1360 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1359.x, x_1359.y, x_1360.z, x_1360.w);
      } else {
        let x_1363 : i32 = u_xlati38;
        u_xlatb38 = (x_1363 == 1i);
        let x_1365 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1365);
        let x_1367 : i32 = u_xlati38;
        if ((x_1367 != 0i)) {
          let x_1371 : vec3<f32> = vs_INTERP7;
          let x_1373 : i32 = u_xlati55;
          let x_1376 : i32 = u_xlati55;
          let x_1380 : vec4<f32> = x_521.x_AdditionalLightsWorldToLights[((x_1373 + 1i) / 4i)][((x_1376 + 1i) % 4i)];
          u_xlat38 = (vec2<f32>(x_1371.y, x_1371.y) * vec2<f32>(x_1380.x, x_1380.y));
          let x_1383 : i32 = u_xlati55;
          let x_1385 : i32 = u_xlati55;
          let x_1388 : vec4<f32> = x_521.x_AdditionalLightsWorldToLights[(x_1383 / 4i)][(x_1385 % 4i)];
          let x_1390 : vec3<f32> = vs_INTERP7;
          let x_1393 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1388.x, x_1388.y) * vec2<f32>(x_1390.x, x_1390.x)) + x_1393);
          let x_1395 : i32 = u_xlati55;
          let x_1398 : i32 = u_xlati55;
          let x_1402 : vec4<f32> = x_521.x_AdditionalLightsWorldToLights[((x_1395 + 2i) / 4i)][((x_1398 + 2i) % 4i)];
          let x_1404 : vec3<f32> = vs_INTERP7;
          let x_1407 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1402.x, x_1402.y) * vec2<f32>(x_1404.z, x_1404.z)) + x_1407);
          let x_1409 : vec2<f32> = u_xlat38;
          let x_1410 : i32 = u_xlati55;
          let x_1413 : i32 = u_xlati55;
          let x_1417 : vec4<f32> = x_521.x_AdditionalLightsWorldToLights[((x_1410 + 3i) / 4i)][((x_1413 + 3i) % 4i)];
          u_xlat38 = (x_1409 + vec2<f32>(x_1417.x, x_1417.y));
          let x_1420 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1420 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1423 : vec2<f32> = u_xlat38;
          u_xlat38 = fract(x_1423);
          let x_1425 : i32 = u_xlati49;
          let x_1427 : vec4<f32> = x_521.x_AdditionalLightsCookieAtlasUVRects[x_1425];
          let x_1429 : vec2<f32> = u_xlat38;
          let x_1431 : i32 = u_xlati49;
          let x_1433 : vec4<f32> = x_521.x_AdditionalLightsCookieAtlasUVRects[x_1431];
          let x_1435 : vec2<f32> = ((vec2<f32>(x_1427.x, x_1427.y) * x_1429) + vec2<f32>(x_1433.z, x_1433.w));
          let x_1436 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1435.x, x_1435.y, x_1436.z, x_1436.w);
        } else {
          let x_1440 : vec3<f32> = vs_INTERP7;
          let x_1442 : i32 = u_xlati55;
          let x_1445 : i32 = u_xlati55;
          let x_1449 : vec4<f32> = x_521.x_AdditionalLightsWorldToLights[((x_1442 + 1i) / 4i)][((x_1445 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1440.y, x_1440.y, x_1440.y, x_1440.y) * x_1449);
          let x_1451 : i32 = u_xlati55;
          let x_1453 : i32 = u_xlati55;
          let x_1456 : vec4<f32> = x_521.x_AdditionalLightsWorldToLights[(x_1451 / 4i)][(x_1453 % 4i)];
          let x_1457 : vec3<f32> = vs_INTERP7;
          let x_1460 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1456 * vec4<f32>(x_1457.x, x_1457.x, x_1457.x, x_1457.x)) + x_1460);
          let x_1462 : i32 = u_xlati55;
          let x_1465 : i32 = u_xlati55;
          let x_1469 : vec4<f32> = x_521.x_AdditionalLightsWorldToLights[((x_1462 + 2i) / 4i)][((x_1465 + 2i) % 4i)];
          let x_1470 : vec3<f32> = vs_INTERP7;
          let x_1473 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1469 * vec4<f32>(x_1470.z, x_1470.z, x_1470.z, x_1470.z)) + x_1473);
          let x_1475 : vec4<f32> = u_xlat13;
          let x_1476 : i32 = u_xlati55;
          let x_1479 : i32 = u_xlati55;
          let x_1483 : vec4<f32> = x_521.x_AdditionalLightsWorldToLights[((x_1476 + 3i) / 4i)][((x_1479 + 3i) % 4i)];
          u_xlat13 = (x_1475 + x_1483);
          let x_1485 : vec4<f32> = u_xlat13;
          let x_1487 : vec4<f32> = u_xlat13;
          let x_1489 : vec3<f32> = (vec3<f32>(x_1485.x, x_1485.y, x_1485.z) / vec3<f32>(x_1487.w, x_1487.w, x_1487.w));
          let x_1490 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1489.x, x_1489.y, x_1489.z, x_1490.w);
          let x_1492 : vec4<f32> = u_xlat13;
          let x_1494 : vec4<f32> = u_xlat13;
          u_xlat38.x = dot(vec3<f32>(x_1492.x, x_1492.y, x_1492.z), vec3<f32>(x_1494.x, x_1494.y, x_1494.z));
          let x_1499 : f32 = u_xlat38.x;
          u_xlat38.x = inverseSqrt(x_1499);
          let x_1502 : vec2<f32> = u_xlat38;
          let x_1504 : vec4<f32> = u_xlat13;
          let x_1506 : vec3<f32> = (vec3<f32>(x_1502.x, x_1502.x, x_1502.x) * vec3<f32>(x_1504.x, x_1504.y, x_1504.z));
          let x_1507 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1507.w);
          let x_1509 : vec4<f32> = u_xlat13;
          u_xlat38.x = dot(abs(vec3<f32>(x_1509.x, x_1509.y, x_1509.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1516 : f32 = u_xlat38.x;
          u_xlat38.x = max(x_1516, 0.00000099999999747524f);
          let x_1521 : f32 = u_xlat38.x;
          u_xlat38.x = (1.0f / x_1521);
          let x_1525 : vec2<f32> = u_xlat38;
          let x_1527 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1525.x, x_1525.x, x_1525.x) * vec3<f32>(x_1527.z, x_1527.x, x_1527.y));
          let x_1531 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1531);
          let x_1535 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1535, 0.0f, 1.0f);
          let x_1539 : vec3<f32> = u_xlat14;
          let x_1541 : vec4<bool> = (vec4<f32>(x_1539.y, x_1539.z, x_1539.y, x_1539.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb42 = vec2<bool>(x_1541.x, x_1541.y);
          let x_1545 : bool = u_xlatb42.x;
          if (x_1545) {
            let x_1550 : f32 = u_xlat14.x;
            x_1546 = x_1550;
          } else {
            let x_1553 : f32 = u_xlat14.x;
            x_1546 = -(x_1553);
          }
          let x_1555 : f32 = x_1546;
          u_xlat42.x = x_1555;
          let x_1558 : bool = u_xlatb42.y;
          if (x_1558) {
            let x_1563 : f32 = u_xlat14.x;
            x_1559 = x_1563;
          } else {
            let x_1566 : f32 = u_xlat14.x;
            x_1559 = -(x_1566);
          }
          let x_1568 : f32 = x_1559;
          u_xlat42.y = x_1568;
          let x_1570 : vec4<f32> = u_xlat13;
          let x_1572 : vec2<f32> = u_xlat38;
          let x_1575 : vec2<f32> = u_xlat42;
          u_xlat38 = ((vec2<f32>(x_1570.x, x_1570.y) * vec2<f32>(x_1572.x, x_1572.x)) + x_1575);
          let x_1577 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1577 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1580 : vec2<f32> = u_xlat38;
          u_xlat38 = clamp(x_1580, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1584 : i32 = u_xlati49;
          let x_1586 : vec4<f32> = x_521.x_AdditionalLightsCookieAtlasUVRects[x_1584];
          let x_1588 : vec2<f32> = u_xlat38;
          let x_1590 : i32 = u_xlati49;
          let x_1592 : vec4<f32> = x_521.x_AdditionalLightsCookieAtlasUVRects[x_1590];
          let x_1594 : vec2<f32> = ((vec2<f32>(x_1586.x, x_1586.y) * x_1588) + vec2<f32>(x_1592.z, x_1592.w));
          let x_1595 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1594.x, x_1594.y, x_1595.z, x_1595.w);
        }
      }
      let x_1602 : vec4<f32> = u_xlat12;
      let x_1604 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1602.x, x_1602.y), 0.0f);
      u_xlat12 = x_1604;
      let x_1606 : bool = u_xlatb8.y;
      if (x_1606) {
        let x_1611 : f32 = u_xlat12.w;
        x_1607 = x_1611;
      } else {
        let x_1614 : f32 = u_xlat12.x;
        x_1607 = x_1614;
      }
      let x_1615 : f32 = x_1607;
      u_xlat38.x = x_1615;
      let x_1618 : bool = u_xlatb8.x;
      if (x_1618) {
        let x_1622 : vec4<f32> = u_xlat12;
        x_1619 = vec3<f32>(x_1622.x, x_1622.y, x_1622.z);
      } else {
        let x_1625 : vec2<f32> = u_xlat38;
        x_1619 = vec3<f32>(x_1625.x, x_1625.x, x_1625.x);
      }
      let x_1627 : vec3<f32> = x_1619;
      let x_1628 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1634 : vec4<f32> = u_xlat12;
    let x_1636 : i32 = u_xlati49;
    let x_1638 : vec4<f32> = x_967.x_AdditionalLightsColor[x_1636];
    let x_1640 : vec3<f32> = (vec3<f32>(x_1634.x, x_1634.y, x_1634.z) * vec3<f32>(x_1638.x, x_1638.y, x_1638.z));
    let x_1641 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1641.w);
    let x_1643 : f32 = u_xlat50;
    let x_1644 : f32 = u_xlat52;
    u_xlat49 = (x_1643 * x_1644);
    let x_1646 : vec4<f32> = u_xlat1;
    let x_1648 : vec3<f32> = u_xlat11;
    u_xlat50 = dot(vec3<f32>(x_1646.x, x_1646.y, x_1646.w), x_1648);
    let x_1650 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1650, 0.0f, 1.0f);
    let x_1652 : f32 = u_xlat49;
    let x_1653 : f32 = u_xlat50;
    u_xlat49 = (x_1652 * x_1653);
    let x_1655 : f32 = u_xlat49;
    let x_1657 : vec4<f32> = u_xlat12;
    let x_1659 : vec3<f32> = (vec3<f32>(x_1655, x_1655, x_1655) * vec3<f32>(x_1657.x, x_1657.y, x_1657.z));
    let x_1660 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1659.x, x_1659.y, x_1659.z, x_1660.w);
    let x_1662 : vec3<f32> = u_xlat10;
    let x_1663 : f32 = u_xlat51;
    let x_1666 : vec3<f32> = u_xlat5;
    u_xlat10 = ((x_1662 * vec3<f32>(x_1663, x_1663, x_1663)) + x_1666);
    let x_1668 : vec3<f32> = u_xlat10;
    let x_1669 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1668, x_1669);
    let x_1671 : f32 = u_xlat49;
    u_xlat49 = max(x_1671, 1.17549435e-38f);
    let x_1673 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1673);
    let x_1675 : f32 = u_xlat49;
    let x_1677 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1675, x_1675, x_1675) * x_1677);
    let x_1679 : vec4<f32> = u_xlat1;
    let x_1681 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1679.x, x_1679.y, x_1679.w), x_1681);
    let x_1683 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1683, 0.0f, 1.0f);
    let x_1685 : vec3<f32> = u_xlat11;
    let x_1686 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(x_1685, x_1686);
    let x_1688 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1688, 0.0f, 1.0f);
    let x_1690 : f32 = u_xlat49;
    let x_1691 : f32 = u_xlat49;
    u_xlat49 = (x_1690 * x_1691);
    let x_1693 : f32 = u_xlat49;
    let x_1695 : f32 = u_xlat9.x;
    u_xlat49 = ((x_1693 * x_1695) + 1.00001001358032226562f);
    let x_1698 : f32 = u_xlat50;
    let x_1699 : f32 = u_xlat50;
    u_xlat50 = (x_1698 * x_1699);
    let x_1701 : f32 = u_xlat49;
    let x_1702 : f32 = u_xlat49;
    u_xlat49 = (x_1701 * x_1702);
    let x_1704 : f32 = u_xlat50;
    u_xlat50 = max(x_1704, 0.10000000149011611938f);
    let x_1706 : f32 = u_xlat49;
    let x_1707 : f32 = u_xlat50;
    u_xlat49 = (x_1706 * x_1707);
    let x_1709 : f32 = u_xlat48;
    let x_1710 : f32 = u_xlat49;
    u_xlat49 = (x_1709 * x_1710);
    let x_1712 : f32 = u_xlat18;
    let x_1713 : f32 = u_xlat49;
    u_xlat49 = (x_1712 / x_1713);
    let x_1715 : vec3<f32> = u_xlat0;
    let x_1716 : f32 = u_xlat49;
    let x_1719 : vec3<f32> = u_xlat6;
    u_xlat10 = ((x_1715 * vec3<f32>(x_1716, x_1716, x_1716)) + x_1719);
    let x_1721 : vec3<f32> = u_xlat10;
    let x_1722 : vec4<f32> = u_xlat12;
    let x_1725 : vec3<f32> = u_xlat24;
    u_xlat24 = ((x_1721 * vec3<f32>(x_1722.x, x_1722.y, x_1722.z)) + x_1725);

    continuing {
      let x_1727 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1727 + bitcast<u32>(1i));
    }
  }
  let x_1729 : vec4<f32> = u_xlat4;
  let x_1731 : f32 = u_xlat33;
  let x_1734 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1729.x, x_1729.y, x_1729.z) * vec3<f32>(x_1731, x_1731, x_1731)) + vec3<f32>(x_1734.x, x_1734.y, x_1734.z));
  let x_1737 : vec3<f32> = u_xlat24;
  let x_1738 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1737 + x_1738);
  let x_1742 : vec3<f32> = u_xlat2;
  let x_1743 : f32 = u_xlat31;
  let x_1746 : vec3<f32> = u_xlat0;
  let x_1747 : vec3<f32> = ((x_1742 * vec3<f32>(x_1743, x_1743, x_1743)) + x_1746);
  let x_1748 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1748.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(4) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


