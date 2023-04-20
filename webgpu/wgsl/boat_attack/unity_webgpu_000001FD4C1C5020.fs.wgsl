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
  /* @offset(76) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_PointRepeat : sampler;

var<private> u_xlatb11 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_159 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlat31 : f32;

var<private> u_xlatu31 : u32;

var<private> u_xlati31 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb12 : vec2<bool>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat22 : f32;

@group(1) @binding(5) var<uniform> x_496 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlatu24 : u32;

var<private> u_xlati34 : i32;

var<private> u_xlat24 : f32;

var<private> u_xlati24 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_727 : AdditionalLights;

var<private> u_xlat34 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

var<private> u_xlatb36 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati36 : i32;

var<private> u_xlati7 : i32;

var<private> u_xlati17 : i32;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb17 : vec3<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> u_xlat10 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb10 : bool;

var<private> u_xlatb24 : bool;

var<private> u_xlatu33 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var txVec0 : vec3<f32>;
  var x_579 : f32;
  var x_590 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_858 : f32;
  var x_869 : f32;
  var txVec1 : vec3<f32>;
  var x_1316 : f32;
  var x_1329 : f32;
  var x_1387 : f32;
  var x_1398 : vec3<f32>;
  var x_1470 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_65 : vec4<f32> = hlslcc_FragCoord;
  let x_69 : f32 = x_44.x_DitheringTextureInvSize;
  let x_71 : vec2<f32> = (vec2<f32>(x_65.x, x_65.y) * vec2<f32>(x_69, x_69));
  let x_72 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_71.x, x_71.y, x_72.z);
  let x_79 : vec3<f32> = u_xlat1;
  let x_82 : f32 = x_44.x_GlobalMipBias.x;
  let x_83 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_79.x, x_79.y), x_82);
  u_xlat1.x = x_83.w;
  let x_98 : f32 = x_95.unity_LODFade.x;
  u_xlatb11 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb11;
  if (x_101) {
    let x_107 : f32 = u_xlat1.x;
    x_103 = abs(x_107);
  } else {
    let x_111 : f32 = u_xlat1.x;
    x_103 = -(abs(x_111));
  }
  let x_114 : f32 = x_103;
  u_xlat1.x = x_114;
  let x_117 : f32 = u_xlat1.x;
  let x_120 : f32 = x_95.unity_LODFade.x;
  u_xlat1.x = (-(x_117) + x_120);
  let x_125 : f32 = u_xlat1.x;
  u_xlatb1 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb1;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_137, x_138);
  let x_142 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_142);
  let x_145 : vec3<f32> = u_xlat1;
  let x_147 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_145.x, x_145.x, x_145.x) * x_147);
  let x_151 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres0;
  let x_164 : vec3<f32> = (x_151 + -(vec3<f32>(x_161.x, x_161.y, x_161.z)));
  let x_165 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec3<f32> = vs_TEXCOORD1;
  let x_170 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres1;
  let x_173 : vec3<f32> = (x_168 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec3<f32> = vs_TEXCOORD1;
  let x_180 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres2;
  let x_183 : vec3<f32> = (x_177 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_184 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : vec3<f32> = vs_TEXCOORD1;
  let x_190 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_187 + -(vec3<f32>(x_190.x, x_190.y, x_190.z)));
  let x_194 : vec4<f32> = u_xlat2;
  let x_196 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_194.x, x_194.y, x_194.z), vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_200 : vec4<f32> = u_xlat3;
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_200.x, x_200.y, x_200.z), vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_207 : vec4<f32> = u_xlat4;
  let x_209 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_207.x, x_207.y, x_207.z), vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_213 : vec3<f32> = u_xlat5;
  let x_214 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_213, x_214);
  let x_220 : vec4<f32> = u_xlat2;
  let x_222 : vec4<f32> = x_159.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_220 < x_222);
  let x_225 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_225);
  let x_229 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_229);
  let x_233 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_233);
  let x_237 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_237);
  let x_241 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_241);
  let x_247 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_247);
  let x_251 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_251);
  let x_254 : vec4<f32> = u_xlat2;
  let x_256 : vec4<f32> = u_xlat3;
  let x_258 : vec3<f32> = (vec3<f32>(x_254.x, x_254.y, x_254.z) + vec3<f32>(x_256.y, x_256.z, x_256.w));
  let x_259 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : vec4<f32> = u_xlat2;
  let x_264 : vec3<f32> = max(vec3<f32>(x_261.x, x_261.y, x_261.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_265 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_265.x, x_264.x, x_264.y, x_264.z);
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat31 = dot(x_268, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_274 : f32 = u_xlat31;
  u_xlat31 = (-(x_274) + 4.0f);
  let x_279 : f32 = u_xlat31;
  u_xlatu31 = u32(x_279);
  let x_283 : u32 = u_xlatu31;
  u_xlati31 = (bitcast<i32>(x_283) << bitcast<u32>(2i));
  let x_286 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : i32 = u_xlati31;
  let x_291 : i32 = u_xlati31;
  let x_295 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_288 + 1i) / 4i)][((x_291 + 1i) % 4i)];
  let x_297 : vec3<f32> = (vec3<f32>(x_286.y, x_286.y, x_286.y) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : i32 = u_xlati31;
  let x_302 : i32 = u_xlati31;
  let x_305 : vec4<f32> = x_159.x_MainLightWorldToShadow[(x_300 / 4i)][(x_302 % 4i)];
  let x_307 : vec3<f32> = vs_TEXCOORD1;
  let x_310 : vec4<f32> = u_xlat2;
  let x_312 : vec3<f32> = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.x, x_307.x, x_307.x)) + vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : i32 = u_xlati31;
  let x_318 : i32 = u_xlati31;
  let x_322 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_315 + 2i) / 4i)][((x_318 + 2i) % 4i)];
  let x_324 : vec3<f32> = vs_TEXCOORD1;
  let x_327 : vec4<f32> = u_xlat2;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.z, x_324.z, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat2;
  let x_334 : i32 = u_xlati31;
  let x_337 : i32 = u_xlati31;
  let x_341 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_334 + 3i) / 4i)][((x_337 + 3i) % 4i)];
  let x_343 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_352 : vec2<f32> = vs_TEXCOORD7;
  let x_354 : f32 = x_44.x_GlobalMipBias.x;
  let x_355 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_352, x_354);
  u_xlat3 = x_355;
  let x_360 : vec2<f32> = vs_TEXCOORD7;
  let x_362 : f32 = x_44.x_GlobalMipBias.x;
  let x_363 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_360, x_362);
  let x_364 : vec3<f32> = vec3<f32>(x_363.x, x_363.y, x_363.z);
  let x_365 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_367 : vec4<f32> = u_xlat3;
  let x_371 : vec3<f32> = (vec3<f32>(x_367.x, x_367.y, x_367.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_372 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec3<f32> = u_xlat1;
  let x_375 : vec4<f32> = u_xlat3;
  u_xlat31 = dot(x_374, vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : f32 = u_xlat31;
  u_xlat31 = (x_378 + 0.5f);
  let x_381 : f32 = u_xlat31;
  let x_383 : vec4<f32> = u_xlat4;
  let x_385 : vec3<f32> = (vec3<f32>(x_381, x_381, x_381) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_389 : f32 = u_xlat3.w;
  u_xlat31 = max(x_389, 0.00009999999747378752f);
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : f32 = u_xlat31;
  let x_396 : vec3<f32> = (vec3<f32>(x_392.x, x_392.y, x_392.z) / vec3<f32>(x_394, x_394, x_394));
  let x_397 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_401 : vec4<f32> = u_xlat2;
  let x_402 : vec2<f32> = vec2<f32>(x_401.x, x_401.y);
  let x_404 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_402.x, x_402.y, x_404);
  let x_416 : vec3<f32> = txVec0;
  let x_418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_416.xy, x_416.z);
  u_xlat31 = x_418;
  let x_421 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_421) + 1.0f);
  let x_425 : f32 = u_xlat31;
  let x_427 : f32 = x_159.x_MainLightShadowParams.x;
  let x_430 : f32 = u_xlat2.x;
  u_xlat31 = ((x_425 * x_427) + x_430);
  let x_433 : f32 = u_xlat2.z;
  u_xlatb2.x = (0.0f >= x_433);
  let x_440 : f32 = u_xlat2.z;
  u_xlatb12.x = (x_440 >= 1.0f);
  let x_444 : bool = u_xlatb12.x;
  let x_446 : bool = u_xlatb2.x;
  u_xlatb2.x = (x_444 | x_446);
  let x_450 : bool = u_xlatb2.x;
  let x_451 : f32 = u_xlat31;
  u_xlat31 = select(x_451, 1.0f, x_450);
  let x_453 : vec3<f32> = vs_TEXCOORD1;
  let x_456 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_458 : vec3<f32> = (x_453 + -(x_456));
  let x_459 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat2;
  let x_463 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_461.x, x_461.y, x_461.z), vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_469 : f32 = u_xlat2.x;
  let x_471 : f32 = x_159.x_MainLightShadowParams.z;
  let x_474 : f32 = x_159.x_MainLightShadowParams.w;
  u_xlat12.x = ((x_469 * x_471) + x_474);
  let x_478 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_478, 0.0f, 1.0f);
  let x_482 : f32 = u_xlat31;
  u_xlat22 = (-(x_482) + 1.0f);
  let x_486 : f32 = u_xlat12.x;
  let x_487 : f32 = u_xlat22;
  let x_489 : f32 = u_xlat31;
  u_xlat31 = ((x_486 * x_487) + x_489);
  let x_498 : f32 = x_496.x_MainLightCookieTextureFormat;
  u_xlatb12.x = !((x_498 == -1.0f));
  let x_502 : bool = u_xlatb12.x;
  if (x_502) {
    let x_505 : vec3<f32> = vs_TEXCOORD1;
    let x_508 : vec4<f32> = x_496.x_MainLightWorldToLight[1i];
    let x_510 : vec2<f32> = (vec2<f32>(x_505.y, x_505.y) * vec2<f32>(x_508.x, x_508.y));
    let x_511 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_510.x, x_510.y, x_511.z);
    let x_514 : vec4<f32> = x_496.x_MainLightWorldToLight[0i];
    let x_516 : vec3<f32> = vs_TEXCOORD1;
    let x_519 : vec3<f32> = u_xlat12;
    let x_521 : vec2<f32> = ((vec2<f32>(x_514.x, x_514.y) * vec2<f32>(x_516.x, x_516.x)) + vec2<f32>(x_519.x, x_519.y));
    let x_522 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_521.x, x_521.y, x_522.z);
    let x_525 : vec4<f32> = x_496.x_MainLightWorldToLight[2i];
    let x_527 : vec3<f32> = vs_TEXCOORD1;
    let x_530 : vec3<f32> = u_xlat12;
    let x_532 : vec2<f32> = ((vec2<f32>(x_525.x, x_525.y) * vec2<f32>(x_527.z, x_527.z)) + vec2<f32>(x_530.x, x_530.y));
    let x_533 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_532.x, x_532.y, x_533.z);
    let x_535 : vec3<f32> = u_xlat12;
    let x_538 : vec4<f32> = x_496.x_MainLightWorldToLight[3i];
    let x_540 : vec2<f32> = (vec2<f32>(x_535.x, x_535.y) + vec2<f32>(x_538.x, x_538.y));
    let x_541 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_540.x, x_540.y, x_541.z);
    let x_543 : vec3<f32> = u_xlat12;
    let x_547 : vec2<f32> = ((vec2<f32>(x_543.x, x_543.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_548 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_547.x, x_547.y, x_548.z);
    let x_555 : vec3<f32> = u_xlat12;
    let x_558 : f32 = x_44.x_GlobalMipBias.x;
    let x_559 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_555.x, x_555.y), x_558);
    u_xlat4 = x_559;
    let x_561 : f32 = x_496.x_MainLightCookieTextureFormat;
    let x_563 : f32 = x_496.x_MainLightCookieTextureFormat;
    let x_565 : f32 = x_496.x_MainLightCookieTextureFormat;
    let x_567 : f32 = x_496.x_MainLightCookieTextureFormat;
    let x_568 : vec4<f32> = vec4<f32>(x_561, x_563, x_565, x_567);
    let x_575 : vec4<bool> = (vec4<f32>(x_568.x, x_568.y, x_568.z, x_568.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb12 = vec2<bool>(x_575.x, x_575.y);
    let x_578 : bool = u_xlatb12.y;
    if (x_578) {
      let x_583 : f32 = u_xlat4.w;
      x_579 = x_583;
    } else {
      let x_586 : f32 = u_xlat4.x;
      x_579 = x_586;
    }
    let x_587 : f32 = x_579;
    u_xlat22 = x_587;
    let x_589 : bool = u_xlatb12.x;
    if (x_589) {
      let x_593 : vec4<f32> = u_xlat4;
      x_590 = vec3<f32>(x_593.x, x_593.y, x_593.z);
    } else {
      let x_596 : f32 = u_xlat22;
      x_590 = vec3<f32>(x_596, x_596, x_596);
    }
    let x_598 : vec3<f32> = x_590;
    u_xlat12 = x_598;
  } else {
    u_xlat12.x = 1.0f;
    u_xlat12.y = 1.0f;
    u_xlat12.z = 1.0f;
  }
  let x_603 : vec3<f32> = u_xlat12;
  let x_605 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat12 = (x_603 * vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : f32 = u_xlat31;
  let x_610 : f32 = x_95.unity_LightData.z;
  u_xlat31 = (x_608 * x_610);
  let x_612 : f32 = u_xlat31;
  let x_614 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_612, x_612, x_612) * x_614);
  let x_616 : vec3<f32> = u_xlat1;
  let x_618 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat31 = dot(x_616, vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_621 : f32 = u_xlat31;
  u_xlat31 = clamp(x_621, 0.0f, 1.0f);
  let x_623 : f32 = u_xlat31;
  let x_625 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_623, x_623, x_623) * x_625);
  let x_627 : vec4<f32> = u_xlat0;
  let x_629 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_627.y, x_627.z, x_627.w) * x_629);
  let x_632 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_634 : f32 = x_95.unity_LightData.y;
  u_xlat31 = min(x_632, x_634);
  let x_636 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_636));
  let x_640 : f32 = u_xlat2.x;
  let x_643 : f32 = x_159.x_AdditionalShadowFadeParams.x;
  let x_646 : f32 = x_159.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_640 * x_643) + x_646);
  let x_650 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_650, 0.0f, 1.0f);
  let x_655 : f32 = x_496.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_657 : f32 = x_496.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_659 : f32 = x_496.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_661 : f32 = x_496.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_662 : vec4<f32> = vec4<f32>(x_655, x_657, x_659, x_661);
  let x_668 : vec4<bool> = (vec4<f32>(x_662.x, x_662.y, x_662.z, x_662.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_668.x, x_668.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_680 : u32 = u_xlatu_loop_1;
    let x_681 : u32 = u_xlatu31;
    if ((x_680 < x_681)) {
    } else {
      break;
    }
    let x_684 : u32 = u_xlatu_loop_1;
    u_xlatu24 = (x_684 >> 2u);
    let x_687 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_687 & 3u));
    let x_692 : u32 = u_xlatu24;
    let x_695 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_692)];
    let x_705 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_710 : vec4<u32> = indexable[x_705];
    u_xlat24 = dot(x_695, bitcast<vec4<f32>>(x_710));
    let x_714 : f32 = u_xlat24;
    u_xlati24 = i32(x_714);
    let x_717 : vec3<f32> = vs_TEXCOORD1;
    let x_728 : i32 = u_xlati24;
    let x_730 : vec4<f32> = x_727.x_AdditionalLightsPosition[x_728];
    let x_733 : i32 = u_xlati24;
    let x_735 : vec4<f32> = x_727.x_AdditionalLightsPosition[x_733];
    u_xlat6 = ((-(x_717) * vec3<f32>(x_730.w, x_730.w, x_730.w)) + vec3<f32>(x_735.x, x_735.y, x_735.z));
    let x_739 : vec3<f32> = u_xlat6;
    let x_740 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_739, x_740);
    let x_742 : f32 = u_xlat34;
    u_xlat34 = max(x_742, 0.00006103515625f);
    let x_746 : f32 = u_xlat34;
    u_xlat35 = inverseSqrt(x_746);
    let x_748 : f32 = u_xlat35;
    let x_750 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_748, x_748, x_748) * x_750);
    let x_752 : f32 = u_xlat34;
    u_xlat35 = (1.0f / x_752);
    let x_754 : f32 = u_xlat34;
    let x_755 : i32 = u_xlati24;
    let x_757 : f32 = x_727.x_AdditionalLightsAttenuation[x_755].x;
    u_xlat34 = (x_754 * x_757);
    let x_759 : f32 = u_xlat34;
    let x_761 : f32 = u_xlat34;
    u_xlat34 = ((-(x_759) * x_761) + 1.0f);
    let x_764 : f32 = u_xlat34;
    u_xlat34 = max(x_764, 0.0f);
    let x_766 : f32 = u_xlat34;
    let x_767 : f32 = u_xlat34;
    u_xlat34 = (x_766 * x_767);
    let x_769 : f32 = u_xlat34;
    let x_770 : f32 = u_xlat35;
    u_xlat34 = (x_769 * x_770);
    let x_772 : i32 = u_xlati24;
    let x_774 : vec4<f32> = x_727.x_AdditionalLightsSpotDir[x_772];
    let x_776 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(vec3<f32>(x_774.x, x_774.y, x_774.z), x_776);
    let x_778 : f32 = u_xlat35;
    let x_779 : i32 = u_xlati24;
    let x_781 : f32 = x_727.x_AdditionalLightsAttenuation[x_779].z;
    let x_783 : i32 = u_xlati24;
    let x_785 : f32 = x_727.x_AdditionalLightsAttenuation[x_783].w;
    u_xlat35 = ((x_778 * x_781) + x_785);
    let x_787 : f32 = u_xlat35;
    u_xlat35 = clamp(x_787, 0.0f, 1.0f);
    let x_789 : f32 = u_xlat35;
    let x_790 : f32 = u_xlat35;
    u_xlat35 = (x_789 * x_790);
    let x_792 : f32 = u_xlat34;
    let x_793 : f32 = u_xlat35;
    u_xlat34 = (x_792 * x_793);
    let x_797 : i32 = u_xlati24;
    let x_799 : f32 = x_159.x_AdditionalShadowParams[x_797].w;
    u_xlati35 = i32(x_799);
    let x_802 : i32 = u_xlati35;
    u_xlatb36 = (x_802 >= 0i);
    let x_804 : bool = u_xlatb36;
    if (x_804) {
      let x_808 : i32 = u_xlati24;
      let x_810 : f32 = x_159.x_AdditionalShadowParams[x_808].z;
      u_xlatb36 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_810, x_810, x_810, x_810))));
      let x_814 : bool = u_xlatb36;
      if (x_814) {
        let x_818 : vec3<f32> = u_xlat6;
        let x_821 : vec3<f32> = u_xlat6;
        let x_824 : vec4<bool> = (abs(vec4<f32>(x_818.z, x_818.z, x_818.y, x_818.z)) >= abs(vec4<f32>(x_821.x, x_821.y, x_821.x, x_821.x)));
        let x_826 : vec3<bool> = vec3<bool>(x_824.x, x_824.y, x_824.z);
        let x_827 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_826.x, x_826.y, x_826.z, x_827.w);
        let x_830 : bool = u_xlatb7.y;
        let x_832 : bool = u_xlatb7.x;
        u_xlatb36 = (x_830 & x_832);
        let x_834 : vec3<f32> = u_xlat6;
        let x_837 : vec4<bool> = (-(vec4<f32>(x_834.z, x_834.y, x_834.z, x_834.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_838 : vec3<bool> = vec3<bool>(x_837.x, x_837.y, x_837.w);
        let x_839 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_838.x, x_838.y, x_839.z, x_838.z);
        let x_843 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_843);
        let x_848 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_848);
        let x_853 : bool = u_xlatb7.w;
        u_xlat37 = select(0.0f, 1.0f, x_853);
        let x_857 : bool = u_xlatb7.z;
        if (x_857) {
          let x_862 : f32 = u_xlat7.y;
          x_858 = x_862;
        } else {
          let x_864 : f32 = u_xlat37;
          x_858 = x_864;
        }
        let x_865 : f32 = x_858;
        u_xlat17.x = x_865;
        let x_868 : bool = u_xlatb36;
        if (x_868) {
          let x_873 : f32 = u_xlat7.x;
          x_869 = x_873;
        } else {
          let x_876 : f32 = u_xlat17.x;
          x_869 = x_876;
        }
        let x_877 : f32 = x_869;
        u_xlat36 = x_877;
        let x_878 : i32 = u_xlati24;
        let x_880 : f32 = x_159.x_AdditionalShadowParams[x_878].w;
        u_xlat7.x = trunc(x_880);
        let x_883 : f32 = u_xlat36;
        let x_885 : f32 = u_xlat7.x;
        u_xlat36 = (x_883 + x_885);
        let x_887 : f32 = u_xlat36;
        u_xlati35 = i32(x_887);
      }
      let x_889 : i32 = u_xlati35;
      u_xlati35 = (x_889 << bitcast<u32>(2i));
      let x_891 : vec3<f32> = vs_TEXCOORD1;
      let x_894 : i32 = u_xlati35;
      let x_897 : i32 = u_xlati35;
      let x_901 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_894 + 1i) / 4i)][((x_897 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_891.y, x_891.y, x_891.y, x_891.y) * x_901);
      let x_903 : i32 = u_xlati35;
      let x_905 : i32 = u_xlati35;
      let x_908 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[(x_903 / 4i)][(x_905 % 4i)];
      let x_909 : vec3<f32> = vs_TEXCOORD1;
      let x_912 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_908 * vec4<f32>(x_909.x, x_909.x, x_909.x, x_909.x)) + x_912);
      let x_914 : i32 = u_xlati35;
      let x_917 : i32 = u_xlati35;
      let x_921 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_914 + 2i) / 4i)][((x_917 + 2i) % 4i)];
      let x_922 : vec3<f32> = vs_TEXCOORD1;
      let x_925 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_921 * vec4<f32>(x_922.z, x_922.z, x_922.z, x_922.z)) + x_925);
      let x_927 : vec4<f32> = u_xlat7;
      let x_928 : i32 = u_xlati35;
      let x_931 : i32 = u_xlati35;
      let x_935 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_928 + 3i) / 4i)][((x_931 + 3i) % 4i)];
      u_xlat7 = (x_927 + x_935);
      let x_937 : vec4<f32> = u_xlat7;
      let x_939 : vec4<f32> = u_xlat7;
      let x_941 : vec3<f32> = (vec3<f32>(x_937.x, x_937.y, x_937.z) / vec3<f32>(x_939.w, x_939.w, x_939.w));
      let x_942 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
      let x_945 : vec4<f32> = u_xlat7;
      let x_946 : vec2<f32> = vec2<f32>(x_945.x, x_945.y);
      let x_948 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_946.x, x_946.y, x_948);
      let x_956 : vec3<f32> = txVec1;
      let x_958 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_956.xy, x_956.z);
      u_xlat35 = x_958;
      let x_959 : i32 = u_xlati24;
      let x_961 : f32 = x_159.x_AdditionalShadowParams[x_959].x;
      u_xlat36 = (1.0f + -(x_961));
      let x_964 : f32 = u_xlat35;
      let x_965 : i32 = u_xlati24;
      let x_967 : f32 = x_159.x_AdditionalShadowParams[x_965].x;
      let x_969 : f32 = u_xlat36;
      u_xlat35 = ((x_964 * x_967) + x_969);
      let x_972 : f32 = u_xlat7.z;
      u_xlatb36 = (0.0f >= x_972);
      let x_975 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_975 >= 1.0f);
      let x_978 : bool = u_xlatb36;
      let x_980 : bool = u_xlatb7.x;
      u_xlatb36 = (x_978 | x_980);
      let x_982 : bool = u_xlatb36;
      let x_983 : f32 = u_xlat35;
      u_xlat35 = select(x_983, 1.0f, x_982);
    } else {
      u_xlat35 = 1.0f;
    }
    let x_986 : f32 = u_xlat35;
    u_xlat36 = (-(x_986) + 1.0f);
    let x_990 : f32 = u_xlat2.x;
    let x_991 : f32 = u_xlat36;
    let x_993 : f32 = u_xlat35;
    u_xlat35 = ((x_990 * x_991) + x_993);
    let x_996 : i32 = u_xlati24;
    u_xlati36 = (1i << bitcast<u32>((x_996 & 31i)));
    let x_1000 : i32 = u_xlati36;
    let x_1003 : f32 = x_496.x_AdditionalLightsCookieEnableBits;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_1000) & bitcast<u32>(x_1003)));
    let x_1007 : i32 = u_xlati36;
    if ((x_1007 != 0i)) {
      let x_1011 : i32 = u_xlati24;
      let x_1013 : f32 = x_496.x_AdditionalLightsLightTypes[x_1011].el;
      u_xlati36 = i32(x_1013);
      let x_1016 : i32 = u_xlati36;
      u_xlati7 = select(1i, 0i, (x_1016 != 0i));
      let x_1020 : i32 = u_xlati24;
      u_xlati17 = (x_1020 << bitcast<u32>(2i));
      let x_1022 : i32 = u_xlati7;
      if ((x_1022 != 0i)) {
        let x_1026 : vec3<f32> = vs_TEXCOORD1;
        let x_1028 : i32 = u_xlati17;
        let x_1031 : i32 = u_xlati17;
        let x_1035 : vec4<f32> = x_496.x_AdditionalLightsWorldToLights[((x_1028 + 1i) / 4i)][((x_1031 + 1i) % 4i)];
        let x_1037 : vec3<f32> = (vec3<f32>(x_1026.y, x_1026.y, x_1026.y) * vec3<f32>(x_1035.x, x_1035.y, x_1035.w));
        let x_1038 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1037.x, x_1038.y, x_1037.y, x_1037.z);
        let x_1040 : i32 = u_xlati17;
        let x_1042 : i32 = u_xlati17;
        let x_1045 : vec4<f32> = x_496.x_AdditionalLightsWorldToLights[(x_1040 / 4i)][(x_1042 % 4i)];
        let x_1047 : vec3<f32> = vs_TEXCOORD1;
        let x_1050 : vec4<f32> = u_xlat7;
        let x_1052 : vec3<f32> = ((vec3<f32>(x_1045.x, x_1045.y, x_1045.w) * vec3<f32>(x_1047.x, x_1047.x, x_1047.x)) + vec3<f32>(x_1050.x, x_1050.z, x_1050.w));
        let x_1053 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1052.x, x_1053.y, x_1052.y, x_1052.z);
        let x_1055 : i32 = u_xlati17;
        let x_1058 : i32 = u_xlati17;
        let x_1062 : vec4<f32> = x_496.x_AdditionalLightsWorldToLights[((x_1055 + 2i) / 4i)][((x_1058 + 2i) % 4i)];
        let x_1064 : vec3<f32> = vs_TEXCOORD1;
        let x_1067 : vec4<f32> = u_xlat7;
        let x_1069 : vec3<f32> = ((vec3<f32>(x_1062.x, x_1062.y, x_1062.w) * vec3<f32>(x_1064.z, x_1064.z, x_1064.z)) + vec3<f32>(x_1067.x, x_1067.z, x_1067.w));
        let x_1070 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1069.x, x_1070.y, x_1069.y, x_1069.z);
        let x_1072 : vec4<f32> = u_xlat7;
        let x_1074 : i32 = u_xlati17;
        let x_1077 : i32 = u_xlati17;
        let x_1081 : vec4<f32> = x_496.x_AdditionalLightsWorldToLights[((x_1074 + 3i) / 4i)][((x_1077 + 3i) % 4i)];
        let x_1083 : vec3<f32> = (vec3<f32>(x_1072.x, x_1072.z, x_1072.w) + vec3<f32>(x_1081.x, x_1081.y, x_1081.w));
        let x_1084 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1083.x, x_1084.y, x_1083.y, x_1083.z);
        let x_1086 : vec4<f32> = u_xlat7;
        let x_1088 : vec4<f32> = u_xlat7;
        let x_1090 : vec2<f32> = (vec2<f32>(x_1086.x, x_1086.z) / vec2<f32>(x_1088.w, x_1088.w));
        let x_1091 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1090.x, x_1091.y, x_1090.y, x_1091.w);
        let x_1093 : vec4<f32> = u_xlat7;
        let x_1096 : vec2<f32> = ((vec2<f32>(x_1093.x, x_1093.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1097 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1096.x, x_1097.y, x_1096.y, x_1097.w);
        let x_1099 : vec4<f32> = u_xlat7;
        let x_1103 : vec2<f32> = clamp(vec2<f32>(x_1099.x, x_1099.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1104 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1104.w);
        let x_1106 : i32 = u_xlati24;
        let x_1108 : vec4<f32> = x_496.x_AdditionalLightsCookieAtlasUVRects[x_1106];
        let x_1110 : vec4<f32> = u_xlat7;
        let x_1113 : i32 = u_xlati24;
        let x_1115 : vec4<f32> = x_496.x_AdditionalLightsCookieAtlasUVRects[x_1113];
        let x_1117 : vec2<f32> = ((vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(x_1110.x, x_1110.z)) + vec2<f32>(x_1115.z, x_1115.w));
        let x_1118 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1117.x, x_1118.y, x_1117.y, x_1118.w);
      } else {
        let x_1121 : i32 = u_xlati36;
        u_xlatb36 = (x_1121 == 1i);
        let x_1123 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_1123);
        let x_1125 : i32 = u_xlati36;
        if ((x_1125 != 0i)) {
          let x_1130 : vec3<f32> = vs_TEXCOORD1;
          let x_1132 : i32 = u_xlati17;
          let x_1135 : i32 = u_xlati17;
          let x_1139 : vec4<f32> = x_496.x_AdditionalLightsWorldToLights[((x_1132 + 1i) / 4i)][((x_1135 + 1i) % 4i)];
          let x_1141 : vec2<f32> = (vec2<f32>(x_1130.y, x_1130.y) * vec2<f32>(x_1139.x, x_1139.y));
          let x_1142 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
          let x_1144 : i32 = u_xlati17;
          let x_1146 : i32 = u_xlati17;
          let x_1149 : vec4<f32> = x_496.x_AdditionalLightsWorldToLights[(x_1144 / 4i)][(x_1146 % 4i)];
          let x_1151 : vec3<f32> = vs_TEXCOORD1;
          let x_1154 : vec4<f32> = u_xlat8;
          let x_1156 : vec2<f32> = ((vec2<f32>(x_1149.x, x_1149.y) * vec2<f32>(x_1151.x, x_1151.x)) + vec2<f32>(x_1154.x, x_1154.y));
          let x_1157 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1156.x, x_1156.y, x_1157.z, x_1157.w);
          let x_1159 : i32 = u_xlati17;
          let x_1162 : i32 = u_xlati17;
          let x_1166 : vec4<f32> = x_496.x_AdditionalLightsWorldToLights[((x_1159 + 2i) / 4i)][((x_1162 + 2i) % 4i)];
          let x_1168 : vec3<f32> = vs_TEXCOORD1;
          let x_1171 : vec4<f32> = u_xlat8;
          let x_1173 : vec2<f32> = ((vec2<f32>(x_1166.x, x_1166.y) * vec2<f32>(x_1168.z, x_1168.z)) + vec2<f32>(x_1171.x, x_1171.y));
          let x_1174 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
          let x_1176 : vec4<f32> = u_xlat8;
          let x_1178 : i32 = u_xlati17;
          let x_1181 : i32 = u_xlati17;
          let x_1185 : vec4<f32> = x_496.x_AdditionalLightsWorldToLights[((x_1178 + 3i) / 4i)][((x_1181 + 3i) % 4i)];
          let x_1187 : vec2<f32> = (vec2<f32>(x_1176.x, x_1176.y) + vec2<f32>(x_1185.x, x_1185.y));
          let x_1188 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1187.x, x_1187.y, x_1188.z, x_1188.w);
          let x_1190 : vec4<f32> = u_xlat8;
          let x_1193 : vec2<f32> = ((vec2<f32>(x_1190.x, x_1190.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1194 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1193.x, x_1193.y, x_1194.z, x_1194.w);
          let x_1196 : vec4<f32> = u_xlat8;
          let x_1198 : vec2<f32> = fract(vec2<f32>(x_1196.x, x_1196.y));
          let x_1199 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1198.x, x_1198.y, x_1199.z, x_1199.w);
          let x_1201 : i32 = u_xlati24;
          let x_1203 : vec4<f32> = x_496.x_AdditionalLightsCookieAtlasUVRects[x_1201];
          let x_1205 : vec4<f32> = u_xlat8;
          let x_1208 : i32 = u_xlati24;
          let x_1210 : vec4<f32> = x_496.x_AdditionalLightsCookieAtlasUVRects[x_1208];
          let x_1212 : vec2<f32> = ((vec2<f32>(x_1203.x, x_1203.y) * vec2<f32>(x_1205.x, x_1205.y)) + vec2<f32>(x_1210.z, x_1210.w));
          let x_1213 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1212.x, x_1213.y, x_1212.y, x_1213.w);
        } else {
          let x_1216 : vec3<f32> = vs_TEXCOORD1;
          let x_1218 : i32 = u_xlati17;
          let x_1221 : i32 = u_xlati17;
          let x_1225 : vec4<f32> = x_496.x_AdditionalLightsWorldToLights[((x_1218 + 1i) / 4i)][((x_1221 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_1216.y, x_1216.y, x_1216.y, x_1216.y) * x_1225);
          let x_1227 : i32 = u_xlati17;
          let x_1229 : i32 = u_xlati17;
          let x_1232 : vec4<f32> = x_496.x_AdditionalLightsWorldToLights[(x_1227 / 4i)][(x_1229 % 4i)];
          let x_1233 : vec3<f32> = vs_TEXCOORD1;
          let x_1236 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1232 * vec4<f32>(x_1233.x, x_1233.x, x_1233.x, x_1233.x)) + x_1236);
          let x_1238 : i32 = u_xlati17;
          let x_1241 : i32 = u_xlati17;
          let x_1245 : vec4<f32> = x_496.x_AdditionalLightsWorldToLights[((x_1238 + 2i) / 4i)][((x_1241 + 2i) % 4i)];
          let x_1246 : vec3<f32> = vs_TEXCOORD1;
          let x_1249 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1245 * vec4<f32>(x_1246.z, x_1246.z, x_1246.z, x_1246.z)) + x_1249);
          let x_1251 : vec4<f32> = u_xlat8;
          let x_1252 : i32 = u_xlati17;
          let x_1255 : i32 = u_xlati17;
          let x_1259 : vec4<f32> = x_496.x_AdditionalLightsWorldToLights[((x_1252 + 3i) / 4i)][((x_1255 + 3i) % 4i)];
          u_xlat8 = (x_1251 + x_1259);
          let x_1261 : vec4<f32> = u_xlat8;
          let x_1263 : vec4<f32> = u_xlat8;
          let x_1265 : vec3<f32> = (vec3<f32>(x_1261.x, x_1261.y, x_1261.z) / vec3<f32>(x_1263.w, x_1263.w, x_1263.w));
          let x_1266 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
          let x_1268 : vec4<f32> = u_xlat8;
          let x_1270 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(vec3<f32>(x_1268.x, x_1268.y, x_1268.z), vec3<f32>(x_1270.x, x_1270.y, x_1270.z));
          let x_1273 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_1273);
          let x_1275 : f32 = u_xlat36;
          let x_1277 : vec4<f32> = u_xlat8;
          let x_1279 : vec3<f32> = (vec3<f32>(x_1275, x_1275, x_1275) * vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
          let x_1280 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
          let x_1282 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(abs(vec3<f32>(x_1282.x, x_1282.y, x_1282.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1287 : f32 = u_xlat36;
          u_xlat36 = max(x_1287, 0.00000099999999747524f);
          let x_1290 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_1290);
          let x_1293 : f32 = u_xlat36;
          let x_1295 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1293, x_1293, x_1293) * vec3<f32>(x_1295.z, x_1295.x, x_1295.y));
          let x_1299 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1299);
          let x_1303 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1303, 0.0f, 1.0f);
          let x_1308 : vec3<f32> = u_xlat9;
          let x_1310 : vec4<bool> = (vec4<f32>(x_1308.y, x_1308.y, x_1308.z, x_1308.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1311 : vec2<bool> = vec2<bool>(x_1310.x, x_1310.z);
          let x_1312 : vec3<bool> = u_xlatb17;
          u_xlatb17 = vec3<bool>(x_1311.x, x_1312.y, x_1311.y);
          let x_1315 : bool = u_xlatb17.x;
          if (x_1315) {
            let x_1320 : f32 = u_xlat9.x;
            x_1316 = x_1320;
          } else {
            let x_1323 : f32 = u_xlat9.x;
            x_1316 = -(x_1323);
          }
          let x_1325 : f32 = x_1316;
          u_xlat17.x = x_1325;
          let x_1328 : bool = u_xlatb17.z;
          if (x_1328) {
            let x_1333 : f32 = u_xlat9.x;
            x_1329 = x_1333;
          } else {
            let x_1336 : f32 = u_xlat9.x;
            x_1329 = -(x_1336);
          }
          let x_1338 : f32 = x_1329;
          u_xlat17.z = x_1338;
          let x_1340 : vec4<f32> = u_xlat8;
          let x_1342 : f32 = u_xlat36;
          let x_1345 : vec3<f32> = u_xlat17;
          let x_1347 : vec2<f32> = ((vec2<f32>(x_1340.x, x_1340.y) * vec2<f32>(x_1342, x_1342)) + vec2<f32>(x_1345.x, x_1345.z));
          let x_1348 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1347.x, x_1348.y, x_1347.y);
          let x_1350 : vec3<f32> = u_xlat17;
          let x_1353 : vec2<f32> = ((vec2<f32>(x_1350.x, x_1350.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1354 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1353.x, x_1354.y, x_1353.y);
          let x_1356 : vec3<f32> = u_xlat17;
          let x_1360 : vec2<f32> = clamp(vec2<f32>(x_1356.x, x_1356.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1361 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1360.x, x_1361.y, x_1360.y);
          let x_1363 : i32 = u_xlati24;
          let x_1365 : vec4<f32> = x_496.x_AdditionalLightsCookieAtlasUVRects[x_1363];
          let x_1367 : vec3<f32> = u_xlat17;
          let x_1370 : i32 = u_xlati24;
          let x_1372 : vec4<f32> = x_496.x_AdditionalLightsCookieAtlasUVRects[x_1370];
          let x_1374 : vec2<f32> = ((vec2<f32>(x_1365.x, x_1365.y) * vec2<f32>(x_1367.x, x_1367.z)) + vec2<f32>(x_1372.z, x_1372.w));
          let x_1375 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1374.x, x_1375.y, x_1374.y, x_1375.w);
        }
      }
      let x_1382 : vec4<f32> = u_xlat7;
      let x_1384 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1382.x, x_1382.z), 0.0f);
      u_xlat7 = x_1384;
      let x_1386 : bool = u_xlatb4.y;
      if (x_1386) {
        let x_1391 : f32 = u_xlat7.w;
        x_1387 = x_1391;
      } else {
        let x_1394 : f32 = u_xlat7.x;
        x_1387 = x_1394;
      }
      let x_1395 : f32 = x_1387;
      u_xlat36 = x_1395;
      let x_1397 : bool = u_xlatb4.x;
      if (x_1397) {
        let x_1401 : vec4<f32> = u_xlat7;
        x_1398 = vec3<f32>(x_1401.x, x_1401.y, x_1401.z);
      } else {
        let x_1404 : f32 = u_xlat36;
        x_1398 = vec3<f32>(x_1404, x_1404, x_1404);
      }
      let x_1406 : vec3<f32> = x_1398;
      let x_1407 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1413 : vec4<f32> = u_xlat7;
    let x_1415 : i32 = u_xlati24;
    let x_1417 : vec4<f32> = x_727.x_AdditionalLightsColor[x_1415];
    let x_1419 : vec3<f32> = (vec3<f32>(x_1413.x, x_1413.y, x_1413.z) * vec3<f32>(x_1417.x, x_1417.y, x_1417.z));
    let x_1420 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1419.x, x_1419.y, x_1419.z, x_1420.w);
    let x_1422 : f32 = u_xlat34;
    let x_1423 : f32 = u_xlat35;
    u_xlat24 = (x_1422 * x_1423);
    let x_1425 : f32 = u_xlat24;
    let x_1427 : vec4<f32> = u_xlat7;
    let x_1429 : vec3<f32> = (vec3<f32>(x_1425, x_1425, x_1425) * vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
    let x_1430 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
    let x_1432 : vec3<f32> = u_xlat1;
    let x_1433 : vec3<f32> = u_xlat6;
    u_xlat24 = dot(x_1432, x_1433);
    let x_1435 : f32 = u_xlat24;
    u_xlat24 = clamp(x_1435, 0.0f, 1.0f);
    let x_1437 : f32 = u_xlat24;
    let x_1439 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1437, x_1437, x_1437) * vec3<f32>(x_1439.x, x_1439.y, x_1439.z));
    let x_1442 : vec3<f32> = u_xlat6;
    let x_1443 : vec4<f32> = u_xlat0;
    let x_1446 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1442 * vec3<f32>(x_1443.y, x_1443.z, x_1443.w)) + x_1446);

    continuing {
      let x_1448 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1448 + bitcast<u32>(1i));
    }
  }
  let x_1451 : vec4<f32> = u_xlat3;
  let x_1453 : vec4<f32> = u_xlat0;
  let x_1456 : vec3<f32> = u_xlat12;
  u_xlat10 = ((vec3<f32>(x_1451.x, x_1451.y, x_1451.z) * vec3<f32>(x_1453.y, x_1453.z, x_1453.w)) + x_1456);
  let x_1460 : vec3<f32> = u_xlat5;
  let x_1461 : vec3<f32> = u_xlat10;
  let x_1462 : vec3<f32> = (x_1460 + x_1461);
  let x_1463 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1462.x, x_1462.y, x_1462.z, x_1463.w);
  let x_1467 : f32 = x_56.x_Surface;
  u_xlatb10 = (x_1467 == 1.0f);
  let x_1469 : bool = u_xlatb10;
  if (x_1469) {
    let x_1474 : f32 = u_xlat0.x;
    x_1470 = x_1474;
  } else {
    x_1470 = 1.0f;
  }
  let x_1476 : f32 = x_1470;
  SV_Target0.w = x_1476;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}


