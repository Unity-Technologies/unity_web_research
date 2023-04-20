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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat19 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_312 : LightShadows;

var<private> u_xlatb19 : bool;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_394 : LightCookies;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_578 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu19 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati19 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_842 : AdditionalLights;

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

var<private> u_xlatu44 : u32;

fn main_1() {
  var x_116 : f32;
  var x_129 : f32;
  var x_141 : f32;
  var txVec0 : vec3<f32>;
  var x_344 : f32;
  var x_467 : f32;
  var x_478 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_976 : f32;
  var x_986 : f32;
  var txVec1 : vec3<f32>;
  var x_1416 : f32;
  var x_1429 : f32;
  var x_1487 : f32;
  var x_1498 : vec3<f32>;
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
  let x_171 : vec4<f32> = vs_TEXCOORD0;
  let x_174 : f32 = x_29.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_171.z, x_171.w), x_174);
  u_xlat2 = x_175;
  let x_181 : vec4<f32> = vs_TEXCOORD0;
  let x_184 : f32 = x_29.x_GlobalMipBias.x;
  let x_185 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_181.z, x_181.w), x_184);
  u_xlat4 = vec3<f32>(x_185.x, x_185.y, x_185.z);
  let x_187 : vec4<f32> = u_xlat2;
  let x_191 : vec3<f32> = (vec3<f32>(x_187.x, x_187.y, x_187.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec3<f32> = u_xlat15;
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_194, vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_200 : f32 = u_xlat2.x;
  u_xlat2.x = (x_200 + 0.5f);
  let x_204 : vec4<f32> = u_xlat2;
  let x_206 : vec3<f32> = u_xlat4;
  let x_207 : vec3<f32> = (vec3<f32>(x_204.x, x_204.x, x_204.x) * x_206);
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_212 : f32 = u_xlat2.w;
  u_xlat44 = max(x_212, 0.00009999999747378752f);
  let x_215 : vec4<f32> = u_xlat2;
  let x_217 : f32 = u_xlat44;
  let x_219 : vec3<f32> = (vec3<f32>(x_215.x, x_215.y, x_215.z) / vec3<f32>(x_217, x_217, x_217));
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : f32 = u_xlat1;
  u_xlat44 = ((-(x_222) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_228 : f32 = u_xlat44;
  u_xlat45 = (-(x_228) + 1.0f);
  let x_232 : vec4<f32> = u_xlat0;
  let x_234 : f32 = u_xlat44;
  u_xlat4 = (vec3<f32>(x_232.x, x_232.y, x_232.z) * vec3<f32>(x_234, x_234, x_234));
  let x_237 : vec4<f32> = u_xlat0;
  let x_241 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_242 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : f32 = u_xlat1;
  let x_246 : vec4<f32> = u_xlat0;
  let x_251 : vec3<f32> = ((vec3<f32>(x_244, x_244, x_244) * vec3<f32>(x_246.x, x_246.y, x_246.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_255) + 1.0f);
  let x_258 : f32 = u_xlat1;
  let x_259 : f32 = u_xlat1;
  u_xlat44 = (x_258 * x_259);
  let x_261 : f32 = u_xlat44;
  u_xlat44 = max(x_261, 0.0078125f);
  let x_265 : f32 = u_xlat44;
  let x_266 : f32 = u_xlat44;
  u_xlat46 = (x_265 * x_266);
  let x_270 : f32 = u_xlat0.w;
  let x_271 : f32 = u_xlat45;
  u_xlat42 = (x_270 + x_271);
  let x_273 : f32 = u_xlat42;
  u_xlat42 = clamp(x_273, 0.0f, 1.0f);
  let x_275 : f32 = u_xlat44;
  u_xlat45 = ((x_275 * 4.0f) + 2.0f);
  let x_283 : vec4<f32> = vs_TEXCOORD8;
  let x_284 : vec2<f32> = vec2<f32>(x_283.x, x_283.y);
  let x_287 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_284.x, x_284.y, x_287);
  let x_300 : vec3<f32> = txVec0;
  let x_302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_300.xy, x_300.z);
  u_xlat5.x = x_302;
  let x_315 : f32 = x_312.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_315) + 1.0f);
  let x_320 : f32 = u_xlat5.x;
  let x_322 : f32 = x_312.x_MainLightShadowParams.x;
  let x_325 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_320 * x_322) + x_325);
  let x_330 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (0.0f >= x_330);
  let x_336 : f32 = vs_TEXCOORD8.z;
  u_xlatb33.x = (x_336 >= 1.0f);
  let x_340 : bool = u_xlatb33.x;
  let x_341 : bool = u_xlatb19;
  u_xlatb19 = (x_340 | x_341);
  let x_343 : bool = u_xlatb19;
  if (x_343) {
    x_344 = 1.0f;
  } else {
    let x_349 : f32 = u_xlat5.x;
    x_344 = x_349;
  }
  let x_350 : f32 = x_344;
  u_xlat5.x = x_350;
  let x_352 : vec3<f32> = vs_TEXCOORD7;
  let x_354 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat19 = (x_352 + -(x_354));
  let x_357 : vec3<f32> = u_xlat19;
  let x_358 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_357, x_358);
  let x_364 : f32 = u_xlat19.x;
  let x_366 : f32 = x_312.x_MainLightShadowParams.z;
  let x_369 : f32 = x_312.x_MainLightShadowParams.w;
  u_xlat33.x = ((x_364 * x_366) + x_369);
  let x_373 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_373, 0.0f, 1.0f);
  let x_378 : f32 = u_xlat5.x;
  u_xlat47 = (-(x_378) + 1.0f);
  let x_382 : f32 = u_xlat33.x;
  let x_383 : f32 = u_xlat47;
  let x_386 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_382 * x_383) + x_386);
  let x_396 : f32 = x_394.x_MainLightCookieTextureFormat;
  u_xlatb33.x = !((x_396 == -1.0f));
  let x_401 : bool = u_xlatb33.x;
  if (x_401) {
    let x_404 : vec3<f32> = vs_TEXCOORD7;
    let x_408 : vec4<f32> = x_394.x_MainLightWorldToLight[1i];
    u_xlat33 = (vec2<f32>(x_404.y, x_404.y) * vec2<f32>(x_408.x, x_408.y));
    let x_412 : vec4<f32> = x_394.x_MainLightWorldToLight[0i];
    let x_414 : vec3<f32> = vs_TEXCOORD7;
    let x_417 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_412.x, x_412.y) * vec2<f32>(x_414.x, x_414.x)) + x_417);
    let x_420 : vec4<f32> = x_394.x_MainLightWorldToLight[2i];
    let x_422 : vec3<f32> = vs_TEXCOORD7;
    let x_425 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_420.x, x_420.y) * vec2<f32>(x_422.z, x_422.z)) + x_425);
    let x_427 : vec2<f32> = u_xlat33;
    let x_430 : vec4<f32> = x_394.x_MainLightWorldToLight[3i];
    u_xlat33 = (x_427 + vec2<f32>(x_430.x, x_430.y));
    let x_433 : vec2<f32> = u_xlat33;
    u_xlat33 = ((x_433 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_443 : vec2<f32> = u_xlat33;
    let x_445 : f32 = x_29.x_GlobalMipBias.x;
    let x_446 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_443, x_445);
    u_xlat6 = x_446;
    let x_448 : f32 = x_394.x_MainLightCookieTextureFormat;
    let x_450 : f32 = x_394.x_MainLightCookieTextureFormat;
    let x_452 : f32 = x_394.x_MainLightCookieTextureFormat;
    let x_454 : f32 = x_394.x_MainLightCookieTextureFormat;
    let x_455 : vec4<f32> = vec4<f32>(x_448, x_450, x_452, x_454);
    let x_463 : vec4<bool> = (vec4<f32>(x_455.x, x_455.y, x_455.z, x_455.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb33 = vec2<bool>(x_463.x, x_463.y);
    let x_466 : bool = u_xlatb33.y;
    if (x_466) {
      let x_471 : f32 = u_xlat6.w;
      x_467 = x_471;
    } else {
      let x_474 : f32 = u_xlat6.x;
      x_467 = x_474;
    }
    let x_475 : f32 = x_467;
    u_xlat47 = x_475;
    let x_477 : bool = u_xlatb33.x;
    if (x_477) {
      let x_481 : vec4<f32> = u_xlat6;
      x_478 = vec3<f32>(x_481.x, x_481.y, x_481.z);
    } else {
      let x_484 : f32 = u_xlat47;
      x_478 = vec3<f32>(x_484, x_484, x_484);
    }
    let x_486 : vec3<f32> = x_478;
    let x_487 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_493 : vec4<f32> = u_xlat6;
  let x_496 : vec4<f32> = x_29.x_MainLightColor;
  let x_498 : vec3<f32> = (vec3<f32>(x_493.x, x_493.y, x_493.z) * vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec3<f32> = u_xlat3;
  let x_503 : vec3<f32> = u_xlat15;
  u_xlat33.x = dot(-(x_501), x_503);
  let x_507 : f32 = u_xlat33.x;
  let x_509 : f32 = u_xlat33.x;
  u_xlat33.x = (x_507 + x_509);
  let x_513 : vec3<f32> = u_xlat15;
  let x_514 : vec2<f32> = u_xlat33;
  let x_518 : vec3<f32> = u_xlat3;
  let x_520 : vec3<f32> = ((x_513 * -(vec3<f32>(x_514.x, x_514.x, x_514.x))) + -(x_518));
  let x_521 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_523 : vec3<f32> = u_xlat15;
  let x_524 : vec3<f32> = u_xlat3;
  u_xlat33.x = dot(x_523, x_524);
  let x_528 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_528, 0.0f, 1.0f);
  let x_532 : f32 = u_xlat33.x;
  u_xlat33.x = (-(x_532) + 1.0f);
  let x_537 : f32 = u_xlat33.x;
  let x_539 : f32 = u_xlat33.x;
  u_xlat33.x = (x_537 * x_539);
  let x_543 : f32 = u_xlat33.x;
  let x_545 : f32 = u_xlat33.x;
  u_xlat33.x = (x_543 * x_545);
  let x_548 : f32 = u_xlat1;
  u_xlat47 = ((-(x_548) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_554 : f32 = u_xlat1;
  let x_555 : f32 = u_xlat47;
  u_xlat1 = (x_554 * x_555);
  let x_557 : f32 = u_xlat1;
  u_xlat1 = (x_557 * 6.0f);
  let x_568 : vec4<f32> = u_xlat7;
  let x_570 : f32 = u_xlat1;
  let x_571 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_568.x, x_568.y, x_568.z), x_570);
  u_xlat7 = x_571;
  let x_573 : f32 = u_xlat7.w;
  u_xlat1 = (x_573 + -1.0f);
  let x_580 : f32 = x_578.unity_SpecCube0_HDR.w;
  let x_581 : f32 = u_xlat1;
  u_xlat1 = ((x_580 * x_581) + 1.0f);
  let x_584 : f32 = u_xlat1;
  u_xlat1 = max(x_584, 0.0f);
  let x_586 : f32 = u_xlat1;
  u_xlat1 = log2(x_586);
  let x_588 : f32 = u_xlat1;
  let x_590 : f32 = x_578.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_588 * x_590);
  let x_592 : f32 = u_xlat1;
  u_xlat1 = exp2(x_592);
  let x_594 : f32 = u_xlat1;
  let x_596 : f32 = x_578.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_594 * x_596);
  let x_598 : vec4<f32> = u_xlat7;
  let x_600 : f32 = u_xlat1;
  let x_602 : vec3<f32> = (vec3<f32>(x_598.x, x_598.y, x_598.z) * vec3<f32>(x_600, x_600, x_600));
  let x_603 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_606 : f32 = u_xlat44;
  let x_608 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_606, x_606) * vec2<f32>(x_608, x_608)) + vec2<f32>(-1.0f, 1.0f));
  let x_614 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_614);
  let x_617 : vec4<f32> = u_xlat0;
  let x_620 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_617.x, x_617.y, x_617.z)) + vec3<f32>(x_620, x_620, x_620));
  let x_623 : vec2<f32> = u_xlat33;
  let x_625 : vec3<f32> = u_xlat22;
  let x_627 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_623.x, x_623.x, x_623.x) * x_625) + vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_630 : f32 = u_xlat1;
  let x_632 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_630, x_630, x_630) * x_632);
  let x_634 : vec4<f32> = u_xlat7;
  let x_636 : vec3<f32> = u_xlat22;
  let x_637 : vec3<f32> = (vec3<f32>(x_634.x, x_634.y, x_634.z) * x_636);
  let x_638 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_640 : vec4<f32> = u_xlat2;
  let x_642 : vec3<f32> = u_xlat4;
  let x_644 : vec4<f32> = u_xlat7;
  let x_646 : vec3<f32> = ((vec3<f32>(x_640.x, x_640.y, x_640.z) * x_642) + vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_650 : f32 = u_xlat5.x;
  let x_652 : f32 = x_578.unity_LightData.z;
  u_xlat42 = (x_650 * x_652);
  let x_654 : vec3<f32> = u_xlat15;
  let x_656 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_654, vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_659 : f32 = u_xlat1;
  u_xlat1 = clamp(x_659, 0.0f, 1.0f);
  let x_661 : f32 = u_xlat42;
  let x_662 : f32 = u_xlat1;
  u_xlat42 = (x_661 * x_662);
  let x_664 : f32 = u_xlat42;
  let x_666 : vec4<f32> = u_xlat6;
  let x_668 : vec3<f32> = (vec3<f32>(x_664, x_664, x_664) * vec3<f32>(x_666.x, x_666.y, x_666.z));
  let x_669 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_668.x, x_669.y, x_668.y, x_668.z);
  let x_671 : vec3<f32> = u_xlat3;
  let x_673 : vec4<f32> = x_29.x_MainLightPosition;
  let x_675 : vec3<f32> = (x_671 + vec3<f32>(x_673.x, x_673.y, x_673.z));
  let x_676 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
  let x_678 : vec4<f32> = u_xlat6;
  let x_680 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_678.x, x_678.y, x_678.z), vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : f32 = u_xlat42;
  u_xlat42 = max(x_683, 1.17549435e-38f);
  let x_686 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_686);
  let x_688 : f32 = u_xlat42;
  let x_690 : vec4<f32> = u_xlat6;
  let x_692 : vec3<f32> = (vec3<f32>(x_688, x_688, x_688) * vec3<f32>(x_690.x, x_690.y, x_690.z));
  let x_693 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec3<f32> = u_xlat15;
  let x_696 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_695, vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : f32 = u_xlat42;
  u_xlat42 = clamp(x_699, 0.0f, 1.0f);
  let x_702 : vec4<f32> = x_29.x_MainLightPosition;
  let x_704 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_702.x, x_702.y, x_702.z), vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : f32 = u_xlat1;
  u_xlat1 = clamp(x_707, 0.0f, 1.0f);
  let x_709 : f32 = u_xlat42;
  let x_710 : f32 = u_xlat42;
  u_xlat42 = (x_709 * x_710);
  let x_712 : f32 = u_xlat42;
  let x_714 : f32 = u_xlat8.x;
  u_xlat42 = ((x_712 * x_714) + 1.00001001358032226562f);
  let x_718 : f32 = u_xlat1;
  let x_719 : f32 = u_xlat1;
  u_xlat1 = (x_718 * x_719);
  let x_721 : f32 = u_xlat42;
  let x_722 : f32 = u_xlat42;
  u_xlat42 = (x_721 * x_722);
  let x_724 : f32 = u_xlat1;
  u_xlat1 = max(x_724, 0.10000000149011611938f);
  let x_727 : f32 = u_xlat42;
  let x_728 : f32 = u_xlat1;
  u_xlat42 = (x_727 * x_728);
  let x_730 : f32 = u_xlat45;
  let x_731 : f32 = u_xlat42;
  u_xlat42 = (x_730 * x_731);
  let x_733 : f32 = u_xlat46;
  let x_734 : f32 = u_xlat42;
  u_xlat42 = (x_733 / x_734);
  let x_736 : vec4<f32> = u_xlat0;
  let x_738 : f32 = u_xlat42;
  let x_741 : vec3<f32> = u_xlat4;
  let x_742 : vec3<f32> = ((vec3<f32>(x_736.x, x_736.y, x_736.z) * vec3<f32>(x_738, x_738, x_738)) + x_741);
  let x_743 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_746 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_748 : f32 = x_578.unity_LightData.y;
  u_xlat42 = min(x_746, x_748);
  let x_752 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_752));
  let x_756 : f32 = u_xlat19.x;
  let x_759 : f32 = x_312.x_AdditionalShadowFadeParams.x;
  let x_762 : f32 = x_312.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_756 * x_759) + x_762);
  let x_764 : f32 = u_xlat1;
  u_xlat1 = clamp(x_764, 0.0f, 1.0f);
  let x_768 : f32 = x_394.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_770 : f32 = x_394.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_772 : f32 = x_394.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_774 : f32 = x_394.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_775 : vec4<f32> = vec4<f32>(x_768, x_770, x_772, x_774);
  let x_782 : vec4<bool> = (vec4<f32>(x_775.x, x_775.y, x_775.z, x_775.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_782.x, x_782.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_794 : u32 = u_xlatu_loop_1;
    let x_795 : u32 = u_xlatu42;
    if ((x_794 < x_795)) {
    } else {
      break;
    }
    let x_798 : u32 = u_xlatu_loop_1;
    u_xlatu19 = (x_798 >> 2u);
    let x_802 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_802 & 3u));
    let x_805 : u32 = u_xlatu19;
    let x_808 : vec4<f32> = x_578.unity_LightIndices[bitcast<i32>(x_805)];
    let x_818 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_823 : vec4<u32> = indexable[x_818];
    u_xlat19.x = dot(x_808, bitcast<vec4<f32>>(x_823));
    let x_829 : f32 = u_xlat19.x;
    u_xlati19 = i32(x_829);
    let x_832 : vec3<f32> = vs_TEXCOORD7;
    let x_843 : i32 = u_xlati19;
    let x_845 : vec4<f32> = x_842.x_AdditionalLightsPosition[x_843];
    let x_848 : i32 = u_xlati19;
    let x_850 : vec4<f32> = x_842.x_AdditionalLightsPosition[x_848];
    u_xlat9 = ((-(x_832) * vec3<f32>(x_845.w, x_845.w, x_845.w)) + vec3<f32>(x_850.x, x_850.y, x_850.z));
    let x_854 : vec3<f32> = u_xlat9;
    let x_855 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_854, x_855);
    let x_857 : f32 = u_xlat48;
    u_xlat48 = max(x_857, 0.00006103515625f);
    let x_861 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_861);
    let x_864 : f32 = u_xlat35;
    let x_866 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_864, x_864, x_864) * x_866);
    let x_869 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_869);
    let x_871 : f32 = u_xlat48;
    let x_872 : i32 = u_xlati19;
    let x_874 : f32 = x_842.x_AdditionalLightsAttenuation[x_872].x;
    u_xlat48 = (x_871 * x_874);
    let x_876 : f32 = u_xlat48;
    let x_878 : f32 = u_xlat48;
    u_xlat48 = ((-(x_876) * x_878) + 1.0f);
    let x_881 : f32 = u_xlat48;
    u_xlat48 = max(x_881, 0.0f);
    let x_883 : f32 = u_xlat48;
    let x_884 : f32 = u_xlat48;
    u_xlat48 = (x_883 * x_884);
    let x_886 : f32 = u_xlat48;
    let x_887 : f32 = u_xlat49;
    u_xlat48 = (x_886 * x_887);
    let x_889 : i32 = u_xlati19;
    let x_891 : vec4<f32> = x_842.x_AdditionalLightsSpotDir[x_889];
    let x_893 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_891.x, x_891.y, x_891.z), x_893);
    let x_895 : f32 = u_xlat49;
    let x_896 : i32 = u_xlati19;
    let x_898 : f32 = x_842.x_AdditionalLightsAttenuation[x_896].z;
    let x_900 : i32 = u_xlati19;
    let x_902 : f32 = x_842.x_AdditionalLightsAttenuation[x_900].w;
    u_xlat49 = ((x_895 * x_898) + x_902);
    let x_904 : f32 = u_xlat49;
    u_xlat49 = clamp(x_904, 0.0f, 1.0f);
    let x_906 : f32 = u_xlat49;
    let x_907 : f32 = u_xlat49;
    u_xlat49 = (x_906 * x_907);
    let x_909 : f32 = u_xlat48;
    let x_910 : f32 = u_xlat49;
    u_xlat48 = (x_909 * x_910);
    let x_914 : i32 = u_xlati19;
    let x_916 : f32 = x_312.x_AdditionalShadowParams[x_914].w;
    u_xlati49 = i32(x_916);
    let x_919 : i32 = u_xlati49;
    u_xlatb51 = (x_919 >= 0i);
    let x_921 : bool = u_xlatb51;
    if (x_921) {
      let x_925 : i32 = u_xlati19;
      let x_927 : f32 = x_312.x_AdditionalShadowParams[x_925].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_927, x_927, x_927, x_927))));
      let x_931 : bool = u_xlatb51;
      if (x_931) {
        let x_936 : vec3<f32> = u_xlat10;
        let x_939 : vec3<f32> = u_xlat10;
        let x_942 : vec4<bool> = (abs(vec4<f32>(x_936.z, x_936.z, x_936.y, x_936.z)) >= abs(vec4<f32>(x_939.x, x_939.y, x_939.x, x_939.x)));
        let x_944 : vec3<bool> = vec3<bool>(x_942.x, x_942.y, x_942.z);
        let x_945 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_944.x, x_944.y, x_944.z, x_945.w);
        let x_948 : bool = u_xlatb11.y;
        let x_950 : bool = u_xlatb11.x;
        u_xlatb51 = (x_948 & x_950);
        let x_952 : vec3<f32> = u_xlat10;
        let x_955 : vec4<bool> = (-(vec4<f32>(x_952.z, x_952.y, x_952.z, x_952.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_956 : vec3<bool> = vec3<bool>(x_955.x, x_955.y, x_955.w);
        let x_957 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_956.x, x_956.y, x_957.z, x_956.z);
        let x_961 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_961);
        let x_966 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_966);
        let x_972 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_972);
        let x_975 : bool = u_xlatb11.z;
        if (x_975) {
          let x_980 : f32 = u_xlat11.y;
          x_976 = x_980;
        } else {
          let x_982 : f32 = u_xlat52;
          x_976 = x_982;
        }
        let x_983 : f32 = x_976;
        u_xlat52 = x_983;
        let x_985 : bool = u_xlatb51;
        if (x_985) {
          let x_990 : f32 = u_xlat11.x;
          x_986 = x_990;
        } else {
          let x_992 : f32 = u_xlat52;
          x_986 = x_992;
        }
        let x_993 : f32 = x_986;
        u_xlat51 = x_993;
        let x_994 : i32 = u_xlati19;
        let x_996 : f32 = x_312.x_AdditionalShadowParams[x_994].w;
        u_xlat52 = trunc(x_996);
        let x_998 : f32 = u_xlat51;
        let x_999 : f32 = u_xlat52;
        u_xlat51 = (x_998 + x_999);
        let x_1001 : f32 = u_xlat51;
        u_xlati49 = i32(x_1001);
      }
      let x_1003 : i32 = u_xlati49;
      u_xlati49 = (x_1003 << bitcast<u32>(2i));
      let x_1005 : vec3<f32> = vs_TEXCOORD7;
      let x_1008 : i32 = u_xlati49;
      let x_1011 : i32 = u_xlati49;
      let x_1015 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_1008 + 1i) / 4i)][((x_1011 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1005.y, x_1005.y, x_1005.y, x_1005.y) * x_1015);
      let x_1017 : i32 = u_xlati49;
      let x_1019 : i32 = u_xlati49;
      let x_1022 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[(x_1017 / 4i)][(x_1019 % 4i)];
      let x_1023 : vec3<f32> = vs_TEXCOORD7;
      let x_1026 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1022 * vec4<f32>(x_1023.x, x_1023.x, x_1023.x, x_1023.x)) + x_1026);
      let x_1028 : i32 = u_xlati49;
      let x_1031 : i32 = u_xlati49;
      let x_1035 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_1028 + 2i) / 4i)][((x_1031 + 2i) % 4i)];
      let x_1036 : vec3<f32> = vs_TEXCOORD7;
      let x_1039 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1035 * vec4<f32>(x_1036.z, x_1036.z, x_1036.z, x_1036.z)) + x_1039);
      let x_1041 : vec4<f32> = u_xlat11;
      let x_1042 : i32 = u_xlati49;
      let x_1045 : i32 = u_xlati49;
      let x_1049 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_1042 + 3i) / 4i)][((x_1045 + 3i) % 4i)];
      u_xlat11 = (x_1041 + x_1049);
      let x_1051 : vec4<f32> = u_xlat11;
      let x_1053 : vec4<f32> = u_xlat11;
      let x_1055 : vec3<f32> = (vec3<f32>(x_1051.x, x_1051.y, x_1051.z) / vec3<f32>(x_1053.w, x_1053.w, x_1053.w));
      let x_1056 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
      let x_1059 : vec4<f32> = u_xlat11;
      let x_1060 : vec2<f32> = vec2<f32>(x_1059.x, x_1059.y);
      let x_1062 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1060.x, x_1060.y, x_1062);
      let x_1070 : vec3<f32> = txVec1;
      let x_1072 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1070.xy, x_1070.z);
      u_xlat49 = x_1072;
      let x_1073 : i32 = u_xlati19;
      let x_1075 : f32 = x_312.x_AdditionalShadowParams[x_1073].x;
      u_xlat51 = (1.0f + -(x_1075));
      let x_1078 : f32 = u_xlat49;
      let x_1079 : i32 = u_xlati19;
      let x_1081 : f32 = x_312.x_AdditionalShadowParams[x_1079].x;
      let x_1083 : f32 = u_xlat51;
      u_xlat49 = ((x_1078 * x_1081) + x_1083);
      let x_1086 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1086);
      let x_1090 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1090 >= 1.0f);
      let x_1092 : bool = u_xlatb51;
      let x_1093 : bool = u_xlatb52;
      u_xlatb51 = (x_1092 | x_1093);
      let x_1095 : bool = u_xlatb51;
      let x_1096 : f32 = u_xlat49;
      u_xlat49 = select(x_1096, 1.0f, x_1095);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1099 : f32 = u_xlat49;
    u_xlat51 = (-(x_1099) + 1.0f);
    let x_1102 : f32 = u_xlat1;
    let x_1103 : f32 = u_xlat51;
    let x_1105 : f32 = u_xlat49;
    u_xlat49 = ((x_1102 * x_1103) + x_1105);
    let x_1108 : i32 = u_xlati19;
    u_xlati51 = (1i << bitcast<u32>((x_1108 & 31i)));
    let x_1112 : i32 = u_xlati51;
    let x_1115 : f32 = x_394.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1112) & bitcast<u32>(x_1115)));
    let x_1119 : i32 = u_xlati51;
    if ((x_1119 != 0i)) {
      let x_1123 : i32 = u_xlati19;
      let x_1125 : f32 = x_394.x_AdditionalLightsLightTypes[x_1123].el;
      u_xlati51 = i32(x_1125);
      let x_1128 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1128 != 0i));
      let x_1132 : i32 = u_xlati19;
      u_xlati11 = (x_1132 << bitcast<u32>(2i));
      let x_1134 : i32 = u_xlati52;
      if ((x_1134 != 0i)) {
        let x_1139 : vec3<f32> = vs_TEXCOORD7;
        let x_1141 : i32 = u_xlati11;
        let x_1144 : i32 = u_xlati11;
        let x_1148 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1141 + 1i) / 4i)][((x_1144 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1139.y, x_1139.y, x_1139.y) * vec3<f32>(x_1148.x, x_1148.y, x_1148.w));
        let x_1151 : i32 = u_xlati11;
        let x_1153 : i32 = u_xlati11;
        let x_1156 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[(x_1151 / 4i)][(x_1153 % 4i)];
        let x_1158 : vec3<f32> = vs_TEXCOORD7;
        let x_1161 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1156.x, x_1156.y, x_1156.w) * vec3<f32>(x_1158.x, x_1158.x, x_1158.x)) + x_1161);
        let x_1163 : i32 = u_xlati11;
        let x_1166 : i32 = u_xlati11;
        let x_1170 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1163 + 2i) / 4i)][((x_1166 + 2i) % 4i)];
        let x_1172 : vec3<f32> = vs_TEXCOORD7;
        let x_1175 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1170.x, x_1170.y, x_1170.w) * vec3<f32>(x_1172.z, x_1172.z, x_1172.z)) + x_1175);
        let x_1177 : vec3<f32> = u_xlat25;
        let x_1178 : i32 = u_xlati11;
        let x_1181 : i32 = u_xlati11;
        let x_1185 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1178 + 3i) / 4i)][((x_1181 + 3i) % 4i)];
        u_xlat25 = (x_1177 + vec3<f32>(x_1185.x, x_1185.y, x_1185.w));
        let x_1188 : vec3<f32> = u_xlat25;
        let x_1190 : vec3<f32> = u_xlat25;
        let x_1192 : vec2<f32> = (vec2<f32>(x_1188.x, x_1188.y) / vec2<f32>(x_1190.z, x_1190.z));
        let x_1193 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1192.x, x_1192.y, x_1193.z);
        let x_1195 : vec3<f32> = u_xlat25;
        let x_1198 : vec2<f32> = ((vec2<f32>(x_1195.x, x_1195.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1199 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1198.x, x_1198.y, x_1199.z);
        let x_1201 : vec3<f32> = u_xlat25;
        let x_1205 : vec2<f32> = clamp(vec2<f32>(x_1201.x, x_1201.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1206 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1205.x, x_1205.y, x_1206.z);
        let x_1208 : i32 = u_xlati19;
        let x_1210 : vec4<f32> = x_394.x_AdditionalLightsCookieAtlasUVRects[x_1208];
        let x_1212 : vec3<f32> = u_xlat25;
        let x_1215 : i32 = u_xlati19;
        let x_1217 : vec4<f32> = x_394.x_AdditionalLightsCookieAtlasUVRects[x_1215];
        let x_1219 : vec2<f32> = ((vec2<f32>(x_1210.x, x_1210.y) * vec2<f32>(x_1212.x, x_1212.y)) + vec2<f32>(x_1217.z, x_1217.w));
        let x_1220 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1219.x, x_1219.y, x_1220.z);
      } else {
        let x_1223 : i32 = u_xlati51;
        u_xlatb51 = (x_1223 == 1i);
        let x_1225 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1225);
        let x_1227 : i32 = u_xlati51;
        if ((x_1227 != 0i)) {
          let x_1232 : vec3<f32> = vs_TEXCOORD7;
          let x_1234 : i32 = u_xlati11;
          let x_1237 : i32 = u_xlati11;
          let x_1241 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1234 + 1i) / 4i)][((x_1237 + 1i) % 4i)];
          let x_1243 : vec2<f32> = (vec2<f32>(x_1232.y, x_1232.y) * vec2<f32>(x_1241.x, x_1241.y));
          let x_1244 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1243.x, x_1243.y, x_1244.z, x_1244.w);
          let x_1246 : i32 = u_xlati11;
          let x_1248 : i32 = u_xlati11;
          let x_1251 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[(x_1246 / 4i)][(x_1248 % 4i)];
          let x_1253 : vec3<f32> = vs_TEXCOORD7;
          let x_1256 : vec4<f32> = u_xlat12;
          let x_1258 : vec2<f32> = ((vec2<f32>(x_1251.x, x_1251.y) * vec2<f32>(x_1253.x, x_1253.x)) + vec2<f32>(x_1256.x, x_1256.y));
          let x_1259 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1258.x, x_1258.y, x_1259.z, x_1259.w);
          let x_1261 : i32 = u_xlati11;
          let x_1264 : i32 = u_xlati11;
          let x_1268 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1261 + 2i) / 4i)][((x_1264 + 2i) % 4i)];
          let x_1270 : vec3<f32> = vs_TEXCOORD7;
          let x_1273 : vec4<f32> = u_xlat12;
          let x_1275 : vec2<f32> = ((vec2<f32>(x_1268.x, x_1268.y) * vec2<f32>(x_1270.z, x_1270.z)) + vec2<f32>(x_1273.x, x_1273.y));
          let x_1276 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1275.x, x_1275.y, x_1276.z, x_1276.w);
          let x_1278 : vec4<f32> = u_xlat12;
          let x_1280 : i32 = u_xlati11;
          let x_1283 : i32 = u_xlati11;
          let x_1287 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1280 + 3i) / 4i)][((x_1283 + 3i) % 4i)];
          let x_1289 : vec2<f32> = (vec2<f32>(x_1278.x, x_1278.y) + vec2<f32>(x_1287.x, x_1287.y));
          let x_1290 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
          let x_1292 : vec4<f32> = u_xlat12;
          let x_1295 : vec2<f32> = ((vec2<f32>(x_1292.x, x_1292.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1296 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1295.x, x_1295.y, x_1296.z, x_1296.w);
          let x_1298 : vec4<f32> = u_xlat12;
          let x_1300 : vec2<f32> = fract(vec2<f32>(x_1298.x, x_1298.y));
          let x_1301 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1300.x, x_1300.y, x_1301.z, x_1301.w);
          let x_1303 : i32 = u_xlati19;
          let x_1305 : vec4<f32> = x_394.x_AdditionalLightsCookieAtlasUVRects[x_1303];
          let x_1307 : vec4<f32> = u_xlat12;
          let x_1310 : i32 = u_xlati19;
          let x_1312 : vec4<f32> = x_394.x_AdditionalLightsCookieAtlasUVRects[x_1310];
          let x_1314 : vec2<f32> = ((vec2<f32>(x_1305.x, x_1305.y) * vec2<f32>(x_1307.x, x_1307.y)) + vec2<f32>(x_1312.z, x_1312.w));
          let x_1315 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1314.x, x_1314.y, x_1315.z);
        } else {
          let x_1318 : vec3<f32> = vs_TEXCOORD7;
          let x_1320 : i32 = u_xlati11;
          let x_1323 : i32 = u_xlati11;
          let x_1327 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1320 + 1i) / 4i)][((x_1323 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1318.y, x_1318.y, x_1318.y, x_1318.y) * x_1327);
          let x_1329 : i32 = u_xlati11;
          let x_1331 : i32 = u_xlati11;
          let x_1334 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[(x_1329 / 4i)][(x_1331 % 4i)];
          let x_1335 : vec3<f32> = vs_TEXCOORD7;
          let x_1338 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1334 * vec4<f32>(x_1335.x, x_1335.x, x_1335.x, x_1335.x)) + x_1338);
          let x_1340 : i32 = u_xlati11;
          let x_1343 : i32 = u_xlati11;
          let x_1347 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1340 + 2i) / 4i)][((x_1343 + 2i) % 4i)];
          let x_1348 : vec3<f32> = vs_TEXCOORD7;
          let x_1351 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1347 * vec4<f32>(x_1348.z, x_1348.z, x_1348.z, x_1348.z)) + x_1351);
          let x_1353 : vec4<f32> = u_xlat12;
          let x_1354 : i32 = u_xlati11;
          let x_1357 : i32 = u_xlati11;
          let x_1361 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1354 + 3i) / 4i)][((x_1357 + 3i) % 4i)];
          u_xlat12 = (x_1353 + x_1361);
          let x_1363 : vec4<f32> = u_xlat12;
          let x_1365 : vec4<f32> = u_xlat12;
          let x_1367 : vec3<f32> = (vec3<f32>(x_1363.x, x_1363.y, x_1363.z) / vec3<f32>(x_1365.w, x_1365.w, x_1365.w));
          let x_1368 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
          let x_1370 : vec4<f32> = u_xlat12;
          let x_1372 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1370.x, x_1370.y, x_1370.z), vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
          let x_1375 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1375);
          let x_1377 : f32 = u_xlat51;
          let x_1379 : vec4<f32> = u_xlat12;
          let x_1381 : vec3<f32> = (vec3<f32>(x_1377, x_1377, x_1377) * vec3<f32>(x_1379.x, x_1379.y, x_1379.z));
          let x_1382 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1381.x, x_1381.y, x_1381.z, x_1382.w);
          let x_1384 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1384.x, x_1384.y, x_1384.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1389 : f32 = u_xlat51;
          u_xlat51 = max(x_1389, 0.00000099999999747524f);
          let x_1392 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1392);
          let x_1395 : f32 = u_xlat51;
          let x_1397 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1395, x_1395, x_1395) * vec3<f32>(x_1397.z, x_1397.x, x_1397.y));
          let x_1401 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1401);
          let x_1405 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1405, 0.0f, 1.0f);
          let x_1408 : vec3<f32> = u_xlat13;
          let x_1410 : vec4<bool> = (vec4<f32>(x_1408.y, x_1408.y, x_1408.y, x_1408.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1411 : vec2<bool> = vec2<bool>(x_1410.x, x_1410.w);
          let x_1412 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1411.x, x_1412.y, x_1412.z, x_1411.y);
          let x_1415 : bool = u_xlatb11.x;
          if (x_1415) {
            let x_1420 : f32 = u_xlat13.x;
            x_1416 = x_1420;
          } else {
            let x_1423 : f32 = u_xlat13.x;
            x_1416 = -(x_1423);
          }
          let x_1425 : f32 = x_1416;
          u_xlat11.x = x_1425;
          let x_1428 : bool = u_xlatb11.w;
          if (x_1428) {
            let x_1433 : f32 = u_xlat13.x;
            x_1429 = x_1433;
          } else {
            let x_1436 : f32 = u_xlat13.x;
            x_1429 = -(x_1436);
          }
          let x_1438 : f32 = x_1429;
          u_xlat11.w = x_1438;
          let x_1440 : vec4<f32> = u_xlat12;
          let x_1442 : f32 = u_xlat51;
          let x_1445 : vec4<f32> = u_xlat11;
          let x_1447 : vec2<f32> = ((vec2<f32>(x_1440.x, x_1440.y) * vec2<f32>(x_1442, x_1442)) + vec2<f32>(x_1445.x, x_1445.w));
          let x_1448 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1447.x, x_1448.y, x_1448.z, x_1447.y);
          let x_1450 : vec4<f32> = u_xlat11;
          let x_1453 : vec2<f32> = ((vec2<f32>(x_1450.x, x_1450.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1454 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1453.x, x_1454.y, x_1454.z, x_1453.y);
          let x_1456 : vec4<f32> = u_xlat11;
          let x_1460 : vec2<f32> = clamp(vec2<f32>(x_1456.x, x_1456.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1461 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1460.x, x_1461.y, x_1461.z, x_1460.y);
          let x_1463 : i32 = u_xlati19;
          let x_1465 : vec4<f32> = x_394.x_AdditionalLightsCookieAtlasUVRects[x_1463];
          let x_1467 : vec4<f32> = u_xlat11;
          let x_1470 : i32 = u_xlati19;
          let x_1472 : vec4<f32> = x_394.x_AdditionalLightsCookieAtlasUVRects[x_1470];
          let x_1474 : vec2<f32> = ((vec2<f32>(x_1465.x, x_1465.y) * vec2<f32>(x_1467.x, x_1467.w)) + vec2<f32>(x_1472.z, x_1472.w));
          let x_1475 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1474.x, x_1474.y, x_1475.z);
        }
      }
      let x_1482 : vec3<f32> = u_xlat25;
      let x_1484 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1482.x, x_1482.y), 0.0f);
      u_xlat11 = x_1484;
      let x_1486 : bool = u_xlatb7.y;
      if (x_1486) {
        let x_1491 : f32 = u_xlat11.w;
        x_1487 = x_1491;
      } else {
        let x_1494 : f32 = u_xlat11.x;
        x_1487 = x_1494;
      }
      let x_1495 : f32 = x_1487;
      u_xlat51 = x_1495;
      let x_1497 : bool = u_xlatb7.x;
      if (x_1497) {
        let x_1501 : vec4<f32> = u_xlat11;
        x_1498 = vec3<f32>(x_1501.x, x_1501.y, x_1501.z);
      } else {
        let x_1504 : f32 = u_xlat51;
        x_1498 = vec3<f32>(x_1504, x_1504, x_1504);
      }
      let x_1506 : vec3<f32> = x_1498;
      let x_1507 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1507.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1513 : vec4<f32> = u_xlat11;
    let x_1515 : i32 = u_xlati19;
    let x_1517 : vec4<f32> = x_842.x_AdditionalLightsColor[x_1515];
    let x_1519 : vec3<f32> = (vec3<f32>(x_1513.x, x_1513.y, x_1513.z) * vec3<f32>(x_1517.x, x_1517.y, x_1517.z));
    let x_1520 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1519.x, x_1519.y, x_1519.z, x_1520.w);
    let x_1522 : f32 = u_xlat48;
    let x_1523 : f32 = u_xlat49;
    u_xlat19.x = (x_1522 * x_1523);
    let x_1526 : vec3<f32> = u_xlat15;
    let x_1527 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(x_1526, x_1527);
    let x_1529 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1529, 0.0f, 1.0f);
    let x_1532 : f32 = u_xlat19.x;
    let x_1533 : f32 = u_xlat48;
    u_xlat19.x = (x_1532 * x_1533);
    let x_1536 : vec3<f32> = u_xlat19;
    let x_1538 : vec4<f32> = u_xlat11;
    let x_1540 : vec3<f32> = (vec3<f32>(x_1536.x, x_1536.x, x_1536.x) * vec3<f32>(x_1538.x, x_1538.y, x_1538.z));
    let x_1541 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1540.x, x_1540.y, x_1540.z, x_1541.w);
    let x_1543 : vec3<f32> = u_xlat9;
    let x_1544 : f32 = u_xlat35;
    let x_1547 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1543 * vec3<f32>(x_1544, x_1544, x_1544)) + x_1547);
    let x_1549 : vec3<f32> = u_xlat9;
    let x_1550 : vec3<f32> = u_xlat9;
    u_xlat19.x = dot(x_1549, x_1550);
    let x_1554 : f32 = u_xlat19.x;
    u_xlat19.x = max(x_1554, 1.17549435e-38f);
    let x_1558 : f32 = u_xlat19.x;
    u_xlat19.x = inverseSqrt(x_1558);
    let x_1561 : vec3<f32> = u_xlat19;
    let x_1563 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1561.x, x_1561.x, x_1561.x) * x_1563);
    let x_1565 : vec3<f32> = u_xlat15;
    let x_1566 : vec3<f32> = u_xlat9;
    u_xlat19.x = dot(x_1565, x_1566);
    let x_1570 : f32 = u_xlat19.x;
    u_xlat19.x = clamp(x_1570, 0.0f, 1.0f);
    let x_1573 : vec3<f32> = u_xlat10;
    let x_1574 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1573, x_1574);
    let x_1576 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1576, 0.0f, 1.0f);
    let x_1579 : f32 = u_xlat19.x;
    let x_1581 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1579 * x_1581);
    let x_1585 : f32 = u_xlat19.x;
    let x_1587 : f32 = u_xlat8.x;
    u_xlat19.x = ((x_1585 * x_1587) + 1.00001001358032226562f);
    let x_1591 : f32 = u_xlat48;
    let x_1592 : f32 = u_xlat48;
    u_xlat48 = (x_1591 * x_1592);
    let x_1595 : f32 = u_xlat19.x;
    let x_1597 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1595 * x_1597);
    let x_1600 : f32 = u_xlat48;
    u_xlat48 = max(x_1600, 0.10000000149011611938f);
    let x_1603 : f32 = u_xlat19.x;
    let x_1604 : f32 = u_xlat48;
    u_xlat19.x = (x_1603 * x_1604);
    let x_1607 : f32 = u_xlat45;
    let x_1609 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1607 * x_1609);
    let x_1612 : f32 = u_xlat46;
    let x_1614 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1612 / x_1614);
    let x_1617 : vec4<f32> = u_xlat0;
    let x_1619 : vec3<f32> = u_xlat19;
    let x_1622 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_1617.x, x_1617.y, x_1617.z) * vec3<f32>(x_1619.x, x_1619.x, x_1619.x)) + x_1622);
    let x_1624 : vec3<f32> = u_xlat9;
    let x_1625 : vec4<f32> = u_xlat11;
    let x_1628 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1624 * vec3<f32>(x_1625.x, x_1625.y, x_1625.z)) + x_1628);

    continuing {
      let x_1630 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1630 + bitcast<u32>(1i));
    }
  }
  let x_1632 : vec4<f32> = u_xlat6;
  let x_1634 : vec4<f32> = u_xlat5;
  let x_1637 : vec4<f32> = u_xlat2;
  let x_1639 : vec3<f32> = ((vec3<f32>(x_1632.x, x_1632.y, x_1632.z) * vec3<f32>(x_1634.x, x_1634.z, x_1634.w)) + vec3<f32>(x_1637.x, x_1637.y, x_1637.z));
  let x_1640 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1639.x, x_1639.y, x_1639.z, x_1640.w);
  let x_1644 : vec3<f32> = u_xlat22;
  let x_1645 : vec4<f32> = u_xlat0;
  let x_1647 : vec3<f32> = (x_1644 + vec3<f32>(x_1645.x, x_1645.y, x_1645.z));
  let x_1648 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1647.x, x_1647.y, x_1647.z, x_1648.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


