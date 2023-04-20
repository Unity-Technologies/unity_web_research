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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlatb24 : bool;

var<private> u_xlatb12 : bool;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_278 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_381 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> u_xlatb38 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

@group(1) @binding(5) var<uniform> x_451 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatu40 : u32;

var<private> u_xlati41 : i32;

var<private> u_xlat40 : f32;

var<private> u_xlati40 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_756 : AdditionalLights;

var<private> u_xlat41 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlati30 : i32;

var<private> u_xlatb42 : bool;

var<private> u_xlatb9 : vec4<bool>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb43 : bool;

var<private> u_xlati42 : i32;

var<private> u_xlati43 : i32;

var<private> u_xlati44 : i32;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb33 : vec2<bool>;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu39 : u32;

var<private> u_xlatb40 : bool;

fn main_1() {
  var x_60 : f32;
  var x_118 : f32;
  var txVec0 : vec3<f32>;
  var x_538 : f32;
  var x_549 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_888 : f32;
  var x_898 : f32;
  var txVec1 : vec3<f32>;
  var x_1322 : f32;
  var x_1335 : f32;
  var x_1383 : f32;
  var x_1394 : vec3<f32>;
  var x_1517 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_73 : f32 = u_xlat0.w;
  let x_75 : f32 = x_41.x_BaseColor.w;
  let x_78 : f32 = x_41.x_Cutoff;
  u_xlat12.x = ((x_73 * x_75) + -(x_78));
  let x_84 : f32 = u_xlat1.x;
  u_xlat24 = dpdxCoarse(x_84);
  let x_88 : f32 = u_xlat1.x;
  u_xlat36 = dpdyCoarse(x_88);
  let x_90 : f32 = u_xlat36;
  let x_92 : f32 = u_xlat24;
  u_xlat24 = (abs(x_90) + abs(x_92));
  let x_95 : f32 = u_xlat24;
  u_xlat24 = max(x_95, 0.00009999999747378752f);
  let x_99 : f32 = u_xlat12.x;
  let x_100 : f32 = u_xlat24;
  u_xlat12.x = (x_99 / x_100);
  let x_104 : f32 = u_xlat12.x;
  u_xlat12.x = (x_104 + 0.5f);
  let x_109 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_109, 0.0f, 1.0f);
  let x_115 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb24 = !((x_115 == 0.0f));
  let x_117 : bool = u_xlatb24;
  if (x_117) {
    let x_122 : f32 = u_xlat12.x;
    x_118 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_118 = x_125;
  }
  let x_126 : f32 = x_118;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat12.x = (x_129 + -0.00009999999747378752f);
  let x_135 : f32 = u_xlat12.x;
  u_xlatb12 = (x_135 < 0.0f);
  let x_137 : bool = u_xlatb12;
  if (((select(0i, 1i, x_137) * -1i) != 0i)) {
    discard;
  }
  let x_151 : vec2<f32> = vs_TEXCOORD0;
  let x_153 : f32 = x_27.x_GlobalMipBias.x;
  let x_154 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_151, x_153);
  let x_155 : vec3<f32> = vec3<f32>(x_154.x, x_154.y, x_154.w);
  let x_156 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_159 : f32 = u_xlat2.x;
  let x_162 : f32 = u_xlat2.z;
  u_xlat2.x = (x_159 * x_162);
  let x_165 : vec4<f32> = u_xlat2;
  let x_172 : vec2<f32> = ((vec2<f32>(x_165.x, x_165.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_173 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_172.x, x_173.y, x_172.y);
  let x_175 : vec3<f32> = u_xlat12;
  let x_177 : vec3<f32> = u_xlat12;
  u_xlat1.x = dot(vec2<f32>(x_175.x, x_175.z), vec2<f32>(x_177.x, x_177.z));
  let x_182 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_182, 1.0f);
  let x_186 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_186) + 1.0f);
  let x_191 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_191);
  let x_195 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_195, 0.0000000000000001f);
  let x_199 : vec3<f32> = u_xlat12;
  let x_203 : vec4<f32> = vs_TEXCOORD4;
  let x_205 : vec3<f32> = (vec3<f32>(x_199.z, x_199.z, x_199.z) * vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec3<f32> = u_xlat12;
  let x_211 : vec4<f32> = vs_TEXCOORD3;
  let x_214 : vec4<f32> = u_xlat2;
  let x_216 : vec3<f32> = ((vec3<f32>(x_208.x, x_208.x, x_208.x) * vec3<f32>(x_211.x, x_211.y, x_211.z)) + vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = vs_TEXCOORD2;
  let x_225 : vec4<f32> = u_xlat2;
  let x_227 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.x, x_219.x) * vec3<f32>(x_222.x, x_222.y, x_222.z)) + vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec4<f32> = u_xlat2;
  let x_232 : vec4<f32> = u_xlat2;
  u_xlat12.x = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_237 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_237);
  let x_240 : vec3<f32> = u_xlat12;
  let x_242 : vec4<f32> = u_xlat2;
  let x_244 : vec3<f32> = (vec3<f32>(x_240.x, x_240.x, x_240.x) * vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_250 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_250;
  let x_253 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_253;
  let x_257 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_257;
  let x_259 : vec3<f32> = u_xlat3;
  let x_260 : vec3<f32> = u_xlat3;
  u_xlat12.x = dot(x_259, x_260);
  let x_264 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_264, 0.00006103515625f);
  let x_269 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_269);
  u_xlat2.w = 1.0f;
  let x_281 : vec4<f32> = x_278.unity_SHAr;
  let x_282 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_281, x_282);
  let x_287 : vec4<f32> = x_278.unity_SHAg;
  let x_288 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_287, x_288);
  let x_293 : vec4<f32> = x_278.unity_SHAb;
  let x_294 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_293, x_294);
  let x_298 : vec4<f32> = u_xlat2;
  let x_300 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_298.y, x_298.z, x_298.z, x_298.x) * vec4<f32>(x_300.x, x_300.y, x_300.z, x_300.z));
  let x_306 : vec4<f32> = x_278.unity_SHBr;
  let x_307 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_306, x_307);
  let x_312 : vec4<f32> = x_278.unity_SHBg;
  let x_313 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_312, x_313);
  let x_318 : vec4<f32> = x_278.unity_SHBb;
  let x_319 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_318, x_319);
  let x_323 : f32 = u_xlat2.y;
  let x_325 : f32 = u_xlat2.y;
  u_xlat36 = (x_323 * x_325);
  let x_328 : f32 = u_xlat2.x;
  let x_330 : f32 = u_xlat2.x;
  let x_332 : f32 = u_xlat36;
  u_xlat36 = ((x_328 * x_330) + -(x_332));
  let x_337 : vec4<f32> = x_278.unity_SHC;
  let x_339 : f32 = u_xlat36;
  let x_342 : vec3<f32> = u_xlat6;
  let x_343 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339, x_339, x_339)) + x_342);
  let x_344 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec3<f32> = u_xlat4;
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_346 + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_350, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_356 : vec4<f32> = vs_TEXCOORD6;
  let x_357 : vec2<f32> = vec2<f32>(x_356.x, x_356.y);
  let x_359 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_357.x, x_357.y, x_359);
  let x_371 : vec3<f32> = txVec0;
  let x_373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_371.xy, x_371.z);
  u_xlat36 = x_373;
  let x_384 : f32 = x_381.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_384) + 1.0f);
  let x_388 : f32 = u_xlat36;
  let x_390 : f32 = x_381.x_MainLightShadowParams.x;
  let x_393 : f32 = u_xlat1.x;
  u_xlat36 = ((x_388 * x_390) + x_393);
  let x_397 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_397);
  let x_401 : f32 = vs_TEXCOORD6.z;
  u_xlatb38 = (x_401 >= 1.0f);
  let x_403 : bool = u_xlatb1;
  let x_404 : bool = u_xlatb38;
  u_xlatb1 = (x_403 | x_404);
  let x_406 : bool = u_xlatb1;
  let x_407 : f32 = u_xlat36;
  u_xlat36 = select(x_407, 1.0f, x_406);
  let x_411 : vec3<f32> = vs_TEXCOORD1;
  let x_415 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_417 : vec3<f32> = (x_411 + -(x_415));
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat5;
  let x_422 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_428 : f32 = u_xlat1.x;
  let x_430 : f32 = x_381.x_MainLightShadowParams.z;
  let x_433 : f32 = x_381.x_MainLightShadowParams.w;
  u_xlat38 = ((x_428 * x_430) + x_433);
  let x_435 : f32 = u_xlat38;
  u_xlat38 = clamp(x_435, 0.0f, 1.0f);
  let x_438 : f32 = u_xlat36;
  u_xlat39 = (-(x_438) + 1.0f);
  let x_441 : f32 = u_xlat38;
  let x_442 : f32 = u_xlat39;
  let x_444 : f32 = u_xlat36;
  u_xlat36 = ((x_441 * x_442) + x_444);
  let x_454 : f32 = x_451.x_MainLightCookieTextureFormat;
  u_xlatb38 = !((x_454 == -1.0f));
  let x_456 : bool = u_xlatb38;
  if (x_456) {
    let x_459 : vec3<f32> = vs_TEXCOORD1;
    let x_462 : vec4<f32> = x_451.x_MainLightWorldToLight[1i];
    let x_464 : vec2<f32> = (vec2<f32>(x_459.y, x_459.y) * vec2<f32>(x_462.x, x_462.y));
    let x_465 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
    let x_468 : vec4<f32> = x_451.x_MainLightWorldToLight[0i];
    let x_470 : vec3<f32> = vs_TEXCOORD1;
    let x_473 : vec4<f32> = u_xlat5;
    let x_475 : vec2<f32> = ((vec2<f32>(x_468.x, x_468.y) * vec2<f32>(x_470.x, x_470.x)) + vec2<f32>(x_473.x, x_473.y));
    let x_476 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
    let x_479 : vec4<f32> = x_451.x_MainLightWorldToLight[2i];
    let x_481 : vec3<f32> = vs_TEXCOORD1;
    let x_484 : vec4<f32> = u_xlat5;
    let x_486 : vec2<f32> = ((vec2<f32>(x_479.x, x_479.y) * vec2<f32>(x_481.z, x_481.z)) + vec2<f32>(x_484.x, x_484.y));
    let x_487 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_486.x, x_486.y, x_487.z, x_487.w);
    let x_489 : vec4<f32> = u_xlat5;
    let x_493 : vec4<f32> = x_451.x_MainLightWorldToLight[3i];
    let x_495 : vec2<f32> = (vec2<f32>(x_489.x, x_489.y) + vec2<f32>(x_493.x, x_493.y));
    let x_496 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
    let x_498 : vec4<f32> = u_xlat5;
    let x_502 : vec2<f32> = ((vec2<f32>(x_498.x, x_498.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_503 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_502.x, x_502.y, x_503.z, x_503.w);
    let x_510 : vec4<f32> = u_xlat5;
    let x_513 : f32 = x_27.x_GlobalMipBias.x;
    let x_514 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_510.x, x_510.y), x_513);
    u_xlat5 = x_514;
    let x_519 : f32 = x_451.x_MainLightCookieTextureFormat;
    let x_521 : f32 = x_451.x_MainLightCookieTextureFormat;
    let x_523 : f32 = x_451.x_MainLightCookieTextureFormat;
    let x_525 : f32 = x_451.x_MainLightCookieTextureFormat;
    let x_526 : vec4<f32> = vec4<f32>(x_519, x_521, x_523, x_525);
    let x_534 : vec4<bool> = (vec4<f32>(x_526.x, x_526.y, x_526.z, x_526.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_534.x, x_534.y);
    let x_537 : bool = u_xlatb6.y;
    if (x_537) {
      let x_542 : f32 = u_xlat5.w;
      x_538 = x_542;
    } else {
      let x_545 : f32 = u_xlat5.x;
      x_538 = x_545;
    }
    let x_546 : f32 = x_538;
    u_xlat38 = x_546;
    let x_548 : bool = u_xlatb6.x;
    if (x_548) {
      let x_552 : vec4<f32> = u_xlat5;
      x_549 = vec3<f32>(x_552.x, x_552.y, x_552.z);
    } else {
      let x_555 : f32 = u_xlat38;
      x_549 = vec3<f32>(x_555, x_555, x_555);
    }
    let x_557 : vec3<f32> = x_549;
    let x_558 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_564 : vec4<f32> = u_xlat5;
  let x_567 : vec4<f32> = x_27.x_MainLightColor;
  let x_569 : vec3<f32> = (vec3<f32>(x_564.x, x_564.y, x_564.z) * vec3<f32>(x_567.x, x_567.y, x_567.z));
  let x_570 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_572 : f32 = u_xlat36;
  let x_574 : f32 = x_278.unity_LightData.z;
  u_xlat36 = (x_572 * x_574);
  let x_576 : f32 = u_xlat36;
  let x_578 : vec4<f32> = u_xlat5;
  let x_580 : vec3<f32> = (vec3<f32>(x_576, x_576, x_576) * vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_581 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat2;
  let x_586 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_583.x, x_583.y, x_583.z), vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : f32 = u_xlat36;
  u_xlat36 = clamp(x_589, 0.0f, 1.0f);
  let x_591 : f32 = u_xlat36;
  let x_593 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_591, x_591, x_591) * vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_597 : f32 = x_41.x_SpecColor.w;
  u_xlat36 = ((x_597 * 10.0f) + 1.0f);
  let x_601 : f32 = u_xlat36;
  u_xlat36 = exp2(x_601);
  let x_604 : vec3<f32> = u_xlat3;
  let x_605 : vec3<f32> = u_xlat12;
  let x_609 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat7 = ((x_604 * vec3<f32>(x_605.x, x_605.x, x_605.x)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec3<f32> = u_xlat7;
  let x_613 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(x_612, x_613);
  let x_615 : f32 = u_xlat38;
  u_xlat38 = max(x_615, 1.17549435e-38f);
  let x_618 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_618);
  let x_620 : f32 = u_xlat38;
  let x_622 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_620, x_620, x_620) * x_622);
  let x_624 : vec4<f32> = u_xlat2;
  let x_626 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(vec3<f32>(x_624.x, x_624.y, x_624.z), x_626);
  let x_628 : f32 = u_xlat38;
  u_xlat38 = clamp(x_628, 0.0f, 1.0f);
  let x_630 : f32 = u_xlat38;
  u_xlat38 = log2(x_630);
  let x_632 : f32 = u_xlat36;
  let x_633 : f32 = u_xlat38;
  u_xlat38 = (x_632 * x_633);
  let x_635 : f32 = u_xlat38;
  u_xlat38 = exp2(x_635);
  let x_637 : f32 = u_xlat38;
  let x_640 : vec4<f32> = x_41.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_637, x_637, x_637) * vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec4<f32> = u_xlat5;
  let x_645 : vec3<f32> = u_xlat7;
  let x_646 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) * x_645);
  let x_647 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec3<f32> = u_xlat6;
  let x_650 : vec4<f32> = u_xlat1;
  let x_653 : vec4<f32> = u_xlat5;
  let x_655 : vec3<f32> = ((x_649 * vec3<f32>(x_650.y, x_650.z, x_650.w)) + vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_659 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_661 : f32 = x_278.unity_LightData.y;
  u_xlat38 = min(x_659, x_661);
  let x_665 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_665));
  let x_669 : f32 = u_xlat1.x;
  let x_672 : f32 = x_381.x_AdditionalShadowFadeParams.x;
  let x_675 : f32 = x_381.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_669 * x_672) + x_675);
  let x_679 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_679, 0.0f, 1.0f);
  let x_683 : f32 = x_451.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_685 : f32 = x_451.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_687 : f32 = x_451.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_689 : f32 = x_451.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_690 : vec4<f32> = vec4<f32>(x_683, x_685, x_687, x_689);
  let x_696 : vec4<bool> = (vec4<f32>(x_690.x, x_690.y, x_690.z, x_690.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_696.x, x_696.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_708 : u32 = u_xlatu_loop_1;
    let x_709 : u32 = u_xlatu38;
    if ((x_708 < x_709)) {
    } else {
      break;
    }
    let x_712 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_712 >> 2u);
    let x_716 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_716 & 3u));
    let x_721 : u32 = u_xlatu40;
    let x_724 : vec4<f32> = x_278.unity_LightIndices[bitcast<i32>(x_721)];
    let x_734 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_739 : vec4<u32> = indexable[x_734];
    u_xlat40 = dot(x_724, bitcast<vec4<f32>>(x_739));
    let x_743 : f32 = u_xlat40;
    u_xlati40 = i32(x_743);
    let x_746 : vec3<f32> = vs_TEXCOORD1;
    let x_757 : i32 = u_xlati40;
    let x_759 : vec4<f32> = x_756.x_AdditionalLightsPosition[x_757];
    let x_762 : i32 = u_xlati40;
    let x_764 : vec4<f32> = x_756.x_AdditionalLightsPosition[x_762];
    u_xlat8 = ((-(x_746) * vec3<f32>(x_759.w, x_759.w, x_759.w)) + vec3<f32>(x_764.x, x_764.y, x_764.z));
    let x_768 : vec3<f32> = u_xlat8;
    let x_769 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_768, x_769);
    let x_771 : f32 = u_xlat41;
    u_xlat41 = max(x_771, 0.00006103515625f);
    let x_774 : f32 = u_xlat41;
    u_xlat30 = inverseSqrt(x_774);
    let x_776 : f32 = u_xlat30;
    let x_778 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_776, x_776, x_776) * x_778);
    let x_780 : f32 = u_xlat41;
    u_xlat30 = (1.0f / x_780);
    let x_782 : f32 = u_xlat41;
    let x_783 : i32 = u_xlati40;
    let x_785 : f32 = x_756.x_AdditionalLightsAttenuation[x_783].x;
    u_xlat41 = (x_782 * x_785);
    let x_787 : f32 = u_xlat41;
    let x_789 : f32 = u_xlat41;
    u_xlat41 = ((-(x_787) * x_789) + 1.0f);
    let x_792 : f32 = u_xlat41;
    u_xlat41 = max(x_792, 0.0f);
    let x_794 : f32 = u_xlat41;
    let x_795 : f32 = u_xlat41;
    u_xlat41 = (x_794 * x_795);
    let x_797 : f32 = u_xlat41;
    let x_798 : f32 = u_xlat30;
    u_xlat41 = (x_797 * x_798);
    let x_800 : i32 = u_xlati40;
    let x_802 : vec4<f32> = x_756.x_AdditionalLightsSpotDir[x_800];
    let x_804 : vec3<f32> = u_xlat8;
    u_xlat30 = dot(vec3<f32>(x_802.x, x_802.y, x_802.z), x_804);
    let x_806 : f32 = u_xlat30;
    let x_807 : i32 = u_xlati40;
    let x_809 : f32 = x_756.x_AdditionalLightsAttenuation[x_807].z;
    let x_811 : i32 = u_xlati40;
    let x_813 : f32 = x_756.x_AdditionalLightsAttenuation[x_811].w;
    u_xlat30 = ((x_806 * x_809) + x_813);
    let x_815 : f32 = u_xlat30;
    u_xlat30 = clamp(x_815, 0.0f, 1.0f);
    let x_817 : f32 = u_xlat30;
    let x_818 : f32 = u_xlat30;
    u_xlat30 = (x_817 * x_818);
    let x_820 : f32 = u_xlat41;
    let x_821 : f32 = u_xlat30;
    u_xlat41 = (x_820 * x_821);
    let x_825 : i32 = u_xlati40;
    let x_827 : f32 = x_381.x_AdditionalShadowParams[x_825].w;
    u_xlati30 = i32(x_827);
    let x_830 : i32 = u_xlati30;
    u_xlatb42 = (x_830 >= 0i);
    let x_832 : bool = u_xlatb42;
    if (x_832) {
      let x_836 : i32 = u_xlati40;
      let x_838 : f32 = x_381.x_AdditionalShadowParams[x_836].z;
      u_xlatb42 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_838, x_838, x_838, x_838))));
      let x_842 : bool = u_xlatb42;
      if (x_842) {
        let x_847 : vec3<f32> = u_xlat8;
        let x_850 : vec3<f32> = u_xlat8;
        let x_853 : vec4<bool> = (abs(vec4<f32>(x_847.z, x_847.z, x_847.y, x_847.z)) >= abs(vec4<f32>(x_850.x, x_850.y, x_850.x, x_850.x)));
        let x_855 : vec3<bool> = vec3<bool>(x_853.x, x_853.y, x_853.z);
        let x_856 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_855.x, x_855.y, x_855.z, x_856.w);
        let x_859 : bool = u_xlatb9.y;
        let x_861 : bool = u_xlatb9.x;
        u_xlatb42 = (x_859 & x_861);
        let x_863 : vec3<f32> = u_xlat8;
        let x_866 : vec4<bool> = (-(vec4<f32>(x_863.z, x_863.y, x_863.z, x_863.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_867 : vec3<bool> = vec3<bool>(x_866.x, x_866.y, x_866.w);
        let x_868 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_867.x, x_867.y, x_868.z, x_867.z);
        let x_872 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_872);
        let x_878 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_878);
        let x_884 : bool = u_xlatb9.w;
        u_xlat43 = select(0.0f, 1.0f, x_884);
        let x_887 : bool = u_xlatb9.z;
        if (x_887) {
          let x_892 : f32 = u_xlat9.y;
          x_888 = x_892;
        } else {
          let x_894 : f32 = u_xlat43;
          x_888 = x_894;
        }
        let x_895 : f32 = x_888;
        u_xlat43 = x_895;
        let x_897 : bool = u_xlatb42;
        if (x_897) {
          let x_902 : f32 = u_xlat9.x;
          x_898 = x_902;
        } else {
          let x_904 : f32 = u_xlat43;
          x_898 = x_904;
        }
        let x_905 : f32 = x_898;
        u_xlat42 = x_905;
        let x_906 : i32 = u_xlati40;
        let x_908 : f32 = x_381.x_AdditionalShadowParams[x_906].w;
        u_xlat43 = trunc(x_908);
        let x_910 : f32 = u_xlat42;
        let x_911 : f32 = u_xlat43;
        u_xlat42 = (x_910 + x_911);
        let x_913 : f32 = u_xlat42;
        u_xlati30 = i32(x_913);
      }
      let x_915 : i32 = u_xlati30;
      u_xlati30 = (x_915 << bitcast<u32>(2i));
      let x_917 : vec3<f32> = vs_TEXCOORD1;
      let x_920 : i32 = u_xlati30;
      let x_923 : i32 = u_xlati30;
      let x_927 : vec4<f32> = x_381.x_AdditionalLightsWorldToShadow[((x_920 + 1i) / 4i)][((x_923 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_917.y, x_917.y, x_917.y, x_917.y) * x_927);
      let x_929 : i32 = u_xlati30;
      let x_931 : i32 = u_xlati30;
      let x_934 : vec4<f32> = x_381.x_AdditionalLightsWorldToShadow[(x_929 / 4i)][(x_931 % 4i)];
      let x_935 : vec3<f32> = vs_TEXCOORD1;
      let x_938 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_934 * vec4<f32>(x_935.x, x_935.x, x_935.x, x_935.x)) + x_938);
      let x_940 : i32 = u_xlati30;
      let x_943 : i32 = u_xlati30;
      let x_947 : vec4<f32> = x_381.x_AdditionalLightsWorldToShadow[((x_940 + 2i) / 4i)][((x_943 + 2i) % 4i)];
      let x_948 : vec3<f32> = vs_TEXCOORD1;
      let x_951 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_947 * vec4<f32>(x_948.z, x_948.z, x_948.z, x_948.z)) + x_951);
      let x_953 : vec4<f32> = u_xlat9;
      let x_954 : i32 = u_xlati30;
      let x_957 : i32 = u_xlati30;
      let x_961 : vec4<f32> = x_381.x_AdditionalLightsWorldToShadow[((x_954 + 3i) / 4i)][((x_957 + 3i) % 4i)];
      u_xlat9 = (x_953 + x_961);
      let x_963 : vec4<f32> = u_xlat9;
      let x_965 : vec4<f32> = u_xlat9;
      let x_967 : vec3<f32> = (vec3<f32>(x_963.x, x_963.y, x_963.z) / vec3<f32>(x_965.w, x_965.w, x_965.w));
      let x_968 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
      let x_971 : vec4<f32> = u_xlat9;
      let x_972 : vec2<f32> = vec2<f32>(x_971.x, x_971.y);
      let x_974 : f32 = u_xlat9.z;
      txVec1 = vec3<f32>(x_972.x, x_972.y, x_974);
      let x_982 : vec3<f32> = txVec1;
      let x_984 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_982.xy, x_982.z);
      u_xlat30 = x_984;
      let x_985 : i32 = u_xlati40;
      let x_987 : f32 = x_381.x_AdditionalShadowParams[x_985].x;
      u_xlat42 = (1.0f + -(x_987));
      let x_990 : f32 = u_xlat30;
      let x_991 : i32 = u_xlati40;
      let x_993 : f32 = x_381.x_AdditionalShadowParams[x_991].x;
      let x_995 : f32 = u_xlat42;
      u_xlat30 = ((x_990 * x_993) + x_995);
      let x_998 : f32 = u_xlat9.z;
      u_xlatb42 = (0.0f >= x_998);
      let x_1002 : f32 = u_xlat9.z;
      u_xlatb43 = (x_1002 >= 1.0f);
      let x_1004 : bool = u_xlatb42;
      let x_1005 : bool = u_xlatb43;
      u_xlatb42 = (x_1004 | x_1005);
      let x_1007 : bool = u_xlatb42;
      let x_1008 : f32 = u_xlat30;
      u_xlat30 = select(x_1008, 1.0f, x_1007);
    } else {
      u_xlat30 = 1.0f;
    }
    let x_1011 : f32 = u_xlat30;
    u_xlat42 = (-(x_1011) + 1.0f);
    let x_1015 : f32 = u_xlat1.x;
    let x_1016 : f32 = u_xlat42;
    let x_1018 : f32 = u_xlat30;
    u_xlat30 = ((x_1015 * x_1016) + x_1018);
    let x_1021 : i32 = u_xlati40;
    u_xlati42 = (1i << bitcast<u32>((x_1021 & 31i)));
    let x_1025 : i32 = u_xlati42;
    let x_1028 : f32 = x_451.x_AdditionalLightsCookieEnableBits;
    u_xlati42 = bitcast<i32>((bitcast<u32>(x_1025) & bitcast<u32>(x_1028)));
    let x_1032 : i32 = u_xlati42;
    if ((x_1032 != 0i)) {
      let x_1036 : i32 = u_xlati40;
      let x_1038 : f32 = x_451.x_AdditionalLightsLightTypes[x_1036].el;
      u_xlati42 = i32(x_1038);
      let x_1041 : i32 = u_xlati42;
      u_xlati43 = select(1i, 0i, (x_1041 != 0i));
      let x_1045 : i32 = u_xlati40;
      u_xlati44 = (x_1045 << bitcast<u32>(2i));
      let x_1047 : i32 = u_xlati43;
      if ((x_1047 != 0i)) {
        let x_1051 : vec3<f32> = vs_TEXCOORD1;
        let x_1053 : i32 = u_xlati44;
        let x_1056 : i32 = u_xlati44;
        let x_1060 : vec4<f32> = x_451.x_AdditionalLightsWorldToLights[((x_1053 + 1i) / 4i)][((x_1056 + 1i) % 4i)];
        let x_1062 : vec3<f32> = (vec3<f32>(x_1051.y, x_1051.y, x_1051.y) * vec3<f32>(x_1060.x, x_1060.y, x_1060.w));
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
        let x_1065 : i32 = u_xlati44;
        let x_1067 : i32 = u_xlati44;
        let x_1070 : vec4<f32> = x_451.x_AdditionalLightsWorldToLights[(x_1065 / 4i)][(x_1067 % 4i)];
        let x_1072 : vec3<f32> = vs_TEXCOORD1;
        let x_1075 : vec4<f32> = u_xlat9;
        let x_1077 : vec3<f32> = ((vec3<f32>(x_1070.x, x_1070.y, x_1070.w) * vec3<f32>(x_1072.x, x_1072.x, x_1072.x)) + vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
        let x_1078 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
        let x_1080 : i32 = u_xlati44;
        let x_1083 : i32 = u_xlati44;
        let x_1087 : vec4<f32> = x_451.x_AdditionalLightsWorldToLights[((x_1080 + 2i) / 4i)][((x_1083 + 2i) % 4i)];
        let x_1089 : vec3<f32> = vs_TEXCOORD1;
        let x_1092 : vec4<f32> = u_xlat9;
        let x_1094 : vec3<f32> = ((vec3<f32>(x_1087.x, x_1087.y, x_1087.w) * vec3<f32>(x_1089.z, x_1089.z, x_1089.z)) + vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
        let x_1095 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
        let x_1097 : vec4<f32> = u_xlat9;
        let x_1099 : i32 = u_xlati44;
        let x_1102 : i32 = u_xlati44;
        let x_1106 : vec4<f32> = x_451.x_AdditionalLightsWorldToLights[((x_1099 + 3i) / 4i)][((x_1102 + 3i) % 4i)];
        let x_1108 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) + vec3<f32>(x_1106.x, x_1106.y, x_1106.w));
        let x_1109 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
        let x_1111 : vec4<f32> = u_xlat9;
        let x_1113 : vec4<f32> = u_xlat9;
        let x_1115 : vec2<f32> = (vec2<f32>(x_1111.x, x_1111.y) / vec2<f32>(x_1113.z, x_1113.z));
        let x_1116 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1115.x, x_1115.y, x_1116.z, x_1116.w);
        let x_1118 : vec4<f32> = u_xlat9;
        let x_1121 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
        let x_1124 : vec4<f32> = u_xlat9;
        let x_1128 : vec2<f32> = clamp(vec2<f32>(x_1124.x, x_1124.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1129 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
        let x_1131 : i32 = u_xlati40;
        let x_1133 : vec4<f32> = x_451.x_AdditionalLightsCookieAtlasUVRects[x_1131];
        let x_1135 : vec4<f32> = u_xlat9;
        let x_1138 : i32 = u_xlati40;
        let x_1140 : vec4<f32> = x_451.x_AdditionalLightsCookieAtlasUVRects[x_1138];
        let x_1142 : vec2<f32> = ((vec2<f32>(x_1133.x, x_1133.y) * vec2<f32>(x_1135.x, x_1135.y)) + vec2<f32>(x_1140.z, x_1140.w));
        let x_1143 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
      } else {
        let x_1146 : i32 = u_xlati42;
        u_xlatb42 = (x_1146 == 1i);
        let x_1148 : bool = u_xlatb42;
        u_xlati42 = select(0i, 1i, x_1148);
        let x_1150 : i32 = u_xlati42;
        if ((x_1150 != 0i)) {
          let x_1156 : vec3<f32> = vs_TEXCOORD1;
          let x_1158 : i32 = u_xlati44;
          let x_1161 : i32 = u_xlati44;
          let x_1165 : vec4<f32> = x_451.x_AdditionalLightsWorldToLights[((x_1158 + 1i) / 4i)][((x_1161 + 1i) % 4i)];
          u_xlat33 = (vec2<f32>(x_1156.y, x_1156.y) * vec2<f32>(x_1165.x, x_1165.y));
          let x_1168 : i32 = u_xlati44;
          let x_1170 : i32 = u_xlati44;
          let x_1173 : vec4<f32> = x_451.x_AdditionalLightsWorldToLights[(x_1168 / 4i)][(x_1170 % 4i)];
          let x_1175 : vec3<f32> = vs_TEXCOORD1;
          let x_1178 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1173.x, x_1173.y) * vec2<f32>(x_1175.x, x_1175.x)) + x_1178);
          let x_1180 : i32 = u_xlati44;
          let x_1183 : i32 = u_xlati44;
          let x_1187 : vec4<f32> = x_451.x_AdditionalLightsWorldToLights[((x_1180 + 2i) / 4i)][((x_1183 + 2i) % 4i)];
          let x_1189 : vec3<f32> = vs_TEXCOORD1;
          let x_1192 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1187.x, x_1187.y) * vec2<f32>(x_1189.z, x_1189.z)) + x_1192);
          let x_1194 : vec2<f32> = u_xlat33;
          let x_1195 : i32 = u_xlati44;
          let x_1198 : i32 = u_xlati44;
          let x_1202 : vec4<f32> = x_451.x_AdditionalLightsWorldToLights[((x_1195 + 3i) / 4i)][((x_1198 + 3i) % 4i)];
          u_xlat33 = (x_1194 + vec2<f32>(x_1202.x, x_1202.y));
          let x_1205 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1205 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1208 : vec2<f32> = u_xlat33;
          u_xlat33 = fract(x_1208);
          let x_1210 : i32 = u_xlati40;
          let x_1212 : vec4<f32> = x_451.x_AdditionalLightsCookieAtlasUVRects[x_1210];
          let x_1214 : vec2<f32> = u_xlat33;
          let x_1216 : i32 = u_xlati40;
          let x_1218 : vec4<f32> = x_451.x_AdditionalLightsCookieAtlasUVRects[x_1216];
          let x_1220 : vec2<f32> = ((vec2<f32>(x_1212.x, x_1212.y) * x_1214) + vec2<f32>(x_1218.z, x_1218.w));
          let x_1221 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1220.x, x_1220.y, x_1221.z, x_1221.w);
        } else {
          let x_1225 : vec3<f32> = vs_TEXCOORD1;
          let x_1227 : i32 = u_xlati44;
          let x_1230 : i32 = u_xlati44;
          let x_1234 : vec4<f32> = x_451.x_AdditionalLightsWorldToLights[((x_1227 + 1i) / 4i)][((x_1230 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1225.y, x_1225.y, x_1225.y, x_1225.y) * x_1234);
          let x_1236 : i32 = u_xlati44;
          let x_1238 : i32 = u_xlati44;
          let x_1241 : vec4<f32> = x_451.x_AdditionalLightsWorldToLights[(x_1236 / 4i)][(x_1238 % 4i)];
          let x_1242 : vec3<f32> = vs_TEXCOORD1;
          let x_1245 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1241 * vec4<f32>(x_1242.x, x_1242.x, x_1242.x, x_1242.x)) + x_1245);
          let x_1247 : i32 = u_xlati44;
          let x_1250 : i32 = u_xlati44;
          let x_1254 : vec4<f32> = x_451.x_AdditionalLightsWorldToLights[((x_1247 + 2i) / 4i)][((x_1250 + 2i) % 4i)];
          let x_1255 : vec3<f32> = vs_TEXCOORD1;
          let x_1258 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1254 * vec4<f32>(x_1255.z, x_1255.z, x_1255.z, x_1255.z)) + x_1258);
          let x_1260 : vec4<f32> = u_xlat10;
          let x_1261 : i32 = u_xlati44;
          let x_1264 : i32 = u_xlati44;
          let x_1268 : vec4<f32> = x_451.x_AdditionalLightsWorldToLights[((x_1261 + 3i) / 4i)][((x_1264 + 3i) % 4i)];
          u_xlat10 = (x_1260 + x_1268);
          let x_1270 : vec4<f32> = u_xlat10;
          let x_1272 : vec4<f32> = u_xlat10;
          let x_1274 : vec3<f32> = (vec3<f32>(x_1270.x, x_1270.y, x_1270.z) / vec3<f32>(x_1272.w, x_1272.w, x_1272.w));
          let x_1275 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
          let x_1277 : vec4<f32> = u_xlat10;
          let x_1279 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(vec3<f32>(x_1277.x, x_1277.y, x_1277.z), vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
          let x_1282 : f32 = u_xlat42;
          u_xlat42 = inverseSqrt(x_1282);
          let x_1284 : f32 = u_xlat42;
          let x_1286 : vec4<f32> = u_xlat10;
          let x_1288 : vec3<f32> = (vec3<f32>(x_1284, x_1284, x_1284) * vec3<f32>(x_1286.x, x_1286.y, x_1286.z));
          let x_1289 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
          let x_1291 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(abs(vec3<f32>(x_1291.x, x_1291.y, x_1291.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1296 : f32 = u_xlat42;
          u_xlat42 = max(x_1296, 0.00000099999999747524f);
          let x_1299 : f32 = u_xlat42;
          u_xlat42 = (1.0f / x_1299);
          let x_1302 : f32 = u_xlat42;
          let x_1304 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1302, x_1302, x_1302) * vec3<f32>(x_1304.z, x_1304.x, x_1304.y));
          let x_1308 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1308);
          let x_1312 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1312, 0.0f, 1.0f);
          let x_1316 : vec3<f32> = u_xlat11;
          let x_1318 : vec4<bool> = (vec4<f32>(x_1316.y, x_1316.z, x_1316.y, x_1316.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_1318.x, x_1318.y);
          let x_1321 : bool = u_xlatb33.x;
          if (x_1321) {
            let x_1326 : f32 = u_xlat11.x;
            x_1322 = x_1326;
          } else {
            let x_1329 : f32 = u_xlat11.x;
            x_1322 = -(x_1329);
          }
          let x_1331 : f32 = x_1322;
          u_xlat33.x = x_1331;
          let x_1334 : bool = u_xlatb33.y;
          if (x_1334) {
            let x_1339 : f32 = u_xlat11.x;
            x_1335 = x_1339;
          } else {
            let x_1342 : f32 = u_xlat11.x;
            x_1335 = -(x_1342);
          }
          let x_1344 : f32 = x_1335;
          u_xlat33.y = x_1344;
          let x_1346 : vec4<f32> = u_xlat10;
          let x_1348 : f32 = u_xlat42;
          let x_1351 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1346.x, x_1346.y) * vec2<f32>(x_1348, x_1348)) + x_1351);
          let x_1353 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1353 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1356 : vec2<f32> = u_xlat33;
          u_xlat33 = clamp(x_1356, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1360 : i32 = u_xlati40;
          let x_1362 : vec4<f32> = x_451.x_AdditionalLightsCookieAtlasUVRects[x_1360];
          let x_1364 : vec2<f32> = u_xlat33;
          let x_1366 : i32 = u_xlati40;
          let x_1368 : vec4<f32> = x_451.x_AdditionalLightsCookieAtlasUVRects[x_1366];
          let x_1370 : vec2<f32> = ((vec2<f32>(x_1362.x, x_1362.y) * x_1364) + vec2<f32>(x_1368.z, x_1368.w));
          let x_1371 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1370.x, x_1370.y, x_1371.z, x_1371.w);
        }
      }
      let x_1378 : vec4<f32> = u_xlat9;
      let x_1380 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1378.x, x_1378.y), 0.0f);
      u_xlat9 = x_1380;
      let x_1382 : bool = u_xlatb6.y;
      if (x_1382) {
        let x_1387 : f32 = u_xlat9.w;
        x_1383 = x_1387;
      } else {
        let x_1390 : f32 = u_xlat9.x;
        x_1383 = x_1390;
      }
      let x_1391 : f32 = x_1383;
      u_xlat42 = x_1391;
      let x_1393 : bool = u_xlatb6.x;
      if (x_1393) {
        let x_1397 : vec4<f32> = u_xlat9;
        x_1394 = vec3<f32>(x_1397.x, x_1397.y, x_1397.z);
      } else {
        let x_1400 : f32 = u_xlat42;
        x_1394 = vec3<f32>(x_1400, x_1400, x_1400);
      }
      let x_1402 : vec3<f32> = x_1394;
      let x_1403 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1402.x, x_1402.y, x_1402.z, x_1403.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1409 : vec4<f32> = u_xlat9;
    let x_1411 : i32 = u_xlati40;
    let x_1413 : vec4<f32> = x_756.x_AdditionalLightsColor[x_1411];
    let x_1415 : vec3<f32> = (vec3<f32>(x_1409.x, x_1409.y, x_1409.z) * vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
    let x_1416 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
    let x_1418 : f32 = u_xlat41;
    let x_1419 : f32 = u_xlat30;
    u_xlat40 = (x_1418 * x_1419);
    let x_1421 : f32 = u_xlat40;
    let x_1423 : vec4<f32> = u_xlat9;
    let x_1425 : vec3<f32> = (vec3<f32>(x_1421, x_1421, x_1421) * vec3<f32>(x_1423.x, x_1423.y, x_1423.z));
    let x_1426 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1425.x, x_1425.y, x_1425.z, x_1426.w);
    let x_1428 : vec4<f32> = u_xlat2;
    let x_1430 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1428.x, x_1428.y, x_1428.z), x_1430);
    let x_1432 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1432, 0.0f, 1.0f);
    let x_1434 : f32 = u_xlat40;
    let x_1436 : vec4<f32> = u_xlat9;
    let x_1438 : vec3<f32> = (vec3<f32>(x_1434, x_1434, x_1434) * vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
    let x_1439 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
    let x_1441 : vec3<f32> = u_xlat3;
    let x_1442 : vec3<f32> = u_xlat12;
    let x_1445 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1441 * vec3<f32>(x_1442.x, x_1442.x, x_1442.x)) + x_1445);
    let x_1447 : vec3<f32> = u_xlat8;
    let x_1448 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1447, x_1448);
    let x_1450 : f32 = u_xlat40;
    u_xlat40 = max(x_1450, 1.17549435e-38f);
    let x_1452 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1452);
    let x_1454 : f32 = u_xlat40;
    let x_1456 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1454, x_1454, x_1454) * x_1456);
    let x_1458 : vec4<f32> = u_xlat2;
    let x_1460 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1458.x, x_1458.y, x_1458.z), x_1460);
    let x_1462 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1462, 0.0f, 1.0f);
    let x_1464 : f32 = u_xlat40;
    u_xlat40 = log2(x_1464);
    let x_1466 : f32 = u_xlat36;
    let x_1467 : f32 = u_xlat40;
    u_xlat40 = (x_1466 * x_1467);
    let x_1469 : f32 = u_xlat40;
    u_xlat40 = exp2(x_1469);
    let x_1471 : f32 = u_xlat40;
    let x_1474 : vec4<f32> = x_41.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1471, x_1471, x_1471) * vec3<f32>(x_1474.x, x_1474.y, x_1474.z));
    let x_1477 : vec3<f32> = u_xlat8;
    let x_1478 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1477 * vec3<f32>(x_1478.x, x_1478.y, x_1478.z));
    let x_1481 : vec4<f32> = u_xlat10;
    let x_1483 : vec4<f32> = u_xlat1;
    let x_1486 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1481.x, x_1481.y, x_1481.z) * vec3<f32>(x_1483.y, x_1483.z, x_1483.w)) + x_1486);
    let x_1488 : vec3<f32> = u_xlat7;
    let x_1489 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1488 + x_1489);

    continuing {
      let x_1491 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1491 + bitcast<u32>(1i));
    }
  }
  let x_1493 : vec3<f32> = u_xlat4;
  let x_1494 : vec4<f32> = u_xlat1;
  let x_1497 : vec4<f32> = u_xlat5;
  let x_1499 : vec3<f32> = ((x_1493 * vec3<f32>(x_1494.y, x_1494.z, x_1494.w)) + vec3<f32>(x_1497.x, x_1497.y, x_1497.z));
  let x_1500 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
  let x_1504 : vec3<f32> = u_xlat7;
  let x_1505 : vec4<f32> = u_xlat1;
  let x_1507 : vec3<f32> = (x_1504 + vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
  let x_1508 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1507.x, x_1507.y, x_1507.z, x_1508.w);
  let x_1511 : f32 = x_41.x_Surface;
  u_xlatb12 = (x_1511 == 1.0f);
  let x_1513 : bool = u_xlatb12;
  let x_1514 : bool = u_xlatb24;
  u_xlatb12 = (x_1513 | x_1514);
  let x_1516 : bool = u_xlatb12;
  if (x_1516) {
    let x_1521 : f32 = u_xlat0.x;
    x_1517 = x_1521;
  } else {
    x_1517 = 1.0f;
  }
  let x_1523 : f32 = x_1517;
  SV_Target0.w = x_1523;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


