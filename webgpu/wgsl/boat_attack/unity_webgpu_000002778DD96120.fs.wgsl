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

@group(1) @binding(1) var<uniform> x_908 : AdditionalLights;

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
  var x_1038 : f32;
  var x_1048 : f32;
  var txVec1 : vec3<f32>;
  var x_1472 : f32;
  var x_1485 : f32;
  var x_1533 : f32;
  var x_1544 : vec3<f32>;
  var x_1657 : f32;
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
  let x_806 : vec4<f32> = u_xlat0;
  let x_808 : vec4<f32> = u_xlat3;
  let x_810 : vec3<f32> = (vec3<f32>(x_806.x, x_806.x, x_806.x) * vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_814 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_816 : f32 = x_186.unity_LightData.y;
  u_xlat33 = min(x_814, x_816);
  let x_819 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_819));
  let x_823 : f32 = u_xlat1.x;
  let x_826 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_829 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_823 * x_826) + x_829);
  let x_833 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_833, 0.0f, 1.0f);
  let x_837 : f32 = x_655.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_839 : f32 = x_655.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_841 : f32 = x_655.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_843 : f32 = x_655.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_844 : vec4<f32> = vec4<f32>(x_837, x_839, x_841, x_843);
  let x_850 : vec4<bool> = (vec4<f32>(x_844.x, x_844.y, x_844.z, x_844.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_850.x, x_850.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_862 : u32 = u_xlatu_loop_1;
    let x_863 : u32 = u_xlatu33;
    if ((x_862 < x_863)) {
    } else {
      break;
    }
    let x_866 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_866 >> 2u);
    let x_869 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_869 & 3u));
    let x_873 : u32 = u_xlatu36;
    let x_876 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_873)];
    let x_886 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_891 : vec4<u32> = indexable[x_886];
    u_xlat36 = dot(x_876, bitcast<vec4<f32>>(x_891));
    let x_895 : f32 = u_xlat36;
    u_xlati36 = i32(x_895);
    let x_898 : vec3<f32> = vs_TEXCOORD1;
    let x_909 : i32 = u_xlati36;
    let x_911 : vec4<f32> = x_908.x_AdditionalLightsPosition[x_909];
    let x_914 : i32 = u_xlati36;
    let x_916 : vec4<f32> = x_908.x_AdditionalLightsPosition[x_914];
    u_xlat7 = ((-(x_898) * vec3<f32>(x_911.w, x_911.w, x_911.w)) + vec3<f32>(x_916.x, x_916.y, x_916.z));
    let x_920 : vec3<f32> = u_xlat7;
    let x_921 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_920, x_921);
    let x_923 : f32 = u_xlat37;
    u_xlat37 = max(x_923, 0.00006103515625f);
    let x_927 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_927);
    let x_929 : f32 = u_xlat27;
    let x_931 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_929, x_929, x_929) * x_931);
    let x_933 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_933);
    let x_935 : f32 = u_xlat37;
    let x_936 : i32 = u_xlati36;
    let x_938 : f32 = x_908.x_AdditionalLightsAttenuation[x_936].x;
    u_xlat37 = (x_935 * x_938);
    let x_940 : f32 = u_xlat37;
    let x_942 : f32 = u_xlat37;
    u_xlat37 = ((-(x_940) * x_942) + 1.0f);
    let x_945 : f32 = u_xlat37;
    u_xlat37 = max(x_945, 0.0f);
    let x_947 : f32 = u_xlat37;
    let x_948 : f32 = u_xlat37;
    u_xlat37 = (x_947 * x_948);
    let x_950 : f32 = u_xlat37;
    let x_951 : f32 = u_xlat27;
    u_xlat37 = (x_950 * x_951);
    let x_953 : i32 = u_xlati36;
    let x_955 : vec4<f32> = x_908.x_AdditionalLightsSpotDir[x_953];
    let x_957 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_955.x, x_955.y, x_955.z), x_957);
    let x_959 : f32 = u_xlat27;
    let x_960 : i32 = u_xlati36;
    let x_962 : f32 = x_908.x_AdditionalLightsAttenuation[x_960].z;
    let x_964 : i32 = u_xlati36;
    let x_966 : f32 = x_908.x_AdditionalLightsAttenuation[x_964].w;
    u_xlat27 = ((x_959 * x_962) + x_966);
    let x_968 : f32 = u_xlat27;
    u_xlat27 = clamp(x_968, 0.0f, 1.0f);
    let x_970 : f32 = u_xlat27;
    let x_971 : f32 = u_xlat27;
    u_xlat27 = (x_970 * x_971);
    let x_973 : f32 = u_xlat37;
    let x_974 : f32 = u_xlat27;
    u_xlat37 = (x_973 * x_974);
    let x_978 : i32 = u_xlati36;
    let x_980 : f32 = x_249.x_AdditionalShadowParams[x_978].w;
    u_xlati27 = i32(x_980);
    let x_983 : i32 = u_xlati27;
    u_xlatb38 = (x_983 >= 0i);
    let x_985 : bool = u_xlatb38;
    if (x_985) {
      let x_989 : i32 = u_xlati36;
      let x_991 : f32 = x_249.x_AdditionalShadowParams[x_989].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_991, x_991, x_991, x_991))));
      let x_995 : bool = u_xlatb38;
      if (x_995) {
        let x_999 : vec3<f32> = u_xlat7;
        let x_1002 : vec3<f32> = u_xlat7;
        let x_1005 : vec4<bool> = (abs(vec4<f32>(x_999.z, x_999.z, x_999.y, x_999.z)) >= abs(vec4<f32>(x_1002.x, x_1002.y, x_1002.x, x_1002.x)));
        let x_1007 : vec3<bool> = vec3<bool>(x_1005.x, x_1005.y, x_1005.z);
        let x_1008 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
        let x_1011 : bool = u_xlatb8.y;
        let x_1013 : bool = u_xlatb8.x;
        u_xlatb38 = (x_1011 & x_1013);
        let x_1015 : vec3<f32> = u_xlat7;
        let x_1018 : vec4<bool> = (-(vec4<f32>(x_1015.z, x_1015.y, x_1015.z, x_1015.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1019 : vec3<bool> = vec3<bool>(x_1018.x, x_1018.y, x_1018.w);
        let x_1020 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1019.x, x_1019.y, x_1020.z, x_1019.z);
        let x_1024 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1024);
        let x_1029 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1029);
        let x_1034 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_1034);
        let x_1037 : bool = u_xlatb8.z;
        if (x_1037) {
          let x_1042 : f32 = u_xlat8.y;
          x_1038 = x_1042;
        } else {
          let x_1044 : f32 = u_xlat39;
          x_1038 = x_1044;
        }
        let x_1045 : f32 = x_1038;
        u_xlat39 = x_1045;
        let x_1047 : bool = u_xlatb38;
        if (x_1047) {
          let x_1052 : f32 = u_xlat8.x;
          x_1048 = x_1052;
        } else {
          let x_1054 : f32 = u_xlat39;
          x_1048 = x_1054;
        }
        let x_1055 : f32 = x_1048;
        u_xlat38 = x_1055;
        let x_1056 : i32 = u_xlati36;
        let x_1058 : f32 = x_249.x_AdditionalShadowParams[x_1056].w;
        u_xlat39 = trunc(x_1058);
        let x_1060 : f32 = u_xlat38;
        let x_1061 : f32 = u_xlat39;
        u_xlat38 = (x_1060 + x_1061);
        let x_1063 : f32 = u_xlat38;
        u_xlati27 = i32(x_1063);
      }
      let x_1065 : i32 = u_xlati27;
      u_xlati27 = (x_1065 << bitcast<u32>(2i));
      let x_1067 : vec3<f32> = vs_TEXCOORD1;
      let x_1070 : i32 = u_xlati27;
      let x_1073 : i32 = u_xlati27;
      let x_1077 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1070 + 1i) / 4i)][((x_1073 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1067.y, x_1067.y, x_1067.y, x_1067.y) * x_1077);
      let x_1079 : i32 = u_xlati27;
      let x_1081 : i32 = u_xlati27;
      let x_1084 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_1079 / 4i)][(x_1081 % 4i)];
      let x_1085 : vec3<f32> = vs_TEXCOORD1;
      let x_1088 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1084 * vec4<f32>(x_1085.x, x_1085.x, x_1085.x, x_1085.x)) + x_1088);
      let x_1090 : i32 = u_xlati27;
      let x_1093 : i32 = u_xlati27;
      let x_1097 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1090 + 2i) / 4i)][((x_1093 + 2i) % 4i)];
      let x_1098 : vec3<f32> = vs_TEXCOORD1;
      let x_1101 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1097 * vec4<f32>(x_1098.z, x_1098.z, x_1098.z, x_1098.z)) + x_1101);
      let x_1103 : vec4<f32> = u_xlat8;
      let x_1104 : i32 = u_xlati27;
      let x_1107 : i32 = u_xlati27;
      let x_1111 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1104 + 3i) / 4i)][((x_1107 + 3i) % 4i)];
      u_xlat8 = (x_1103 + x_1111);
      let x_1113 : vec4<f32> = u_xlat8;
      let x_1115 : vec4<f32> = u_xlat8;
      let x_1117 : vec3<f32> = (vec3<f32>(x_1113.x, x_1113.y, x_1113.z) / vec3<f32>(x_1115.w, x_1115.w, x_1115.w));
      let x_1118 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
      let x_1121 : vec4<f32> = u_xlat8;
      let x_1122 : vec2<f32> = vec2<f32>(x_1121.x, x_1121.y);
      let x_1124 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_1122.x, x_1122.y, x_1124);
      let x_1132 : vec3<f32> = txVec1;
      let x_1134 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1132.xy, x_1132.z);
      u_xlat27 = x_1134;
      let x_1135 : i32 = u_xlati36;
      let x_1137 : f32 = x_249.x_AdditionalShadowParams[x_1135].x;
      u_xlat38 = (1.0f + -(x_1137));
      let x_1140 : f32 = u_xlat27;
      let x_1141 : i32 = u_xlati36;
      let x_1143 : f32 = x_249.x_AdditionalShadowParams[x_1141].x;
      let x_1145 : f32 = u_xlat38;
      u_xlat27 = ((x_1140 * x_1143) + x_1145);
      let x_1148 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_1148);
      let x_1152 : f32 = u_xlat8.z;
      u_xlatb39 = (x_1152 >= 1.0f);
      let x_1154 : bool = u_xlatb38;
      let x_1155 : bool = u_xlatb39;
      u_xlatb38 = (x_1154 | x_1155);
      let x_1157 : bool = u_xlatb38;
      let x_1158 : f32 = u_xlat27;
      u_xlat27 = select(x_1158, 1.0f, x_1157);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_1161 : f32 = u_xlat27;
    u_xlat38 = (-(x_1161) + 1.0f);
    let x_1165 : f32 = u_xlat1.x;
    let x_1166 : f32 = u_xlat38;
    let x_1168 : f32 = u_xlat27;
    u_xlat27 = ((x_1165 * x_1166) + x_1168);
    let x_1171 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_1171 & 31i)));
    let x_1175 : i32 = u_xlati38;
    let x_1178 : f32 = x_655.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_1175) & bitcast<u32>(x_1178)));
    let x_1182 : i32 = u_xlati38;
    if ((x_1182 != 0i)) {
      let x_1186 : i32 = u_xlati36;
      let x_1188 : f32 = x_655.x_AdditionalLightsLightTypes[x_1186].el;
      u_xlati38 = i32(x_1188);
      let x_1191 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_1191 != 0i));
      let x_1195 : i32 = u_xlati36;
      u_xlati40 = (x_1195 << bitcast<u32>(2i));
      let x_1197 : i32 = u_xlati39;
      if ((x_1197 != 0i)) {
        let x_1201 : vec3<f32> = vs_TEXCOORD1;
        let x_1203 : i32 = u_xlati40;
        let x_1206 : i32 = u_xlati40;
        let x_1210 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1203 + 1i) / 4i)][((x_1206 + 1i) % 4i)];
        let x_1212 : vec3<f32> = (vec3<f32>(x_1201.y, x_1201.y, x_1201.y) * vec3<f32>(x_1210.x, x_1210.y, x_1210.w));
        let x_1213 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
        let x_1215 : i32 = u_xlati40;
        let x_1217 : i32 = u_xlati40;
        let x_1220 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[(x_1215 / 4i)][(x_1217 % 4i)];
        let x_1222 : vec3<f32> = vs_TEXCOORD1;
        let x_1225 : vec4<f32> = u_xlat8;
        let x_1227 : vec3<f32> = ((vec3<f32>(x_1220.x, x_1220.y, x_1220.w) * vec3<f32>(x_1222.x, x_1222.x, x_1222.x)) + vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
        let x_1228 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
        let x_1230 : i32 = u_xlati40;
        let x_1233 : i32 = u_xlati40;
        let x_1237 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1230 + 2i) / 4i)][((x_1233 + 2i) % 4i)];
        let x_1239 : vec3<f32> = vs_TEXCOORD1;
        let x_1242 : vec4<f32> = u_xlat8;
        let x_1244 : vec3<f32> = ((vec3<f32>(x_1237.x, x_1237.y, x_1237.w) * vec3<f32>(x_1239.z, x_1239.z, x_1239.z)) + vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
        let x_1247 : vec4<f32> = u_xlat8;
        let x_1249 : i32 = u_xlati40;
        let x_1252 : i32 = u_xlati40;
        let x_1256 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1249 + 3i) / 4i)][((x_1252 + 3i) % 4i)];
        let x_1258 : vec3<f32> = (vec3<f32>(x_1247.x, x_1247.y, x_1247.z) + vec3<f32>(x_1256.x, x_1256.y, x_1256.w));
        let x_1259 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
        let x_1261 : vec4<f32> = u_xlat8;
        let x_1263 : vec4<f32> = u_xlat8;
        let x_1265 : vec2<f32> = (vec2<f32>(x_1261.x, x_1261.y) / vec2<f32>(x_1263.z, x_1263.z));
        let x_1266 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1265.x, x_1265.y, x_1266.z, x_1266.w);
        let x_1268 : vec4<f32> = u_xlat8;
        let x_1271 : vec2<f32> = ((vec2<f32>(x_1268.x, x_1268.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1272 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1271.x, x_1271.y, x_1272.z, x_1272.w);
        let x_1274 : vec4<f32> = u_xlat8;
        let x_1278 : vec2<f32> = clamp(vec2<f32>(x_1274.x, x_1274.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1279 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1278.x, x_1278.y, x_1279.z, x_1279.w);
        let x_1281 : i32 = u_xlati36;
        let x_1283 : vec4<f32> = x_655.x_AdditionalLightsCookieAtlasUVRects[x_1281];
        let x_1285 : vec4<f32> = u_xlat8;
        let x_1288 : i32 = u_xlati36;
        let x_1290 : vec4<f32> = x_655.x_AdditionalLightsCookieAtlasUVRects[x_1288];
        let x_1292 : vec2<f32> = ((vec2<f32>(x_1283.x, x_1283.y) * vec2<f32>(x_1285.x, x_1285.y)) + vec2<f32>(x_1290.z, x_1290.w));
        let x_1293 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1292.x, x_1292.y, x_1293.z, x_1293.w);
      } else {
        let x_1296 : i32 = u_xlati38;
        u_xlatb38 = (x_1296 == 1i);
        let x_1298 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1298);
        let x_1300 : i32 = u_xlati38;
        if ((x_1300 != 0i)) {
          let x_1306 : vec3<f32> = vs_TEXCOORD1;
          let x_1308 : i32 = u_xlati40;
          let x_1311 : i32 = u_xlati40;
          let x_1315 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1308 + 1i) / 4i)][((x_1311 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1306.y, x_1306.y) * vec2<f32>(x_1315.x, x_1315.y));
          let x_1318 : i32 = u_xlati40;
          let x_1320 : i32 = u_xlati40;
          let x_1323 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[(x_1318 / 4i)][(x_1320 % 4i)];
          let x_1325 : vec3<f32> = vs_TEXCOORD1;
          let x_1328 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1323.x, x_1323.y) * vec2<f32>(x_1325.x, x_1325.x)) + x_1328);
          let x_1330 : i32 = u_xlati40;
          let x_1333 : i32 = u_xlati40;
          let x_1337 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1330 + 2i) / 4i)][((x_1333 + 2i) % 4i)];
          let x_1339 : vec3<f32> = vs_TEXCOORD1;
          let x_1342 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1337.x, x_1337.y) * vec2<f32>(x_1339.z, x_1339.z)) + x_1342);
          let x_1344 : vec2<f32> = u_xlat30;
          let x_1345 : i32 = u_xlati40;
          let x_1348 : i32 = u_xlati40;
          let x_1352 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1345 + 3i) / 4i)][((x_1348 + 3i) % 4i)];
          u_xlat30 = (x_1344 + vec2<f32>(x_1352.x, x_1352.y));
          let x_1355 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1355 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1358 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1358);
          let x_1360 : i32 = u_xlati36;
          let x_1362 : vec4<f32> = x_655.x_AdditionalLightsCookieAtlasUVRects[x_1360];
          let x_1364 : vec2<f32> = u_xlat30;
          let x_1366 : i32 = u_xlati36;
          let x_1368 : vec4<f32> = x_655.x_AdditionalLightsCookieAtlasUVRects[x_1366];
          let x_1370 : vec2<f32> = ((vec2<f32>(x_1362.x, x_1362.y) * x_1364) + vec2<f32>(x_1368.z, x_1368.w));
          let x_1371 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1370.x, x_1370.y, x_1371.z, x_1371.w);
        } else {
          let x_1375 : vec3<f32> = vs_TEXCOORD1;
          let x_1377 : i32 = u_xlati40;
          let x_1380 : i32 = u_xlati40;
          let x_1384 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1377 + 1i) / 4i)][((x_1380 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1375.y, x_1375.y, x_1375.y, x_1375.y) * x_1384);
          let x_1386 : i32 = u_xlati40;
          let x_1388 : i32 = u_xlati40;
          let x_1391 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[(x_1386 / 4i)][(x_1388 % 4i)];
          let x_1392 : vec3<f32> = vs_TEXCOORD1;
          let x_1395 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1391 * vec4<f32>(x_1392.x, x_1392.x, x_1392.x, x_1392.x)) + x_1395);
          let x_1397 : i32 = u_xlati40;
          let x_1400 : i32 = u_xlati40;
          let x_1404 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1397 + 2i) / 4i)][((x_1400 + 2i) % 4i)];
          let x_1405 : vec3<f32> = vs_TEXCOORD1;
          let x_1408 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1404 * vec4<f32>(x_1405.z, x_1405.z, x_1405.z, x_1405.z)) + x_1408);
          let x_1410 : vec4<f32> = u_xlat9;
          let x_1411 : i32 = u_xlati40;
          let x_1414 : i32 = u_xlati40;
          let x_1418 : vec4<f32> = x_655.x_AdditionalLightsWorldToLights[((x_1411 + 3i) / 4i)][((x_1414 + 3i) % 4i)];
          u_xlat9 = (x_1410 + x_1418);
          let x_1420 : vec4<f32> = u_xlat9;
          let x_1422 : vec4<f32> = u_xlat9;
          let x_1424 : vec3<f32> = (vec3<f32>(x_1420.x, x_1420.y, x_1420.z) / vec3<f32>(x_1422.w, x_1422.w, x_1422.w));
          let x_1425 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);
          let x_1427 : vec4<f32> = u_xlat9;
          let x_1429 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1427.x, x_1427.y, x_1427.z), vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
          let x_1432 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1432);
          let x_1434 : f32 = u_xlat38;
          let x_1436 : vec4<f32> = u_xlat9;
          let x_1438 : vec3<f32> = (vec3<f32>(x_1434, x_1434, x_1434) * vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
          let x_1439 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
          let x_1441 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1441.x, x_1441.y, x_1441.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1446 : f32 = u_xlat38;
          u_xlat38 = max(x_1446, 0.00000099999999747524f);
          let x_1449 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1449);
          let x_1452 : f32 = u_xlat38;
          let x_1454 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1452, x_1452, x_1452) * vec3<f32>(x_1454.z, x_1454.x, x_1454.y));
          let x_1458 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1458);
          let x_1462 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1462, 0.0f, 1.0f);
          let x_1466 : vec3<f32> = u_xlat10;
          let x_1468 : vec4<bool> = (vec4<f32>(x_1466.y, x_1466.z, x_1466.y, x_1466.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1468.x, x_1468.y);
          let x_1471 : bool = u_xlatb30.x;
          if (x_1471) {
            let x_1476 : f32 = u_xlat10.x;
            x_1472 = x_1476;
          } else {
            let x_1479 : f32 = u_xlat10.x;
            x_1472 = -(x_1479);
          }
          let x_1481 : f32 = x_1472;
          u_xlat30.x = x_1481;
          let x_1484 : bool = u_xlatb30.y;
          if (x_1484) {
            let x_1489 : f32 = u_xlat10.x;
            x_1485 = x_1489;
          } else {
            let x_1492 : f32 = u_xlat10.x;
            x_1485 = -(x_1492);
          }
          let x_1494 : f32 = x_1485;
          u_xlat30.y = x_1494;
          let x_1496 : vec4<f32> = u_xlat9;
          let x_1498 : f32 = u_xlat38;
          let x_1501 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1496.x, x_1496.y) * vec2<f32>(x_1498, x_1498)) + x_1501);
          let x_1503 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1503 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1506 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1506, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1510 : i32 = u_xlati36;
          let x_1512 : vec4<f32> = x_655.x_AdditionalLightsCookieAtlasUVRects[x_1510];
          let x_1514 : vec2<f32> = u_xlat30;
          let x_1516 : i32 = u_xlati36;
          let x_1518 : vec4<f32> = x_655.x_AdditionalLightsCookieAtlasUVRects[x_1516];
          let x_1520 : vec2<f32> = ((vec2<f32>(x_1512.x, x_1512.y) * x_1514) + vec2<f32>(x_1518.z, x_1518.w));
          let x_1521 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1520.x, x_1520.y, x_1521.z, x_1521.w);
        }
      }
      let x_1528 : vec4<f32> = u_xlat8;
      let x_1530 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1528.x, x_1528.y), 0.0f);
      u_xlat8 = x_1530;
      let x_1532 : bool = u_xlatb5.y;
      if (x_1532) {
        let x_1537 : f32 = u_xlat8.w;
        x_1533 = x_1537;
      } else {
        let x_1540 : f32 = u_xlat8.x;
        x_1533 = x_1540;
      }
      let x_1541 : f32 = x_1533;
      u_xlat38 = x_1541;
      let x_1543 : bool = u_xlatb5.x;
      if (x_1543) {
        let x_1547 : vec4<f32> = u_xlat8;
        x_1544 = vec3<f32>(x_1547.x, x_1547.y, x_1547.z);
      } else {
        let x_1550 : f32 = u_xlat38;
        x_1544 = vec3<f32>(x_1550, x_1550, x_1550);
      }
      let x_1552 : vec3<f32> = x_1544;
      let x_1553 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1552.x, x_1552.y, x_1552.z, x_1553.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1559 : vec4<f32> = u_xlat8;
    let x_1561 : i32 = u_xlati36;
    let x_1563 : vec4<f32> = x_908.x_AdditionalLightsColor[x_1561];
    let x_1565 : vec3<f32> = (vec3<f32>(x_1559.x, x_1559.y, x_1559.z) * vec3<f32>(x_1563.x, x_1563.y, x_1563.z));
    let x_1566 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1565.x, x_1565.y, x_1565.z, x_1566.w);
    let x_1568 : f32 = u_xlat37;
    let x_1569 : f32 = u_xlat27;
    u_xlat36 = (x_1568 * x_1569);
    let x_1571 : f32 = u_xlat36;
    let x_1573 : vec4<f32> = u_xlat8;
    let x_1575 : vec3<f32> = (vec3<f32>(x_1571, x_1571, x_1571) * vec3<f32>(x_1573.x, x_1573.y, x_1573.z));
    let x_1576 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1575.x, x_1575.y, x_1575.z, x_1576.w);
    let x_1578 : vec4<f32> = u_xlat2;
    let x_1580 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_1578.x, x_1578.y, x_1578.z), x_1580);
    let x_1582 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1582, 0.0f, 1.0f);
    let x_1584 : f32 = u_xlat36;
    let x_1586 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1584, x_1584, x_1584) * vec3<f32>(x_1586.x, x_1586.y, x_1586.z));
    let x_1589 : vec4<f32> = u_xlat1;
    let x_1591 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1589.y, x_1589.z, x_1589.w) * x_1591);
    let x_1593 : vec3<f32> = u_xlat7;
    let x_1594 : vec4<f32> = u_xlat0;
    let x_1597 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1593 * vec3<f32>(x_1594.x, x_1594.x, x_1594.x)) + x_1597);

    continuing {
      let x_1599 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1599 + bitcast<u32>(1i));
    }
  }
  let x_1601 : vec4<f32> = u_xlat4;
  let x_1603 : vec4<f32> = u_xlat1;
  let x_1606 : vec4<f32> = u_xlat3;
  let x_1608 : vec3<f32> = ((vec3<f32>(x_1601.x, x_1601.y, x_1601.z) * vec3<f32>(x_1603.y, x_1603.z, x_1603.w)) + vec3<f32>(x_1606.x, x_1606.y, x_1606.z));
  let x_1609 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1608.x, x_1608.y, x_1608.z, x_1609.w);
  let x_1611 : vec3<f32> = u_xlat6;
  let x_1612 : vec4<f32> = u_xlat1;
  let x_1614 : vec3<f32> = (x_1611 + vec3<f32>(x_1612.x, x_1612.y, x_1612.z));
  let x_1615 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1614.x, x_1614.y, x_1614.z, x_1615.w);
  let x_1618 : f32 = u_xlat11.x;
  let x_1620 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1618 * -(x_1620));
  let x_1625 : f32 = u_xlat11.x;
  u_xlat11.x = exp2(x_1625);
  let x_1628 : vec4<f32> = u_xlat1;
  let x_1631 : vec4<f32> = x_45.unity_FogColor;
  let x_1634 : vec3<f32> = (vec3<f32>(x_1628.x, x_1628.y, x_1628.z) + -(vec3<f32>(x_1631.x, x_1631.y, x_1631.z)));
  let x_1635 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1634.x, x_1634.y, x_1634.z, x_1635.w);
  let x_1639 : vec3<f32> = u_xlat11;
  let x_1641 : vec4<f32> = u_xlat1;
  let x_1645 : vec4<f32> = x_45.unity_FogColor;
  let x_1647 : vec3<f32> = ((vec3<f32>(x_1639.x, x_1639.x, x_1639.x) * vec3<f32>(x_1641.x, x_1641.y, x_1641.z)) + vec3<f32>(x_1645.x, x_1645.y, x_1645.z));
  let x_1648 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1647.x, x_1647.y, x_1647.z, x_1648.w);
  let x_1651 : f32 = x_58.x_Surface;
  u_xlatb11 = (x_1651 == 1.0f);
  let x_1653 : bool = u_xlatb11;
  let x_1654 : bool = u_xlatb22;
  u_xlatb11 = (x_1653 | x_1654);
  let x_1656 : bool = u_xlatb11;
  if (x_1656) {
    let x_1661 : f32 = u_xlat0.x;
    x_1657 = x_1661;
  } else {
    x_1657 = 1.0f;
  }
  let x_1663 : f32 = x_1657;
  SV_Target0.w = x_1663;
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


