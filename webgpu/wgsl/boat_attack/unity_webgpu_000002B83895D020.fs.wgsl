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

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat44 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat5 : f32;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat19 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat33 : f32;

@group(1) @binding(3) var<uniform> x_330 : LightShadows;

var<private> u_xlatb33 : bool;

var<private> u_xlatb47 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_394 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_579 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatb19 : vec2<bool>;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_840 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb52 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu45 : u32;

fn main_1() {
  var x_123 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_482 : f32;
  var x_493 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_974 : f32;
  var x_985 : f32;
  var txVec1 : vec3<f32>;
  var x_1431 : f32;
  var x_1444 : f32;
  var x_1502 : f32;
  var x_1513 : vec3<f32>;
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
  let x_89 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_89) + x_94);
  let x_97 : vec3<f32> = u_xlat2;
  let x_98 : vec3<f32> = u_xlat2;
  u_xlat29 = dot(x_97, x_98);
  let x_100 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_100);
  let x_102 : f32 = u_xlat29;
  let x_104 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_102, x_102, x_102) * x_104);
  let x_110 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_110;
  let x_113 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_113;
  let x_118 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_118;
  let x_121 : bool = u_xlatb15;
  if (x_121) {
    let x_126 : vec3<f32> = u_xlat2;
    x_123 = x_126;
  } else {
    let x_128 : vec4<f32> = u_xlat3;
    x_123 = vec3<f32>(x_128.x, x_128.y, x_128.z);
  }
  let x_130 : vec3<f32> = x_123;
  u_xlat15 = x_130;
  let x_132 : vec3<f32> = vs_TEXCOORD3;
  let x_133 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_132, x_133);
  let x_137 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_137);
  let x_140 : vec3<f32> = u_xlat2;
  let x_142 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_140.x, x_140.x, x_140.x) * x_142);
  let x_147 : f32 = vs_TEXCOORD7.y;
  let x_149 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat44 = (x_147 * x_149);
  let x_152 : f32 = x_29.unity_MatrixV[0i].z;
  let x_154 : f32 = vs_TEXCOORD7.x;
  let x_156 : f32 = u_xlat44;
  u_xlat44 = ((x_152 * x_154) + x_156);
  let x_159 : f32 = x_29.unity_MatrixV[2i].z;
  let x_161 : f32 = vs_TEXCOORD7.z;
  let x_163 : f32 = u_xlat44;
  u_xlat44 = ((x_159 * x_161) + x_163);
  let x_165 : f32 = u_xlat44;
  let x_168 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat44 = (x_165 + x_168);
  let x_170 : f32 = u_xlat44;
  let x_174 : f32 = x_29.x_ProjectionParams.y;
  u_xlat44 = (-(x_170) + -(x_174));
  let x_177 : f32 = u_xlat44;
  u_xlat44 = max(x_177, 0.0f);
  let x_179 : f32 = u_xlat44;
  let x_182 : f32 = x_29.unity_FogParams.x;
  u_xlat44 = (x_179 * x_182);
  let x_189 : vec4<f32> = vs_TEXCOORD0;
  let x_192 : f32 = x_29.x_GlobalMipBias.x;
  let x_193 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_189.z, x_189.w), x_192);
  u_xlat3 = x_193;
  let x_199 : vec4<f32> = vs_TEXCOORD0;
  let x_202 : f32 = x_29.x_GlobalMipBias.x;
  let x_203 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_199.z, x_199.w), x_202);
  u_xlat4 = vec3<f32>(x_203.x, x_203.y, x_203.z);
  let x_205 : vec4<f32> = u_xlat3;
  let x_209 : vec3<f32> = (vec3<f32>(x_205.x, x_205.y, x_205.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_210 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec3<f32> = u_xlat2;
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_212, vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_218 : f32 = u_xlat3.x;
  u_xlat3.x = (x_218 + 0.5f);
  let x_222 : vec4<f32> = u_xlat3;
  let x_224 : vec3<f32> = u_xlat4;
  let x_225 : vec3<f32> = (vec3<f32>(x_222.x, x_222.x, x_222.x) * x_224);
  let x_226 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_230 : f32 = u_xlat3.w;
  u_xlat45 = max(x_230, 0.00009999999747378752f);
  let x_233 : vec4<f32> = u_xlat3;
  let x_235 : f32 = u_xlat45;
  let x_237 : vec3<f32> = (vec3<f32>(x_233.x, x_233.y, x_233.z) / vec3<f32>(x_235, x_235, x_235));
  let x_238 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : f32 = u_xlat1;
  u_xlat45 = ((-(x_240) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_245 : f32 = u_xlat45;
  u_xlat4.x = (-(x_245) + 1.0f);
  let x_251 : vec4<f32> = u_xlat0;
  let x_253 : f32 = u_xlat45;
  u_xlat18 = (vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(x_253, x_253, x_253));
  let x_256 : vec4<f32> = u_xlat0;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : f32 = u_xlat1;
  let x_265 : vec4<f32> = u_xlat0;
  let x_270 : vec3<f32> = ((vec3<f32>(x_263, x_263, x_263) * vec3<f32>(x_265.x, x_265.y, x_265.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_274 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_274) + 1.0f);
  let x_277 : f32 = u_xlat1;
  let x_278 : f32 = u_xlat1;
  u_xlat45 = (x_277 * x_278);
  let x_280 : f32 = u_xlat45;
  u_xlat45 = max(x_280, 0.0078125f);
  let x_284 : f32 = u_xlat45;
  let x_285 : f32 = u_xlat45;
  u_xlat5 = (x_284 * x_285);
  let x_289 : f32 = u_xlat0.w;
  let x_291 : f32 = u_xlat4.x;
  u_xlat42 = (x_289 + x_291);
  let x_293 : f32 = u_xlat42;
  u_xlat42 = clamp(x_293, 0.0f, 1.0f);
  let x_295 : f32 = u_xlat45;
  u_xlat4.x = ((x_295 * 4.0f) + 2.0f);
  let x_303 : vec4<f32> = vs_TEXCOORD8;
  let x_304 : vec2<f32> = vec2<f32>(x_303.x, x_303.y);
  let x_306 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_304.x, x_304.y, x_306);
  let x_319 : vec3<f32> = txVec0;
  let x_321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_319.xy, x_319.z);
  u_xlat19 = x_321;
  let x_333 : f32 = x_330.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_333) + 1.0f);
  let x_336 : f32 = u_xlat19;
  let x_338 : f32 = x_330.x_MainLightShadowParams.x;
  let x_340 : f32 = u_xlat33;
  u_xlat19 = ((x_336 * x_338) + x_340);
  let x_344 : f32 = vs_TEXCOORD8.z;
  u_xlatb33 = (0.0f >= x_344);
  let x_348 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (x_348 >= 1.0f);
  let x_350 : bool = u_xlatb47;
  let x_351 : bool = u_xlatb33;
  u_xlatb33 = (x_350 | x_351);
  let x_353 : bool = u_xlatb33;
  let x_354 : f32 = u_xlat19;
  u_xlat19 = select(x_354, 1.0f, x_353);
  let x_357 : vec3<f32> = vs_TEXCOORD7;
  let x_359 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_361 : vec3<f32> = (x_357 + -(x_359));
  let x_362 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_364 : vec4<f32> = u_xlat6;
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_364.x, x_364.y, x_364.z), vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_370 : f32 = u_xlat33;
  let x_372 : f32 = x_330.x_MainLightShadowParams.z;
  let x_375 : f32 = x_330.x_MainLightShadowParams.w;
  u_xlat47 = ((x_370 * x_372) + x_375);
  let x_377 : f32 = u_xlat47;
  u_xlat47 = clamp(x_377, 0.0f, 1.0f);
  let x_379 : f32 = u_xlat19;
  u_xlat6.x = (-(x_379) + 1.0f);
  let x_383 : f32 = u_xlat47;
  let x_385 : f32 = u_xlat6.x;
  let x_387 : f32 = u_xlat19;
  u_xlat19 = ((x_383 * x_385) + x_387);
  let x_396 : f32 = x_394.x_MainLightCookieTextureFormat;
  u_xlatb47 = !((x_396 == -1.0f));
  let x_399 : bool = u_xlatb47;
  if (x_399) {
    let x_402 : vec3<f32> = vs_TEXCOORD7;
    let x_406 : vec4<f32> = x_394.x_MainLightWorldToLight[1i];
    let x_408 : vec2<f32> = (vec2<f32>(x_402.y, x_402.y) * vec2<f32>(x_406.x, x_406.y));
    let x_409 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_408.x, x_408.y, x_409.z, x_409.w);
    let x_412 : vec4<f32> = x_394.x_MainLightWorldToLight[0i];
    let x_414 : vec3<f32> = vs_TEXCOORD7;
    let x_417 : vec4<f32> = u_xlat6;
    let x_419 : vec2<f32> = ((vec2<f32>(x_412.x, x_412.y) * vec2<f32>(x_414.x, x_414.x)) + vec2<f32>(x_417.x, x_417.y));
    let x_420 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
    let x_423 : vec4<f32> = x_394.x_MainLightWorldToLight[2i];
    let x_425 : vec3<f32> = vs_TEXCOORD7;
    let x_428 : vec4<f32> = u_xlat6;
    let x_430 : vec2<f32> = ((vec2<f32>(x_423.x, x_423.y) * vec2<f32>(x_425.z, x_425.z)) + vec2<f32>(x_428.x, x_428.y));
    let x_431 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
    let x_433 : vec4<f32> = u_xlat6;
    let x_436 : vec4<f32> = x_394.x_MainLightWorldToLight[3i];
    let x_438 : vec2<f32> = (vec2<f32>(x_433.x, x_433.y) + vec2<f32>(x_436.x, x_436.y));
    let x_439 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
    let x_441 : vec4<f32> = u_xlat6;
    let x_445 : vec2<f32> = ((vec2<f32>(x_441.x, x_441.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_446 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
    let x_453 : vec4<f32> = u_xlat6;
    let x_456 : f32 = x_29.x_GlobalMipBias.x;
    let x_457 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_453.x, x_453.y), x_456);
    u_xlat6 = x_457;
    let x_462 : f32 = x_394.x_MainLightCookieTextureFormat;
    let x_464 : f32 = x_394.x_MainLightCookieTextureFormat;
    let x_466 : f32 = x_394.x_MainLightCookieTextureFormat;
    let x_468 : f32 = x_394.x_MainLightCookieTextureFormat;
    let x_469 : vec4<f32> = vec4<f32>(x_462, x_464, x_466, x_468);
    let x_477 : vec4<bool> = (vec4<f32>(x_469.x, x_469.y, x_469.z, x_469.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_477.x, x_477.y);
    let x_480 : bool = u_xlatb7.y;
    if (x_480) {
      let x_486 : f32 = u_xlat6.w;
      x_482 = x_486;
    } else {
      let x_489 : f32 = u_xlat6.x;
      x_482 = x_489;
    }
    let x_490 : f32 = x_482;
    u_xlat47 = x_490;
    let x_492 : bool = u_xlatb7.x;
    if (x_492) {
      let x_496 : vec4<f32> = u_xlat6;
      x_493 = vec3<f32>(x_496.x, x_496.y, x_496.z);
    } else {
      let x_499 : f32 = u_xlat47;
      x_493 = vec3<f32>(x_499, x_499, x_499);
    }
    let x_501 : vec3<f32> = x_493;
    let x_502 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_508 : vec4<f32> = u_xlat6;
  let x_511 : vec4<f32> = x_29.x_MainLightColor;
  let x_513 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) * vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec3<f32> = u_xlat15;
  let x_518 : vec3<f32> = u_xlat2;
  u_xlat47 = dot(-(x_516), x_518);
  let x_520 : f32 = u_xlat47;
  let x_521 : f32 = u_xlat47;
  u_xlat47 = (x_520 + x_521);
  let x_524 : vec3<f32> = u_xlat2;
  let x_525 : f32 = u_xlat47;
  let x_529 : vec3<f32> = u_xlat15;
  let x_531 : vec3<f32> = ((x_524 * -(vec3<f32>(x_525, x_525, x_525))) + -(x_529));
  let x_532 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec3<f32> = u_xlat2;
  let x_535 : vec3<f32> = u_xlat15;
  u_xlat47 = dot(x_534, x_535);
  let x_537 : f32 = u_xlat47;
  u_xlat47 = clamp(x_537, 0.0f, 1.0f);
  let x_539 : f32 = u_xlat47;
  u_xlat47 = (-(x_539) + 1.0f);
  let x_542 : f32 = u_xlat47;
  let x_543 : f32 = u_xlat47;
  u_xlat47 = (x_542 * x_543);
  let x_545 : f32 = u_xlat47;
  let x_546 : f32 = u_xlat47;
  u_xlat47 = (x_545 * x_546);
  let x_549 : f32 = u_xlat1;
  u_xlat48 = ((-(x_549) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_555 : f32 = u_xlat1;
  let x_556 : f32 = u_xlat48;
  u_xlat1 = (x_555 * x_556);
  let x_558 : f32 = u_xlat1;
  u_xlat1 = (x_558 * 6.0f);
  let x_569 : vec4<f32> = u_xlat7;
  let x_571 : f32 = u_xlat1;
  let x_572 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_569.x, x_569.y, x_569.z), x_571);
  u_xlat7 = x_572;
  let x_574 : f32 = u_xlat7.w;
  u_xlat1 = (x_574 + -1.0f);
  let x_581 : f32 = x_579.unity_SpecCube0_HDR.w;
  let x_582 : f32 = u_xlat1;
  u_xlat1 = ((x_581 * x_582) + 1.0f);
  let x_585 : f32 = u_xlat1;
  u_xlat1 = max(x_585, 0.0f);
  let x_587 : f32 = u_xlat1;
  u_xlat1 = log2(x_587);
  let x_589 : f32 = u_xlat1;
  let x_591 : f32 = x_579.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_589 * x_591);
  let x_593 : f32 = u_xlat1;
  u_xlat1 = exp2(x_593);
  let x_595 : f32 = u_xlat1;
  let x_597 : f32 = x_579.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_595 * x_597);
  let x_599 : vec4<f32> = u_xlat7;
  let x_601 : f32 = u_xlat1;
  let x_603 : vec3<f32> = (vec3<f32>(x_599.x, x_599.y, x_599.z) * vec3<f32>(x_601, x_601, x_601));
  let x_604 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_608 : f32 = u_xlat45;
  let x_610 : f32 = u_xlat45;
  u_xlat8 = ((vec2<f32>(x_608, x_608) * vec2<f32>(x_610, x_610)) + vec2<f32>(-1.0f, 1.0f));
  let x_616 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_616);
  let x_619 : vec4<f32> = u_xlat0;
  let x_622 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_619.x, x_619.y, x_619.z)) + vec3<f32>(x_622, x_622, x_622));
  let x_625 : f32 = u_xlat47;
  let x_627 : vec3<f32> = u_xlat22;
  let x_629 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_625, x_625, x_625) * x_627) + vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : f32 = u_xlat1;
  let x_634 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_632, x_632, x_632) * x_634);
  let x_636 : vec4<f32> = u_xlat7;
  let x_638 : vec3<f32> = u_xlat22;
  let x_639 : vec3<f32> = (vec3<f32>(x_636.x, x_636.y, x_636.z) * x_638);
  let x_640 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec4<f32> = u_xlat3;
  let x_644 : vec3<f32> = u_xlat18;
  let x_646 : vec4<f32> = u_xlat7;
  let x_648 : vec3<f32> = ((vec3<f32>(x_642.x, x_642.y, x_642.z) * x_644) + vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_651 : f32 = u_xlat19;
  let x_653 : f32 = x_579.unity_LightData.z;
  u_xlat42 = (x_651 * x_653);
  let x_655 : vec3<f32> = u_xlat2;
  let x_657 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_655, vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : f32 = u_xlat1;
  u_xlat1 = clamp(x_660, 0.0f, 1.0f);
  let x_662 : f32 = u_xlat42;
  let x_663 : f32 = u_xlat1;
  u_xlat42 = (x_662 * x_663);
  let x_665 : f32 = u_xlat42;
  let x_667 : vec4<f32> = u_xlat6;
  let x_669 : vec3<f32> = (vec3<f32>(x_665, x_665, x_665) * vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_670 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_672 : vec3<f32> = u_xlat15;
  let x_674 : vec4<f32> = x_29.x_MainLightPosition;
  let x_676 : vec3<f32> = (x_672 + vec3<f32>(x_674.x, x_674.y, x_674.z));
  let x_677 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_679 : vec4<f32> = u_xlat7;
  let x_681 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_679.x, x_679.y, x_679.z), vec3<f32>(x_681.x, x_681.y, x_681.z));
  let x_684 : f32 = u_xlat42;
  u_xlat42 = max(x_684, 1.17549435e-38f);
  let x_687 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_687);
  let x_689 : f32 = u_xlat42;
  let x_691 : vec4<f32> = u_xlat7;
  let x_693 : vec3<f32> = (vec3<f32>(x_689, x_689, x_689) * vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec3<f32> = u_xlat2;
  let x_697 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_696, vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : f32 = u_xlat42;
  u_xlat42 = clamp(x_700, 0.0f, 1.0f);
  let x_703 : vec4<f32> = x_29.x_MainLightPosition;
  let x_705 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_703.x, x_703.y, x_703.z), vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : f32 = u_xlat1;
  u_xlat1 = clamp(x_708, 0.0f, 1.0f);
  let x_710 : f32 = u_xlat42;
  let x_711 : f32 = u_xlat42;
  u_xlat42 = (x_710 * x_711);
  let x_713 : f32 = u_xlat42;
  let x_715 : f32 = u_xlat8.x;
  u_xlat42 = ((x_713 * x_715) + 1.00001001358032226562f);
  let x_719 : f32 = u_xlat1;
  let x_720 : f32 = u_xlat1;
  u_xlat1 = (x_719 * x_720);
  let x_722 : f32 = u_xlat42;
  let x_723 : f32 = u_xlat42;
  u_xlat42 = (x_722 * x_723);
  let x_725 : f32 = u_xlat1;
  u_xlat1 = max(x_725, 0.10000000149011611938f);
  let x_728 : f32 = u_xlat42;
  let x_729 : f32 = u_xlat1;
  u_xlat42 = (x_728 * x_729);
  let x_732 : f32 = u_xlat4.x;
  let x_733 : f32 = u_xlat42;
  u_xlat42 = (x_732 * x_733);
  let x_735 : f32 = u_xlat5;
  let x_736 : f32 = u_xlat42;
  u_xlat42 = (x_735 / x_736);
  let x_738 : vec4<f32> = u_xlat0;
  let x_740 : f32 = u_xlat42;
  let x_743 : vec3<f32> = u_xlat18;
  let x_744 : vec3<f32> = ((vec3<f32>(x_738.x, x_738.y, x_738.z) * vec3<f32>(x_740, x_740, x_740)) + x_743);
  let x_745 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
  let x_748 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_750 : f32 = x_579.unity_LightData.y;
  u_xlat42 = min(x_748, x_750);
  let x_754 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_754));
  let x_757 : f32 = u_xlat33;
  let x_760 : f32 = x_330.x_AdditionalShadowFadeParams.x;
  let x_763 : f32 = x_330.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_757 * x_760) + x_763);
  let x_765 : f32 = u_xlat1;
  u_xlat1 = clamp(x_765, 0.0f, 1.0f);
  let x_769 : f32 = x_394.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_771 : f32 = x_394.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_773 : f32 = x_394.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_775 : f32 = x_394.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_776 : vec4<f32> = vec4<f32>(x_769, x_771, x_773, x_775);
  let x_782 : vec4<bool> = (vec4<f32>(x_776.x, x_776.y, x_776.z, x_776.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb19 = vec2<bool>(x_782.x, x_782.y);
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
    u_xlatu47 = (x_798 >> 2u);
    let x_802 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_802 & 3u));
    let x_805 : u32 = u_xlatu47;
    let x_808 : vec4<f32> = x_579.unity_LightIndices[bitcast<i32>(x_805)];
    let x_818 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_823 : vec4<u32> = indexable[x_818];
    u_xlat47 = dot(x_808, bitcast<vec4<f32>>(x_823));
    let x_827 : f32 = u_xlat47;
    u_xlati47 = i32(x_827);
    let x_830 : vec3<f32> = vs_TEXCOORD7;
    let x_841 : i32 = u_xlati47;
    let x_843 : vec4<f32> = x_840.x_AdditionalLightsPosition[x_841];
    let x_846 : i32 = u_xlati47;
    let x_848 : vec4<f32> = x_840.x_AdditionalLightsPosition[x_846];
    u_xlat9 = ((-(x_830) * vec3<f32>(x_843.w, x_843.w, x_843.w)) + vec3<f32>(x_848.x, x_848.y, x_848.z));
    let x_851 : vec3<f32> = u_xlat9;
    let x_852 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_851, x_852);
    let x_854 : f32 = u_xlat48;
    u_xlat48 = max(x_854, 0.00006103515625f);
    let x_858 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_858);
    let x_861 : f32 = u_xlat49;
    let x_863 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_861, x_861, x_861) * x_863);
    let x_866 : f32 = u_xlat48;
    u_xlat51 = (1.0f / x_866);
    let x_868 : f32 = u_xlat48;
    let x_869 : i32 = u_xlati47;
    let x_871 : f32 = x_840.x_AdditionalLightsAttenuation[x_869].x;
    u_xlat48 = (x_868 * x_871);
    let x_873 : f32 = u_xlat48;
    let x_875 : f32 = u_xlat48;
    u_xlat48 = ((-(x_873) * x_875) + 1.0f);
    let x_878 : f32 = u_xlat48;
    u_xlat48 = max(x_878, 0.0f);
    let x_880 : f32 = u_xlat48;
    let x_881 : f32 = u_xlat48;
    u_xlat48 = (x_880 * x_881);
    let x_883 : f32 = u_xlat48;
    let x_884 : f32 = u_xlat51;
    u_xlat48 = (x_883 * x_884);
    let x_886 : i32 = u_xlati47;
    let x_888 : vec4<f32> = x_840.x_AdditionalLightsSpotDir[x_886];
    let x_890 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_888.x, x_888.y, x_888.z), x_890);
    let x_892 : f32 = u_xlat51;
    let x_893 : i32 = u_xlati47;
    let x_895 : f32 = x_840.x_AdditionalLightsAttenuation[x_893].z;
    let x_897 : i32 = u_xlati47;
    let x_899 : f32 = x_840.x_AdditionalLightsAttenuation[x_897].w;
    u_xlat51 = ((x_892 * x_895) + x_899);
    let x_901 : f32 = u_xlat51;
    u_xlat51 = clamp(x_901, 0.0f, 1.0f);
    let x_903 : f32 = u_xlat51;
    let x_904 : f32 = u_xlat51;
    u_xlat51 = (x_903 * x_904);
    let x_906 : f32 = u_xlat48;
    let x_907 : f32 = u_xlat51;
    u_xlat48 = (x_906 * x_907);
    let x_911 : i32 = u_xlati47;
    let x_913 : f32 = x_330.x_AdditionalShadowParams[x_911].w;
    u_xlati51 = i32(x_913);
    let x_916 : i32 = u_xlati51;
    u_xlatb52 = (x_916 >= 0i);
    let x_918 : bool = u_xlatb52;
    if (x_918) {
      let x_922 : i32 = u_xlati47;
      let x_924 : f32 = x_330.x_AdditionalShadowParams[x_922].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_924, x_924, x_924, x_924))));
      let x_928 : bool = u_xlatb52;
      if (x_928) {
        let x_933 : vec3<f32> = u_xlat10;
        let x_936 : vec3<f32> = u_xlat10;
        let x_939 : vec4<bool> = (abs(vec4<f32>(x_933.z, x_933.z, x_933.y, x_933.z)) >= abs(vec4<f32>(x_936.x, x_936.y, x_936.x, x_936.x)));
        let x_941 : vec3<bool> = vec3<bool>(x_939.x, x_939.y, x_939.z);
        let x_942 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_941.x, x_941.y, x_941.z, x_942.w);
        let x_945 : bool = u_xlatb11.y;
        let x_947 : bool = u_xlatb11.x;
        u_xlatb52 = (x_945 & x_947);
        let x_949 : vec3<f32> = u_xlat10;
        let x_952 : vec4<bool> = (-(vec4<f32>(x_949.z, x_949.y, x_949.z, x_949.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_953 : vec3<bool> = vec3<bool>(x_952.x, x_952.y, x_952.w);
        let x_954 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_953.x, x_953.y, x_954.z, x_953.z);
        let x_958 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_958);
        let x_963 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_963);
        let x_969 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_969);
        let x_973 : bool = u_xlatb11.z;
        if (x_973) {
          let x_978 : f32 = u_xlat11.y;
          x_974 = x_978;
        } else {
          let x_980 : f32 = u_xlat53;
          x_974 = x_980;
        }
        let x_981 : f32 = x_974;
        u_xlat25.x = x_981;
        let x_984 : bool = u_xlatb52;
        if (x_984) {
          let x_989 : f32 = u_xlat11.x;
          x_985 = x_989;
        } else {
          let x_992 : f32 = u_xlat25.x;
          x_985 = x_992;
        }
        let x_993 : f32 = x_985;
        u_xlat52 = x_993;
        let x_994 : i32 = u_xlati47;
        let x_996 : f32 = x_330.x_AdditionalShadowParams[x_994].w;
        u_xlat11.x = trunc(x_996);
        let x_999 : f32 = u_xlat52;
        let x_1001 : f32 = u_xlat11.x;
        u_xlat52 = (x_999 + x_1001);
        let x_1003 : f32 = u_xlat52;
        u_xlati51 = i32(x_1003);
      }
      let x_1005 : i32 = u_xlati51;
      u_xlati51 = (x_1005 << bitcast<u32>(2i));
      let x_1007 : vec3<f32> = vs_TEXCOORD7;
      let x_1010 : i32 = u_xlati51;
      let x_1013 : i32 = u_xlati51;
      let x_1017 : vec4<f32> = x_330.x_AdditionalLightsWorldToShadow[((x_1010 + 1i) / 4i)][((x_1013 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1007.y, x_1007.y, x_1007.y, x_1007.y) * x_1017);
      let x_1019 : i32 = u_xlati51;
      let x_1021 : i32 = u_xlati51;
      let x_1024 : vec4<f32> = x_330.x_AdditionalLightsWorldToShadow[(x_1019 / 4i)][(x_1021 % 4i)];
      let x_1025 : vec3<f32> = vs_TEXCOORD7;
      let x_1028 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1024 * vec4<f32>(x_1025.x, x_1025.x, x_1025.x, x_1025.x)) + x_1028);
      let x_1030 : i32 = u_xlati51;
      let x_1033 : i32 = u_xlati51;
      let x_1037 : vec4<f32> = x_330.x_AdditionalLightsWorldToShadow[((x_1030 + 2i) / 4i)][((x_1033 + 2i) % 4i)];
      let x_1038 : vec3<f32> = vs_TEXCOORD7;
      let x_1041 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1037 * vec4<f32>(x_1038.z, x_1038.z, x_1038.z, x_1038.z)) + x_1041);
      let x_1043 : vec4<f32> = u_xlat11;
      let x_1044 : i32 = u_xlati51;
      let x_1047 : i32 = u_xlati51;
      let x_1051 : vec4<f32> = x_330.x_AdditionalLightsWorldToShadow[((x_1044 + 3i) / 4i)][((x_1047 + 3i) % 4i)];
      u_xlat11 = (x_1043 + x_1051);
      let x_1053 : vec4<f32> = u_xlat11;
      let x_1055 : vec4<f32> = u_xlat11;
      let x_1057 : vec3<f32> = (vec3<f32>(x_1053.x, x_1053.y, x_1053.z) / vec3<f32>(x_1055.w, x_1055.w, x_1055.w));
      let x_1058 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
      let x_1061 : vec4<f32> = u_xlat11;
      let x_1062 : vec2<f32> = vec2<f32>(x_1061.x, x_1061.y);
      let x_1064 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1062.x, x_1062.y, x_1064);
      let x_1072 : vec3<f32> = txVec1;
      let x_1074 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1072.xy, x_1072.z);
      u_xlat51 = x_1074;
      let x_1075 : i32 = u_xlati47;
      let x_1077 : f32 = x_330.x_AdditionalShadowParams[x_1075].x;
      u_xlat52 = (1.0f + -(x_1077));
      let x_1080 : f32 = u_xlat51;
      let x_1081 : i32 = u_xlati47;
      let x_1083 : f32 = x_330.x_AdditionalShadowParams[x_1081].x;
      let x_1085 : f32 = u_xlat52;
      u_xlat51 = ((x_1080 * x_1083) + x_1085);
      let x_1088 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1088);
      let x_1091 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1091 >= 1.0f);
      let x_1094 : bool = u_xlatb52;
      let x_1096 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1094 | x_1096);
      let x_1098 : bool = u_xlatb52;
      let x_1099 : f32 = u_xlat51;
      u_xlat51 = select(x_1099, 1.0f, x_1098);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1102 : f32 = u_xlat51;
    u_xlat52 = (-(x_1102) + 1.0f);
    let x_1105 : f32 = u_xlat1;
    let x_1106 : f32 = u_xlat52;
    let x_1108 : f32 = u_xlat51;
    u_xlat51 = ((x_1105 * x_1106) + x_1108);
    let x_1111 : i32 = u_xlati47;
    u_xlati52 = (1i << bitcast<u32>((x_1111 & 31i)));
    let x_1115 : i32 = u_xlati52;
    let x_1118 : f32 = x_394.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1115) & bitcast<u32>(x_1118)));
    let x_1122 : i32 = u_xlati52;
    if ((x_1122 != 0i)) {
      let x_1126 : i32 = u_xlati47;
      let x_1128 : f32 = x_394.x_AdditionalLightsLightTypes[x_1126].el;
      u_xlati52 = i32(x_1128);
      let x_1131 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1131 != 0i));
      let x_1135 : i32 = u_xlati47;
      u_xlati25 = (x_1135 << bitcast<u32>(2i));
      let x_1137 : i32 = u_xlati11;
      if ((x_1137 != 0i)) {
        let x_1141 : vec3<f32> = vs_TEXCOORD7;
        let x_1143 : i32 = u_xlati25;
        let x_1146 : i32 = u_xlati25;
        let x_1150 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1143 + 1i) / 4i)][((x_1146 + 1i) % 4i)];
        let x_1152 : vec3<f32> = (vec3<f32>(x_1141.y, x_1141.y, x_1141.y) * vec3<f32>(x_1150.x, x_1150.y, x_1150.w));
        let x_1153 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1152.x, x_1153.y, x_1152.y, x_1152.z);
        let x_1155 : i32 = u_xlati25;
        let x_1157 : i32 = u_xlati25;
        let x_1160 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[(x_1155 / 4i)][(x_1157 % 4i)];
        let x_1162 : vec3<f32> = vs_TEXCOORD7;
        let x_1165 : vec4<f32> = u_xlat11;
        let x_1167 : vec3<f32> = ((vec3<f32>(x_1160.x, x_1160.y, x_1160.w) * vec3<f32>(x_1162.x, x_1162.x, x_1162.x)) + vec3<f32>(x_1165.x, x_1165.z, x_1165.w));
        let x_1168 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1167.x, x_1168.y, x_1167.y, x_1167.z);
        let x_1170 : i32 = u_xlati25;
        let x_1173 : i32 = u_xlati25;
        let x_1177 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1170 + 2i) / 4i)][((x_1173 + 2i) % 4i)];
        let x_1179 : vec3<f32> = vs_TEXCOORD7;
        let x_1182 : vec4<f32> = u_xlat11;
        let x_1184 : vec3<f32> = ((vec3<f32>(x_1177.x, x_1177.y, x_1177.w) * vec3<f32>(x_1179.z, x_1179.z, x_1179.z)) + vec3<f32>(x_1182.x, x_1182.z, x_1182.w));
        let x_1185 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1184.x, x_1185.y, x_1184.y, x_1184.z);
        let x_1187 : vec4<f32> = u_xlat11;
        let x_1189 : i32 = u_xlati25;
        let x_1192 : i32 = u_xlati25;
        let x_1196 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1189 + 3i) / 4i)][((x_1192 + 3i) % 4i)];
        let x_1198 : vec3<f32> = (vec3<f32>(x_1187.x, x_1187.z, x_1187.w) + vec3<f32>(x_1196.x, x_1196.y, x_1196.w));
        let x_1199 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1198.x, x_1199.y, x_1198.y, x_1198.z);
        let x_1201 : vec4<f32> = u_xlat11;
        let x_1203 : vec4<f32> = u_xlat11;
        let x_1205 : vec2<f32> = (vec2<f32>(x_1201.x, x_1201.z) / vec2<f32>(x_1203.w, x_1203.w));
        let x_1206 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1205.x, x_1206.y, x_1205.y, x_1206.w);
        let x_1208 : vec4<f32> = u_xlat11;
        let x_1211 : vec2<f32> = ((vec2<f32>(x_1208.x, x_1208.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1212 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1211.x, x_1212.y, x_1211.y, x_1212.w);
        let x_1214 : vec4<f32> = u_xlat11;
        let x_1218 : vec2<f32> = clamp(vec2<f32>(x_1214.x, x_1214.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1219 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1218.x, x_1219.y, x_1218.y, x_1219.w);
        let x_1221 : i32 = u_xlati47;
        let x_1223 : vec4<f32> = x_394.x_AdditionalLightsCookieAtlasUVRects[x_1221];
        let x_1225 : vec4<f32> = u_xlat11;
        let x_1228 : i32 = u_xlati47;
        let x_1230 : vec4<f32> = x_394.x_AdditionalLightsCookieAtlasUVRects[x_1228];
        let x_1232 : vec2<f32> = ((vec2<f32>(x_1223.x, x_1223.y) * vec2<f32>(x_1225.x, x_1225.z)) + vec2<f32>(x_1230.z, x_1230.w));
        let x_1233 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1232.x, x_1233.y, x_1232.y, x_1233.w);
      } else {
        let x_1236 : i32 = u_xlati52;
        u_xlatb52 = (x_1236 == 1i);
        let x_1238 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1238);
        let x_1240 : i32 = u_xlati52;
        if ((x_1240 != 0i)) {
          let x_1245 : vec3<f32> = vs_TEXCOORD7;
          let x_1247 : i32 = u_xlati25;
          let x_1250 : i32 = u_xlati25;
          let x_1254 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1247 + 1i) / 4i)][((x_1250 + 1i) % 4i)];
          let x_1256 : vec2<f32> = (vec2<f32>(x_1245.y, x_1245.y) * vec2<f32>(x_1254.x, x_1254.y));
          let x_1257 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1256.x, x_1256.y, x_1257.z, x_1257.w);
          let x_1259 : i32 = u_xlati25;
          let x_1261 : i32 = u_xlati25;
          let x_1264 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[(x_1259 / 4i)][(x_1261 % 4i)];
          let x_1266 : vec3<f32> = vs_TEXCOORD7;
          let x_1269 : vec4<f32> = u_xlat12;
          let x_1271 : vec2<f32> = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(x_1266.x, x_1266.x)) + vec2<f32>(x_1269.x, x_1269.y));
          let x_1272 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1271.x, x_1271.y, x_1272.z, x_1272.w);
          let x_1274 : i32 = u_xlati25;
          let x_1277 : i32 = u_xlati25;
          let x_1281 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1274 + 2i) / 4i)][((x_1277 + 2i) % 4i)];
          let x_1283 : vec3<f32> = vs_TEXCOORD7;
          let x_1286 : vec4<f32> = u_xlat12;
          let x_1288 : vec2<f32> = ((vec2<f32>(x_1281.x, x_1281.y) * vec2<f32>(x_1283.z, x_1283.z)) + vec2<f32>(x_1286.x, x_1286.y));
          let x_1289 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1288.x, x_1288.y, x_1289.z, x_1289.w);
          let x_1291 : vec4<f32> = u_xlat12;
          let x_1293 : i32 = u_xlati25;
          let x_1296 : i32 = u_xlati25;
          let x_1300 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1293 + 3i) / 4i)][((x_1296 + 3i) % 4i)];
          let x_1302 : vec2<f32> = (vec2<f32>(x_1291.x, x_1291.y) + vec2<f32>(x_1300.x, x_1300.y));
          let x_1303 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1302.x, x_1302.y, x_1303.z, x_1303.w);
          let x_1305 : vec4<f32> = u_xlat12;
          let x_1308 : vec2<f32> = ((vec2<f32>(x_1305.x, x_1305.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1309 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1308.x, x_1308.y, x_1309.z, x_1309.w);
          let x_1311 : vec4<f32> = u_xlat12;
          let x_1313 : vec2<f32> = fract(vec2<f32>(x_1311.x, x_1311.y));
          let x_1314 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
          let x_1316 : i32 = u_xlati47;
          let x_1318 : vec4<f32> = x_394.x_AdditionalLightsCookieAtlasUVRects[x_1316];
          let x_1320 : vec4<f32> = u_xlat12;
          let x_1323 : i32 = u_xlati47;
          let x_1325 : vec4<f32> = x_394.x_AdditionalLightsCookieAtlasUVRects[x_1323];
          let x_1327 : vec2<f32> = ((vec2<f32>(x_1318.x, x_1318.y) * vec2<f32>(x_1320.x, x_1320.y)) + vec2<f32>(x_1325.z, x_1325.w));
          let x_1328 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1327.x, x_1328.y, x_1327.y, x_1328.w);
        } else {
          let x_1331 : vec3<f32> = vs_TEXCOORD7;
          let x_1333 : i32 = u_xlati25;
          let x_1336 : i32 = u_xlati25;
          let x_1340 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1333 + 1i) / 4i)][((x_1336 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1331.y, x_1331.y, x_1331.y, x_1331.y) * x_1340);
          let x_1342 : i32 = u_xlati25;
          let x_1344 : i32 = u_xlati25;
          let x_1347 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[(x_1342 / 4i)][(x_1344 % 4i)];
          let x_1348 : vec3<f32> = vs_TEXCOORD7;
          let x_1351 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1347 * vec4<f32>(x_1348.x, x_1348.x, x_1348.x, x_1348.x)) + x_1351);
          let x_1353 : i32 = u_xlati25;
          let x_1356 : i32 = u_xlati25;
          let x_1360 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1353 + 2i) / 4i)][((x_1356 + 2i) % 4i)];
          let x_1361 : vec3<f32> = vs_TEXCOORD7;
          let x_1364 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1360 * vec4<f32>(x_1361.z, x_1361.z, x_1361.z, x_1361.z)) + x_1364);
          let x_1366 : vec4<f32> = u_xlat12;
          let x_1367 : i32 = u_xlati25;
          let x_1370 : i32 = u_xlati25;
          let x_1374 : vec4<f32> = x_394.x_AdditionalLightsWorldToLights[((x_1367 + 3i) / 4i)][((x_1370 + 3i) % 4i)];
          u_xlat12 = (x_1366 + x_1374);
          let x_1376 : vec4<f32> = u_xlat12;
          let x_1378 : vec4<f32> = u_xlat12;
          let x_1380 : vec3<f32> = (vec3<f32>(x_1376.x, x_1376.y, x_1376.z) / vec3<f32>(x_1378.w, x_1378.w, x_1378.w));
          let x_1381 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
          let x_1383 : vec4<f32> = u_xlat12;
          let x_1385 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1383.x, x_1383.y, x_1383.z), vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
          let x_1388 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1388);
          let x_1390 : f32 = u_xlat52;
          let x_1392 : vec4<f32> = u_xlat12;
          let x_1394 : vec3<f32> = (vec3<f32>(x_1390, x_1390, x_1390) * vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
          let x_1395 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
          let x_1397 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1397.x, x_1397.y, x_1397.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1402 : f32 = u_xlat52;
          u_xlat52 = max(x_1402, 0.00000099999999747524f);
          let x_1405 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1405);
          let x_1408 : f32 = u_xlat52;
          let x_1410 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1408, x_1408, x_1408) * vec3<f32>(x_1410.z, x_1410.x, x_1410.y));
          let x_1414 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1414);
          let x_1418 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1418, 0.0f, 1.0f);
          let x_1423 : vec3<f32> = u_xlat13;
          let x_1425 : vec4<bool> = (vec4<f32>(x_1423.y, x_1423.y, x_1423.z, x_1423.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1426 : vec2<bool> = vec2<bool>(x_1425.x, x_1425.z);
          let x_1427 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1426.x, x_1427.y, x_1426.y);
          let x_1430 : bool = u_xlatb25.x;
          if (x_1430) {
            let x_1435 : f32 = u_xlat13.x;
            x_1431 = x_1435;
          } else {
            let x_1438 : f32 = u_xlat13.x;
            x_1431 = -(x_1438);
          }
          let x_1440 : f32 = x_1431;
          u_xlat25.x = x_1440;
          let x_1443 : bool = u_xlatb25.z;
          if (x_1443) {
            let x_1448 : f32 = u_xlat13.x;
            x_1444 = x_1448;
          } else {
            let x_1451 : f32 = u_xlat13.x;
            x_1444 = -(x_1451);
          }
          let x_1453 : f32 = x_1444;
          u_xlat25.z = x_1453;
          let x_1455 : vec4<f32> = u_xlat12;
          let x_1457 : f32 = u_xlat52;
          let x_1460 : vec3<f32> = u_xlat25;
          let x_1462 : vec2<f32> = ((vec2<f32>(x_1455.x, x_1455.y) * vec2<f32>(x_1457, x_1457)) + vec2<f32>(x_1460.x, x_1460.z));
          let x_1463 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1462.x, x_1463.y, x_1462.y);
          let x_1465 : vec3<f32> = u_xlat25;
          let x_1468 : vec2<f32> = ((vec2<f32>(x_1465.x, x_1465.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1469 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1468.x, x_1469.y, x_1468.y);
          let x_1471 : vec3<f32> = u_xlat25;
          let x_1475 : vec2<f32> = clamp(vec2<f32>(x_1471.x, x_1471.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1476 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1475.x, x_1476.y, x_1475.y);
          let x_1478 : i32 = u_xlati47;
          let x_1480 : vec4<f32> = x_394.x_AdditionalLightsCookieAtlasUVRects[x_1478];
          let x_1482 : vec3<f32> = u_xlat25;
          let x_1485 : i32 = u_xlati47;
          let x_1487 : vec4<f32> = x_394.x_AdditionalLightsCookieAtlasUVRects[x_1485];
          let x_1489 : vec2<f32> = ((vec2<f32>(x_1480.x, x_1480.y) * vec2<f32>(x_1482.x, x_1482.z)) + vec2<f32>(x_1487.z, x_1487.w));
          let x_1490 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1489.x, x_1490.y, x_1489.y, x_1490.w);
        }
      }
      let x_1497 : vec4<f32> = u_xlat11;
      let x_1499 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1497.x, x_1497.z), 0.0f);
      u_xlat11 = x_1499;
      let x_1501 : bool = u_xlatb19.y;
      if (x_1501) {
        let x_1506 : f32 = u_xlat11.w;
        x_1502 = x_1506;
      } else {
        let x_1509 : f32 = u_xlat11.x;
        x_1502 = x_1509;
      }
      let x_1510 : f32 = x_1502;
      u_xlat52 = x_1510;
      let x_1512 : bool = u_xlatb19.x;
      if (x_1512) {
        let x_1516 : vec4<f32> = u_xlat11;
        x_1513 = vec3<f32>(x_1516.x, x_1516.y, x_1516.z);
      } else {
        let x_1519 : f32 = u_xlat52;
        x_1513 = vec3<f32>(x_1519, x_1519, x_1519);
      }
      let x_1521 : vec3<f32> = x_1513;
      let x_1522 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1521.x, x_1521.y, x_1521.z, x_1522.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1528 : vec4<f32> = u_xlat11;
    let x_1530 : i32 = u_xlati47;
    let x_1532 : vec4<f32> = x_840.x_AdditionalLightsColor[x_1530];
    let x_1534 : vec3<f32> = (vec3<f32>(x_1528.x, x_1528.y, x_1528.z) * vec3<f32>(x_1532.x, x_1532.y, x_1532.z));
    let x_1535 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1534.x, x_1534.y, x_1534.z, x_1535.w);
    let x_1537 : f32 = u_xlat48;
    let x_1538 : f32 = u_xlat51;
    u_xlat47 = (x_1537 * x_1538);
    let x_1540 : vec3<f32> = u_xlat2;
    let x_1541 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(x_1540, x_1541);
    let x_1543 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1543, 0.0f, 1.0f);
    let x_1545 : f32 = u_xlat47;
    let x_1546 : f32 = u_xlat48;
    u_xlat47 = (x_1545 * x_1546);
    let x_1548 : f32 = u_xlat47;
    let x_1550 : vec4<f32> = u_xlat11;
    let x_1552 : vec3<f32> = (vec3<f32>(x_1548, x_1548, x_1548) * vec3<f32>(x_1550.x, x_1550.y, x_1550.z));
    let x_1553 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1552.x, x_1552.y, x_1552.z, x_1553.w);
    let x_1555 : vec3<f32> = u_xlat9;
    let x_1556 : f32 = u_xlat49;
    let x_1559 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1555 * vec3<f32>(x_1556, x_1556, x_1556)) + x_1559);
    let x_1561 : vec3<f32> = u_xlat9;
    let x_1562 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1561, x_1562);
    let x_1564 : f32 = u_xlat47;
    u_xlat47 = max(x_1564, 1.17549435e-38f);
    let x_1566 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1566);
    let x_1568 : f32 = u_xlat47;
    let x_1570 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1568, x_1568, x_1568) * x_1570);
    let x_1572 : vec3<f32> = u_xlat2;
    let x_1573 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1572, x_1573);
    let x_1575 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1575, 0.0f, 1.0f);
    let x_1577 : vec3<f32> = u_xlat10;
    let x_1578 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1577, x_1578);
    let x_1580 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1580, 0.0f, 1.0f);
    let x_1582 : f32 = u_xlat47;
    let x_1583 : f32 = u_xlat47;
    u_xlat47 = (x_1582 * x_1583);
    let x_1585 : f32 = u_xlat47;
    let x_1587 : f32 = u_xlat8.x;
    u_xlat47 = ((x_1585 * x_1587) + 1.00001001358032226562f);
    let x_1590 : f32 = u_xlat48;
    let x_1591 : f32 = u_xlat48;
    u_xlat48 = (x_1590 * x_1591);
    let x_1593 : f32 = u_xlat47;
    let x_1594 : f32 = u_xlat47;
    u_xlat47 = (x_1593 * x_1594);
    let x_1596 : f32 = u_xlat48;
    u_xlat48 = max(x_1596, 0.10000000149011611938f);
    let x_1598 : f32 = u_xlat47;
    let x_1599 : f32 = u_xlat48;
    u_xlat47 = (x_1598 * x_1599);
    let x_1602 : f32 = u_xlat4.x;
    let x_1603 : f32 = u_xlat47;
    u_xlat47 = (x_1602 * x_1603);
    let x_1605 : f32 = u_xlat5;
    let x_1606 : f32 = u_xlat47;
    u_xlat47 = (x_1605 / x_1606);
    let x_1608 : vec4<f32> = u_xlat0;
    let x_1610 : f32 = u_xlat47;
    let x_1613 : vec3<f32> = u_xlat18;
    u_xlat9 = ((vec3<f32>(x_1608.x, x_1608.y, x_1608.z) * vec3<f32>(x_1610, x_1610, x_1610)) + x_1613);
    let x_1615 : vec3<f32> = u_xlat9;
    let x_1616 : vec4<f32> = u_xlat11;
    let x_1619 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1615 * vec3<f32>(x_1616.x, x_1616.y, x_1616.z)) + x_1619);

    continuing {
      let x_1621 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1621 + bitcast<u32>(1i));
    }
  }
  let x_1623 : vec4<f32> = u_xlat7;
  let x_1625 : vec4<f32> = u_xlat6;
  let x_1628 : vec4<f32> = u_xlat3;
  let x_1630 : vec3<f32> = ((vec3<f32>(x_1623.x, x_1623.y, x_1623.z) * vec3<f32>(x_1625.x, x_1625.y, x_1625.z)) + vec3<f32>(x_1628.x, x_1628.y, x_1628.z));
  let x_1631 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1631.w);
  let x_1633 : vec3<f32> = u_xlat22;
  let x_1634 : vec4<f32> = u_xlat0;
  let x_1636 : vec3<f32> = (x_1633 + vec3<f32>(x_1634.x, x_1634.y, x_1634.z));
  let x_1637 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1636.x, x_1636.y, x_1636.z, x_1637.w);
  let x_1639 : f32 = u_xlat44;
  let x_1640 : f32 = u_xlat44;
  u_xlat42 = (x_1639 * -(x_1640));
  let x_1643 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1643);
  let x_1645 : vec4<f32> = u_xlat0;
  let x_1648 : vec4<f32> = x_29.unity_FogColor;
  let x_1651 : vec3<f32> = (vec3<f32>(x_1645.x, x_1645.y, x_1645.z) + -(vec3<f32>(x_1648.x, x_1648.y, x_1648.z)));
  let x_1652 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1651.x, x_1651.y, x_1651.z, x_1652.w);
  let x_1656 : f32 = u_xlat42;
  let x_1658 : vec4<f32> = u_xlat0;
  let x_1662 : vec4<f32> = x_29.unity_FogColor;
  let x_1664 : vec3<f32> = ((vec3<f32>(x_1656, x_1656, x_1656) * vec3<f32>(x_1658.x, x_1658.y, x_1658.z)) + vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
  let x_1665 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1665.w);
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


