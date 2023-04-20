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

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlat16 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_150 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat49 : f32;

@group(1) @binding(3) var<uniform> x_321 : LightShadows;

var<private> u_xlatb49 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlat20 : f32;

@group(1) @binding(4) var<uniform> x_387 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat50 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat51 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatu45 : u32;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatu49 : u32;

var<private> u_xlati50 : i32;

var<private> u_xlati49 : i32;

var<private> u_xlat10 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_865 : AdditionalLights;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlati52 : i32;

var<private> u_xlatb38 : bool;

var<private> u_xlatb12 : vec4<bool>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat38 : vec2<f32>;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb53 : bool;

var<private> u_xlati38 : i32;

var<private> u_xlati53 : i32;

var<private> u_xlati54 : i32;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb42 : vec2<bool>;

var<private> u_xlat42 : vec2<f32>;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu48 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_476 : f32;
  var x_487 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_997 : f32;
  var x_1008 : f32;
  var txVec1 : vec3<f32>;
  var x_1446 : f32;
  var x_1459 : f32;
  var x_1507 : f32;
  var x_1519 : vec3<f32>;
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
  let x_74 : vec4<f32> = vs_TEXCOORD0;
  let x_77 : f32 = x_29.x_GlobalMipBias.x;
  let x_78 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_74.x, x_74.y), x_77);
  u_xlat1.x = x_78.x;
  let x_83 : vec4<f32> = vs_TEXCOORD3;
  let x_85 : vec4<f32> = vs_TEXCOORD3;
  u_xlat16 = dot(vec3<f32>(x_83.x, x_83.y, x_83.z), vec3<f32>(x_85.x, x_85.y, x_85.z));
  let x_88 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_88);
  let x_91 : f32 = u_xlat16;
  let x_93 : vec4<f32> = vs_TEXCOORD3;
  let x_95 : vec3<f32> = (vec3<f32>(x_91, x_91, x_91) * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_96 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_103 : f32 = vs_TEXCOORD7.y;
  let x_107 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat16 = (x_103 * x_107);
  let x_110 : f32 = x_29.unity_MatrixV[0i].z;
  let x_112 : f32 = vs_TEXCOORD7.x;
  let x_114 : f32 = u_xlat16;
  u_xlat16 = ((x_110 * x_112) + x_114);
  let x_118 : f32 = x_29.unity_MatrixV[2i].z;
  let x_120 : f32 = vs_TEXCOORD7.z;
  let x_122 : f32 = u_xlat16;
  u_xlat16 = ((x_118 * x_120) + x_122);
  let x_124 : f32 = u_xlat16;
  let x_127 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat16 = (x_124 + x_127);
  let x_129 : f32 = u_xlat16;
  let x_133 : f32 = x_29.x_ProjectionParams.y;
  u_xlat16 = (-(x_129) + -(x_133));
  let x_136 : f32 = u_xlat16;
  u_xlat16 = max(x_136, 0.0f);
  let x_138 : f32 = u_xlat16;
  let x_141 : f32 = x_29.unity_FogParams.x;
  u_xlat16 = (x_138 * x_141);
  u_xlat2.w = 1.0f;
  let x_154 : vec4<f32> = x_150.unity_SHAr;
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_154, x_155);
  let x_160 : vec4<f32> = x_150.unity_SHAg;
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_160, x_161);
  let x_166 : vec4<f32> = x_150.unity_SHAb;
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_166, x_167);
  let x_171 : vec4<f32> = u_xlat2;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_171.y, x_171.z, x_171.z, x_171.x) * vec4<f32>(x_173.x, x_173.y, x_173.z, x_173.z));
  let x_179 : vec4<f32> = x_150.unity_SHBr;
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_150.unity_SHBg;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_150.unity_SHBb;
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_191, x_192);
  let x_197 : f32 = u_xlat2.y;
  let x_199 : f32 = u_xlat2.y;
  u_xlat31 = (x_197 * x_199);
  let x_202 : f32 = u_xlat2.x;
  let x_204 : f32 = u_xlat2.x;
  let x_206 : f32 = u_xlat31;
  u_xlat31 = ((x_202 * x_204) + -(x_206));
  let x_211 : vec4<f32> = x_150.unity_SHC;
  let x_213 : f32 = u_xlat31;
  let x_216 : vec4<f32> = u_xlat5;
  let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213, x_213, x_213)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec3<f32> = u_xlat3;
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_221 + vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_225, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_229 : f32 = u_xlat1.x;
  u_xlat31 = ((-(x_229) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_235 : f32 = u_xlat31;
  u_xlat46 = (-(x_235) + 1.0f);
  let x_238 : vec4<f32> = u_xlat0;
  let x_240 : f32 = u_xlat31;
  let x_242 : vec3<f32> = (vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240, x_240, x_240));
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat0;
  let x_249 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec3<f32> = u_xlat1;
  let x_254 : vec4<f32> = u_xlat0;
  let x_259 : vec3<f32> = ((vec3<f32>(x_252.x, x_252.x, x_252.x) * vec3<f32>(x_254.x, x_254.y, x_254.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_260 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_263 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_263) + 1.0f);
  let x_268 : f32 = u_xlat1.x;
  let x_270 : f32 = u_xlat1.x;
  u_xlat31 = (x_268 * x_270);
  let x_272 : f32 = u_xlat31;
  u_xlat31 = max(x_272, 0.0078125f);
  let x_276 : f32 = u_xlat31;
  let x_277 : f32 = u_xlat31;
  u_xlat47 = (x_276 * x_277);
  let x_281 : f32 = u_xlat0.w;
  let x_282 : f32 = u_xlat46;
  u_xlat45 = (x_281 + x_282);
  let x_284 : f32 = u_xlat45;
  u_xlat45 = clamp(x_284, 0.0f, 1.0f);
  let x_286 : f32 = u_xlat31;
  u_xlat46 = ((x_286 * 4.0f) + 2.0f);
  let x_294 : vec4<f32> = vs_TEXCOORD8;
  let x_295 : vec2<f32> = vec2<f32>(x_294.x, x_294.y);
  let x_297 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_295.x, x_295.y, x_297);
  let x_310 : vec3<f32> = txVec0;
  let x_312 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_310.xy, x_310.z);
  u_xlat48 = x_312;
  let x_323 : f32 = x_321.x_MainLightShadowParams.x;
  u_xlat49 = (-(x_323) + 1.0f);
  let x_326 : f32 = u_xlat48;
  let x_328 : f32 = x_321.x_MainLightShadowParams.x;
  let x_330 : f32 = u_xlat49;
  u_xlat48 = ((x_326 * x_328) + x_330);
  let x_334 : f32 = vs_TEXCOORD8.z;
  u_xlatb49 = (0.0f >= x_334);
  let x_338 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (x_338 >= 1.0f);
  let x_340 : bool = u_xlatb49;
  let x_341 : bool = u_xlatb5;
  u_xlatb49 = (x_340 | x_341);
  let x_343 : bool = u_xlatb49;
  let x_344 : f32 = u_xlat48;
  u_xlat48 = select(x_344, 1.0f, x_343);
  let x_346 : vec3<f32> = vs_TEXCOORD7;
  let x_350 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_352 : vec3<f32> = (x_346 + -(x_350));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat5;
  let x_357 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_355.x, x_355.y, x_355.z), vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : f32 = u_xlat49;
  let x_362 : f32 = x_321.x_MainLightShadowParams.z;
  let x_365 : f32 = x_321.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_360 * x_362) + x_365);
  let x_369 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_369, 0.0f, 1.0f);
  let x_373 : f32 = u_xlat48;
  u_xlat20 = (-(x_373) + 1.0f);
  let x_377 : f32 = u_xlat5.x;
  let x_378 : f32 = u_xlat20;
  let x_380 : f32 = u_xlat48;
  u_xlat48 = ((x_377 * x_378) + x_380);
  let x_389 : f32 = x_387.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_389 == -1.0f));
  let x_392 : bool = u_xlatb5;
  if (x_392) {
    let x_395 : vec3<f32> = vs_TEXCOORD7;
    let x_398 : vec4<f32> = x_387.x_MainLightWorldToLight[1i];
    let x_400 : vec2<f32> = (vec2<f32>(x_395.y, x_395.y) * vec2<f32>(x_398.x, x_398.y));
    let x_401 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
    let x_404 : vec4<f32> = x_387.x_MainLightWorldToLight[0i];
    let x_406 : vec3<f32> = vs_TEXCOORD7;
    let x_409 : vec4<f32> = u_xlat5;
    let x_411 : vec2<f32> = ((vec2<f32>(x_404.x, x_404.y) * vec2<f32>(x_406.x, x_406.x)) + vec2<f32>(x_409.x, x_409.y));
    let x_412 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
    let x_415 : vec4<f32> = x_387.x_MainLightWorldToLight[2i];
    let x_417 : vec3<f32> = vs_TEXCOORD7;
    let x_420 : vec4<f32> = u_xlat5;
    let x_422 : vec2<f32> = ((vec2<f32>(x_415.x, x_415.y) * vec2<f32>(x_417.z, x_417.z)) + vec2<f32>(x_420.x, x_420.y));
    let x_423 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_423.w);
    let x_425 : vec4<f32> = u_xlat5;
    let x_428 : vec4<f32> = x_387.x_MainLightWorldToLight[3i];
    let x_430 : vec2<f32> = (vec2<f32>(x_425.x, x_425.y) + vec2<f32>(x_428.x, x_428.y));
    let x_431 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
    let x_433 : vec4<f32> = u_xlat5;
    let x_438 : vec2<f32> = ((vec2<f32>(x_433.x, x_433.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_439 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
    let x_446 : vec4<f32> = u_xlat5;
    let x_449 : f32 = x_29.x_GlobalMipBias.x;
    let x_450 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_446.x, x_446.y), x_449);
    u_xlat5 = x_450;
    let x_455 : f32 = x_387.x_MainLightCookieTextureFormat;
    let x_457 : f32 = x_387.x_MainLightCookieTextureFormat;
    let x_459 : f32 = x_387.x_MainLightCookieTextureFormat;
    let x_461 : f32 = x_387.x_MainLightCookieTextureFormat;
    let x_462 : vec4<f32> = vec4<f32>(x_455, x_457, x_459, x_461);
    let x_470 : vec4<bool> = (vec4<f32>(x_462.x, x_462.y, x_462.z, x_462.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_470.x, x_470.y);
    let x_474 : bool = u_xlatb6.y;
    if (x_474) {
      let x_480 : f32 = u_xlat5.w;
      x_476 = x_480;
    } else {
      let x_483 : f32 = u_xlat5.x;
      x_476 = x_483;
    }
    let x_484 : f32 = x_476;
    u_xlat50 = x_484;
    let x_486 : bool = u_xlatb6.x;
    if (x_486) {
      let x_490 : vec4<f32> = u_xlat5;
      x_487 = vec3<f32>(x_490.x, x_490.y, x_490.z);
    } else {
      let x_493 : f32 = u_xlat50;
      x_487 = vec3<f32>(x_493, x_493, x_493);
    }
    let x_495 : vec3<f32> = x_487;
    let x_496 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_502 : vec4<f32> = u_xlat5;
  let x_505 : vec4<f32> = x_29.x_MainLightColor;
  let x_507 : vec3<f32> = (vec3<f32>(x_502.x, x_502.y, x_502.z) * vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_512 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_512;
  let x_516 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_516;
  let x_520 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_520;
  let x_522 : vec3<f32> = u_xlat6;
  let x_524 : vec4<f32> = u_xlat2;
  u_xlat50 = dot(-(x_522), vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : f32 = u_xlat50;
  let x_528 : f32 = u_xlat50;
  u_xlat50 = (x_527 + x_528);
  let x_531 : vec4<f32> = u_xlat2;
  let x_533 : f32 = u_xlat50;
  let x_537 : vec3<f32> = u_xlat6;
  let x_539 : vec3<f32> = ((vec3<f32>(x_531.x, x_531.y, x_531.z) * -(vec3<f32>(x_533, x_533, x_533))) + -(x_537));
  let x_540 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec4<f32> = u_xlat2;
  let x_544 : vec3<f32> = u_xlat6;
  u_xlat50 = dot(vec3<f32>(x_542.x, x_542.y, x_542.z), x_544);
  let x_546 : f32 = u_xlat50;
  u_xlat50 = clamp(x_546, 0.0f, 1.0f);
  let x_548 : f32 = u_xlat50;
  u_xlat50 = (-(x_548) + 1.0f);
  let x_551 : f32 = u_xlat50;
  let x_552 : f32 = u_xlat50;
  u_xlat50 = (x_551 * x_552);
  let x_554 : f32 = u_xlat50;
  let x_555 : f32 = u_xlat50;
  u_xlat50 = (x_554 * x_555);
  let x_559 : f32 = u_xlat1.x;
  u_xlat51 = ((-(x_559) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_566 : f32 = u_xlat1.x;
  let x_567 : f32 = u_xlat51;
  u_xlat1.x = (x_566 * x_567);
  let x_571 : f32 = u_xlat1.x;
  u_xlat1.x = (x_571 * 6.0f);
  let x_583 : vec4<f32> = u_xlat7;
  let x_586 : f32 = u_xlat1.x;
  let x_587 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_583.x, x_583.y, x_583.z), x_586);
  u_xlat7 = x_587;
  let x_589 : f32 = u_xlat7.w;
  u_xlat1.x = (x_589 + -1.0f);
  let x_593 : f32 = x_150.unity_SpecCube0_HDR.w;
  let x_595 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_593 * x_595) + 1.0f);
  let x_600 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_600, 0.0f);
  let x_604 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_604);
  let x_608 : f32 = u_xlat1.x;
  let x_610 : f32 = x_150.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_608 * x_610);
  let x_614 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_614);
  let x_618 : f32 = u_xlat1.x;
  let x_620 : f32 = x_150.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_618 * x_620);
  let x_623 : vec4<f32> = u_xlat7;
  let x_625 : vec3<f32> = u_xlat1;
  let x_627 : vec3<f32> = (vec3<f32>(x_623.x, x_623.y, x_623.z) * vec3<f32>(x_625.x, x_625.x, x_625.x));
  let x_628 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_630 : f32 = u_xlat31;
  let x_632 : f32 = u_xlat31;
  let x_636 : vec2<f32> = ((vec2<f32>(x_630, x_630) * vec2<f32>(x_632, x_632)) + vec2<f32>(-1.0f, 1.0f));
  let x_637 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_636.x, x_637.y, x_636.y);
  let x_640 : f32 = u_xlat1.z;
  u_xlat31 = (1.0f / x_640);
  let x_643 : vec4<f32> = u_xlat0;
  let x_646 : f32 = u_xlat45;
  u_xlat8 = (-(vec3<f32>(x_643.x, x_643.y, x_643.z)) + vec3<f32>(x_646, x_646, x_646));
  let x_649 : f32 = u_xlat50;
  let x_651 : vec3<f32> = u_xlat8;
  let x_653 : vec4<f32> = u_xlat0;
  u_xlat8 = ((vec3<f32>(x_649, x_649, x_649) * x_651) + vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : f32 = u_xlat31;
  let x_658 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_656, x_656, x_656) * x_658);
  let x_660 : vec4<f32> = u_xlat7;
  let x_662 : vec3<f32> = u_xlat8;
  let x_663 : vec3<f32> = (vec3<f32>(x_660.x, x_660.y, x_660.z) * x_662);
  let x_664 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec3<f32> = u_xlat3;
  let x_667 : vec4<f32> = u_xlat4;
  let x_670 : vec4<f32> = u_xlat7;
  u_xlat3 = ((x_666 * vec3<f32>(x_667.x, x_667.y, x_667.z)) + vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : f32 = u_xlat48;
  let x_675 : f32 = x_150.unity_LightData.z;
  u_xlat45 = (x_673 * x_675);
  let x_677 : vec4<f32> = u_xlat2;
  let x_680 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat31 = dot(vec3<f32>(x_677.x, x_677.y, x_677.z), vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : f32 = u_xlat31;
  u_xlat31 = clamp(x_683, 0.0f, 1.0f);
  let x_685 : f32 = u_xlat45;
  let x_686 : f32 = u_xlat31;
  u_xlat45 = (x_685 * x_686);
  let x_688 : f32 = u_xlat45;
  let x_690 : vec4<f32> = u_xlat5;
  let x_692 : vec3<f32> = (vec3<f32>(x_688, x_688, x_688) * vec3<f32>(x_690.x, x_690.y, x_690.z));
  let x_693 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec3<f32> = u_xlat6;
  let x_697 : vec4<f32> = x_29.x_MainLightPosition;
  let x_699 : vec3<f32> = (x_695 + vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat7;
  let x_704 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_702.x, x_702.y, x_702.z), vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : f32 = u_xlat45;
  u_xlat45 = max(x_707, 1.17549435e-38f);
  let x_710 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_710);
  let x_712 : f32 = u_xlat45;
  let x_714 : vec4<f32> = u_xlat7;
  let x_716 : vec3<f32> = (vec3<f32>(x_712, x_712, x_712) * vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : vec4<f32> = u_xlat2;
  let x_721 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_719.x, x_719.y, x_719.z), vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : f32 = u_xlat45;
  u_xlat45 = clamp(x_724, 0.0f, 1.0f);
  let x_727 : vec4<f32> = x_29.x_MainLightPosition;
  let x_729 : vec4<f32> = u_xlat7;
  u_xlat31 = dot(vec3<f32>(x_727.x, x_727.y, x_727.z), vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : f32 = u_xlat31;
  u_xlat31 = clamp(x_732, 0.0f, 1.0f);
  let x_734 : f32 = u_xlat45;
  let x_735 : f32 = u_xlat45;
  u_xlat45 = (x_734 * x_735);
  let x_737 : f32 = u_xlat45;
  let x_739 : f32 = u_xlat1.x;
  u_xlat45 = ((x_737 * x_739) + 1.00001001358032226562f);
  let x_743 : f32 = u_xlat31;
  let x_744 : f32 = u_xlat31;
  u_xlat31 = (x_743 * x_744);
  let x_746 : f32 = u_xlat45;
  let x_747 : f32 = u_xlat45;
  u_xlat45 = (x_746 * x_747);
  let x_749 : f32 = u_xlat31;
  u_xlat31 = max(x_749, 0.10000000149011611938f);
  let x_752 : f32 = u_xlat45;
  let x_753 : f32 = u_xlat31;
  u_xlat45 = (x_752 * x_753);
  let x_755 : f32 = u_xlat46;
  let x_756 : f32 = u_xlat45;
  u_xlat45 = (x_755 * x_756);
  let x_758 : f32 = u_xlat47;
  let x_759 : f32 = u_xlat45;
  u_xlat45 = (x_758 / x_759);
  let x_761 : vec4<f32> = u_xlat0;
  let x_763 : f32 = u_xlat45;
  let x_766 : vec4<f32> = u_xlat4;
  let x_768 : vec3<f32> = ((vec3<f32>(x_761.x, x_761.y, x_761.z) * vec3<f32>(x_763, x_763, x_763)) + vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_772 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_774 : f32 = x_150.unity_LightData.y;
  u_xlat45 = min(x_772, x_774);
  let x_778 : f32 = u_xlat45;
  u_xlatu45 = bitcast<u32>(i32(x_778));
  let x_781 : f32 = u_xlat49;
  let x_784 : f32 = x_321.x_AdditionalShadowFadeParams.x;
  let x_787 : f32 = x_321.x_AdditionalShadowFadeParams.y;
  u_xlat31 = ((x_781 * x_784) + x_787);
  let x_789 : f32 = u_xlat31;
  u_xlat31 = clamp(x_789, 0.0f, 1.0f);
  let x_793 : f32 = x_387.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_795 : f32 = x_387.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_797 : f32 = x_387.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_799 : f32 = x_387.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_800 : vec4<f32> = vec4<f32>(x_793, x_795, x_797, x_799);
  let x_806 : vec4<bool> = (vec4<f32>(x_800.x, x_800.y, x_800.z, x_800.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_806.x, x_806.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_819 : u32 = u_xlatu_loop_1;
    let x_820 : u32 = u_xlatu45;
    if ((x_819 < x_820)) {
    } else {
      break;
    }
    let x_823 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_823 >> 2u);
    let x_827 : u32 = u_xlatu_loop_1;
    u_xlati50 = bitcast<i32>((x_827 & 3u));
    let x_830 : u32 = u_xlatu49;
    let x_833 : vec4<f32> = x_150.unity_LightIndices[bitcast<i32>(x_830)];
    let x_843 : i32 = u_xlati50;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_848 : vec4<u32> = indexable[x_843];
    u_xlat49 = dot(x_833, bitcast<vec4<f32>>(x_848));
    let x_852 : f32 = u_xlat49;
    u_xlati49 = i32(x_852);
    let x_855 : vec3<f32> = vs_TEXCOORD7;
    let x_866 : i32 = u_xlati49;
    let x_868 : vec4<f32> = x_865.x_AdditionalLightsPosition[x_866];
    let x_871 : i32 = u_xlati49;
    let x_873 : vec4<f32> = x_865.x_AdditionalLightsPosition[x_871];
    u_xlat10 = ((-(x_855) * vec3<f32>(x_868.w, x_868.w, x_868.w)) + vec3<f32>(x_873.x, x_873.y, x_873.z));
    let x_876 : vec3<f32> = u_xlat10;
    let x_877 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(x_876, x_877);
    let x_879 : f32 = u_xlat50;
    u_xlat50 = max(x_879, 0.00006103515625f);
    let x_882 : f32 = u_xlat50;
    u_xlat51 = inverseSqrt(x_882);
    let x_885 : f32 = u_xlat51;
    let x_887 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_885, x_885, x_885) * x_887);
    let x_890 : f32 = u_xlat50;
    u_xlat52 = (1.0f / x_890);
    let x_892 : f32 = u_xlat50;
    let x_893 : i32 = u_xlati49;
    let x_895 : f32 = x_865.x_AdditionalLightsAttenuation[x_893].x;
    u_xlat50 = (x_892 * x_895);
    let x_897 : f32 = u_xlat50;
    let x_899 : f32 = u_xlat50;
    u_xlat50 = ((-(x_897) * x_899) + 1.0f);
    let x_902 : f32 = u_xlat50;
    u_xlat50 = max(x_902, 0.0f);
    let x_904 : f32 = u_xlat50;
    let x_905 : f32 = u_xlat50;
    u_xlat50 = (x_904 * x_905);
    let x_907 : f32 = u_xlat50;
    let x_908 : f32 = u_xlat52;
    u_xlat50 = (x_907 * x_908);
    let x_910 : i32 = u_xlati49;
    let x_912 : vec4<f32> = x_865.x_AdditionalLightsSpotDir[x_910];
    let x_914 : vec3<f32> = u_xlat11;
    u_xlat52 = dot(vec3<f32>(x_912.x, x_912.y, x_912.z), x_914);
    let x_916 : f32 = u_xlat52;
    let x_917 : i32 = u_xlati49;
    let x_919 : f32 = x_865.x_AdditionalLightsAttenuation[x_917].z;
    let x_921 : i32 = u_xlati49;
    let x_923 : f32 = x_865.x_AdditionalLightsAttenuation[x_921].w;
    u_xlat52 = ((x_916 * x_919) + x_923);
    let x_925 : f32 = u_xlat52;
    u_xlat52 = clamp(x_925, 0.0f, 1.0f);
    let x_927 : f32 = u_xlat52;
    let x_928 : f32 = u_xlat52;
    u_xlat52 = (x_927 * x_928);
    let x_930 : f32 = u_xlat50;
    let x_931 : f32 = u_xlat52;
    u_xlat50 = (x_930 * x_931);
    let x_935 : i32 = u_xlati49;
    let x_937 : f32 = x_321.x_AdditionalShadowParams[x_935].w;
    u_xlati52 = i32(x_937);
    let x_940 : i32 = u_xlati52;
    u_xlatb38 = (x_940 >= 0i);
    let x_942 : bool = u_xlatb38;
    if (x_942) {
      let x_946 : i32 = u_xlati49;
      let x_948 : f32 = x_321.x_AdditionalShadowParams[x_946].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_948, x_948, x_948, x_948))));
      let x_952 : bool = u_xlatb38;
      if (x_952) {
        let x_957 : vec3<f32> = u_xlat11;
        let x_960 : vec3<f32> = u_xlat11;
        let x_963 : vec4<bool> = (abs(vec4<f32>(x_957.z, x_957.z, x_957.y, x_957.z)) >= abs(vec4<f32>(x_960.x, x_960.y, x_960.x, x_960.x)));
        let x_965 : vec3<bool> = vec3<bool>(x_963.x, x_963.y, x_963.z);
        let x_966 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_965.x, x_965.y, x_965.z, x_966.w);
        let x_969 : bool = u_xlatb12.y;
        let x_971 : bool = u_xlatb12.x;
        u_xlatb38 = (x_969 & x_971);
        let x_973 : vec3<f32> = u_xlat11;
        let x_976 : vec4<bool> = (-(vec4<f32>(x_973.z, x_973.y, x_973.z, x_973.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_977 : vec3<bool> = vec3<bool>(x_976.x, x_976.y, x_976.w);
        let x_978 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_977.x, x_977.y, x_978.z, x_977.z);
        let x_982 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_982);
        let x_987 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_987);
        let x_993 : bool = u_xlatb12.w;
        u_xlat53 = select(0.0f, 1.0f, x_993);
        let x_996 : bool = u_xlatb12.z;
        if (x_996) {
          let x_1001 : f32 = u_xlat12.y;
          x_997 = x_1001;
        } else {
          let x_1003 : f32 = u_xlat53;
          x_997 = x_1003;
        }
        let x_1004 : f32 = x_997;
        u_xlat53 = x_1004;
        let x_1007 : bool = u_xlatb38;
        if (x_1007) {
          let x_1012 : f32 = u_xlat12.x;
          x_1008 = x_1012;
        } else {
          let x_1014 : f32 = u_xlat53;
          x_1008 = x_1014;
        }
        let x_1015 : f32 = x_1008;
        u_xlat38.x = x_1015;
        let x_1017 : i32 = u_xlati49;
        let x_1019 : f32 = x_321.x_AdditionalShadowParams[x_1017].w;
        u_xlat53 = trunc(x_1019);
        let x_1022 : f32 = u_xlat38.x;
        let x_1023 : f32 = u_xlat53;
        u_xlat38.x = (x_1022 + x_1023);
        let x_1027 : f32 = u_xlat38.x;
        u_xlati52 = i32(x_1027);
      }
      let x_1029 : i32 = u_xlati52;
      u_xlati52 = (x_1029 << bitcast<u32>(2i));
      let x_1031 : vec3<f32> = vs_TEXCOORD7;
      let x_1034 : i32 = u_xlati52;
      let x_1037 : i32 = u_xlati52;
      let x_1041 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[((x_1034 + 1i) / 4i)][((x_1037 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_1031.y, x_1031.y, x_1031.y, x_1031.y) * x_1041);
      let x_1043 : i32 = u_xlati52;
      let x_1045 : i32 = u_xlati52;
      let x_1048 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[(x_1043 / 4i)][(x_1045 % 4i)];
      let x_1049 : vec3<f32> = vs_TEXCOORD7;
      let x_1052 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_1048 * vec4<f32>(x_1049.x, x_1049.x, x_1049.x, x_1049.x)) + x_1052);
      let x_1054 : i32 = u_xlati52;
      let x_1057 : i32 = u_xlati52;
      let x_1061 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[((x_1054 + 2i) / 4i)][((x_1057 + 2i) % 4i)];
      let x_1062 : vec3<f32> = vs_TEXCOORD7;
      let x_1065 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_1061 * vec4<f32>(x_1062.z, x_1062.z, x_1062.z, x_1062.z)) + x_1065);
      let x_1067 : vec4<f32> = u_xlat12;
      let x_1068 : i32 = u_xlati52;
      let x_1071 : i32 = u_xlati52;
      let x_1075 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[((x_1068 + 3i) / 4i)][((x_1071 + 3i) % 4i)];
      u_xlat12 = (x_1067 + x_1075);
      let x_1077 : vec4<f32> = u_xlat12;
      let x_1079 : vec4<f32> = u_xlat12;
      let x_1081 : vec3<f32> = (vec3<f32>(x_1077.x, x_1077.y, x_1077.z) / vec3<f32>(x_1079.w, x_1079.w, x_1079.w));
      let x_1082 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
      let x_1085 : vec4<f32> = u_xlat12;
      let x_1086 : vec2<f32> = vec2<f32>(x_1085.x, x_1085.y);
      let x_1088 : f32 = u_xlat12.z;
      txVec1 = vec3<f32>(x_1086.x, x_1086.y, x_1088);
      let x_1096 : vec3<f32> = txVec1;
      let x_1098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1096.xy, x_1096.z);
      u_xlat52 = x_1098;
      let x_1099 : i32 = u_xlati49;
      let x_1101 : f32 = x_321.x_AdditionalShadowParams[x_1099].x;
      u_xlat38.x = (1.0f + -(x_1101));
      let x_1105 : f32 = u_xlat52;
      let x_1106 : i32 = u_xlati49;
      let x_1108 : f32 = x_321.x_AdditionalShadowParams[x_1106].x;
      let x_1111 : f32 = u_xlat38.x;
      u_xlat52 = ((x_1105 * x_1108) + x_1111);
      let x_1114 : f32 = u_xlat12.z;
      u_xlatb38 = (0.0f >= x_1114);
      let x_1118 : f32 = u_xlat12.z;
      u_xlatb53 = (x_1118 >= 1.0f);
      let x_1120 : bool = u_xlatb53;
      let x_1121 : bool = u_xlatb38;
      u_xlatb38 = (x_1120 | x_1121);
      let x_1123 : bool = u_xlatb38;
      let x_1124 : f32 = u_xlat52;
      u_xlat52 = select(x_1124, 1.0f, x_1123);
    } else {
      u_xlat52 = 1.0f;
    }
    let x_1127 : f32 = u_xlat52;
    u_xlat38.x = (-(x_1127) + 1.0f);
    let x_1131 : f32 = u_xlat31;
    let x_1133 : f32 = u_xlat38.x;
    let x_1135 : f32 = u_xlat52;
    u_xlat52 = ((x_1131 * x_1133) + x_1135);
    let x_1138 : i32 = u_xlati49;
    u_xlati38 = (1i << bitcast<u32>((x_1138 & 31i)));
    let x_1142 : i32 = u_xlati38;
    let x_1145 : f32 = x_387.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_1142) & bitcast<u32>(x_1145)));
    let x_1149 : i32 = u_xlati38;
    if ((x_1149 != 0i)) {
      let x_1153 : i32 = u_xlati49;
      let x_1155 : f32 = x_387.x_AdditionalLightsLightTypes[x_1153].el;
      u_xlati38 = i32(x_1155);
      let x_1158 : i32 = u_xlati38;
      u_xlati53 = select(1i, 0i, (x_1158 != 0i));
      let x_1162 : i32 = u_xlati49;
      u_xlati54 = (x_1162 << bitcast<u32>(2i));
      let x_1164 : i32 = u_xlati53;
      if ((x_1164 != 0i)) {
        let x_1168 : vec3<f32> = vs_TEXCOORD7;
        let x_1170 : i32 = u_xlati54;
        let x_1173 : i32 = u_xlati54;
        let x_1177 : vec4<f32> = x_387.x_AdditionalLightsWorldToLights[((x_1170 + 1i) / 4i)][((x_1173 + 1i) % 4i)];
        let x_1179 : vec3<f32> = (vec3<f32>(x_1168.y, x_1168.y, x_1168.y) * vec3<f32>(x_1177.x, x_1177.y, x_1177.w));
        let x_1180 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
        let x_1182 : i32 = u_xlati54;
        let x_1184 : i32 = u_xlati54;
        let x_1187 : vec4<f32> = x_387.x_AdditionalLightsWorldToLights[(x_1182 / 4i)][(x_1184 % 4i)];
        let x_1189 : vec3<f32> = vs_TEXCOORD7;
        let x_1192 : vec4<f32> = u_xlat12;
        let x_1194 : vec3<f32> = ((vec3<f32>(x_1187.x, x_1187.y, x_1187.w) * vec3<f32>(x_1189.x, x_1189.x, x_1189.x)) + vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
        let x_1195 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
        let x_1197 : i32 = u_xlati54;
        let x_1200 : i32 = u_xlati54;
        let x_1204 : vec4<f32> = x_387.x_AdditionalLightsWorldToLights[((x_1197 + 2i) / 4i)][((x_1200 + 2i) % 4i)];
        let x_1206 : vec3<f32> = vs_TEXCOORD7;
        let x_1209 : vec4<f32> = u_xlat12;
        let x_1211 : vec3<f32> = ((vec3<f32>(x_1204.x, x_1204.y, x_1204.w) * vec3<f32>(x_1206.z, x_1206.z, x_1206.z)) + vec3<f32>(x_1209.x, x_1209.y, x_1209.z));
        let x_1212 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1212.w);
        let x_1214 : vec4<f32> = u_xlat12;
        let x_1216 : i32 = u_xlati54;
        let x_1219 : i32 = u_xlati54;
        let x_1223 : vec4<f32> = x_387.x_AdditionalLightsWorldToLights[((x_1216 + 3i) / 4i)][((x_1219 + 3i) % 4i)];
        let x_1225 : vec3<f32> = (vec3<f32>(x_1214.x, x_1214.y, x_1214.z) + vec3<f32>(x_1223.x, x_1223.y, x_1223.w));
        let x_1226 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1226.w);
        let x_1228 : vec4<f32> = u_xlat12;
        let x_1230 : vec4<f32> = u_xlat12;
        let x_1232 : vec2<f32> = (vec2<f32>(x_1228.x, x_1228.y) / vec2<f32>(x_1230.z, x_1230.z));
        let x_1233 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1232.x, x_1232.y, x_1233.z, x_1233.w);
        let x_1235 : vec4<f32> = u_xlat12;
        let x_1238 : vec2<f32> = ((vec2<f32>(x_1235.x, x_1235.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1239 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1238.x, x_1238.y, x_1239.z, x_1239.w);
        let x_1241 : vec4<f32> = u_xlat12;
        let x_1245 : vec2<f32> = clamp(vec2<f32>(x_1241.x, x_1241.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1246 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
        let x_1248 : i32 = u_xlati49;
        let x_1250 : vec4<f32> = x_387.x_AdditionalLightsCookieAtlasUVRects[x_1248];
        let x_1252 : vec4<f32> = u_xlat12;
        let x_1255 : i32 = u_xlati49;
        let x_1257 : vec4<f32> = x_387.x_AdditionalLightsCookieAtlasUVRects[x_1255];
        let x_1259 : vec2<f32> = ((vec2<f32>(x_1250.x, x_1250.y) * vec2<f32>(x_1252.x, x_1252.y)) + vec2<f32>(x_1257.z, x_1257.w));
        let x_1260 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1259.x, x_1259.y, x_1260.z, x_1260.w);
      } else {
        let x_1263 : i32 = u_xlati38;
        u_xlatb38 = (x_1263 == 1i);
        let x_1265 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1265);
        let x_1267 : i32 = u_xlati38;
        if ((x_1267 != 0i)) {
          let x_1271 : vec3<f32> = vs_TEXCOORD7;
          let x_1273 : i32 = u_xlati54;
          let x_1276 : i32 = u_xlati54;
          let x_1280 : vec4<f32> = x_387.x_AdditionalLightsWorldToLights[((x_1273 + 1i) / 4i)][((x_1276 + 1i) % 4i)];
          u_xlat38 = (vec2<f32>(x_1271.y, x_1271.y) * vec2<f32>(x_1280.x, x_1280.y));
          let x_1283 : i32 = u_xlati54;
          let x_1285 : i32 = u_xlati54;
          let x_1288 : vec4<f32> = x_387.x_AdditionalLightsWorldToLights[(x_1283 / 4i)][(x_1285 % 4i)];
          let x_1290 : vec3<f32> = vs_TEXCOORD7;
          let x_1293 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1288.x, x_1288.y) * vec2<f32>(x_1290.x, x_1290.x)) + x_1293);
          let x_1295 : i32 = u_xlati54;
          let x_1298 : i32 = u_xlati54;
          let x_1302 : vec4<f32> = x_387.x_AdditionalLightsWorldToLights[((x_1295 + 2i) / 4i)][((x_1298 + 2i) % 4i)];
          let x_1304 : vec3<f32> = vs_TEXCOORD7;
          let x_1307 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1302.x, x_1302.y) * vec2<f32>(x_1304.z, x_1304.z)) + x_1307);
          let x_1309 : vec2<f32> = u_xlat38;
          let x_1310 : i32 = u_xlati54;
          let x_1313 : i32 = u_xlati54;
          let x_1317 : vec4<f32> = x_387.x_AdditionalLightsWorldToLights[((x_1310 + 3i) / 4i)][((x_1313 + 3i) % 4i)];
          u_xlat38 = (x_1309 + vec2<f32>(x_1317.x, x_1317.y));
          let x_1320 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1320 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1323 : vec2<f32> = u_xlat38;
          u_xlat38 = fract(x_1323);
          let x_1325 : i32 = u_xlati49;
          let x_1327 : vec4<f32> = x_387.x_AdditionalLightsCookieAtlasUVRects[x_1325];
          let x_1329 : vec2<f32> = u_xlat38;
          let x_1331 : i32 = u_xlati49;
          let x_1333 : vec4<f32> = x_387.x_AdditionalLightsCookieAtlasUVRects[x_1331];
          let x_1335 : vec2<f32> = ((vec2<f32>(x_1327.x, x_1327.y) * x_1329) + vec2<f32>(x_1333.z, x_1333.w));
          let x_1336 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1335.x, x_1335.y, x_1336.z, x_1336.w);
        } else {
          let x_1340 : vec3<f32> = vs_TEXCOORD7;
          let x_1342 : i32 = u_xlati54;
          let x_1345 : i32 = u_xlati54;
          let x_1349 : vec4<f32> = x_387.x_AdditionalLightsWorldToLights[((x_1342 + 1i) / 4i)][((x_1345 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1340.y, x_1340.y, x_1340.y, x_1340.y) * x_1349);
          let x_1351 : i32 = u_xlati54;
          let x_1353 : i32 = u_xlati54;
          let x_1356 : vec4<f32> = x_387.x_AdditionalLightsWorldToLights[(x_1351 / 4i)][(x_1353 % 4i)];
          let x_1357 : vec3<f32> = vs_TEXCOORD7;
          let x_1360 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1356 * vec4<f32>(x_1357.x, x_1357.x, x_1357.x, x_1357.x)) + x_1360);
          let x_1362 : i32 = u_xlati54;
          let x_1365 : i32 = u_xlati54;
          let x_1369 : vec4<f32> = x_387.x_AdditionalLightsWorldToLights[((x_1362 + 2i) / 4i)][((x_1365 + 2i) % 4i)];
          let x_1370 : vec3<f32> = vs_TEXCOORD7;
          let x_1373 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1369 * vec4<f32>(x_1370.z, x_1370.z, x_1370.z, x_1370.z)) + x_1373);
          let x_1375 : vec4<f32> = u_xlat13;
          let x_1376 : i32 = u_xlati54;
          let x_1379 : i32 = u_xlati54;
          let x_1383 : vec4<f32> = x_387.x_AdditionalLightsWorldToLights[((x_1376 + 3i) / 4i)][((x_1379 + 3i) % 4i)];
          u_xlat13 = (x_1375 + x_1383);
          let x_1385 : vec4<f32> = u_xlat13;
          let x_1387 : vec4<f32> = u_xlat13;
          let x_1389 : vec3<f32> = (vec3<f32>(x_1385.x, x_1385.y, x_1385.z) / vec3<f32>(x_1387.w, x_1387.w, x_1387.w));
          let x_1390 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1389.x, x_1389.y, x_1389.z, x_1390.w);
          let x_1392 : vec4<f32> = u_xlat13;
          let x_1394 : vec4<f32> = u_xlat13;
          u_xlat38.x = dot(vec3<f32>(x_1392.x, x_1392.y, x_1392.z), vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
          let x_1399 : f32 = u_xlat38.x;
          u_xlat38.x = inverseSqrt(x_1399);
          let x_1402 : vec2<f32> = u_xlat38;
          let x_1404 : vec4<f32> = u_xlat13;
          let x_1406 : vec3<f32> = (vec3<f32>(x_1402.x, x_1402.x, x_1402.x) * vec3<f32>(x_1404.x, x_1404.y, x_1404.z));
          let x_1407 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
          let x_1409 : vec4<f32> = u_xlat13;
          u_xlat38.x = dot(abs(vec3<f32>(x_1409.x, x_1409.y, x_1409.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1416 : f32 = u_xlat38.x;
          u_xlat38.x = max(x_1416, 0.00000099999999747524f);
          let x_1421 : f32 = u_xlat38.x;
          u_xlat38.x = (1.0f / x_1421);
          let x_1425 : vec2<f32> = u_xlat38;
          let x_1427 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1425.x, x_1425.x, x_1425.x) * vec3<f32>(x_1427.z, x_1427.x, x_1427.y));
          let x_1431 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1431);
          let x_1435 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1435, 0.0f, 1.0f);
          let x_1439 : vec3<f32> = u_xlat14;
          let x_1441 : vec4<bool> = (vec4<f32>(x_1439.y, x_1439.z, x_1439.y, x_1439.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb42 = vec2<bool>(x_1441.x, x_1441.y);
          let x_1445 : bool = u_xlatb42.x;
          if (x_1445) {
            let x_1450 : f32 = u_xlat14.x;
            x_1446 = x_1450;
          } else {
            let x_1453 : f32 = u_xlat14.x;
            x_1446 = -(x_1453);
          }
          let x_1455 : f32 = x_1446;
          u_xlat42.x = x_1455;
          let x_1458 : bool = u_xlatb42.y;
          if (x_1458) {
            let x_1463 : f32 = u_xlat14.x;
            x_1459 = x_1463;
          } else {
            let x_1466 : f32 = u_xlat14.x;
            x_1459 = -(x_1466);
          }
          let x_1468 : f32 = x_1459;
          u_xlat42.y = x_1468;
          let x_1470 : vec4<f32> = u_xlat13;
          let x_1472 : vec2<f32> = u_xlat38;
          let x_1475 : vec2<f32> = u_xlat42;
          u_xlat38 = ((vec2<f32>(x_1470.x, x_1470.y) * vec2<f32>(x_1472.x, x_1472.x)) + x_1475);
          let x_1477 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1477 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1480 : vec2<f32> = u_xlat38;
          u_xlat38 = clamp(x_1480, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1484 : i32 = u_xlati49;
          let x_1486 : vec4<f32> = x_387.x_AdditionalLightsCookieAtlasUVRects[x_1484];
          let x_1488 : vec2<f32> = u_xlat38;
          let x_1490 : i32 = u_xlati49;
          let x_1492 : vec4<f32> = x_387.x_AdditionalLightsCookieAtlasUVRects[x_1490];
          let x_1494 : vec2<f32> = ((vec2<f32>(x_1486.x, x_1486.y) * x_1488) + vec2<f32>(x_1492.z, x_1492.w));
          let x_1495 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1494.x, x_1494.y, x_1495.z, x_1495.w);
        }
      }
      let x_1502 : vec4<f32> = u_xlat12;
      let x_1504 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1502.x, x_1502.y), 0.0f);
      u_xlat12 = x_1504;
      let x_1506 : bool = u_xlatb8.y;
      if (x_1506) {
        let x_1511 : f32 = u_xlat12.w;
        x_1507 = x_1511;
      } else {
        let x_1514 : f32 = u_xlat12.x;
        x_1507 = x_1514;
      }
      let x_1515 : f32 = x_1507;
      u_xlat38.x = x_1515;
      let x_1518 : bool = u_xlatb8.x;
      if (x_1518) {
        let x_1522 : vec4<f32> = u_xlat12;
        x_1519 = vec3<f32>(x_1522.x, x_1522.y, x_1522.z);
      } else {
        let x_1525 : vec2<f32> = u_xlat38;
        x_1519 = vec3<f32>(x_1525.x, x_1525.x, x_1525.x);
      }
      let x_1527 : vec3<f32> = x_1519;
      let x_1528 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1534 : vec4<f32> = u_xlat12;
    let x_1536 : i32 = u_xlati49;
    let x_1538 : vec4<f32> = x_865.x_AdditionalLightsColor[x_1536];
    let x_1540 : vec3<f32> = (vec3<f32>(x_1534.x, x_1534.y, x_1534.z) * vec3<f32>(x_1538.x, x_1538.y, x_1538.z));
    let x_1541 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1540.x, x_1540.y, x_1540.z, x_1541.w);
    let x_1543 : f32 = u_xlat50;
    let x_1544 : f32 = u_xlat52;
    u_xlat49 = (x_1543 * x_1544);
    let x_1546 : vec4<f32> = u_xlat2;
    let x_1548 : vec3<f32> = u_xlat11;
    u_xlat50 = dot(vec3<f32>(x_1546.x, x_1546.y, x_1546.z), x_1548);
    let x_1550 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1550, 0.0f, 1.0f);
    let x_1552 : f32 = u_xlat49;
    let x_1553 : f32 = u_xlat50;
    u_xlat49 = (x_1552 * x_1553);
    let x_1555 : f32 = u_xlat49;
    let x_1557 : vec4<f32> = u_xlat12;
    let x_1559 : vec3<f32> = (vec3<f32>(x_1555, x_1555, x_1555) * vec3<f32>(x_1557.x, x_1557.y, x_1557.z));
    let x_1560 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1560.w);
    let x_1562 : vec3<f32> = u_xlat10;
    let x_1563 : f32 = u_xlat51;
    let x_1566 : vec3<f32> = u_xlat6;
    u_xlat10 = ((x_1562 * vec3<f32>(x_1563, x_1563, x_1563)) + x_1566);
    let x_1568 : vec3<f32> = u_xlat10;
    let x_1569 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1568, x_1569);
    let x_1571 : f32 = u_xlat49;
    u_xlat49 = max(x_1571, 1.17549435e-38f);
    let x_1573 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1573);
    let x_1575 : f32 = u_xlat49;
    let x_1577 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1575, x_1575, x_1575) * x_1577);
    let x_1579 : vec4<f32> = u_xlat2;
    let x_1581 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1579.x, x_1579.y, x_1579.z), x_1581);
    let x_1583 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1583, 0.0f, 1.0f);
    let x_1585 : vec3<f32> = u_xlat11;
    let x_1586 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(x_1585, x_1586);
    let x_1588 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1588, 0.0f, 1.0f);
    let x_1590 : f32 = u_xlat49;
    let x_1591 : f32 = u_xlat49;
    u_xlat49 = (x_1590 * x_1591);
    let x_1593 : f32 = u_xlat49;
    let x_1595 : f32 = u_xlat1.x;
    u_xlat49 = ((x_1593 * x_1595) + 1.00001001358032226562f);
    let x_1598 : f32 = u_xlat50;
    let x_1599 : f32 = u_xlat50;
    u_xlat50 = (x_1598 * x_1599);
    let x_1601 : f32 = u_xlat49;
    let x_1602 : f32 = u_xlat49;
    u_xlat49 = (x_1601 * x_1602);
    let x_1604 : f32 = u_xlat50;
    u_xlat50 = max(x_1604, 0.10000000149011611938f);
    let x_1606 : f32 = u_xlat49;
    let x_1607 : f32 = u_xlat50;
    u_xlat49 = (x_1606 * x_1607);
    let x_1609 : f32 = u_xlat46;
    let x_1610 : f32 = u_xlat49;
    u_xlat49 = (x_1609 * x_1610);
    let x_1612 : f32 = u_xlat47;
    let x_1613 : f32 = u_xlat49;
    u_xlat49 = (x_1612 / x_1613);
    let x_1615 : vec4<f32> = u_xlat0;
    let x_1617 : f32 = u_xlat49;
    let x_1620 : vec4<f32> = u_xlat4;
    u_xlat10 = ((vec3<f32>(x_1615.x, x_1615.y, x_1615.z) * vec3<f32>(x_1617, x_1617, x_1617)) + vec3<f32>(x_1620.x, x_1620.y, x_1620.z));
    let x_1623 : vec3<f32> = u_xlat10;
    let x_1624 : vec4<f32> = u_xlat12;
    let x_1627 : vec3<f32> = u_xlat9;
    u_xlat9 = ((x_1623 * vec3<f32>(x_1624.x, x_1624.y, x_1624.z)) + x_1627);

    continuing {
      let x_1629 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1629 + bitcast<u32>(1i));
    }
  }
  let x_1631 : vec4<f32> = u_xlat7;
  let x_1633 : vec4<f32> = u_xlat5;
  let x_1636 : vec3<f32> = u_xlat3;
  let x_1637 : vec3<f32> = ((vec3<f32>(x_1631.x, x_1631.y, x_1631.z) * vec3<f32>(x_1633.x, x_1633.y, x_1633.z)) + x_1636);
  let x_1638 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1637.x, x_1637.y, x_1637.z, x_1638.w);
  let x_1640 : vec3<f32> = u_xlat9;
  let x_1641 : vec4<f32> = u_xlat0;
  let x_1643 : vec3<f32> = (x_1640 + vec3<f32>(x_1641.x, x_1641.y, x_1641.z));
  let x_1644 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1643.x, x_1643.y, x_1643.z, x_1644.w);
  let x_1646 : f32 = u_xlat16;
  let x_1647 : f32 = u_xlat16;
  u_xlat45 = (x_1646 * -(x_1647));
  let x_1650 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1650);
  let x_1652 : vec4<f32> = u_xlat0;
  let x_1656 : vec4<f32> = x_29.unity_FogColor;
  let x_1659 : vec3<f32> = (vec3<f32>(x_1652.x, x_1652.y, x_1652.z) + -(vec3<f32>(x_1656.x, x_1656.y, x_1656.z)));
  let x_1660 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1659.x, x_1659.y, x_1659.z, x_1660.w);
  let x_1664 : f32 = u_xlat45;
  let x_1666 : vec4<f32> = u_xlat0;
  let x_1670 : vec4<f32> = x_29.unity_FogColor;
  let x_1672 : vec3<f32> = ((vec3<f32>(x_1664, x_1664, x_1664) * vec3<f32>(x_1666.x, x_1666.y, x_1666.z)) + vec3<f32>(x_1670.x, x_1670.y, x_1670.z));
  let x_1673 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1672.x, x_1672.y, x_1672.z, x_1673.w);
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


