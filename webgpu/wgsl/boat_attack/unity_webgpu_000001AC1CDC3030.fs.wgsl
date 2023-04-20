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

@group(1) @binding(3) var<uniform> x_312 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu45 : u32;

var<private> u_xlati45 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat33 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatb19 : bool;

var<private> u_xlatb34 : vec2<bool>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat49 : f32;

@group(1) @binding(4) var<uniform> x_717 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlatu19 : u32;

var<private> u_xlati50 : i32;

var<private> u_xlati19 : i32;

@group(1) @binding(1) var<uniform> x_1161 : AdditionalLights;

var<private> u_xlat50 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat52 : f32;

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

var<private> u_xlati54 : i32;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb42 : vec2<bool>;

var<private> u_xlat42 : vec2<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu3 : u32;

fn main_1() {
  var x_268 : f32;
  var x_280 : f32;
  var x_293 : f32;
  var txVec0 : vec3<f32>;
  var x_667 : f32;
  var x_785 : f32;
  var x_796 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1293 : f32;
  var x_1303 : f32;
  var txVec1 : vec3<f32>;
  var x_1741 : f32;
  var x_1754 : f32;
  var x_1802 : f32;
  var x_1814 : vec3<f32>;
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
  let x_304 : vec3<f32> = vs_INTERP7;
  let x_314 : vec4<f32> = x_312.x_CascadeShadowSplitSpheres0;
  let x_317 : vec3<f32> = (x_304 + -(vec3<f32>(x_314.x, x_314.y, x_314.z)));
  let x_318 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_321 : vec3<f32> = vs_INTERP7;
  let x_323 : vec4<f32> = x_312.x_CascadeShadowSplitSpheres1;
  let x_326 : vec3<f32> = (x_321 + -(vec3<f32>(x_323.x, x_323.y, x_323.z)));
  let x_327 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_330 : vec3<f32> = vs_INTERP7;
  let x_332 : vec4<f32> = x_312.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_330 + -(vec3<f32>(x_332.x, x_332.y, x_332.z)));
  let x_337 : vec3<f32> = vs_INTERP7;
  let x_339 : vec4<f32> = x_312.x_CascadeShadowSplitSpheres3;
  let x_342 : vec3<f32> = (x_337 + -(vec3<f32>(x_339.x, x_339.y, x_339.z)));
  let x_343 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat4;
  let x_347 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_351 : vec4<f32> = u_xlat6;
  let x_353 : vec4<f32> = u_xlat6;
  u_xlat4.y = dot(vec3<f32>(x_351.x, x_351.y, x_351.z), vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_357 : vec3<f32> = u_xlat7;
  let x_358 : vec3<f32> = u_xlat7;
  u_xlat4.z = dot(x_357, x_358);
  let x_361 : vec4<f32> = u_xlat8;
  let x_363 : vec4<f32> = u_xlat8;
  u_xlat4.w = dot(vec3<f32>(x_361.x, x_361.y, x_361.z), vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_370 : vec4<f32> = u_xlat4;
  let x_372 : vec4<f32> = x_312.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_370 < x_372);
  let x_375 : bool = u_xlatb4.x;
  u_xlat6.x = select(0.0f, 1.0f, x_375);
  let x_379 : bool = u_xlatb4.y;
  u_xlat6.y = select(0.0f, 1.0f, x_379);
  let x_383 : bool = u_xlatb4.z;
  u_xlat6.z = select(0.0f, 1.0f, x_383);
  let x_387 : bool = u_xlatb4.w;
  u_xlat6.w = select(0.0f, 1.0f, x_387);
  let x_391 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_391);
  let x_396 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_396);
  let x_400 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_400);
  let x_403 : vec4<f32> = u_xlat4;
  let x_405 : vec4<f32> = u_xlat6;
  let x_407 : vec3<f32> = (vec3<f32>(x_403.x, x_403.y, x_403.z) + vec3<f32>(x_405.y, x_405.z, x_405.w));
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_410 : vec4<f32> = u_xlat4;
  let x_413 : vec3<f32> = max(vec3<f32>(x_410.x, x_410.y, x_410.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_413.x, x_413.y, x_413.z);
  let x_416 : vec4<f32> = u_xlat6;
  u_xlat45 = dot(x_416, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_421 : f32 = u_xlat45;
  u_xlat45 = (-(x_421) + 4.0f);
  let x_426 : f32 = u_xlat45;
  u_xlatu45 = u32(x_426);
  let x_430 : u32 = u_xlatu45;
  u_xlati45 = (bitcast<i32>(x_430) << bitcast<u32>(2i));
  let x_433 : vec3<f32> = vs_INTERP7;
  let x_435 : i32 = u_xlati45;
  let x_438 : i32 = u_xlati45;
  let x_442 : vec4<f32> = x_312.x_MainLightWorldToShadow[((x_435 + 1i) / 4i)][((x_438 + 1i) % 4i)];
  let x_444 : vec3<f32> = (vec3<f32>(x_433.y, x_433.y, x_433.y) * vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : i32 = u_xlati45;
  let x_449 : i32 = u_xlati45;
  let x_452 : vec4<f32> = x_312.x_MainLightWorldToShadow[(x_447 / 4i)][(x_449 % 4i)];
  let x_454 : vec3<f32> = vs_INTERP7;
  let x_457 : vec4<f32> = u_xlat4;
  let x_459 : vec3<f32> = ((vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(x_454.x, x_454.x, x_454.x)) + vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : i32 = u_xlati45;
  let x_465 : i32 = u_xlati45;
  let x_469 : vec4<f32> = x_312.x_MainLightWorldToShadow[((x_462 + 2i) / 4i)][((x_465 + 2i) % 4i)];
  let x_471 : vec3<f32> = vs_INTERP7;
  let x_474 : vec4<f32> = u_xlat4;
  let x_476 : vec3<f32> = ((vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(x_471.z, x_471.z, x_471.z)) + vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat4;
  let x_481 : i32 = u_xlati45;
  let x_484 : i32 = u_xlati45;
  let x_488 : vec4<f32> = x_312.x_MainLightWorldToShadow[((x_481 + 3i) / 4i)][((x_484 + 3i) % 4i)];
  let x_490 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) + vec3<f32>(x_488.x, x_488.y, x_488.z));
  let x_491 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_500 : vec2<f32> = vs_INTERP0;
  let x_502 : f32 = x_29.x_GlobalMipBias.x;
  let x_503 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_500, x_502);
  u_xlat6 = x_503;
  let x_508 : vec2<f32> = vs_INTERP0;
  let x_510 : f32 = x_29.x_GlobalMipBias.x;
  let x_511 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_508, x_510);
  u_xlat7 = vec3<f32>(x_511.x, x_511.y, x_511.z);
  let x_513 : vec4<f32> = u_xlat6;
  let x_517 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_518 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec4<f32> = u_xlat1;
  let x_522 : vec4<f32> = u_xlat6;
  u_xlat45 = dot(vec3<f32>(x_520.x, x_520.y, x_520.w), vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : f32 = u_xlat45;
  u_xlat45 = (x_525 + 0.5f);
  let x_528 : f32 = u_xlat45;
  let x_530 : vec3<f32> = u_xlat7;
  let x_531 : vec3<f32> = (vec3<f32>(x_528, x_528, x_528) * x_530);
  let x_532 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_535 : f32 = u_xlat6.w;
  u_xlat45 = max(x_535, 0.00009999999747378752f);
  let x_538 : vec4<f32> = u_xlat6;
  let x_540 : f32 = u_xlat45;
  let x_542 : vec3<f32> = (vec3<f32>(x_538.x, x_538.y, x_538.z) / vec3<f32>(x_540, x_540, x_540));
  let x_543 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec3<f32> = u_xlat3;
  let x_546 : vec2<f32> = vec2<f32>(x_545.x, x_545.y);
  let x_547 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_546.x, x_546.y, x_547.z);
  let x_549 : vec3<f32> = u_xlat3;
  let x_553 : vec2<f32> = clamp(vec2<f32>(x_549.x, x_549.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_554 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_553.x, x_553.y, x_554.z);
  let x_557 : f32 = u_xlat3.x;
  u_xlat45 = ((-(x_557) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_562 : f32 = u_xlat45;
  let x_565 : f32 = u_xlat3.y;
  u_xlat47 = (-(x_562) + x_565);
  let x_567 : f32 = u_xlat45;
  let x_569 : vec3<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_567, x_567, x_567) * x_569);
  let x_571 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_571 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_575 : vec3<f32> = u_xlat3;
  let x_577 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_575.x, x_575.x, x_575.x) * x_577) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_583 : f32 = u_xlat3.y;
  u_xlat45 = (-(x_583) + 1.0f);
  let x_586 : f32 = u_xlat45;
  let x_587 : f32 = u_xlat45;
  u_xlat3.x = (x_586 * x_587);
  let x_591 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_591, 0.0078125f);
  let x_597 : f32 = u_xlat3.x;
  let x_599 : f32 = u_xlat3.x;
  u_xlat18 = (x_597 * x_599);
  let x_601 : f32 = u_xlat47;
  u_xlat47 = (x_601 + 1.0f);
  let x_603 : f32 = u_xlat47;
  u_xlat47 = min(x_603, 1.0f);
  let x_607 : f32 = u_xlat3.x;
  u_xlat48 = ((x_607 * 4.0f) + 2.0f);
  let x_612 : f32 = u_xlat3.z;
  u_xlat33 = min(x_612, 1.0f);
  let x_616 : vec4<f32> = u_xlat4;
  let x_617 : vec2<f32> = vec2<f32>(x_616.x, x_616.y);
  let x_619 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_617.x, x_617.y, x_619);
  let x_631 : vec3<f32> = txVec0;
  let x_633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_631.xy, x_631.z);
  u_xlat4.x = x_633;
  let x_638 : f32 = x_312.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_638) + 1.0f);
  let x_643 : f32 = u_xlat4.x;
  let x_645 : f32 = x_312.x_MainLightShadowParams.x;
  let x_648 : f32 = u_xlat19.x;
  u_xlat4.x = ((x_643 * x_645) + x_648);
  let x_653 : f32 = u_xlat4.z;
  u_xlatb19 = (0.0f >= x_653);
  let x_659 : f32 = u_xlat4.z;
  u_xlatb34.x = (x_659 >= 1.0f);
  let x_663 : bool = u_xlatb34.x;
  let x_664 : bool = u_xlatb19;
  u_xlatb19 = (x_663 | x_664);
  let x_666 : bool = u_xlatb19;
  if (x_666) {
    x_667 = 1.0f;
  } else {
    let x_672 : f32 = u_xlat4.x;
    x_667 = x_672;
  }
  let x_673 : f32 = x_667;
  u_xlat4.x = x_673;
  let x_675 : vec3<f32> = vs_INTERP7;
  let x_677 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat19 = (x_675 + -(x_677));
  let x_680 : vec3<f32> = u_xlat19;
  let x_681 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_680, x_681);
  let x_687 : f32 = u_xlat19.x;
  let x_689 : f32 = x_312.x_MainLightShadowParams.z;
  let x_692 : f32 = x_312.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_687 * x_689) + x_692);
  let x_696 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_696, 0.0f, 1.0f);
  let x_701 : f32 = u_xlat4.x;
  u_xlat49 = (-(x_701) + 1.0f);
  let x_705 : f32 = u_xlat34.x;
  let x_706 : f32 = u_xlat49;
  let x_709 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_705 * x_706) + x_709);
  let x_719 : f32 = x_717.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_719 == -1.0f));
  let x_723 : bool = u_xlatb34.x;
  if (x_723) {
    let x_726 : vec3<f32> = vs_INTERP7;
    let x_729 : vec4<f32> = x_717.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_726.y, x_726.y) * vec2<f32>(x_729.x, x_729.y));
    let x_733 : vec4<f32> = x_717.x_MainLightWorldToLight[0i];
    let x_735 : vec3<f32> = vs_INTERP7;
    let x_738 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_733.x, x_733.y) * vec2<f32>(x_735.x, x_735.x)) + x_738);
    let x_741 : vec4<f32> = x_717.x_MainLightWorldToLight[2i];
    let x_743 : vec3<f32> = vs_INTERP7;
    let x_746 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_741.x, x_741.y) * vec2<f32>(x_743.z, x_743.z)) + x_746);
    let x_748 : vec2<f32> = u_xlat34;
    let x_750 : vec4<f32> = x_717.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_748 + vec2<f32>(x_750.x, x_750.y));
    let x_753 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_753 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_762 : vec2<f32> = u_xlat34;
    let x_764 : f32 = x_29.x_GlobalMipBias.x;
    let x_765 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_762, x_764);
    u_xlat8 = x_765;
    let x_767 : f32 = x_717.x_MainLightCookieTextureFormat;
    let x_769 : f32 = x_717.x_MainLightCookieTextureFormat;
    let x_771 : f32 = x_717.x_MainLightCookieTextureFormat;
    let x_773 : f32 = x_717.x_MainLightCookieTextureFormat;
    let x_774 : vec4<f32> = vec4<f32>(x_767, x_769, x_771, x_773);
    let x_781 : vec4<bool> = (vec4<f32>(x_774.x, x_774.y, x_774.z, x_774.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_781.x, x_781.y);
    let x_784 : bool = u_xlatb34.y;
    if (x_784) {
      let x_789 : f32 = u_xlat8.w;
      x_785 = x_789;
    } else {
      let x_792 : f32 = u_xlat8.x;
      x_785 = x_792;
    }
    let x_793 : f32 = x_785;
    u_xlat49 = x_793;
    let x_795 : bool = u_xlatb34.x;
    if (x_795) {
      let x_799 : vec4<f32> = u_xlat8;
      x_796 = vec3<f32>(x_799.x, x_799.y, x_799.z);
    } else {
      let x_802 : f32 = u_xlat49;
      x_796 = vec3<f32>(x_802, x_802, x_802);
    }
    let x_804 : vec3<f32> = x_796;
    let x_805 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
  }
  let x_811 : vec4<f32> = u_xlat8;
  let x_814 : vec4<f32> = x_29.x_MainLightColor;
  let x_816 : vec3<f32> = (vec3<f32>(x_811.x, x_811.y, x_811.z) * vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec3<f32> = u_xlat5;
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat34.x = dot(-(x_819), vec3<f32>(x_821.x, x_821.y, x_821.w));
  let x_826 : f32 = u_xlat34.x;
  let x_828 : f32 = u_xlat34.x;
  u_xlat34.x = (x_826 + x_828);
  let x_832 : vec4<f32> = u_xlat1;
  let x_834 : vec2<f32> = u_xlat34;
  let x_838 : vec3<f32> = u_xlat5;
  let x_840 : vec3<f32> = ((vec3<f32>(x_832.x, x_832.y, x_832.w) * -(vec3<f32>(x_834.x, x_834.x, x_834.x))) + -(x_838));
  let x_841 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat1;
  let x_845 : vec3<f32> = u_xlat5;
  u_xlat34.x = dot(vec3<f32>(x_843.x, x_843.y, x_843.w), x_845);
  let x_849 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_849, 0.0f, 1.0f);
  let x_853 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_853) + 1.0f);
  let x_858 : f32 = u_xlat34.x;
  let x_860 : f32 = u_xlat34.x;
  u_xlat34.x = (x_858 * x_860);
  let x_864 : f32 = u_xlat34.x;
  let x_866 : f32 = u_xlat34.x;
  u_xlat34.x = (x_864 * x_866);
  let x_869 : f32 = u_xlat45;
  u_xlat49 = ((-(x_869) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_875 : f32 = u_xlat45;
  let x_876 : f32 = u_xlat49;
  u_xlat45 = (x_875 * x_876);
  let x_878 : f32 = u_xlat45;
  u_xlat45 = (x_878 * 6.0f);
  let x_889 : vec4<f32> = u_xlat9;
  let x_891 : f32 = u_xlat45;
  let x_892 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_889.x, x_889.y, x_889.z), x_891);
  u_xlat9 = x_892;
  let x_894 : f32 = u_xlat9.w;
  u_xlat45 = (x_894 + -1.0f);
  let x_897 : f32 = x_109.unity_SpecCube0_HDR.w;
  let x_898 : f32 = u_xlat45;
  u_xlat45 = ((x_897 * x_898) + 1.0f);
  let x_901 : f32 = u_xlat45;
  u_xlat45 = max(x_901, 0.0f);
  let x_903 : f32 = u_xlat45;
  u_xlat45 = log2(x_903);
  let x_905 : f32 = u_xlat45;
  let x_907 : f32 = x_109.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_905 * x_907);
  let x_909 : f32 = u_xlat45;
  u_xlat45 = exp2(x_909);
  let x_911 : f32 = u_xlat45;
  let x_913 : f32 = x_109.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_911 * x_913);
  let x_915 : vec4<f32> = u_xlat9;
  let x_917 : f32 = u_xlat45;
  let x_919 : vec3<f32> = (vec3<f32>(x_915.x, x_915.y, x_915.z) * vec3<f32>(x_917, x_917, x_917));
  let x_920 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_923 : vec3<f32> = u_xlat3;
  let x_925 : vec3<f32> = u_xlat3;
  u_xlat10 = ((vec2<f32>(x_923.x, x_923.x) * vec2<f32>(x_925.x, x_925.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_931 : f32 = u_xlat10.y;
  u_xlat45 = (1.0f / x_931);
  let x_934 : vec3<f32> = u_xlat0;
  let x_936 : f32 = u_xlat47;
  u_xlat25 = (-(x_934) + vec3<f32>(x_936, x_936, x_936));
  let x_939 : vec2<f32> = u_xlat34;
  let x_941 : vec3<f32> = u_xlat25;
  let x_943 : vec3<f32> = u_xlat0;
  u_xlat25 = ((vec3<f32>(x_939.x, x_939.x, x_939.x) * x_941) + x_943);
  let x_945 : f32 = u_xlat45;
  let x_947 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_945, x_945, x_945) * x_947);
  let x_949 : vec4<f32> = u_xlat9;
  let x_951 : vec3<f32> = u_xlat25;
  let x_952 : vec3<f32> = (vec3<f32>(x_949.x, x_949.y, x_949.z) * x_951);
  let x_953 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  let x_955 : vec4<f32> = u_xlat6;
  let x_957 : vec3<f32> = u_xlat7;
  let x_959 : vec4<f32> = u_xlat9;
  let x_961 : vec3<f32> = ((vec3<f32>(x_955.x, x_955.y, x_955.z) * x_957) + vec3<f32>(x_959.x, x_959.y, x_959.z));
  let x_962 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
  let x_965 : f32 = u_xlat4.x;
  let x_967 : f32 = x_109.unity_LightData.z;
  u_xlat45 = (x_965 * x_967);
  let x_969 : vec4<f32> = u_xlat1;
  let x_972 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat47 = dot(vec3<f32>(x_969.x, x_969.y, x_969.w), vec3<f32>(x_972.x, x_972.y, x_972.z));
  let x_975 : f32 = u_xlat47;
  u_xlat47 = clamp(x_975, 0.0f, 1.0f);
  let x_977 : f32 = u_xlat45;
  let x_978 : f32 = u_xlat47;
  u_xlat45 = (x_977 * x_978);
  let x_980 : f32 = u_xlat45;
  let x_982 : vec4<f32> = u_xlat8;
  let x_984 : vec3<f32> = (vec3<f32>(x_980, x_980, x_980) * vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_985 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_984.x, x_985.y, x_984.y, x_984.z);
  let x_987 : vec3<f32> = u_xlat5;
  let x_989 : vec4<f32> = x_29.x_MainLightPosition;
  let x_991 : vec3<f32> = (x_987 + vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : vec4<f32> = u_xlat8;
  let x_996 : vec4<f32> = u_xlat8;
  u_xlat45 = dot(vec3<f32>(x_994.x, x_994.y, x_994.z), vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_999 : f32 = u_xlat45;
  u_xlat45 = max(x_999, 1.17549435e-38f);
  let x_1002 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_1002);
  let x_1004 : f32 = u_xlat45;
  let x_1006 : vec4<f32> = u_xlat8;
  let x_1008 : vec3<f32> = (vec3<f32>(x_1004, x_1004, x_1004) * vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec4<f32> = u_xlat1;
  let x_1013 : vec4<f32> = u_xlat8;
  u_xlat45 = dot(vec3<f32>(x_1011.x, x_1011.y, x_1011.w), vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1016 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1016, 0.0f, 1.0f);
  let x_1019 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1021 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_1019.x, x_1019.y, x_1019.z), vec3<f32>(x_1021.x, x_1021.y, x_1021.z));
  let x_1024 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1024, 0.0f, 1.0f);
  let x_1026 : f32 = u_xlat45;
  let x_1027 : f32 = u_xlat45;
  u_xlat45 = (x_1026 * x_1027);
  let x_1029 : f32 = u_xlat45;
  let x_1031 : f32 = u_xlat10.x;
  u_xlat45 = ((x_1029 * x_1031) + 1.00001001358032226562f);
  let x_1035 : f32 = u_xlat47;
  let x_1036 : f32 = u_xlat47;
  u_xlat47 = (x_1035 * x_1036);
  let x_1038 : f32 = u_xlat45;
  let x_1039 : f32 = u_xlat45;
  u_xlat45 = (x_1038 * x_1039);
  let x_1041 : f32 = u_xlat47;
  u_xlat47 = max(x_1041, 0.10000000149011611938f);
  let x_1044 : f32 = u_xlat45;
  let x_1045 : f32 = u_xlat47;
  u_xlat45 = (x_1044 * x_1045);
  let x_1047 : f32 = u_xlat48;
  let x_1048 : f32 = u_xlat45;
  u_xlat45 = (x_1047 * x_1048);
  let x_1050 : f32 = u_xlat18;
  let x_1051 : f32 = u_xlat45;
  u_xlat45 = (x_1050 / x_1051);
  let x_1053 : vec3<f32> = u_xlat0;
  let x_1054 : f32 = u_xlat45;
  let x_1057 : vec3<f32> = u_xlat7;
  let x_1058 : vec3<f32> = ((x_1053 * vec3<f32>(x_1054, x_1054, x_1054)) + x_1057);
  let x_1059 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec4<f32> = u_xlat4;
  let x_1063 : vec4<f32> = u_xlat8;
  let x_1065 : vec3<f32> = (vec3<f32>(x_1061.x, x_1061.z, x_1061.w) * vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1065.x, x_1066.y, x_1065.y, x_1065.z);
  let x_1069 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1071 : f32 = x_109.unity_LightData.y;
  u_xlat45 = min(x_1069, x_1071);
  let x_1073 : f32 = u_xlat45;
  u_xlatu45 = bitcast<u32>(i32(x_1073));
  let x_1077 : f32 = u_xlat19.x;
  let x_1080 : f32 = x_312.x_AdditionalShadowFadeParams.x;
  let x_1083 : f32 = x_312.x_AdditionalShadowFadeParams.y;
  u_xlat47 = ((x_1077 * x_1080) + x_1083);
  let x_1085 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1085, 0.0f, 1.0f);
  let x_1089 : f32 = x_717.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1091 : f32 = x_717.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1093 : f32 = x_717.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1095 : f32 = x_717.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1096 : vec4<f32> = vec4<f32>(x_1089, x_1091, x_1093, x_1095);
  let x_1103 : vec4<bool> = (vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1096.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_1103.x, x_1103.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1115 : u32 = u_xlatu_loop_1;
    let x_1116 : u32 = u_xlatu45;
    if ((x_1115 < x_1116)) {
    } else {
      break;
    }
    let x_1119 : u32 = u_xlatu_loop_1;
    u_xlatu19 = (x_1119 >> 2u);
    let x_1122 : u32 = u_xlatu_loop_1;
    u_xlati50 = bitcast<i32>((x_1122 & 3u));
    let x_1125 : u32 = u_xlatu19;
    let x_1128 : vec4<f32> = x_109.unity_LightIndices[bitcast<i32>(x_1125)];
    let x_1138 : i32 = u_xlati50;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1143 : vec4<u32> = indexable[x_1138];
    u_xlat19.x = dot(x_1128, bitcast<vec4<f32>>(x_1143));
    let x_1149 : f32 = u_xlat19.x;
    u_xlati19 = i32(x_1149);
    let x_1151 : vec3<f32> = vs_INTERP7;
    let x_1162 : i32 = u_xlati19;
    let x_1164 : vec4<f32> = x_1161.x_AdditionalLightsPosition[x_1162];
    let x_1167 : i32 = u_xlati19;
    let x_1169 : vec4<f32> = x_1161.x_AdditionalLightsPosition[x_1167];
    u_xlat25 = ((-(x_1151) * vec3<f32>(x_1164.w, x_1164.w, x_1164.w)) + vec3<f32>(x_1169.x, x_1169.y, x_1169.z));
    let x_1173 : vec3<f32> = u_xlat25;
    let x_1174 : vec3<f32> = u_xlat25;
    u_xlat50 = dot(x_1173, x_1174);
    let x_1176 : f32 = u_xlat50;
    u_xlat50 = max(x_1176, 0.00006103515625f);
    let x_1180 : f32 = u_xlat50;
    u_xlat51 = inverseSqrt(x_1180);
    let x_1183 : f32 = u_xlat51;
    let x_1185 : vec3<f32> = u_xlat25;
    u_xlat11 = (vec3<f32>(x_1183, x_1183, x_1183) * x_1185);
    let x_1188 : f32 = u_xlat50;
    u_xlat52 = (1.0f / x_1188);
    let x_1190 : f32 = u_xlat50;
    let x_1191 : i32 = u_xlati19;
    let x_1193 : f32 = x_1161.x_AdditionalLightsAttenuation[x_1191].x;
    u_xlat50 = (x_1190 * x_1193);
    let x_1195 : f32 = u_xlat50;
    let x_1197 : f32 = u_xlat50;
    u_xlat50 = ((-(x_1195) * x_1197) + 1.0f);
    let x_1200 : f32 = u_xlat50;
    u_xlat50 = max(x_1200, 0.0f);
    let x_1202 : f32 = u_xlat50;
    let x_1203 : f32 = u_xlat50;
    u_xlat50 = (x_1202 * x_1203);
    let x_1205 : f32 = u_xlat50;
    let x_1206 : f32 = u_xlat52;
    u_xlat50 = (x_1205 * x_1206);
    let x_1208 : i32 = u_xlati19;
    let x_1210 : vec4<f32> = x_1161.x_AdditionalLightsSpotDir[x_1208];
    let x_1212 : vec3<f32> = u_xlat11;
    u_xlat52 = dot(vec3<f32>(x_1210.x, x_1210.y, x_1210.z), x_1212);
    let x_1214 : f32 = u_xlat52;
    let x_1215 : i32 = u_xlati19;
    let x_1217 : f32 = x_1161.x_AdditionalLightsAttenuation[x_1215].z;
    let x_1219 : i32 = u_xlati19;
    let x_1221 : f32 = x_1161.x_AdditionalLightsAttenuation[x_1219].w;
    u_xlat52 = ((x_1214 * x_1217) + x_1221);
    let x_1223 : f32 = u_xlat52;
    u_xlat52 = clamp(x_1223, 0.0f, 1.0f);
    let x_1225 : f32 = u_xlat52;
    let x_1226 : f32 = u_xlat52;
    u_xlat52 = (x_1225 * x_1226);
    let x_1228 : f32 = u_xlat50;
    let x_1229 : f32 = u_xlat52;
    u_xlat50 = (x_1228 * x_1229);
    let x_1233 : i32 = u_xlati19;
    let x_1235 : f32 = x_312.x_AdditionalShadowParams[x_1233].w;
    u_xlati52 = i32(x_1235);
    let x_1238 : i32 = u_xlati52;
    u_xlatb38 = (x_1238 >= 0i);
    let x_1240 : bool = u_xlatb38;
    if (x_1240) {
      let x_1244 : i32 = u_xlati19;
      let x_1246 : f32 = x_312.x_AdditionalShadowParams[x_1244].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1246, x_1246, x_1246, x_1246))));
      let x_1250 : bool = u_xlatb38;
      if (x_1250) {
        let x_1254 : vec3<f32> = u_xlat11;
        let x_1257 : vec3<f32> = u_xlat11;
        let x_1260 : vec4<bool> = (abs(vec4<f32>(x_1254.z, x_1254.z, x_1254.y, x_1254.z)) >= abs(vec4<f32>(x_1257.x, x_1257.y, x_1257.x, x_1257.x)));
        let x_1262 : vec3<bool> = vec3<bool>(x_1260.x, x_1260.y, x_1260.z);
        let x_1263 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
        let x_1266 : bool = u_xlatb12.y;
        let x_1268 : bool = u_xlatb12.x;
        u_xlatb38 = (x_1266 & x_1268);
        let x_1270 : vec3<f32> = u_xlat11;
        let x_1273 : vec4<bool> = (-(vec4<f32>(x_1270.z, x_1270.y, x_1270.z, x_1270.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1274 : vec3<bool> = vec3<bool>(x_1273.x, x_1273.y, x_1273.w);
        let x_1275 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_1274.x, x_1274.y, x_1275.z, x_1274.z);
        let x_1279 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_1279);
        let x_1284 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_1284);
        let x_1289 : bool = u_xlatb12.w;
        u_xlat53 = select(0.0f, 1.0f, x_1289);
        let x_1292 : bool = u_xlatb12.z;
        if (x_1292) {
          let x_1297 : f32 = u_xlat12.y;
          x_1293 = x_1297;
        } else {
          let x_1299 : f32 = u_xlat53;
          x_1293 = x_1299;
        }
        let x_1300 : f32 = x_1293;
        u_xlat53 = x_1300;
        let x_1302 : bool = u_xlatb38;
        if (x_1302) {
          let x_1307 : f32 = u_xlat12.x;
          x_1303 = x_1307;
        } else {
          let x_1309 : f32 = u_xlat53;
          x_1303 = x_1309;
        }
        let x_1310 : f32 = x_1303;
        u_xlat38.x = x_1310;
        let x_1312 : i32 = u_xlati19;
        let x_1314 : f32 = x_312.x_AdditionalShadowParams[x_1312].w;
        u_xlat53 = trunc(x_1314);
        let x_1317 : f32 = u_xlat38.x;
        let x_1318 : f32 = u_xlat53;
        u_xlat38.x = (x_1317 + x_1318);
        let x_1322 : f32 = u_xlat38.x;
        u_xlati52 = i32(x_1322);
      }
      let x_1324 : i32 = u_xlati52;
      u_xlati52 = (x_1324 << bitcast<u32>(2i));
      let x_1326 : vec3<f32> = vs_INTERP7;
      let x_1329 : i32 = u_xlati52;
      let x_1332 : i32 = u_xlati52;
      let x_1336 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_1329 + 1i) / 4i)][((x_1332 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_1326.y, x_1326.y, x_1326.y, x_1326.y) * x_1336);
      let x_1338 : i32 = u_xlati52;
      let x_1340 : i32 = u_xlati52;
      let x_1343 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[(x_1338 / 4i)][(x_1340 % 4i)];
      let x_1344 : vec3<f32> = vs_INTERP7;
      let x_1347 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_1343 * vec4<f32>(x_1344.x, x_1344.x, x_1344.x, x_1344.x)) + x_1347);
      let x_1349 : i32 = u_xlati52;
      let x_1352 : i32 = u_xlati52;
      let x_1356 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_1349 + 2i) / 4i)][((x_1352 + 2i) % 4i)];
      let x_1357 : vec3<f32> = vs_INTERP7;
      let x_1360 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_1356 * vec4<f32>(x_1357.z, x_1357.z, x_1357.z, x_1357.z)) + x_1360);
      let x_1362 : vec4<f32> = u_xlat12;
      let x_1363 : i32 = u_xlati52;
      let x_1366 : i32 = u_xlati52;
      let x_1370 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_1363 + 3i) / 4i)][((x_1366 + 3i) % 4i)];
      u_xlat12 = (x_1362 + x_1370);
      let x_1372 : vec4<f32> = u_xlat12;
      let x_1374 : vec4<f32> = u_xlat12;
      let x_1376 : vec3<f32> = (vec3<f32>(x_1372.x, x_1372.y, x_1372.z) / vec3<f32>(x_1374.w, x_1374.w, x_1374.w));
      let x_1377 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1377.w);
      let x_1380 : vec4<f32> = u_xlat12;
      let x_1381 : vec2<f32> = vec2<f32>(x_1380.x, x_1380.y);
      let x_1383 : f32 = u_xlat12.z;
      txVec1 = vec3<f32>(x_1381.x, x_1381.y, x_1383);
      let x_1391 : vec3<f32> = txVec1;
      let x_1393 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1391.xy, x_1391.z);
      u_xlat52 = x_1393;
      let x_1394 : i32 = u_xlati19;
      let x_1396 : f32 = x_312.x_AdditionalShadowParams[x_1394].x;
      u_xlat38.x = (1.0f + -(x_1396));
      let x_1400 : f32 = u_xlat52;
      let x_1401 : i32 = u_xlati19;
      let x_1403 : f32 = x_312.x_AdditionalShadowParams[x_1401].x;
      let x_1406 : f32 = u_xlat38.x;
      u_xlat52 = ((x_1400 * x_1403) + x_1406);
      let x_1409 : f32 = u_xlat12.z;
      u_xlatb38 = (0.0f >= x_1409);
      let x_1413 : f32 = u_xlat12.z;
      u_xlatb53 = (x_1413 >= 1.0f);
      let x_1415 : bool = u_xlatb53;
      let x_1416 : bool = u_xlatb38;
      u_xlatb38 = (x_1415 | x_1416);
      let x_1418 : bool = u_xlatb38;
      let x_1419 : f32 = u_xlat52;
      u_xlat52 = select(x_1419, 1.0f, x_1418);
    } else {
      u_xlat52 = 1.0f;
    }
    let x_1422 : f32 = u_xlat52;
    u_xlat38.x = (-(x_1422) + 1.0f);
    let x_1426 : f32 = u_xlat47;
    let x_1428 : f32 = u_xlat38.x;
    let x_1430 : f32 = u_xlat52;
    u_xlat52 = ((x_1426 * x_1428) + x_1430);
    let x_1433 : i32 = u_xlati19;
    u_xlati38 = (1i << bitcast<u32>((x_1433 & 31i)));
    let x_1437 : i32 = u_xlati38;
    let x_1440 : f32 = x_717.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_1437) & bitcast<u32>(x_1440)));
    let x_1444 : i32 = u_xlati38;
    if ((x_1444 != 0i)) {
      let x_1448 : i32 = u_xlati19;
      let x_1450 : f32 = x_717.x_AdditionalLightsLightTypes[x_1448].el;
      u_xlati38 = i32(x_1450);
      let x_1453 : i32 = u_xlati38;
      u_xlati53 = select(1i, 0i, (x_1453 != 0i));
      let x_1457 : i32 = u_xlati19;
      u_xlati54 = (x_1457 << bitcast<u32>(2i));
      let x_1459 : i32 = u_xlati53;
      if ((x_1459 != 0i)) {
        let x_1463 : vec3<f32> = vs_INTERP7;
        let x_1465 : i32 = u_xlati54;
        let x_1468 : i32 = u_xlati54;
        let x_1472 : vec4<f32> = x_717.x_AdditionalLightsWorldToLights[((x_1465 + 1i) / 4i)][((x_1468 + 1i) % 4i)];
        let x_1474 : vec3<f32> = (vec3<f32>(x_1463.y, x_1463.y, x_1463.y) * vec3<f32>(x_1472.x, x_1472.y, x_1472.w));
        let x_1475 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1474.x, x_1474.y, x_1474.z, x_1475.w);
        let x_1477 : i32 = u_xlati54;
        let x_1479 : i32 = u_xlati54;
        let x_1482 : vec4<f32> = x_717.x_AdditionalLightsWorldToLights[(x_1477 / 4i)][(x_1479 % 4i)];
        let x_1484 : vec3<f32> = vs_INTERP7;
        let x_1487 : vec4<f32> = u_xlat12;
        let x_1489 : vec3<f32> = ((vec3<f32>(x_1482.x, x_1482.y, x_1482.w) * vec3<f32>(x_1484.x, x_1484.x, x_1484.x)) + vec3<f32>(x_1487.x, x_1487.y, x_1487.z));
        let x_1490 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1489.x, x_1489.y, x_1489.z, x_1490.w);
        let x_1492 : i32 = u_xlati54;
        let x_1495 : i32 = u_xlati54;
        let x_1499 : vec4<f32> = x_717.x_AdditionalLightsWorldToLights[((x_1492 + 2i) / 4i)][((x_1495 + 2i) % 4i)];
        let x_1501 : vec3<f32> = vs_INTERP7;
        let x_1504 : vec4<f32> = u_xlat12;
        let x_1506 : vec3<f32> = ((vec3<f32>(x_1499.x, x_1499.y, x_1499.w) * vec3<f32>(x_1501.z, x_1501.z, x_1501.z)) + vec3<f32>(x_1504.x, x_1504.y, x_1504.z));
        let x_1507 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1507.w);
        let x_1509 : vec4<f32> = u_xlat12;
        let x_1511 : i32 = u_xlati54;
        let x_1514 : i32 = u_xlati54;
        let x_1518 : vec4<f32> = x_717.x_AdditionalLightsWorldToLights[((x_1511 + 3i) / 4i)][((x_1514 + 3i) % 4i)];
        let x_1520 : vec3<f32> = (vec3<f32>(x_1509.x, x_1509.y, x_1509.z) + vec3<f32>(x_1518.x, x_1518.y, x_1518.w));
        let x_1521 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1520.x, x_1520.y, x_1520.z, x_1521.w);
        let x_1523 : vec4<f32> = u_xlat12;
        let x_1525 : vec4<f32> = u_xlat12;
        let x_1527 : vec2<f32> = (vec2<f32>(x_1523.x, x_1523.y) / vec2<f32>(x_1525.z, x_1525.z));
        let x_1528 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1527.x, x_1527.y, x_1528.z, x_1528.w);
        let x_1530 : vec4<f32> = u_xlat12;
        let x_1533 : vec2<f32> = ((vec2<f32>(x_1530.x, x_1530.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1534 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1533.x, x_1533.y, x_1534.z, x_1534.w);
        let x_1536 : vec4<f32> = u_xlat12;
        let x_1540 : vec2<f32> = clamp(vec2<f32>(x_1536.x, x_1536.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1541 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1540.x, x_1540.y, x_1541.z, x_1541.w);
        let x_1543 : i32 = u_xlati19;
        let x_1545 : vec4<f32> = x_717.x_AdditionalLightsCookieAtlasUVRects[x_1543];
        let x_1547 : vec4<f32> = u_xlat12;
        let x_1550 : i32 = u_xlati19;
        let x_1552 : vec4<f32> = x_717.x_AdditionalLightsCookieAtlasUVRects[x_1550];
        let x_1554 : vec2<f32> = ((vec2<f32>(x_1545.x, x_1545.y) * vec2<f32>(x_1547.x, x_1547.y)) + vec2<f32>(x_1552.z, x_1552.w));
        let x_1555 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1554.x, x_1554.y, x_1555.z, x_1555.w);
      } else {
        let x_1558 : i32 = u_xlati38;
        u_xlatb38 = (x_1558 == 1i);
        let x_1560 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1560);
        let x_1562 : i32 = u_xlati38;
        if ((x_1562 != 0i)) {
          let x_1566 : vec3<f32> = vs_INTERP7;
          let x_1568 : i32 = u_xlati54;
          let x_1571 : i32 = u_xlati54;
          let x_1575 : vec4<f32> = x_717.x_AdditionalLightsWorldToLights[((x_1568 + 1i) / 4i)][((x_1571 + 1i) % 4i)];
          u_xlat38 = (vec2<f32>(x_1566.y, x_1566.y) * vec2<f32>(x_1575.x, x_1575.y));
          let x_1578 : i32 = u_xlati54;
          let x_1580 : i32 = u_xlati54;
          let x_1583 : vec4<f32> = x_717.x_AdditionalLightsWorldToLights[(x_1578 / 4i)][(x_1580 % 4i)];
          let x_1585 : vec3<f32> = vs_INTERP7;
          let x_1588 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1583.x, x_1583.y) * vec2<f32>(x_1585.x, x_1585.x)) + x_1588);
          let x_1590 : i32 = u_xlati54;
          let x_1593 : i32 = u_xlati54;
          let x_1597 : vec4<f32> = x_717.x_AdditionalLightsWorldToLights[((x_1590 + 2i) / 4i)][((x_1593 + 2i) % 4i)];
          let x_1599 : vec3<f32> = vs_INTERP7;
          let x_1602 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1597.x, x_1597.y) * vec2<f32>(x_1599.z, x_1599.z)) + x_1602);
          let x_1604 : vec2<f32> = u_xlat38;
          let x_1605 : i32 = u_xlati54;
          let x_1608 : i32 = u_xlati54;
          let x_1612 : vec4<f32> = x_717.x_AdditionalLightsWorldToLights[((x_1605 + 3i) / 4i)][((x_1608 + 3i) % 4i)];
          u_xlat38 = (x_1604 + vec2<f32>(x_1612.x, x_1612.y));
          let x_1615 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1615 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1618 : vec2<f32> = u_xlat38;
          u_xlat38 = fract(x_1618);
          let x_1620 : i32 = u_xlati19;
          let x_1622 : vec4<f32> = x_717.x_AdditionalLightsCookieAtlasUVRects[x_1620];
          let x_1624 : vec2<f32> = u_xlat38;
          let x_1626 : i32 = u_xlati19;
          let x_1628 : vec4<f32> = x_717.x_AdditionalLightsCookieAtlasUVRects[x_1626];
          let x_1630 : vec2<f32> = ((vec2<f32>(x_1622.x, x_1622.y) * x_1624) + vec2<f32>(x_1628.z, x_1628.w));
          let x_1631 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1630.x, x_1630.y, x_1631.z, x_1631.w);
        } else {
          let x_1635 : vec3<f32> = vs_INTERP7;
          let x_1637 : i32 = u_xlati54;
          let x_1640 : i32 = u_xlati54;
          let x_1644 : vec4<f32> = x_717.x_AdditionalLightsWorldToLights[((x_1637 + 1i) / 4i)][((x_1640 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1635.y, x_1635.y, x_1635.y, x_1635.y) * x_1644);
          let x_1646 : i32 = u_xlati54;
          let x_1648 : i32 = u_xlati54;
          let x_1651 : vec4<f32> = x_717.x_AdditionalLightsWorldToLights[(x_1646 / 4i)][(x_1648 % 4i)];
          let x_1652 : vec3<f32> = vs_INTERP7;
          let x_1655 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1651 * vec4<f32>(x_1652.x, x_1652.x, x_1652.x, x_1652.x)) + x_1655);
          let x_1657 : i32 = u_xlati54;
          let x_1660 : i32 = u_xlati54;
          let x_1664 : vec4<f32> = x_717.x_AdditionalLightsWorldToLights[((x_1657 + 2i) / 4i)][((x_1660 + 2i) % 4i)];
          let x_1665 : vec3<f32> = vs_INTERP7;
          let x_1668 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1664 * vec4<f32>(x_1665.z, x_1665.z, x_1665.z, x_1665.z)) + x_1668);
          let x_1670 : vec4<f32> = u_xlat13;
          let x_1671 : i32 = u_xlati54;
          let x_1674 : i32 = u_xlati54;
          let x_1678 : vec4<f32> = x_717.x_AdditionalLightsWorldToLights[((x_1671 + 3i) / 4i)][((x_1674 + 3i) % 4i)];
          u_xlat13 = (x_1670 + x_1678);
          let x_1680 : vec4<f32> = u_xlat13;
          let x_1682 : vec4<f32> = u_xlat13;
          let x_1684 : vec3<f32> = (vec3<f32>(x_1680.x, x_1680.y, x_1680.z) / vec3<f32>(x_1682.w, x_1682.w, x_1682.w));
          let x_1685 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1684.x, x_1684.y, x_1684.z, x_1685.w);
          let x_1687 : vec4<f32> = u_xlat13;
          let x_1689 : vec4<f32> = u_xlat13;
          u_xlat38.x = dot(vec3<f32>(x_1687.x, x_1687.y, x_1687.z), vec3<f32>(x_1689.x, x_1689.y, x_1689.z));
          let x_1694 : f32 = u_xlat38.x;
          u_xlat38.x = inverseSqrt(x_1694);
          let x_1697 : vec2<f32> = u_xlat38;
          let x_1699 : vec4<f32> = u_xlat13;
          let x_1701 : vec3<f32> = (vec3<f32>(x_1697.x, x_1697.x, x_1697.x) * vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
          let x_1702 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
          let x_1704 : vec4<f32> = u_xlat13;
          u_xlat38.x = dot(abs(vec3<f32>(x_1704.x, x_1704.y, x_1704.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1711 : f32 = u_xlat38.x;
          u_xlat38.x = max(x_1711, 0.00000099999999747524f);
          let x_1716 : f32 = u_xlat38.x;
          u_xlat38.x = (1.0f / x_1716);
          let x_1720 : vec2<f32> = u_xlat38;
          let x_1722 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1720.x, x_1720.x, x_1720.x) * vec3<f32>(x_1722.z, x_1722.x, x_1722.y));
          let x_1726 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1726);
          let x_1730 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1730, 0.0f, 1.0f);
          let x_1734 : vec3<f32> = u_xlat14;
          let x_1736 : vec4<bool> = (vec4<f32>(x_1734.y, x_1734.z, x_1734.y, x_1734.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb42 = vec2<bool>(x_1736.x, x_1736.y);
          let x_1740 : bool = u_xlatb42.x;
          if (x_1740) {
            let x_1745 : f32 = u_xlat14.x;
            x_1741 = x_1745;
          } else {
            let x_1748 : f32 = u_xlat14.x;
            x_1741 = -(x_1748);
          }
          let x_1750 : f32 = x_1741;
          u_xlat42.x = x_1750;
          let x_1753 : bool = u_xlatb42.y;
          if (x_1753) {
            let x_1758 : f32 = u_xlat14.x;
            x_1754 = x_1758;
          } else {
            let x_1761 : f32 = u_xlat14.x;
            x_1754 = -(x_1761);
          }
          let x_1763 : f32 = x_1754;
          u_xlat42.y = x_1763;
          let x_1765 : vec4<f32> = u_xlat13;
          let x_1767 : vec2<f32> = u_xlat38;
          let x_1770 : vec2<f32> = u_xlat42;
          u_xlat38 = ((vec2<f32>(x_1765.x, x_1765.y) * vec2<f32>(x_1767.x, x_1767.x)) + x_1770);
          let x_1772 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1772 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1775 : vec2<f32> = u_xlat38;
          u_xlat38 = clamp(x_1775, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1779 : i32 = u_xlati19;
          let x_1781 : vec4<f32> = x_717.x_AdditionalLightsCookieAtlasUVRects[x_1779];
          let x_1783 : vec2<f32> = u_xlat38;
          let x_1785 : i32 = u_xlati19;
          let x_1787 : vec4<f32> = x_717.x_AdditionalLightsCookieAtlasUVRects[x_1785];
          let x_1789 : vec2<f32> = ((vec2<f32>(x_1781.x, x_1781.y) * x_1783) + vec2<f32>(x_1787.z, x_1787.w));
          let x_1790 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1789.x, x_1789.y, x_1790.z, x_1790.w);
        }
      }
      let x_1797 : vec4<f32> = u_xlat12;
      let x_1799 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1797.x, x_1797.y), 0.0f);
      u_xlat12 = x_1799;
      let x_1801 : bool = u_xlatb8.y;
      if (x_1801) {
        let x_1806 : f32 = u_xlat12.w;
        x_1802 = x_1806;
      } else {
        let x_1809 : f32 = u_xlat12.x;
        x_1802 = x_1809;
      }
      let x_1810 : f32 = x_1802;
      u_xlat38.x = x_1810;
      let x_1813 : bool = u_xlatb8.x;
      if (x_1813) {
        let x_1817 : vec4<f32> = u_xlat12;
        x_1814 = vec3<f32>(x_1817.x, x_1817.y, x_1817.z);
      } else {
        let x_1820 : vec2<f32> = u_xlat38;
        x_1814 = vec3<f32>(x_1820.x, x_1820.x, x_1820.x);
      }
      let x_1822 : vec3<f32> = x_1814;
      let x_1823 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1823.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1829 : vec4<f32> = u_xlat12;
    let x_1831 : i32 = u_xlati19;
    let x_1833 : vec4<f32> = x_1161.x_AdditionalLightsColor[x_1831];
    let x_1835 : vec3<f32> = (vec3<f32>(x_1829.x, x_1829.y, x_1829.z) * vec3<f32>(x_1833.x, x_1833.y, x_1833.z));
    let x_1836 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1835.x, x_1835.y, x_1835.z, x_1836.w);
    let x_1838 : f32 = u_xlat50;
    let x_1839 : f32 = u_xlat52;
    u_xlat19.x = (x_1838 * x_1839);
    let x_1842 : vec4<f32> = u_xlat1;
    let x_1844 : vec3<f32> = u_xlat11;
    u_xlat50 = dot(vec3<f32>(x_1842.x, x_1842.y, x_1842.w), x_1844);
    let x_1846 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1846, 0.0f, 1.0f);
    let x_1849 : f32 = u_xlat19.x;
    let x_1850 : f32 = u_xlat50;
    u_xlat19.x = (x_1849 * x_1850);
    let x_1853 : vec3<f32> = u_xlat19;
    let x_1855 : vec4<f32> = u_xlat12;
    let x_1857 : vec3<f32> = (vec3<f32>(x_1853.x, x_1853.x, x_1853.x) * vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
    let x_1858 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1857.x, x_1857.y, x_1857.z, x_1858.w);
    let x_1860 : vec3<f32> = u_xlat25;
    let x_1861 : f32 = u_xlat51;
    let x_1864 : vec3<f32> = u_xlat5;
    u_xlat25 = ((x_1860 * vec3<f32>(x_1861, x_1861, x_1861)) + x_1864);
    let x_1866 : vec3<f32> = u_xlat25;
    let x_1867 : vec3<f32> = u_xlat25;
    u_xlat19.x = dot(x_1866, x_1867);
    let x_1871 : f32 = u_xlat19.x;
    u_xlat19.x = max(x_1871, 1.17549435e-38f);
    let x_1875 : f32 = u_xlat19.x;
    u_xlat19.x = inverseSqrt(x_1875);
    let x_1878 : vec3<f32> = u_xlat19;
    let x_1880 : vec3<f32> = u_xlat25;
    u_xlat25 = (vec3<f32>(x_1878.x, x_1878.x, x_1878.x) * x_1880);
    let x_1882 : vec4<f32> = u_xlat1;
    let x_1884 : vec3<f32> = u_xlat25;
    u_xlat19.x = dot(vec3<f32>(x_1882.x, x_1882.y, x_1882.w), x_1884);
    let x_1888 : f32 = u_xlat19.x;
    u_xlat19.x = clamp(x_1888, 0.0f, 1.0f);
    let x_1891 : vec3<f32> = u_xlat11;
    let x_1892 : vec3<f32> = u_xlat25;
    u_xlat50 = dot(x_1891, x_1892);
    let x_1894 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1894, 0.0f, 1.0f);
    let x_1897 : f32 = u_xlat19.x;
    let x_1899 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1897 * x_1899);
    let x_1903 : f32 = u_xlat19.x;
    let x_1905 : f32 = u_xlat10.x;
    u_xlat19.x = ((x_1903 * x_1905) + 1.00001001358032226562f);
    let x_1909 : f32 = u_xlat50;
    let x_1910 : f32 = u_xlat50;
    u_xlat50 = (x_1909 * x_1910);
    let x_1913 : f32 = u_xlat19.x;
    let x_1915 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1913 * x_1915);
    let x_1918 : f32 = u_xlat50;
    u_xlat50 = max(x_1918, 0.10000000149011611938f);
    let x_1921 : f32 = u_xlat19.x;
    let x_1922 : f32 = u_xlat50;
    u_xlat19.x = (x_1921 * x_1922);
    let x_1925 : f32 = u_xlat48;
    let x_1927 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1925 * x_1927);
    let x_1930 : f32 = u_xlat18;
    let x_1932 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1930 / x_1932);
    let x_1935 : vec3<f32> = u_xlat0;
    let x_1936 : vec3<f32> = u_xlat19;
    let x_1939 : vec3<f32> = u_xlat7;
    u_xlat25 = ((x_1935 * vec3<f32>(x_1936.x, x_1936.x, x_1936.x)) + x_1939);
    let x_1941 : vec3<f32> = u_xlat25;
    let x_1942 : vec4<f32> = u_xlat12;
    let x_1945 : vec4<f32> = u_xlat9;
    let x_1947 : vec3<f32> = ((x_1941 * vec3<f32>(x_1942.x, x_1942.y, x_1942.z)) + vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
    let x_1948 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);

    continuing {
      let x_1950 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1950 + bitcast<u32>(1i));
    }
  }
  let x_1952 : vec4<f32> = u_xlat6;
  let x_1954 : f32 = u_xlat33;
  let x_1957 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_1952.x, x_1952.y, x_1952.z) * vec3<f32>(x_1954, x_1954, x_1954)) + vec3<f32>(x_1957.x, x_1957.z, x_1957.w));
  let x_1960 : vec4<f32> = u_xlat9;
  let x_1962 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1960.x, x_1960.y, x_1960.z) + x_1962);
  let x_1966 : vec3<f32> = u_xlat2;
  let x_1967 : f32 = u_xlat31;
  let x_1970 : vec3<f32> = u_xlat0;
  let x_1971 : vec3<f32> = ((x_1966 * vec3<f32>(x_1967, x_1967, x_1967)) + x_1970);
  let x_1972 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1971.x, x_1971.y, x_1971.z, x_1972.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


