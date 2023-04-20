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

@group(0) @binding(3) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_177 : LightShadows;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu15 : u32;

var<private> u_xlati15 : i32;

@group(1) @binding(2) var<uniform> x_353 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb29 : bool;

var<private> u_xlatb43 : bool;

var<private> u_xlat43 : f32;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_581 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1043 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu44 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var x_117 : f32;
  var x_130 : f32;
  var x_142 : f32;
  var txVec0 : vec3<f32>;
  var x_534 : f32;
  var x_666 : f32;
  var x_677 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1175 : f32;
  var x_1185 : f32;
  var txVec1 : vec3<f32>;
  var x_1615 : f32;
  var x_1628 : f32;
  var x_1686 : f32;
  var x_1697 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_29.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1.x = x_77.x;
  let x_84 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb15 = (x_84 == 0.0f);
  let x_89 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_95 : vec3<f32> = (-(x_89) + x_94);
  let x_96 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_99 : vec4<f32> = u_xlat2;
  let x_101 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_99.x, x_99.y, x_99.z), vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_104);
  let x_106 : f32 = u_xlat29;
  let x_108 : vec4<f32> = u_xlat2;
  let x_110 : vec3<f32> = (vec3<f32>(x_106, x_106, x_106) * vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_115 : bool = u_xlatb15;
  if (x_115) {
    let x_121 : f32 = u_xlat2.x;
    x_117 = x_121;
  } else {
    let x_126 : f32 = x_29.unity_MatrixV[0i].z;
    x_117 = x_126;
  }
  let x_127 : f32 = x_117;
  u_xlat3.x = x_127;
  let x_129 : bool = u_xlatb15;
  if (x_129) {
    let x_135 : f32 = u_xlat2.y;
    x_130 = x_135;
  } else {
    let x_138 : f32 = x_29.unity_MatrixV[1i].z;
    x_130 = x_138;
  }
  let x_139 : f32 = x_130;
  u_xlat3.y = x_139;
  let x_141 : bool = u_xlatb15;
  if (x_141) {
    let x_146 : f32 = u_xlat2.z;
    x_142 = x_146;
  } else {
    let x_150 : f32 = x_29.unity_MatrixV[2i].z;
    x_142 = x_150;
  }
  let x_151 : f32 = x_142;
  u_xlat3.z = x_151;
  let x_155 : vec3<f32> = vs_TEXCOORD3;
  let x_156 : vec3<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(x_155, x_156);
  let x_160 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_160);
  let x_163 : vec3<f32> = u_xlat15;
  let x_165 : vec3<f32> = vs_TEXCOORD3;
  let x_166 : vec3<f32> = (vec3<f32>(x_163.x, x_163.x, x_163.x) * x_165);
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_169 : vec3<f32> = vs_TEXCOORD7;
  let x_180 : vec4<f32> = x_177.x_CascadeShadowSplitSpheres0;
  u_xlat15 = (x_169 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_185 : vec3<f32> = vs_TEXCOORD7;
  let x_187 : vec4<f32> = x_177.x_CascadeShadowSplitSpheres1;
  u_xlat4 = (x_185 + -(vec3<f32>(x_187.x, x_187.y, x_187.z)));
  let x_192 : vec3<f32> = vs_TEXCOORD7;
  let x_195 : vec4<f32> = x_177.x_CascadeShadowSplitSpheres2;
  let x_198 : vec3<f32> = (x_192 + -(vec3<f32>(x_195.x, x_195.y, x_195.z)));
  let x_199 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_202 : vec3<f32> = vs_TEXCOORD7;
  let x_204 : vec4<f32> = x_177.x_CascadeShadowSplitSpheres3;
  let x_207 : vec3<f32> = (x_202 + -(vec3<f32>(x_204.x, x_204.y, x_204.z)));
  let x_208 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_211 : vec3<f32> = u_xlat15;
  let x_212 : vec3<f32> = u_xlat15;
  u_xlat7.x = dot(x_211, x_212);
  let x_215 : vec3<f32> = u_xlat4;
  let x_216 : vec3<f32> = u_xlat4;
  u_xlat7.y = dot(x_215, x_216);
  let x_219 : vec4<f32> = u_xlat5;
  let x_221 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_219.x, x_219.y, x_219.z), vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_225 : vec4<f32> = u_xlat6;
  let x_227 : vec4<f32> = u_xlat6;
  u_xlat7.w = dot(vec3<f32>(x_225.x, x_225.y, x_225.z), vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_234 : vec4<f32> = u_xlat7;
  let x_236 : vec4<f32> = x_177.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_234 < x_236);
  let x_239 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_239);
  let x_244 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_244);
  let x_248 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_248);
  let x_252 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_252);
  let x_256 : bool = u_xlatb4.x;
  u_xlat15.x = select(-0.0f, -1.0f, x_256);
  let x_262 : bool = u_xlatb4.y;
  u_xlat15.y = select(-0.0f, -1.0f, x_262);
  let x_266 : bool = u_xlatb4.z;
  u_xlat15.z = select(-0.0f, -1.0f, x_266);
  let x_269 : vec3<f32> = u_xlat15;
  let x_270 : vec4<f32> = u_xlat5;
  u_xlat15 = (x_269 + vec3<f32>(x_270.y, x_270.z, x_270.w));
  let x_273 : vec3<f32> = u_xlat15;
  let x_275 : vec3<f32> = max(x_273, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_276 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_276.x, x_275.x, x_275.y, x_275.z);
  let x_278 : vec4<f32> = u_xlat5;
  u_xlat15.x = dot(x_278, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_286 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_286) + 4.0f);
  let x_293 : f32 = u_xlat15.x;
  u_xlatu15 = u32(x_293);
  let x_297 : u32 = u_xlatu15;
  u_xlati15 = (bitcast<i32>(x_297) << bitcast<u32>(2i));
  let x_300 : vec3<f32> = vs_TEXCOORD7;
  let x_302 : i32 = u_xlati15;
  let x_305 : i32 = u_xlati15;
  let x_309 : vec4<f32> = x_177.x_MainLightWorldToShadow[((x_302 + 1i) / 4i)][((x_305 + 1i) % 4i)];
  u_xlat4 = (vec3<f32>(x_300.y, x_300.y, x_300.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : i32 = u_xlati15;
  let x_314 : i32 = u_xlati15;
  let x_317 : vec4<f32> = x_177.x_MainLightWorldToShadow[(x_312 / 4i)][(x_314 % 4i)];
  let x_319 : vec3<f32> = vs_TEXCOORD7;
  let x_322 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_317.x, x_317.y, x_317.z) * vec3<f32>(x_319.x, x_319.x, x_319.x)) + x_322);
  let x_324 : i32 = u_xlati15;
  let x_327 : i32 = u_xlati15;
  let x_331 : vec4<f32> = x_177.x_MainLightWorldToShadow[((x_324 + 2i) / 4i)][((x_327 + 2i) % 4i)];
  let x_333 : vec3<f32> = vs_TEXCOORD7;
  let x_336 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(x_333.z, x_333.z, x_333.z)) + x_336);
  let x_338 : vec3<f32> = u_xlat4;
  let x_339 : i32 = u_xlati15;
  let x_342 : i32 = u_xlati15;
  let x_346 : vec4<f32> = x_177.x_MainLightWorldToShadow[((x_339 + 3i) / 4i)][((x_342 + 3i) % 4i)];
  u_xlat15 = (x_338 + vec3<f32>(x_346.x, x_346.y, x_346.z));
  u_xlat2.w = 1.0f;
  let x_356 : vec4<f32> = x_353.unity_SHAr;
  let x_357 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_356, x_357);
  let x_362 : vec4<f32> = x_353.unity_SHAg;
  let x_363 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_362, x_363);
  let x_368 : vec4<f32> = x_353.unity_SHAb;
  let x_369 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_368, x_369);
  let x_372 : vec4<f32> = u_xlat2;
  let x_374 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_372.y, x_372.z, x_372.z, x_372.x) * vec4<f32>(x_374.x, x_374.y, x_374.z, x_374.z));
  let x_379 : vec4<f32> = x_353.unity_SHBr;
  let x_380 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_379, x_380);
  let x_385 : vec4<f32> = x_353.unity_SHBg;
  let x_386 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_385, x_386);
  let x_391 : vec4<f32> = x_353.unity_SHBb;
  let x_392 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_391, x_392);
  let x_397 : f32 = u_xlat2.y;
  let x_399 : f32 = u_xlat2.y;
  u_xlat44 = (x_397 * x_399);
  let x_402 : f32 = u_xlat2.x;
  let x_404 : f32 = u_xlat2.x;
  let x_406 : f32 = u_xlat44;
  u_xlat44 = ((x_402 * x_404) + -(x_406));
  let x_411 : vec4<f32> = x_353.unity_SHC;
  let x_413 : f32 = u_xlat44;
  let x_416 : vec4<f32> = u_xlat6;
  let x_418 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413, x_413, x_413)) + vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec3<f32> = u_xlat4;
  let x_422 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_421 + vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_425, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_428 : f32 = u_xlat1.x;
  u_xlat44 = ((-(x_428) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_434 : f32 = u_xlat44;
  u_xlat45 = (-(x_434) + 1.0f);
  let x_437 : vec4<f32> = u_xlat0;
  let x_439 : f32 = u_xlat44;
  let x_441 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) * vec3<f32>(x_439, x_439, x_439));
  let x_442 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat0;
  let x_448 : vec3<f32> = (vec3<f32>(x_444.x, x_444.y, x_444.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_449 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_451 : vec4<f32> = u_xlat1;
  let x_453 : vec4<f32> = u_xlat0;
  let x_458 : vec3<f32> = ((vec3<f32>(x_451.x, x_451.x, x_451.x) * vec3<f32>(x_453.x, x_453.y, x_453.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_459 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_462 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_462) + 1.0f);
  let x_467 : f32 = u_xlat1.x;
  let x_469 : f32 = u_xlat1.x;
  u_xlat44 = (x_467 * x_469);
  let x_471 : f32 = u_xlat44;
  u_xlat44 = max(x_471, 0.0078125f);
  let x_475 : f32 = u_xlat44;
  let x_476 : f32 = u_xlat44;
  u_xlat46 = (x_475 * x_476);
  let x_480 : f32 = u_xlat0.w;
  let x_481 : f32 = u_xlat45;
  u_xlat42 = (x_480 + x_481);
  let x_483 : f32 = u_xlat42;
  u_xlat42 = clamp(x_483, 0.0f, 1.0f);
  let x_485 : f32 = u_xlat44;
  u_xlat45 = ((x_485 * 4.0f) + 2.0f);
  let x_490 : vec3<f32> = u_xlat15;
  let x_491 : vec2<f32> = vec2<f32>(x_490.x, x_490.y);
  let x_493 : f32 = u_xlat15.z;
  txVec0 = vec3<f32>(x_491.x, x_491.y, x_493);
  let x_505 : vec3<f32> = txVec0;
  let x_507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_505.xy, x_505.z);
  u_xlat15.x = x_507;
  let x_511 : f32 = x_177.x_MainLightShadowParams.x;
  u_xlat29 = (-(x_511) + 1.0f);
  let x_515 : f32 = u_xlat15.x;
  let x_517 : f32 = x_177.x_MainLightShadowParams.x;
  let x_519 : f32 = u_xlat29;
  u_xlat15.x = ((x_515 * x_517) + x_519);
  let x_524 : f32 = u_xlat15.z;
  u_xlatb29 = (0.0f >= x_524);
  let x_528 : f32 = u_xlat15.z;
  u_xlatb43 = (x_528 >= 1.0f);
  let x_530 : bool = u_xlatb43;
  let x_531 : bool = u_xlatb29;
  u_xlatb29 = (x_530 | x_531);
  let x_533 : bool = u_xlatb29;
  if (x_533) {
    x_534 = 1.0f;
  } else {
    let x_539 : f32 = u_xlat15.x;
    x_534 = x_539;
  }
  let x_540 : f32 = x_534;
  u_xlat15.x = x_540;
  let x_542 : vec3<f32> = vs_TEXCOORD7;
  let x_544 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_546 : vec3<f32> = (x_542 + -(x_544));
  let x_547 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_549 : vec4<f32> = u_xlat6;
  let x_551 : vec4<f32> = u_xlat6;
  u_xlat29 = dot(vec3<f32>(x_549.x, x_549.y, x_549.z), vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_555 : f32 = u_xlat29;
  let x_557 : f32 = x_177.x_MainLightShadowParams.z;
  let x_560 : f32 = x_177.x_MainLightShadowParams.w;
  u_xlat43 = ((x_555 * x_557) + x_560);
  let x_562 : f32 = u_xlat43;
  u_xlat43 = clamp(x_562, 0.0f, 1.0f);
  let x_566 : f32 = u_xlat15.x;
  u_xlat47 = (-(x_566) + 1.0f);
  let x_569 : f32 = u_xlat43;
  let x_570 : f32 = u_xlat47;
  let x_573 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_569 * x_570) + x_573);
  let x_583 : f32 = x_581.x_MainLightCookieTextureFormat;
  u_xlatb43 = !((x_583 == -1.0f));
  let x_585 : bool = u_xlatb43;
  if (x_585) {
    let x_588 : vec3<f32> = vs_TEXCOORD7;
    let x_591 : vec4<f32> = x_581.x_MainLightWorldToLight[1i];
    let x_593 : vec2<f32> = (vec2<f32>(x_588.y, x_588.y) * vec2<f32>(x_591.x, x_591.y));
    let x_594 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
    let x_597 : vec4<f32> = x_581.x_MainLightWorldToLight[0i];
    let x_599 : vec3<f32> = vs_TEXCOORD7;
    let x_602 : vec4<f32> = u_xlat6;
    let x_604 : vec2<f32> = ((vec2<f32>(x_597.x, x_597.y) * vec2<f32>(x_599.x, x_599.x)) + vec2<f32>(x_602.x, x_602.y));
    let x_605 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_604.x, x_604.y, x_605.z, x_605.w);
    let x_608 : vec4<f32> = x_581.x_MainLightWorldToLight[2i];
    let x_610 : vec3<f32> = vs_TEXCOORD7;
    let x_613 : vec4<f32> = u_xlat6;
    let x_615 : vec2<f32> = ((vec2<f32>(x_608.x, x_608.y) * vec2<f32>(x_610.z, x_610.z)) + vec2<f32>(x_613.x, x_613.y));
    let x_616 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_616.w);
    let x_618 : vec4<f32> = u_xlat6;
    let x_621 : vec4<f32> = x_581.x_MainLightWorldToLight[3i];
    let x_623 : vec2<f32> = (vec2<f32>(x_618.x, x_618.y) + vec2<f32>(x_621.x, x_621.y));
    let x_624 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
    let x_626 : vec4<f32> = u_xlat6;
    let x_631 : vec2<f32> = ((vec2<f32>(x_626.x, x_626.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_632 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_631.x, x_631.y, x_632.z, x_632.w);
    let x_639 : vec4<f32> = u_xlat6;
    let x_642 : f32 = x_29.x_GlobalMipBias.x;
    let x_643 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_639.x, x_639.y), x_642);
    u_xlat6 = x_643;
    let x_648 : f32 = x_581.x_MainLightCookieTextureFormat;
    let x_650 : f32 = x_581.x_MainLightCookieTextureFormat;
    let x_652 : f32 = x_581.x_MainLightCookieTextureFormat;
    let x_654 : f32 = x_581.x_MainLightCookieTextureFormat;
    let x_655 : vec4<f32> = vec4<f32>(x_648, x_650, x_652, x_654);
    let x_662 : vec4<bool> = (vec4<f32>(x_655.x, x_655.y, x_655.z, x_655.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_662.x, x_662.y);
    let x_665 : bool = u_xlatb7.y;
    if (x_665) {
      let x_670 : f32 = u_xlat6.w;
      x_666 = x_670;
    } else {
      let x_673 : f32 = u_xlat6.x;
      x_666 = x_673;
    }
    let x_674 : f32 = x_666;
    u_xlat43 = x_674;
    let x_676 : bool = u_xlatb7.x;
    if (x_676) {
      let x_680 : vec4<f32> = u_xlat6;
      x_677 = vec3<f32>(x_680.x, x_680.y, x_680.z);
    } else {
      let x_683 : f32 = u_xlat43;
      x_677 = vec3<f32>(x_683, x_683, x_683);
    }
    let x_685 : vec3<f32> = x_677;
    let x_686 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_692 : vec4<f32> = u_xlat6;
  let x_695 : vec4<f32> = x_29.x_MainLightColor;
  let x_697 : vec3<f32> = (vec3<f32>(x_692.x, x_692.y, x_692.z) * vec3<f32>(x_695.x, x_695.y, x_695.z));
  let x_698 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_700 : vec3<f32> = u_xlat3;
  let x_702 : vec4<f32> = u_xlat2;
  u_xlat43 = dot(-(x_700), vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : f32 = u_xlat43;
  let x_706 : f32 = u_xlat43;
  u_xlat43 = (x_705 + x_706);
  let x_708 : vec4<f32> = u_xlat2;
  let x_710 : f32 = u_xlat43;
  let x_714 : vec3<f32> = u_xlat3;
  let x_716 : vec3<f32> = ((vec3<f32>(x_708.x, x_708.y, x_708.z) * -(vec3<f32>(x_710, x_710, x_710))) + -(x_714));
  let x_717 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : vec4<f32> = u_xlat2;
  let x_721 : vec3<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_719.x, x_719.y, x_719.z), x_721);
  let x_723 : f32 = u_xlat43;
  u_xlat43 = clamp(x_723, 0.0f, 1.0f);
  let x_725 : f32 = u_xlat43;
  u_xlat43 = (-(x_725) + 1.0f);
  let x_728 : f32 = u_xlat43;
  let x_729 : f32 = u_xlat43;
  u_xlat43 = (x_728 * x_729);
  let x_731 : f32 = u_xlat43;
  let x_732 : f32 = u_xlat43;
  u_xlat43 = (x_731 * x_732);
  let x_735 : f32 = u_xlat1.x;
  u_xlat47 = ((-(x_735) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_742 : f32 = u_xlat1.x;
  let x_743 : f32 = u_xlat47;
  u_xlat1.x = (x_742 * x_743);
  let x_747 : f32 = u_xlat1.x;
  u_xlat1.x = (x_747 * 6.0f);
  let x_759 : vec4<f32> = u_xlat7;
  let x_762 : f32 = u_xlat1.x;
  let x_763 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_759.x, x_759.y, x_759.z), x_762);
  u_xlat7 = x_763;
  let x_765 : f32 = u_xlat7.w;
  u_xlat1.x = (x_765 + -1.0f);
  let x_769 : f32 = x_353.unity_SpecCube0_HDR.w;
  let x_771 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_769 * x_771) + 1.0f);
  let x_776 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_776, 0.0f);
  let x_780 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_780);
  let x_784 : f32 = u_xlat1.x;
  let x_786 : f32 = x_353.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_784 * x_786);
  let x_790 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_790);
  let x_794 : f32 = u_xlat1.x;
  let x_796 : f32 = x_353.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_794 * x_796);
  let x_799 : vec4<f32> = u_xlat7;
  let x_801 : vec4<f32> = u_xlat1;
  let x_803 : vec3<f32> = (vec3<f32>(x_799.x, x_799.y, x_799.z) * vec3<f32>(x_801.x, x_801.x, x_801.x));
  let x_804 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_808 : f32 = u_xlat44;
  let x_810 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_808, x_808) * vec2<f32>(x_810, x_810)) + vec2<f32>(-1.0f, 1.0f));
  let x_816 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_816);
  let x_820 : vec4<f32> = u_xlat0;
  let x_823 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_820.x, x_820.y, x_820.z)) + vec3<f32>(x_823, x_823, x_823));
  let x_826 : f32 = u_xlat43;
  let x_828 : vec3<f32> = u_xlat22;
  let x_830 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_826, x_826, x_826) * x_828) + vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat1;
  let x_835 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_833.x, x_833.x, x_833.x) * x_835);
  let x_837 : vec4<f32> = u_xlat7;
  let x_839 : vec3<f32> = u_xlat22;
  let x_840 : vec3<f32> = (vec3<f32>(x_837.x, x_837.y, x_837.z) * x_839);
  let x_841 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec3<f32> = u_xlat4;
  let x_844 : vec4<f32> = u_xlat5;
  let x_847 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_843 * vec3<f32>(x_844.x, x_844.y, x_844.z)) + vec3<f32>(x_847.x, x_847.y, x_847.z));
  let x_851 : f32 = u_xlat15.x;
  let x_853 : f32 = x_353.unity_LightData.z;
  u_xlat42 = (x_851 * x_853);
  let x_855 : vec4<f32> = u_xlat2;
  let x_858 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_855.x, x_855.y, x_855.z), vec3<f32>(x_858.x, x_858.y, x_858.z));
  let x_863 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_863, 0.0f, 1.0f);
  let x_866 : f32 = u_xlat42;
  let x_868 : f32 = u_xlat1.x;
  u_xlat42 = (x_866 * x_868);
  let x_870 : f32 = u_xlat42;
  let x_872 : vec4<f32> = u_xlat6;
  let x_874 : vec3<f32> = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_874.x, x_874.y, x_875.z, x_874.z);
  let x_877 : vec3<f32> = u_xlat3;
  let x_879 : vec4<f32> = x_29.x_MainLightPosition;
  let x_881 : vec3<f32> = (x_877 + vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec4<f32> = u_xlat6;
  let x_886 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_884.x, x_884.y, x_884.z), vec3<f32>(x_886.x, x_886.y, x_886.z));
  let x_889 : f32 = u_xlat42;
  u_xlat42 = max(x_889, 1.17549435e-38f);
  let x_892 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_892);
  let x_894 : f32 = u_xlat42;
  let x_896 : vec4<f32> = u_xlat6;
  let x_898 : vec3<f32> = (vec3<f32>(x_894, x_894, x_894) * vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_899 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_901 : vec4<f32> = u_xlat2;
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_901.x, x_901.y, x_901.z), vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : f32 = u_xlat42;
  u_xlat42 = clamp(x_906, 0.0f, 1.0f);
  let x_909 : vec4<f32> = x_29.x_MainLightPosition;
  let x_911 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_909.x, x_909.y, x_909.z), vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : f32 = u_xlat44;
  u_xlat44 = clamp(x_914, 0.0f, 1.0f);
  let x_916 : f32 = u_xlat42;
  let x_917 : f32 = u_xlat42;
  u_xlat42 = (x_916 * x_917);
  let x_919 : f32 = u_xlat42;
  let x_921 : f32 = u_xlat8.x;
  u_xlat42 = ((x_919 * x_921) + 1.00001001358032226562f);
  let x_925 : f32 = u_xlat44;
  let x_926 : f32 = u_xlat44;
  u_xlat44 = (x_925 * x_926);
  let x_928 : f32 = u_xlat42;
  let x_929 : f32 = u_xlat42;
  u_xlat42 = (x_928 * x_929);
  let x_931 : f32 = u_xlat44;
  u_xlat44 = max(x_931, 0.10000000149011611938f);
  let x_934 : f32 = u_xlat42;
  let x_935 : f32 = u_xlat44;
  u_xlat42 = (x_934 * x_935);
  let x_937 : f32 = u_xlat45;
  let x_938 : f32 = u_xlat42;
  u_xlat42 = (x_937 * x_938);
  let x_940 : f32 = u_xlat46;
  let x_941 : f32 = u_xlat42;
  u_xlat42 = (x_940 / x_941);
  let x_943 : vec4<f32> = u_xlat0;
  let x_945 : f32 = u_xlat42;
  let x_948 : vec4<f32> = u_xlat5;
  let x_950 : vec3<f32> = ((vec3<f32>(x_943.x, x_943.y, x_943.z) * vec3<f32>(x_945, x_945, x_945)) + vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_951 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_954 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_956 : f32 = x_353.unity_LightData.y;
  u_xlat42 = min(x_954, x_956);
  let x_959 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_959));
  let x_962 : f32 = u_xlat29;
  let x_965 : f32 = x_177.x_AdditionalShadowFadeParams.x;
  let x_968 : f32 = x_177.x_AdditionalShadowFadeParams.y;
  u_xlat29 = ((x_962 * x_965) + x_968);
  let x_970 : f32 = u_xlat29;
  u_xlat29 = clamp(x_970, 0.0f, 1.0f);
  let x_973 : f32 = x_581.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_975 : f32 = x_581.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_977 : f32 = x_581.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_979 : f32 = x_581.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_980 : vec4<f32> = vec4<f32>(x_973, x_975, x_977, x_979);
  let x_986 : vec4<bool> = (vec4<f32>(x_980.x, x_980.y, x_980.z, x_980.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_986.x, x_986.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_998 : u32 = u_xlatu_loop_1;
    let x_999 : u32 = u_xlatu42;
    if ((x_998 < x_999)) {
    } else {
      break;
    }
    let x_1002 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1002 >> 2u);
    let x_1005 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1005 & 3u));
    let x_1008 : u32 = u_xlatu47;
    let x_1011 : vec4<f32> = x_353.unity_LightIndices[bitcast<i32>(x_1008)];
    let x_1021 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1026 : vec4<u32> = indexable[x_1021];
    u_xlat47 = dot(x_1011, bitcast<vec4<f32>>(x_1026));
    let x_1030 : f32 = u_xlat47;
    u_xlati47 = i32(x_1030);
    let x_1033 : vec3<f32> = vs_TEXCOORD7;
    let x_1044 : i32 = u_xlati47;
    let x_1046 : vec4<f32> = x_1043.x_AdditionalLightsPosition[x_1044];
    let x_1049 : i32 = u_xlati47;
    let x_1051 : vec4<f32> = x_1043.x_AdditionalLightsPosition[x_1049];
    u_xlat9 = ((-(x_1033) * vec3<f32>(x_1046.w, x_1046.w, x_1046.w)) + vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
    let x_1055 : vec3<f32> = u_xlat9;
    let x_1056 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1055, x_1056);
    let x_1058 : f32 = u_xlat48;
    u_xlat48 = max(x_1058, 0.00006103515625f);
    let x_1062 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1062);
    let x_1065 : f32 = u_xlat35;
    let x_1067 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1065, x_1065, x_1065) * x_1067);
    let x_1070 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1070);
    let x_1072 : f32 = u_xlat48;
    let x_1073 : i32 = u_xlati47;
    let x_1075 : f32 = x_1043.x_AdditionalLightsAttenuation[x_1073].x;
    u_xlat48 = (x_1072 * x_1075);
    let x_1077 : f32 = u_xlat48;
    let x_1079 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1077) * x_1079) + 1.0f);
    let x_1082 : f32 = u_xlat48;
    u_xlat48 = max(x_1082, 0.0f);
    let x_1084 : f32 = u_xlat48;
    let x_1085 : f32 = u_xlat48;
    u_xlat48 = (x_1084 * x_1085);
    let x_1087 : f32 = u_xlat48;
    let x_1088 : f32 = u_xlat49;
    u_xlat48 = (x_1087 * x_1088);
    let x_1090 : i32 = u_xlati47;
    let x_1092 : vec4<f32> = x_1043.x_AdditionalLightsSpotDir[x_1090];
    let x_1094 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1092.x, x_1092.y, x_1092.z), x_1094);
    let x_1096 : f32 = u_xlat49;
    let x_1097 : i32 = u_xlati47;
    let x_1099 : f32 = x_1043.x_AdditionalLightsAttenuation[x_1097].z;
    let x_1101 : i32 = u_xlati47;
    let x_1103 : f32 = x_1043.x_AdditionalLightsAttenuation[x_1101].w;
    u_xlat49 = ((x_1096 * x_1099) + x_1103);
    let x_1105 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1105, 0.0f, 1.0f);
    let x_1107 : f32 = u_xlat49;
    let x_1108 : f32 = u_xlat49;
    u_xlat49 = (x_1107 * x_1108);
    let x_1110 : f32 = u_xlat48;
    let x_1111 : f32 = u_xlat49;
    u_xlat48 = (x_1110 * x_1111);
    let x_1115 : i32 = u_xlati47;
    let x_1117 : f32 = x_177.x_AdditionalShadowParams[x_1115].w;
    u_xlati49 = i32(x_1117);
    let x_1120 : i32 = u_xlati49;
    u_xlatb51 = (x_1120 >= 0i);
    let x_1122 : bool = u_xlatb51;
    if (x_1122) {
      let x_1126 : i32 = u_xlati47;
      let x_1128 : f32 = x_177.x_AdditionalShadowParams[x_1126].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1128, x_1128, x_1128, x_1128))));
      let x_1132 : bool = u_xlatb51;
      if (x_1132) {
        let x_1136 : vec3<f32> = u_xlat10;
        let x_1139 : vec3<f32> = u_xlat10;
        let x_1142 : vec4<bool> = (abs(vec4<f32>(x_1136.z, x_1136.z, x_1136.y, x_1136.z)) >= abs(vec4<f32>(x_1139.x, x_1139.y, x_1139.x, x_1139.x)));
        let x_1144 : vec3<bool> = vec3<bool>(x_1142.x, x_1142.y, x_1142.z);
        let x_1145 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
        let x_1148 : bool = u_xlatb11.y;
        let x_1150 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1148 & x_1150);
        let x_1152 : vec3<f32> = u_xlat10;
        let x_1155 : vec4<bool> = (-(vec4<f32>(x_1152.z, x_1152.y, x_1152.z, x_1152.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1156 : vec3<bool> = vec3<bool>(x_1155.x, x_1155.y, x_1155.w);
        let x_1157 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1156.x, x_1156.y, x_1157.z, x_1156.z);
        let x_1161 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1161);
        let x_1166 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1166);
        let x_1171 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1171);
        let x_1174 : bool = u_xlatb11.z;
        if (x_1174) {
          let x_1179 : f32 = u_xlat11.y;
          x_1175 = x_1179;
        } else {
          let x_1181 : f32 = u_xlat52;
          x_1175 = x_1181;
        }
        let x_1182 : f32 = x_1175;
        u_xlat52 = x_1182;
        let x_1184 : bool = u_xlatb51;
        if (x_1184) {
          let x_1189 : f32 = u_xlat11.x;
          x_1185 = x_1189;
        } else {
          let x_1191 : f32 = u_xlat52;
          x_1185 = x_1191;
        }
        let x_1192 : f32 = x_1185;
        u_xlat51 = x_1192;
        let x_1193 : i32 = u_xlati47;
        let x_1195 : f32 = x_177.x_AdditionalShadowParams[x_1193].w;
        u_xlat52 = trunc(x_1195);
        let x_1197 : f32 = u_xlat51;
        let x_1198 : f32 = u_xlat52;
        u_xlat51 = (x_1197 + x_1198);
        let x_1200 : f32 = u_xlat51;
        u_xlati49 = i32(x_1200);
      }
      let x_1202 : i32 = u_xlati49;
      u_xlati49 = (x_1202 << bitcast<u32>(2i));
      let x_1204 : vec3<f32> = vs_TEXCOORD7;
      let x_1207 : i32 = u_xlati49;
      let x_1210 : i32 = u_xlati49;
      let x_1214 : vec4<f32> = x_177.x_AdditionalLightsWorldToShadow[((x_1207 + 1i) / 4i)][((x_1210 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1204.y, x_1204.y, x_1204.y, x_1204.y) * x_1214);
      let x_1216 : i32 = u_xlati49;
      let x_1218 : i32 = u_xlati49;
      let x_1221 : vec4<f32> = x_177.x_AdditionalLightsWorldToShadow[(x_1216 / 4i)][(x_1218 % 4i)];
      let x_1222 : vec3<f32> = vs_TEXCOORD7;
      let x_1225 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1221 * vec4<f32>(x_1222.x, x_1222.x, x_1222.x, x_1222.x)) + x_1225);
      let x_1227 : i32 = u_xlati49;
      let x_1230 : i32 = u_xlati49;
      let x_1234 : vec4<f32> = x_177.x_AdditionalLightsWorldToShadow[((x_1227 + 2i) / 4i)][((x_1230 + 2i) % 4i)];
      let x_1235 : vec3<f32> = vs_TEXCOORD7;
      let x_1238 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1234 * vec4<f32>(x_1235.z, x_1235.z, x_1235.z, x_1235.z)) + x_1238);
      let x_1240 : vec4<f32> = u_xlat11;
      let x_1241 : i32 = u_xlati49;
      let x_1244 : i32 = u_xlati49;
      let x_1248 : vec4<f32> = x_177.x_AdditionalLightsWorldToShadow[((x_1241 + 3i) / 4i)][((x_1244 + 3i) % 4i)];
      u_xlat11 = (x_1240 + x_1248);
      let x_1250 : vec4<f32> = u_xlat11;
      let x_1252 : vec4<f32> = u_xlat11;
      let x_1254 : vec3<f32> = (vec3<f32>(x_1250.x, x_1250.y, x_1250.z) / vec3<f32>(x_1252.w, x_1252.w, x_1252.w));
      let x_1255 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
      let x_1258 : vec4<f32> = u_xlat11;
      let x_1259 : vec2<f32> = vec2<f32>(x_1258.x, x_1258.y);
      let x_1261 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
      let x_1269 : vec3<f32> = txVec1;
      let x_1271 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1269.xy, x_1269.z);
      u_xlat49 = x_1271;
      let x_1272 : i32 = u_xlati47;
      let x_1274 : f32 = x_177.x_AdditionalShadowParams[x_1272].x;
      u_xlat51 = (1.0f + -(x_1274));
      let x_1277 : f32 = u_xlat49;
      let x_1278 : i32 = u_xlati47;
      let x_1280 : f32 = x_177.x_AdditionalShadowParams[x_1278].x;
      let x_1282 : f32 = u_xlat51;
      u_xlat49 = ((x_1277 * x_1280) + x_1282);
      let x_1285 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1285);
      let x_1289 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1289 >= 1.0f);
      let x_1291 : bool = u_xlatb51;
      let x_1292 : bool = u_xlatb52;
      u_xlatb51 = (x_1291 | x_1292);
      let x_1294 : bool = u_xlatb51;
      let x_1295 : f32 = u_xlat49;
      u_xlat49 = select(x_1295, 1.0f, x_1294);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1298 : f32 = u_xlat49;
    u_xlat51 = (-(x_1298) + 1.0f);
    let x_1301 : f32 = u_xlat29;
    let x_1302 : f32 = u_xlat51;
    let x_1304 : f32 = u_xlat49;
    u_xlat49 = ((x_1301 * x_1302) + x_1304);
    let x_1307 : i32 = u_xlati47;
    u_xlati51 = (1i << bitcast<u32>((x_1307 & 31i)));
    let x_1311 : i32 = u_xlati51;
    let x_1314 : f32 = x_581.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1311) & bitcast<u32>(x_1314)));
    let x_1318 : i32 = u_xlati51;
    if ((x_1318 != 0i)) {
      let x_1322 : i32 = u_xlati47;
      let x_1324 : f32 = x_581.x_AdditionalLightsLightTypes[x_1322].el;
      u_xlati51 = i32(x_1324);
      let x_1327 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1327 != 0i));
      let x_1331 : i32 = u_xlati47;
      u_xlati11 = (x_1331 << bitcast<u32>(2i));
      let x_1333 : i32 = u_xlati52;
      if ((x_1333 != 0i)) {
        let x_1338 : vec3<f32> = vs_TEXCOORD7;
        let x_1340 : i32 = u_xlati11;
        let x_1343 : i32 = u_xlati11;
        let x_1347 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1340 + 1i) / 4i)][((x_1343 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1338.y, x_1338.y, x_1338.y) * vec3<f32>(x_1347.x, x_1347.y, x_1347.w));
        let x_1350 : i32 = u_xlati11;
        let x_1352 : i32 = u_xlati11;
        let x_1355 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[(x_1350 / 4i)][(x_1352 % 4i)];
        let x_1357 : vec3<f32> = vs_TEXCOORD7;
        let x_1360 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1355.x, x_1355.y, x_1355.w) * vec3<f32>(x_1357.x, x_1357.x, x_1357.x)) + x_1360);
        let x_1362 : i32 = u_xlati11;
        let x_1365 : i32 = u_xlati11;
        let x_1369 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1362 + 2i) / 4i)][((x_1365 + 2i) % 4i)];
        let x_1371 : vec3<f32> = vs_TEXCOORD7;
        let x_1374 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1369.x, x_1369.y, x_1369.w) * vec3<f32>(x_1371.z, x_1371.z, x_1371.z)) + x_1374);
        let x_1376 : vec3<f32> = u_xlat25;
        let x_1377 : i32 = u_xlati11;
        let x_1380 : i32 = u_xlati11;
        let x_1384 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1377 + 3i) / 4i)][((x_1380 + 3i) % 4i)];
        u_xlat25 = (x_1376 + vec3<f32>(x_1384.x, x_1384.y, x_1384.w));
        let x_1387 : vec3<f32> = u_xlat25;
        let x_1389 : vec3<f32> = u_xlat25;
        let x_1391 : vec2<f32> = (vec2<f32>(x_1387.x, x_1387.y) / vec2<f32>(x_1389.z, x_1389.z));
        let x_1392 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1391.x, x_1391.y, x_1392.z);
        let x_1394 : vec3<f32> = u_xlat25;
        let x_1397 : vec2<f32> = ((vec2<f32>(x_1394.x, x_1394.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1398 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1397.x, x_1397.y, x_1398.z);
        let x_1400 : vec3<f32> = u_xlat25;
        let x_1404 : vec2<f32> = clamp(vec2<f32>(x_1400.x, x_1400.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1405 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1404.x, x_1404.y, x_1405.z);
        let x_1407 : i32 = u_xlati47;
        let x_1409 : vec4<f32> = x_581.x_AdditionalLightsCookieAtlasUVRects[x_1407];
        let x_1411 : vec3<f32> = u_xlat25;
        let x_1414 : i32 = u_xlati47;
        let x_1416 : vec4<f32> = x_581.x_AdditionalLightsCookieAtlasUVRects[x_1414];
        let x_1418 : vec2<f32> = ((vec2<f32>(x_1409.x, x_1409.y) * vec2<f32>(x_1411.x, x_1411.y)) + vec2<f32>(x_1416.z, x_1416.w));
        let x_1419 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1418.x, x_1418.y, x_1419.z);
      } else {
        let x_1422 : i32 = u_xlati51;
        u_xlatb51 = (x_1422 == 1i);
        let x_1424 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1424);
        let x_1426 : i32 = u_xlati51;
        if ((x_1426 != 0i)) {
          let x_1431 : vec3<f32> = vs_TEXCOORD7;
          let x_1433 : i32 = u_xlati11;
          let x_1436 : i32 = u_xlati11;
          let x_1440 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1433 + 1i) / 4i)][((x_1436 + 1i) % 4i)];
          let x_1442 : vec2<f32> = (vec2<f32>(x_1431.y, x_1431.y) * vec2<f32>(x_1440.x, x_1440.y));
          let x_1443 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1442.x, x_1442.y, x_1443.z, x_1443.w);
          let x_1445 : i32 = u_xlati11;
          let x_1447 : i32 = u_xlati11;
          let x_1450 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[(x_1445 / 4i)][(x_1447 % 4i)];
          let x_1452 : vec3<f32> = vs_TEXCOORD7;
          let x_1455 : vec4<f32> = u_xlat12;
          let x_1457 : vec2<f32> = ((vec2<f32>(x_1450.x, x_1450.y) * vec2<f32>(x_1452.x, x_1452.x)) + vec2<f32>(x_1455.x, x_1455.y));
          let x_1458 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1457.x, x_1457.y, x_1458.z, x_1458.w);
          let x_1460 : i32 = u_xlati11;
          let x_1463 : i32 = u_xlati11;
          let x_1467 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1460 + 2i) / 4i)][((x_1463 + 2i) % 4i)];
          let x_1469 : vec3<f32> = vs_TEXCOORD7;
          let x_1472 : vec4<f32> = u_xlat12;
          let x_1474 : vec2<f32> = ((vec2<f32>(x_1467.x, x_1467.y) * vec2<f32>(x_1469.z, x_1469.z)) + vec2<f32>(x_1472.x, x_1472.y));
          let x_1475 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1474.x, x_1474.y, x_1475.z, x_1475.w);
          let x_1477 : vec4<f32> = u_xlat12;
          let x_1479 : i32 = u_xlati11;
          let x_1482 : i32 = u_xlati11;
          let x_1486 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1479 + 3i) / 4i)][((x_1482 + 3i) % 4i)];
          let x_1488 : vec2<f32> = (vec2<f32>(x_1477.x, x_1477.y) + vec2<f32>(x_1486.x, x_1486.y));
          let x_1489 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1488.x, x_1488.y, x_1489.z, x_1489.w);
          let x_1491 : vec4<f32> = u_xlat12;
          let x_1494 : vec2<f32> = ((vec2<f32>(x_1491.x, x_1491.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1495 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1494.x, x_1494.y, x_1495.z, x_1495.w);
          let x_1497 : vec4<f32> = u_xlat12;
          let x_1499 : vec2<f32> = fract(vec2<f32>(x_1497.x, x_1497.y));
          let x_1500 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1499.x, x_1499.y, x_1500.z, x_1500.w);
          let x_1502 : i32 = u_xlati47;
          let x_1504 : vec4<f32> = x_581.x_AdditionalLightsCookieAtlasUVRects[x_1502];
          let x_1506 : vec4<f32> = u_xlat12;
          let x_1509 : i32 = u_xlati47;
          let x_1511 : vec4<f32> = x_581.x_AdditionalLightsCookieAtlasUVRects[x_1509];
          let x_1513 : vec2<f32> = ((vec2<f32>(x_1504.x, x_1504.y) * vec2<f32>(x_1506.x, x_1506.y)) + vec2<f32>(x_1511.z, x_1511.w));
          let x_1514 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1513.x, x_1513.y, x_1514.z);
        } else {
          let x_1517 : vec3<f32> = vs_TEXCOORD7;
          let x_1519 : i32 = u_xlati11;
          let x_1522 : i32 = u_xlati11;
          let x_1526 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1519 + 1i) / 4i)][((x_1522 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1517.y, x_1517.y, x_1517.y, x_1517.y) * x_1526);
          let x_1528 : i32 = u_xlati11;
          let x_1530 : i32 = u_xlati11;
          let x_1533 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[(x_1528 / 4i)][(x_1530 % 4i)];
          let x_1534 : vec3<f32> = vs_TEXCOORD7;
          let x_1537 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1533 * vec4<f32>(x_1534.x, x_1534.x, x_1534.x, x_1534.x)) + x_1537);
          let x_1539 : i32 = u_xlati11;
          let x_1542 : i32 = u_xlati11;
          let x_1546 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1539 + 2i) / 4i)][((x_1542 + 2i) % 4i)];
          let x_1547 : vec3<f32> = vs_TEXCOORD7;
          let x_1550 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1546 * vec4<f32>(x_1547.z, x_1547.z, x_1547.z, x_1547.z)) + x_1550);
          let x_1552 : vec4<f32> = u_xlat12;
          let x_1553 : i32 = u_xlati11;
          let x_1556 : i32 = u_xlati11;
          let x_1560 : vec4<f32> = x_581.x_AdditionalLightsWorldToLights[((x_1553 + 3i) / 4i)][((x_1556 + 3i) % 4i)];
          u_xlat12 = (x_1552 + x_1560);
          let x_1562 : vec4<f32> = u_xlat12;
          let x_1564 : vec4<f32> = u_xlat12;
          let x_1566 : vec3<f32> = (vec3<f32>(x_1562.x, x_1562.y, x_1562.z) / vec3<f32>(x_1564.w, x_1564.w, x_1564.w));
          let x_1567 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1567.w);
          let x_1569 : vec4<f32> = u_xlat12;
          let x_1571 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1569.x, x_1569.y, x_1569.z), vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
          let x_1574 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1574);
          let x_1576 : f32 = u_xlat51;
          let x_1578 : vec4<f32> = u_xlat12;
          let x_1580 : vec3<f32> = (vec3<f32>(x_1576, x_1576, x_1576) * vec3<f32>(x_1578.x, x_1578.y, x_1578.z));
          let x_1581 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1581.w);
          let x_1583 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1583.x, x_1583.y, x_1583.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1588 : f32 = u_xlat51;
          u_xlat51 = max(x_1588, 0.00000099999999747524f);
          let x_1591 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1591);
          let x_1594 : f32 = u_xlat51;
          let x_1596 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1594, x_1594, x_1594) * vec3<f32>(x_1596.z, x_1596.x, x_1596.y));
          let x_1600 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1600);
          let x_1604 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1604, 0.0f, 1.0f);
          let x_1607 : vec3<f32> = u_xlat13;
          let x_1609 : vec4<bool> = (vec4<f32>(x_1607.y, x_1607.y, x_1607.y, x_1607.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1610 : vec2<bool> = vec2<bool>(x_1609.x, x_1609.w);
          let x_1611 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1610.x, x_1611.y, x_1611.z, x_1610.y);
          let x_1614 : bool = u_xlatb11.x;
          if (x_1614) {
            let x_1619 : f32 = u_xlat13.x;
            x_1615 = x_1619;
          } else {
            let x_1622 : f32 = u_xlat13.x;
            x_1615 = -(x_1622);
          }
          let x_1624 : f32 = x_1615;
          u_xlat11.x = x_1624;
          let x_1627 : bool = u_xlatb11.w;
          if (x_1627) {
            let x_1632 : f32 = u_xlat13.x;
            x_1628 = x_1632;
          } else {
            let x_1635 : f32 = u_xlat13.x;
            x_1628 = -(x_1635);
          }
          let x_1637 : f32 = x_1628;
          u_xlat11.w = x_1637;
          let x_1639 : vec4<f32> = u_xlat12;
          let x_1641 : f32 = u_xlat51;
          let x_1644 : vec4<f32> = u_xlat11;
          let x_1646 : vec2<f32> = ((vec2<f32>(x_1639.x, x_1639.y) * vec2<f32>(x_1641, x_1641)) + vec2<f32>(x_1644.x, x_1644.w));
          let x_1647 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1646.x, x_1647.y, x_1647.z, x_1646.y);
          let x_1649 : vec4<f32> = u_xlat11;
          let x_1652 : vec2<f32> = ((vec2<f32>(x_1649.x, x_1649.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1653 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1652.x, x_1653.y, x_1653.z, x_1652.y);
          let x_1655 : vec4<f32> = u_xlat11;
          let x_1659 : vec2<f32> = clamp(vec2<f32>(x_1655.x, x_1655.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1660 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1659.x, x_1660.y, x_1660.z, x_1659.y);
          let x_1662 : i32 = u_xlati47;
          let x_1664 : vec4<f32> = x_581.x_AdditionalLightsCookieAtlasUVRects[x_1662];
          let x_1666 : vec4<f32> = u_xlat11;
          let x_1669 : i32 = u_xlati47;
          let x_1671 : vec4<f32> = x_581.x_AdditionalLightsCookieAtlasUVRects[x_1669];
          let x_1673 : vec2<f32> = ((vec2<f32>(x_1664.x, x_1664.y) * vec2<f32>(x_1666.x, x_1666.w)) + vec2<f32>(x_1671.z, x_1671.w));
          let x_1674 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1673.x, x_1673.y, x_1674.z);
        }
      }
      let x_1681 : vec3<f32> = u_xlat25;
      let x_1683 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1681.x, x_1681.y), 0.0f);
      u_xlat11 = x_1683;
      let x_1685 : bool = u_xlatb7.y;
      if (x_1685) {
        let x_1690 : f32 = u_xlat11.w;
        x_1686 = x_1690;
      } else {
        let x_1693 : f32 = u_xlat11.x;
        x_1686 = x_1693;
      }
      let x_1694 : f32 = x_1686;
      u_xlat51 = x_1694;
      let x_1696 : bool = u_xlatb7.x;
      if (x_1696) {
        let x_1700 : vec4<f32> = u_xlat11;
        x_1697 = vec3<f32>(x_1700.x, x_1700.y, x_1700.z);
      } else {
        let x_1703 : f32 = u_xlat51;
        x_1697 = vec3<f32>(x_1703, x_1703, x_1703);
      }
      let x_1705 : vec3<f32> = x_1697;
      let x_1706 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1706.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1712 : vec4<f32> = u_xlat11;
    let x_1714 : i32 = u_xlati47;
    let x_1716 : vec4<f32> = x_1043.x_AdditionalLightsColor[x_1714];
    let x_1718 : vec3<f32> = (vec3<f32>(x_1712.x, x_1712.y, x_1712.z) * vec3<f32>(x_1716.x, x_1716.y, x_1716.z));
    let x_1719 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1718.x, x_1718.y, x_1718.z, x_1719.w);
    let x_1721 : f32 = u_xlat48;
    let x_1722 : f32 = u_xlat49;
    u_xlat47 = (x_1721 * x_1722);
    let x_1724 : vec4<f32> = u_xlat2;
    let x_1726 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1724.x, x_1724.y, x_1724.z), x_1726);
    let x_1728 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1728, 0.0f, 1.0f);
    let x_1730 : f32 = u_xlat47;
    let x_1731 : f32 = u_xlat48;
    u_xlat47 = (x_1730 * x_1731);
    let x_1733 : f32 = u_xlat47;
    let x_1735 : vec4<f32> = u_xlat11;
    let x_1737 : vec3<f32> = (vec3<f32>(x_1733, x_1733, x_1733) * vec3<f32>(x_1735.x, x_1735.y, x_1735.z));
    let x_1738 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1737.x, x_1737.y, x_1737.z, x_1738.w);
    let x_1740 : vec3<f32> = u_xlat9;
    let x_1741 : f32 = u_xlat35;
    let x_1744 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1740 * vec3<f32>(x_1741, x_1741, x_1741)) + x_1744);
    let x_1746 : vec3<f32> = u_xlat9;
    let x_1747 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1746, x_1747);
    let x_1749 : f32 = u_xlat47;
    u_xlat47 = max(x_1749, 1.17549435e-38f);
    let x_1751 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1751);
    let x_1753 : f32 = u_xlat47;
    let x_1755 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1753, x_1753, x_1753) * x_1755);
    let x_1757 : vec4<f32> = u_xlat2;
    let x_1759 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1757.x, x_1757.y, x_1757.z), x_1759);
    let x_1761 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1761, 0.0f, 1.0f);
    let x_1763 : vec3<f32> = u_xlat10;
    let x_1764 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1763, x_1764);
    let x_1766 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1766, 0.0f, 1.0f);
    let x_1768 : f32 = u_xlat47;
    let x_1769 : f32 = u_xlat47;
    u_xlat47 = (x_1768 * x_1769);
    let x_1771 : f32 = u_xlat47;
    let x_1773 : f32 = u_xlat8.x;
    u_xlat47 = ((x_1771 * x_1773) + 1.00001001358032226562f);
    let x_1776 : f32 = u_xlat48;
    let x_1777 : f32 = u_xlat48;
    u_xlat48 = (x_1776 * x_1777);
    let x_1779 : f32 = u_xlat47;
    let x_1780 : f32 = u_xlat47;
    u_xlat47 = (x_1779 * x_1780);
    let x_1782 : f32 = u_xlat48;
    u_xlat48 = max(x_1782, 0.10000000149011611938f);
    let x_1784 : f32 = u_xlat47;
    let x_1785 : f32 = u_xlat48;
    u_xlat47 = (x_1784 * x_1785);
    let x_1787 : f32 = u_xlat45;
    let x_1788 : f32 = u_xlat47;
    u_xlat47 = (x_1787 * x_1788);
    let x_1790 : f32 = u_xlat46;
    let x_1791 : f32 = u_xlat47;
    u_xlat47 = (x_1790 / x_1791);
    let x_1793 : vec4<f32> = u_xlat0;
    let x_1795 : f32 = u_xlat47;
    let x_1798 : vec4<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1793.x, x_1793.y, x_1793.z) * vec3<f32>(x_1795, x_1795, x_1795)) + vec3<f32>(x_1798.x, x_1798.y, x_1798.z));
    let x_1801 : vec3<f32> = u_xlat9;
    let x_1802 : vec4<f32> = u_xlat11;
    let x_1805 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1801 * vec3<f32>(x_1802.x, x_1802.y, x_1802.z)) + x_1805);

    continuing {
      let x_1807 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1807 + bitcast<u32>(1i));
    }
  }
  let x_1809 : vec4<f32> = u_xlat6;
  let x_1811 : vec4<f32> = u_xlat1;
  let x_1814 : vec3<f32> = u_xlat4;
  let x_1815 : vec3<f32> = ((vec3<f32>(x_1809.x, x_1809.y, x_1809.z) * vec3<f32>(x_1811.x, x_1811.y, x_1811.w)) + x_1814);
  let x_1816 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1816.w);
  let x_1820 : vec3<f32> = u_xlat22;
  let x_1821 : vec4<f32> = u_xlat0;
  let x_1823 : vec3<f32> = (x_1820 + vec3<f32>(x_1821.x, x_1821.y, x_1821.z));
  let x_1824 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1823.x, x_1823.y, x_1823.z, x_1824.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


