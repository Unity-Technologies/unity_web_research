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
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Shininess : f32,
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat11 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb22 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_174 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat34 : f32;

var<private> u_xlatb34 : bool;

var<private> u_xlatb35 : bool;

var<private> u_xlat35 : f32;

@group(1) @binding(5) var<uniform> x_534 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

@group(1) @binding(2) var<uniform> x_656 : UnityPerDraw;

var<private> u_xlatu33 : u32;

var<private> u_xlatu36 : u32;

var<private> u_xlati37 : i32;

var<private> u_xlat36 : f32;

var<private> u_xlati36 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_780 : AdditionalLights;

var<private> u_xlat37 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlati27 : i32;

var<private> u_xlatb38 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat38 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb39 : bool;

var<private> u_xlati38 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlati40 : i32;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb30 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu35 : u32;

var<private> u_xlatb36 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_72 : f32;
  var x_121 : f32;
  var txVec0 : vec3<f32>;
  var x_618 : f32;
  var x_629 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_910 : f32;
  var x_920 : f32;
  var txVec1 : vec3<f32>;
  var x_1343 : f32;
  var x_1356 : f32;
  var x_1404 : f32;
  var x_1415 : vec3<f32>;
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
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_53 * x_55);
  let x_62 : f32 = u_xlat1.w;
  let x_68 : f32 = x_65.x_Cutoff;
  u_xlatb0 = (x_62 >= x_68);
  let x_70 : bool = u_xlatb0;
  if (x_70) {
    let x_76 : f32 = u_xlat1.w;
    x_72 = x_76;
  } else {
    x_72 = 0.0f;
  }
  let x_79 : f32 = x_72;
  u_xlat0.x = x_79;
  let x_83 : f32 = u_xlat0.w;
  let x_85 : f32 = vs_TEXCOORD7.w;
  let x_88 : f32 = x_65.x_Cutoff;
  u_xlat11 = ((x_83 * x_85) + -(x_88));
  let x_93 : f32 = u_xlat1.w;
  u_xlat22 = dpdxCoarse(x_93);
  let x_97 : f32 = u_xlat1.w;
  u_xlat33 = dpdyCoarse(x_97);
  let x_99 : f32 = u_xlat33;
  let x_101 : f32 = u_xlat22;
  u_xlat22 = (abs(x_99) + abs(x_101));
  let x_104 : f32 = u_xlat22;
  u_xlat22 = max(x_104, 0.00009999999747378752f);
  let x_107 : f32 = u_xlat11;
  let x_108 : f32 = u_xlat22;
  u_xlat11 = (x_107 / x_108);
  let x_110 : f32 = u_xlat11;
  u_xlat11 = (x_110 + 0.5f);
  let x_113 : f32 = u_xlat11;
  u_xlat11 = clamp(x_113, 0.0f, 1.0f);
  let x_118 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_118 == 0.0f));
  let x_120 : bool = u_xlatb22;
  if (x_120) {
    let x_124 : f32 = u_xlat11;
    x_121 = x_124;
  } else {
    let x_127 : f32 = u_xlat0.x;
    x_121 = x_127;
  }
  let x_128 : f32 = x_121;
  u_xlat0.x = x_128;
  let x_131 : f32 = u_xlat0.x;
  u_xlat0.x = (x_131 + -0.00009999999747378752f);
  let x_136 : f32 = u_xlat0.x;
  u_xlatb0 = (x_136 < 0.0f);
  let x_138 : bool = u_xlatb0;
  if (((select(0i, 1i, x_138) * -1i) != 0i)) {
    discard;
  }
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  let x_149 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_153);
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_158.x, x_158.x, x_158.x) * x_160);
  let x_164 : vec4<f32> = vs_TEXCOORD2;
  let x_177 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres0;
  let x_180 : vec3<f32> = (vec3<f32>(x_164.x, x_164.y, x_164.z) + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec4<f32> = vs_TEXCOORD2;
  let x_188 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres1;
  let x_191 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) + -(vec3<f32>(x_188.x, x_188.y, x_188.z)));
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : vec4<f32> = vs_TEXCOORD2;
  let x_199 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (vec3<f32>(x_195.x, x_195.y, x_195.z) + -(vec3<f32>(x_199.x, x_199.y, x_199.z)));
  let x_204 : vec4<f32> = vs_TEXCOORD2;
  let x_207 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (vec3<f32>(x_204.x, x_204.y, x_204.z) + -(vec3<f32>(x_207.x, x_207.y, x_207.z)));
  let x_211 : vec4<f32> = u_xlat3;
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_211.x, x_211.y, x_211.z), vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_217 : vec4<f32> = u_xlat4;
  let x_219 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_224 : vec3<f32> = u_xlat5;
  let x_225 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_224, x_225);
  let x_229 : vec3<f32> = u_xlat6;
  let x_230 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_229, x_230);
  let x_236 : vec4<f32> = u_xlat3;
  let x_239 : vec4<f32> = x_174.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_236 < x_239);
  let x_242 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_242);
  let x_246 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_246);
  let x_250 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_250);
  let x_254 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_254);
  let x_258 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_258);
  let x_264 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_264);
  let x_268 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_268);
  let x_271 : vec4<f32> = u_xlat3;
  let x_273 : vec4<f32> = u_xlat4;
  let x_275 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) + vec3<f32>(x_273.y, x_273.z, x_273.w));
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat3;
  let x_281 : vec3<f32> = max(vec3<f32>(x_278.x, x_278.y, x_278.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_282.x, x_281.x, x_281.y, x_281.z);
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_284, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_292 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_292) + 4.0f);
  let x_299 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_299);
  let x_303 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_303) << bitcast<u32>(2i));
  let x_306 : vec4<f32> = vs_TEXCOORD2;
  let x_308 : i32 = u_xlati0;
  let x_311 : i32 = u_xlati0;
  let x_315 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_308 + 1i) / 4i)][((x_311 + 1i) % 4i)];
  let x_317 : vec3<f32> = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : i32 = u_xlati0;
  let x_322 : i32 = u_xlati0;
  let x_325 : vec4<f32> = x_174.x_MainLightWorldToShadow[(x_320 / 4i)][(x_322 % 4i)];
  let x_327 : vec4<f32> = vs_TEXCOORD2;
  let x_330 : vec4<f32> = u_xlat3;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.x, x_327.x, x_327.x)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : i32 = u_xlati0;
  let x_338 : i32 = u_xlati0;
  let x_342 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_335 + 2i) / 4i)][((x_338 + 2i) % 4i)];
  let x_344 : vec4<f32> = vs_TEXCOORD2;
  let x_347 : vec4<f32> = u_xlat3;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344.z, x_344.z, x_344.z)) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat3;
  let x_354 : i32 = u_xlati0;
  let x_357 : i32 = u_xlati0;
  let x_361 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_354 + 3i) / 4i)][((x_357 + 3i) % 4i)];
  let x_363 : vec3<f32> = (vec3<f32>(x_352.x, x_352.y, x_352.z) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_367 : f32 = hlslcc_FragCoord.w;
  let x_369 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_367 * x_369);
  let x_373 : f32 = u_xlat0.x;
  let x_376 : f32 = x_44.x_ProjectionParams.y;
  u_xlat0.x = (x_373 / x_376);
  let x_380 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_380) + 1.0f);
  let x_385 : f32 = u_xlat0.x;
  let x_387 : f32 = x_44.x_ProjectionParams.z;
  u_xlat0.x = (x_385 * x_387);
  let x_391 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_391, 0.0f);
  let x_395 : f32 = u_xlat0.x;
  let x_398 : f32 = x_44.unity_FogParams.x;
  u_xlat0.x = (x_395 * x_398);
  let x_407 : vec2<f32> = vs_TEXCOORD1;
  let x_409 : f32 = x_44.x_GlobalMipBias.x;
  let x_410 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_407, x_409);
  u_xlat4 = x_410;
  let x_415 : vec2<f32> = vs_TEXCOORD1;
  let x_417 : f32 = x_44.x_GlobalMipBias.x;
  let x_418 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_415, x_417);
  u_xlat5 = vec3<f32>(x_418.x, x_418.y, x_418.z);
  let x_420 : vec4<f32> = u_xlat4;
  let x_424 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_425 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : vec3<f32> = u_xlat2;
  let x_428 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(x_427, vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : f32 = u_xlat33;
  u_xlat33 = (x_431 + 0.5f);
  let x_433 : f32 = u_xlat33;
  let x_435 : vec3<f32> = u_xlat5;
  let x_436 : vec3<f32> = (vec3<f32>(x_433, x_433, x_433) * x_435);
  let x_437 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : f32 = u_xlat4.w;
  u_xlat33 = max(x_440, 0.00009999999747378752f);
  let x_442 : vec4<f32> = u_xlat4;
  let x_444 : f32 = u_xlat33;
  let x_446 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) / vec3<f32>(x_444, x_444, x_444));
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_451 : vec4<f32> = u_xlat3;
  let x_452 : vec2<f32> = vec2<f32>(x_451.x, x_451.y);
  let x_454 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_452.x, x_452.y, x_454);
  let x_466 : vec3<f32> = txVec0;
  let x_468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_466.xy, x_466.z);
  u_xlat33 = x_468;
  let x_472 : f32 = x_174.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_472) + 1.0f);
  let x_475 : f32 = u_xlat33;
  let x_477 : f32 = x_174.x_MainLightShadowParams.x;
  let x_479 : f32 = u_xlat34;
  u_xlat33 = ((x_475 * x_477) + x_479);
  let x_483 : f32 = u_xlat3.z;
  u_xlatb34 = (0.0f >= x_483);
  let x_487 : f32 = u_xlat3.z;
  u_xlatb35 = (x_487 >= 1.0f);
  let x_489 : bool = u_xlatb34;
  let x_490 : bool = u_xlatb35;
  u_xlatb34 = (x_489 | x_490);
  let x_492 : bool = u_xlatb34;
  let x_493 : f32 = u_xlat33;
  u_xlat33 = select(x_493, 1.0f, x_492);
  let x_495 : vec4<f32> = vs_TEXCOORD2;
  let x_499 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_501 : vec3<f32> = (vec3<f32>(x_495.x, x_495.y, x_495.z) + -(x_499));
  let x_502 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_504 : vec4<f32> = u_xlat3;
  let x_506 : vec4<f32> = u_xlat3;
  u_xlat34 = dot(vec3<f32>(x_504.x, x_504.y, x_504.z), vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_510 : f32 = u_xlat34;
  let x_512 : f32 = x_174.x_MainLightShadowParams.z;
  let x_515 : f32 = x_174.x_MainLightShadowParams.w;
  u_xlat35 = ((x_510 * x_512) + x_515);
  let x_517 : f32 = u_xlat35;
  u_xlat35 = clamp(x_517, 0.0f, 1.0f);
  let x_519 : f32 = u_xlat33;
  u_xlat3.x = (-(x_519) + 1.0f);
  let x_523 : f32 = u_xlat35;
  let x_525 : f32 = u_xlat3.x;
  let x_527 : f32 = u_xlat33;
  u_xlat33 = ((x_523 * x_525) + x_527);
  let x_536 : f32 = x_534.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_536 == -1.0f));
  let x_538 : bool = u_xlatb35;
  if (x_538) {
    let x_541 : vec4<f32> = vs_TEXCOORD2;
    let x_544 : vec4<f32> = x_534.x_MainLightWorldToLight[1i];
    let x_546 : vec2<f32> = (vec2<f32>(x_541.y, x_541.y) * vec2<f32>(x_544.x, x_544.y));
    let x_547 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
    let x_550 : vec4<f32> = x_534.x_MainLightWorldToLight[0i];
    let x_552 : vec4<f32> = vs_TEXCOORD2;
    let x_555 : vec4<f32> = u_xlat3;
    let x_557 : vec2<f32> = ((vec2<f32>(x_550.x, x_550.y) * vec2<f32>(x_552.x, x_552.x)) + vec2<f32>(x_555.x, x_555.y));
    let x_558 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
    let x_561 : vec4<f32> = x_534.x_MainLightWorldToLight[2i];
    let x_563 : vec4<f32> = vs_TEXCOORD2;
    let x_566 : vec4<f32> = u_xlat3;
    let x_568 : vec2<f32> = ((vec2<f32>(x_561.x, x_561.y) * vec2<f32>(x_563.z, x_563.z)) + vec2<f32>(x_566.x, x_566.y));
    let x_569 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_568.x, x_568.y, x_569.z, x_569.w);
    let x_571 : vec4<f32> = u_xlat3;
    let x_574 : vec4<f32> = x_534.x_MainLightWorldToLight[3i];
    let x_576 : vec2<f32> = (vec2<f32>(x_571.x, x_571.y) + vec2<f32>(x_574.x, x_574.y));
    let x_577 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
    let x_579 : vec4<f32> = u_xlat3;
    let x_583 : vec2<f32> = ((vec2<f32>(x_579.x, x_579.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_584 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
    let x_591 : vec4<f32> = u_xlat3;
    let x_594 : f32 = x_44.x_GlobalMipBias.x;
    let x_595 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_591.x, x_591.y), x_594);
    u_xlat3 = x_595;
    let x_600 : f32 = x_534.x_MainLightCookieTextureFormat;
    let x_602 : f32 = x_534.x_MainLightCookieTextureFormat;
    let x_604 : f32 = x_534.x_MainLightCookieTextureFormat;
    let x_606 : f32 = x_534.x_MainLightCookieTextureFormat;
    let x_607 : vec4<f32> = vec4<f32>(x_600, x_602, x_604, x_606);
    let x_614 : vec4<bool> = (vec4<f32>(x_607.x, x_607.y, x_607.z, x_607.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_614.x, x_614.y);
    let x_617 : bool = u_xlatb5.y;
    if (x_617) {
      let x_622 : f32 = u_xlat3.w;
      x_618 = x_622;
    } else {
      let x_625 : f32 = u_xlat3.x;
      x_618 = x_625;
    }
    let x_626 : f32 = x_618;
    u_xlat35 = x_626;
    let x_628 : bool = u_xlatb5.x;
    if (x_628) {
      let x_632 : vec4<f32> = u_xlat3;
      x_629 = vec3<f32>(x_632.x, x_632.y, x_632.z);
    } else {
      let x_635 : f32 = u_xlat35;
      x_629 = vec3<f32>(x_635, x_635, x_635);
    }
    let x_637 : vec3<f32> = x_629;
    let x_638 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_644 : vec4<f32> = u_xlat3;
  let x_647 : vec4<f32> = x_44.x_MainLightColor;
  let x_649 : vec3<f32> = (vec3<f32>(x_644.x, x_644.y, x_644.z) * vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : f32 = u_xlat33;
  let x_658 : f32 = x_656.unity_LightData.z;
  u_xlat33 = (x_652 * x_658);
  let x_660 : f32 = u_xlat33;
  let x_662 : vec4<f32> = u_xlat3;
  let x_664 : vec3<f32> = (vec3<f32>(x_660, x_660, x_660) * vec3<f32>(x_662.x, x_662.y, x_662.z));
  let x_665 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_667 : vec3<f32> = u_xlat2;
  let x_669 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat33 = dot(x_667, vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_672 : f32 = u_xlat33;
  u_xlat33 = clamp(x_672, 0.0f, 1.0f);
  let x_674 : f32 = u_xlat33;
  let x_676 : vec4<f32> = u_xlat3;
  let x_678 : vec3<f32> = (vec3<f32>(x_674, x_674, x_674) * vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_679 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat1;
  let x_683 : vec4<f32> = u_xlat3;
  let x_685 : vec3<f32> = (vec3<f32>(x_681.x, x_681.y, x_681.z) * vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_686 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_689 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_691 : f32 = x_656.unity_LightData.y;
  u_xlat33 = min(x_689, x_691);
  let x_694 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_694));
  let x_697 : f32 = u_xlat34;
  let x_700 : f32 = x_174.x_AdditionalShadowFadeParams.x;
  let x_703 : f32 = x_174.x_AdditionalShadowFadeParams.y;
  u_xlat34 = ((x_697 * x_700) + x_703);
  let x_705 : f32 = u_xlat34;
  u_xlat34 = clamp(x_705, 0.0f, 1.0f);
  let x_708 : f32 = x_534.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_710 : f32 = x_534.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_712 : f32 = x_534.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_714 : f32 = x_534.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_715 : vec4<f32> = vec4<f32>(x_708, x_710, x_712, x_714);
  let x_721 : vec4<bool> = (vec4<f32>(x_715.x, x_715.y, x_715.z, x_715.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_721.x, x_721.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_733 : u32 = u_xlatu_loop_1;
    let x_734 : u32 = u_xlatu33;
    if ((x_733 < x_734)) {
    } else {
      break;
    }
    let x_737 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_737 >> 2u);
    let x_740 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_740 & 3u));
    let x_744 : u32 = u_xlatu36;
    let x_747 : vec4<f32> = x_656.unity_LightIndices[bitcast<i32>(x_744)];
    let x_757 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_762 : vec4<u32> = indexable[x_757];
    u_xlat36 = dot(x_747, bitcast<vec4<f32>>(x_762));
    let x_766 : f32 = u_xlat36;
    u_xlati36 = i32(x_766);
    let x_769 : vec4<f32> = vs_TEXCOORD2;
    let x_781 : i32 = u_xlati36;
    let x_783 : vec4<f32> = x_780.x_AdditionalLightsPosition[x_781];
    let x_786 : i32 = u_xlati36;
    let x_788 : vec4<f32> = x_780.x_AdditionalLightsPosition[x_786];
    u_xlat7 = ((-(vec3<f32>(x_769.x, x_769.y, x_769.z)) * vec3<f32>(x_783.w, x_783.w, x_783.w)) + vec3<f32>(x_788.x, x_788.y, x_788.z));
    let x_792 : vec3<f32> = u_xlat7;
    let x_793 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_792, x_793);
    let x_795 : f32 = u_xlat37;
    u_xlat37 = max(x_795, 0.00006103515625f);
    let x_799 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_799);
    let x_801 : f32 = u_xlat27;
    let x_803 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_801, x_801, x_801) * x_803);
    let x_805 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_805);
    let x_807 : f32 = u_xlat37;
    let x_808 : i32 = u_xlati36;
    let x_810 : f32 = x_780.x_AdditionalLightsAttenuation[x_808].x;
    u_xlat37 = (x_807 * x_810);
    let x_812 : f32 = u_xlat37;
    let x_814 : f32 = u_xlat37;
    u_xlat37 = ((-(x_812) * x_814) + 1.0f);
    let x_817 : f32 = u_xlat37;
    u_xlat37 = max(x_817, 0.0f);
    let x_819 : f32 = u_xlat37;
    let x_820 : f32 = u_xlat37;
    u_xlat37 = (x_819 * x_820);
    let x_822 : f32 = u_xlat37;
    let x_823 : f32 = u_xlat27;
    u_xlat37 = (x_822 * x_823);
    let x_825 : i32 = u_xlati36;
    let x_827 : vec4<f32> = x_780.x_AdditionalLightsSpotDir[x_825];
    let x_829 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_827.x, x_827.y, x_827.z), x_829);
    let x_831 : f32 = u_xlat27;
    let x_832 : i32 = u_xlati36;
    let x_834 : f32 = x_780.x_AdditionalLightsAttenuation[x_832].z;
    let x_836 : i32 = u_xlati36;
    let x_838 : f32 = x_780.x_AdditionalLightsAttenuation[x_836].w;
    u_xlat27 = ((x_831 * x_834) + x_838);
    let x_840 : f32 = u_xlat27;
    u_xlat27 = clamp(x_840, 0.0f, 1.0f);
    let x_842 : f32 = u_xlat27;
    let x_843 : f32 = u_xlat27;
    u_xlat27 = (x_842 * x_843);
    let x_845 : f32 = u_xlat37;
    let x_846 : f32 = u_xlat27;
    u_xlat37 = (x_845 * x_846);
    let x_850 : i32 = u_xlati36;
    let x_852 : f32 = x_174.x_AdditionalShadowParams[x_850].w;
    u_xlati27 = i32(x_852);
    let x_855 : i32 = u_xlati27;
    u_xlatb38 = (x_855 >= 0i);
    let x_857 : bool = u_xlatb38;
    if (x_857) {
      let x_861 : i32 = u_xlati36;
      let x_863 : f32 = x_174.x_AdditionalShadowParams[x_861].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_863, x_863, x_863, x_863))));
      let x_867 : bool = u_xlatb38;
      if (x_867) {
        let x_871 : vec3<f32> = u_xlat7;
        let x_874 : vec3<f32> = u_xlat7;
        let x_877 : vec4<bool> = (abs(vec4<f32>(x_871.z, x_871.z, x_871.y, x_871.z)) >= abs(vec4<f32>(x_874.x, x_874.y, x_874.x, x_874.x)));
        let x_879 : vec3<bool> = vec3<bool>(x_877.x, x_877.y, x_877.z);
        let x_880 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_879.x, x_879.y, x_879.z, x_880.w);
        let x_883 : bool = u_xlatb8.y;
        let x_885 : bool = u_xlatb8.x;
        u_xlatb38 = (x_883 & x_885);
        let x_887 : vec3<f32> = u_xlat7;
        let x_890 : vec4<bool> = (-(vec4<f32>(x_887.z, x_887.y, x_887.z, x_887.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_891 : vec3<bool> = vec3<bool>(x_890.x, x_890.y, x_890.w);
        let x_892 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_891.x, x_891.y, x_892.z, x_891.z);
        let x_896 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_896);
        let x_901 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_901);
        let x_906 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_906);
        let x_909 : bool = u_xlatb8.z;
        if (x_909) {
          let x_914 : f32 = u_xlat8.y;
          x_910 = x_914;
        } else {
          let x_916 : f32 = u_xlat39;
          x_910 = x_916;
        }
        let x_917 : f32 = x_910;
        u_xlat39 = x_917;
        let x_919 : bool = u_xlatb38;
        if (x_919) {
          let x_924 : f32 = u_xlat8.x;
          x_920 = x_924;
        } else {
          let x_926 : f32 = u_xlat39;
          x_920 = x_926;
        }
        let x_927 : f32 = x_920;
        u_xlat38 = x_927;
        let x_928 : i32 = u_xlati36;
        let x_930 : f32 = x_174.x_AdditionalShadowParams[x_928].w;
        u_xlat39 = trunc(x_930);
        let x_932 : f32 = u_xlat38;
        let x_933 : f32 = u_xlat39;
        u_xlat38 = (x_932 + x_933);
        let x_935 : f32 = u_xlat38;
        u_xlati27 = i32(x_935);
      }
      let x_937 : i32 = u_xlati27;
      u_xlati27 = (x_937 << bitcast<u32>(2i));
      let x_939 : vec4<f32> = vs_TEXCOORD2;
      let x_942 : i32 = u_xlati27;
      let x_945 : i32 = u_xlati27;
      let x_949 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_942 + 1i) / 4i)][((x_945 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_939.y, x_939.y, x_939.y, x_939.y) * x_949);
      let x_951 : i32 = u_xlati27;
      let x_953 : i32 = u_xlati27;
      let x_956 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[(x_951 / 4i)][(x_953 % 4i)];
      let x_957 : vec4<f32> = vs_TEXCOORD2;
      let x_960 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_956 * vec4<f32>(x_957.x, x_957.x, x_957.x, x_957.x)) + x_960);
      let x_962 : i32 = u_xlati27;
      let x_965 : i32 = u_xlati27;
      let x_969 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_962 + 2i) / 4i)][((x_965 + 2i) % 4i)];
      let x_970 : vec4<f32> = vs_TEXCOORD2;
      let x_973 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_969 * vec4<f32>(x_970.z, x_970.z, x_970.z, x_970.z)) + x_973);
      let x_975 : vec4<f32> = u_xlat8;
      let x_976 : i32 = u_xlati27;
      let x_979 : i32 = u_xlati27;
      let x_983 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_976 + 3i) / 4i)][((x_979 + 3i) % 4i)];
      u_xlat8 = (x_975 + x_983);
      let x_985 : vec4<f32> = u_xlat8;
      let x_987 : vec4<f32> = u_xlat8;
      let x_989 : vec3<f32> = (vec3<f32>(x_985.x, x_985.y, x_985.z) / vec3<f32>(x_987.w, x_987.w, x_987.w));
      let x_990 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
      let x_993 : vec4<f32> = u_xlat8;
      let x_994 : vec2<f32> = vec2<f32>(x_993.x, x_993.y);
      let x_996 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_994.x, x_994.y, x_996);
      let x_1004 : vec3<f32> = txVec1;
      let x_1006 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1004.xy, x_1004.z);
      u_xlat27 = x_1006;
      let x_1007 : i32 = u_xlati36;
      let x_1009 : f32 = x_174.x_AdditionalShadowParams[x_1007].x;
      u_xlat38 = (1.0f + -(x_1009));
      let x_1012 : f32 = u_xlat27;
      let x_1013 : i32 = u_xlati36;
      let x_1015 : f32 = x_174.x_AdditionalShadowParams[x_1013].x;
      let x_1017 : f32 = u_xlat38;
      u_xlat27 = ((x_1012 * x_1015) + x_1017);
      let x_1020 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_1020);
      let x_1024 : f32 = u_xlat8.z;
      u_xlatb39 = (x_1024 >= 1.0f);
      let x_1026 : bool = u_xlatb38;
      let x_1027 : bool = u_xlatb39;
      u_xlatb38 = (x_1026 | x_1027);
      let x_1029 : bool = u_xlatb38;
      let x_1030 : f32 = u_xlat27;
      u_xlat27 = select(x_1030, 1.0f, x_1029);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_1033 : f32 = u_xlat27;
    u_xlat38 = (-(x_1033) + 1.0f);
    let x_1036 : f32 = u_xlat34;
    let x_1037 : f32 = u_xlat38;
    let x_1039 : f32 = u_xlat27;
    u_xlat27 = ((x_1036 * x_1037) + x_1039);
    let x_1042 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_1042 & 31i)));
    let x_1046 : i32 = u_xlati38;
    let x_1049 : f32 = x_534.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_1046) & bitcast<u32>(x_1049)));
    let x_1053 : i32 = u_xlati38;
    if ((x_1053 != 0i)) {
      let x_1057 : i32 = u_xlati36;
      let x_1059 : f32 = x_534.x_AdditionalLightsLightTypes[x_1057].el;
      u_xlati38 = i32(x_1059);
      let x_1062 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_1062 != 0i));
      let x_1066 : i32 = u_xlati36;
      u_xlati40 = (x_1066 << bitcast<u32>(2i));
      let x_1068 : i32 = u_xlati39;
      if ((x_1068 != 0i)) {
        let x_1072 : vec4<f32> = vs_TEXCOORD2;
        let x_1074 : i32 = u_xlati40;
        let x_1077 : i32 = u_xlati40;
        let x_1081 : vec4<f32> = x_534.x_AdditionalLightsWorldToLights[((x_1074 + 1i) / 4i)][((x_1077 + 1i) % 4i)];
        let x_1083 : vec3<f32> = (vec3<f32>(x_1072.y, x_1072.y, x_1072.y) * vec3<f32>(x_1081.x, x_1081.y, x_1081.w));
        let x_1084 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
        let x_1086 : i32 = u_xlati40;
        let x_1088 : i32 = u_xlati40;
        let x_1091 : vec4<f32> = x_534.x_AdditionalLightsWorldToLights[(x_1086 / 4i)][(x_1088 % 4i)];
        let x_1093 : vec4<f32> = vs_TEXCOORD2;
        let x_1096 : vec4<f32> = u_xlat8;
        let x_1098 : vec3<f32> = ((vec3<f32>(x_1091.x, x_1091.y, x_1091.w) * vec3<f32>(x_1093.x, x_1093.x, x_1093.x)) + vec3<f32>(x_1096.x, x_1096.y, x_1096.z));
        let x_1099 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
        let x_1101 : i32 = u_xlati40;
        let x_1104 : i32 = u_xlati40;
        let x_1108 : vec4<f32> = x_534.x_AdditionalLightsWorldToLights[((x_1101 + 2i) / 4i)][((x_1104 + 2i) % 4i)];
        let x_1110 : vec4<f32> = vs_TEXCOORD2;
        let x_1113 : vec4<f32> = u_xlat8;
        let x_1115 : vec3<f32> = ((vec3<f32>(x_1108.x, x_1108.y, x_1108.w) * vec3<f32>(x_1110.z, x_1110.z, x_1110.z)) + vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
        let x_1116 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
        let x_1118 : vec4<f32> = u_xlat8;
        let x_1120 : i32 = u_xlati40;
        let x_1123 : i32 = u_xlati40;
        let x_1127 : vec4<f32> = x_534.x_AdditionalLightsWorldToLights[((x_1120 + 3i) / 4i)][((x_1123 + 3i) % 4i)];
        let x_1129 : vec3<f32> = (vec3<f32>(x_1118.x, x_1118.y, x_1118.z) + vec3<f32>(x_1127.x, x_1127.y, x_1127.w));
        let x_1130 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
        let x_1132 : vec4<f32> = u_xlat8;
        let x_1134 : vec4<f32> = u_xlat8;
        let x_1136 : vec2<f32> = (vec2<f32>(x_1132.x, x_1132.y) / vec2<f32>(x_1134.z, x_1134.z));
        let x_1137 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1136.x, x_1136.y, x_1137.z, x_1137.w);
        let x_1139 : vec4<f32> = u_xlat8;
        let x_1142 : vec2<f32> = ((vec2<f32>(x_1139.x, x_1139.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
        let x_1145 : vec4<f32> = u_xlat8;
        let x_1149 : vec2<f32> = clamp(vec2<f32>(x_1145.x, x_1145.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
        let x_1152 : i32 = u_xlati36;
        let x_1154 : vec4<f32> = x_534.x_AdditionalLightsCookieAtlasUVRects[x_1152];
        let x_1156 : vec4<f32> = u_xlat8;
        let x_1159 : i32 = u_xlati36;
        let x_1161 : vec4<f32> = x_534.x_AdditionalLightsCookieAtlasUVRects[x_1159];
        let x_1163 : vec2<f32> = ((vec2<f32>(x_1154.x, x_1154.y) * vec2<f32>(x_1156.x, x_1156.y)) + vec2<f32>(x_1161.z, x_1161.w));
        let x_1164 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1163.x, x_1163.y, x_1164.z, x_1164.w);
      } else {
        let x_1167 : i32 = u_xlati38;
        u_xlatb38 = (x_1167 == 1i);
        let x_1169 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1169);
        let x_1171 : i32 = u_xlati38;
        if ((x_1171 != 0i)) {
          let x_1177 : vec4<f32> = vs_TEXCOORD2;
          let x_1179 : i32 = u_xlati40;
          let x_1182 : i32 = u_xlati40;
          let x_1186 : vec4<f32> = x_534.x_AdditionalLightsWorldToLights[((x_1179 + 1i) / 4i)][((x_1182 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1177.y, x_1177.y) * vec2<f32>(x_1186.x, x_1186.y));
          let x_1189 : i32 = u_xlati40;
          let x_1191 : i32 = u_xlati40;
          let x_1194 : vec4<f32> = x_534.x_AdditionalLightsWorldToLights[(x_1189 / 4i)][(x_1191 % 4i)];
          let x_1196 : vec4<f32> = vs_TEXCOORD2;
          let x_1199 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1194.x, x_1194.y) * vec2<f32>(x_1196.x, x_1196.x)) + x_1199);
          let x_1201 : i32 = u_xlati40;
          let x_1204 : i32 = u_xlati40;
          let x_1208 : vec4<f32> = x_534.x_AdditionalLightsWorldToLights[((x_1201 + 2i) / 4i)][((x_1204 + 2i) % 4i)];
          let x_1210 : vec4<f32> = vs_TEXCOORD2;
          let x_1213 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1208.x, x_1208.y) * vec2<f32>(x_1210.z, x_1210.z)) + x_1213);
          let x_1215 : vec2<f32> = u_xlat30;
          let x_1216 : i32 = u_xlati40;
          let x_1219 : i32 = u_xlati40;
          let x_1223 : vec4<f32> = x_534.x_AdditionalLightsWorldToLights[((x_1216 + 3i) / 4i)][((x_1219 + 3i) % 4i)];
          u_xlat30 = (x_1215 + vec2<f32>(x_1223.x, x_1223.y));
          let x_1226 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1226 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1229 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1229);
          let x_1231 : i32 = u_xlati36;
          let x_1233 : vec4<f32> = x_534.x_AdditionalLightsCookieAtlasUVRects[x_1231];
          let x_1235 : vec2<f32> = u_xlat30;
          let x_1237 : i32 = u_xlati36;
          let x_1239 : vec4<f32> = x_534.x_AdditionalLightsCookieAtlasUVRects[x_1237];
          let x_1241 : vec2<f32> = ((vec2<f32>(x_1233.x, x_1233.y) * x_1235) + vec2<f32>(x_1239.z, x_1239.w));
          let x_1242 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1242.w);
        } else {
          let x_1246 : vec4<f32> = vs_TEXCOORD2;
          let x_1248 : i32 = u_xlati40;
          let x_1251 : i32 = u_xlati40;
          let x_1255 : vec4<f32> = x_534.x_AdditionalLightsWorldToLights[((x_1248 + 1i) / 4i)][((x_1251 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1246.y, x_1246.y, x_1246.y, x_1246.y) * x_1255);
          let x_1257 : i32 = u_xlati40;
          let x_1259 : i32 = u_xlati40;
          let x_1262 : vec4<f32> = x_534.x_AdditionalLightsWorldToLights[(x_1257 / 4i)][(x_1259 % 4i)];
          let x_1263 : vec4<f32> = vs_TEXCOORD2;
          let x_1266 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1262 * vec4<f32>(x_1263.x, x_1263.x, x_1263.x, x_1263.x)) + x_1266);
          let x_1268 : i32 = u_xlati40;
          let x_1271 : i32 = u_xlati40;
          let x_1275 : vec4<f32> = x_534.x_AdditionalLightsWorldToLights[((x_1268 + 2i) / 4i)][((x_1271 + 2i) % 4i)];
          let x_1276 : vec4<f32> = vs_TEXCOORD2;
          let x_1279 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1275 * vec4<f32>(x_1276.z, x_1276.z, x_1276.z, x_1276.z)) + x_1279);
          let x_1281 : vec4<f32> = u_xlat9;
          let x_1282 : i32 = u_xlati40;
          let x_1285 : i32 = u_xlati40;
          let x_1289 : vec4<f32> = x_534.x_AdditionalLightsWorldToLights[((x_1282 + 3i) / 4i)][((x_1285 + 3i) % 4i)];
          u_xlat9 = (x_1281 + x_1289);
          let x_1291 : vec4<f32> = u_xlat9;
          let x_1293 : vec4<f32> = u_xlat9;
          let x_1295 : vec3<f32> = (vec3<f32>(x_1291.x, x_1291.y, x_1291.z) / vec3<f32>(x_1293.w, x_1293.w, x_1293.w));
          let x_1296 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
          let x_1298 : vec4<f32> = u_xlat9;
          let x_1300 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1298.x, x_1298.y, x_1298.z), vec3<f32>(x_1300.x, x_1300.y, x_1300.z));
          let x_1303 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1303);
          let x_1305 : f32 = u_xlat38;
          let x_1307 : vec4<f32> = u_xlat9;
          let x_1309 : vec3<f32> = (vec3<f32>(x_1305, x_1305, x_1305) * vec3<f32>(x_1307.x, x_1307.y, x_1307.z));
          let x_1310 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1310.w);
          let x_1312 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1312.x, x_1312.y, x_1312.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1317 : f32 = u_xlat38;
          u_xlat38 = max(x_1317, 0.00000099999999747524f);
          let x_1320 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1320);
          let x_1323 : f32 = u_xlat38;
          let x_1325 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1323, x_1323, x_1323) * vec3<f32>(x_1325.z, x_1325.x, x_1325.y));
          let x_1329 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1329);
          let x_1333 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1333, 0.0f, 1.0f);
          let x_1337 : vec3<f32> = u_xlat10;
          let x_1339 : vec4<bool> = (vec4<f32>(x_1337.y, x_1337.z, x_1337.y, x_1337.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1339.x, x_1339.y);
          let x_1342 : bool = u_xlatb30.x;
          if (x_1342) {
            let x_1347 : f32 = u_xlat10.x;
            x_1343 = x_1347;
          } else {
            let x_1350 : f32 = u_xlat10.x;
            x_1343 = -(x_1350);
          }
          let x_1352 : f32 = x_1343;
          u_xlat30.x = x_1352;
          let x_1355 : bool = u_xlatb30.y;
          if (x_1355) {
            let x_1360 : f32 = u_xlat10.x;
            x_1356 = x_1360;
          } else {
            let x_1363 : f32 = u_xlat10.x;
            x_1356 = -(x_1363);
          }
          let x_1365 : f32 = x_1356;
          u_xlat30.y = x_1365;
          let x_1367 : vec4<f32> = u_xlat9;
          let x_1369 : f32 = u_xlat38;
          let x_1372 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1367.x, x_1367.y) * vec2<f32>(x_1369, x_1369)) + x_1372);
          let x_1374 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1374 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1377 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1377, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1381 : i32 = u_xlati36;
          let x_1383 : vec4<f32> = x_534.x_AdditionalLightsCookieAtlasUVRects[x_1381];
          let x_1385 : vec2<f32> = u_xlat30;
          let x_1387 : i32 = u_xlati36;
          let x_1389 : vec4<f32> = x_534.x_AdditionalLightsCookieAtlasUVRects[x_1387];
          let x_1391 : vec2<f32> = ((vec2<f32>(x_1383.x, x_1383.y) * x_1385) + vec2<f32>(x_1389.z, x_1389.w));
          let x_1392 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1391.x, x_1391.y, x_1392.z, x_1392.w);
        }
      }
      let x_1399 : vec4<f32> = u_xlat8;
      let x_1401 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1399.x, x_1399.y), 0.0f);
      u_xlat8 = x_1401;
      let x_1403 : bool = u_xlatb5.y;
      if (x_1403) {
        let x_1408 : f32 = u_xlat8.w;
        x_1404 = x_1408;
      } else {
        let x_1411 : f32 = u_xlat8.x;
        x_1404 = x_1411;
      }
      let x_1412 : f32 = x_1404;
      u_xlat38 = x_1412;
      let x_1414 : bool = u_xlatb5.x;
      if (x_1414) {
        let x_1418 : vec4<f32> = u_xlat8;
        x_1415 = vec3<f32>(x_1418.x, x_1418.y, x_1418.z);
      } else {
        let x_1421 : f32 = u_xlat38;
        x_1415 = vec3<f32>(x_1421, x_1421, x_1421);
      }
      let x_1423 : vec3<f32> = x_1415;
      let x_1424 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1423.x, x_1423.y, x_1423.z, x_1424.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1430 : vec4<f32> = u_xlat8;
    let x_1432 : i32 = u_xlati36;
    let x_1434 : vec4<f32> = x_780.x_AdditionalLightsColor[x_1432];
    let x_1436 : vec3<f32> = (vec3<f32>(x_1430.x, x_1430.y, x_1430.z) * vec3<f32>(x_1434.x, x_1434.y, x_1434.z));
    let x_1437 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1436.x, x_1436.y, x_1436.z, x_1437.w);
    let x_1439 : f32 = u_xlat37;
    let x_1440 : f32 = u_xlat27;
    u_xlat36 = (x_1439 * x_1440);
    let x_1442 : f32 = u_xlat36;
    let x_1444 : vec4<f32> = u_xlat8;
    let x_1446 : vec3<f32> = (vec3<f32>(x_1442, x_1442, x_1442) * vec3<f32>(x_1444.x, x_1444.y, x_1444.z));
    let x_1447 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1446.x, x_1446.y, x_1446.z, x_1447.w);
    let x_1449 : vec3<f32> = u_xlat2;
    let x_1450 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_1449, x_1450);
    let x_1452 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1452, 0.0f, 1.0f);
    let x_1454 : f32 = u_xlat36;
    let x_1456 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1454, x_1454, x_1454) * vec3<f32>(x_1456.x, x_1456.y, x_1456.z));
    let x_1459 : vec3<f32> = u_xlat7;
    let x_1460 : vec4<f32> = u_xlat1;
    let x_1463 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1459 * vec3<f32>(x_1460.x, x_1460.y, x_1460.z)) + x_1463);

    continuing {
      let x_1465 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1465 + bitcast<u32>(1i));
    }
  }
  let x_1467 : vec4<f32> = u_xlat4;
  let x_1469 : vec4<f32> = u_xlat1;
  let x_1472 : vec4<f32> = u_xlat3;
  let x_1474 : vec3<f32> = ((vec3<f32>(x_1467.x, x_1467.y, x_1467.z) * vec3<f32>(x_1469.x, x_1469.y, x_1469.z)) + vec3<f32>(x_1472.x, x_1472.y, x_1472.z));
  let x_1475 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1474.x, x_1474.y, x_1474.z, x_1475.w);
  let x_1477 : vec3<f32> = u_xlat6;
  let x_1478 : vec4<f32> = u_xlat1;
  let x_1480 : vec3<f32> = (x_1477 + vec3<f32>(x_1478.x, x_1478.y, x_1478.z));
  let x_1481 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1481.w);
  let x_1484 : f32 = u_xlat0.x;
  let x_1486 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1484 * -(x_1486));
  let x_1491 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1491);
  let x_1494 : vec4<f32> = u_xlat1;
  let x_1497 : vec4<f32> = x_44.unity_FogColor;
  let x_1500 : vec3<f32> = (vec3<f32>(x_1494.x, x_1494.y, x_1494.z) + -(vec3<f32>(x_1497.x, x_1497.y, x_1497.z)));
  let x_1501 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1501.w);
  let x_1505 : vec4<f32> = u_xlat0;
  let x_1507 : vec4<f32> = u_xlat1;
  let x_1511 : vec4<f32> = x_44.unity_FogColor;
  let x_1513 : vec3<f32> = ((vec3<f32>(x_1505.x, x_1505.x, x_1505.x) * vec3<f32>(x_1507.x, x_1507.y, x_1507.z)) + vec3<f32>(x_1511.x, x_1511.y, x_1511.z));
  let x_1514 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1514.w);
  let x_1516 : bool = u_xlatb22;
  let x_1517 : f32 = u_xlat11;
  SV_Target0.w = select(1.0f, x_1517, x_1516);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


