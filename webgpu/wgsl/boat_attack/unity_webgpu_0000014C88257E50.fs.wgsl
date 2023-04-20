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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_109 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat32 : f32;

@group(1) @binding(3) var<uniform> x_283 : LightShadows;

var<private> u_xlatb32 : bool;

var<private> u_xlatb46 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat46 : f32;

@group(1) @binding(4) var<uniform> x_350 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlatu42 : u32;

var<private> u_xlatb18 : vec2<bool>;

var<private> u_xlatu46 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati46 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_832 : AdditionalLights;

var<private> u_xlat48 : f32;

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

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_440 : f32;
  var x_451 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_965 : f32;
  var x_975 : f32;
  var txVec1 : vec3<f32>;
  var x_1405 : f32;
  var x_1418 : f32;
  var x_1476 : f32;
  var x_1487 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0.x = x_36.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 == 0.0f);
  let x_47 : bool = u_xlatb0;
  if (((select(0i, 1i, x_47) * -1i) != 0i)) {
    discard;
  }
  let x_61 : vec4<f32> = vs_TEXCOORD0;
  let x_64 : f32 = x_28.x_GlobalMipBias.x;
  let x_65 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_61.x, x_61.y), x_64);
  u_xlat0 = x_65;
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_28.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1.x = x_77.x;
  let x_82 : vec4<f32> = vs_TEXCOORD3;
  let x_84 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_82.x, x_82.y, x_82.z), vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_89 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_89);
  let x_93 : vec3<f32> = u_xlat15;
  let x_95 : vec4<f32> = vs_TEXCOORD3;
  let x_97 : vec3<f32> = (vec3<f32>(x_93.x, x_93.x, x_93.x) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  u_xlat2.w = 1.0f;
  let x_113 : vec4<f32> = x_109.unity_SHAr;
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_113, x_114);
  let x_119 : vec4<f32> = x_109.unity_SHAg;
  let x_120 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_119, x_120);
  let x_126 : vec4<f32> = x_109.unity_SHAb;
  let x_127 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_126, x_127);
  let x_131 : vec4<f32> = u_xlat2;
  let x_133 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_131.y, x_131.z, x_131.z, x_131.x) * vec4<f32>(x_133.x, x_133.y, x_133.z, x_133.z));
  let x_139 : vec4<f32> = x_109.unity_SHBr;
  let x_140 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_139, x_140);
  let x_145 : vec4<f32> = x_109.unity_SHBg;
  let x_146 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_145, x_146);
  let x_151 : vec4<f32> = x_109.unity_SHBb;
  let x_152 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_151, x_152);
  let x_156 : f32 = u_xlat2.y;
  let x_158 : f32 = u_xlat2.y;
  u_xlat15.x = (x_156 * x_158);
  let x_162 : f32 = u_xlat2.x;
  let x_164 : f32 = u_xlat2.x;
  let x_167 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_162 * x_164) + -(x_167));
  let x_173 : vec4<f32> = x_109.unity_SHC;
  let x_175 : vec3<f32> = u_xlat15;
  let x_178 : vec4<f32> = u_xlat5;
  u_xlat15 = ((vec3<f32>(x_173.x, x_173.y, x_173.z) * vec3<f32>(x_175.x, x_175.x, x_175.x)) + vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec3<f32> = u_xlat15;
  let x_182 : vec3<f32> = u_xlat3;
  u_xlat15 = (x_181 + x_182);
  let x_184 : vec3<f32> = u_xlat15;
  u_xlat15 = max(x_184, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_189 : f32 = u_xlat1.x;
  u_xlat44 = ((-(x_189) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_194 : f32 = u_xlat44;
  u_xlat3.x = (-(x_194) + 1.0f);
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : f32 = u_xlat44;
  u_xlat17 = (vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_201, x_201, x_201));
  let x_204 : vec4<f32> = u_xlat0;
  let x_208 : vec3<f32> = (vec3<f32>(x_204.x, x_204.y, x_204.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_209 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_211 : vec3<f32> = u_xlat1;
  let x_213 : vec4<f32> = u_xlat0;
  let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.x, x_211.x) * vec3<f32>(x_213.x, x_213.y, x_213.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_219 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_222 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_222) + 1.0f);
  let x_227 : f32 = u_xlat1.x;
  let x_229 : f32 = u_xlat1.x;
  u_xlat44 = (x_227 * x_229);
  let x_231 : f32 = u_xlat44;
  u_xlat44 = max(x_231, 0.0078125f);
  let x_234 : f32 = u_xlat44;
  let x_235 : f32 = u_xlat44;
  u_xlat4.x = (x_234 * x_235);
  let x_240 : f32 = u_xlat0.w;
  let x_242 : f32 = u_xlat3.x;
  u_xlat42 = (x_240 + x_242);
  let x_244 : f32 = u_xlat42;
  u_xlat42 = clamp(x_244, 0.0f, 1.0f);
  let x_246 : f32 = u_xlat44;
  u_xlat3.x = ((x_246 * 4.0f) + 2.0f);
  let x_255 : vec4<f32> = vs_TEXCOORD8;
  let x_256 : vec2<f32> = vec2<f32>(x_255.x, x_255.y);
  let x_259 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_256.x, x_256.y, x_259);
  let x_272 : vec3<f32> = txVec0;
  let x_274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_272.xy, x_272.z);
  u_xlat18 = x_274;
  let x_286 : f32 = x_283.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_286) + 1.0f);
  let x_289 : f32 = u_xlat18;
  let x_291 : f32 = x_283.x_MainLightShadowParams.x;
  let x_293 : f32 = u_xlat32;
  u_xlat18 = ((x_289 * x_291) + x_293);
  let x_297 : f32 = vs_TEXCOORD8.z;
  u_xlatb32 = (0.0f >= x_297);
  let x_301 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_301 >= 1.0f);
  let x_303 : bool = u_xlatb46;
  let x_304 : bool = u_xlatb32;
  u_xlatb32 = (x_303 | x_304);
  let x_306 : bool = u_xlatb32;
  let x_307 : f32 = u_xlat18;
  u_xlat18 = select(x_307, 1.0f, x_306);
  let x_311 : vec3<f32> = vs_TEXCOORD7;
  let x_315 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_317 : vec3<f32> = (x_311 + -(x_315));
  let x_318 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat5;
  let x_322 : vec4<f32> = u_xlat5;
  u_xlat32 = dot(vec3<f32>(x_320.x, x_320.y, x_320.z), vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_326 : f32 = u_xlat32;
  let x_328 : f32 = x_283.x_MainLightShadowParams.z;
  let x_331 : f32 = x_283.x_MainLightShadowParams.w;
  u_xlat46 = ((x_326 * x_328) + x_331);
  let x_333 : f32 = u_xlat46;
  u_xlat46 = clamp(x_333, 0.0f, 1.0f);
  let x_335 : f32 = u_xlat18;
  u_xlat5.x = (-(x_335) + 1.0f);
  let x_339 : f32 = u_xlat46;
  let x_341 : f32 = u_xlat5.x;
  let x_343 : f32 = u_xlat18;
  u_xlat18 = ((x_339 * x_341) + x_343);
  let x_353 : f32 = x_350.x_MainLightCookieTextureFormat;
  u_xlatb46 = !((x_353 == -1.0f));
  let x_356 : bool = u_xlatb46;
  if (x_356) {
    let x_359 : vec3<f32> = vs_TEXCOORD7;
    let x_362 : vec4<f32> = x_350.x_MainLightWorldToLight[1i];
    let x_364 : vec2<f32> = (vec2<f32>(x_359.y, x_359.y) * vec2<f32>(x_362.x, x_362.y));
    let x_365 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_365.z, x_365.w);
    let x_368 : vec4<f32> = x_350.x_MainLightWorldToLight[0i];
    let x_370 : vec3<f32> = vs_TEXCOORD7;
    let x_373 : vec4<f32> = u_xlat5;
    let x_375 : vec2<f32> = ((vec2<f32>(x_368.x, x_368.y) * vec2<f32>(x_370.x, x_370.x)) + vec2<f32>(x_373.x, x_373.y));
    let x_376 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_375.x, x_375.y, x_376.z, x_376.w);
    let x_379 : vec4<f32> = x_350.x_MainLightWorldToLight[2i];
    let x_381 : vec3<f32> = vs_TEXCOORD7;
    let x_384 : vec4<f32> = u_xlat5;
    let x_386 : vec2<f32> = ((vec2<f32>(x_379.x, x_379.y) * vec2<f32>(x_381.z, x_381.z)) + vec2<f32>(x_384.x, x_384.y));
    let x_387 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_386.x, x_386.y, x_387.z, x_387.w);
    let x_389 : vec4<f32> = u_xlat5;
    let x_393 : vec4<f32> = x_350.x_MainLightWorldToLight[3i];
    let x_395 : vec2<f32> = (vec2<f32>(x_389.x, x_389.y) + vec2<f32>(x_393.x, x_393.y));
    let x_396 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_395.x, x_395.y, x_396.z, x_396.w);
    let x_398 : vec4<f32> = u_xlat5;
    let x_403 : vec2<f32> = ((vec2<f32>(x_398.x, x_398.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_404 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
    let x_411 : vec4<f32> = u_xlat5;
    let x_414 : f32 = x_28.x_GlobalMipBias.x;
    let x_415 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_411.x, x_411.y), x_414);
    u_xlat5 = x_415;
    let x_420 : f32 = x_350.x_MainLightCookieTextureFormat;
    let x_422 : f32 = x_350.x_MainLightCookieTextureFormat;
    let x_424 : f32 = x_350.x_MainLightCookieTextureFormat;
    let x_426 : f32 = x_350.x_MainLightCookieTextureFormat;
    let x_427 : vec4<f32> = vec4<f32>(x_420, x_422, x_424, x_426);
    let x_435 : vec4<bool> = (vec4<f32>(x_427.x, x_427.y, x_427.z, x_427.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_435.x, x_435.y);
    let x_438 : bool = u_xlatb6.y;
    if (x_438) {
      let x_444 : f32 = u_xlat5.w;
      x_440 = x_444;
    } else {
      let x_447 : f32 = u_xlat5.x;
      x_440 = x_447;
    }
    let x_448 : f32 = x_440;
    u_xlat46 = x_448;
    let x_450 : bool = u_xlatb6.x;
    if (x_450) {
      let x_454 : vec4<f32> = u_xlat5;
      x_451 = vec3<f32>(x_454.x, x_454.y, x_454.z);
    } else {
      let x_457 : f32 = u_xlat46;
      x_451 = vec3<f32>(x_457, x_457, x_457);
    }
    let x_459 : vec3<f32> = x_451;
    let x_460 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_466 : vec4<f32> = u_xlat5;
  let x_469 : vec4<f32> = x_28.x_MainLightColor;
  let x_471 : vec3<f32> = (vec3<f32>(x_466.x, x_466.y, x_466.z) * vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_476 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_476;
  let x_480 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_480;
  let x_484 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_484;
  let x_486 : vec3<f32> = u_xlat6;
  let x_488 : vec4<f32> = u_xlat2;
  u_xlat46 = dot(-(x_486), vec3<f32>(x_488.x, x_488.y, x_488.z));
  let x_491 : f32 = u_xlat46;
  let x_492 : f32 = u_xlat46;
  u_xlat46 = (x_491 + x_492);
  let x_495 : vec4<f32> = u_xlat2;
  let x_497 : f32 = u_xlat46;
  let x_501 : vec3<f32> = u_xlat6;
  let x_503 : vec3<f32> = ((vec3<f32>(x_495.x, x_495.y, x_495.z) * -(vec3<f32>(x_497, x_497, x_497))) + -(x_501));
  let x_504 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : vec4<f32> = u_xlat2;
  let x_508 : vec3<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_506.x, x_506.y, x_506.z), x_508);
  let x_510 : f32 = u_xlat46;
  u_xlat46 = clamp(x_510, 0.0f, 1.0f);
  let x_512 : f32 = u_xlat46;
  u_xlat46 = (-(x_512) + 1.0f);
  let x_515 : f32 = u_xlat46;
  let x_516 : f32 = u_xlat46;
  u_xlat46 = (x_515 * x_516);
  let x_518 : f32 = u_xlat46;
  let x_519 : f32 = u_xlat46;
  u_xlat46 = (x_518 * x_519);
  let x_523 : f32 = u_xlat1.x;
  u_xlat47 = ((-(x_523) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_530 : f32 = u_xlat1.x;
  let x_531 : f32 = u_xlat47;
  u_xlat1.x = (x_530 * x_531);
  let x_535 : f32 = u_xlat1.x;
  u_xlat1.x = (x_535 * 6.0f);
  let x_547 : vec4<f32> = u_xlat7;
  let x_550 : f32 = u_xlat1.x;
  let x_551 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_547.x, x_547.y, x_547.z), x_550);
  u_xlat7 = x_551;
  let x_553 : f32 = u_xlat7.w;
  u_xlat1.x = (x_553 + -1.0f);
  let x_557 : f32 = x_109.unity_SpecCube0_HDR.w;
  let x_559 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_557 * x_559) + 1.0f);
  let x_564 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_564, 0.0f);
  let x_568 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_568);
  let x_572 : f32 = u_xlat1.x;
  let x_574 : f32 = x_109.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_572 * x_574);
  let x_578 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_578);
  let x_582 : f32 = u_xlat1.x;
  let x_584 : f32 = x_109.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_582 * x_584);
  let x_587 : vec4<f32> = u_xlat7;
  let x_589 : vec3<f32> = u_xlat1;
  let x_591 : vec3<f32> = (vec3<f32>(x_587.x, x_587.y, x_587.z) * vec3<f32>(x_589.x, x_589.x, x_589.x));
  let x_592 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_596 : f32 = u_xlat44;
  let x_598 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_596, x_596) * vec2<f32>(x_598, x_598)) + vec2<f32>(-1.0f, 1.0f));
  let x_604 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_604);
  let x_608 : vec4<f32> = u_xlat0;
  let x_611 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_608.x, x_608.y, x_608.z)) + vec3<f32>(x_611, x_611, x_611));
  let x_614 : f32 = u_xlat46;
  let x_616 : vec3<f32> = u_xlat22;
  let x_618 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_614, x_614, x_614) * x_616) + vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_621 : vec3<f32> = u_xlat1;
  let x_623 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_621.x, x_621.x, x_621.x) * x_623);
  let x_625 : vec4<f32> = u_xlat7;
  let x_627 : vec3<f32> = u_xlat22;
  let x_628 : vec3<f32> = (vec3<f32>(x_625.x, x_625.y, x_625.z) * x_627);
  let x_629 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec3<f32> = u_xlat15;
  let x_632 : vec3<f32> = u_xlat17;
  let x_634 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_631 * x_632) + vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_637 : f32 = u_xlat18;
  let x_640 : f32 = x_109.unity_LightData.z;
  u_xlat42 = (x_637 * x_640);
  let x_643 : vec4<f32> = u_xlat2;
  let x_646 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_643.x, x_643.y, x_643.z), vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : f32 = u_xlat43;
  u_xlat43 = clamp(x_649, 0.0f, 1.0f);
  let x_651 : f32 = u_xlat42;
  let x_652 : f32 = u_xlat43;
  u_xlat42 = (x_651 * x_652);
  let x_654 : f32 = u_xlat42;
  let x_656 : vec4<f32> = u_xlat5;
  let x_658 : vec3<f32> = (vec3<f32>(x_654, x_654, x_654) * vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_659 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec3<f32> = u_xlat6;
  let x_663 : vec4<f32> = x_28.x_MainLightPosition;
  let x_665 : vec3<f32> = (x_661 + vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_666 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_668 : vec4<f32> = u_xlat7;
  let x_670 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_668.x, x_668.y, x_668.z), vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : f32 = u_xlat42;
  u_xlat42 = max(x_673, 1.17549435e-38f);
  let x_676 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_676);
  let x_678 : f32 = u_xlat42;
  let x_680 : vec4<f32> = u_xlat7;
  let x_682 : vec3<f32> = (vec3<f32>(x_678, x_678, x_678) * vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat2;
  let x_687 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_685.x, x_685.y, x_685.z), vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : f32 = u_xlat42;
  u_xlat42 = clamp(x_690, 0.0f, 1.0f);
  let x_693 : vec4<f32> = x_28.x_MainLightPosition;
  let x_695 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_693.x, x_693.y, x_693.z), vec3<f32>(x_695.x, x_695.y, x_695.z));
  let x_698 : f32 = u_xlat43;
  u_xlat43 = clamp(x_698, 0.0f, 1.0f);
  let x_700 : f32 = u_xlat42;
  let x_701 : f32 = u_xlat42;
  u_xlat42 = (x_700 * x_701);
  let x_703 : f32 = u_xlat42;
  let x_705 : f32 = u_xlat8.x;
  u_xlat42 = ((x_703 * x_705) + 1.00001001358032226562f);
  let x_709 : f32 = u_xlat43;
  let x_710 : f32 = u_xlat43;
  u_xlat43 = (x_709 * x_710);
  let x_712 : f32 = u_xlat42;
  let x_713 : f32 = u_xlat42;
  u_xlat42 = (x_712 * x_713);
  let x_715 : f32 = u_xlat43;
  u_xlat43 = max(x_715, 0.10000000149011611938f);
  let x_718 : f32 = u_xlat42;
  let x_719 : f32 = u_xlat43;
  u_xlat42 = (x_718 * x_719);
  let x_722 : f32 = u_xlat3.x;
  let x_723 : f32 = u_xlat42;
  u_xlat42 = (x_722 * x_723);
  let x_726 : f32 = u_xlat4.x;
  let x_727 : f32 = u_xlat42;
  u_xlat42 = (x_726 / x_727);
  let x_729 : vec4<f32> = u_xlat0;
  let x_731 : f32 = u_xlat42;
  let x_734 : vec3<f32> = u_xlat17;
  let x_735 : vec3<f32> = ((vec3<f32>(x_729.x, x_729.y, x_729.z) * vec3<f32>(x_731, x_731, x_731)) + x_734);
  let x_736 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_739 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_741 : f32 = x_109.unity_LightData.y;
  u_xlat42 = min(x_739, x_741);
  let x_745 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_745));
  let x_748 : f32 = u_xlat32;
  let x_751 : f32 = x_283.x_AdditionalShadowFadeParams.x;
  let x_754 : f32 = x_283.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_748 * x_751) + x_754);
  let x_756 : f32 = u_xlat43;
  u_xlat43 = clamp(x_756, 0.0f, 1.0f);
  let x_760 : f32 = x_350.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_762 : f32 = x_350.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_764 : f32 = x_350.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_766 : f32 = x_350.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_767 : vec4<f32> = vec4<f32>(x_760, x_762, x_764, x_766);
  let x_773 : vec4<bool> = (vec4<f32>(x_767.x, x_767.y, x_767.z, x_767.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb18 = vec2<bool>(x_773.x, x_773.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_785 : u32 = u_xlatu_loop_1;
    let x_786 : u32 = u_xlatu42;
    if ((x_785 < x_786)) {
    } else {
      break;
    }
    let x_789 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_789 >> 2u);
    let x_793 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_793 & 3u));
    let x_797 : u32 = u_xlatu46;
    let x_800 : vec4<f32> = x_109.unity_LightIndices[bitcast<i32>(x_797)];
    let x_810 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_815 : vec4<u32> = indexable[x_810];
    u_xlat46 = dot(x_800, bitcast<vec4<f32>>(x_815));
    let x_819 : f32 = u_xlat46;
    u_xlati46 = i32(x_819);
    let x_822 : vec3<f32> = vs_TEXCOORD7;
    let x_833 : i32 = u_xlati46;
    let x_835 : vec4<f32> = x_832.x_AdditionalLightsPosition[x_833];
    let x_838 : i32 = u_xlati46;
    let x_840 : vec4<f32> = x_832.x_AdditionalLightsPosition[x_838];
    u_xlat9 = ((-(x_822) * vec3<f32>(x_835.w, x_835.w, x_835.w)) + vec3<f32>(x_840.x, x_840.y, x_840.z));
    let x_843 : vec3<f32> = u_xlat9;
    let x_844 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_843, x_844);
    let x_846 : f32 = u_xlat47;
    u_xlat47 = max(x_846, 0.00006103515625f);
    let x_850 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_850);
    let x_853 : f32 = u_xlat48;
    let x_855 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_853, x_853, x_853) * x_855);
    let x_858 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_858);
    let x_860 : f32 = u_xlat47;
    let x_861 : i32 = u_xlati46;
    let x_863 : f32 = x_832.x_AdditionalLightsAttenuation[x_861].x;
    u_xlat47 = (x_860 * x_863);
    let x_865 : f32 = u_xlat47;
    let x_867 : f32 = u_xlat47;
    u_xlat47 = ((-(x_865) * x_867) + 1.0f);
    let x_870 : f32 = u_xlat47;
    u_xlat47 = max(x_870, 0.0f);
    let x_872 : f32 = u_xlat47;
    let x_873 : f32 = u_xlat47;
    u_xlat47 = (x_872 * x_873);
    let x_875 : f32 = u_xlat47;
    let x_876 : f32 = u_xlat49;
    u_xlat47 = (x_875 * x_876);
    let x_878 : i32 = u_xlati46;
    let x_880 : vec4<f32> = x_832.x_AdditionalLightsSpotDir[x_878];
    let x_882 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_880.x, x_880.y, x_880.z), x_882);
    let x_884 : f32 = u_xlat49;
    let x_885 : i32 = u_xlati46;
    let x_887 : f32 = x_832.x_AdditionalLightsAttenuation[x_885].z;
    let x_889 : i32 = u_xlati46;
    let x_891 : f32 = x_832.x_AdditionalLightsAttenuation[x_889].w;
    u_xlat49 = ((x_884 * x_887) + x_891);
    let x_893 : f32 = u_xlat49;
    u_xlat49 = clamp(x_893, 0.0f, 1.0f);
    let x_895 : f32 = u_xlat49;
    let x_896 : f32 = u_xlat49;
    u_xlat49 = (x_895 * x_896);
    let x_898 : f32 = u_xlat47;
    let x_899 : f32 = u_xlat49;
    u_xlat47 = (x_898 * x_899);
    let x_903 : i32 = u_xlati46;
    let x_905 : f32 = x_283.x_AdditionalShadowParams[x_903].w;
    u_xlati49 = i32(x_905);
    let x_908 : i32 = u_xlati49;
    u_xlatb51 = (x_908 >= 0i);
    let x_910 : bool = u_xlatb51;
    if (x_910) {
      let x_914 : i32 = u_xlati46;
      let x_916 : f32 = x_283.x_AdditionalShadowParams[x_914].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_916, x_916, x_916, x_916))));
      let x_920 : bool = u_xlatb51;
      if (x_920) {
        let x_925 : vec3<f32> = u_xlat10;
        let x_928 : vec3<f32> = u_xlat10;
        let x_931 : vec4<bool> = (abs(vec4<f32>(x_925.z, x_925.z, x_925.y, x_925.z)) >= abs(vec4<f32>(x_928.x, x_928.y, x_928.x, x_928.x)));
        let x_933 : vec3<bool> = vec3<bool>(x_931.x, x_931.y, x_931.z);
        let x_934 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_933.x, x_933.y, x_933.z, x_934.w);
        let x_937 : bool = u_xlatb11.y;
        let x_939 : bool = u_xlatb11.x;
        u_xlatb51 = (x_937 & x_939);
        let x_941 : vec3<f32> = u_xlat10;
        let x_944 : vec4<bool> = (-(vec4<f32>(x_941.z, x_941.y, x_941.z, x_941.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_945 : vec3<bool> = vec3<bool>(x_944.x, x_944.y, x_944.w);
        let x_946 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_945.x, x_945.y, x_946.z, x_945.z);
        let x_950 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_950);
        let x_955 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_955);
        let x_961 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_961);
        let x_964 : bool = u_xlatb11.z;
        if (x_964) {
          let x_969 : f32 = u_xlat11.y;
          x_965 = x_969;
        } else {
          let x_971 : f32 = u_xlat52;
          x_965 = x_971;
        }
        let x_972 : f32 = x_965;
        u_xlat52 = x_972;
        let x_974 : bool = u_xlatb51;
        if (x_974) {
          let x_979 : f32 = u_xlat11.x;
          x_975 = x_979;
        } else {
          let x_981 : f32 = u_xlat52;
          x_975 = x_981;
        }
        let x_982 : f32 = x_975;
        u_xlat51 = x_982;
        let x_983 : i32 = u_xlati46;
        let x_985 : f32 = x_283.x_AdditionalShadowParams[x_983].w;
        u_xlat52 = trunc(x_985);
        let x_987 : f32 = u_xlat51;
        let x_988 : f32 = u_xlat52;
        u_xlat51 = (x_987 + x_988);
        let x_990 : f32 = u_xlat51;
        u_xlati49 = i32(x_990);
      }
      let x_992 : i32 = u_xlati49;
      u_xlati49 = (x_992 << bitcast<u32>(2i));
      let x_994 : vec3<f32> = vs_TEXCOORD7;
      let x_997 : i32 = u_xlati49;
      let x_1000 : i32 = u_xlati49;
      let x_1004 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[((x_997 + 1i) / 4i)][((x_1000 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_994.y, x_994.y, x_994.y, x_994.y) * x_1004);
      let x_1006 : i32 = u_xlati49;
      let x_1008 : i32 = u_xlati49;
      let x_1011 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[(x_1006 / 4i)][(x_1008 % 4i)];
      let x_1012 : vec3<f32> = vs_TEXCOORD7;
      let x_1015 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1011 * vec4<f32>(x_1012.x, x_1012.x, x_1012.x, x_1012.x)) + x_1015);
      let x_1017 : i32 = u_xlati49;
      let x_1020 : i32 = u_xlati49;
      let x_1024 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[((x_1017 + 2i) / 4i)][((x_1020 + 2i) % 4i)];
      let x_1025 : vec3<f32> = vs_TEXCOORD7;
      let x_1028 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1024 * vec4<f32>(x_1025.z, x_1025.z, x_1025.z, x_1025.z)) + x_1028);
      let x_1030 : vec4<f32> = u_xlat11;
      let x_1031 : i32 = u_xlati49;
      let x_1034 : i32 = u_xlati49;
      let x_1038 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[((x_1031 + 3i) / 4i)][((x_1034 + 3i) % 4i)];
      u_xlat11 = (x_1030 + x_1038);
      let x_1040 : vec4<f32> = u_xlat11;
      let x_1042 : vec4<f32> = u_xlat11;
      let x_1044 : vec3<f32> = (vec3<f32>(x_1040.x, x_1040.y, x_1040.z) / vec3<f32>(x_1042.w, x_1042.w, x_1042.w));
      let x_1045 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
      let x_1048 : vec4<f32> = u_xlat11;
      let x_1049 : vec2<f32> = vec2<f32>(x_1048.x, x_1048.y);
      let x_1051 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1049.x, x_1049.y, x_1051);
      let x_1059 : vec3<f32> = txVec1;
      let x_1061 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1059.xy, x_1059.z);
      u_xlat49 = x_1061;
      let x_1062 : i32 = u_xlati46;
      let x_1064 : f32 = x_283.x_AdditionalShadowParams[x_1062].x;
      u_xlat51 = (1.0f + -(x_1064));
      let x_1067 : f32 = u_xlat49;
      let x_1068 : i32 = u_xlati46;
      let x_1070 : f32 = x_283.x_AdditionalShadowParams[x_1068].x;
      let x_1072 : f32 = u_xlat51;
      u_xlat49 = ((x_1067 * x_1070) + x_1072);
      let x_1075 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1075);
      let x_1079 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1079 >= 1.0f);
      let x_1081 : bool = u_xlatb51;
      let x_1082 : bool = u_xlatb52;
      u_xlatb51 = (x_1081 | x_1082);
      let x_1084 : bool = u_xlatb51;
      let x_1085 : f32 = u_xlat49;
      u_xlat49 = select(x_1085, 1.0f, x_1084);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1088 : f32 = u_xlat49;
    u_xlat51 = (-(x_1088) + 1.0f);
    let x_1091 : f32 = u_xlat43;
    let x_1092 : f32 = u_xlat51;
    let x_1094 : f32 = u_xlat49;
    u_xlat49 = ((x_1091 * x_1092) + x_1094);
    let x_1097 : i32 = u_xlati46;
    u_xlati51 = (1i << bitcast<u32>((x_1097 & 31i)));
    let x_1101 : i32 = u_xlati51;
    let x_1104 : f32 = x_350.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1101) & bitcast<u32>(x_1104)));
    let x_1108 : i32 = u_xlati51;
    if ((x_1108 != 0i)) {
      let x_1112 : i32 = u_xlati46;
      let x_1114 : f32 = x_350.x_AdditionalLightsLightTypes[x_1112].el;
      u_xlati51 = i32(x_1114);
      let x_1117 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1117 != 0i));
      let x_1121 : i32 = u_xlati46;
      u_xlati11 = (x_1121 << bitcast<u32>(2i));
      let x_1123 : i32 = u_xlati52;
      if ((x_1123 != 0i)) {
        let x_1128 : vec3<f32> = vs_TEXCOORD7;
        let x_1130 : i32 = u_xlati11;
        let x_1133 : i32 = u_xlati11;
        let x_1137 : vec4<f32> = x_350.x_AdditionalLightsWorldToLights[((x_1130 + 1i) / 4i)][((x_1133 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1128.y, x_1128.y, x_1128.y) * vec3<f32>(x_1137.x, x_1137.y, x_1137.w));
        let x_1140 : i32 = u_xlati11;
        let x_1142 : i32 = u_xlati11;
        let x_1145 : vec4<f32> = x_350.x_AdditionalLightsWorldToLights[(x_1140 / 4i)][(x_1142 % 4i)];
        let x_1147 : vec3<f32> = vs_TEXCOORD7;
        let x_1150 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1145.x, x_1145.y, x_1145.w) * vec3<f32>(x_1147.x, x_1147.x, x_1147.x)) + x_1150);
        let x_1152 : i32 = u_xlati11;
        let x_1155 : i32 = u_xlati11;
        let x_1159 : vec4<f32> = x_350.x_AdditionalLightsWorldToLights[((x_1152 + 2i) / 4i)][((x_1155 + 2i) % 4i)];
        let x_1161 : vec3<f32> = vs_TEXCOORD7;
        let x_1164 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1159.x, x_1159.y, x_1159.w) * vec3<f32>(x_1161.z, x_1161.z, x_1161.z)) + x_1164);
        let x_1166 : vec3<f32> = u_xlat25;
        let x_1167 : i32 = u_xlati11;
        let x_1170 : i32 = u_xlati11;
        let x_1174 : vec4<f32> = x_350.x_AdditionalLightsWorldToLights[((x_1167 + 3i) / 4i)][((x_1170 + 3i) % 4i)];
        u_xlat25 = (x_1166 + vec3<f32>(x_1174.x, x_1174.y, x_1174.w));
        let x_1177 : vec3<f32> = u_xlat25;
        let x_1179 : vec3<f32> = u_xlat25;
        let x_1181 : vec2<f32> = (vec2<f32>(x_1177.x, x_1177.y) / vec2<f32>(x_1179.z, x_1179.z));
        let x_1182 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1181.x, x_1181.y, x_1182.z);
        let x_1184 : vec3<f32> = u_xlat25;
        let x_1187 : vec2<f32> = ((vec2<f32>(x_1184.x, x_1184.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1188 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1187.x, x_1187.y, x_1188.z);
        let x_1190 : vec3<f32> = u_xlat25;
        let x_1194 : vec2<f32> = clamp(vec2<f32>(x_1190.x, x_1190.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1195 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1194.x, x_1194.y, x_1195.z);
        let x_1197 : i32 = u_xlati46;
        let x_1199 : vec4<f32> = x_350.x_AdditionalLightsCookieAtlasUVRects[x_1197];
        let x_1201 : vec3<f32> = u_xlat25;
        let x_1204 : i32 = u_xlati46;
        let x_1206 : vec4<f32> = x_350.x_AdditionalLightsCookieAtlasUVRects[x_1204];
        let x_1208 : vec2<f32> = ((vec2<f32>(x_1199.x, x_1199.y) * vec2<f32>(x_1201.x, x_1201.y)) + vec2<f32>(x_1206.z, x_1206.w));
        let x_1209 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1208.x, x_1208.y, x_1209.z);
      } else {
        let x_1212 : i32 = u_xlati51;
        u_xlatb51 = (x_1212 == 1i);
        let x_1214 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1214);
        let x_1216 : i32 = u_xlati51;
        if ((x_1216 != 0i)) {
          let x_1221 : vec3<f32> = vs_TEXCOORD7;
          let x_1223 : i32 = u_xlati11;
          let x_1226 : i32 = u_xlati11;
          let x_1230 : vec4<f32> = x_350.x_AdditionalLightsWorldToLights[((x_1223 + 1i) / 4i)][((x_1226 + 1i) % 4i)];
          let x_1232 : vec2<f32> = (vec2<f32>(x_1221.y, x_1221.y) * vec2<f32>(x_1230.x, x_1230.y));
          let x_1233 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1232.x, x_1232.y, x_1233.z, x_1233.w);
          let x_1235 : i32 = u_xlati11;
          let x_1237 : i32 = u_xlati11;
          let x_1240 : vec4<f32> = x_350.x_AdditionalLightsWorldToLights[(x_1235 / 4i)][(x_1237 % 4i)];
          let x_1242 : vec3<f32> = vs_TEXCOORD7;
          let x_1245 : vec4<f32> = u_xlat12;
          let x_1247 : vec2<f32> = ((vec2<f32>(x_1240.x, x_1240.y) * vec2<f32>(x_1242.x, x_1242.x)) + vec2<f32>(x_1245.x, x_1245.y));
          let x_1248 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1247.x, x_1247.y, x_1248.z, x_1248.w);
          let x_1250 : i32 = u_xlati11;
          let x_1253 : i32 = u_xlati11;
          let x_1257 : vec4<f32> = x_350.x_AdditionalLightsWorldToLights[((x_1250 + 2i) / 4i)][((x_1253 + 2i) % 4i)];
          let x_1259 : vec3<f32> = vs_TEXCOORD7;
          let x_1262 : vec4<f32> = u_xlat12;
          let x_1264 : vec2<f32> = ((vec2<f32>(x_1257.x, x_1257.y) * vec2<f32>(x_1259.z, x_1259.z)) + vec2<f32>(x_1262.x, x_1262.y));
          let x_1265 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1264.x, x_1264.y, x_1265.z, x_1265.w);
          let x_1267 : vec4<f32> = u_xlat12;
          let x_1269 : i32 = u_xlati11;
          let x_1272 : i32 = u_xlati11;
          let x_1276 : vec4<f32> = x_350.x_AdditionalLightsWorldToLights[((x_1269 + 3i) / 4i)][((x_1272 + 3i) % 4i)];
          let x_1278 : vec2<f32> = (vec2<f32>(x_1267.x, x_1267.y) + vec2<f32>(x_1276.x, x_1276.y));
          let x_1279 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1278.x, x_1278.y, x_1279.z, x_1279.w);
          let x_1281 : vec4<f32> = u_xlat12;
          let x_1284 : vec2<f32> = ((vec2<f32>(x_1281.x, x_1281.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1285 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1284.x, x_1284.y, x_1285.z, x_1285.w);
          let x_1287 : vec4<f32> = u_xlat12;
          let x_1289 : vec2<f32> = fract(vec2<f32>(x_1287.x, x_1287.y));
          let x_1290 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
          let x_1292 : i32 = u_xlati46;
          let x_1294 : vec4<f32> = x_350.x_AdditionalLightsCookieAtlasUVRects[x_1292];
          let x_1296 : vec4<f32> = u_xlat12;
          let x_1299 : i32 = u_xlati46;
          let x_1301 : vec4<f32> = x_350.x_AdditionalLightsCookieAtlasUVRects[x_1299];
          let x_1303 : vec2<f32> = ((vec2<f32>(x_1294.x, x_1294.y) * vec2<f32>(x_1296.x, x_1296.y)) + vec2<f32>(x_1301.z, x_1301.w));
          let x_1304 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1303.x, x_1303.y, x_1304.z);
        } else {
          let x_1307 : vec3<f32> = vs_TEXCOORD7;
          let x_1309 : i32 = u_xlati11;
          let x_1312 : i32 = u_xlati11;
          let x_1316 : vec4<f32> = x_350.x_AdditionalLightsWorldToLights[((x_1309 + 1i) / 4i)][((x_1312 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1307.y, x_1307.y, x_1307.y, x_1307.y) * x_1316);
          let x_1318 : i32 = u_xlati11;
          let x_1320 : i32 = u_xlati11;
          let x_1323 : vec4<f32> = x_350.x_AdditionalLightsWorldToLights[(x_1318 / 4i)][(x_1320 % 4i)];
          let x_1324 : vec3<f32> = vs_TEXCOORD7;
          let x_1327 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1323 * vec4<f32>(x_1324.x, x_1324.x, x_1324.x, x_1324.x)) + x_1327);
          let x_1329 : i32 = u_xlati11;
          let x_1332 : i32 = u_xlati11;
          let x_1336 : vec4<f32> = x_350.x_AdditionalLightsWorldToLights[((x_1329 + 2i) / 4i)][((x_1332 + 2i) % 4i)];
          let x_1337 : vec3<f32> = vs_TEXCOORD7;
          let x_1340 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1336 * vec4<f32>(x_1337.z, x_1337.z, x_1337.z, x_1337.z)) + x_1340);
          let x_1342 : vec4<f32> = u_xlat12;
          let x_1343 : i32 = u_xlati11;
          let x_1346 : i32 = u_xlati11;
          let x_1350 : vec4<f32> = x_350.x_AdditionalLightsWorldToLights[((x_1343 + 3i) / 4i)][((x_1346 + 3i) % 4i)];
          u_xlat12 = (x_1342 + x_1350);
          let x_1352 : vec4<f32> = u_xlat12;
          let x_1354 : vec4<f32> = u_xlat12;
          let x_1356 : vec3<f32> = (vec3<f32>(x_1352.x, x_1352.y, x_1352.z) / vec3<f32>(x_1354.w, x_1354.w, x_1354.w));
          let x_1357 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1357.w);
          let x_1359 : vec4<f32> = u_xlat12;
          let x_1361 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1359.x, x_1359.y, x_1359.z), vec3<f32>(x_1361.x, x_1361.y, x_1361.z));
          let x_1364 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1364);
          let x_1366 : f32 = u_xlat51;
          let x_1368 : vec4<f32> = u_xlat12;
          let x_1370 : vec3<f32> = (vec3<f32>(x_1366, x_1366, x_1366) * vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
          let x_1371 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1371.w);
          let x_1373 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1373.x, x_1373.y, x_1373.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1378 : f32 = u_xlat51;
          u_xlat51 = max(x_1378, 0.00000099999999747524f);
          let x_1381 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1381);
          let x_1384 : f32 = u_xlat51;
          let x_1386 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1384, x_1384, x_1384) * vec3<f32>(x_1386.z, x_1386.x, x_1386.y));
          let x_1390 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1390);
          let x_1394 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1394, 0.0f, 1.0f);
          let x_1397 : vec3<f32> = u_xlat13;
          let x_1399 : vec4<bool> = (vec4<f32>(x_1397.y, x_1397.y, x_1397.y, x_1397.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1400 : vec2<bool> = vec2<bool>(x_1399.x, x_1399.w);
          let x_1401 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1400.x, x_1401.y, x_1401.z, x_1400.y);
          let x_1404 : bool = u_xlatb11.x;
          if (x_1404) {
            let x_1409 : f32 = u_xlat13.x;
            x_1405 = x_1409;
          } else {
            let x_1412 : f32 = u_xlat13.x;
            x_1405 = -(x_1412);
          }
          let x_1414 : f32 = x_1405;
          u_xlat11.x = x_1414;
          let x_1417 : bool = u_xlatb11.w;
          if (x_1417) {
            let x_1422 : f32 = u_xlat13.x;
            x_1418 = x_1422;
          } else {
            let x_1425 : f32 = u_xlat13.x;
            x_1418 = -(x_1425);
          }
          let x_1427 : f32 = x_1418;
          u_xlat11.w = x_1427;
          let x_1429 : vec4<f32> = u_xlat12;
          let x_1431 : f32 = u_xlat51;
          let x_1434 : vec4<f32> = u_xlat11;
          let x_1436 : vec2<f32> = ((vec2<f32>(x_1429.x, x_1429.y) * vec2<f32>(x_1431, x_1431)) + vec2<f32>(x_1434.x, x_1434.w));
          let x_1437 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1436.x, x_1437.y, x_1437.z, x_1436.y);
          let x_1439 : vec4<f32> = u_xlat11;
          let x_1442 : vec2<f32> = ((vec2<f32>(x_1439.x, x_1439.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1443 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1442.x, x_1443.y, x_1443.z, x_1442.y);
          let x_1445 : vec4<f32> = u_xlat11;
          let x_1449 : vec2<f32> = clamp(vec2<f32>(x_1445.x, x_1445.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1450 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1449.x, x_1450.y, x_1450.z, x_1449.y);
          let x_1452 : i32 = u_xlati46;
          let x_1454 : vec4<f32> = x_350.x_AdditionalLightsCookieAtlasUVRects[x_1452];
          let x_1456 : vec4<f32> = u_xlat11;
          let x_1459 : i32 = u_xlati46;
          let x_1461 : vec4<f32> = x_350.x_AdditionalLightsCookieAtlasUVRects[x_1459];
          let x_1463 : vec2<f32> = ((vec2<f32>(x_1454.x, x_1454.y) * vec2<f32>(x_1456.x, x_1456.w)) + vec2<f32>(x_1461.z, x_1461.w));
          let x_1464 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1463.x, x_1463.y, x_1464.z);
        }
      }
      let x_1471 : vec3<f32> = u_xlat25;
      let x_1473 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1471.x, x_1471.y), 0.0f);
      u_xlat11 = x_1473;
      let x_1475 : bool = u_xlatb18.y;
      if (x_1475) {
        let x_1480 : f32 = u_xlat11.w;
        x_1476 = x_1480;
      } else {
        let x_1483 : f32 = u_xlat11.x;
        x_1476 = x_1483;
      }
      let x_1484 : f32 = x_1476;
      u_xlat51 = x_1484;
      let x_1486 : bool = u_xlatb18.x;
      if (x_1486) {
        let x_1490 : vec4<f32> = u_xlat11;
        x_1487 = vec3<f32>(x_1490.x, x_1490.y, x_1490.z);
      } else {
        let x_1493 : f32 = u_xlat51;
        x_1487 = vec3<f32>(x_1493, x_1493, x_1493);
      }
      let x_1495 : vec3<f32> = x_1487;
      let x_1496 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1502 : vec4<f32> = u_xlat11;
    let x_1504 : i32 = u_xlati46;
    let x_1506 : vec4<f32> = x_832.x_AdditionalLightsColor[x_1504];
    let x_1508 : vec3<f32> = (vec3<f32>(x_1502.x, x_1502.y, x_1502.z) * vec3<f32>(x_1506.x, x_1506.y, x_1506.z));
    let x_1509 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
    let x_1511 : f32 = u_xlat47;
    let x_1512 : f32 = u_xlat49;
    u_xlat46 = (x_1511 * x_1512);
    let x_1514 : vec4<f32> = u_xlat2;
    let x_1516 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1514.x, x_1514.y, x_1514.z), x_1516);
    let x_1518 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1518, 0.0f, 1.0f);
    let x_1520 : f32 = u_xlat46;
    let x_1521 : f32 = u_xlat47;
    u_xlat46 = (x_1520 * x_1521);
    let x_1523 : f32 = u_xlat46;
    let x_1525 : vec4<f32> = u_xlat11;
    let x_1527 : vec3<f32> = (vec3<f32>(x_1523, x_1523, x_1523) * vec3<f32>(x_1525.x, x_1525.y, x_1525.z));
    let x_1528 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
    let x_1530 : vec3<f32> = u_xlat9;
    let x_1531 : f32 = u_xlat48;
    let x_1534 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1530 * vec3<f32>(x_1531, x_1531, x_1531)) + x_1534);
    let x_1536 : vec3<f32> = u_xlat9;
    let x_1537 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1536, x_1537);
    let x_1539 : f32 = u_xlat46;
    u_xlat46 = max(x_1539, 1.17549435e-38f);
    let x_1541 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1541);
    let x_1543 : f32 = u_xlat46;
    let x_1545 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1543, x_1543, x_1543) * x_1545);
    let x_1547 : vec4<f32> = u_xlat2;
    let x_1549 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1547.x, x_1547.y, x_1547.z), x_1549);
    let x_1551 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1551, 0.0f, 1.0f);
    let x_1553 : vec3<f32> = u_xlat10;
    let x_1554 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1553, x_1554);
    let x_1556 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1556, 0.0f, 1.0f);
    let x_1558 : f32 = u_xlat46;
    let x_1559 : f32 = u_xlat46;
    u_xlat46 = (x_1558 * x_1559);
    let x_1561 : f32 = u_xlat46;
    let x_1563 : f32 = u_xlat8.x;
    u_xlat46 = ((x_1561 * x_1563) + 1.00001001358032226562f);
    let x_1566 : f32 = u_xlat47;
    let x_1567 : f32 = u_xlat47;
    u_xlat47 = (x_1566 * x_1567);
    let x_1569 : f32 = u_xlat46;
    let x_1570 : f32 = u_xlat46;
    u_xlat46 = (x_1569 * x_1570);
    let x_1572 : f32 = u_xlat47;
    u_xlat47 = max(x_1572, 0.10000000149011611938f);
    let x_1574 : f32 = u_xlat46;
    let x_1575 : f32 = u_xlat47;
    u_xlat46 = (x_1574 * x_1575);
    let x_1578 : f32 = u_xlat3.x;
    let x_1579 : f32 = u_xlat46;
    u_xlat46 = (x_1578 * x_1579);
    let x_1582 : f32 = u_xlat4.x;
    let x_1583 : f32 = u_xlat46;
    u_xlat46 = (x_1582 / x_1583);
    let x_1585 : vec4<f32> = u_xlat0;
    let x_1587 : f32 = u_xlat46;
    let x_1590 : vec3<f32> = u_xlat17;
    u_xlat9 = ((vec3<f32>(x_1585.x, x_1585.y, x_1585.z) * vec3<f32>(x_1587, x_1587, x_1587)) + x_1590);
    let x_1592 : vec3<f32> = u_xlat9;
    let x_1593 : vec4<f32> = u_xlat11;
    let x_1596 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1592 * vec3<f32>(x_1593.x, x_1593.y, x_1593.z)) + x_1596);

    continuing {
      let x_1598 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1598 + bitcast<u32>(1i));
    }
  }
  let x_1600 : vec4<f32> = u_xlat7;
  let x_1602 : vec4<f32> = u_xlat5;
  let x_1605 : vec3<f32> = u_xlat1;
  let x_1606 : vec3<f32> = ((vec3<f32>(x_1600.x, x_1600.y, x_1600.z) * vec3<f32>(x_1602.x, x_1602.y, x_1602.z)) + x_1605);
  let x_1607 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1606.x, x_1606.y, x_1606.z, x_1607.w);
  let x_1611 : vec3<f32> = u_xlat22;
  let x_1612 : vec4<f32> = u_xlat0;
  let x_1614 : vec3<f32> = (x_1611 + vec3<f32>(x_1612.x, x_1612.y, x_1612.z));
  let x_1615 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1614.x, x_1614.y, x_1614.z, x_1615.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


