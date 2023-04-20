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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat11 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlatb11 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_158 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu11 : u32;

var<private> u_xlati11 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb33 : bool;

var<private> u_xlatb1 : bool;

var<private> u_xlat35 : f32;

@group(1) @binding(5) var<uniform> x_475 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

@group(1) @binding(2) var<uniform> x_598 : UnityPerDraw;

var<private> u_xlatu35 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlati35 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_720 : AdditionalLights;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlati37 : i32;

var<private> u_xlatb27 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat27 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb38 : bool;

var<private> u_xlati27 : i32;

var<private> u_xlati38 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb30 : vec2<bool>;

var<private> u_xlat30 : vec2<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb35 : bool;

fn main_1() {
  var x_60 : f32;
  var x_110 : f32;
  var txVec0 : vec3<f32>;
  var x_559 : f32;
  var x_571 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_850 : f32;
  var x_861 : f32;
  var txVec1 : vec3<f32>;
  var x_1299 : f32;
  var x_1312 : f32;
  var x_1360 : f32;
  var x_1372 : vec3<f32>;
  var x_1449 : f32;
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
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_41.x_BaseColor.w;
  let x_77 : f32 = x_41.x_Cutoff;
  u_xlat11 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat33;
  let x_90 : f32 = u_xlat22;
  u_xlat22 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat22;
  u_xlat22 = max(x_93, 0.00009999999747378752f);
  let x_96 : f32 = u_xlat11;
  let x_97 : f32 = u_xlat22;
  u_xlat11 = (x_96 / x_97);
  let x_99 : f32 = u_xlat11;
  u_xlat11 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat11;
  u_xlat11 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb22;
  if (x_109) {
    let x_113 : f32 = u_xlat11;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat11 = (x_120 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat11;
  u_xlatb11 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb11;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_139);
  let x_143 : f32 = u_xlat11;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_149 : vec3<f32> = vs_TEXCOORD1;
  let x_160 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres0;
  let x_163 : vec3<f32> = (x_149 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_TEXCOORD1;
  let x_170 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres1;
  let x_173 : vec3<f32> = (x_167 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec3<f32> = vs_TEXCOORD1;
  let x_180 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_177 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_185 : vec3<f32> = vs_TEXCOORD1;
  let x_187 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_185 + -(vec3<f32>(x_187.x, x_187.y, x_187.z)));
  let x_191 : vec4<f32> = u_xlat3;
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_197 : vec4<f32> = u_xlat4;
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_197.x, x_197.y, x_197.z), vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_204 : vec3<f32> = u_xlat5;
  let x_205 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_204, x_205);
  let x_209 : vec3<f32> = u_xlat6;
  let x_210 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_209, x_210);
  let x_216 : vec4<f32> = u_xlat3;
  let x_219 : vec4<f32> = x_158.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_216 < x_219);
  let x_222 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_222);
  let x_226 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_238);
  let x_244 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_244);
  let x_248 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_248);
  let x_251 : vec4<f32> = u_xlat3;
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) + vec3<f32>(x_253.y, x_253.z, x_253.w));
  let x_256 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat3;
  let x_261 : vec3<f32> = max(vec3<f32>(x_258.x, x_258.y, x_258.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_262 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_262.x, x_261.x, x_261.y, x_261.z);
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat11 = dot(x_264, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_270 : f32 = u_xlat11;
  u_xlat11 = (-(x_270) + 4.0f);
  let x_275 : f32 = u_xlat11;
  u_xlatu11 = u32(x_275);
  let x_279 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_279) << bitcast<u32>(2i));
  let x_282 : vec3<f32> = vs_TEXCOORD1;
  let x_284 : i32 = u_xlati11;
  let x_287 : i32 = u_xlati11;
  let x_291 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_284 + 1i) / 4i)][((x_287 + 1i) % 4i)];
  let x_293 : vec3<f32> = (vec3<f32>(x_282.y, x_282.y, x_282.y) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : i32 = u_xlati11;
  let x_298 : i32 = u_xlati11;
  let x_301 : vec4<f32> = x_158.x_MainLightWorldToShadow[(x_296 / 4i)][(x_298 % 4i)];
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_306 : vec4<f32> = u_xlat3;
  let x_308 : vec3<f32> = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.x, x_303.x)) + vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : i32 = u_xlati11;
  let x_314 : i32 = u_xlati11;
  let x_318 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_311 + 2i) / 4i)][((x_314 + 2i) % 4i)];
  let x_320 : vec3<f32> = vs_TEXCOORD1;
  let x_323 : vec4<f32> = u_xlat3;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.z, x_320.z, x_320.z)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat3;
  let x_330 : i32 = u_xlati11;
  let x_333 : i32 = u_xlati11;
  let x_337 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_330 + 3i) / 4i)][((x_333 + 3i) % 4i)];
  let x_339 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_348 : vec2<f32> = vs_TEXCOORD7;
  let x_350 : f32 = x_27.x_GlobalMipBias.x;
  let x_351 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_348, x_350);
  u_xlat4 = x_351;
  let x_356 : vec2<f32> = vs_TEXCOORD7;
  let x_358 : f32 = x_27.x_GlobalMipBias.x;
  let x_359 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_356, x_358);
  u_xlat5 = vec3<f32>(x_359.x, x_359.y, x_359.z);
  let x_361 : vec4<f32> = u_xlat4;
  let x_365 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_366 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec3<f32> = u_xlat2;
  let x_369 : vec4<f32> = u_xlat4;
  u_xlat11 = dot(x_368, vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : f32 = u_xlat11;
  u_xlat11 = (x_372 + 0.5f);
  let x_374 : f32 = u_xlat11;
  let x_376 : vec3<f32> = u_xlat5;
  let x_377 : vec3<f32> = (vec3<f32>(x_374, x_374, x_374) * x_376);
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = u_xlat4.w;
  u_xlat11 = max(x_381, 0.00009999999747378752f);
  let x_383 : vec4<f32> = u_xlat4;
  let x_385 : f32 = u_xlat11;
  let x_387 : vec3<f32> = (vec3<f32>(x_383.x, x_383.y, x_383.z) / vec3<f32>(x_385, x_385, x_385));
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_392 : vec4<f32> = u_xlat3;
  let x_393 : vec2<f32> = vec2<f32>(x_392.x, x_392.y);
  let x_395 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_393.x, x_393.y, x_395);
  let x_407 : vec3<f32> = txVec0;
  let x_409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_407.xy, x_407.z);
  u_xlat11 = x_409;
  let x_412 : f32 = x_158.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_412) + 1.0f);
  let x_415 : f32 = u_xlat11;
  let x_417 : f32 = x_158.x_MainLightShadowParams.x;
  let x_419 : f32 = u_xlat33;
  u_xlat11 = ((x_415 * x_417) + x_419);
  let x_423 : f32 = u_xlat3.z;
  u_xlatb33 = (0.0f >= x_423);
  let x_427 : f32 = u_xlat3.z;
  u_xlatb1 = (x_427 >= 1.0f);
  let x_429 : bool = u_xlatb33;
  let x_430 : bool = u_xlatb1;
  u_xlatb33 = (x_429 | x_430);
  let x_432 : bool = u_xlatb33;
  let x_433 : f32 = u_xlat11;
  u_xlat11 = select(x_433, 1.0f, x_432);
  let x_435 : vec3<f32> = vs_TEXCOORD1;
  let x_438 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_440 : vec3<f32> = (x_435 + -(x_438));
  let x_441 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat3;
  let x_445 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(vec3<f32>(x_443.x, x_443.y, x_443.z), vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : f32 = u_xlat33;
  let x_450 : f32 = x_158.x_MainLightShadowParams.z;
  let x_453 : f32 = x_158.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_448 * x_450) + x_453);
  let x_457 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_457, 0.0f, 1.0f);
  let x_461 : f32 = u_xlat11;
  u_xlat35 = (-(x_461) + 1.0f);
  let x_465 : f32 = u_xlat1.x;
  let x_466 : f32 = u_xlat35;
  let x_468 : f32 = u_xlat11;
  u_xlat11 = ((x_465 * x_466) + x_468);
  let x_477 : f32 = x_475.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_477 == -1.0f));
  let x_479 : bool = u_xlatb1;
  if (x_479) {
    let x_482 : vec3<f32> = vs_TEXCOORD1;
    let x_485 : vec4<f32> = x_475.x_MainLightWorldToLight[1i];
    let x_487 : vec2<f32> = (vec2<f32>(x_482.y, x_482.y) * vec2<f32>(x_485.x, x_485.y));
    let x_488 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_487.x, x_487.y, x_488.z, x_488.w);
    let x_491 : vec4<f32> = x_475.x_MainLightWorldToLight[0i];
    let x_493 : vec3<f32> = vs_TEXCOORD1;
    let x_496 : vec4<f32> = u_xlat3;
    let x_498 : vec2<f32> = ((vec2<f32>(x_491.x, x_491.y) * vec2<f32>(x_493.x, x_493.x)) + vec2<f32>(x_496.x, x_496.y));
    let x_499 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_498.x, x_498.y, x_499.z, x_499.w);
    let x_502 : vec4<f32> = x_475.x_MainLightWorldToLight[2i];
    let x_504 : vec3<f32> = vs_TEXCOORD1;
    let x_507 : vec4<f32> = u_xlat3;
    let x_509 : vec2<f32> = ((vec2<f32>(x_502.x, x_502.y) * vec2<f32>(x_504.z, x_504.z)) + vec2<f32>(x_507.x, x_507.y));
    let x_510 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
    let x_512 : vec4<f32> = u_xlat3;
    let x_515 : vec4<f32> = x_475.x_MainLightWorldToLight[3i];
    let x_517 : vec2<f32> = (vec2<f32>(x_512.x, x_512.y) + vec2<f32>(x_515.x, x_515.y));
    let x_518 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
    let x_520 : vec4<f32> = u_xlat3;
    let x_524 : vec2<f32> = ((vec2<f32>(x_520.x, x_520.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_525 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
    let x_532 : vec4<f32> = u_xlat3;
    let x_535 : f32 = x_27.x_GlobalMipBias.x;
    let x_536 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_532.x, x_532.y), x_535);
    u_xlat3 = x_536;
    let x_541 : f32 = x_475.x_MainLightCookieTextureFormat;
    let x_543 : f32 = x_475.x_MainLightCookieTextureFormat;
    let x_545 : f32 = x_475.x_MainLightCookieTextureFormat;
    let x_547 : f32 = x_475.x_MainLightCookieTextureFormat;
    let x_548 : vec4<f32> = vec4<f32>(x_541, x_543, x_545, x_547);
    let x_555 : vec4<bool> = (vec4<f32>(x_548.x, x_548.y, x_548.z, x_548.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_555.x, x_555.y);
    let x_558 : bool = u_xlatb5.y;
    if (x_558) {
      let x_563 : f32 = u_xlat3.w;
      x_559 = x_563;
    } else {
      let x_566 : f32 = u_xlat3.x;
      x_559 = x_566;
    }
    let x_567 : f32 = x_559;
    u_xlat1.x = x_567;
    let x_570 : bool = u_xlatb5.x;
    if (x_570) {
      let x_574 : vec4<f32> = u_xlat3;
      x_571 = vec3<f32>(x_574.x, x_574.y, x_574.z);
    } else {
      let x_577 : vec4<f32> = u_xlat1;
      x_571 = vec3<f32>(x_577.x, x_577.x, x_577.x);
    }
    let x_579 : vec3<f32> = x_571;
    let x_580 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_586 : vec4<f32> = u_xlat3;
  let x_589 : vec4<f32> = x_27.x_MainLightColor;
  let x_591 : vec3<f32> = (vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_594 : f32 = u_xlat11;
  let x_600 : f32 = x_598.unity_LightData.z;
  u_xlat11 = (x_594 * x_600);
  let x_602 : f32 = u_xlat11;
  let x_604 : vec4<f32> = u_xlat3;
  let x_606 : vec3<f32> = (vec3<f32>(x_602, x_602, x_602) * vec3<f32>(x_604.x, x_604.y, x_604.z));
  let x_607 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_609 : vec3<f32> = u_xlat2;
  let x_611 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat11 = dot(x_609, vec3<f32>(x_611.x, x_611.y, x_611.z));
  let x_614 : f32 = u_xlat11;
  u_xlat11 = clamp(x_614, 0.0f, 1.0f);
  let x_616 : f32 = u_xlat11;
  let x_618 : vec4<f32> = u_xlat3;
  let x_620 : vec3<f32> = (vec3<f32>(x_616, x_616, x_616) * vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_621 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat1;
  let x_625 : vec4<f32> = u_xlat3;
  let x_627 : vec3<f32> = (vec3<f32>(x_623.y, x_623.z, x_623.w) * vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_628 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_631 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_633 : f32 = x_598.unity_LightData.y;
  u_xlat11 = min(x_631, x_633);
  let x_635 : f32 = u_xlat11;
  u_xlatu11 = bitcast<u32>(i32(x_635));
  let x_638 : f32 = u_xlat33;
  let x_641 : f32 = x_158.x_AdditionalShadowFadeParams.x;
  let x_644 : f32 = x_158.x_AdditionalShadowFadeParams.y;
  u_xlat33 = ((x_638 * x_641) + x_644);
  let x_646 : f32 = u_xlat33;
  u_xlat33 = clamp(x_646, 0.0f, 1.0f);
  let x_649 : f32 = x_475.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_651 : f32 = x_475.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_653 : f32 = x_475.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_655 : f32 = x_475.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_656 : vec4<f32> = vec4<f32>(x_649, x_651, x_653, x_655);
  let x_662 : vec4<bool> = (vec4<f32>(x_656.x, x_656.y, x_656.z, x_656.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_662.x, x_662.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_674 : u32 = u_xlatu_loop_1;
    let x_675 : u32 = u_xlatu11;
    if ((x_674 < x_675)) {
    } else {
      break;
    }
    let x_678 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_678 >> 2u);
    let x_681 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_681 & 3u));
    let x_685 : u32 = u_xlatu35;
    let x_688 : vec4<f32> = x_598.unity_LightIndices[bitcast<i32>(x_685)];
    let x_698 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_703 : vec4<u32> = indexable[x_698];
    u_xlat35 = dot(x_688, bitcast<vec4<f32>>(x_703));
    let x_707 : f32 = u_xlat35;
    u_xlati35 = i32(x_707);
    let x_710 : vec3<f32> = vs_TEXCOORD1;
    let x_721 : i32 = u_xlati35;
    let x_723 : vec4<f32> = x_720.x_AdditionalLightsPosition[x_721];
    let x_726 : i32 = u_xlati35;
    let x_728 : vec4<f32> = x_720.x_AdditionalLightsPosition[x_726];
    u_xlat7 = ((-(x_710) * vec3<f32>(x_723.w, x_723.w, x_723.w)) + vec3<f32>(x_728.x, x_728.y, x_728.z));
    let x_732 : vec3<f32> = u_xlat7;
    let x_733 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_732, x_733);
    let x_735 : f32 = u_xlat36;
    u_xlat36 = max(x_735, 0.00006103515625f);
    let x_739 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_739);
    let x_741 : f32 = u_xlat37;
    let x_743 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_741, x_741, x_741) * x_743);
    let x_745 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_745);
    let x_747 : f32 = u_xlat36;
    let x_748 : i32 = u_xlati35;
    let x_750 : f32 = x_720.x_AdditionalLightsAttenuation[x_748].x;
    u_xlat36 = (x_747 * x_750);
    let x_752 : f32 = u_xlat36;
    let x_754 : f32 = u_xlat36;
    u_xlat36 = ((-(x_752) * x_754) + 1.0f);
    let x_757 : f32 = u_xlat36;
    u_xlat36 = max(x_757, 0.0f);
    let x_759 : f32 = u_xlat36;
    let x_760 : f32 = u_xlat36;
    u_xlat36 = (x_759 * x_760);
    let x_762 : f32 = u_xlat36;
    let x_763 : f32 = u_xlat37;
    u_xlat36 = (x_762 * x_763);
    let x_765 : i32 = u_xlati35;
    let x_767 : vec4<f32> = x_720.x_AdditionalLightsSpotDir[x_765];
    let x_769 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_767.x, x_767.y, x_767.z), x_769);
    let x_771 : f32 = u_xlat37;
    let x_772 : i32 = u_xlati35;
    let x_774 : f32 = x_720.x_AdditionalLightsAttenuation[x_772].z;
    let x_776 : i32 = u_xlati35;
    let x_778 : f32 = x_720.x_AdditionalLightsAttenuation[x_776].w;
    u_xlat37 = ((x_771 * x_774) + x_778);
    let x_780 : f32 = u_xlat37;
    u_xlat37 = clamp(x_780, 0.0f, 1.0f);
    let x_782 : f32 = u_xlat37;
    let x_783 : f32 = u_xlat37;
    u_xlat37 = (x_782 * x_783);
    let x_785 : f32 = u_xlat36;
    let x_786 : f32 = u_xlat37;
    u_xlat36 = (x_785 * x_786);
    let x_790 : i32 = u_xlati35;
    let x_792 : f32 = x_158.x_AdditionalShadowParams[x_790].w;
    u_xlati37 = i32(x_792);
    let x_795 : i32 = u_xlati37;
    u_xlatb27 = (x_795 >= 0i);
    let x_797 : bool = u_xlatb27;
    if (x_797) {
      let x_801 : i32 = u_xlati35;
      let x_803 : f32 = x_158.x_AdditionalShadowParams[x_801].z;
      u_xlatb27 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_803, x_803, x_803, x_803))));
      let x_807 : bool = u_xlatb27;
      if (x_807) {
        let x_811 : vec3<f32> = u_xlat7;
        let x_814 : vec3<f32> = u_xlat7;
        let x_817 : vec4<bool> = (abs(vec4<f32>(x_811.z, x_811.z, x_811.y, x_811.z)) >= abs(vec4<f32>(x_814.x, x_814.y, x_814.x, x_814.x)));
        let x_819 : vec3<bool> = vec3<bool>(x_817.x, x_817.y, x_817.z);
        let x_820 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_819.x, x_819.y, x_819.z, x_820.w);
        let x_823 : bool = u_xlatb8.y;
        let x_825 : bool = u_xlatb8.x;
        u_xlatb27 = (x_823 & x_825);
        let x_827 : vec3<f32> = u_xlat7;
        let x_830 : vec4<bool> = (-(vec4<f32>(x_827.z, x_827.y, x_827.z, x_827.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_831 : vec3<bool> = vec3<bool>(x_830.x, x_830.y, x_830.w);
        let x_832 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_831.x, x_831.y, x_832.z, x_831.z);
        let x_836 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_836);
        let x_841 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_841);
        let x_846 : bool = u_xlatb8.w;
        u_xlat38 = select(0.0f, 1.0f, x_846);
        let x_849 : bool = u_xlatb8.z;
        if (x_849) {
          let x_854 : f32 = u_xlat8.y;
          x_850 = x_854;
        } else {
          let x_856 : f32 = u_xlat38;
          x_850 = x_856;
        }
        let x_857 : f32 = x_850;
        u_xlat38 = x_857;
        let x_860 : bool = u_xlatb27;
        if (x_860) {
          let x_865 : f32 = u_xlat8.x;
          x_861 = x_865;
        } else {
          let x_867 : f32 = u_xlat38;
          x_861 = x_867;
        }
        let x_868 : f32 = x_861;
        u_xlat27.x = x_868;
        let x_870 : i32 = u_xlati35;
        let x_872 : f32 = x_158.x_AdditionalShadowParams[x_870].w;
        u_xlat38 = trunc(x_872);
        let x_875 : f32 = u_xlat27.x;
        let x_876 : f32 = u_xlat38;
        u_xlat27.x = (x_875 + x_876);
        let x_880 : f32 = u_xlat27.x;
        u_xlati37 = i32(x_880);
      }
      let x_882 : i32 = u_xlati37;
      u_xlati37 = (x_882 << bitcast<u32>(2i));
      let x_884 : vec3<f32> = vs_TEXCOORD1;
      let x_887 : i32 = u_xlati37;
      let x_890 : i32 = u_xlati37;
      let x_894 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_887 + 1i) / 4i)][((x_890 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_884.y, x_884.y, x_884.y, x_884.y) * x_894);
      let x_896 : i32 = u_xlati37;
      let x_898 : i32 = u_xlati37;
      let x_901 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[(x_896 / 4i)][(x_898 % 4i)];
      let x_902 : vec3<f32> = vs_TEXCOORD1;
      let x_905 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_901 * vec4<f32>(x_902.x, x_902.x, x_902.x, x_902.x)) + x_905);
      let x_907 : i32 = u_xlati37;
      let x_910 : i32 = u_xlati37;
      let x_914 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_907 + 2i) / 4i)][((x_910 + 2i) % 4i)];
      let x_915 : vec3<f32> = vs_TEXCOORD1;
      let x_918 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_914 * vec4<f32>(x_915.z, x_915.z, x_915.z, x_915.z)) + x_918);
      let x_920 : vec4<f32> = u_xlat8;
      let x_921 : i32 = u_xlati37;
      let x_924 : i32 = u_xlati37;
      let x_928 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_921 + 3i) / 4i)][((x_924 + 3i) % 4i)];
      u_xlat8 = (x_920 + x_928);
      let x_930 : vec4<f32> = u_xlat8;
      let x_932 : vec4<f32> = u_xlat8;
      let x_934 : vec3<f32> = (vec3<f32>(x_930.x, x_930.y, x_930.z) / vec3<f32>(x_932.w, x_932.w, x_932.w));
      let x_935 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
      let x_938 : vec4<f32> = u_xlat8;
      let x_939 : vec2<f32> = vec2<f32>(x_938.x, x_938.y);
      let x_941 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_939.x, x_939.y, x_941);
      let x_949 : vec3<f32> = txVec1;
      let x_951 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_949.xy, x_949.z);
      u_xlat37 = x_951;
      let x_952 : i32 = u_xlati35;
      let x_954 : f32 = x_158.x_AdditionalShadowParams[x_952].x;
      u_xlat27.x = (1.0f + -(x_954));
      let x_958 : f32 = u_xlat37;
      let x_959 : i32 = u_xlati35;
      let x_961 : f32 = x_158.x_AdditionalShadowParams[x_959].x;
      let x_964 : f32 = u_xlat27.x;
      u_xlat37 = ((x_958 * x_961) + x_964);
      let x_967 : f32 = u_xlat8.z;
      u_xlatb27 = (0.0f >= x_967);
      let x_971 : f32 = u_xlat8.z;
      u_xlatb38 = (x_971 >= 1.0f);
      let x_973 : bool = u_xlatb38;
      let x_974 : bool = u_xlatb27;
      u_xlatb27 = (x_973 | x_974);
      let x_976 : bool = u_xlatb27;
      let x_977 : f32 = u_xlat37;
      u_xlat37 = select(x_977, 1.0f, x_976);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_980 : f32 = u_xlat37;
    u_xlat27.x = (-(x_980) + 1.0f);
    let x_984 : f32 = u_xlat33;
    let x_986 : f32 = u_xlat27.x;
    let x_988 : f32 = u_xlat37;
    u_xlat37 = ((x_984 * x_986) + x_988);
    let x_991 : i32 = u_xlati35;
    u_xlati27 = (1i << bitcast<u32>((x_991 & 31i)));
    let x_995 : i32 = u_xlati27;
    let x_998 : f32 = x_475.x_AdditionalLightsCookieEnableBits;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_995) & bitcast<u32>(x_998)));
    let x_1002 : i32 = u_xlati27;
    if ((x_1002 != 0i)) {
      let x_1006 : i32 = u_xlati35;
      let x_1008 : f32 = x_475.x_AdditionalLightsLightTypes[x_1006].el;
      u_xlati27 = i32(x_1008);
      let x_1011 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_1011 != 0i));
      let x_1015 : i32 = u_xlati35;
      u_xlati39 = (x_1015 << bitcast<u32>(2i));
      let x_1017 : i32 = u_xlati38;
      if ((x_1017 != 0i)) {
        let x_1021 : vec3<f32> = vs_TEXCOORD1;
        let x_1023 : i32 = u_xlati39;
        let x_1026 : i32 = u_xlati39;
        let x_1030 : vec4<f32> = x_475.x_AdditionalLightsWorldToLights[((x_1023 + 1i) / 4i)][((x_1026 + 1i) % 4i)];
        let x_1032 : vec3<f32> = (vec3<f32>(x_1021.y, x_1021.y, x_1021.y) * vec3<f32>(x_1030.x, x_1030.y, x_1030.w));
        let x_1033 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
        let x_1035 : i32 = u_xlati39;
        let x_1037 : i32 = u_xlati39;
        let x_1040 : vec4<f32> = x_475.x_AdditionalLightsWorldToLights[(x_1035 / 4i)][(x_1037 % 4i)];
        let x_1042 : vec3<f32> = vs_TEXCOORD1;
        let x_1045 : vec4<f32> = u_xlat8;
        let x_1047 : vec3<f32> = ((vec3<f32>(x_1040.x, x_1040.y, x_1040.w) * vec3<f32>(x_1042.x, x_1042.x, x_1042.x)) + vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
        let x_1048 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
        let x_1050 : i32 = u_xlati39;
        let x_1053 : i32 = u_xlati39;
        let x_1057 : vec4<f32> = x_475.x_AdditionalLightsWorldToLights[((x_1050 + 2i) / 4i)][((x_1053 + 2i) % 4i)];
        let x_1059 : vec3<f32> = vs_TEXCOORD1;
        let x_1062 : vec4<f32> = u_xlat8;
        let x_1064 : vec3<f32> = ((vec3<f32>(x_1057.x, x_1057.y, x_1057.w) * vec3<f32>(x_1059.z, x_1059.z, x_1059.z)) + vec3<f32>(x_1062.x, x_1062.y, x_1062.z));
        let x_1065 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat8;
        let x_1069 : i32 = u_xlati39;
        let x_1072 : i32 = u_xlati39;
        let x_1076 : vec4<f32> = x_475.x_AdditionalLightsWorldToLights[((x_1069 + 3i) / 4i)][((x_1072 + 3i) % 4i)];
        let x_1078 : vec3<f32> = (vec3<f32>(x_1067.x, x_1067.y, x_1067.z) + vec3<f32>(x_1076.x, x_1076.y, x_1076.w));
        let x_1079 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
        let x_1081 : vec4<f32> = u_xlat8;
        let x_1083 : vec4<f32> = u_xlat8;
        let x_1085 : vec2<f32> = (vec2<f32>(x_1081.x, x_1081.y) / vec2<f32>(x_1083.z, x_1083.z));
        let x_1086 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1085.x, x_1085.y, x_1086.z, x_1086.w);
        let x_1088 : vec4<f32> = u_xlat8;
        let x_1091 : vec2<f32> = ((vec2<f32>(x_1088.x, x_1088.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1092 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1091.x, x_1091.y, x_1092.z, x_1092.w);
        let x_1094 : vec4<f32> = u_xlat8;
        let x_1098 : vec2<f32> = clamp(vec2<f32>(x_1094.x, x_1094.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1099 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1101 : i32 = u_xlati35;
        let x_1103 : vec4<f32> = x_475.x_AdditionalLightsCookieAtlasUVRects[x_1101];
        let x_1105 : vec4<f32> = u_xlat8;
        let x_1108 : i32 = u_xlati35;
        let x_1110 : vec4<f32> = x_475.x_AdditionalLightsCookieAtlasUVRects[x_1108];
        let x_1112 : vec2<f32> = ((vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(x_1105.x, x_1105.y)) + vec2<f32>(x_1110.z, x_1110.w));
        let x_1113 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1112.x, x_1112.y, x_1113.z, x_1113.w);
      } else {
        let x_1116 : i32 = u_xlati27;
        u_xlatb27 = (x_1116 == 1i);
        let x_1118 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_1118);
        let x_1120 : i32 = u_xlati27;
        if ((x_1120 != 0i)) {
          let x_1124 : vec3<f32> = vs_TEXCOORD1;
          let x_1126 : i32 = u_xlati39;
          let x_1129 : i32 = u_xlati39;
          let x_1133 : vec4<f32> = x_475.x_AdditionalLightsWorldToLights[((x_1126 + 1i) / 4i)][((x_1129 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_1124.y, x_1124.y) * vec2<f32>(x_1133.x, x_1133.y));
          let x_1136 : i32 = u_xlati39;
          let x_1138 : i32 = u_xlati39;
          let x_1141 : vec4<f32> = x_475.x_AdditionalLightsWorldToLights[(x_1136 / 4i)][(x_1138 % 4i)];
          let x_1143 : vec3<f32> = vs_TEXCOORD1;
          let x_1146 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1141.x, x_1141.y) * vec2<f32>(x_1143.x, x_1143.x)) + x_1146);
          let x_1148 : i32 = u_xlati39;
          let x_1151 : i32 = u_xlati39;
          let x_1155 : vec4<f32> = x_475.x_AdditionalLightsWorldToLights[((x_1148 + 2i) / 4i)][((x_1151 + 2i) % 4i)];
          let x_1157 : vec3<f32> = vs_TEXCOORD1;
          let x_1160 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1155.x, x_1155.y) * vec2<f32>(x_1157.z, x_1157.z)) + x_1160);
          let x_1162 : vec2<f32> = u_xlat27;
          let x_1163 : i32 = u_xlati39;
          let x_1166 : i32 = u_xlati39;
          let x_1170 : vec4<f32> = x_475.x_AdditionalLightsWorldToLights[((x_1163 + 3i) / 4i)][((x_1166 + 3i) % 4i)];
          u_xlat27 = (x_1162 + vec2<f32>(x_1170.x, x_1170.y));
          let x_1173 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1173 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1176 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_1176);
          let x_1178 : i32 = u_xlati35;
          let x_1180 : vec4<f32> = x_475.x_AdditionalLightsCookieAtlasUVRects[x_1178];
          let x_1182 : vec2<f32> = u_xlat27;
          let x_1184 : i32 = u_xlati35;
          let x_1186 : vec4<f32> = x_475.x_AdditionalLightsCookieAtlasUVRects[x_1184];
          let x_1188 : vec2<f32> = ((vec2<f32>(x_1180.x, x_1180.y) * x_1182) + vec2<f32>(x_1186.z, x_1186.w));
          let x_1189 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1189.w);
        } else {
          let x_1193 : vec3<f32> = vs_TEXCOORD1;
          let x_1195 : i32 = u_xlati39;
          let x_1198 : i32 = u_xlati39;
          let x_1202 : vec4<f32> = x_475.x_AdditionalLightsWorldToLights[((x_1195 + 1i) / 4i)][((x_1198 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1193.y, x_1193.y, x_1193.y, x_1193.y) * x_1202);
          let x_1204 : i32 = u_xlati39;
          let x_1206 : i32 = u_xlati39;
          let x_1209 : vec4<f32> = x_475.x_AdditionalLightsWorldToLights[(x_1204 / 4i)][(x_1206 % 4i)];
          let x_1210 : vec3<f32> = vs_TEXCOORD1;
          let x_1213 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1209 * vec4<f32>(x_1210.x, x_1210.x, x_1210.x, x_1210.x)) + x_1213);
          let x_1215 : i32 = u_xlati39;
          let x_1218 : i32 = u_xlati39;
          let x_1222 : vec4<f32> = x_475.x_AdditionalLightsWorldToLights[((x_1215 + 2i) / 4i)][((x_1218 + 2i) % 4i)];
          let x_1223 : vec3<f32> = vs_TEXCOORD1;
          let x_1226 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1222 * vec4<f32>(x_1223.z, x_1223.z, x_1223.z, x_1223.z)) + x_1226);
          let x_1228 : vec4<f32> = u_xlat9;
          let x_1229 : i32 = u_xlati39;
          let x_1232 : i32 = u_xlati39;
          let x_1236 : vec4<f32> = x_475.x_AdditionalLightsWorldToLights[((x_1229 + 3i) / 4i)][((x_1232 + 3i) % 4i)];
          u_xlat9 = (x_1228 + x_1236);
          let x_1238 : vec4<f32> = u_xlat9;
          let x_1240 : vec4<f32> = u_xlat9;
          let x_1242 : vec3<f32> = (vec3<f32>(x_1238.x, x_1238.y, x_1238.z) / vec3<f32>(x_1240.w, x_1240.w, x_1240.w));
          let x_1243 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
          let x_1245 : vec4<f32> = u_xlat9;
          let x_1247 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1245.x, x_1245.y, x_1245.z), vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
          let x_1252 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1252);
          let x_1255 : vec2<f32> = u_xlat27;
          let x_1257 : vec4<f32> = u_xlat9;
          let x_1259 : vec3<f32> = (vec3<f32>(x_1255.x, x_1255.x, x_1255.x) * vec3<f32>(x_1257.x, x_1257.y, x_1257.z));
          let x_1260 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
          let x_1262 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1262.x, x_1262.y, x_1262.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1269 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1269, 0.00000099999999747524f);
          let x_1274 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1274);
          let x_1278 : vec2<f32> = u_xlat27;
          let x_1280 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1278.x, x_1278.x, x_1278.x) * vec3<f32>(x_1280.z, x_1280.x, x_1280.y));
          let x_1284 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1284);
          let x_1288 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1288, 0.0f, 1.0f);
          let x_1292 : vec3<f32> = u_xlat10;
          let x_1294 : vec4<bool> = (vec4<f32>(x_1292.y, x_1292.z, x_1292.y, x_1292.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1294.x, x_1294.y);
          let x_1298 : bool = u_xlatb30.x;
          if (x_1298) {
            let x_1303 : f32 = u_xlat10.x;
            x_1299 = x_1303;
          } else {
            let x_1306 : f32 = u_xlat10.x;
            x_1299 = -(x_1306);
          }
          let x_1308 : f32 = x_1299;
          u_xlat30.x = x_1308;
          let x_1311 : bool = u_xlatb30.y;
          if (x_1311) {
            let x_1316 : f32 = u_xlat10.x;
            x_1312 = x_1316;
          } else {
            let x_1319 : f32 = u_xlat10.x;
            x_1312 = -(x_1319);
          }
          let x_1321 : f32 = x_1312;
          u_xlat30.y = x_1321;
          let x_1323 : vec4<f32> = u_xlat9;
          let x_1325 : vec2<f32> = u_xlat27;
          let x_1328 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1323.x, x_1323.y) * vec2<f32>(x_1325.x, x_1325.x)) + x_1328);
          let x_1330 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1330 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1333 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1333, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1337 : i32 = u_xlati35;
          let x_1339 : vec4<f32> = x_475.x_AdditionalLightsCookieAtlasUVRects[x_1337];
          let x_1341 : vec2<f32> = u_xlat27;
          let x_1343 : i32 = u_xlati35;
          let x_1345 : vec4<f32> = x_475.x_AdditionalLightsCookieAtlasUVRects[x_1343];
          let x_1347 : vec2<f32> = ((vec2<f32>(x_1339.x, x_1339.y) * x_1341) + vec2<f32>(x_1345.z, x_1345.w));
          let x_1348 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1347.x, x_1347.y, x_1348.z, x_1348.w);
        }
      }
      let x_1355 : vec4<f32> = u_xlat8;
      let x_1357 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1355.x, x_1355.y), 0.0f);
      u_xlat8 = x_1357;
      let x_1359 : bool = u_xlatb5.y;
      if (x_1359) {
        let x_1364 : f32 = u_xlat8.w;
        x_1360 = x_1364;
      } else {
        let x_1367 : f32 = u_xlat8.x;
        x_1360 = x_1367;
      }
      let x_1368 : f32 = x_1360;
      u_xlat27.x = x_1368;
      let x_1371 : bool = u_xlatb5.x;
      if (x_1371) {
        let x_1375 : vec4<f32> = u_xlat8;
        x_1372 = vec3<f32>(x_1375.x, x_1375.y, x_1375.z);
      } else {
        let x_1378 : vec2<f32> = u_xlat27;
        x_1372 = vec3<f32>(x_1378.x, x_1378.x, x_1378.x);
      }
      let x_1380 : vec3<f32> = x_1372;
      let x_1381 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1387 : vec4<f32> = u_xlat8;
    let x_1389 : i32 = u_xlati35;
    let x_1391 : vec4<f32> = x_720.x_AdditionalLightsColor[x_1389];
    let x_1393 : vec3<f32> = (vec3<f32>(x_1387.x, x_1387.y, x_1387.z) * vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
    let x_1394 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
    let x_1396 : f32 = u_xlat36;
    let x_1397 : f32 = u_xlat37;
    u_xlat35 = (x_1396 * x_1397);
    let x_1399 : f32 = u_xlat35;
    let x_1401 : vec4<f32> = u_xlat8;
    let x_1403 : vec3<f32> = (vec3<f32>(x_1399, x_1399, x_1399) * vec3<f32>(x_1401.x, x_1401.y, x_1401.z));
    let x_1404 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1403.x, x_1403.y, x_1403.z, x_1404.w);
    let x_1406 : vec3<f32> = u_xlat2;
    let x_1407 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1406, x_1407);
    let x_1409 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1409, 0.0f, 1.0f);
    let x_1411 : f32 = u_xlat35;
    let x_1413 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1411, x_1411, x_1411) * vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
    let x_1416 : vec3<f32> = u_xlat7;
    let x_1417 : vec4<f32> = u_xlat1;
    let x_1420 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1416 * vec3<f32>(x_1417.y, x_1417.z, x_1417.w)) + x_1420);

    continuing {
      let x_1422 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1422 + bitcast<u32>(1i));
    }
  }
  let x_1424 : vec4<f32> = u_xlat4;
  let x_1426 : vec4<f32> = u_xlat1;
  let x_1429 : vec4<f32> = u_xlat3;
  let x_1431 : vec3<f32> = ((vec3<f32>(x_1424.x, x_1424.y, x_1424.z) * vec3<f32>(x_1426.y, x_1426.z, x_1426.w)) + vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
  let x_1432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1431.x, x_1431.y, x_1431.z, x_1432.w);
  let x_1436 : vec3<f32> = u_xlat6;
  let x_1437 : vec4<f32> = u_xlat1;
  let x_1439 : vec3<f32> = (x_1436 + vec3<f32>(x_1437.x, x_1437.y, x_1437.z));
  let x_1440 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
  let x_1443 : f32 = x_41.x_Surface;
  u_xlatb11 = (x_1443 == 1.0f);
  let x_1445 : bool = u_xlatb11;
  let x_1446 : bool = u_xlatb22;
  u_xlatb11 = (x_1445 | x_1446);
  let x_1448 : bool = u_xlatb11;
  if (x_1448) {
    let x_1453 : f32 = u_xlat0.x;
    x_1449 = x_1453;
  } else {
    x_1449 = 1.0f;
  }
  let x_1455 : f32 = x_1449;
  SV_Target0.w = x_1455;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


