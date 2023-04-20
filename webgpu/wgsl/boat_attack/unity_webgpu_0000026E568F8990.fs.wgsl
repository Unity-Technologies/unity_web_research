diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlatb11 : bool;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb33 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_249 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu11 : u32;

var<private> u_xlati11 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlat35 : f32;

@group(1) @binding(5) var<uniform> x_616 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu35 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlati35 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_871 : AdditionalLights;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlati37 : i32;

var<private> u_xlatb27 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat27 : vec2<f32>;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb38 : bool;

var<private> u_xlati27 : i32;

var<private> u_xlati38 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb30 : vec2<bool>;

var<private> u_xlat30 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb35 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_76 : f32;
  var x_132 : f32;
  var x_192 : f32;
  var txVec0 : vec3<f32>;
  var x_565 : f32;
  var x_700 : f32;
  var x_712 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1001 : f32;
  var x_1012 : f32;
  var txVec1 : vec3<f32>;
  var x_1450 : f32;
  var x_1463 : f32;
  var x_1511 : f32;
  var x_1523 : vec3<f32>;
  var x_1605 : f32;
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
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = u_xlat1.x;
  let x_72 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_69 >= x_72);
  let x_74 : bool = u_xlatb0;
  if (x_74) {
    let x_80 : f32 = u_xlat1.x;
    x_76 = x_80;
  } else {
    x_76 = 0.0f;
  }
  let x_83 : f32 = x_76;
  u_xlat0.x = x_83;
  let x_88 : f32 = u_xlat0.w;
  let x_90 : f32 = x_57.x_BaseColor.w;
  let x_93 : f32 = x_57.x_Cutoff;
  u_xlat11.x = ((x_88 * x_90) + -(x_93));
  let x_99 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_99);
  let x_103 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_103);
  let x_105 : f32 = u_xlat33;
  let x_107 : f32 = u_xlat22;
  u_xlat22 = (abs(x_105) + abs(x_107));
  let x_110 : f32 = u_xlat22;
  u_xlat22 = max(x_110, 0.00009999999747378752f);
  let x_114 : f32 = u_xlat11.x;
  let x_115 : f32 = u_xlat22;
  u_xlat11.x = (x_114 / x_115);
  let x_119 : f32 = u_xlat11.x;
  u_xlat11.x = (x_119 + 0.5f);
  let x_124 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_124, 0.0f, 1.0f);
  let x_129 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_129 == 0.0f));
  let x_131 : bool = u_xlatb22;
  if (x_131) {
    let x_136 : f32 = u_xlat11.x;
    x_132 = x_136;
  } else {
    let x_139 : f32 = u_xlat0.x;
    x_132 = x_139;
  }
  let x_140 : f32 = x_132;
  u_xlat0.x = x_140;
  let x_143 : f32 = u_xlat0.x;
  u_xlat11.x = (x_143 + -0.00009999999747378752f);
  let x_149 : f32 = u_xlat11.x;
  u_xlatb11 = (x_149 < 0.0f);
  let x_151 : bool = u_xlatb11;
  if (((select(0i, 1i, x_151) * -1i) != 0i)) {
    discard;
  }
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_44.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_165.x, x_166.y, x_165.y);
  let x_173 : vec3<f32> = u_xlat11;
  let x_176 : f32 = x_44.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_173.x, x_173.z), x_176);
  u_xlat11.x = x_177.w;
  let x_189 : f32 = x_186.unity_LODFade.x;
  u_xlatb33 = (x_189 >= 0.0f);
  let x_191 : bool = u_xlatb33;
  if (x_191) {
    let x_196 : f32 = u_xlat11.x;
    x_192 = abs(x_196);
  } else {
    let x_200 : f32 = u_xlat11.x;
    x_192 = -(abs(x_200));
  }
  let x_203 : f32 = x_192;
  u_xlat11.x = x_203;
  let x_206 : f32 = u_xlat11.x;
  let x_209 : f32 = x_186.unity_LODFade.x;
  u_xlat11.x = (-(x_206) + x_209);
  let x_213 : f32 = u_xlat11.x;
  u_xlatb11 = (x_213 < 0.0f);
  let x_215 : bool = u_xlatb11;
  if (((select(0i, 1i, x_215) * -1i) != 0i)) {
    discard;
  }
  let x_224 : vec3<f32> = vs_TEXCOORD2;
  let x_225 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11.x = dot(x_224, x_225);
  let x_229 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_229);
  let x_233 : vec3<f32> = u_xlat11;
  let x_235 : vec3<f32> = vs_TEXCOORD2;
  let x_236 : vec3<f32> = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_237 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_241 : vec3<f32> = vs_TEXCOORD1;
  let x_251 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres0;
  let x_254 : vec3<f32> = (x_241 + -(vec3<f32>(x_251.x, x_251.y, x_251.z)));
  let x_255 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_258 : vec3<f32> = vs_TEXCOORD1;
  let x_260 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres1;
  let x_263 : vec3<f32> = (x_258 + -(vec3<f32>(x_260.x, x_260.y, x_260.z)));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_267 : vec3<f32> = vs_TEXCOORD1;
  let x_270 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres2;
  let x_273 : vec3<f32> = (x_267 + -(vec3<f32>(x_270.x, x_270.y, x_270.z)));
  let x_274 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_277 + -(vec3<f32>(x_279.x, x_279.y, x_279.z)));
  let x_283 : vec4<f32> = u_xlat3;
  let x_285 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_283.x, x_283.y, x_283.z), vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_289 : vec4<f32> = u_xlat4;
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_296 : vec4<f32> = u_xlat5;
  let x_298 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_296.x, x_296.y, x_296.z), vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_302 : vec3<f32> = u_xlat6;
  let x_303 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_302, x_303);
  let x_309 : vec4<f32> = u_xlat3;
  let x_312 : vec4<f32> = x_249.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_309 < x_312);
  let x_315 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_315);
  let x_319 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_319);
  let x_323 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_323);
  let x_327 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_327);
  let x_331 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_331);
  let x_337 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_337);
  let x_341 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_341);
  let x_344 : vec4<f32> = u_xlat3;
  let x_346 : vec4<f32> = u_xlat4;
  let x_348 : vec3<f32> = (vec3<f32>(x_344.x, x_344.y, x_344.z) + vec3<f32>(x_346.y, x_346.z, x_346.w));
  let x_349 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_351 : vec4<f32> = u_xlat3;
  let x_354 : vec3<f32> = max(vec3<f32>(x_351.x, x_351.y, x_351.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_355 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_355.x, x_354.x, x_354.y, x_354.z);
  let x_357 : vec4<f32> = u_xlat4;
  u_xlat11.x = dot(x_357, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_365 : f32 = u_xlat11.x;
  u_xlat11.x = (-(x_365) + 4.0f);
  let x_372 : f32 = u_xlat11.x;
  u_xlatu11 = u32(x_372);
  let x_376 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_376) << bitcast<u32>(2i));
  let x_379 : vec3<f32> = vs_TEXCOORD1;
  let x_381 : i32 = u_xlati11;
  let x_384 : i32 = u_xlati11;
  let x_388 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_381 + 1i) / 4i)][((x_384 + 1i) % 4i)];
  let x_390 : vec3<f32> = (vec3<f32>(x_379.y, x_379.y, x_379.y) * vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : i32 = u_xlati11;
  let x_395 : i32 = u_xlati11;
  let x_398 : vec4<f32> = x_249.x_MainLightWorldToShadow[(x_393 / 4i)][(x_395 % 4i)];
  let x_400 : vec3<f32> = vs_TEXCOORD1;
  let x_403 : vec4<f32> = u_xlat3;
  let x_405 : vec3<f32> = ((vec3<f32>(x_398.x, x_398.y, x_398.z) * vec3<f32>(x_400.x, x_400.x, x_400.x)) + vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : i32 = u_xlati11;
  let x_411 : i32 = u_xlati11;
  let x_415 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_408 + 2i) / 4i)][((x_411 + 2i) % 4i)];
  let x_417 : vec3<f32> = vs_TEXCOORD1;
  let x_420 : vec4<f32> = u_xlat3;
  let x_422 : vec3<f32> = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.z, x_417.z, x_417.z)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat3;
  let x_427 : i32 = u_xlati11;
  let x_430 : i32 = u_xlati11;
  let x_434 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_427 + 3i) / 4i)][((x_430 + 3i) % 4i)];
  let x_436 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) + vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  u_xlat2.w = 1.0f;
  let x_442 : vec4<f32> = x_186.unity_SHAr;
  let x_443 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_442, x_443);
  let x_448 : vec4<f32> = x_186.unity_SHAg;
  let x_449 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_448, x_449);
  let x_454 : vec4<f32> = x_186.unity_SHAb;
  let x_455 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_454, x_455);
  let x_458 : vec4<f32> = u_xlat2;
  let x_460 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_458.y, x_458.z, x_458.z, x_458.x) * vec4<f32>(x_460.x, x_460.y, x_460.z, x_460.z));
  let x_465 : vec4<f32> = x_186.unity_SHBr;
  let x_466 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_465, x_466);
  let x_471 : vec4<f32> = x_186.unity_SHBg;
  let x_472 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_471, x_472);
  let x_477 : vec4<f32> = x_186.unity_SHBb;
  let x_478 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_477, x_478);
  let x_482 : f32 = u_xlat2.y;
  let x_484 : f32 = u_xlat2.y;
  u_xlat11.x = (x_482 * x_484);
  let x_488 : f32 = u_xlat2.x;
  let x_490 : f32 = u_xlat2.x;
  let x_493 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_488 * x_490) + -(x_493));
  let x_499 : vec4<f32> = x_186.unity_SHC;
  let x_501 : vec3<f32> = u_xlat11;
  let x_504 : vec3<f32> = u_xlat6;
  let x_505 : vec3<f32> = ((vec3<f32>(x_499.x, x_499.y, x_499.z) * vec3<f32>(x_501.x, x_501.x, x_501.x)) + x_504);
  let x_506 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_508 : vec4<f32> = u_xlat4;
  let x_510 : vec4<f32> = u_xlat5;
  let x_512 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) + vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat4;
  let x_517 : vec3<f32> = max(vec3<f32>(x_515.x, x_515.y, x_515.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_518 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_522 : vec4<f32> = u_xlat3;
  let x_523 : vec2<f32> = vec2<f32>(x_522.x, x_522.y);
  let x_525 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_523.x, x_523.y, x_525);
  let x_537 : vec3<f32> = txVec0;
  let x_539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_537.xy, x_537.z);
  u_xlat11.x = x_539;
  let x_543 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_543) + 1.0f);
  let x_547 : f32 = u_xlat11.x;
  let x_549 : f32 = x_249.x_MainLightShadowParams.x;
  let x_551 : f32 = u_xlat33;
  u_xlat11.x = ((x_547 * x_549) + x_551);
  let x_555 : f32 = u_xlat3.z;
  u_xlatb33 = (0.0f >= x_555);
  let x_559 : f32 = u_xlat3.z;
  u_xlatb1 = (x_559 >= 1.0f);
  let x_561 : bool = u_xlatb33;
  let x_562 : bool = u_xlatb1;
  u_xlatb33 = (x_561 | x_562);
  let x_564 : bool = u_xlatb33;
  if (x_564) {
    x_565 = 1.0f;
  } else {
    let x_570 : f32 = u_xlat11.x;
    x_565 = x_570;
  }
  let x_571 : f32 = x_565;
  u_xlat11.x = x_571;
  let x_573 : vec3<f32> = vs_TEXCOORD1;
  let x_576 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_578 : vec3<f32> = (x_573 + -(x_576));
  let x_579 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat3;
  let x_583 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(vec3<f32>(x_581.x, x_581.y, x_581.z), vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : f32 = u_xlat33;
  let x_588 : f32 = x_249.x_MainLightShadowParams.z;
  let x_591 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_586 * x_588) + x_591);
  let x_595 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_595, 0.0f, 1.0f);
  let x_600 : f32 = u_xlat11.x;
  u_xlat35 = (-(x_600) + 1.0f);
  let x_604 : f32 = u_xlat1.x;
  let x_605 : f32 = u_xlat35;
  let x_608 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_604 * x_605) + x_608);
  let x_618 : f32 = x_616.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_618 == -1.0f));
  let x_620 : bool = u_xlatb1;
  if (x_620) {
    let x_623 : vec3<f32> = vs_TEXCOORD1;
    let x_626 : vec4<f32> = x_616.x_MainLightWorldToLight[1i];
    let x_628 : vec2<f32> = (vec2<f32>(x_623.y, x_623.y) * vec2<f32>(x_626.x, x_626.y));
    let x_629 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_628.x, x_628.y, x_629.z, x_629.w);
    let x_632 : vec4<f32> = x_616.x_MainLightWorldToLight[0i];
    let x_634 : vec3<f32> = vs_TEXCOORD1;
    let x_637 : vec4<f32> = u_xlat3;
    let x_639 : vec2<f32> = ((vec2<f32>(x_632.x, x_632.y) * vec2<f32>(x_634.x, x_634.x)) + vec2<f32>(x_637.x, x_637.y));
    let x_640 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_639.x, x_639.y, x_640.z, x_640.w);
    let x_643 : vec4<f32> = x_616.x_MainLightWorldToLight[2i];
    let x_645 : vec3<f32> = vs_TEXCOORD1;
    let x_648 : vec4<f32> = u_xlat3;
    let x_650 : vec2<f32> = ((vec2<f32>(x_643.x, x_643.y) * vec2<f32>(x_645.z, x_645.z)) + vec2<f32>(x_648.x, x_648.y));
    let x_651 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
    let x_653 : vec4<f32> = u_xlat3;
    let x_656 : vec4<f32> = x_616.x_MainLightWorldToLight[3i];
    let x_658 : vec2<f32> = (vec2<f32>(x_653.x, x_653.y) + vec2<f32>(x_656.x, x_656.y));
    let x_659 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
    let x_661 : vec4<f32> = u_xlat3;
    let x_665 : vec2<f32> = ((vec2<f32>(x_661.x, x_661.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_666 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
    let x_673 : vec4<f32> = u_xlat3;
    let x_676 : f32 = x_44.x_GlobalMipBias.x;
    let x_677 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_673.x, x_673.y), x_676);
    u_xlat3 = x_677;
    let x_682 : f32 = x_616.x_MainLightCookieTextureFormat;
    let x_684 : f32 = x_616.x_MainLightCookieTextureFormat;
    let x_686 : f32 = x_616.x_MainLightCookieTextureFormat;
    let x_688 : f32 = x_616.x_MainLightCookieTextureFormat;
    let x_689 : vec4<f32> = vec4<f32>(x_682, x_684, x_686, x_688);
    let x_696 : vec4<bool> = (vec4<f32>(x_689.x, x_689.y, x_689.z, x_689.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_696.x, x_696.y);
    let x_699 : bool = u_xlatb5.y;
    if (x_699) {
      let x_704 : f32 = u_xlat3.w;
      x_700 = x_704;
    } else {
      let x_707 : f32 = u_xlat3.x;
      x_700 = x_707;
    }
    let x_708 : f32 = x_700;
    u_xlat1.x = x_708;
    let x_711 : bool = u_xlatb5.x;
    if (x_711) {
      let x_715 : vec4<f32> = u_xlat3;
      x_712 = vec3<f32>(x_715.x, x_715.y, x_715.z);
    } else {
      let x_718 : vec4<f32> = u_xlat1;
      x_712 = vec3<f32>(x_718.x, x_718.x, x_718.x);
    }
    let x_720 : vec3<f32> = x_712;
    let x_721 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_727 : vec4<f32> = u_xlat3;
  let x_730 : vec4<f32> = x_44.x_MainLightColor;
  let x_732 : vec3<f32> = (vec3<f32>(x_727.x, x_727.y, x_727.z) * vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_736 : f32 = u_xlat11.x;
  let x_738 : f32 = x_186.unity_LightData.z;
  u_xlat11.x = (x_736 * x_738);
  let x_741 : vec3<f32> = u_xlat11;
  let x_743 : vec4<f32> = u_xlat3;
  let x_745 : vec3<f32> = (vec3<f32>(x_741.x, x_741.x, x_741.x) * vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_746 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec4<f32> = u_xlat2;
  let x_751 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat11.x = dot(vec3<f32>(x_748.x, x_748.y, x_748.z), vec3<f32>(x_751.x, x_751.y, x_751.z));
  let x_756 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_756, 0.0f, 1.0f);
  let x_759 : vec3<f32> = u_xlat11;
  let x_761 : vec4<f32> = u_xlat3;
  let x_763 : vec3<f32> = (vec3<f32>(x_759.x, x_759.x, x_759.x) * vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat1;
  let x_768 : vec4<f32> = u_xlat3;
  let x_770 : vec3<f32> = (vec3<f32>(x_766.y, x_766.z, x_766.w) * vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec4<f32> = u_xlat0;
  let x_775 : vec4<f32> = u_xlat3;
  let x_777 : vec3<f32> = (vec3<f32>(x_773.x, x_773.x, x_773.x) * vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_781 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_783 : f32 = x_186.unity_LightData.y;
  u_xlat11.x = min(x_781, x_783);
  let x_787 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_787));
  let x_790 : f32 = u_xlat33;
  let x_793 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_796 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat33 = ((x_790 * x_793) + x_796);
  let x_798 : f32 = u_xlat33;
  u_xlat33 = clamp(x_798, 0.0f, 1.0f);
  let x_801 : f32 = x_616.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_803 : f32 = x_616.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_805 : f32 = x_616.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_807 : f32 = x_616.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_808 : vec4<f32> = vec4<f32>(x_801, x_803, x_805, x_807);
  let x_814 : vec4<bool> = (vec4<f32>(x_808.x, x_808.y, x_808.z, x_808.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_814.x, x_814.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_826 : u32 = u_xlatu_loop_1;
    let x_827 : u32 = u_xlatu11;
    if ((x_826 < x_827)) {
    } else {
      break;
    }
    let x_830 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_830 >> 2u);
    let x_833 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_833 & 3u));
    let x_836 : u32 = u_xlatu35;
    let x_839 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_836)];
    let x_849 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_854 : vec4<u32> = indexable[x_849];
    u_xlat35 = dot(x_839, bitcast<vec4<f32>>(x_854));
    let x_858 : f32 = u_xlat35;
    u_xlati35 = i32(x_858);
    let x_861 : vec3<f32> = vs_TEXCOORD1;
    let x_872 : i32 = u_xlati35;
    let x_874 : vec4<f32> = x_871.x_AdditionalLightsPosition[x_872];
    let x_877 : i32 = u_xlati35;
    let x_879 : vec4<f32> = x_871.x_AdditionalLightsPosition[x_877];
    u_xlat7 = ((-(x_861) * vec3<f32>(x_874.w, x_874.w, x_874.w)) + vec3<f32>(x_879.x, x_879.y, x_879.z));
    let x_883 : vec3<f32> = u_xlat7;
    let x_884 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_883, x_884);
    let x_886 : f32 = u_xlat36;
    u_xlat36 = max(x_886, 0.00006103515625f);
    let x_890 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_890);
    let x_892 : f32 = u_xlat37;
    let x_894 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_892, x_892, x_892) * x_894);
    let x_896 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_896);
    let x_898 : f32 = u_xlat36;
    let x_899 : i32 = u_xlati35;
    let x_901 : f32 = x_871.x_AdditionalLightsAttenuation[x_899].x;
    u_xlat36 = (x_898 * x_901);
    let x_903 : f32 = u_xlat36;
    let x_905 : f32 = u_xlat36;
    u_xlat36 = ((-(x_903) * x_905) + 1.0f);
    let x_908 : f32 = u_xlat36;
    u_xlat36 = max(x_908, 0.0f);
    let x_910 : f32 = u_xlat36;
    let x_911 : f32 = u_xlat36;
    u_xlat36 = (x_910 * x_911);
    let x_913 : f32 = u_xlat36;
    let x_914 : f32 = u_xlat37;
    u_xlat36 = (x_913 * x_914);
    let x_916 : i32 = u_xlati35;
    let x_918 : vec4<f32> = x_871.x_AdditionalLightsSpotDir[x_916];
    let x_920 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_918.x, x_918.y, x_918.z), x_920);
    let x_922 : f32 = u_xlat37;
    let x_923 : i32 = u_xlati35;
    let x_925 : f32 = x_871.x_AdditionalLightsAttenuation[x_923].z;
    let x_927 : i32 = u_xlati35;
    let x_929 : f32 = x_871.x_AdditionalLightsAttenuation[x_927].w;
    u_xlat37 = ((x_922 * x_925) + x_929);
    let x_931 : f32 = u_xlat37;
    u_xlat37 = clamp(x_931, 0.0f, 1.0f);
    let x_933 : f32 = u_xlat37;
    let x_934 : f32 = u_xlat37;
    u_xlat37 = (x_933 * x_934);
    let x_936 : f32 = u_xlat36;
    let x_937 : f32 = u_xlat37;
    u_xlat36 = (x_936 * x_937);
    let x_941 : i32 = u_xlati35;
    let x_943 : f32 = x_249.x_AdditionalShadowParams[x_941].w;
    u_xlati37 = i32(x_943);
    let x_946 : i32 = u_xlati37;
    u_xlatb27 = (x_946 >= 0i);
    let x_948 : bool = u_xlatb27;
    if (x_948) {
      let x_952 : i32 = u_xlati35;
      let x_954 : f32 = x_249.x_AdditionalShadowParams[x_952].z;
      u_xlatb27 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_954, x_954, x_954, x_954))));
      let x_958 : bool = u_xlatb27;
      if (x_958) {
        let x_962 : vec3<f32> = u_xlat7;
        let x_965 : vec3<f32> = u_xlat7;
        let x_968 : vec4<bool> = (abs(vec4<f32>(x_962.z, x_962.z, x_962.y, x_962.z)) >= abs(vec4<f32>(x_965.x, x_965.y, x_965.x, x_965.x)));
        let x_970 : vec3<bool> = vec3<bool>(x_968.x, x_968.y, x_968.z);
        let x_971 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_970.x, x_970.y, x_970.z, x_971.w);
        let x_974 : bool = u_xlatb8.y;
        let x_976 : bool = u_xlatb8.x;
        u_xlatb27 = (x_974 & x_976);
        let x_978 : vec3<f32> = u_xlat7;
        let x_981 : vec4<bool> = (-(vec4<f32>(x_978.z, x_978.y, x_978.z, x_978.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_982 : vec3<bool> = vec3<bool>(x_981.x, x_981.y, x_981.w);
        let x_983 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_982.x, x_982.y, x_983.z, x_982.z);
        let x_987 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_987);
        let x_992 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_992);
        let x_997 : bool = u_xlatb8.w;
        u_xlat38 = select(0.0f, 1.0f, x_997);
        let x_1000 : bool = u_xlatb8.z;
        if (x_1000) {
          let x_1005 : f32 = u_xlat8.y;
          x_1001 = x_1005;
        } else {
          let x_1007 : f32 = u_xlat38;
          x_1001 = x_1007;
        }
        let x_1008 : f32 = x_1001;
        u_xlat38 = x_1008;
        let x_1011 : bool = u_xlatb27;
        if (x_1011) {
          let x_1016 : f32 = u_xlat8.x;
          x_1012 = x_1016;
        } else {
          let x_1018 : f32 = u_xlat38;
          x_1012 = x_1018;
        }
        let x_1019 : f32 = x_1012;
        u_xlat27.x = x_1019;
        let x_1021 : i32 = u_xlati35;
        let x_1023 : f32 = x_249.x_AdditionalShadowParams[x_1021].w;
        u_xlat38 = trunc(x_1023);
        let x_1026 : f32 = u_xlat27.x;
        let x_1027 : f32 = u_xlat38;
        u_xlat27.x = (x_1026 + x_1027);
        let x_1031 : f32 = u_xlat27.x;
        u_xlati37 = i32(x_1031);
      }
      let x_1033 : i32 = u_xlati37;
      u_xlati37 = (x_1033 << bitcast<u32>(2i));
      let x_1035 : vec3<f32> = vs_TEXCOORD1;
      let x_1038 : i32 = u_xlati37;
      let x_1041 : i32 = u_xlati37;
      let x_1045 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1038 + 1i) / 4i)][((x_1041 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1035.y, x_1035.y, x_1035.y, x_1035.y) * x_1045);
      let x_1047 : i32 = u_xlati37;
      let x_1049 : i32 = u_xlati37;
      let x_1052 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_1047 / 4i)][(x_1049 % 4i)];
      let x_1053 : vec3<f32> = vs_TEXCOORD1;
      let x_1056 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1052 * vec4<f32>(x_1053.x, x_1053.x, x_1053.x, x_1053.x)) + x_1056);
      let x_1058 : i32 = u_xlati37;
      let x_1061 : i32 = u_xlati37;
      let x_1065 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1058 + 2i) / 4i)][((x_1061 + 2i) % 4i)];
      let x_1066 : vec3<f32> = vs_TEXCOORD1;
      let x_1069 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1065 * vec4<f32>(x_1066.z, x_1066.z, x_1066.z, x_1066.z)) + x_1069);
      let x_1071 : vec4<f32> = u_xlat8;
      let x_1072 : i32 = u_xlati37;
      let x_1075 : i32 = u_xlati37;
      let x_1079 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1072 + 3i) / 4i)][((x_1075 + 3i) % 4i)];
      u_xlat8 = (x_1071 + x_1079);
      let x_1081 : vec4<f32> = u_xlat8;
      let x_1083 : vec4<f32> = u_xlat8;
      let x_1085 : vec3<f32> = (vec3<f32>(x_1081.x, x_1081.y, x_1081.z) / vec3<f32>(x_1083.w, x_1083.w, x_1083.w));
      let x_1086 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
      let x_1089 : vec4<f32> = u_xlat8;
      let x_1090 : vec2<f32> = vec2<f32>(x_1089.x, x_1089.y);
      let x_1092 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_1090.x, x_1090.y, x_1092);
      let x_1100 : vec3<f32> = txVec1;
      let x_1102 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1100.xy, x_1100.z);
      u_xlat37 = x_1102;
      let x_1103 : i32 = u_xlati35;
      let x_1105 : f32 = x_249.x_AdditionalShadowParams[x_1103].x;
      u_xlat27.x = (1.0f + -(x_1105));
      let x_1109 : f32 = u_xlat37;
      let x_1110 : i32 = u_xlati35;
      let x_1112 : f32 = x_249.x_AdditionalShadowParams[x_1110].x;
      let x_1115 : f32 = u_xlat27.x;
      u_xlat37 = ((x_1109 * x_1112) + x_1115);
      let x_1118 : f32 = u_xlat8.z;
      u_xlatb27 = (0.0f >= x_1118);
      let x_1122 : f32 = u_xlat8.z;
      u_xlatb38 = (x_1122 >= 1.0f);
      let x_1124 : bool = u_xlatb38;
      let x_1125 : bool = u_xlatb27;
      u_xlatb27 = (x_1124 | x_1125);
      let x_1127 : bool = u_xlatb27;
      let x_1128 : f32 = u_xlat37;
      u_xlat37 = select(x_1128, 1.0f, x_1127);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_1131 : f32 = u_xlat37;
    u_xlat27.x = (-(x_1131) + 1.0f);
    let x_1135 : f32 = u_xlat33;
    let x_1137 : f32 = u_xlat27.x;
    let x_1139 : f32 = u_xlat37;
    u_xlat37 = ((x_1135 * x_1137) + x_1139);
    let x_1142 : i32 = u_xlati35;
    u_xlati27 = (1i << bitcast<u32>((x_1142 & 31i)));
    let x_1146 : i32 = u_xlati27;
    let x_1149 : f32 = x_616.x_AdditionalLightsCookieEnableBits;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_1146) & bitcast<u32>(x_1149)));
    let x_1153 : i32 = u_xlati27;
    if ((x_1153 != 0i)) {
      let x_1157 : i32 = u_xlati35;
      let x_1159 : f32 = x_616.x_AdditionalLightsLightTypes[x_1157].el;
      u_xlati27 = i32(x_1159);
      let x_1162 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_1162 != 0i));
      let x_1166 : i32 = u_xlati35;
      u_xlati39 = (x_1166 << bitcast<u32>(2i));
      let x_1168 : i32 = u_xlati38;
      if ((x_1168 != 0i)) {
        let x_1172 : vec3<f32> = vs_TEXCOORD1;
        let x_1174 : i32 = u_xlati39;
        let x_1177 : i32 = u_xlati39;
        let x_1181 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1174 + 1i) / 4i)][((x_1177 + 1i) % 4i)];
        let x_1183 : vec3<f32> = (vec3<f32>(x_1172.y, x_1172.y, x_1172.y) * vec3<f32>(x_1181.x, x_1181.y, x_1181.w));
        let x_1184 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
        let x_1186 : i32 = u_xlati39;
        let x_1188 : i32 = u_xlati39;
        let x_1191 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[(x_1186 / 4i)][(x_1188 % 4i)];
        let x_1193 : vec3<f32> = vs_TEXCOORD1;
        let x_1196 : vec4<f32> = u_xlat8;
        let x_1198 : vec3<f32> = ((vec3<f32>(x_1191.x, x_1191.y, x_1191.w) * vec3<f32>(x_1193.x, x_1193.x, x_1193.x)) + vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
        let x_1199 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
        let x_1201 : i32 = u_xlati39;
        let x_1204 : i32 = u_xlati39;
        let x_1208 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1201 + 2i) / 4i)][((x_1204 + 2i) % 4i)];
        let x_1210 : vec3<f32> = vs_TEXCOORD1;
        let x_1213 : vec4<f32> = u_xlat8;
        let x_1215 : vec3<f32> = ((vec3<f32>(x_1208.x, x_1208.y, x_1208.w) * vec3<f32>(x_1210.z, x_1210.z, x_1210.z)) + vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
        let x_1216 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
        let x_1218 : vec4<f32> = u_xlat8;
        let x_1220 : i32 = u_xlati39;
        let x_1223 : i32 = u_xlati39;
        let x_1227 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1220 + 3i) / 4i)][((x_1223 + 3i) % 4i)];
        let x_1229 : vec3<f32> = (vec3<f32>(x_1218.x, x_1218.y, x_1218.z) + vec3<f32>(x_1227.x, x_1227.y, x_1227.w));
        let x_1230 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
        let x_1232 : vec4<f32> = u_xlat8;
        let x_1234 : vec4<f32> = u_xlat8;
        let x_1236 : vec2<f32> = (vec2<f32>(x_1232.x, x_1232.y) / vec2<f32>(x_1234.z, x_1234.z));
        let x_1237 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
        let x_1239 : vec4<f32> = u_xlat8;
        let x_1242 : vec2<f32> = ((vec2<f32>(x_1239.x, x_1239.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1243 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1242.x, x_1242.y, x_1243.z, x_1243.w);
        let x_1245 : vec4<f32> = u_xlat8;
        let x_1249 : vec2<f32> = clamp(vec2<f32>(x_1245.x, x_1245.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1250 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1249.x, x_1249.y, x_1250.z, x_1250.w);
        let x_1252 : i32 = u_xlati35;
        let x_1254 : vec4<f32> = x_616.x_AdditionalLightsCookieAtlasUVRects[x_1252];
        let x_1256 : vec4<f32> = u_xlat8;
        let x_1259 : i32 = u_xlati35;
        let x_1261 : vec4<f32> = x_616.x_AdditionalLightsCookieAtlasUVRects[x_1259];
        let x_1263 : vec2<f32> = ((vec2<f32>(x_1254.x, x_1254.y) * vec2<f32>(x_1256.x, x_1256.y)) + vec2<f32>(x_1261.z, x_1261.w));
        let x_1264 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1263.x, x_1263.y, x_1264.z, x_1264.w);
      } else {
        let x_1267 : i32 = u_xlati27;
        u_xlatb27 = (x_1267 == 1i);
        let x_1269 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_1269);
        let x_1271 : i32 = u_xlati27;
        if ((x_1271 != 0i)) {
          let x_1275 : vec3<f32> = vs_TEXCOORD1;
          let x_1277 : i32 = u_xlati39;
          let x_1280 : i32 = u_xlati39;
          let x_1284 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1277 + 1i) / 4i)][((x_1280 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_1275.y, x_1275.y) * vec2<f32>(x_1284.x, x_1284.y));
          let x_1287 : i32 = u_xlati39;
          let x_1289 : i32 = u_xlati39;
          let x_1292 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[(x_1287 / 4i)][(x_1289 % 4i)];
          let x_1294 : vec3<f32> = vs_TEXCOORD1;
          let x_1297 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1292.x, x_1292.y) * vec2<f32>(x_1294.x, x_1294.x)) + x_1297);
          let x_1299 : i32 = u_xlati39;
          let x_1302 : i32 = u_xlati39;
          let x_1306 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1299 + 2i) / 4i)][((x_1302 + 2i) % 4i)];
          let x_1308 : vec3<f32> = vs_TEXCOORD1;
          let x_1311 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1306.x, x_1306.y) * vec2<f32>(x_1308.z, x_1308.z)) + x_1311);
          let x_1313 : vec2<f32> = u_xlat27;
          let x_1314 : i32 = u_xlati39;
          let x_1317 : i32 = u_xlati39;
          let x_1321 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1314 + 3i) / 4i)][((x_1317 + 3i) % 4i)];
          u_xlat27 = (x_1313 + vec2<f32>(x_1321.x, x_1321.y));
          let x_1324 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1324 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1327 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_1327);
          let x_1329 : i32 = u_xlati35;
          let x_1331 : vec4<f32> = x_616.x_AdditionalLightsCookieAtlasUVRects[x_1329];
          let x_1333 : vec2<f32> = u_xlat27;
          let x_1335 : i32 = u_xlati35;
          let x_1337 : vec4<f32> = x_616.x_AdditionalLightsCookieAtlasUVRects[x_1335];
          let x_1339 : vec2<f32> = ((vec2<f32>(x_1331.x, x_1331.y) * x_1333) + vec2<f32>(x_1337.z, x_1337.w));
          let x_1340 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1339.x, x_1339.y, x_1340.z, x_1340.w);
        } else {
          let x_1344 : vec3<f32> = vs_TEXCOORD1;
          let x_1346 : i32 = u_xlati39;
          let x_1349 : i32 = u_xlati39;
          let x_1353 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1346 + 1i) / 4i)][((x_1349 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1344.y, x_1344.y, x_1344.y, x_1344.y) * x_1353);
          let x_1355 : i32 = u_xlati39;
          let x_1357 : i32 = u_xlati39;
          let x_1360 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[(x_1355 / 4i)][(x_1357 % 4i)];
          let x_1361 : vec3<f32> = vs_TEXCOORD1;
          let x_1364 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1360 * vec4<f32>(x_1361.x, x_1361.x, x_1361.x, x_1361.x)) + x_1364);
          let x_1366 : i32 = u_xlati39;
          let x_1369 : i32 = u_xlati39;
          let x_1373 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1366 + 2i) / 4i)][((x_1369 + 2i) % 4i)];
          let x_1374 : vec3<f32> = vs_TEXCOORD1;
          let x_1377 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1373 * vec4<f32>(x_1374.z, x_1374.z, x_1374.z, x_1374.z)) + x_1377);
          let x_1379 : vec4<f32> = u_xlat9;
          let x_1380 : i32 = u_xlati39;
          let x_1383 : i32 = u_xlati39;
          let x_1387 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1380 + 3i) / 4i)][((x_1383 + 3i) % 4i)];
          u_xlat9 = (x_1379 + x_1387);
          let x_1389 : vec4<f32> = u_xlat9;
          let x_1391 : vec4<f32> = u_xlat9;
          let x_1393 : vec3<f32> = (vec3<f32>(x_1389.x, x_1389.y, x_1389.z) / vec3<f32>(x_1391.w, x_1391.w, x_1391.w));
          let x_1394 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
          let x_1396 : vec4<f32> = u_xlat9;
          let x_1398 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1396.x, x_1396.y, x_1396.z), vec3<f32>(x_1398.x, x_1398.y, x_1398.z));
          let x_1403 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1403);
          let x_1406 : vec2<f32> = u_xlat27;
          let x_1408 : vec4<f32> = u_xlat9;
          let x_1410 : vec3<f32> = (vec3<f32>(x_1406.x, x_1406.x, x_1406.x) * vec3<f32>(x_1408.x, x_1408.y, x_1408.z));
          let x_1411 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1410.x, x_1410.y, x_1410.z, x_1411.w);
          let x_1413 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1413.x, x_1413.y, x_1413.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1420 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1420, 0.00000099999999747524f);
          let x_1425 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1425);
          let x_1429 : vec2<f32> = u_xlat27;
          let x_1431 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1429.x, x_1429.x, x_1429.x) * vec3<f32>(x_1431.z, x_1431.x, x_1431.y));
          let x_1435 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1435);
          let x_1439 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1439, 0.0f, 1.0f);
          let x_1443 : vec3<f32> = u_xlat10;
          let x_1445 : vec4<bool> = (vec4<f32>(x_1443.y, x_1443.z, x_1443.y, x_1443.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1445.x, x_1445.y);
          let x_1449 : bool = u_xlatb30.x;
          if (x_1449) {
            let x_1454 : f32 = u_xlat10.x;
            x_1450 = x_1454;
          } else {
            let x_1457 : f32 = u_xlat10.x;
            x_1450 = -(x_1457);
          }
          let x_1459 : f32 = x_1450;
          u_xlat30.x = x_1459;
          let x_1462 : bool = u_xlatb30.y;
          if (x_1462) {
            let x_1467 : f32 = u_xlat10.x;
            x_1463 = x_1467;
          } else {
            let x_1470 : f32 = u_xlat10.x;
            x_1463 = -(x_1470);
          }
          let x_1472 : f32 = x_1463;
          u_xlat30.y = x_1472;
          let x_1474 : vec4<f32> = u_xlat9;
          let x_1476 : vec2<f32> = u_xlat27;
          let x_1479 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1474.x, x_1474.y) * vec2<f32>(x_1476.x, x_1476.x)) + x_1479);
          let x_1481 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1481 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1484 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1484, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1488 : i32 = u_xlati35;
          let x_1490 : vec4<f32> = x_616.x_AdditionalLightsCookieAtlasUVRects[x_1488];
          let x_1492 : vec2<f32> = u_xlat27;
          let x_1494 : i32 = u_xlati35;
          let x_1496 : vec4<f32> = x_616.x_AdditionalLightsCookieAtlasUVRects[x_1494];
          let x_1498 : vec2<f32> = ((vec2<f32>(x_1490.x, x_1490.y) * x_1492) + vec2<f32>(x_1496.z, x_1496.w));
          let x_1499 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1498.x, x_1498.y, x_1499.z, x_1499.w);
        }
      }
      let x_1506 : vec4<f32> = u_xlat8;
      let x_1508 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1506.x, x_1506.y), 0.0f);
      u_xlat8 = x_1508;
      let x_1510 : bool = u_xlatb5.y;
      if (x_1510) {
        let x_1515 : f32 = u_xlat8.w;
        x_1511 = x_1515;
      } else {
        let x_1518 : f32 = u_xlat8.x;
        x_1511 = x_1518;
      }
      let x_1519 : f32 = x_1511;
      u_xlat27.x = x_1519;
      let x_1522 : bool = u_xlatb5.x;
      if (x_1522) {
        let x_1526 : vec4<f32> = u_xlat8;
        x_1523 = vec3<f32>(x_1526.x, x_1526.y, x_1526.z);
      } else {
        let x_1529 : vec2<f32> = u_xlat27;
        x_1523 = vec3<f32>(x_1529.x, x_1529.x, x_1529.x);
      }
      let x_1531 : vec3<f32> = x_1523;
      let x_1532 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1531.x, x_1531.y, x_1531.z, x_1532.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1538 : vec4<f32> = u_xlat8;
    let x_1540 : i32 = u_xlati35;
    let x_1542 : vec4<f32> = x_871.x_AdditionalLightsColor[x_1540];
    let x_1544 : vec3<f32> = (vec3<f32>(x_1538.x, x_1538.y, x_1538.z) * vec3<f32>(x_1542.x, x_1542.y, x_1542.z));
    let x_1545 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1544.x, x_1544.y, x_1544.z, x_1545.w);
    let x_1547 : f32 = u_xlat36;
    let x_1548 : f32 = u_xlat37;
    u_xlat35 = (x_1547 * x_1548);
    let x_1550 : f32 = u_xlat35;
    let x_1552 : vec4<f32> = u_xlat8;
    let x_1554 : vec3<f32> = (vec3<f32>(x_1550, x_1550, x_1550) * vec3<f32>(x_1552.x, x_1552.y, x_1552.z));
    let x_1555 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1554.x, x_1554.y, x_1554.z, x_1555.w);
    let x_1557 : vec4<f32> = u_xlat2;
    let x_1559 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1557.x, x_1557.y, x_1557.z), x_1559);
    let x_1561 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1561, 0.0f, 1.0f);
    let x_1563 : f32 = u_xlat35;
    let x_1565 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1563, x_1563, x_1563) * vec3<f32>(x_1565.x, x_1565.y, x_1565.z));
    let x_1568 : vec4<f32> = u_xlat1;
    let x_1570 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1568.y, x_1568.z, x_1568.w) * x_1570);
    let x_1572 : vec3<f32> = u_xlat7;
    let x_1573 : vec4<f32> = u_xlat0;
    let x_1576 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1572 * vec3<f32>(x_1573.x, x_1573.x, x_1573.x)) + x_1576);

    continuing {
      let x_1578 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1578 + bitcast<u32>(1i));
    }
  }
  let x_1580 : vec4<f32> = u_xlat4;
  let x_1582 : vec4<f32> = u_xlat1;
  let x_1585 : vec4<f32> = u_xlat3;
  let x_1587 : vec3<f32> = ((vec3<f32>(x_1580.x, x_1580.y, x_1580.z) * vec3<f32>(x_1582.y, x_1582.z, x_1582.w)) + vec3<f32>(x_1585.x, x_1585.y, x_1585.z));
  let x_1588 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1588.w);
  let x_1592 : vec3<f32> = u_xlat6;
  let x_1593 : vec4<f32> = u_xlat1;
  let x_1595 : vec3<f32> = (x_1592 + vec3<f32>(x_1593.x, x_1593.y, x_1593.z));
  let x_1596 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1595.x, x_1595.y, x_1595.z, x_1596.w);
  let x_1599 : f32 = x_57.x_Surface;
  u_xlatb11 = (x_1599 == 1.0f);
  let x_1601 : bool = u_xlatb11;
  let x_1602 : bool = u_xlatb22;
  u_xlatb11 = (x_1601 | x_1602);
  let x_1604 : bool = u_xlatb11;
  if (x_1604) {
    let x_1609 : f32 = u_xlat0.x;
    x_1605 = x_1609;
  } else {
    x_1605 = 1.0f;
  }
  let x_1611 : f32 = x_1605;
  SV_Target0.w = x_1611;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


