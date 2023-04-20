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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> u_xlat16 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat4 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat32 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat46 : f32;

@group(1) @binding(3) var<uniform> x_263 : LightShadows;

var<private> u_xlatb46 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat19 : f32;

@group(1) @binding(4) var<uniform> x_332 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat47 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_530 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_794 : AdditionalLights;

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

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_421 : f32;
  var x_432 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_927 : f32;
  var x_938 : f32;
  var txVec1 : vec3<f32>;
  var x_1383 : f32;
  var x_1396 : f32;
  var x_1454 : f32;
  var x_1465 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1 = x_49.x;
  let x_54 : vec4<f32> = vs_TEXCOORD3;
  let x_56 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_54.x, x_54.y, x_54.z), vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_61 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_61);
  let x_64 : vec3<f32> = u_xlat15;
  let x_66 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_64.x, x_64.x, x_64.x) * vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_75 : f32 = vs_TEXCOORD7.y;
  let x_80 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2 = (x_75 * x_80);
  let x_83 : f32 = x_29.unity_MatrixV[0i].z;
  let x_85 : f32 = vs_TEXCOORD7.x;
  let x_87 : f32 = u_xlat2;
  u_xlat2 = ((x_83 * x_85) + x_87);
  let x_91 : f32 = x_29.unity_MatrixV[2i].z;
  let x_93 : f32 = vs_TEXCOORD7.z;
  let x_95 : f32 = u_xlat2;
  u_xlat2 = ((x_91 * x_93) + x_95);
  let x_97 : f32 = u_xlat2;
  let x_100 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat2 = (x_97 + x_100);
  let x_102 : f32 = u_xlat2;
  let x_106 : f32 = x_29.x_ProjectionParams.y;
  u_xlat2 = (-(x_102) + -(x_106));
  let x_109 : f32 = u_xlat2;
  u_xlat2 = max(x_109, 0.0f);
  let x_112 : f32 = u_xlat2;
  let x_115 : f32 = x_29.unity_FogParams.x;
  u_xlat2 = (x_112 * x_115);
  let x_123 : vec4<f32> = vs_TEXCOORD0;
  let x_126 : f32 = x_29.x_GlobalMipBias.x;
  let x_127 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_123.z, x_123.w), x_126);
  u_xlat3 = x_127;
  let x_133 : vec4<f32> = vs_TEXCOORD0;
  let x_136 : f32 = x_29.x_GlobalMipBias.x;
  let x_137 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_133.z, x_133.w), x_136);
  u_xlat16 = vec3<f32>(x_137.x, x_137.y, x_137.z);
  let x_139 : vec4<f32> = u_xlat3;
  let x_143 : vec3<f32> = (vec3<f32>(x_139.x, x_139.y, x_139.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_144 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_146 : vec3<f32> = u_xlat15;
  let x_147 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_146, vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_152 : f32 = u_xlat3.x;
  u_xlat3.x = (x_152 + 0.5f);
  let x_156 : vec3<f32> = u_xlat16;
  let x_157 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_156 * vec3<f32>(x_157.x, x_157.x, x_157.x));
  let x_162 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_162, 0.00009999999747378752f);
  let x_166 : vec3<f32> = u_xlat16;
  let x_167 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_166 / vec3<f32>(x_167.x, x_167.x, x_167.x));
  let x_170 : f32 = u_xlat1;
  u_xlat3.x = ((-(x_170) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_178 : f32 = u_xlat3.x;
  u_xlat17 = (-(x_178) + 1.0f);
  let x_182 : vec4<f32> = u_xlat0;
  let x_184 : vec4<f32> = u_xlat3;
  let x_186 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.z) * vec3<f32>(x_184.x, x_184.x, x_184.x));
  let x_187 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_186.x, x_187.y, x_186.y, x_186.z);
  let x_189 : vec4<f32> = u_xlat0;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.y, x_189.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_194 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : f32 = u_xlat1;
  let x_198 : vec4<f32> = u_xlat0;
  let x_203 : vec3<f32> = ((vec3<f32>(x_196, x_196, x_196) * vec3<f32>(x_198.x, x_198.y, x_198.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_207) + 1.0f);
  let x_211 : f32 = u_xlat1;
  let x_212 : f32 = u_xlat1;
  u_xlat4 = (x_211 * x_212);
  let x_214 : f32 = u_xlat4;
  u_xlat4 = max(x_214, 0.0078125f);
  let x_218 : f32 = u_xlat4;
  let x_219 : f32 = u_xlat4;
  u_xlat18 = (x_218 * x_219);
  let x_223 : f32 = u_xlat0.w;
  let x_224 : f32 = u_xlat17;
  u_xlat42 = (x_223 + x_224);
  let x_226 : f32 = u_xlat42;
  u_xlat42 = clamp(x_226, 0.0f, 1.0f);
  let x_228 : f32 = u_xlat4;
  u_xlat17 = ((x_228 * 4.0f) + 2.0f);
  let x_236 : vec4<f32> = vs_TEXCOORD8;
  let x_237 : vec2<f32> = vec2<f32>(x_236.x, x_236.y);
  let x_239 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_237.x, x_237.y, x_239);
  let x_252 : vec3<f32> = txVec0;
  let x_254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_252.xy, x_252.z);
  u_xlat32 = x_254;
  let x_265 : f32 = x_263.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_265) + 1.0f);
  let x_268 : f32 = u_xlat32;
  let x_270 : f32 = x_263.x_MainLightShadowParams.x;
  let x_272 : f32 = u_xlat46;
  u_xlat32 = ((x_268 * x_270) + x_272);
  let x_278 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_278);
  let x_282 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (x_282 >= 1.0f);
  let x_284 : bool = u_xlatb46;
  let x_285 : bool = u_xlatb5;
  u_xlatb46 = (x_284 | x_285);
  let x_287 : bool = u_xlatb46;
  let x_288 : f32 = u_xlat32;
  u_xlat32 = select(x_288, 1.0f, x_287);
  let x_291 : vec3<f32> = vs_TEXCOORD7;
  let x_295 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_297 : vec3<f32> = (x_291 + -(x_295));
  let x_298 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat5;
  let x_302 : vec4<f32> = u_xlat5;
  u_xlat46 = dot(vec3<f32>(x_300.x, x_300.y, x_300.z), vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : f32 = u_xlat46;
  let x_307 : f32 = x_263.x_MainLightShadowParams.z;
  let x_310 : f32 = x_263.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_305 * x_307) + x_310);
  let x_314 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_314, 0.0f, 1.0f);
  let x_318 : f32 = u_xlat32;
  u_xlat19 = (-(x_318) + 1.0f);
  let x_322 : f32 = u_xlat5.x;
  let x_323 : f32 = u_xlat19;
  let x_325 : f32 = u_xlat32;
  u_xlat32 = ((x_322 * x_323) + x_325);
  let x_334 : f32 = x_332.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_334 == -1.0f));
  let x_337 : bool = u_xlatb5;
  if (x_337) {
    let x_340 : vec3<f32> = vs_TEXCOORD7;
    let x_344 : vec4<f32> = x_332.x_MainLightWorldToLight[1i];
    let x_346 : vec2<f32> = (vec2<f32>(x_340.y, x_340.y) * vec2<f32>(x_344.x, x_344.y));
    let x_347 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_346.x, x_346.y, x_347.z, x_347.w);
    let x_350 : vec4<f32> = x_332.x_MainLightWorldToLight[0i];
    let x_352 : vec3<f32> = vs_TEXCOORD7;
    let x_355 : vec4<f32> = u_xlat5;
    let x_357 : vec2<f32> = ((vec2<f32>(x_350.x, x_350.y) * vec2<f32>(x_352.x, x_352.x)) + vec2<f32>(x_355.x, x_355.y));
    let x_358 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_358.z, x_358.w);
    let x_361 : vec4<f32> = x_332.x_MainLightWorldToLight[2i];
    let x_363 : vec3<f32> = vs_TEXCOORD7;
    let x_366 : vec4<f32> = u_xlat5;
    let x_368 : vec2<f32> = ((vec2<f32>(x_361.x, x_361.y) * vec2<f32>(x_363.z, x_363.z)) + vec2<f32>(x_366.x, x_366.y));
    let x_369 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_368.x, x_368.y, x_369.z, x_369.w);
    let x_371 : vec4<f32> = u_xlat5;
    let x_374 : vec4<f32> = x_332.x_MainLightWorldToLight[3i];
    let x_376 : vec2<f32> = (vec2<f32>(x_371.x, x_371.y) + vec2<f32>(x_374.x, x_374.y));
    let x_377 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
    let x_379 : vec4<f32> = u_xlat5;
    let x_383 : vec2<f32> = ((vec2<f32>(x_379.x, x_379.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_384 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_383.x, x_383.y, x_384.z, x_384.w);
    let x_391 : vec4<f32> = u_xlat5;
    let x_394 : f32 = x_29.x_GlobalMipBias.x;
    let x_395 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_391.x, x_391.y), x_394);
    u_xlat5 = x_395;
    let x_400 : f32 = x_332.x_MainLightCookieTextureFormat;
    let x_402 : f32 = x_332.x_MainLightCookieTextureFormat;
    let x_404 : f32 = x_332.x_MainLightCookieTextureFormat;
    let x_406 : f32 = x_332.x_MainLightCookieTextureFormat;
    let x_407 : vec4<f32> = vec4<f32>(x_400, x_402, x_404, x_406);
    let x_415 : vec4<bool> = (vec4<f32>(x_407.x, x_407.y, x_407.z, x_407.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_415.x, x_415.y);
    let x_419 : bool = u_xlatb6.y;
    if (x_419) {
      let x_425 : f32 = u_xlat5.w;
      x_421 = x_425;
    } else {
      let x_428 : f32 = u_xlat5.x;
      x_421 = x_428;
    }
    let x_429 : f32 = x_421;
    u_xlat47 = x_429;
    let x_431 : bool = u_xlatb6.x;
    if (x_431) {
      let x_435 : vec4<f32> = u_xlat5;
      x_432 = vec3<f32>(x_435.x, x_435.y, x_435.z);
    } else {
      let x_438 : f32 = u_xlat47;
      x_432 = vec3<f32>(x_438, x_438, x_438);
    }
    let x_440 : vec3<f32> = x_432;
    let x_441 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_447 : vec4<f32> = u_xlat5;
  let x_450 : vec4<f32> = x_29.x_MainLightColor;
  let x_452 : vec3<f32> = (vec3<f32>(x_447.x, x_447.y, x_447.z) * vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_453 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_457 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_457;
  let x_461 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_461;
  let x_465 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_465;
  let x_467 : vec3<f32> = u_xlat6;
  let x_469 : vec3<f32> = u_xlat15;
  u_xlat47 = dot(-(x_467), x_469);
  let x_471 : f32 = u_xlat47;
  let x_472 : f32 = u_xlat47;
  u_xlat47 = (x_471 + x_472);
  let x_475 : vec3<f32> = u_xlat15;
  let x_476 : f32 = u_xlat47;
  let x_480 : vec3<f32> = u_xlat6;
  let x_482 : vec3<f32> = ((x_475 * -(vec3<f32>(x_476, x_476, x_476))) + -(x_480));
  let x_483 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec3<f32> = u_xlat15;
  let x_486 : vec3<f32> = u_xlat6;
  u_xlat47 = dot(x_485, x_486);
  let x_488 : f32 = u_xlat47;
  u_xlat47 = clamp(x_488, 0.0f, 1.0f);
  let x_490 : f32 = u_xlat47;
  u_xlat47 = (-(x_490) + 1.0f);
  let x_493 : f32 = u_xlat47;
  let x_494 : f32 = u_xlat47;
  u_xlat47 = (x_493 * x_494);
  let x_496 : f32 = u_xlat47;
  let x_497 : f32 = u_xlat47;
  u_xlat47 = (x_496 * x_497);
  let x_500 : f32 = u_xlat1;
  u_xlat48 = ((-(x_500) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_506 : f32 = u_xlat1;
  let x_507 : f32 = u_xlat48;
  u_xlat1 = (x_506 * x_507);
  let x_509 : f32 = u_xlat1;
  u_xlat1 = (x_509 * 6.0f);
  let x_520 : vec4<f32> = u_xlat7;
  let x_522 : f32 = u_xlat1;
  let x_523 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_520.x, x_520.y, x_520.z), x_522);
  u_xlat7 = x_523;
  let x_525 : f32 = u_xlat7.w;
  u_xlat1 = (x_525 + -1.0f);
  let x_532 : f32 = x_530.unity_SpecCube0_HDR.w;
  let x_533 : f32 = u_xlat1;
  u_xlat1 = ((x_532 * x_533) + 1.0f);
  let x_536 : f32 = u_xlat1;
  u_xlat1 = max(x_536, 0.0f);
  let x_538 : f32 = u_xlat1;
  u_xlat1 = log2(x_538);
  let x_540 : f32 = u_xlat1;
  let x_542 : f32 = x_530.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_540 * x_542);
  let x_544 : f32 = u_xlat1;
  u_xlat1 = exp2(x_544);
  let x_546 : f32 = u_xlat1;
  let x_548 : f32 = x_530.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_546 * x_548);
  let x_550 : vec4<f32> = u_xlat7;
  let x_552 : f32 = u_xlat1;
  let x_554 : vec3<f32> = (vec3<f32>(x_550.x, x_550.y, x_550.z) * vec3<f32>(x_552, x_552, x_552));
  let x_555 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_559 : f32 = u_xlat4;
  let x_561 : f32 = u_xlat4;
  u_xlat8 = ((vec2<f32>(x_559, x_559) * vec2<f32>(x_561, x_561)) + vec2<f32>(-1.0f, 1.0f));
  let x_567 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_567);
  let x_570 : vec4<f32> = u_xlat0;
  let x_573 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_570.x, x_570.y, x_570.z)) + vec3<f32>(x_573, x_573, x_573));
  let x_576 : f32 = u_xlat47;
  let x_578 : vec3<f32> = u_xlat22;
  let x_580 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_576, x_576, x_576) * x_578) + vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : f32 = u_xlat1;
  let x_585 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_583, x_583, x_583) * x_585);
  let x_587 : vec4<f32> = u_xlat7;
  let x_589 : vec3<f32> = u_xlat22;
  let x_590 : vec3<f32> = (vec3<f32>(x_587.x, x_587.y, x_587.z) * x_589);
  let x_591 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_593 : vec3<f32> = u_xlat16;
  let x_594 : vec4<f32> = u_xlat3;
  let x_597 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_593 * vec3<f32>(x_594.x, x_594.z, x_594.w)) + vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : f32 = u_xlat32;
  let x_602 : f32 = x_530.unity_LightData.z;
  u_xlat42 = (x_600 * x_602);
  let x_604 : vec3<f32> = u_xlat15;
  let x_606 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_604, vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : f32 = u_xlat1;
  u_xlat1 = clamp(x_609, 0.0f, 1.0f);
  let x_611 : f32 = u_xlat42;
  let x_612 : f32 = u_xlat1;
  u_xlat42 = (x_611 * x_612);
  let x_614 : f32 = u_xlat42;
  let x_616 : vec4<f32> = u_xlat5;
  let x_618 : vec3<f32> = (vec3<f32>(x_614, x_614, x_614) * vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_619 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec3<f32> = u_xlat6;
  let x_623 : vec4<f32> = x_29.x_MainLightPosition;
  let x_625 : vec3<f32> = (x_621 + vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec4<f32> = u_xlat7;
  let x_630 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_628.x, x_628.y, x_628.z), vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : f32 = u_xlat42;
  u_xlat42 = max(x_633, 1.17549435e-38f);
  let x_636 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_636);
  let x_638 : f32 = u_xlat42;
  let x_640 : vec4<f32> = u_xlat7;
  let x_642 : vec3<f32> = (vec3<f32>(x_638, x_638, x_638) * vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec3<f32> = u_xlat15;
  let x_646 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_645, vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : f32 = u_xlat42;
  u_xlat42 = clamp(x_649, 0.0f, 1.0f);
  let x_652 : vec4<f32> = x_29.x_MainLightPosition;
  let x_654 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_652.x, x_652.y, x_652.z), vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : f32 = u_xlat1;
  u_xlat1 = clamp(x_657, 0.0f, 1.0f);
  let x_659 : f32 = u_xlat42;
  let x_660 : f32 = u_xlat42;
  u_xlat42 = (x_659 * x_660);
  let x_662 : f32 = u_xlat42;
  let x_664 : f32 = u_xlat8.x;
  u_xlat42 = ((x_662 * x_664) + 1.00001001358032226562f);
  let x_668 : f32 = u_xlat1;
  let x_669 : f32 = u_xlat1;
  u_xlat1 = (x_668 * x_669);
  let x_671 : f32 = u_xlat42;
  let x_672 : f32 = u_xlat42;
  u_xlat42 = (x_671 * x_672);
  let x_674 : f32 = u_xlat1;
  u_xlat1 = max(x_674, 0.10000000149011611938f);
  let x_677 : f32 = u_xlat42;
  let x_678 : f32 = u_xlat1;
  u_xlat42 = (x_677 * x_678);
  let x_680 : f32 = u_xlat17;
  let x_681 : f32 = u_xlat42;
  u_xlat42 = (x_680 * x_681);
  let x_683 : f32 = u_xlat18;
  let x_684 : f32 = u_xlat42;
  u_xlat42 = (x_683 / x_684);
  let x_686 : vec4<f32> = u_xlat0;
  let x_688 : f32 = u_xlat42;
  let x_691 : vec4<f32> = u_xlat3;
  let x_693 : vec3<f32> = ((vec3<f32>(x_686.x, x_686.y, x_686.z) * vec3<f32>(x_688, x_688, x_688)) + vec3<f32>(x_691.x, x_691.z, x_691.w));
  let x_694 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_697 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_699 : f32 = x_530.unity_LightData.y;
  u_xlat42 = min(x_697, x_699);
  let x_703 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_703));
  let x_706 : f32 = u_xlat46;
  let x_709 : f32 = x_263.x_AdditionalShadowFadeParams.x;
  let x_712 : f32 = x_263.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_706 * x_709) + x_712);
  let x_714 : f32 = u_xlat1;
  u_xlat1 = clamp(x_714, 0.0f, 1.0f);
  let x_720 : f32 = x_332.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_722 : f32 = x_332.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_724 : f32 = x_332.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_726 : f32 = x_332.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_727 : vec4<f32> = vec4<f32>(x_720, x_722, x_724, x_726);
  let x_734 : vec4<bool> = (vec4<f32>(x_727.x, x_727.y, x_727.z, x_727.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_735 : vec2<bool> = vec2<bool>(x_734.x, x_734.z);
  let x_736 : vec3<bool> = u_xlatb4;
  u_xlatb4 = vec3<bool>(x_735.x, x_736.y, x_735.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_748 : u32 = u_xlatu_loop_1;
    let x_749 : u32 = u_xlatu42;
    if ((x_748 < x_749)) {
    } else {
      break;
    }
    let x_752 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_752 >> 2u);
    let x_756 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_756 & 3u));
    let x_759 : u32 = u_xlatu47;
    let x_762 : vec4<f32> = x_530.unity_LightIndices[bitcast<i32>(x_759)];
    let x_772 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_777 : vec4<u32> = indexable[x_772];
    u_xlat47 = dot(x_762, bitcast<vec4<f32>>(x_777));
    let x_781 : f32 = u_xlat47;
    u_xlati47 = i32(x_781);
    let x_784 : vec3<f32> = vs_TEXCOORD7;
    let x_795 : i32 = u_xlati47;
    let x_797 : vec4<f32> = x_794.x_AdditionalLightsPosition[x_795];
    let x_800 : i32 = u_xlati47;
    let x_802 : vec4<f32> = x_794.x_AdditionalLightsPosition[x_800];
    u_xlat9 = ((-(x_784) * vec3<f32>(x_797.w, x_797.w, x_797.w)) + vec3<f32>(x_802.x, x_802.y, x_802.z));
    let x_805 : vec3<f32> = u_xlat9;
    let x_806 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_805, x_806);
    let x_808 : f32 = u_xlat48;
    u_xlat48 = max(x_808, 0.00006103515625f);
    let x_812 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_812);
    let x_815 : f32 = u_xlat49;
    let x_817 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_815, x_815, x_815) * x_817);
    let x_820 : f32 = u_xlat48;
    u_xlat51 = (1.0f / x_820);
    let x_822 : f32 = u_xlat48;
    let x_823 : i32 = u_xlati47;
    let x_825 : f32 = x_794.x_AdditionalLightsAttenuation[x_823].x;
    u_xlat48 = (x_822 * x_825);
    let x_827 : f32 = u_xlat48;
    let x_829 : f32 = u_xlat48;
    u_xlat48 = ((-(x_827) * x_829) + 1.0f);
    let x_832 : f32 = u_xlat48;
    u_xlat48 = max(x_832, 0.0f);
    let x_834 : f32 = u_xlat48;
    let x_835 : f32 = u_xlat48;
    u_xlat48 = (x_834 * x_835);
    let x_837 : f32 = u_xlat48;
    let x_838 : f32 = u_xlat51;
    u_xlat48 = (x_837 * x_838);
    let x_840 : i32 = u_xlati47;
    let x_842 : vec4<f32> = x_794.x_AdditionalLightsSpotDir[x_840];
    let x_844 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_842.x, x_842.y, x_842.z), x_844);
    let x_846 : f32 = u_xlat51;
    let x_847 : i32 = u_xlati47;
    let x_849 : f32 = x_794.x_AdditionalLightsAttenuation[x_847].z;
    let x_851 : i32 = u_xlati47;
    let x_853 : f32 = x_794.x_AdditionalLightsAttenuation[x_851].w;
    u_xlat51 = ((x_846 * x_849) + x_853);
    let x_855 : f32 = u_xlat51;
    u_xlat51 = clamp(x_855, 0.0f, 1.0f);
    let x_857 : f32 = u_xlat51;
    let x_858 : f32 = u_xlat51;
    u_xlat51 = (x_857 * x_858);
    let x_860 : f32 = u_xlat48;
    let x_861 : f32 = u_xlat51;
    u_xlat48 = (x_860 * x_861);
    let x_865 : i32 = u_xlati47;
    let x_867 : f32 = x_263.x_AdditionalShadowParams[x_865].w;
    u_xlati51 = i32(x_867);
    let x_870 : i32 = u_xlati51;
    u_xlatb52 = (x_870 >= 0i);
    let x_872 : bool = u_xlatb52;
    if (x_872) {
      let x_876 : i32 = u_xlati47;
      let x_878 : f32 = x_263.x_AdditionalShadowParams[x_876].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_878, x_878, x_878, x_878))));
      let x_882 : bool = u_xlatb52;
      if (x_882) {
        let x_887 : vec3<f32> = u_xlat10;
        let x_890 : vec3<f32> = u_xlat10;
        let x_893 : vec4<bool> = (abs(vec4<f32>(x_887.z, x_887.z, x_887.y, x_887.z)) >= abs(vec4<f32>(x_890.x, x_890.y, x_890.x, x_890.x)));
        let x_894 : vec3<bool> = vec3<bool>(x_893.x, x_893.y, x_893.z);
        let x_895 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_894.x, x_894.y, x_894.z, x_895.w);
        let x_898 : bool = u_xlatb11.y;
        let x_900 : bool = u_xlatb11.x;
        u_xlatb52 = (x_898 & x_900);
        let x_902 : vec3<f32> = u_xlat10;
        let x_905 : vec4<bool> = (-(vec4<f32>(x_902.z, x_902.y, x_902.z, x_902.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_906 : vec3<bool> = vec3<bool>(x_905.x, x_905.y, x_905.w);
        let x_907 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_906.x, x_906.y, x_907.z, x_906.z);
        let x_911 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_911);
        let x_916 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_916);
        let x_922 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_922);
        let x_926 : bool = u_xlatb11.z;
        if (x_926) {
          let x_931 : f32 = u_xlat11.y;
          x_927 = x_931;
        } else {
          let x_933 : f32 = u_xlat53;
          x_927 = x_933;
        }
        let x_934 : f32 = x_927;
        u_xlat25.x = x_934;
        let x_937 : bool = u_xlatb52;
        if (x_937) {
          let x_942 : f32 = u_xlat11.x;
          x_938 = x_942;
        } else {
          let x_945 : f32 = u_xlat25.x;
          x_938 = x_945;
        }
        let x_946 : f32 = x_938;
        u_xlat52 = x_946;
        let x_947 : i32 = u_xlati47;
        let x_949 : f32 = x_263.x_AdditionalShadowParams[x_947].w;
        u_xlat11.x = trunc(x_949);
        let x_952 : f32 = u_xlat52;
        let x_954 : f32 = u_xlat11.x;
        u_xlat52 = (x_952 + x_954);
        let x_956 : f32 = u_xlat52;
        u_xlati51 = i32(x_956);
      }
      let x_958 : i32 = u_xlati51;
      u_xlati51 = (x_958 << bitcast<u32>(2i));
      let x_960 : vec3<f32> = vs_TEXCOORD7;
      let x_963 : i32 = u_xlati51;
      let x_966 : i32 = u_xlati51;
      let x_970 : vec4<f32> = x_263.x_AdditionalLightsWorldToShadow[((x_963 + 1i) / 4i)][((x_966 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_960.y, x_960.y, x_960.y, x_960.y) * x_970);
      let x_972 : i32 = u_xlati51;
      let x_974 : i32 = u_xlati51;
      let x_977 : vec4<f32> = x_263.x_AdditionalLightsWorldToShadow[(x_972 / 4i)][(x_974 % 4i)];
      let x_978 : vec3<f32> = vs_TEXCOORD7;
      let x_981 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_977 * vec4<f32>(x_978.x, x_978.x, x_978.x, x_978.x)) + x_981);
      let x_983 : i32 = u_xlati51;
      let x_986 : i32 = u_xlati51;
      let x_990 : vec4<f32> = x_263.x_AdditionalLightsWorldToShadow[((x_983 + 2i) / 4i)][((x_986 + 2i) % 4i)];
      let x_991 : vec3<f32> = vs_TEXCOORD7;
      let x_994 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_990 * vec4<f32>(x_991.z, x_991.z, x_991.z, x_991.z)) + x_994);
      let x_996 : vec4<f32> = u_xlat11;
      let x_997 : i32 = u_xlati51;
      let x_1000 : i32 = u_xlati51;
      let x_1004 : vec4<f32> = x_263.x_AdditionalLightsWorldToShadow[((x_997 + 3i) / 4i)][((x_1000 + 3i) % 4i)];
      u_xlat11 = (x_996 + x_1004);
      let x_1006 : vec4<f32> = u_xlat11;
      let x_1008 : vec4<f32> = u_xlat11;
      let x_1010 : vec3<f32> = (vec3<f32>(x_1006.x, x_1006.y, x_1006.z) / vec3<f32>(x_1008.w, x_1008.w, x_1008.w));
      let x_1011 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
      let x_1014 : vec4<f32> = u_xlat11;
      let x_1015 : vec2<f32> = vec2<f32>(x_1014.x, x_1014.y);
      let x_1017 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1015.x, x_1015.y, x_1017);
      let x_1025 : vec3<f32> = txVec1;
      let x_1027 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1025.xy, x_1025.z);
      u_xlat51 = x_1027;
      let x_1028 : i32 = u_xlati47;
      let x_1030 : f32 = x_263.x_AdditionalShadowParams[x_1028].x;
      u_xlat52 = (1.0f + -(x_1030));
      let x_1033 : f32 = u_xlat51;
      let x_1034 : i32 = u_xlati47;
      let x_1036 : f32 = x_263.x_AdditionalShadowParams[x_1034].x;
      let x_1038 : f32 = u_xlat52;
      u_xlat51 = ((x_1033 * x_1036) + x_1038);
      let x_1041 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1041);
      let x_1044 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1044 >= 1.0f);
      let x_1047 : bool = u_xlatb52;
      let x_1049 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1047 | x_1049);
      let x_1051 : bool = u_xlatb52;
      let x_1052 : f32 = u_xlat51;
      u_xlat51 = select(x_1052, 1.0f, x_1051);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1055 : f32 = u_xlat51;
    u_xlat52 = (-(x_1055) + 1.0f);
    let x_1058 : f32 = u_xlat1;
    let x_1059 : f32 = u_xlat52;
    let x_1061 : f32 = u_xlat51;
    u_xlat51 = ((x_1058 * x_1059) + x_1061);
    let x_1064 : i32 = u_xlati47;
    u_xlati52 = (1i << bitcast<u32>((x_1064 & 31i)));
    let x_1068 : i32 = u_xlati52;
    let x_1071 : f32 = x_332.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1068) & bitcast<u32>(x_1071)));
    let x_1075 : i32 = u_xlati52;
    if ((x_1075 != 0i)) {
      let x_1079 : i32 = u_xlati47;
      let x_1081 : f32 = x_332.x_AdditionalLightsLightTypes[x_1079].el;
      u_xlati52 = i32(x_1081);
      let x_1084 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1084 != 0i));
      let x_1088 : i32 = u_xlati47;
      u_xlati25 = (x_1088 << bitcast<u32>(2i));
      let x_1090 : i32 = u_xlati11;
      if ((x_1090 != 0i)) {
        let x_1094 : vec3<f32> = vs_TEXCOORD7;
        let x_1096 : i32 = u_xlati25;
        let x_1099 : i32 = u_xlati25;
        let x_1103 : vec4<f32> = x_332.x_AdditionalLightsWorldToLights[((x_1096 + 1i) / 4i)][((x_1099 + 1i) % 4i)];
        let x_1105 : vec3<f32> = (vec3<f32>(x_1094.y, x_1094.y, x_1094.y) * vec3<f32>(x_1103.x, x_1103.y, x_1103.w));
        let x_1106 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1105.x, x_1106.y, x_1105.y, x_1105.z);
        let x_1108 : i32 = u_xlati25;
        let x_1110 : i32 = u_xlati25;
        let x_1113 : vec4<f32> = x_332.x_AdditionalLightsWorldToLights[(x_1108 / 4i)][(x_1110 % 4i)];
        let x_1115 : vec3<f32> = vs_TEXCOORD7;
        let x_1118 : vec4<f32> = u_xlat11;
        let x_1120 : vec3<f32> = ((vec3<f32>(x_1113.x, x_1113.y, x_1113.w) * vec3<f32>(x_1115.x, x_1115.x, x_1115.x)) + vec3<f32>(x_1118.x, x_1118.z, x_1118.w));
        let x_1121 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1120.x, x_1121.y, x_1120.y, x_1120.z);
        let x_1123 : i32 = u_xlati25;
        let x_1126 : i32 = u_xlati25;
        let x_1130 : vec4<f32> = x_332.x_AdditionalLightsWorldToLights[((x_1123 + 2i) / 4i)][((x_1126 + 2i) % 4i)];
        let x_1132 : vec3<f32> = vs_TEXCOORD7;
        let x_1135 : vec4<f32> = u_xlat11;
        let x_1137 : vec3<f32> = ((vec3<f32>(x_1130.x, x_1130.y, x_1130.w) * vec3<f32>(x_1132.z, x_1132.z, x_1132.z)) + vec3<f32>(x_1135.x, x_1135.z, x_1135.w));
        let x_1138 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1137.x, x_1138.y, x_1137.y, x_1137.z);
        let x_1140 : vec4<f32> = u_xlat11;
        let x_1142 : i32 = u_xlati25;
        let x_1145 : i32 = u_xlati25;
        let x_1149 : vec4<f32> = x_332.x_AdditionalLightsWorldToLights[((x_1142 + 3i) / 4i)][((x_1145 + 3i) % 4i)];
        let x_1151 : vec3<f32> = (vec3<f32>(x_1140.x, x_1140.z, x_1140.w) + vec3<f32>(x_1149.x, x_1149.y, x_1149.w));
        let x_1152 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1151.x, x_1152.y, x_1151.y, x_1151.z);
        let x_1154 : vec4<f32> = u_xlat11;
        let x_1156 : vec4<f32> = u_xlat11;
        let x_1158 : vec2<f32> = (vec2<f32>(x_1154.x, x_1154.z) / vec2<f32>(x_1156.w, x_1156.w));
        let x_1159 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1158.x, x_1159.y, x_1158.y, x_1159.w);
        let x_1161 : vec4<f32> = u_xlat11;
        let x_1164 : vec2<f32> = ((vec2<f32>(x_1161.x, x_1161.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1165 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1164.x, x_1165.y, x_1164.y, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat11;
        let x_1171 : vec2<f32> = clamp(vec2<f32>(x_1167.x, x_1167.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1172 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1171.x, x_1172.y, x_1171.y, x_1172.w);
        let x_1174 : i32 = u_xlati47;
        let x_1176 : vec4<f32> = x_332.x_AdditionalLightsCookieAtlasUVRects[x_1174];
        let x_1178 : vec4<f32> = u_xlat11;
        let x_1181 : i32 = u_xlati47;
        let x_1183 : vec4<f32> = x_332.x_AdditionalLightsCookieAtlasUVRects[x_1181];
        let x_1185 : vec2<f32> = ((vec2<f32>(x_1176.x, x_1176.y) * vec2<f32>(x_1178.x, x_1178.z)) + vec2<f32>(x_1183.z, x_1183.w));
        let x_1186 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1185.x, x_1186.y, x_1185.y, x_1186.w);
      } else {
        let x_1189 : i32 = u_xlati52;
        u_xlatb52 = (x_1189 == 1i);
        let x_1191 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1191);
        let x_1193 : i32 = u_xlati52;
        if ((x_1193 != 0i)) {
          let x_1198 : vec3<f32> = vs_TEXCOORD7;
          let x_1200 : i32 = u_xlati25;
          let x_1203 : i32 = u_xlati25;
          let x_1207 : vec4<f32> = x_332.x_AdditionalLightsWorldToLights[((x_1200 + 1i) / 4i)][((x_1203 + 1i) % 4i)];
          let x_1209 : vec2<f32> = (vec2<f32>(x_1198.y, x_1198.y) * vec2<f32>(x_1207.x, x_1207.y));
          let x_1210 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1209.x, x_1209.y, x_1210.z, x_1210.w);
          let x_1212 : i32 = u_xlati25;
          let x_1214 : i32 = u_xlati25;
          let x_1217 : vec4<f32> = x_332.x_AdditionalLightsWorldToLights[(x_1212 / 4i)][(x_1214 % 4i)];
          let x_1219 : vec3<f32> = vs_TEXCOORD7;
          let x_1222 : vec4<f32> = u_xlat12;
          let x_1224 : vec2<f32> = ((vec2<f32>(x_1217.x, x_1217.y) * vec2<f32>(x_1219.x, x_1219.x)) + vec2<f32>(x_1222.x, x_1222.y));
          let x_1225 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1224.x, x_1224.y, x_1225.z, x_1225.w);
          let x_1227 : i32 = u_xlati25;
          let x_1230 : i32 = u_xlati25;
          let x_1234 : vec4<f32> = x_332.x_AdditionalLightsWorldToLights[((x_1227 + 2i) / 4i)][((x_1230 + 2i) % 4i)];
          let x_1236 : vec3<f32> = vs_TEXCOORD7;
          let x_1239 : vec4<f32> = u_xlat12;
          let x_1241 : vec2<f32> = ((vec2<f32>(x_1234.x, x_1234.y) * vec2<f32>(x_1236.z, x_1236.z)) + vec2<f32>(x_1239.x, x_1239.y));
          let x_1242 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1242.w);
          let x_1244 : vec4<f32> = u_xlat12;
          let x_1246 : i32 = u_xlati25;
          let x_1249 : i32 = u_xlati25;
          let x_1253 : vec4<f32> = x_332.x_AdditionalLightsWorldToLights[((x_1246 + 3i) / 4i)][((x_1249 + 3i) % 4i)];
          let x_1255 : vec2<f32> = (vec2<f32>(x_1244.x, x_1244.y) + vec2<f32>(x_1253.x, x_1253.y));
          let x_1256 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1255.x, x_1255.y, x_1256.z, x_1256.w);
          let x_1258 : vec4<f32> = u_xlat12;
          let x_1261 : vec2<f32> = ((vec2<f32>(x_1258.x, x_1258.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1262 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1261.x, x_1261.y, x_1262.z, x_1262.w);
          let x_1264 : vec4<f32> = u_xlat12;
          let x_1266 : vec2<f32> = fract(vec2<f32>(x_1264.x, x_1264.y));
          let x_1267 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1266.x, x_1266.y, x_1267.z, x_1267.w);
          let x_1269 : i32 = u_xlati47;
          let x_1271 : vec4<f32> = x_332.x_AdditionalLightsCookieAtlasUVRects[x_1269];
          let x_1273 : vec4<f32> = u_xlat12;
          let x_1276 : i32 = u_xlati47;
          let x_1278 : vec4<f32> = x_332.x_AdditionalLightsCookieAtlasUVRects[x_1276];
          let x_1280 : vec2<f32> = ((vec2<f32>(x_1271.x, x_1271.y) * vec2<f32>(x_1273.x, x_1273.y)) + vec2<f32>(x_1278.z, x_1278.w));
          let x_1281 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1280.x, x_1281.y, x_1280.y, x_1281.w);
        } else {
          let x_1284 : vec3<f32> = vs_TEXCOORD7;
          let x_1286 : i32 = u_xlati25;
          let x_1289 : i32 = u_xlati25;
          let x_1293 : vec4<f32> = x_332.x_AdditionalLightsWorldToLights[((x_1286 + 1i) / 4i)][((x_1289 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1284.y, x_1284.y, x_1284.y, x_1284.y) * x_1293);
          let x_1295 : i32 = u_xlati25;
          let x_1297 : i32 = u_xlati25;
          let x_1300 : vec4<f32> = x_332.x_AdditionalLightsWorldToLights[(x_1295 / 4i)][(x_1297 % 4i)];
          let x_1301 : vec3<f32> = vs_TEXCOORD7;
          let x_1304 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1300 * vec4<f32>(x_1301.x, x_1301.x, x_1301.x, x_1301.x)) + x_1304);
          let x_1306 : i32 = u_xlati25;
          let x_1309 : i32 = u_xlati25;
          let x_1313 : vec4<f32> = x_332.x_AdditionalLightsWorldToLights[((x_1306 + 2i) / 4i)][((x_1309 + 2i) % 4i)];
          let x_1314 : vec3<f32> = vs_TEXCOORD7;
          let x_1317 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1313 * vec4<f32>(x_1314.z, x_1314.z, x_1314.z, x_1314.z)) + x_1317);
          let x_1319 : vec4<f32> = u_xlat12;
          let x_1320 : i32 = u_xlati25;
          let x_1323 : i32 = u_xlati25;
          let x_1327 : vec4<f32> = x_332.x_AdditionalLightsWorldToLights[((x_1320 + 3i) / 4i)][((x_1323 + 3i) % 4i)];
          u_xlat12 = (x_1319 + x_1327);
          let x_1329 : vec4<f32> = u_xlat12;
          let x_1331 : vec4<f32> = u_xlat12;
          let x_1333 : vec3<f32> = (vec3<f32>(x_1329.x, x_1329.y, x_1329.z) / vec3<f32>(x_1331.w, x_1331.w, x_1331.w));
          let x_1334 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
          let x_1336 : vec4<f32> = u_xlat12;
          let x_1338 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1336.x, x_1336.y, x_1336.z), vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
          let x_1341 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1341);
          let x_1343 : f32 = u_xlat52;
          let x_1345 : vec4<f32> = u_xlat12;
          let x_1347 : vec3<f32> = (vec3<f32>(x_1343, x_1343, x_1343) * vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
          let x_1348 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1347.x, x_1347.y, x_1347.z, x_1348.w);
          let x_1350 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1350.x, x_1350.y, x_1350.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1355 : f32 = u_xlat52;
          u_xlat52 = max(x_1355, 0.00000099999999747524f);
          let x_1358 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1358);
          let x_1361 : f32 = u_xlat52;
          let x_1363 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1361, x_1361, x_1361) * vec3<f32>(x_1363.z, x_1363.x, x_1363.y));
          let x_1367 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1367);
          let x_1371 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1371, 0.0f, 1.0f);
          let x_1375 : vec3<f32> = u_xlat13;
          let x_1377 : vec4<bool> = (vec4<f32>(x_1375.y, x_1375.y, x_1375.z, x_1375.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1378 : vec2<bool> = vec2<bool>(x_1377.x, x_1377.z);
          let x_1379 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1378.x, x_1379.y, x_1378.y);
          let x_1382 : bool = u_xlatb25.x;
          if (x_1382) {
            let x_1387 : f32 = u_xlat13.x;
            x_1383 = x_1387;
          } else {
            let x_1390 : f32 = u_xlat13.x;
            x_1383 = -(x_1390);
          }
          let x_1392 : f32 = x_1383;
          u_xlat25.x = x_1392;
          let x_1395 : bool = u_xlatb25.z;
          if (x_1395) {
            let x_1400 : f32 = u_xlat13.x;
            x_1396 = x_1400;
          } else {
            let x_1403 : f32 = u_xlat13.x;
            x_1396 = -(x_1403);
          }
          let x_1405 : f32 = x_1396;
          u_xlat25.z = x_1405;
          let x_1407 : vec4<f32> = u_xlat12;
          let x_1409 : f32 = u_xlat52;
          let x_1412 : vec3<f32> = u_xlat25;
          let x_1414 : vec2<f32> = ((vec2<f32>(x_1407.x, x_1407.y) * vec2<f32>(x_1409, x_1409)) + vec2<f32>(x_1412.x, x_1412.z));
          let x_1415 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1414.x, x_1415.y, x_1414.y);
          let x_1417 : vec3<f32> = u_xlat25;
          let x_1420 : vec2<f32> = ((vec2<f32>(x_1417.x, x_1417.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1421 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1420.x, x_1421.y, x_1420.y);
          let x_1423 : vec3<f32> = u_xlat25;
          let x_1427 : vec2<f32> = clamp(vec2<f32>(x_1423.x, x_1423.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1428 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1427.x, x_1428.y, x_1427.y);
          let x_1430 : i32 = u_xlati47;
          let x_1432 : vec4<f32> = x_332.x_AdditionalLightsCookieAtlasUVRects[x_1430];
          let x_1434 : vec3<f32> = u_xlat25;
          let x_1437 : i32 = u_xlati47;
          let x_1439 : vec4<f32> = x_332.x_AdditionalLightsCookieAtlasUVRects[x_1437];
          let x_1441 : vec2<f32> = ((vec2<f32>(x_1432.x, x_1432.y) * vec2<f32>(x_1434.x, x_1434.z)) + vec2<f32>(x_1439.z, x_1439.w));
          let x_1442 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1441.x, x_1442.y, x_1441.y, x_1442.w);
        }
      }
      let x_1449 : vec4<f32> = u_xlat11;
      let x_1451 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1449.x, x_1449.z), 0.0f);
      u_xlat11 = x_1451;
      let x_1453 : bool = u_xlatb4.z;
      if (x_1453) {
        let x_1458 : f32 = u_xlat11.w;
        x_1454 = x_1458;
      } else {
        let x_1461 : f32 = u_xlat11.x;
        x_1454 = x_1461;
      }
      let x_1462 : f32 = x_1454;
      u_xlat52 = x_1462;
      let x_1464 : bool = u_xlatb4.x;
      if (x_1464) {
        let x_1468 : vec4<f32> = u_xlat11;
        x_1465 = vec3<f32>(x_1468.x, x_1468.y, x_1468.z);
      } else {
        let x_1471 : f32 = u_xlat52;
        x_1465 = vec3<f32>(x_1471, x_1471, x_1471);
      }
      let x_1473 : vec3<f32> = x_1465;
      let x_1474 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1473.x, x_1473.y, x_1473.z, x_1474.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1480 : vec4<f32> = u_xlat11;
    let x_1482 : i32 = u_xlati47;
    let x_1484 : vec4<f32> = x_794.x_AdditionalLightsColor[x_1482];
    let x_1486 : vec3<f32> = (vec3<f32>(x_1480.x, x_1480.y, x_1480.z) * vec3<f32>(x_1484.x, x_1484.y, x_1484.z));
    let x_1487 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1486.x, x_1486.y, x_1486.z, x_1487.w);
    let x_1489 : f32 = u_xlat48;
    let x_1490 : f32 = u_xlat51;
    u_xlat47 = (x_1489 * x_1490);
    let x_1492 : vec3<f32> = u_xlat15;
    let x_1493 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(x_1492, x_1493);
    let x_1495 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1495, 0.0f, 1.0f);
    let x_1497 : f32 = u_xlat47;
    let x_1498 : f32 = u_xlat48;
    u_xlat47 = (x_1497 * x_1498);
    let x_1500 : f32 = u_xlat47;
    let x_1502 : vec4<f32> = u_xlat11;
    let x_1504 : vec3<f32> = (vec3<f32>(x_1500, x_1500, x_1500) * vec3<f32>(x_1502.x, x_1502.y, x_1502.z));
    let x_1505 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1505.w);
    let x_1507 : vec3<f32> = u_xlat9;
    let x_1508 : f32 = u_xlat49;
    let x_1511 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1507 * vec3<f32>(x_1508, x_1508, x_1508)) + x_1511);
    let x_1513 : vec3<f32> = u_xlat9;
    let x_1514 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1513, x_1514);
    let x_1516 : f32 = u_xlat47;
    u_xlat47 = max(x_1516, 1.17549435e-38f);
    let x_1518 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1518);
    let x_1520 : f32 = u_xlat47;
    let x_1522 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1520, x_1520, x_1520) * x_1522);
    let x_1524 : vec3<f32> = u_xlat15;
    let x_1525 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1524, x_1525);
    let x_1527 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1527, 0.0f, 1.0f);
    let x_1529 : vec3<f32> = u_xlat10;
    let x_1530 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1529, x_1530);
    let x_1532 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1532, 0.0f, 1.0f);
    let x_1534 : f32 = u_xlat47;
    let x_1535 : f32 = u_xlat47;
    u_xlat47 = (x_1534 * x_1535);
    let x_1537 : f32 = u_xlat47;
    let x_1539 : f32 = u_xlat8.x;
    u_xlat47 = ((x_1537 * x_1539) + 1.00001001358032226562f);
    let x_1542 : f32 = u_xlat48;
    let x_1543 : f32 = u_xlat48;
    u_xlat48 = (x_1542 * x_1543);
    let x_1545 : f32 = u_xlat47;
    let x_1546 : f32 = u_xlat47;
    u_xlat47 = (x_1545 * x_1546);
    let x_1548 : f32 = u_xlat48;
    u_xlat48 = max(x_1548, 0.10000000149011611938f);
    let x_1550 : f32 = u_xlat47;
    let x_1551 : f32 = u_xlat48;
    u_xlat47 = (x_1550 * x_1551);
    let x_1553 : f32 = u_xlat17;
    let x_1554 : f32 = u_xlat47;
    u_xlat47 = (x_1553 * x_1554);
    let x_1556 : f32 = u_xlat18;
    let x_1557 : f32 = u_xlat47;
    u_xlat47 = (x_1556 / x_1557);
    let x_1559 : vec4<f32> = u_xlat0;
    let x_1561 : f32 = u_xlat47;
    let x_1564 : vec4<f32> = u_xlat3;
    u_xlat9 = ((vec3<f32>(x_1559.x, x_1559.y, x_1559.z) * vec3<f32>(x_1561, x_1561, x_1561)) + vec3<f32>(x_1564.x, x_1564.z, x_1564.w));
    let x_1567 : vec3<f32> = u_xlat9;
    let x_1568 : vec4<f32> = u_xlat11;
    let x_1571 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1567 * vec3<f32>(x_1568.x, x_1568.y, x_1568.z)) + x_1571);

    continuing {
      let x_1573 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1573 + bitcast<u32>(1i));
    }
  }
  let x_1575 : vec4<f32> = u_xlat7;
  let x_1577 : vec4<f32> = u_xlat5;
  let x_1580 : vec3<f32> = u_xlat16;
  let x_1581 : vec3<f32> = ((vec3<f32>(x_1575.x, x_1575.y, x_1575.z) * vec3<f32>(x_1577.x, x_1577.y, x_1577.z)) + x_1580);
  let x_1582 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1581.x, x_1581.y, x_1581.z, x_1582.w);
  let x_1584 : vec3<f32> = u_xlat22;
  let x_1585 : vec4<f32> = u_xlat0;
  let x_1587 : vec3<f32> = (x_1584 + vec3<f32>(x_1585.x, x_1585.y, x_1585.z));
  let x_1588 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1588.w);
  let x_1590 : f32 = u_xlat2;
  let x_1591 : f32 = u_xlat2;
  u_xlat42 = (x_1590 * -(x_1591));
  let x_1594 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1594);
  let x_1596 : vec4<f32> = u_xlat0;
  let x_1600 : vec4<f32> = x_29.unity_FogColor;
  let x_1603 : vec3<f32> = (vec3<f32>(x_1596.x, x_1596.y, x_1596.z) + -(vec3<f32>(x_1600.x, x_1600.y, x_1600.z)));
  let x_1604 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1603.x, x_1603.y, x_1603.z, x_1604.w);
  let x_1608 : f32 = u_xlat42;
  let x_1610 : vec4<f32> = u_xlat0;
  let x_1614 : vec4<f32> = x_29.unity_FogColor;
  let x_1616 : vec3<f32> = ((vec3<f32>(x_1608, x_1608, x_1608) * vec3<f32>(x_1610.x, x_1610.y, x_1610.z)) + vec3<f32>(x_1614.x, x_1614.y, x_1614.z));
  let x_1617 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1616.x, x_1616.y, x_1616.z, x_1617.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


