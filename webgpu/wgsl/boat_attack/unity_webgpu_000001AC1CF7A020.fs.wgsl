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

@group(1) @binding(1) var<uniform> x_864 : AdditionalLights;

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
  var x_994 : f32;
  var x_1005 : f32;
  var txVec1 : vec3<f32>;
  var x_1443 : f32;
  var x_1456 : f32;
  var x_1504 : f32;
  var x_1516 : vec3<f32>;
  var x_1594 : f32;
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
  let x_774 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_776 : f32 = x_186.unity_LightData.y;
  u_xlat11.x = min(x_774, x_776);
  let x_780 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_780));
  let x_783 : f32 = u_xlat33;
  let x_786 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_789 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat33 = ((x_783 * x_786) + x_789);
  let x_791 : f32 = u_xlat33;
  u_xlat33 = clamp(x_791, 0.0f, 1.0f);
  let x_794 : f32 = x_616.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_796 : f32 = x_616.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_798 : f32 = x_616.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_800 : f32 = x_616.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_801 : vec4<f32> = vec4<f32>(x_794, x_796, x_798, x_800);
  let x_807 : vec4<bool> = (vec4<f32>(x_801.x, x_801.y, x_801.z, x_801.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_807.x, x_807.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_819 : u32 = u_xlatu_loop_1;
    let x_820 : u32 = u_xlatu11;
    if ((x_819 < x_820)) {
    } else {
      break;
    }
    let x_823 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_823 >> 2u);
    let x_826 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_826 & 3u));
    let x_829 : u32 = u_xlatu35;
    let x_832 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_829)];
    let x_842 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_847 : vec4<u32> = indexable[x_842];
    u_xlat35 = dot(x_832, bitcast<vec4<f32>>(x_847));
    let x_851 : f32 = u_xlat35;
    u_xlati35 = i32(x_851);
    let x_854 : vec3<f32> = vs_TEXCOORD1;
    let x_865 : i32 = u_xlati35;
    let x_867 : vec4<f32> = x_864.x_AdditionalLightsPosition[x_865];
    let x_870 : i32 = u_xlati35;
    let x_872 : vec4<f32> = x_864.x_AdditionalLightsPosition[x_870];
    u_xlat7 = ((-(x_854) * vec3<f32>(x_867.w, x_867.w, x_867.w)) + vec3<f32>(x_872.x, x_872.y, x_872.z));
    let x_876 : vec3<f32> = u_xlat7;
    let x_877 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_876, x_877);
    let x_879 : f32 = u_xlat36;
    u_xlat36 = max(x_879, 0.00006103515625f);
    let x_883 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_883);
    let x_885 : f32 = u_xlat37;
    let x_887 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_885, x_885, x_885) * x_887);
    let x_889 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_889);
    let x_891 : f32 = u_xlat36;
    let x_892 : i32 = u_xlati35;
    let x_894 : f32 = x_864.x_AdditionalLightsAttenuation[x_892].x;
    u_xlat36 = (x_891 * x_894);
    let x_896 : f32 = u_xlat36;
    let x_898 : f32 = u_xlat36;
    u_xlat36 = ((-(x_896) * x_898) + 1.0f);
    let x_901 : f32 = u_xlat36;
    u_xlat36 = max(x_901, 0.0f);
    let x_903 : f32 = u_xlat36;
    let x_904 : f32 = u_xlat36;
    u_xlat36 = (x_903 * x_904);
    let x_906 : f32 = u_xlat36;
    let x_907 : f32 = u_xlat37;
    u_xlat36 = (x_906 * x_907);
    let x_909 : i32 = u_xlati35;
    let x_911 : vec4<f32> = x_864.x_AdditionalLightsSpotDir[x_909];
    let x_913 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_911.x, x_911.y, x_911.z), x_913);
    let x_915 : f32 = u_xlat37;
    let x_916 : i32 = u_xlati35;
    let x_918 : f32 = x_864.x_AdditionalLightsAttenuation[x_916].z;
    let x_920 : i32 = u_xlati35;
    let x_922 : f32 = x_864.x_AdditionalLightsAttenuation[x_920].w;
    u_xlat37 = ((x_915 * x_918) + x_922);
    let x_924 : f32 = u_xlat37;
    u_xlat37 = clamp(x_924, 0.0f, 1.0f);
    let x_926 : f32 = u_xlat37;
    let x_927 : f32 = u_xlat37;
    u_xlat37 = (x_926 * x_927);
    let x_929 : f32 = u_xlat36;
    let x_930 : f32 = u_xlat37;
    u_xlat36 = (x_929 * x_930);
    let x_934 : i32 = u_xlati35;
    let x_936 : f32 = x_249.x_AdditionalShadowParams[x_934].w;
    u_xlati37 = i32(x_936);
    let x_939 : i32 = u_xlati37;
    u_xlatb27 = (x_939 >= 0i);
    let x_941 : bool = u_xlatb27;
    if (x_941) {
      let x_945 : i32 = u_xlati35;
      let x_947 : f32 = x_249.x_AdditionalShadowParams[x_945].z;
      u_xlatb27 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_947, x_947, x_947, x_947))));
      let x_951 : bool = u_xlatb27;
      if (x_951) {
        let x_955 : vec3<f32> = u_xlat7;
        let x_958 : vec3<f32> = u_xlat7;
        let x_961 : vec4<bool> = (abs(vec4<f32>(x_955.z, x_955.z, x_955.y, x_955.z)) >= abs(vec4<f32>(x_958.x, x_958.y, x_958.x, x_958.x)));
        let x_963 : vec3<bool> = vec3<bool>(x_961.x, x_961.y, x_961.z);
        let x_964 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_963.x, x_963.y, x_963.z, x_964.w);
        let x_967 : bool = u_xlatb8.y;
        let x_969 : bool = u_xlatb8.x;
        u_xlatb27 = (x_967 & x_969);
        let x_971 : vec3<f32> = u_xlat7;
        let x_974 : vec4<bool> = (-(vec4<f32>(x_971.z, x_971.y, x_971.z, x_971.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_975 : vec3<bool> = vec3<bool>(x_974.x, x_974.y, x_974.w);
        let x_976 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_975.x, x_975.y, x_976.z, x_975.z);
        let x_980 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_980);
        let x_985 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_985);
        let x_990 : bool = u_xlatb8.w;
        u_xlat38 = select(0.0f, 1.0f, x_990);
        let x_993 : bool = u_xlatb8.z;
        if (x_993) {
          let x_998 : f32 = u_xlat8.y;
          x_994 = x_998;
        } else {
          let x_1000 : f32 = u_xlat38;
          x_994 = x_1000;
        }
        let x_1001 : f32 = x_994;
        u_xlat38 = x_1001;
        let x_1004 : bool = u_xlatb27;
        if (x_1004) {
          let x_1009 : f32 = u_xlat8.x;
          x_1005 = x_1009;
        } else {
          let x_1011 : f32 = u_xlat38;
          x_1005 = x_1011;
        }
        let x_1012 : f32 = x_1005;
        u_xlat27.x = x_1012;
        let x_1014 : i32 = u_xlati35;
        let x_1016 : f32 = x_249.x_AdditionalShadowParams[x_1014].w;
        u_xlat38 = trunc(x_1016);
        let x_1019 : f32 = u_xlat27.x;
        let x_1020 : f32 = u_xlat38;
        u_xlat27.x = (x_1019 + x_1020);
        let x_1024 : f32 = u_xlat27.x;
        u_xlati37 = i32(x_1024);
      }
      let x_1026 : i32 = u_xlati37;
      u_xlati37 = (x_1026 << bitcast<u32>(2i));
      let x_1028 : vec3<f32> = vs_TEXCOORD1;
      let x_1031 : i32 = u_xlati37;
      let x_1034 : i32 = u_xlati37;
      let x_1038 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1031 + 1i) / 4i)][((x_1034 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1028.y, x_1028.y, x_1028.y, x_1028.y) * x_1038);
      let x_1040 : i32 = u_xlati37;
      let x_1042 : i32 = u_xlati37;
      let x_1045 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_1040 / 4i)][(x_1042 % 4i)];
      let x_1046 : vec3<f32> = vs_TEXCOORD1;
      let x_1049 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1045 * vec4<f32>(x_1046.x, x_1046.x, x_1046.x, x_1046.x)) + x_1049);
      let x_1051 : i32 = u_xlati37;
      let x_1054 : i32 = u_xlati37;
      let x_1058 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1051 + 2i) / 4i)][((x_1054 + 2i) % 4i)];
      let x_1059 : vec3<f32> = vs_TEXCOORD1;
      let x_1062 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1058 * vec4<f32>(x_1059.z, x_1059.z, x_1059.z, x_1059.z)) + x_1062);
      let x_1064 : vec4<f32> = u_xlat8;
      let x_1065 : i32 = u_xlati37;
      let x_1068 : i32 = u_xlati37;
      let x_1072 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1065 + 3i) / 4i)][((x_1068 + 3i) % 4i)];
      u_xlat8 = (x_1064 + x_1072);
      let x_1074 : vec4<f32> = u_xlat8;
      let x_1076 : vec4<f32> = u_xlat8;
      let x_1078 : vec3<f32> = (vec3<f32>(x_1074.x, x_1074.y, x_1074.z) / vec3<f32>(x_1076.w, x_1076.w, x_1076.w));
      let x_1079 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
      let x_1082 : vec4<f32> = u_xlat8;
      let x_1083 : vec2<f32> = vec2<f32>(x_1082.x, x_1082.y);
      let x_1085 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_1083.x, x_1083.y, x_1085);
      let x_1093 : vec3<f32> = txVec1;
      let x_1095 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1093.xy, x_1093.z);
      u_xlat37 = x_1095;
      let x_1096 : i32 = u_xlati35;
      let x_1098 : f32 = x_249.x_AdditionalShadowParams[x_1096].x;
      u_xlat27.x = (1.0f + -(x_1098));
      let x_1102 : f32 = u_xlat37;
      let x_1103 : i32 = u_xlati35;
      let x_1105 : f32 = x_249.x_AdditionalShadowParams[x_1103].x;
      let x_1108 : f32 = u_xlat27.x;
      u_xlat37 = ((x_1102 * x_1105) + x_1108);
      let x_1111 : f32 = u_xlat8.z;
      u_xlatb27 = (0.0f >= x_1111);
      let x_1115 : f32 = u_xlat8.z;
      u_xlatb38 = (x_1115 >= 1.0f);
      let x_1117 : bool = u_xlatb38;
      let x_1118 : bool = u_xlatb27;
      u_xlatb27 = (x_1117 | x_1118);
      let x_1120 : bool = u_xlatb27;
      let x_1121 : f32 = u_xlat37;
      u_xlat37 = select(x_1121, 1.0f, x_1120);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_1124 : f32 = u_xlat37;
    u_xlat27.x = (-(x_1124) + 1.0f);
    let x_1128 : f32 = u_xlat33;
    let x_1130 : f32 = u_xlat27.x;
    let x_1132 : f32 = u_xlat37;
    u_xlat37 = ((x_1128 * x_1130) + x_1132);
    let x_1135 : i32 = u_xlati35;
    u_xlati27 = (1i << bitcast<u32>((x_1135 & 31i)));
    let x_1139 : i32 = u_xlati27;
    let x_1142 : f32 = x_616.x_AdditionalLightsCookieEnableBits;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_1139) & bitcast<u32>(x_1142)));
    let x_1146 : i32 = u_xlati27;
    if ((x_1146 != 0i)) {
      let x_1150 : i32 = u_xlati35;
      let x_1152 : f32 = x_616.x_AdditionalLightsLightTypes[x_1150].el;
      u_xlati27 = i32(x_1152);
      let x_1155 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_1155 != 0i));
      let x_1159 : i32 = u_xlati35;
      u_xlati39 = (x_1159 << bitcast<u32>(2i));
      let x_1161 : i32 = u_xlati38;
      if ((x_1161 != 0i)) {
        let x_1165 : vec3<f32> = vs_TEXCOORD1;
        let x_1167 : i32 = u_xlati39;
        let x_1170 : i32 = u_xlati39;
        let x_1174 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1167 + 1i) / 4i)][((x_1170 + 1i) % 4i)];
        let x_1176 : vec3<f32> = (vec3<f32>(x_1165.y, x_1165.y, x_1165.y) * vec3<f32>(x_1174.x, x_1174.y, x_1174.w));
        let x_1177 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
        let x_1179 : i32 = u_xlati39;
        let x_1181 : i32 = u_xlati39;
        let x_1184 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[(x_1179 / 4i)][(x_1181 % 4i)];
        let x_1186 : vec3<f32> = vs_TEXCOORD1;
        let x_1189 : vec4<f32> = u_xlat8;
        let x_1191 : vec3<f32> = ((vec3<f32>(x_1184.x, x_1184.y, x_1184.w) * vec3<f32>(x_1186.x, x_1186.x, x_1186.x)) + vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
        let x_1192 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
        let x_1194 : i32 = u_xlati39;
        let x_1197 : i32 = u_xlati39;
        let x_1201 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1194 + 2i) / 4i)][((x_1197 + 2i) % 4i)];
        let x_1203 : vec3<f32> = vs_TEXCOORD1;
        let x_1206 : vec4<f32> = u_xlat8;
        let x_1208 : vec3<f32> = ((vec3<f32>(x_1201.x, x_1201.y, x_1201.w) * vec3<f32>(x_1203.z, x_1203.z, x_1203.z)) + vec3<f32>(x_1206.x, x_1206.y, x_1206.z));
        let x_1209 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
        let x_1211 : vec4<f32> = u_xlat8;
        let x_1213 : i32 = u_xlati39;
        let x_1216 : i32 = u_xlati39;
        let x_1220 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1213 + 3i) / 4i)][((x_1216 + 3i) % 4i)];
        let x_1222 : vec3<f32> = (vec3<f32>(x_1211.x, x_1211.y, x_1211.z) + vec3<f32>(x_1220.x, x_1220.y, x_1220.w));
        let x_1223 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
        let x_1225 : vec4<f32> = u_xlat8;
        let x_1227 : vec4<f32> = u_xlat8;
        let x_1229 : vec2<f32> = (vec2<f32>(x_1225.x, x_1225.y) / vec2<f32>(x_1227.z, x_1227.z));
        let x_1230 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1229.x, x_1229.y, x_1230.z, x_1230.w);
        let x_1232 : vec4<f32> = u_xlat8;
        let x_1235 : vec2<f32> = ((vec2<f32>(x_1232.x, x_1232.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1236 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1235.x, x_1235.y, x_1236.z, x_1236.w);
        let x_1238 : vec4<f32> = u_xlat8;
        let x_1242 : vec2<f32> = clamp(vec2<f32>(x_1238.x, x_1238.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1243 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1242.x, x_1242.y, x_1243.z, x_1243.w);
        let x_1245 : i32 = u_xlati35;
        let x_1247 : vec4<f32> = x_616.x_AdditionalLightsCookieAtlasUVRects[x_1245];
        let x_1249 : vec4<f32> = u_xlat8;
        let x_1252 : i32 = u_xlati35;
        let x_1254 : vec4<f32> = x_616.x_AdditionalLightsCookieAtlasUVRects[x_1252];
        let x_1256 : vec2<f32> = ((vec2<f32>(x_1247.x, x_1247.y) * vec2<f32>(x_1249.x, x_1249.y)) + vec2<f32>(x_1254.z, x_1254.w));
        let x_1257 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1256.x, x_1256.y, x_1257.z, x_1257.w);
      } else {
        let x_1260 : i32 = u_xlati27;
        u_xlatb27 = (x_1260 == 1i);
        let x_1262 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_1262);
        let x_1264 : i32 = u_xlati27;
        if ((x_1264 != 0i)) {
          let x_1268 : vec3<f32> = vs_TEXCOORD1;
          let x_1270 : i32 = u_xlati39;
          let x_1273 : i32 = u_xlati39;
          let x_1277 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1270 + 1i) / 4i)][((x_1273 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_1268.y, x_1268.y) * vec2<f32>(x_1277.x, x_1277.y));
          let x_1280 : i32 = u_xlati39;
          let x_1282 : i32 = u_xlati39;
          let x_1285 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[(x_1280 / 4i)][(x_1282 % 4i)];
          let x_1287 : vec3<f32> = vs_TEXCOORD1;
          let x_1290 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1285.x, x_1285.y) * vec2<f32>(x_1287.x, x_1287.x)) + x_1290);
          let x_1292 : i32 = u_xlati39;
          let x_1295 : i32 = u_xlati39;
          let x_1299 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1292 + 2i) / 4i)][((x_1295 + 2i) % 4i)];
          let x_1301 : vec3<f32> = vs_TEXCOORD1;
          let x_1304 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1299.x, x_1299.y) * vec2<f32>(x_1301.z, x_1301.z)) + x_1304);
          let x_1306 : vec2<f32> = u_xlat27;
          let x_1307 : i32 = u_xlati39;
          let x_1310 : i32 = u_xlati39;
          let x_1314 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1307 + 3i) / 4i)][((x_1310 + 3i) % 4i)];
          u_xlat27 = (x_1306 + vec2<f32>(x_1314.x, x_1314.y));
          let x_1317 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1317 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1320 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_1320);
          let x_1322 : i32 = u_xlati35;
          let x_1324 : vec4<f32> = x_616.x_AdditionalLightsCookieAtlasUVRects[x_1322];
          let x_1326 : vec2<f32> = u_xlat27;
          let x_1328 : i32 = u_xlati35;
          let x_1330 : vec4<f32> = x_616.x_AdditionalLightsCookieAtlasUVRects[x_1328];
          let x_1332 : vec2<f32> = ((vec2<f32>(x_1324.x, x_1324.y) * x_1326) + vec2<f32>(x_1330.z, x_1330.w));
          let x_1333 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1332.x, x_1332.y, x_1333.z, x_1333.w);
        } else {
          let x_1337 : vec3<f32> = vs_TEXCOORD1;
          let x_1339 : i32 = u_xlati39;
          let x_1342 : i32 = u_xlati39;
          let x_1346 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1339 + 1i) / 4i)][((x_1342 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1337.y, x_1337.y, x_1337.y, x_1337.y) * x_1346);
          let x_1348 : i32 = u_xlati39;
          let x_1350 : i32 = u_xlati39;
          let x_1353 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[(x_1348 / 4i)][(x_1350 % 4i)];
          let x_1354 : vec3<f32> = vs_TEXCOORD1;
          let x_1357 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1353 * vec4<f32>(x_1354.x, x_1354.x, x_1354.x, x_1354.x)) + x_1357);
          let x_1359 : i32 = u_xlati39;
          let x_1362 : i32 = u_xlati39;
          let x_1366 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1359 + 2i) / 4i)][((x_1362 + 2i) % 4i)];
          let x_1367 : vec3<f32> = vs_TEXCOORD1;
          let x_1370 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1366 * vec4<f32>(x_1367.z, x_1367.z, x_1367.z, x_1367.z)) + x_1370);
          let x_1372 : vec4<f32> = u_xlat9;
          let x_1373 : i32 = u_xlati39;
          let x_1376 : i32 = u_xlati39;
          let x_1380 : vec4<f32> = x_616.x_AdditionalLightsWorldToLights[((x_1373 + 3i) / 4i)][((x_1376 + 3i) % 4i)];
          u_xlat9 = (x_1372 + x_1380);
          let x_1382 : vec4<f32> = u_xlat9;
          let x_1384 : vec4<f32> = u_xlat9;
          let x_1386 : vec3<f32> = (vec3<f32>(x_1382.x, x_1382.y, x_1382.z) / vec3<f32>(x_1384.w, x_1384.w, x_1384.w));
          let x_1387 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
          let x_1389 : vec4<f32> = u_xlat9;
          let x_1391 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1389.x, x_1389.y, x_1389.z), vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
          let x_1396 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1396);
          let x_1399 : vec2<f32> = u_xlat27;
          let x_1401 : vec4<f32> = u_xlat9;
          let x_1403 : vec3<f32> = (vec3<f32>(x_1399.x, x_1399.x, x_1399.x) * vec3<f32>(x_1401.x, x_1401.y, x_1401.z));
          let x_1404 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1403.x, x_1403.y, x_1403.z, x_1404.w);
          let x_1406 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1406.x, x_1406.y, x_1406.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1413 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1413, 0.00000099999999747524f);
          let x_1418 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1418);
          let x_1422 : vec2<f32> = u_xlat27;
          let x_1424 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1422.x, x_1422.x, x_1422.x) * vec3<f32>(x_1424.z, x_1424.x, x_1424.y));
          let x_1428 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1428);
          let x_1432 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1432, 0.0f, 1.0f);
          let x_1436 : vec3<f32> = u_xlat10;
          let x_1438 : vec4<bool> = (vec4<f32>(x_1436.y, x_1436.z, x_1436.y, x_1436.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1438.x, x_1438.y);
          let x_1442 : bool = u_xlatb30.x;
          if (x_1442) {
            let x_1447 : f32 = u_xlat10.x;
            x_1443 = x_1447;
          } else {
            let x_1450 : f32 = u_xlat10.x;
            x_1443 = -(x_1450);
          }
          let x_1452 : f32 = x_1443;
          u_xlat30.x = x_1452;
          let x_1455 : bool = u_xlatb30.y;
          if (x_1455) {
            let x_1460 : f32 = u_xlat10.x;
            x_1456 = x_1460;
          } else {
            let x_1463 : f32 = u_xlat10.x;
            x_1456 = -(x_1463);
          }
          let x_1465 : f32 = x_1456;
          u_xlat30.y = x_1465;
          let x_1467 : vec4<f32> = u_xlat9;
          let x_1469 : vec2<f32> = u_xlat27;
          let x_1472 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1467.x, x_1467.y) * vec2<f32>(x_1469.x, x_1469.x)) + x_1472);
          let x_1474 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1474 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1477 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1477, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1481 : i32 = u_xlati35;
          let x_1483 : vec4<f32> = x_616.x_AdditionalLightsCookieAtlasUVRects[x_1481];
          let x_1485 : vec2<f32> = u_xlat27;
          let x_1487 : i32 = u_xlati35;
          let x_1489 : vec4<f32> = x_616.x_AdditionalLightsCookieAtlasUVRects[x_1487];
          let x_1491 : vec2<f32> = ((vec2<f32>(x_1483.x, x_1483.y) * x_1485) + vec2<f32>(x_1489.z, x_1489.w));
          let x_1492 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1491.x, x_1491.y, x_1492.z, x_1492.w);
        }
      }
      let x_1499 : vec4<f32> = u_xlat8;
      let x_1501 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1499.x, x_1499.y), 0.0f);
      u_xlat8 = x_1501;
      let x_1503 : bool = u_xlatb5.y;
      if (x_1503) {
        let x_1508 : f32 = u_xlat8.w;
        x_1504 = x_1508;
      } else {
        let x_1511 : f32 = u_xlat8.x;
        x_1504 = x_1511;
      }
      let x_1512 : f32 = x_1504;
      u_xlat27.x = x_1512;
      let x_1515 : bool = u_xlatb5.x;
      if (x_1515) {
        let x_1519 : vec4<f32> = u_xlat8;
        x_1516 = vec3<f32>(x_1519.x, x_1519.y, x_1519.z);
      } else {
        let x_1522 : vec2<f32> = u_xlat27;
        x_1516 = vec3<f32>(x_1522.x, x_1522.x, x_1522.x);
      }
      let x_1524 : vec3<f32> = x_1516;
      let x_1525 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1524.x, x_1524.y, x_1524.z, x_1525.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1531 : vec4<f32> = u_xlat8;
    let x_1533 : i32 = u_xlati35;
    let x_1535 : vec4<f32> = x_864.x_AdditionalLightsColor[x_1533];
    let x_1537 : vec3<f32> = (vec3<f32>(x_1531.x, x_1531.y, x_1531.z) * vec3<f32>(x_1535.x, x_1535.y, x_1535.z));
    let x_1538 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1538.w);
    let x_1540 : f32 = u_xlat36;
    let x_1541 : f32 = u_xlat37;
    u_xlat35 = (x_1540 * x_1541);
    let x_1543 : f32 = u_xlat35;
    let x_1545 : vec4<f32> = u_xlat8;
    let x_1547 : vec3<f32> = (vec3<f32>(x_1543, x_1543, x_1543) * vec3<f32>(x_1545.x, x_1545.y, x_1545.z));
    let x_1548 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1547.x, x_1547.y, x_1547.z, x_1548.w);
    let x_1550 : vec4<f32> = u_xlat2;
    let x_1552 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1550.x, x_1550.y, x_1550.z), x_1552);
    let x_1554 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1554, 0.0f, 1.0f);
    let x_1556 : f32 = u_xlat35;
    let x_1558 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1556, x_1556, x_1556) * vec3<f32>(x_1558.x, x_1558.y, x_1558.z));
    let x_1561 : vec3<f32> = u_xlat7;
    let x_1562 : vec4<f32> = u_xlat1;
    let x_1565 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1561 * vec3<f32>(x_1562.y, x_1562.z, x_1562.w)) + x_1565);

    continuing {
      let x_1567 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1567 + bitcast<u32>(1i));
    }
  }
  let x_1569 : vec4<f32> = u_xlat4;
  let x_1571 : vec4<f32> = u_xlat1;
  let x_1574 : vec4<f32> = u_xlat3;
  let x_1576 : vec3<f32> = ((vec3<f32>(x_1569.x, x_1569.y, x_1569.z) * vec3<f32>(x_1571.y, x_1571.z, x_1571.w)) + vec3<f32>(x_1574.x, x_1574.y, x_1574.z));
  let x_1577 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1576.x, x_1576.y, x_1576.z, x_1577.w);
  let x_1581 : vec3<f32> = u_xlat6;
  let x_1582 : vec4<f32> = u_xlat1;
  let x_1584 : vec3<f32> = (x_1581 + vec3<f32>(x_1582.x, x_1582.y, x_1582.z));
  let x_1585 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
  let x_1588 : f32 = x_57.x_Surface;
  u_xlatb11 = (x_1588 == 1.0f);
  let x_1590 : bool = u_xlatb11;
  let x_1591 : bool = u_xlatb22;
  u_xlatb11 = (x_1590 | x_1591);
  let x_1593 : bool = u_xlatb11;
  if (x_1593) {
    let x_1598 : f32 = u_xlat0.x;
    x_1594 = x_1598;
  } else {
    x_1594 = 1.0f;
  }
  let x_1600 : f32 = x_1594;
  SV_Target0.w = x_1600;
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


