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

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_174 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat16 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_560 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_740 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_999 : AdditionalLights;

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

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu16 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var x_116 : f32;
  var x_129 : f32;
  var x_141 : f32;
  var txVec0 : vec3<f32>;
  var x_511 : f32;
  var x_644 : f32;
  var x_655 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1131 : f32;
  var x_1141 : f32;
  var txVec1 : vec3<f32>;
  var x_1571 : f32;
  var x_1584 : f32;
  var x_1642 : f32;
  var x_1653 : vec3<f32>;
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
  u_xlat1 = x_77.x;
  let x_83 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb15 = (x_83 == 0.0f);
  let x_88 : vec3<f32> = vs_TEXCOORD7;
  let x_93 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_94 : vec3<f32> = (-(x_88) + x_93);
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_103);
  let x_105 : f32 = u_xlat29;
  let x_107 : vec4<f32> = u_xlat2;
  let x_109 : vec3<f32> = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_114 : bool = u_xlatb15;
  if (x_114) {
    let x_120 : f32 = u_xlat2.x;
    x_116 = x_120;
  } else {
    let x_125 : f32 = x_29.unity_MatrixV[0i].z;
    x_116 = x_125;
  }
  let x_126 : f32 = x_116;
  u_xlat3.x = x_126;
  let x_128 : bool = u_xlatb15;
  if (x_128) {
    let x_134 : f32 = u_xlat2.y;
    x_129 = x_134;
  } else {
    let x_137 : f32 = x_29.unity_MatrixV[1i].z;
    x_129 = x_137;
  }
  let x_138 : f32 = x_129;
  u_xlat3.y = x_138;
  let x_140 : bool = u_xlatb15;
  if (x_140) {
    let x_145 : f32 = u_xlat2.z;
    x_141 = x_145;
  } else {
    let x_149 : f32 = x_29.unity_MatrixV[2i].z;
    x_141 = x_149;
  }
  let x_150 : f32 = x_141;
  u_xlat3.z = x_150;
  let x_154 : vec3<f32> = vs_TEXCOORD3;
  let x_155 : vec3<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(x_154, x_155);
  let x_159 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_159);
  let x_162 : vec3<f32> = u_xlat15;
  let x_164 : vec3<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_162.x, x_162.x, x_162.x) * x_164);
  let x_166 : vec3<f32> = vs_TEXCOORD7;
  let x_177 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres0;
  let x_180 : vec3<f32> = (x_166 + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec3<f32> = vs_TEXCOORD7;
  let x_186 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres1;
  let x_189 : vec3<f32> = (x_184 + -(vec3<f32>(x_186.x, x_186.y, x_186.z)));
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_193 : vec3<f32> = vs_TEXCOORD7;
  let x_196 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_193 + -(vec3<f32>(x_196.x, x_196.y, x_196.z)));
  let x_201 : vec3<f32> = vs_TEXCOORD7;
  let x_203 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres3;
  let x_206 : vec3<f32> = (x_201 + -(vec3<f32>(x_203.x, x_203.y, x_203.z)));
  let x_207 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec4<f32> = u_xlat2;
  let x_211 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_209.x, x_209.y, x_209.z), vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_215 : vec4<f32> = u_xlat4;
  let x_217 : vec4<f32> = u_xlat4;
  u_xlat2.y = dot(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_221 : vec3<f32> = u_xlat5;
  let x_222 : vec3<f32> = u_xlat5;
  u_xlat2.z = dot(x_221, x_222);
  let x_225 : vec4<f32> = u_xlat6;
  let x_227 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_225.x, x_225.y, x_225.z), vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_234 : vec4<f32> = u_xlat2;
  let x_236 : vec4<f32> = x_174.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_234 < x_236);
  let x_239 : bool = u_xlatb2.x;
  u_xlat4.x = select(0.0f, 1.0f, x_239);
  let x_244 : bool = u_xlatb2.y;
  u_xlat4.y = select(0.0f, 1.0f, x_244);
  let x_248 : bool = u_xlatb2.z;
  u_xlat4.z = select(0.0f, 1.0f, x_248);
  let x_252 : bool = u_xlatb2.w;
  u_xlat4.w = select(0.0f, 1.0f, x_252);
  let x_256 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_256);
  let x_262 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_262);
  let x_266 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_266);
  let x_269 : vec4<f32> = u_xlat2;
  let x_271 : vec4<f32> = u_xlat4;
  let x_273 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) + vec3<f32>(x_271.y, x_271.z, x_271.w));
  let x_274 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_276 : vec4<f32> = u_xlat2;
  let x_279 : vec3<f32> = max(vec3<f32>(x_276.x, x_276.y, x_276.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_280.x, x_279.x, x_279.y, x_279.z);
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(x_282, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_290 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_290) + 4.0f);
  let x_297 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_297);
  let x_301 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_301) << bitcast<u32>(2i));
  let x_305 : vec3<f32> = vs_TEXCOORD7;
  let x_307 : i32 = u_xlati2;
  let x_310 : i32 = u_xlati2;
  let x_314 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_307 + 1i) / 4i)][((x_310 + 1i) % 4i)];
  u_xlat16 = (vec3<f32>(x_305.y, x_305.y, x_305.y) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : i32 = u_xlati2;
  let x_319 : i32 = u_xlati2;
  let x_322 : vec4<f32> = x_174.x_MainLightWorldToShadow[(x_317 / 4i)][(x_319 % 4i)];
  let x_324 : vec3<f32> = vs_TEXCOORD7;
  let x_327 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.x, x_324.x)) + x_327);
  let x_329 : i32 = u_xlati2;
  let x_332 : i32 = u_xlati2;
  let x_336 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_329 + 2i) / 4i)][((x_332 + 2i) % 4i)];
  let x_338 : vec3<f32> = vs_TEXCOORD7;
  let x_341 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.z, x_338.z, x_338.z)) + x_341);
  let x_343 : vec3<f32> = u_xlat16;
  let x_344 : i32 = u_xlati2;
  let x_347 : i32 = u_xlati2;
  let x_351 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_344 + 3i) / 4i)][((x_347 + 3i) % 4i)];
  let x_353 : vec3<f32> = (x_343 + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_361 : vec4<f32> = vs_TEXCOORD0;
  let x_364 : f32 = x_29.x_GlobalMipBias.x;
  let x_365 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_361.z, x_361.w), x_364);
  u_xlat4 = x_365;
  let x_370 : vec4<f32> = vs_TEXCOORD0;
  let x_373 : f32 = x_29.x_GlobalMipBias.x;
  let x_374 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_370.z, x_370.w), x_373);
  u_xlat5 = vec3<f32>(x_374.x, x_374.y, x_374.z);
  let x_376 : vec4<f32> = u_xlat4;
  let x_380 : vec3<f32> = (vec3<f32>(x_376.x, x_376.y, x_376.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_384 : vec3<f32> = u_xlat15;
  let x_385 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_384, vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : f32 = u_xlat44;
  u_xlat44 = (x_388 + 0.5f);
  let x_391 : f32 = u_xlat44;
  let x_393 : vec3<f32> = u_xlat5;
  let x_394 : vec3<f32> = (vec3<f32>(x_391, x_391, x_391) * x_393);
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_398 : f32 = u_xlat4.w;
  u_xlat44 = max(x_398, 0.00009999999747378752f);
  let x_401 : vec4<f32> = u_xlat4;
  let x_403 : f32 = u_xlat44;
  let x_405 : vec3<f32> = (vec3<f32>(x_401.x, x_401.y, x_401.z) / vec3<f32>(x_403, x_403, x_403));
  let x_406 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : f32 = u_xlat1;
  u_xlat44 = ((-(x_408) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_414 : f32 = u_xlat44;
  u_xlat45 = (-(x_414) + 1.0f);
  let x_417 : vec4<f32> = u_xlat0;
  let x_419 : f32 = u_xlat44;
  u_xlat5 = (vec3<f32>(x_417.x, x_417.y, x_417.z) * vec3<f32>(x_419, x_419, x_419));
  let x_422 : vec4<f32> = u_xlat0;
  let x_426 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_427 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : f32 = u_xlat1;
  let x_431 : vec4<f32> = u_xlat0;
  let x_436 : vec3<f32> = ((vec3<f32>(x_429, x_429, x_429) * vec3<f32>(x_431.x, x_431.y, x_431.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_437 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_440) + 1.0f);
  let x_443 : f32 = u_xlat1;
  let x_444 : f32 = u_xlat1;
  u_xlat44 = (x_443 * x_444);
  let x_446 : f32 = u_xlat44;
  u_xlat44 = max(x_446, 0.0078125f);
  let x_450 : f32 = u_xlat44;
  let x_451 : f32 = u_xlat44;
  u_xlat46 = (x_450 * x_451);
  let x_455 : f32 = u_xlat0.w;
  let x_456 : f32 = u_xlat45;
  u_xlat42 = (x_455 + x_456);
  let x_458 : f32 = u_xlat42;
  u_xlat42 = clamp(x_458, 0.0f, 1.0f);
  let x_460 : f32 = u_xlat44;
  u_xlat45 = ((x_460 * 4.0f) + 2.0f);
  let x_465 : vec4<f32> = u_xlat2;
  let x_466 : vec2<f32> = vec2<f32>(x_465.x, x_465.y);
  let x_468 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_466.x, x_466.y, x_468);
  let x_480 : vec3<f32> = txVec0;
  let x_482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_480.xy, x_480.z);
  u_xlat2.x = x_482;
  let x_486 : f32 = x_174.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_486) + 1.0f);
  let x_491 : f32 = u_xlat2.x;
  let x_493 : f32 = x_174.x_MainLightShadowParams.x;
  let x_496 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_491 * x_493) + x_496);
  let x_501 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_501);
  let x_505 : f32 = u_xlat2.z;
  u_xlatb30 = (x_505 >= 1.0f);
  let x_507 : bool = u_xlatb30;
  let x_508 : bool = u_xlatb16;
  u_xlatb16 = (x_507 | x_508);
  let x_510 : bool = u_xlatb16;
  if (x_510) {
    x_511 = 1.0f;
  } else {
    let x_516 : f32 = u_xlat2.x;
    x_511 = x_516;
  }
  let x_517 : f32 = x_511;
  u_xlat2.x = x_517;
  let x_519 : vec3<f32> = vs_TEXCOORD7;
  let x_521 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_523 : vec3<f32> = (x_519 + -(x_521));
  let x_524 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat6;
  let x_528 : vec4<f32> = u_xlat6;
  u_xlat16.x = dot(vec3<f32>(x_526.x, x_526.y, x_526.z), vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_534 : f32 = u_xlat16.x;
  let x_536 : f32 = x_174.x_MainLightShadowParams.z;
  let x_539 : f32 = x_174.x_MainLightShadowParams.w;
  u_xlat30 = ((x_534 * x_536) + x_539);
  let x_541 : f32 = u_xlat30;
  u_xlat30 = clamp(x_541, 0.0f, 1.0f);
  let x_545 : f32 = u_xlat2.x;
  u_xlat47 = (-(x_545) + 1.0f);
  let x_548 : f32 = u_xlat30;
  let x_549 : f32 = u_xlat47;
  let x_552 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_548 * x_549) + x_552);
  let x_562 : f32 = x_560.x_MainLightCookieTextureFormat;
  u_xlatb30 = !((x_562 == -1.0f));
  let x_564 : bool = u_xlatb30;
  if (x_564) {
    let x_567 : vec3<f32> = vs_TEXCOORD7;
    let x_570 : vec4<f32> = x_560.x_MainLightWorldToLight[1i];
    let x_572 : vec2<f32> = (vec2<f32>(x_567.y, x_567.y) * vec2<f32>(x_570.x, x_570.y));
    let x_573 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
    let x_576 : vec4<f32> = x_560.x_MainLightWorldToLight[0i];
    let x_578 : vec3<f32> = vs_TEXCOORD7;
    let x_581 : vec4<f32> = u_xlat6;
    let x_583 : vec2<f32> = ((vec2<f32>(x_576.x, x_576.y) * vec2<f32>(x_578.x, x_578.x)) + vec2<f32>(x_581.x, x_581.y));
    let x_584 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
    let x_587 : vec4<f32> = x_560.x_MainLightWorldToLight[2i];
    let x_589 : vec3<f32> = vs_TEXCOORD7;
    let x_592 : vec4<f32> = u_xlat6;
    let x_594 : vec2<f32> = ((vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_589.z, x_589.z)) + vec2<f32>(x_592.x, x_592.y));
    let x_595 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
    let x_597 : vec4<f32> = u_xlat6;
    let x_600 : vec4<f32> = x_560.x_MainLightWorldToLight[3i];
    let x_602 : vec2<f32> = (vec2<f32>(x_597.x, x_597.y) + vec2<f32>(x_600.x, x_600.y));
    let x_603 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_602.x, x_602.y, x_603.z, x_603.w);
    let x_605 : vec4<f32> = u_xlat6;
    let x_609 : vec2<f32> = ((vec2<f32>(x_605.x, x_605.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_610 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_610.z, x_610.w);
    let x_617 : vec4<f32> = u_xlat6;
    let x_620 : f32 = x_29.x_GlobalMipBias.x;
    let x_621 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_617.x, x_617.y), x_620);
    u_xlat6 = x_621;
    let x_626 : f32 = x_560.x_MainLightCookieTextureFormat;
    let x_628 : f32 = x_560.x_MainLightCookieTextureFormat;
    let x_630 : f32 = x_560.x_MainLightCookieTextureFormat;
    let x_632 : f32 = x_560.x_MainLightCookieTextureFormat;
    let x_633 : vec4<f32> = vec4<f32>(x_626, x_628, x_630, x_632);
    let x_640 : vec4<bool> = (vec4<f32>(x_633.x, x_633.y, x_633.z, x_633.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_640.x, x_640.y);
    let x_643 : bool = u_xlatb7.y;
    if (x_643) {
      let x_648 : f32 = u_xlat6.w;
      x_644 = x_648;
    } else {
      let x_651 : f32 = u_xlat6.x;
      x_644 = x_651;
    }
    let x_652 : f32 = x_644;
    u_xlat30 = x_652;
    let x_654 : bool = u_xlatb7.x;
    if (x_654) {
      let x_658 : vec4<f32> = u_xlat6;
      x_655 = vec3<f32>(x_658.x, x_658.y, x_658.z);
    } else {
      let x_661 : f32 = u_xlat30;
      x_655 = vec3<f32>(x_661, x_661, x_661);
    }
    let x_663 : vec3<f32> = x_655;
    let x_664 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_670 : vec4<f32> = u_xlat6;
  let x_673 : vec4<f32> = x_29.x_MainLightColor;
  let x_675 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(x_673.x, x_673.y, x_673.z));
  let x_676 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
  let x_678 : vec3<f32> = u_xlat3;
  let x_680 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(-(x_678), x_680);
  let x_682 : f32 = u_xlat30;
  let x_683 : f32 = u_xlat30;
  u_xlat30 = (x_682 + x_683);
  let x_686 : vec3<f32> = u_xlat15;
  let x_687 : f32 = u_xlat30;
  let x_691 : vec3<f32> = u_xlat3;
  let x_693 : vec3<f32> = ((x_686 * -(vec3<f32>(x_687, x_687, x_687))) + -(x_691));
  let x_694 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec3<f32> = u_xlat15;
  let x_697 : vec3<f32> = u_xlat3;
  u_xlat30 = dot(x_696, x_697);
  let x_699 : f32 = u_xlat30;
  u_xlat30 = clamp(x_699, 0.0f, 1.0f);
  let x_701 : f32 = u_xlat30;
  u_xlat30 = (-(x_701) + 1.0f);
  let x_704 : f32 = u_xlat30;
  let x_705 : f32 = u_xlat30;
  u_xlat30 = (x_704 * x_705);
  let x_707 : f32 = u_xlat30;
  let x_708 : f32 = u_xlat30;
  u_xlat30 = (x_707 * x_708);
  let x_710 : f32 = u_xlat1;
  u_xlat47 = ((-(x_710) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_716 : f32 = u_xlat1;
  let x_717 : f32 = u_xlat47;
  u_xlat1 = (x_716 * x_717);
  let x_719 : f32 = u_xlat1;
  u_xlat1 = (x_719 * 6.0f);
  let x_730 : vec4<f32> = u_xlat7;
  let x_732 : f32 = u_xlat1;
  let x_733 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_730.x, x_730.y, x_730.z), x_732);
  u_xlat7 = x_733;
  let x_735 : f32 = u_xlat7.w;
  u_xlat1 = (x_735 + -1.0f);
  let x_742 : f32 = x_740.unity_SpecCube0_HDR.w;
  let x_743 : f32 = u_xlat1;
  u_xlat1 = ((x_742 * x_743) + 1.0f);
  let x_746 : f32 = u_xlat1;
  u_xlat1 = max(x_746, 0.0f);
  let x_748 : f32 = u_xlat1;
  u_xlat1 = log2(x_748);
  let x_750 : f32 = u_xlat1;
  let x_752 : f32 = x_740.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_750 * x_752);
  let x_754 : f32 = u_xlat1;
  u_xlat1 = exp2(x_754);
  let x_756 : f32 = u_xlat1;
  let x_758 : f32 = x_740.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_756 * x_758);
  let x_760 : vec4<f32> = u_xlat7;
  let x_762 : f32 = u_xlat1;
  let x_764 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(x_762, x_762, x_762));
  let x_765 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_769 : f32 = u_xlat44;
  let x_771 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_769, x_769) * vec2<f32>(x_771, x_771)) + vec2<f32>(-1.0f, 1.0f));
  let x_777 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_777);
  let x_780 : vec4<f32> = u_xlat0;
  let x_783 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_780.x, x_780.y, x_780.z)) + vec3<f32>(x_783, x_783, x_783));
  let x_786 : f32 = u_xlat30;
  let x_788 : vec3<f32> = u_xlat22;
  let x_790 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_786, x_786, x_786) * x_788) + vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : f32 = u_xlat1;
  let x_795 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_793, x_793, x_793) * x_795);
  let x_797 : vec4<f32> = u_xlat7;
  let x_799 : vec3<f32> = u_xlat22;
  let x_800 : vec3<f32> = (vec3<f32>(x_797.x, x_797.y, x_797.z) * x_799);
  let x_801 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat4;
  let x_805 : vec3<f32> = u_xlat5;
  let x_807 : vec4<f32> = u_xlat7;
  let x_809 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.y, x_803.z) * x_805) + vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_813 : f32 = u_xlat2.x;
  let x_815 : f32 = x_740.unity_LightData.z;
  u_xlat42 = (x_813 * x_815);
  let x_817 : vec3<f32> = u_xlat15;
  let x_819 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_817, vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : f32 = u_xlat1;
  u_xlat1 = clamp(x_822, 0.0f, 1.0f);
  let x_824 : f32 = u_xlat42;
  let x_825 : f32 = u_xlat1;
  u_xlat42 = (x_824 * x_825);
  let x_827 : f32 = u_xlat42;
  let x_829 : vec4<f32> = u_xlat6;
  let x_831 : vec3<f32> = (vec3<f32>(x_827, x_827, x_827) * vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_831.x, x_832.y, x_831.y, x_831.z);
  let x_834 : vec3<f32> = u_xlat3;
  let x_836 : vec4<f32> = x_29.x_MainLightPosition;
  let x_838 : vec3<f32> = (x_834 + vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec4<f32> = u_xlat6;
  let x_843 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_841.x, x_841.y, x_841.z), vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : f32 = u_xlat42;
  u_xlat42 = max(x_846, 1.17549435e-38f);
  let x_849 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_849);
  let x_851 : f32 = u_xlat42;
  let x_853 : vec4<f32> = u_xlat6;
  let x_855 : vec3<f32> = (vec3<f32>(x_851, x_851, x_851) * vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec3<f32> = u_xlat15;
  let x_859 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_858, vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : f32 = u_xlat42;
  u_xlat42 = clamp(x_862, 0.0f, 1.0f);
  let x_865 : vec4<f32> = x_29.x_MainLightPosition;
  let x_867 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_865.x, x_865.y, x_865.z), vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_870 : f32 = u_xlat1;
  u_xlat1 = clamp(x_870, 0.0f, 1.0f);
  let x_872 : f32 = u_xlat42;
  let x_873 : f32 = u_xlat42;
  u_xlat42 = (x_872 * x_873);
  let x_875 : f32 = u_xlat42;
  let x_877 : f32 = u_xlat8.x;
  u_xlat42 = ((x_875 * x_877) + 1.00001001358032226562f);
  let x_881 : f32 = u_xlat1;
  let x_882 : f32 = u_xlat1;
  u_xlat1 = (x_881 * x_882);
  let x_884 : f32 = u_xlat42;
  let x_885 : f32 = u_xlat42;
  u_xlat42 = (x_884 * x_885);
  let x_887 : f32 = u_xlat1;
  u_xlat1 = max(x_887, 0.10000000149011611938f);
  let x_890 : f32 = u_xlat42;
  let x_891 : f32 = u_xlat1;
  u_xlat42 = (x_890 * x_891);
  let x_893 : f32 = u_xlat45;
  let x_894 : f32 = u_xlat42;
  u_xlat42 = (x_893 * x_894);
  let x_896 : f32 = u_xlat46;
  let x_897 : f32 = u_xlat42;
  u_xlat42 = (x_896 / x_897);
  let x_899 : vec4<f32> = u_xlat0;
  let x_901 : f32 = u_xlat42;
  let x_904 : vec3<f32> = u_xlat5;
  let x_905 : vec3<f32> = ((vec3<f32>(x_899.x, x_899.y, x_899.z) * vec3<f32>(x_901, x_901, x_901)) + x_904);
  let x_906 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_909 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_911 : f32 = x_740.unity_LightData.y;
  u_xlat42 = min(x_909, x_911);
  let x_914 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_914));
  let x_918 : f32 = u_xlat16.x;
  let x_921 : f32 = x_174.x_AdditionalShadowFadeParams.x;
  let x_924 : f32 = x_174.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_918 * x_921) + x_924);
  let x_926 : f32 = u_xlat1;
  u_xlat1 = clamp(x_926, 0.0f, 1.0f);
  let x_929 : f32 = x_560.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_931 : f32 = x_560.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_933 : f32 = x_560.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_935 : f32 = x_560.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_936 : vec4<f32> = vec4<f32>(x_929, x_931, x_933, x_935);
  let x_942 : vec4<bool> = (vec4<f32>(x_936.x, x_936.y, x_936.z, x_936.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_942.x, x_942.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_954 : u32 = u_xlatu_loop_1;
    let x_955 : u32 = u_xlatu42;
    if ((x_954 < x_955)) {
    } else {
      break;
    }
    let x_958 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_958 >> 2u);
    let x_961 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_961 & 3u));
    let x_964 : u32 = u_xlatu47;
    let x_967 : vec4<f32> = x_740.unity_LightIndices[bitcast<i32>(x_964)];
    let x_977 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_982 : vec4<u32> = indexable[x_977];
    u_xlat47 = dot(x_967, bitcast<vec4<f32>>(x_982));
    let x_986 : f32 = u_xlat47;
    u_xlati47 = i32(x_986);
    let x_989 : vec3<f32> = vs_TEXCOORD7;
    let x_1000 : i32 = u_xlati47;
    let x_1002 : vec4<f32> = x_999.x_AdditionalLightsPosition[x_1000];
    let x_1005 : i32 = u_xlati47;
    let x_1007 : vec4<f32> = x_999.x_AdditionalLightsPosition[x_1005];
    u_xlat9 = ((-(x_989) * vec3<f32>(x_1002.w, x_1002.w, x_1002.w)) + vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
    let x_1011 : vec3<f32> = u_xlat9;
    let x_1012 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1011, x_1012);
    let x_1014 : f32 = u_xlat48;
    u_xlat48 = max(x_1014, 0.00006103515625f);
    let x_1018 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1018);
    let x_1021 : f32 = u_xlat35;
    let x_1023 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1021, x_1021, x_1021) * x_1023);
    let x_1026 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1026);
    let x_1028 : f32 = u_xlat48;
    let x_1029 : i32 = u_xlati47;
    let x_1031 : f32 = x_999.x_AdditionalLightsAttenuation[x_1029].x;
    u_xlat48 = (x_1028 * x_1031);
    let x_1033 : f32 = u_xlat48;
    let x_1035 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1033) * x_1035) + 1.0f);
    let x_1038 : f32 = u_xlat48;
    u_xlat48 = max(x_1038, 0.0f);
    let x_1040 : f32 = u_xlat48;
    let x_1041 : f32 = u_xlat48;
    u_xlat48 = (x_1040 * x_1041);
    let x_1043 : f32 = u_xlat48;
    let x_1044 : f32 = u_xlat49;
    u_xlat48 = (x_1043 * x_1044);
    let x_1046 : i32 = u_xlati47;
    let x_1048 : vec4<f32> = x_999.x_AdditionalLightsSpotDir[x_1046];
    let x_1050 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1048.x, x_1048.y, x_1048.z), x_1050);
    let x_1052 : f32 = u_xlat49;
    let x_1053 : i32 = u_xlati47;
    let x_1055 : f32 = x_999.x_AdditionalLightsAttenuation[x_1053].z;
    let x_1057 : i32 = u_xlati47;
    let x_1059 : f32 = x_999.x_AdditionalLightsAttenuation[x_1057].w;
    u_xlat49 = ((x_1052 * x_1055) + x_1059);
    let x_1061 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1061, 0.0f, 1.0f);
    let x_1063 : f32 = u_xlat49;
    let x_1064 : f32 = u_xlat49;
    u_xlat49 = (x_1063 * x_1064);
    let x_1066 : f32 = u_xlat48;
    let x_1067 : f32 = u_xlat49;
    u_xlat48 = (x_1066 * x_1067);
    let x_1071 : i32 = u_xlati47;
    let x_1073 : f32 = x_174.x_AdditionalShadowParams[x_1071].w;
    u_xlati49 = i32(x_1073);
    let x_1076 : i32 = u_xlati49;
    u_xlatb51 = (x_1076 >= 0i);
    let x_1078 : bool = u_xlatb51;
    if (x_1078) {
      let x_1082 : i32 = u_xlati47;
      let x_1084 : f32 = x_174.x_AdditionalShadowParams[x_1082].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1084, x_1084, x_1084, x_1084))));
      let x_1088 : bool = u_xlatb51;
      if (x_1088) {
        let x_1092 : vec3<f32> = u_xlat10;
        let x_1095 : vec3<f32> = u_xlat10;
        let x_1098 : vec4<bool> = (abs(vec4<f32>(x_1092.z, x_1092.z, x_1092.y, x_1092.z)) >= abs(vec4<f32>(x_1095.x, x_1095.y, x_1095.x, x_1095.x)));
        let x_1100 : vec3<bool> = vec3<bool>(x_1098.x, x_1098.y, x_1098.z);
        let x_1101 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
        let x_1104 : bool = u_xlatb11.y;
        let x_1106 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1104 & x_1106);
        let x_1108 : vec3<f32> = u_xlat10;
        let x_1111 : vec4<bool> = (-(vec4<f32>(x_1108.z, x_1108.y, x_1108.z, x_1108.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1112 : vec3<bool> = vec3<bool>(x_1111.x, x_1111.y, x_1111.w);
        let x_1113 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1112.x, x_1112.y, x_1113.z, x_1112.z);
        let x_1117 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1117);
        let x_1122 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1122);
        let x_1127 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1127);
        let x_1130 : bool = u_xlatb11.z;
        if (x_1130) {
          let x_1135 : f32 = u_xlat11.y;
          x_1131 = x_1135;
        } else {
          let x_1137 : f32 = u_xlat52;
          x_1131 = x_1137;
        }
        let x_1138 : f32 = x_1131;
        u_xlat52 = x_1138;
        let x_1140 : bool = u_xlatb51;
        if (x_1140) {
          let x_1145 : f32 = u_xlat11.x;
          x_1141 = x_1145;
        } else {
          let x_1147 : f32 = u_xlat52;
          x_1141 = x_1147;
        }
        let x_1148 : f32 = x_1141;
        u_xlat51 = x_1148;
        let x_1149 : i32 = u_xlati47;
        let x_1151 : f32 = x_174.x_AdditionalShadowParams[x_1149].w;
        u_xlat52 = trunc(x_1151);
        let x_1153 : f32 = u_xlat51;
        let x_1154 : f32 = u_xlat52;
        u_xlat51 = (x_1153 + x_1154);
        let x_1156 : f32 = u_xlat51;
        u_xlati49 = i32(x_1156);
      }
      let x_1158 : i32 = u_xlati49;
      u_xlati49 = (x_1158 << bitcast<u32>(2i));
      let x_1160 : vec3<f32> = vs_TEXCOORD7;
      let x_1163 : i32 = u_xlati49;
      let x_1166 : i32 = u_xlati49;
      let x_1170 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_1163 + 1i) / 4i)][((x_1166 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1160.y, x_1160.y, x_1160.y, x_1160.y) * x_1170);
      let x_1172 : i32 = u_xlati49;
      let x_1174 : i32 = u_xlati49;
      let x_1177 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[(x_1172 / 4i)][(x_1174 % 4i)];
      let x_1178 : vec3<f32> = vs_TEXCOORD7;
      let x_1181 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1177 * vec4<f32>(x_1178.x, x_1178.x, x_1178.x, x_1178.x)) + x_1181);
      let x_1183 : i32 = u_xlati49;
      let x_1186 : i32 = u_xlati49;
      let x_1190 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_1183 + 2i) / 4i)][((x_1186 + 2i) % 4i)];
      let x_1191 : vec3<f32> = vs_TEXCOORD7;
      let x_1194 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1190 * vec4<f32>(x_1191.z, x_1191.z, x_1191.z, x_1191.z)) + x_1194);
      let x_1196 : vec4<f32> = u_xlat11;
      let x_1197 : i32 = u_xlati49;
      let x_1200 : i32 = u_xlati49;
      let x_1204 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_1197 + 3i) / 4i)][((x_1200 + 3i) % 4i)];
      u_xlat11 = (x_1196 + x_1204);
      let x_1206 : vec4<f32> = u_xlat11;
      let x_1208 : vec4<f32> = u_xlat11;
      let x_1210 : vec3<f32> = (vec3<f32>(x_1206.x, x_1206.y, x_1206.z) / vec3<f32>(x_1208.w, x_1208.w, x_1208.w));
      let x_1211 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
      let x_1214 : vec4<f32> = u_xlat11;
      let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
      let x_1217 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
      let x_1225 : vec3<f32> = txVec1;
      let x_1227 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1225.xy, x_1225.z);
      u_xlat49 = x_1227;
      let x_1228 : i32 = u_xlati47;
      let x_1230 : f32 = x_174.x_AdditionalShadowParams[x_1228].x;
      u_xlat51 = (1.0f + -(x_1230));
      let x_1233 : f32 = u_xlat49;
      let x_1234 : i32 = u_xlati47;
      let x_1236 : f32 = x_174.x_AdditionalShadowParams[x_1234].x;
      let x_1238 : f32 = u_xlat51;
      u_xlat49 = ((x_1233 * x_1236) + x_1238);
      let x_1241 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1241);
      let x_1245 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1245 >= 1.0f);
      let x_1247 : bool = u_xlatb51;
      let x_1248 : bool = u_xlatb52;
      u_xlatb51 = (x_1247 | x_1248);
      let x_1250 : bool = u_xlatb51;
      let x_1251 : f32 = u_xlat49;
      u_xlat49 = select(x_1251, 1.0f, x_1250);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1254 : f32 = u_xlat49;
    u_xlat51 = (-(x_1254) + 1.0f);
    let x_1257 : f32 = u_xlat1;
    let x_1258 : f32 = u_xlat51;
    let x_1260 : f32 = u_xlat49;
    u_xlat49 = ((x_1257 * x_1258) + x_1260);
    let x_1263 : i32 = u_xlati47;
    u_xlati51 = (1i << bitcast<u32>((x_1263 & 31i)));
    let x_1267 : i32 = u_xlati51;
    let x_1270 : f32 = x_560.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1267) & bitcast<u32>(x_1270)));
    let x_1274 : i32 = u_xlati51;
    if ((x_1274 != 0i)) {
      let x_1278 : i32 = u_xlati47;
      let x_1280 : f32 = x_560.x_AdditionalLightsLightTypes[x_1278].el;
      u_xlati51 = i32(x_1280);
      let x_1283 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1283 != 0i));
      let x_1287 : i32 = u_xlati47;
      u_xlati11 = (x_1287 << bitcast<u32>(2i));
      let x_1289 : i32 = u_xlati52;
      if ((x_1289 != 0i)) {
        let x_1294 : vec3<f32> = vs_TEXCOORD7;
        let x_1296 : i32 = u_xlati11;
        let x_1299 : i32 = u_xlati11;
        let x_1303 : vec4<f32> = x_560.x_AdditionalLightsWorldToLights[((x_1296 + 1i) / 4i)][((x_1299 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1294.y, x_1294.y, x_1294.y) * vec3<f32>(x_1303.x, x_1303.y, x_1303.w));
        let x_1306 : i32 = u_xlati11;
        let x_1308 : i32 = u_xlati11;
        let x_1311 : vec4<f32> = x_560.x_AdditionalLightsWorldToLights[(x_1306 / 4i)][(x_1308 % 4i)];
        let x_1313 : vec3<f32> = vs_TEXCOORD7;
        let x_1316 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1311.x, x_1311.y, x_1311.w) * vec3<f32>(x_1313.x, x_1313.x, x_1313.x)) + x_1316);
        let x_1318 : i32 = u_xlati11;
        let x_1321 : i32 = u_xlati11;
        let x_1325 : vec4<f32> = x_560.x_AdditionalLightsWorldToLights[((x_1318 + 2i) / 4i)][((x_1321 + 2i) % 4i)];
        let x_1327 : vec3<f32> = vs_TEXCOORD7;
        let x_1330 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1325.x, x_1325.y, x_1325.w) * vec3<f32>(x_1327.z, x_1327.z, x_1327.z)) + x_1330);
        let x_1332 : vec3<f32> = u_xlat25;
        let x_1333 : i32 = u_xlati11;
        let x_1336 : i32 = u_xlati11;
        let x_1340 : vec4<f32> = x_560.x_AdditionalLightsWorldToLights[((x_1333 + 3i) / 4i)][((x_1336 + 3i) % 4i)];
        u_xlat25 = (x_1332 + vec3<f32>(x_1340.x, x_1340.y, x_1340.w));
        let x_1343 : vec3<f32> = u_xlat25;
        let x_1345 : vec3<f32> = u_xlat25;
        let x_1347 : vec2<f32> = (vec2<f32>(x_1343.x, x_1343.y) / vec2<f32>(x_1345.z, x_1345.z));
        let x_1348 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1347.x, x_1347.y, x_1348.z);
        let x_1350 : vec3<f32> = u_xlat25;
        let x_1353 : vec2<f32> = ((vec2<f32>(x_1350.x, x_1350.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1354 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1353.x, x_1353.y, x_1354.z);
        let x_1356 : vec3<f32> = u_xlat25;
        let x_1360 : vec2<f32> = clamp(vec2<f32>(x_1356.x, x_1356.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1361 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1360.x, x_1360.y, x_1361.z);
        let x_1363 : i32 = u_xlati47;
        let x_1365 : vec4<f32> = x_560.x_AdditionalLightsCookieAtlasUVRects[x_1363];
        let x_1367 : vec3<f32> = u_xlat25;
        let x_1370 : i32 = u_xlati47;
        let x_1372 : vec4<f32> = x_560.x_AdditionalLightsCookieAtlasUVRects[x_1370];
        let x_1374 : vec2<f32> = ((vec2<f32>(x_1365.x, x_1365.y) * vec2<f32>(x_1367.x, x_1367.y)) + vec2<f32>(x_1372.z, x_1372.w));
        let x_1375 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1374.x, x_1374.y, x_1375.z);
      } else {
        let x_1378 : i32 = u_xlati51;
        u_xlatb51 = (x_1378 == 1i);
        let x_1380 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1380);
        let x_1382 : i32 = u_xlati51;
        if ((x_1382 != 0i)) {
          let x_1387 : vec3<f32> = vs_TEXCOORD7;
          let x_1389 : i32 = u_xlati11;
          let x_1392 : i32 = u_xlati11;
          let x_1396 : vec4<f32> = x_560.x_AdditionalLightsWorldToLights[((x_1389 + 1i) / 4i)][((x_1392 + 1i) % 4i)];
          let x_1398 : vec2<f32> = (vec2<f32>(x_1387.y, x_1387.y) * vec2<f32>(x_1396.x, x_1396.y));
          let x_1399 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1398.x, x_1398.y, x_1399.z, x_1399.w);
          let x_1401 : i32 = u_xlati11;
          let x_1403 : i32 = u_xlati11;
          let x_1406 : vec4<f32> = x_560.x_AdditionalLightsWorldToLights[(x_1401 / 4i)][(x_1403 % 4i)];
          let x_1408 : vec3<f32> = vs_TEXCOORD7;
          let x_1411 : vec4<f32> = u_xlat12;
          let x_1413 : vec2<f32> = ((vec2<f32>(x_1406.x, x_1406.y) * vec2<f32>(x_1408.x, x_1408.x)) + vec2<f32>(x_1411.x, x_1411.y));
          let x_1414 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1413.x, x_1413.y, x_1414.z, x_1414.w);
          let x_1416 : i32 = u_xlati11;
          let x_1419 : i32 = u_xlati11;
          let x_1423 : vec4<f32> = x_560.x_AdditionalLightsWorldToLights[((x_1416 + 2i) / 4i)][((x_1419 + 2i) % 4i)];
          let x_1425 : vec3<f32> = vs_TEXCOORD7;
          let x_1428 : vec4<f32> = u_xlat12;
          let x_1430 : vec2<f32> = ((vec2<f32>(x_1423.x, x_1423.y) * vec2<f32>(x_1425.z, x_1425.z)) + vec2<f32>(x_1428.x, x_1428.y));
          let x_1431 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1430.x, x_1430.y, x_1431.z, x_1431.w);
          let x_1433 : vec4<f32> = u_xlat12;
          let x_1435 : i32 = u_xlati11;
          let x_1438 : i32 = u_xlati11;
          let x_1442 : vec4<f32> = x_560.x_AdditionalLightsWorldToLights[((x_1435 + 3i) / 4i)][((x_1438 + 3i) % 4i)];
          let x_1444 : vec2<f32> = (vec2<f32>(x_1433.x, x_1433.y) + vec2<f32>(x_1442.x, x_1442.y));
          let x_1445 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1444.x, x_1444.y, x_1445.z, x_1445.w);
          let x_1447 : vec4<f32> = u_xlat12;
          let x_1450 : vec2<f32> = ((vec2<f32>(x_1447.x, x_1447.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1451 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1450.x, x_1450.y, x_1451.z, x_1451.w);
          let x_1453 : vec4<f32> = u_xlat12;
          let x_1455 : vec2<f32> = fract(vec2<f32>(x_1453.x, x_1453.y));
          let x_1456 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1455.x, x_1455.y, x_1456.z, x_1456.w);
          let x_1458 : i32 = u_xlati47;
          let x_1460 : vec4<f32> = x_560.x_AdditionalLightsCookieAtlasUVRects[x_1458];
          let x_1462 : vec4<f32> = u_xlat12;
          let x_1465 : i32 = u_xlati47;
          let x_1467 : vec4<f32> = x_560.x_AdditionalLightsCookieAtlasUVRects[x_1465];
          let x_1469 : vec2<f32> = ((vec2<f32>(x_1460.x, x_1460.y) * vec2<f32>(x_1462.x, x_1462.y)) + vec2<f32>(x_1467.z, x_1467.w));
          let x_1470 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1469.x, x_1469.y, x_1470.z);
        } else {
          let x_1473 : vec3<f32> = vs_TEXCOORD7;
          let x_1475 : i32 = u_xlati11;
          let x_1478 : i32 = u_xlati11;
          let x_1482 : vec4<f32> = x_560.x_AdditionalLightsWorldToLights[((x_1475 + 1i) / 4i)][((x_1478 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1473.y, x_1473.y, x_1473.y, x_1473.y) * x_1482);
          let x_1484 : i32 = u_xlati11;
          let x_1486 : i32 = u_xlati11;
          let x_1489 : vec4<f32> = x_560.x_AdditionalLightsWorldToLights[(x_1484 / 4i)][(x_1486 % 4i)];
          let x_1490 : vec3<f32> = vs_TEXCOORD7;
          let x_1493 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1489 * vec4<f32>(x_1490.x, x_1490.x, x_1490.x, x_1490.x)) + x_1493);
          let x_1495 : i32 = u_xlati11;
          let x_1498 : i32 = u_xlati11;
          let x_1502 : vec4<f32> = x_560.x_AdditionalLightsWorldToLights[((x_1495 + 2i) / 4i)][((x_1498 + 2i) % 4i)];
          let x_1503 : vec3<f32> = vs_TEXCOORD7;
          let x_1506 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1502 * vec4<f32>(x_1503.z, x_1503.z, x_1503.z, x_1503.z)) + x_1506);
          let x_1508 : vec4<f32> = u_xlat12;
          let x_1509 : i32 = u_xlati11;
          let x_1512 : i32 = u_xlati11;
          let x_1516 : vec4<f32> = x_560.x_AdditionalLightsWorldToLights[((x_1509 + 3i) / 4i)][((x_1512 + 3i) % 4i)];
          u_xlat12 = (x_1508 + x_1516);
          let x_1518 : vec4<f32> = u_xlat12;
          let x_1520 : vec4<f32> = u_xlat12;
          let x_1522 : vec3<f32> = (vec3<f32>(x_1518.x, x_1518.y, x_1518.z) / vec3<f32>(x_1520.w, x_1520.w, x_1520.w));
          let x_1523 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1522.x, x_1522.y, x_1522.z, x_1523.w);
          let x_1525 : vec4<f32> = u_xlat12;
          let x_1527 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1525.x, x_1525.y, x_1525.z), vec3<f32>(x_1527.x, x_1527.y, x_1527.z));
          let x_1530 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1530);
          let x_1532 : f32 = u_xlat51;
          let x_1534 : vec4<f32> = u_xlat12;
          let x_1536 : vec3<f32> = (vec3<f32>(x_1532, x_1532, x_1532) * vec3<f32>(x_1534.x, x_1534.y, x_1534.z));
          let x_1537 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1536.x, x_1536.y, x_1536.z, x_1537.w);
          let x_1539 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1539.x, x_1539.y, x_1539.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1544 : f32 = u_xlat51;
          u_xlat51 = max(x_1544, 0.00000099999999747524f);
          let x_1547 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1547);
          let x_1550 : f32 = u_xlat51;
          let x_1552 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1550, x_1550, x_1550) * vec3<f32>(x_1552.z, x_1552.x, x_1552.y));
          let x_1556 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1556);
          let x_1560 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1560, 0.0f, 1.0f);
          let x_1563 : vec3<f32> = u_xlat13;
          let x_1565 : vec4<bool> = (vec4<f32>(x_1563.y, x_1563.y, x_1563.y, x_1563.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1566 : vec2<bool> = vec2<bool>(x_1565.x, x_1565.w);
          let x_1567 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1566.x, x_1567.y, x_1567.z, x_1566.y);
          let x_1570 : bool = u_xlatb11.x;
          if (x_1570) {
            let x_1575 : f32 = u_xlat13.x;
            x_1571 = x_1575;
          } else {
            let x_1578 : f32 = u_xlat13.x;
            x_1571 = -(x_1578);
          }
          let x_1580 : f32 = x_1571;
          u_xlat11.x = x_1580;
          let x_1583 : bool = u_xlatb11.w;
          if (x_1583) {
            let x_1588 : f32 = u_xlat13.x;
            x_1584 = x_1588;
          } else {
            let x_1591 : f32 = u_xlat13.x;
            x_1584 = -(x_1591);
          }
          let x_1593 : f32 = x_1584;
          u_xlat11.w = x_1593;
          let x_1595 : vec4<f32> = u_xlat12;
          let x_1597 : f32 = u_xlat51;
          let x_1600 : vec4<f32> = u_xlat11;
          let x_1602 : vec2<f32> = ((vec2<f32>(x_1595.x, x_1595.y) * vec2<f32>(x_1597, x_1597)) + vec2<f32>(x_1600.x, x_1600.w));
          let x_1603 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1602.x, x_1603.y, x_1603.z, x_1602.y);
          let x_1605 : vec4<f32> = u_xlat11;
          let x_1608 : vec2<f32> = ((vec2<f32>(x_1605.x, x_1605.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1609 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1608.x, x_1609.y, x_1609.z, x_1608.y);
          let x_1611 : vec4<f32> = u_xlat11;
          let x_1615 : vec2<f32> = clamp(vec2<f32>(x_1611.x, x_1611.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1616 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1615.x, x_1616.y, x_1616.z, x_1615.y);
          let x_1618 : i32 = u_xlati47;
          let x_1620 : vec4<f32> = x_560.x_AdditionalLightsCookieAtlasUVRects[x_1618];
          let x_1622 : vec4<f32> = u_xlat11;
          let x_1625 : i32 = u_xlati47;
          let x_1627 : vec4<f32> = x_560.x_AdditionalLightsCookieAtlasUVRects[x_1625];
          let x_1629 : vec2<f32> = ((vec2<f32>(x_1620.x, x_1620.y) * vec2<f32>(x_1622.x, x_1622.w)) + vec2<f32>(x_1627.z, x_1627.w));
          let x_1630 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1629.x, x_1629.y, x_1630.z);
        }
      }
      let x_1637 : vec3<f32> = u_xlat25;
      let x_1639 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1637.x, x_1637.y), 0.0f);
      u_xlat11 = x_1639;
      let x_1641 : bool = u_xlatb7.y;
      if (x_1641) {
        let x_1646 : f32 = u_xlat11.w;
        x_1642 = x_1646;
      } else {
        let x_1649 : f32 = u_xlat11.x;
        x_1642 = x_1649;
      }
      let x_1650 : f32 = x_1642;
      u_xlat51 = x_1650;
      let x_1652 : bool = u_xlatb7.x;
      if (x_1652) {
        let x_1656 : vec4<f32> = u_xlat11;
        x_1653 = vec3<f32>(x_1656.x, x_1656.y, x_1656.z);
      } else {
        let x_1659 : f32 = u_xlat51;
        x_1653 = vec3<f32>(x_1659, x_1659, x_1659);
      }
      let x_1661 : vec3<f32> = x_1653;
      let x_1662 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1662.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1668 : vec4<f32> = u_xlat11;
    let x_1670 : i32 = u_xlati47;
    let x_1672 : vec4<f32> = x_999.x_AdditionalLightsColor[x_1670];
    let x_1674 : vec3<f32> = (vec3<f32>(x_1668.x, x_1668.y, x_1668.z) * vec3<f32>(x_1672.x, x_1672.y, x_1672.z));
    let x_1675 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1675.w);
    let x_1677 : f32 = u_xlat48;
    let x_1678 : f32 = u_xlat49;
    u_xlat47 = (x_1677 * x_1678);
    let x_1680 : vec3<f32> = u_xlat15;
    let x_1681 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(x_1680, x_1681);
    let x_1683 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1683, 0.0f, 1.0f);
    let x_1685 : f32 = u_xlat47;
    let x_1686 : f32 = u_xlat48;
    u_xlat47 = (x_1685 * x_1686);
    let x_1688 : f32 = u_xlat47;
    let x_1690 : vec4<f32> = u_xlat11;
    let x_1692 : vec3<f32> = (vec3<f32>(x_1688, x_1688, x_1688) * vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
    let x_1693 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
    let x_1695 : vec3<f32> = u_xlat9;
    let x_1696 : f32 = u_xlat35;
    let x_1699 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1695 * vec3<f32>(x_1696, x_1696, x_1696)) + x_1699);
    let x_1701 : vec3<f32> = u_xlat9;
    let x_1702 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1701, x_1702);
    let x_1704 : f32 = u_xlat47;
    u_xlat47 = max(x_1704, 1.17549435e-38f);
    let x_1706 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1706);
    let x_1708 : f32 = u_xlat47;
    let x_1710 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1708, x_1708, x_1708) * x_1710);
    let x_1712 : vec3<f32> = u_xlat15;
    let x_1713 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1712, x_1713);
    let x_1715 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1715, 0.0f, 1.0f);
    let x_1717 : vec3<f32> = u_xlat10;
    let x_1718 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1717, x_1718);
    let x_1720 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1720, 0.0f, 1.0f);
    let x_1722 : f32 = u_xlat47;
    let x_1723 : f32 = u_xlat47;
    u_xlat47 = (x_1722 * x_1723);
    let x_1725 : f32 = u_xlat47;
    let x_1727 : f32 = u_xlat8.x;
    u_xlat47 = ((x_1725 * x_1727) + 1.00001001358032226562f);
    let x_1730 : f32 = u_xlat48;
    let x_1731 : f32 = u_xlat48;
    u_xlat48 = (x_1730 * x_1731);
    let x_1733 : f32 = u_xlat47;
    let x_1734 : f32 = u_xlat47;
    u_xlat47 = (x_1733 * x_1734);
    let x_1736 : f32 = u_xlat48;
    u_xlat48 = max(x_1736, 0.10000000149011611938f);
    let x_1738 : f32 = u_xlat47;
    let x_1739 : f32 = u_xlat48;
    u_xlat47 = (x_1738 * x_1739);
    let x_1741 : f32 = u_xlat45;
    let x_1742 : f32 = u_xlat47;
    u_xlat47 = (x_1741 * x_1742);
    let x_1744 : f32 = u_xlat46;
    let x_1745 : f32 = u_xlat47;
    u_xlat47 = (x_1744 / x_1745);
    let x_1747 : vec4<f32> = u_xlat0;
    let x_1749 : f32 = u_xlat47;
    let x_1752 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1747.x, x_1747.y, x_1747.z) * vec3<f32>(x_1749, x_1749, x_1749)) + x_1752);
    let x_1754 : vec3<f32> = u_xlat9;
    let x_1755 : vec4<f32> = u_xlat11;
    let x_1758 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1754 * vec3<f32>(x_1755.x, x_1755.y, x_1755.z)) + x_1758);

    continuing {
      let x_1760 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1760 + bitcast<u32>(1i));
    }
  }
  let x_1762 : vec4<f32> = u_xlat6;
  let x_1764 : vec4<f32> = u_xlat2;
  let x_1767 : vec4<f32> = u_xlat4;
  let x_1769 : vec3<f32> = ((vec3<f32>(x_1762.x, x_1762.y, x_1762.z) * vec3<f32>(x_1764.x, x_1764.z, x_1764.w)) + vec3<f32>(x_1767.x, x_1767.y, x_1767.z));
  let x_1770 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1770.w);
  let x_1774 : vec3<f32> = u_xlat22;
  let x_1775 : vec4<f32> = u_xlat0;
  let x_1777 : vec3<f32> = (x_1774 + vec3<f32>(x_1775.x, x_1775.y, x_1775.z));
  let x_1778 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1778.w);
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


