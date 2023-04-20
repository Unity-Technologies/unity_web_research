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
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(192) */
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

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

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

var<private> u_xlatb35 : bool;

var<private> u_xlat35 : f32;

@group(1) @binding(5) var<uniform> x_655 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu33 : u32;

var<private> u_xlatu36 : u32;

var<private> u_xlati37 : i32;

var<private> u_xlat36 : f32;

var<private> u_xlati36 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_901 : AdditionalLights;

var<private> u_xlat37 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlati27 : i32;

var<private> u_xlatb38 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat38 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb39 : bool;

var<private> u_xlati38 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlati40 : i32;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb30 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu35 : u32;

var<private> u_xlatb36 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_77 : f32;
  var x_133 : f32;
  var x_192 : f32;
  var txVec0 : vec3<f32>;
  var x_739 : f32;
  var x_750 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1031 : f32;
  var x_1041 : f32;
  var txVec1 : vec3<f32>;
  var x_1465 : f32;
  var x_1478 : f32;
  var x_1526 : f32;
  var x_1537 : vec3<f32>;
  var x_1646 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_54 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_58.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_54.w, x_54.x, x_54.y, x_54.z) * vec4<f32>(x_62.w, x_62.x, x_62.y, x_62.z));
  let x_70 : f32 = u_xlat1.x;
  let x_73 : f32 = x_58.x_Cutoff;
  u_xlatb0 = (x_70 >= x_73);
  let x_75 : bool = u_xlatb0;
  if (x_75) {
    let x_81 : f32 = u_xlat1.x;
    x_77 = x_81;
  } else {
    x_77 = 0.0f;
  }
  let x_84 : f32 = x_77;
  u_xlat0.x = x_84;
  let x_89 : f32 = u_xlat0.w;
  let x_91 : f32 = x_58.x_BaseColor.w;
  let x_94 : f32 = x_58.x_Cutoff;
  u_xlat11.x = ((x_89 * x_91) + -(x_94));
  let x_100 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_100);
  let x_104 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_104);
  let x_106 : f32 = u_xlat33;
  let x_108 : f32 = u_xlat22;
  u_xlat22 = (abs(x_106) + abs(x_108));
  let x_111 : f32 = u_xlat22;
  u_xlat22 = max(x_111, 0.00009999999747378752f);
  let x_115 : f32 = u_xlat11.x;
  let x_116 : f32 = u_xlat22;
  u_xlat11.x = (x_115 / x_116);
  let x_120 : f32 = u_xlat11.x;
  u_xlat11.x = (x_120 + 0.5f);
  let x_125 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_125, 0.0f, 1.0f);
  let x_130 : f32 = x_45.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_130 == 0.0f));
  let x_132 : bool = u_xlatb22;
  if (x_132) {
    let x_137 : f32 = u_xlat11.x;
    x_133 = x_137;
  } else {
    let x_140 : f32 = u_xlat0.x;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat0.x = x_141;
  let x_144 : f32 = u_xlat0.x;
  u_xlat11.x = (x_144 + -0.00009999999747378752f);
  let x_150 : f32 = u_xlat11.x;
  u_xlatb11 = (x_150 < 0.0f);
  let x_152 : bool = u_xlatb11;
  if (((select(0i, 1i, x_152) * -1i) != 0i)) {
    discard;
  }
  let x_160 : vec4<f32> = hlslcc_FragCoord;
  let x_164 : f32 = x_45.x_DitheringTextureInvSize;
  let x_166 : vec2<f32> = (vec2<f32>(x_160.x, x_160.y) * vec2<f32>(x_164, x_164));
  let x_167 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_166.x, x_167.y, x_166.y);
  let x_174 : vec3<f32> = u_xlat11;
  let x_177 : f32 = x_45.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_174.x, x_174.z), x_177);
  u_xlat11.x = x_178.w;
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
  let x_440 : f32 = vs_TEXCOORD1.y;
  let x_443 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat11.x = (x_440 * x_443);
  let x_447 : f32 = x_45.unity_MatrixV[0i].z;
  let x_449 : f32 = vs_TEXCOORD1.x;
  let x_452 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_447 * x_449) + x_452);
  let x_456 : f32 = x_45.unity_MatrixV[2i].z;
  let x_458 : f32 = vs_TEXCOORD1.z;
  let x_461 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_456 * x_458) + x_461);
  let x_465 : f32 = u_xlat11.x;
  let x_467 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat11.x = (x_465 + x_467);
  let x_471 : f32 = u_xlat11.x;
  let x_475 : f32 = x_45.x_ProjectionParams.y;
  u_xlat11.x = (-(x_471) + -(x_475));
  let x_480 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_480, 0.0f);
  let x_484 : f32 = u_xlat11.x;
  let x_487 : f32 = x_45.unity_FogParams.x;
  u_xlat11.x = (x_484 * x_487);
  u_xlat2.w = 1.0f;
  let x_493 : vec4<f32> = x_186.unity_SHAr;
  let x_494 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_493, x_494);
  let x_499 : vec4<f32> = x_186.unity_SHAg;
  let x_500 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_499, x_500);
  let x_505 : vec4<f32> = x_186.unity_SHAb;
  let x_506 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_505, x_506);
  let x_509 : vec4<f32> = u_xlat2;
  let x_511 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_509.y, x_509.z, x_509.z, x_509.x) * vec4<f32>(x_511.x, x_511.y, x_511.z, x_511.z));
  let x_516 : vec4<f32> = x_186.unity_SHBr;
  let x_517 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_516, x_517);
  let x_522 : vec4<f32> = x_186.unity_SHBg;
  let x_523 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_522, x_523);
  let x_528 : vec4<f32> = x_186.unity_SHBb;
  let x_529 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_528, x_529);
  let x_533 : f32 = u_xlat2.y;
  let x_535 : f32 = u_xlat2.y;
  u_xlat33 = (x_533 * x_535);
  let x_538 : f32 = u_xlat2.x;
  let x_540 : f32 = u_xlat2.x;
  let x_542 : f32 = u_xlat33;
  u_xlat33 = ((x_538 * x_540) + -(x_542));
  let x_547 : vec4<f32> = x_186.unity_SHC;
  let x_549 : f32 = u_xlat33;
  let x_552 : vec3<f32> = u_xlat6;
  let x_553 : vec3<f32> = ((vec3<f32>(x_547.x, x_547.y, x_547.z) * vec3<f32>(x_549, x_549, x_549)) + x_552);
  let x_554 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : vec4<f32> = u_xlat4;
  let x_558 : vec4<f32> = u_xlat5;
  let x_560 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) + vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec3<f32> = max(vec3<f32>(x_563.x, x_563.y, x_563.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_570 : vec4<f32> = u_xlat3;
  let x_571 : vec2<f32> = vec2<f32>(x_570.x, x_570.y);
  let x_573 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_571.x, x_571.y, x_573);
  let x_585 : vec3<f32> = txVec0;
  let x_587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_585.xy, x_585.z);
  u_xlat33 = x_587;
  let x_590 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_590) + 1.0f);
  let x_594 : f32 = u_xlat33;
  let x_596 : f32 = x_249.x_MainLightShadowParams.x;
  let x_599 : f32 = u_xlat1.x;
  u_xlat33 = ((x_594 * x_596) + x_599);
  let x_603 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_603);
  let x_607 : f32 = u_xlat3.z;
  u_xlatb35 = (x_607 >= 1.0f);
  let x_609 : bool = u_xlatb1;
  let x_610 : bool = u_xlatb35;
  u_xlatb1 = (x_609 | x_610);
  let x_612 : bool = u_xlatb1;
  let x_613 : f32 = u_xlat33;
  u_xlat33 = select(x_613, 1.0f, x_612);
  let x_615 : vec3<f32> = vs_TEXCOORD1;
  let x_618 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_620 : vec3<f32> = (x_615 + -(x_618));
  let x_621 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat3;
  let x_625 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_623.x, x_623.y, x_623.z), vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_631 : f32 = u_xlat1.x;
  let x_633 : f32 = x_249.x_MainLightShadowParams.z;
  let x_636 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat35 = ((x_631 * x_633) + x_636);
  let x_638 : f32 = u_xlat35;
  u_xlat35 = clamp(x_638, 0.0f, 1.0f);
  let x_640 : f32 = u_xlat33;
  u_xlat3.x = (-(x_640) + 1.0f);
  let x_644 : f32 = u_xlat35;
  let x_646 : f32 = u_xlat3.x;
  let x_648 : f32 = u_xlat33;
  u_xlat33 = ((x_644 * x_646) + x_648);
  let x_657 : f32 = x_655.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_657 == -1.0f));
  let x_659 : bool = u_xlatb35;
  if (x_659) {
    let x_662 : vec3<f32> = vs_TEXCOORD1;
    let x_665 : vec4<f32> = x_655.x_MainLightWorldToLight[1i];
    let x_667 : vec2<f32> = (vec2<f32>(x_662.y, x_662.y) * vec2<f32>(x_665.x, x_665.y));
    let x_668 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
    let x_671 : vec4<f32> = x_655.x_MainLightWorldToLight[0i];
    let x_673 : vec3<f32> = vs_TEXCOORD1;
    let x_676 : vec4<f32> = u_xlat3;
    let x_678 : vec2<f32> = ((vec2<f32>(x_671.x, x_671.y) * vec2<f32>(x_673.x, x_673.x)) + vec2<f32>(x_676.x, x_676.y));
    let x_679 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
    let x_682 : vec4<f32> = x_655.x_MainLightWorldToLight[2i];
    let x_684 : vec3<f32> = vs_TEXCOORD1;
    let x_687 : vec4<f32> = u_xlat3;
    let x_689 : vec2<f32> = ((vec2<f32>(x_682.x, x_682.y) * vec2<f32>(x_684.z, x_684.z)) + vec2<f32>(x_687.x, x_687.y));
    let x_690 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
    let x_692 : vec4<f32> = u_xlat3;
    let x_695 : vec4<f32> = x_655.x_MainLightWorldToLight[3i];
    let x_697 : vec2<f32> = (vec2<f32>(x_692.x, x_692.y) + vec2<f32>(x_695.x, x_695.y));
    let x_698 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
    let x_700 : vec4<f32> = u_xlat3;
    let x_704 : vec2<f32> = ((vec2<f32>(x_700.x, x_700.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_705 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
    let x_712 : vec4<f32> = u_xlat3;
    let x_715 : f32 = x_45.x_GlobalMipBias.x;
    let x_716 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_712.x, x_712.y), x_715);
    u_xlat3 = x_716;
    let x_721 : f32 = x_655.x_MainLightCookieTextureFormat;
    let x_723 : f32 = x_655.x_MainLightCookieTextureFormat;
    let x_725 : f32 = x_655.x_MainLightCookieTextureFormat;
    let x_727 : f32 = x_655.x_MainLightCookieTextureFormat;
    let x_728 : vec4<f32> = vec4<f32>(x_721, x_723, x_725, x_727);
    let x_735 : vec4<bool> = (vec4<f32>(x_728.x, x_728.y, x_728.z, x_728.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_735.x, x_735.y);
    let x_738 : bool = u_xlatb5.y;
    if (x_738) {
      let x_743 : f32 = u_xlat3.w;
      x_739 = x_743;
    } else {
      let x_746 : f32 = u_xlat3.x;
      x_739 = x_746;
    }
    let x_747 : f32 = x_739;
    u_xlat35 = x_747;
    let x_749 : bool = u_xlatb5.x;
    if (x_749) {
      let x_753 : vec4<f32> = u_xlat3;
      x_750 = vec3<f32>(x_753.x, x_753.y, x_753.z);
    } else {
      let x_756 : f32 = u_xlat35;
      x_750 = vec3<f32>(x_756, x_756, x_756);
    }
    let x_758 : vec3<f32> = x_750;
    let x_759 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_765 : vec4<f32> = u_xlat3;
  let x_768 : vec4<f32> = x_45.x_MainLightColor;
  let x_770 : vec3<f32> = (vec3<f32>(x_765.x, x_765.y, x_765.z) * vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : f32 = u_xlat33;
  let x_775 : f32 = x_186.unity_LightData.z;
  u_xlat33 = (x_773 * x_775);
  let x_777 : f32 = u_xlat33;
  let x_779 : vec4<f32> = u_xlat3;
  let x_781 : vec3<f32> = (vec3<f32>(x_777, x_777, x_777) * vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec4<f32> = u_xlat2;
  let x_787 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat33 = dot(vec3<f32>(x_784.x, x_784.y, x_784.z), vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_790 : f32 = u_xlat33;
  u_xlat33 = clamp(x_790, 0.0f, 1.0f);
  let x_792 : f32 = u_xlat33;
  let x_794 : vec4<f32> = u_xlat3;
  let x_796 : vec3<f32> = (vec3<f32>(x_792, x_792, x_792) * vec3<f32>(x_794.x, x_794.y, x_794.z));
  let x_797 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_799 : vec4<f32> = u_xlat1;
  let x_801 : vec4<f32> = u_xlat3;
  let x_803 : vec3<f32> = (vec3<f32>(x_799.y, x_799.z, x_799.w) * vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_807 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_809 : f32 = x_186.unity_LightData.y;
  u_xlat33 = min(x_807, x_809);
  let x_812 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_812));
  let x_816 : f32 = u_xlat1.x;
  let x_819 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_822 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_816 * x_819) + x_822);
  let x_826 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_826, 0.0f, 1.0f);
  let x_830 : f32 = x_655.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_832 : f32 = x_655.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_834 : f32 = x_655.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_836 : f32 = x_655.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_837 : vec4<f32> = vec4<f32>(x_830, x_832, x_834, x_836);
  let x_843 : vec4<bool> = (vec4<f32>(x_837.x, x_837.y, x_837.z, x_837.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_843.x, x_843.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_855 : u32 = u_xlatu_loop_1;
    let x_856 : u32 = u_xlatu33;
    if ((x_855 < x_856)) {
    } else {
      break;
    }
    let x_859 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_859 >> 2u);
    let x_862 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_862 & 3u));
    let x_866 : u32 = u_xlatu36;
    let x_869 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_866)];
    let x_879 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_884 : vec4<u32> = indexable[x_879];
    u_xlat36 = dot(x_869, bitcast<vec4<f32>>(x_884));
    let x_888 : f32 = u_xlat36;
    u_xlati36 = i32(x_888);
    let x_891 : vec3<f32> = vs_TEXCOORD1;
    let x_902 : i32 = u_xlati36;
    let x_904 : vec4<f32> = x_901.x_AdditionalLightsPosition[x_902];
    let x_907 : i32 = u_xlati36;
    let x_909 : vec4<f32> = x_901.x_AdditionalLightsPosition[x_907];
    u_xlat7 = ((-(x_891) * vec3<f32>(x_904.w, x_904.w, x_904.w)) + vec3<f32>(x_909.x, x_909.y, x_909.z));
    let x_913 : vec3<f32> = u_xlat7;
    let x_914 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_913, x_914);
    let x_916 : f32 = u_xlat37;
    u_xlat37 = max(x_916, 0.00006103515625f);
    let x_920 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_920);
    let x_922 : f32 = u_xlat27;
    let x_924 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_922, x_922, x_922) * x_924);
    let x_926 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_926);
    let x_928 : f32 = u_xlat37;
    let x_929 : i32 = u_xlati36;
    let x_931 : f32 = x_901.x_AdditionalLightsAttenuation[x_929].x;
    u_xlat37 = (x_928 * x_931);
    let x_933 : f32 = u_xlat37;
    let x_935 : f32 = u_xlat37;
    u_xlat37 = ((-(x_933) * x_935) + 1.0f);
    let x_938 : f32 = u_xlat37;
    u_xlat37 = max(x_938, 0.0f);
    let x_940 : f32 = u_xlat37;
    let x_941 : f32 = u_xlat37;
    u_xlat37 = (x_940 * x_941);
    let x_943 : f32 = u_xlat37;
    let x_944 : f32 = u_xlat27;
    u_xlat37 = (x_943 * x_944);
    let x_946 : i32 = u_xlati36;
    let x_948 : vec4<f32> = x_901.x_AdditionalLightsSpotDir[x_946];
    let x_950 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_948.x, x_948.y, x_948.z), x_950);
    let x_952 : f32 = u_xlat27;
    let x_953 : i32 = u_xlati36;
    let x_955 : f32 = x_901.x_AdditionalLightsAttenuation[x_953].z;
    let x_957 : i32 = u_xlati36;
    let x_959 : f32 = x_901.x_AdditionalLightsAttenuation[x_957].w;
    u_xlat27 = ((x_952 * x_955) + x_959);
    let x_961 : f32 = u_xlat27;
    u_xlat27 = clamp(x_961, 0.0f, 1.0f);
    let x_963 : f32 = u_xlat27;
    let x_964 : f32 = u_xlat27;
    u_xlat27 = (x_963 * x_964);
    let x_966 : f32 = u_xlat37;
    let x_967 : f32 = u_xlat27;
    u_xlat37 = (x_966 * x_967);
    let x_971 : i32 = u_xlati36;
    let x_973 : f32 = x_249.x_AdditionalShadowParams[x_971].w;
    u_xlati27 = i32(x_973);
    let x_976 : i32 = u_xlati27;
    u_xlatb38 = (x_976 >= 0i);
    let x_978 : bool = u_xlatb38;
    if (x_978) {
      let x_982 : i32 = u_xlati36;
      let x_984 : f32 = x_249.x_AdditionalShadowParams[x_982].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_984, x_984, x_984, x_984))));
      let x_988 : bool = u_xlatb38;
      if (x_988) {
        let x_992 : vec3<f32> = u_xlat7;
        let x_995 : vec3<f32> = u_xlat7;
        let x_998 : vec4<bool> = (abs(vec4<f32>(x_992.z, x_992.z, x_992.y, x_992.z)) >= abs(vec4<f32>(x_995.x, x_995.y, x_995.x, x_995.x)));
        let x_1000 : vec3<bool> = vec3<bool>(x_998.x, x_998.y, x_998.z);
        let x_1001 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
        let x_1004 : bool = u_xlatb8.y;
        let x_1006 : bool = u_xlatb8.x;
        u_xlatb38 = (x_1004 & x_1006);
        let x_1008 : vec3<f32> = u_xlat7;
        let x_1011 : vec4<bool> = (-(vec4<f32>(x_1008.z, x_1008.y, x_1008.z, x_1008.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1012 : vec3<bool> = vec3<bool>(x_1011.x, x_1011.y, x_1011.w);
        let x_1013 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1012.x, x_1012.y, x_1013.z, x_1012.z);
        let x_1017 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1017);
        let x_1022 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1022);
        let x_1027 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_1027);
        let x_1030 : bool = u_xlatb8.z;
        if (x_1030) {
          let x_1035 : f32 = u_xlat8.y;
          x_1031 = x_1035;
        } else {
          let x_1037 : f32 = u_xlat39;
          x_1031 = x_1037;
        }
        let x_1038 : f32 = x_1031;
        u_xlat39 = x_1038;
        let x_1040 : bool = u_xlatb38;
        if (x_1040) {
          let x_1045 : f32 = u_xlat8.x;
          x_1041 = x_1045;
        } else {
          let x_1047 : f32 = u_xlat39;
          x_1041 = x_1047;
        }
        let x_1048 : f32 = x_1041;
        u_xlat38 = x_1048;
        let x_1049 : i32 = u_xlati36;
        let x_1051 : f32 = x_249.x_AdditionalShadowParams[x_1049].w;
        u_xlat39 = trunc(x_1051);
        let x_1053 : f32 = u_xlat38;
        let x_1054 : f32 = u_xlat39;
        u_xlat38 = (x_1053 + x_1054);
        let x_1056 : f32 = u_xlat38;
        u_xlati27 = i32(x_1056);
      }
      let x_1058 : i32 = u_xlati27;
      u_xlati27 = (x_1058 << bitcast<u32>(2i));
      let x_1060 : vec3<f32> = vs_TEXCOORD1;
      let x_1063 : i32 = u_xlati27;
      let x_1066 : i32 = u_xlati27;
      let x_1070 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1063 + 1i) / 4i)][((x_1066 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1060.y, x_1060.y, x_1060.y, x_1060.y) * x_1070);
      let x_1072 : i32 = u_xlati27;
      let x_1074 : i32 = u_xlati27;
      let x_1077 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_1072 / 4i)][(x_1074 % 4i)];
      let x_1078 : vec3<f32> = vs_TEXCOORD1;
      let x_1081 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1077 * vec4<f32>(x_1078.x, x_1078.x, x_1078.x, x_1078.x)) + x_1081);
      let x_1083 : i32 = u_xlati27;
      let x_1086 : i32 = u_xlati27;
      let x_1090 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1083 + 2i) / 4i)][((x_1086 + 2i) % 4i)];
      let x_1091 : vec3<f32> = vs_TEXCOORD1;
      let x_1094 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1090 * vec4<f32>(x_1091.z, x_1091.z, x_1091.z, x_1091.z)) + x_1094);
      let x_1096 : vec4<f32> = u_xlat8;
      let x_1097 : i32 = u_xlati27;
      let x_1100 : i32 = u_xlati27;
      let x_1104 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1097 + 3i) / 4i)][((x_1100 + 3i) % 4i)];
      u_xlat8 = (x_1096 + x_1104);
      let x_1106 : vec4<f32> = u_xlat8;
      let x_1108 : vec4<f32> = u_xlat8;
      let x_1110 : vec3<f32> = (vec3<f32>(x_1106.x, x_1106.y, x_1106.z) / vec3<f32>(x_1108.w, x_1108.w, x_1108.w));
      let x_1111 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1111.w);
      let x_1114 : vec4<f32> = u_xlat8;
      let x_1115 : vec2<f32> = vec2<f32>(x_1114.x, x_1114.y);
      let x_1117 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_1115.x, x_1115.y, x_1117);
      let x_1125 : vec3<f32> = txVec1;
      let x_1127 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1125.xy, x_1125.z);
      u_xlat27 = x_1127;
      let x_1128 : i32 = u_xlati36;
      let x_1130 : f32 = x_249.x_AdditionalShadowParams[x_1128].x;
      u_xlat38 = (1.0f + -(x_1130));
      let x_1133 : f32 = u_xlat27;
      let x_1134 : i32 = u_xlati36;
      let x_1136 : f32 = x_249.x_AdditionalShadowParams[x_1134].x;
      let x_1138 : f32 = u_xlat38;
      u_xlat27 = ((x_1133 * x_1136) + x_1138);
      let x_1141 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_1141);
      let x_1145 : f32 = u_xlat8.z;
      u_xlatb39 = (x_1145 >= 1.0f);
      let x_1147 : bool = u_xlatb38;
      let x_1148 : bool = u_xlatb39;
      u_xlatb38 = (x_1147 | x_1148);
      let x_1150 : bool = u_xlatb38;
      let x_1151 : f32 = u_xlat27;
      u_xlat27 = select(x_1151, 1.0f, x_1150);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_1154 : f32 = u_xlat27;
    u_xlat38 = (-(x_1154) + 1.0f);
    let x_1158 : f32 = u_xlat1.x;
    let x_1159 : f32 = u_xlat38;
    let x_1161 : f32 = u_xlat27;
    u_xlat27 = ((x_1158 * x_1159) + x_1161);
    let x_1164 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_1164 & 31i)));
    let x_1168 : i32 = u_xlati38;
    let x_1171 : f32 = x_655.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_1168) & bitcast<u32>(x_1171)));
    let x_1175 : i32 = u_xlati38;
    if ((x_1175 != 0i)) {
      let x_1179 : i32 = u_xlati36;
      let x_1181 : f32 = x_655.x_AdditionalLightsLightTypes[x_1179].el;
      u_xlati38 = i32(x_1181);
      let x_1184 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_1184 != 0i));
      let x_1188 : i32 = u_xlati36;
      u_xlati40 = (x_1188 << bitcast<u32>(2i));
      let x_1190 : i32 = u_xlati39;
      if ((x_1190 != 0i)) {
        let x_1194 : vec3<f32> = vs_TEXCOORD1;
        let x_1196 : i32 = u_xlati40;
        let x_1199 : i32 = u_xlati40;
        let x_1203 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1196 + 1i) / 4i)][((x_1199 + 1i) % 4i)];
        let x_1205 : vec3<f32> = (vec3<f32>(x_1194.y, x_1194.y, x_1194.y) * vec3<f32>(x_1203.x, x_1203.y, x_1203.w));
        let x_1206 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
        let x_1208 : i32 = u_xlati40;
        let x_1210 : i32 = u_xlati40;
        let x_1213 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[(x_1208 / 4i)][(x_1210 % 4i)];
        let x_1215 : vec3<f32> = vs_TEXCOORD1;
        let x_1218 : vec4<f32> = u_xlat8;
        let x_1220 : vec3<f32> = ((vec3<f32>(x_1213.x, x_1213.y, x_1213.w) * vec3<f32>(x_1215.x, x_1215.x, x_1215.x)) + vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
        let x_1221 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
        let x_1223 : i32 = u_xlati40;
        let x_1226 : i32 = u_xlati40;
        let x_1230 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1223 + 2i) / 4i)][((x_1226 + 2i) % 4i)];
        let x_1232 : vec3<f32> = vs_TEXCOORD1;
        let x_1235 : vec4<f32> = u_xlat8;
        let x_1237 : vec3<f32> = ((vec3<f32>(x_1230.x, x_1230.y, x_1230.w) * vec3<f32>(x_1232.z, x_1232.z, x_1232.z)) + vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
        let x_1238 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);
        let x_1240 : vec4<f32> = u_xlat8;
        let x_1242 : i32 = u_xlati40;
        let x_1245 : i32 = u_xlati40;
        let x_1249 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1242 + 3i) / 4i)][((x_1245 + 3i) % 4i)];
        let x_1251 : vec3<f32> = (vec3<f32>(x_1240.x, x_1240.y, x_1240.z) + vec3<f32>(x_1249.x, x_1249.y, x_1249.w));
        let x_1252 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
        let x_1254 : vec4<f32> = u_xlat8;
        let x_1256 : vec4<f32> = u_xlat8;
        let x_1258 : vec2<f32> = (vec2<f32>(x_1254.x, x_1254.y) / vec2<f32>(x_1256.z, x_1256.z));
        let x_1259 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1258.x, x_1258.y, x_1259.z, x_1259.w);
        let x_1261 : vec4<f32> = u_xlat8;
        let x_1264 : vec2<f32> = ((vec2<f32>(x_1261.x, x_1261.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1265 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1264.x, x_1264.y, x_1265.z, x_1265.w);
        let x_1267 : vec4<f32> = u_xlat8;
        let x_1271 : vec2<f32> = clamp(vec2<f32>(x_1267.x, x_1267.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1272 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1271.x, x_1271.y, x_1272.z, x_1272.w);
        let x_1274 : i32 = u_xlati36;
        let x_1276 : vec4<f32> = x_655.x_AdditionalLightsCookieAtlasUVRects[x_1274];
        let x_1278 : vec4<f32> = u_xlat8;
        let x_1281 : i32 = u_xlati36;
        let x_1283 : vec4<f32> = x_655.x_AdditionalLightsCookieAtlasUVRects[x_1281];
        let x_1285 : vec2<f32> = ((vec2<f32>(x_1276.x, x_1276.y) * vec2<f32>(x_1278.x, x_1278.y)) + vec2<f32>(x_1283.z, x_1283.w));
        let x_1286 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1285.x, x_1285.y, x_1286.z, x_1286.w);
      } else {
        let x_1289 : i32 = u_xlati38;
        u_xlatb38 = (x_1289 == 1i);
        let x_1291 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1291);
        let x_1293 : i32 = u_xlati38;
        if ((x_1293 != 0i)) {
          let x_1299 : vec3<f32> = vs_TEXCOORD1;
          let x_1301 : i32 = u_xlati40;
          let x_1304 : i32 = u_xlati40;
          let x_1308 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1301 + 1i) / 4i)][((x_1304 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1299.y, x_1299.y) * vec2<f32>(x_1308.x, x_1308.y));
          let x_1311 : i32 = u_xlati40;
          let x_1313 : i32 = u_xlati40;
          let x_1316 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[(x_1311 / 4i)][(x_1313 % 4i)];
          let x_1318 : vec3<f32> = vs_TEXCOORD1;
          let x_1321 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1316.x, x_1316.y) * vec2<f32>(x_1318.x, x_1318.x)) + x_1321);
          let x_1323 : i32 = u_xlati40;
          let x_1326 : i32 = u_xlati40;
          let x_1330 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1323 + 2i) / 4i)][((x_1326 + 2i) % 4i)];
          let x_1332 : vec3<f32> = vs_TEXCOORD1;
          let x_1335 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1330.x, x_1330.y) * vec2<f32>(x_1332.z, x_1332.z)) + x_1335);
          let x_1337 : vec2<f32> = u_xlat30;
          let x_1338 : i32 = u_xlati40;
          let x_1341 : i32 = u_xlati40;
          let x_1345 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1338 + 3i) / 4i)][((x_1341 + 3i) % 4i)];
          u_xlat30 = (x_1337 + vec2<f32>(x_1345.x, x_1345.y));
          let x_1348 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1348 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1351 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1351);
          let x_1353 : i32 = u_xlati36;
          let x_1355 : vec4<f32> = x_655.x_AdditionalLightsCookieAtlasUVRects[x_1353];
          let x_1357 : vec2<f32> = u_xlat30;
          let x_1359 : i32 = u_xlati36;
          let x_1361 : vec4<f32> = x_655.x_AdditionalLightsCookieAtlasUVRects[x_1359];
          let x_1363 : vec2<f32> = ((vec2<f32>(x_1355.x, x_1355.y) * x_1357) + vec2<f32>(x_1361.z, x_1361.w));
          let x_1364 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1363.x, x_1363.y, x_1364.z, x_1364.w);
        } else {
          let x_1368 : vec3<f32> = vs_TEXCOORD1;
          let x_1370 : i32 = u_xlati40;
          let x_1373 : i32 = u_xlati40;
          let x_1377 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1370 + 1i) / 4i)][((x_1373 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1368.y, x_1368.y, x_1368.y, x_1368.y) * x_1377);
          let x_1379 : i32 = u_xlati40;
          let x_1381 : i32 = u_xlati40;
          let x_1384 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[(x_1379 / 4i)][(x_1381 % 4i)];
          let x_1385 : vec3<f32> = vs_TEXCOORD1;
          let x_1388 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1384 * vec4<f32>(x_1385.x, x_1385.x, x_1385.x, x_1385.x)) + x_1388);
          let x_1390 : i32 = u_xlati40;
          let x_1393 : i32 = u_xlati40;
          let x_1397 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1390 + 2i) / 4i)][((x_1393 + 2i) % 4i)];
          let x_1398 : vec3<f32> = vs_TEXCOORD1;
          let x_1401 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1397 * vec4<f32>(x_1398.z, x_1398.z, x_1398.z, x_1398.z)) + x_1401);
          let x_1403 : vec4<f32> = u_xlat9;
          let x_1404 : i32 = u_xlati40;
          let x_1407 : i32 = u_xlati40;
          let x_1411 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1404 + 3i) / 4i)][((x_1407 + 3i) % 4i)];
          u_xlat9 = (x_1403 + x_1411);
          let x_1413 : vec4<f32> = u_xlat9;
          let x_1415 : vec4<f32> = u_xlat9;
          let x_1417 : vec3<f32> = (vec3<f32>(x_1413.x, x_1413.y, x_1413.z) / vec3<f32>(x_1415.w, x_1415.w, x_1415.w));
          let x_1418 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
          let x_1420 : vec4<f32> = u_xlat9;
          let x_1422 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1420.x, x_1420.y, x_1420.z), vec3<f32>(x_1422.x, x_1422.y, x_1422.z));
          let x_1425 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1425);
          let x_1427 : f32 = u_xlat38;
          let x_1429 : vec4<f32> = u_xlat9;
          let x_1431 : vec3<f32> = (vec3<f32>(x_1427, x_1427, x_1427) * vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
          let x_1432 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1431.x, x_1431.y, x_1431.z, x_1432.w);
          let x_1434 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1434.x, x_1434.y, x_1434.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1439 : f32 = u_xlat38;
          u_xlat38 = max(x_1439, 0.00000099999999747524f);
          let x_1442 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1442);
          let x_1445 : f32 = u_xlat38;
          let x_1447 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1445, x_1445, x_1445) * vec3<f32>(x_1447.z, x_1447.x, x_1447.y));
          let x_1451 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1451);
          let x_1455 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1455, 0.0f, 1.0f);
          let x_1459 : vec3<f32> = u_xlat10;
          let x_1461 : vec4<bool> = (vec4<f32>(x_1459.y, x_1459.z, x_1459.y, x_1459.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1461.x, x_1461.y);
          let x_1464 : bool = u_xlatb30.x;
          if (x_1464) {
            let x_1469 : f32 = u_xlat10.x;
            x_1465 = x_1469;
          } else {
            let x_1472 : f32 = u_xlat10.x;
            x_1465 = -(x_1472);
          }
          let x_1474 : f32 = x_1465;
          u_xlat30.x = x_1474;
          let x_1477 : bool = u_xlatb30.y;
          if (x_1477) {
            let x_1482 : f32 = u_xlat10.x;
            x_1478 = x_1482;
          } else {
            let x_1485 : f32 = u_xlat10.x;
            x_1478 = -(x_1485);
          }
          let x_1487 : f32 = x_1478;
          u_xlat30.y = x_1487;
          let x_1489 : vec4<f32> = u_xlat9;
          let x_1491 : f32 = u_xlat38;
          let x_1494 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1489.x, x_1489.y) * vec2<f32>(x_1491, x_1491)) + x_1494);
          let x_1496 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1496 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1499 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1499, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1503 : i32 = u_xlati36;
          let x_1505 : vec4<f32> = x_655.x_AdditionalLightsCookieAtlasUVRects[x_1503];
          let x_1507 : vec2<f32> = u_xlat30;
          let x_1509 : i32 = u_xlati36;
          let x_1511 : vec4<f32> = x_655.x_AdditionalLightsCookieAtlasUVRects[x_1509];
          let x_1513 : vec2<f32> = ((vec2<f32>(x_1505.x, x_1505.y) * x_1507) + vec2<f32>(x_1511.z, x_1511.w));
          let x_1514 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1513.x, x_1513.y, x_1514.z, x_1514.w);
        }
      }
      let x_1521 : vec4<f32> = u_xlat8;
      let x_1523 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1521.x, x_1521.y), 0.0f);
      u_xlat8 = x_1523;
      let x_1525 : bool = u_xlatb5.y;
      if (x_1525) {
        let x_1530 : f32 = u_xlat8.w;
        x_1526 = x_1530;
      } else {
        let x_1533 : f32 = u_xlat8.x;
        x_1526 = x_1533;
      }
      let x_1534 : f32 = x_1526;
      u_xlat38 = x_1534;
      let x_1536 : bool = u_xlatb5.x;
      if (x_1536) {
        let x_1540 : vec4<f32> = u_xlat8;
        x_1537 = vec3<f32>(x_1540.x, x_1540.y, x_1540.z);
      } else {
        let x_1543 : f32 = u_xlat38;
        x_1537 = vec3<f32>(x_1543, x_1543, x_1543);
      }
      let x_1545 : vec3<f32> = x_1537;
      let x_1546 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1545.x, x_1545.y, x_1545.z, x_1546.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1552 : vec4<f32> = u_xlat8;
    let x_1554 : i32 = u_xlati36;
    let x_1556 : vec4<f32> = x_901.x_AdditionalLightsColor[x_1554];
    let x_1558 : vec3<f32> = (vec3<f32>(x_1552.x, x_1552.y, x_1552.z) * vec3<f32>(x_1556.x, x_1556.y, x_1556.z));
    let x_1559 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1559.w);
    let x_1561 : f32 = u_xlat37;
    let x_1562 : f32 = u_xlat27;
    u_xlat36 = (x_1561 * x_1562);
    let x_1564 : f32 = u_xlat36;
    let x_1566 : vec4<f32> = u_xlat8;
    let x_1568 : vec3<f32> = (vec3<f32>(x_1564, x_1564, x_1564) * vec3<f32>(x_1566.x, x_1566.y, x_1566.z));
    let x_1569 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1569.w);
    let x_1571 : vec4<f32> = u_xlat2;
    let x_1573 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_1571.x, x_1571.y, x_1571.z), x_1573);
    let x_1575 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1575, 0.0f, 1.0f);
    let x_1577 : f32 = u_xlat36;
    let x_1579 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1577, x_1577, x_1577) * vec3<f32>(x_1579.x, x_1579.y, x_1579.z));
    let x_1582 : vec3<f32> = u_xlat7;
    let x_1583 : vec4<f32> = u_xlat1;
    let x_1586 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1582 * vec3<f32>(x_1583.y, x_1583.z, x_1583.w)) + x_1586);

    continuing {
      let x_1588 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1588 + bitcast<u32>(1i));
    }
  }
  let x_1590 : vec4<f32> = u_xlat4;
  let x_1592 : vec4<f32> = u_xlat1;
  let x_1595 : vec4<f32> = u_xlat3;
  let x_1597 : vec3<f32> = ((vec3<f32>(x_1590.x, x_1590.y, x_1590.z) * vec3<f32>(x_1592.y, x_1592.z, x_1592.w)) + vec3<f32>(x_1595.x, x_1595.y, x_1595.z));
  let x_1598 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1597.x, x_1597.y, x_1597.z, x_1598.w);
  let x_1600 : vec3<f32> = u_xlat6;
  let x_1601 : vec4<f32> = u_xlat1;
  let x_1603 : vec3<f32> = (x_1600 + vec3<f32>(x_1601.x, x_1601.y, x_1601.z));
  let x_1604 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1603.x, x_1603.y, x_1603.z, x_1604.w);
  let x_1607 : f32 = u_xlat11.x;
  let x_1609 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1607 * -(x_1609));
  let x_1614 : f32 = u_xlat11.x;
  u_xlat11.x = exp2(x_1614);
  let x_1617 : vec4<f32> = u_xlat1;
  let x_1620 : vec4<f32> = x_45.unity_FogColor;
  let x_1623 : vec3<f32> = (vec3<f32>(x_1617.x, x_1617.y, x_1617.z) + -(vec3<f32>(x_1620.x, x_1620.y, x_1620.z)));
  let x_1624 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1623.x, x_1623.y, x_1623.z, x_1624.w);
  let x_1628 : vec3<f32> = u_xlat11;
  let x_1630 : vec4<f32> = u_xlat1;
  let x_1634 : vec4<f32> = x_45.unity_FogColor;
  let x_1636 : vec3<f32> = ((vec3<f32>(x_1628.x, x_1628.x, x_1628.x) * vec3<f32>(x_1630.x, x_1630.y, x_1630.z)) + vec3<f32>(x_1634.x, x_1634.y, x_1634.z));
  let x_1637 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1636.x, x_1636.y, x_1636.z, x_1637.w);
  let x_1640 : f32 = x_58.x_Surface;
  u_xlatb11 = (x_1640 == 1.0f);
  let x_1642 : bool = u_xlatb11;
  let x_1643 : bool = u_xlatb22;
  u_xlatb11 = (x_1642 | x_1643);
  let x_1645 : bool = u_xlatb11;
  if (x_1645) {
    let x_1650 : f32 = u_xlat0.x;
    x_1646 = x_1650;
  } else {
    x_1646 = 1.0f;
  }
  let x_1652 : f32 = x_1646;
  SV_Target0.w = x_1652;
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


