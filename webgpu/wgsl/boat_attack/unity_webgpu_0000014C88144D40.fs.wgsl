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

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> u_xlat11 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb22 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_163 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(1) @binding(2) var<uniform> x_364 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb33 : bool;

var<private> u_xlatb34 : bool;

var<private> u_xlat34 : f32;

var<private> u_xlat35 : f32;

@group(1) @binding(5) var<uniform> x_540 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu35 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlati35 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_789 : AdditionalLights;

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

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu34 : u32;

var<private> u_xlatb35 : bool;

fn main_1() {
  var x_58 : f32;
  var x_109 : f32;
  var txVec0 : vec3<f32>;
  var x_491 : f32;
  var x_624 : f32;
  var x_635 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_919 : f32;
  var x_930 : f32;
  var txVec1 : vec3<f32>;
  var x_1368 : f32;
  var x_1381 : f32;
  var x_1429 : f32;
  var x_1441 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_37 * x_40);
  let x_48 : f32 = u_xlat1.w;
  let x_54 : f32 = x_51.x_Cutoff;
  u_xlatb0 = (x_48 >= x_54);
  let x_56 : bool = u_xlatb0;
  if (x_56) {
    let x_62 : f32 = u_xlat1.w;
    x_58 = x_62;
  } else {
    x_58 = 0.0f;
  }
  let x_65 : f32 = x_58;
  u_xlat0.x = x_65;
  let x_69 : f32 = u_xlat0.w;
  let x_72 : f32 = vs_TEXCOORD7.w;
  let x_75 : f32 = x_51.x_Cutoff;
  u_xlat11 = ((x_69 * x_72) + -(x_75));
  let x_80 : f32 = u_xlat1.w;
  u_xlat22 = dpdxCoarse(x_80);
  let x_84 : f32 = u_xlat1.w;
  u_xlat33 = dpdyCoarse(x_84);
  let x_86 : f32 = u_xlat33;
  let x_88 : f32 = u_xlat22;
  u_xlat22 = (abs(x_86) + abs(x_88));
  let x_91 : f32 = u_xlat22;
  u_xlat22 = max(x_91, 0.00009999999747378752f);
  let x_94 : f32 = u_xlat11;
  let x_95 : f32 = u_xlat22;
  u_xlat11 = (x_94 / x_95);
  let x_97 : f32 = u_xlat11;
  u_xlat11 = (x_97 + 0.5f);
  let x_100 : f32 = u_xlat11;
  u_xlat11 = clamp(x_100, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb22;
  if (x_108) {
    let x_112 : f32 = u_xlat11;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat0.x = (x_119 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat0.x;
  u_xlatb0 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb0;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD3;
  let x_137 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_136, x_137);
  let x_141 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_141);
  let x_145 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = (vec3<f32>(x_145.x, x_145.x, x_145.x) * x_147);
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_153 : vec4<f32> = vs_TEXCOORD2;
  let x_166 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres0;
  let x_169 : vec3<f32> = (vec3<f32>(x_153.x, x_153.y, x_153.z) + -(vec3<f32>(x_166.x, x_166.y, x_166.z)));
  let x_170 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : vec4<f32> = vs_TEXCOORD2;
  let x_177 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres1;
  let x_180 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec4<f32> = vs_TEXCOORD2;
  let x_188 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres2;
  let x_191 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) + -(vec3<f32>(x_188.x, x_188.y, x_188.z)));
  let x_192 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_196 : vec4<f32> = vs_TEXCOORD2;
  let x_199 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (vec3<f32>(x_196.x, x_196.y, x_196.z) + -(vec3<f32>(x_199.x, x_199.y, x_199.z)));
  let x_203 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_203.x, x_203.y, x_203.z), vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_209 : vec4<f32> = u_xlat4;
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_209.x, x_209.y, x_209.z), vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_216 : vec4<f32> = u_xlat5;
  let x_218 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_223 : vec3<f32> = u_xlat6;
  let x_224 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_223, x_224);
  let x_230 : vec4<f32> = u_xlat3;
  let x_233 : vec4<f32> = x_163.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_230 < x_233);
  let x_236 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_236);
  let x_240 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_240);
  let x_244 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_244);
  let x_248 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_248);
  let x_252 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_252);
  let x_258 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_258);
  let x_262 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_262);
  let x_265 : vec4<f32> = u_xlat3;
  let x_267 : vec4<f32> = u_xlat4;
  let x_269 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) + vec3<f32>(x_267.y, x_267.z, x_267.w));
  let x_270 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_272 : vec4<f32> = u_xlat3;
  let x_275 : vec3<f32> = max(vec3<f32>(x_272.x, x_272.y, x_272.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_276.x, x_275.x, x_275.y, x_275.z);
  let x_278 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_278, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_286 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_286) + 4.0f);
  let x_293 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_293);
  let x_297 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_297) << bitcast<u32>(2i));
  let x_300 : vec4<f32> = vs_TEXCOORD2;
  let x_302 : i32 = u_xlati0;
  let x_305 : i32 = u_xlati0;
  let x_309 : vec4<f32> = x_163.x_MainLightWorldToShadow[((x_302 + 1i) / 4i)][((x_305 + 1i) % 4i)];
  let x_311 : vec3<f32> = (vec3<f32>(x_300.y, x_300.y, x_300.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : i32 = u_xlati0;
  let x_316 : i32 = u_xlati0;
  let x_319 : vec4<f32> = x_163.x_MainLightWorldToShadow[(x_314 / 4i)][(x_316 % 4i)];
  let x_321 : vec4<f32> = vs_TEXCOORD2;
  let x_324 : vec4<f32> = u_xlat3;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.x, x_321.x)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : i32 = u_xlati0;
  let x_332 : i32 = u_xlati0;
  let x_336 : vec4<f32> = x_163.x_MainLightWorldToShadow[((x_329 + 2i) / 4i)][((x_332 + 2i) % 4i)];
  let x_338 : vec4<f32> = vs_TEXCOORD2;
  let x_341 : vec4<f32> = u_xlat3;
  let x_343 : vec3<f32> = ((vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.z, x_338.z, x_338.z)) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat3;
  let x_348 : i32 = u_xlati0;
  let x_351 : i32 = u_xlati0;
  let x_355 : vec4<f32> = x_163.x_MainLightWorldToShadow[((x_348 + 3i) / 4i)][((x_351 + 3i) % 4i)];
  let x_357 : vec3<f32> = (vec3<f32>(x_346.x, x_346.y, x_346.z) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  u_xlat2.w = 1.0f;
  let x_367 : vec4<f32> = x_364.unity_SHAr;
  let x_368 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_367, x_368);
  let x_373 : vec4<f32> = x_364.unity_SHAg;
  let x_374 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_373, x_374);
  let x_379 : vec4<f32> = x_364.unity_SHAb;
  let x_380 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_379, x_380);
  let x_383 : vec4<f32> = u_xlat2;
  let x_385 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_383.y, x_383.z, x_383.z, x_383.x) * vec4<f32>(x_385.x, x_385.y, x_385.z, x_385.z));
  let x_390 : vec4<f32> = x_364.unity_SHBr;
  let x_391 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_390, x_391);
  let x_396 : vec4<f32> = x_364.unity_SHBg;
  let x_397 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_396, x_397);
  let x_402 : vec4<f32> = x_364.unity_SHBb;
  let x_403 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_402, x_403);
  let x_407 : f32 = u_xlat2.y;
  let x_409 : f32 = u_xlat2.y;
  u_xlat0.x = (x_407 * x_409);
  let x_413 : f32 = u_xlat2.x;
  let x_415 : f32 = u_xlat2.x;
  let x_418 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_413 * x_415) + -(x_418));
  let x_424 : vec4<f32> = x_364.unity_SHC;
  let x_426 : vec4<f32> = u_xlat0;
  let x_429 : vec3<f32> = u_xlat6;
  let x_430 : vec3<f32> = ((vec3<f32>(x_424.x, x_424.y, x_424.z) * vec3<f32>(x_426.x, x_426.x, x_426.x)) + x_429);
  let x_431 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : vec4<f32> = u_xlat4;
  let x_435 : vec4<f32> = u_xlat5;
  let x_437 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) + vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_438 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat4;
  let x_442 : vec3<f32> = max(vec3<f32>(x_440.x, x_440.y, x_440.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_443 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_447 : vec4<f32> = u_xlat3;
  let x_448 : vec2<f32> = vec2<f32>(x_447.x, x_447.y);
  let x_450 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_448.x, x_448.y, x_450);
  let x_462 : vec3<f32> = txVec0;
  let x_464 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_462.xy, x_462.z);
  u_xlat0.x = x_464;
  let x_468 : f32 = x_163.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_468) + 1.0f);
  let x_472 : f32 = u_xlat0.x;
  let x_474 : f32 = x_163.x_MainLightShadowParams.x;
  let x_476 : f32 = u_xlat33;
  u_xlat0.x = ((x_472 * x_474) + x_476);
  let x_481 : f32 = u_xlat3.z;
  u_xlatb33 = (0.0f >= x_481);
  let x_485 : f32 = u_xlat3.z;
  u_xlatb34 = (x_485 >= 1.0f);
  let x_487 : bool = u_xlatb33;
  let x_488 : bool = u_xlatb34;
  u_xlatb33 = (x_487 | x_488);
  let x_490 : bool = u_xlatb33;
  if (x_490) {
    x_491 = 1.0f;
  } else {
    let x_496 : f32 = u_xlat0.x;
    x_491 = x_496;
  }
  let x_497 : f32 = x_491;
  u_xlat0.x = x_497;
  let x_499 : vec4<f32> = vs_TEXCOORD2;
  let x_503 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_505 : vec3<f32> = (vec3<f32>(x_499.x, x_499.y, x_499.z) + -(x_503));
  let x_506 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_508 : vec4<f32> = u_xlat3;
  let x_510 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(vec3<f32>(x_508.x, x_508.y, x_508.z), vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_514 : f32 = u_xlat33;
  let x_516 : f32 = x_163.x_MainLightShadowParams.z;
  let x_519 : f32 = x_163.x_MainLightShadowParams.w;
  u_xlat34 = ((x_514 * x_516) + x_519);
  let x_521 : f32 = u_xlat34;
  u_xlat34 = clamp(x_521, 0.0f, 1.0f);
  let x_525 : f32 = u_xlat0.x;
  u_xlat35 = (-(x_525) + 1.0f);
  let x_528 : f32 = u_xlat34;
  let x_529 : f32 = u_xlat35;
  let x_532 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_528 * x_529) + x_532);
  let x_542 : f32 = x_540.x_MainLightCookieTextureFormat;
  u_xlatb34 = !((x_542 == -1.0f));
  let x_544 : bool = u_xlatb34;
  if (x_544) {
    let x_547 : vec4<f32> = vs_TEXCOORD2;
    let x_550 : vec4<f32> = x_540.x_MainLightWorldToLight[1i];
    let x_552 : vec2<f32> = (vec2<f32>(x_547.y, x_547.y) * vec2<f32>(x_550.x, x_550.y));
    let x_553 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
    let x_556 : vec4<f32> = x_540.x_MainLightWorldToLight[0i];
    let x_558 : vec4<f32> = vs_TEXCOORD2;
    let x_561 : vec4<f32> = u_xlat3;
    let x_563 : vec2<f32> = ((vec2<f32>(x_556.x, x_556.y) * vec2<f32>(x_558.x, x_558.x)) + vec2<f32>(x_561.x, x_561.y));
    let x_564 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_563.x, x_563.y, x_564.z, x_564.w);
    let x_567 : vec4<f32> = x_540.x_MainLightWorldToLight[2i];
    let x_569 : vec4<f32> = vs_TEXCOORD2;
    let x_572 : vec4<f32> = u_xlat3;
    let x_574 : vec2<f32> = ((vec2<f32>(x_567.x, x_567.y) * vec2<f32>(x_569.z, x_569.z)) + vec2<f32>(x_572.x, x_572.y));
    let x_575 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_575.w);
    let x_577 : vec4<f32> = u_xlat3;
    let x_580 : vec4<f32> = x_540.x_MainLightWorldToLight[3i];
    let x_582 : vec2<f32> = (vec2<f32>(x_577.x, x_577.y) + vec2<f32>(x_580.x, x_580.y));
    let x_583 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
    let x_585 : vec4<f32> = u_xlat3;
    let x_589 : vec2<f32> = ((vec2<f32>(x_585.x, x_585.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_590 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
    let x_597 : vec4<f32> = u_xlat3;
    let x_600 : f32 = x_27.x_GlobalMipBias.x;
    let x_601 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_597.x, x_597.y), x_600);
    u_xlat3 = x_601;
    let x_606 : f32 = x_540.x_MainLightCookieTextureFormat;
    let x_608 : f32 = x_540.x_MainLightCookieTextureFormat;
    let x_610 : f32 = x_540.x_MainLightCookieTextureFormat;
    let x_612 : f32 = x_540.x_MainLightCookieTextureFormat;
    let x_613 : vec4<f32> = vec4<f32>(x_606, x_608, x_610, x_612);
    let x_620 : vec4<bool> = (vec4<f32>(x_613.x, x_613.y, x_613.z, x_613.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_620.x, x_620.y);
    let x_623 : bool = u_xlatb5.y;
    if (x_623) {
      let x_628 : f32 = u_xlat3.w;
      x_624 = x_628;
    } else {
      let x_631 : f32 = u_xlat3.x;
      x_624 = x_631;
    }
    let x_632 : f32 = x_624;
    u_xlat34 = x_632;
    let x_634 : bool = u_xlatb5.x;
    if (x_634) {
      let x_638 : vec4<f32> = u_xlat3;
      x_635 = vec3<f32>(x_638.x, x_638.y, x_638.z);
    } else {
      let x_641 : f32 = u_xlat34;
      x_635 = vec3<f32>(x_641, x_641, x_641);
    }
    let x_643 : vec3<f32> = x_635;
    let x_644 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_650 : vec4<f32> = u_xlat3;
  let x_653 : vec4<f32> = x_27.x_MainLightColor;
  let x_655 : vec3<f32> = (vec3<f32>(x_650.x, x_650.y, x_650.z) * vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_659 : f32 = u_xlat0.x;
  let x_661 : f32 = x_364.unity_LightData.z;
  u_xlat0.x = (x_659 * x_661);
  let x_664 : vec4<f32> = u_xlat0;
  let x_666 : vec4<f32> = u_xlat3;
  let x_668 : vec3<f32> = (vec3<f32>(x_664.x, x_664.x, x_664.x) * vec3<f32>(x_666.x, x_666.y, x_666.z));
  let x_669 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_671 : vec4<f32> = u_xlat2;
  let x_674 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_671.x, x_671.y, x_671.z), vec3<f32>(x_674.x, x_674.y, x_674.z));
  let x_679 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_679, 0.0f, 1.0f);
  let x_682 : vec4<f32> = u_xlat0;
  let x_684 : vec4<f32> = u_xlat3;
  let x_686 : vec3<f32> = (vec3<f32>(x_682.x, x_682.x, x_682.x) * vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_687 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec4<f32> = u_xlat1;
  let x_691 : vec4<f32> = u_xlat3;
  let x_693 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) * vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_697 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_699 : f32 = x_364.unity_LightData.y;
  u_xlat0.x = min(x_697, x_699);
  let x_703 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_703));
  let x_706 : f32 = u_xlat33;
  let x_709 : f32 = x_163.x_AdditionalShadowFadeParams.x;
  let x_712 : f32 = x_163.x_AdditionalShadowFadeParams.y;
  u_xlat33 = ((x_706 * x_709) + x_712);
  let x_714 : f32 = u_xlat33;
  u_xlat33 = clamp(x_714, 0.0f, 1.0f);
  let x_717 : f32 = x_540.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_719 : f32 = x_540.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_721 : f32 = x_540.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_723 : f32 = x_540.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_724 : vec4<f32> = vec4<f32>(x_717, x_719, x_721, x_723);
  let x_730 : vec4<bool> = (vec4<f32>(x_724.x, x_724.y, x_724.z, x_724.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_730.x, x_730.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_742 : u32 = u_xlatu_loop_1;
    let x_743 : u32 = u_xlatu0;
    if ((x_742 < x_743)) {
    } else {
      break;
    }
    let x_746 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_746 >> 2u);
    let x_749 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_749 & 3u));
    let x_753 : u32 = u_xlatu35;
    let x_756 : vec4<f32> = x_364.unity_LightIndices[bitcast<i32>(x_753)];
    let x_766 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_771 : vec4<u32> = indexable[x_766];
    u_xlat35 = dot(x_756, bitcast<vec4<f32>>(x_771));
    let x_775 : f32 = u_xlat35;
    u_xlati35 = i32(x_775);
    let x_778 : vec4<f32> = vs_TEXCOORD2;
    let x_790 : i32 = u_xlati35;
    let x_792 : vec4<f32> = x_789.x_AdditionalLightsPosition[x_790];
    let x_795 : i32 = u_xlati35;
    let x_797 : vec4<f32> = x_789.x_AdditionalLightsPosition[x_795];
    u_xlat7 = ((-(vec3<f32>(x_778.x, x_778.y, x_778.z)) * vec3<f32>(x_792.w, x_792.w, x_792.w)) + vec3<f32>(x_797.x, x_797.y, x_797.z));
    let x_801 : vec3<f32> = u_xlat7;
    let x_802 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_801, x_802);
    let x_804 : f32 = u_xlat36;
    u_xlat36 = max(x_804, 0.00006103515625f);
    let x_808 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_808);
    let x_810 : f32 = u_xlat37;
    let x_812 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_810, x_810, x_810) * x_812);
    let x_814 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_814);
    let x_816 : f32 = u_xlat36;
    let x_817 : i32 = u_xlati35;
    let x_819 : f32 = x_789.x_AdditionalLightsAttenuation[x_817].x;
    u_xlat36 = (x_816 * x_819);
    let x_821 : f32 = u_xlat36;
    let x_823 : f32 = u_xlat36;
    u_xlat36 = ((-(x_821) * x_823) + 1.0f);
    let x_826 : f32 = u_xlat36;
    u_xlat36 = max(x_826, 0.0f);
    let x_828 : f32 = u_xlat36;
    let x_829 : f32 = u_xlat36;
    u_xlat36 = (x_828 * x_829);
    let x_831 : f32 = u_xlat36;
    let x_832 : f32 = u_xlat37;
    u_xlat36 = (x_831 * x_832);
    let x_834 : i32 = u_xlati35;
    let x_836 : vec4<f32> = x_789.x_AdditionalLightsSpotDir[x_834];
    let x_838 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_836.x, x_836.y, x_836.z), x_838);
    let x_840 : f32 = u_xlat37;
    let x_841 : i32 = u_xlati35;
    let x_843 : f32 = x_789.x_AdditionalLightsAttenuation[x_841].z;
    let x_845 : i32 = u_xlati35;
    let x_847 : f32 = x_789.x_AdditionalLightsAttenuation[x_845].w;
    u_xlat37 = ((x_840 * x_843) + x_847);
    let x_849 : f32 = u_xlat37;
    u_xlat37 = clamp(x_849, 0.0f, 1.0f);
    let x_851 : f32 = u_xlat37;
    let x_852 : f32 = u_xlat37;
    u_xlat37 = (x_851 * x_852);
    let x_854 : f32 = u_xlat36;
    let x_855 : f32 = u_xlat37;
    u_xlat36 = (x_854 * x_855);
    let x_859 : i32 = u_xlati35;
    let x_861 : f32 = x_163.x_AdditionalShadowParams[x_859].w;
    u_xlati37 = i32(x_861);
    let x_864 : i32 = u_xlati37;
    u_xlatb27 = (x_864 >= 0i);
    let x_866 : bool = u_xlatb27;
    if (x_866) {
      let x_870 : i32 = u_xlati35;
      let x_872 : f32 = x_163.x_AdditionalShadowParams[x_870].z;
      u_xlatb27 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_872, x_872, x_872, x_872))));
      let x_876 : bool = u_xlatb27;
      if (x_876) {
        let x_880 : vec3<f32> = u_xlat7;
        let x_883 : vec3<f32> = u_xlat7;
        let x_886 : vec4<bool> = (abs(vec4<f32>(x_880.z, x_880.z, x_880.y, x_880.z)) >= abs(vec4<f32>(x_883.x, x_883.y, x_883.x, x_883.x)));
        let x_888 : vec3<bool> = vec3<bool>(x_886.x, x_886.y, x_886.z);
        let x_889 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_888.x, x_888.y, x_888.z, x_889.w);
        let x_892 : bool = u_xlatb8.y;
        let x_894 : bool = u_xlatb8.x;
        u_xlatb27 = (x_892 & x_894);
        let x_896 : vec3<f32> = u_xlat7;
        let x_899 : vec4<bool> = (-(vec4<f32>(x_896.z, x_896.y, x_896.z, x_896.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_900 : vec3<bool> = vec3<bool>(x_899.x, x_899.y, x_899.w);
        let x_901 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_900.x, x_900.y, x_901.z, x_900.z);
        let x_905 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_905);
        let x_910 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_910);
        let x_915 : bool = u_xlatb8.w;
        u_xlat38 = select(0.0f, 1.0f, x_915);
        let x_918 : bool = u_xlatb8.z;
        if (x_918) {
          let x_923 : f32 = u_xlat8.y;
          x_919 = x_923;
        } else {
          let x_925 : f32 = u_xlat38;
          x_919 = x_925;
        }
        let x_926 : f32 = x_919;
        u_xlat38 = x_926;
        let x_929 : bool = u_xlatb27;
        if (x_929) {
          let x_934 : f32 = u_xlat8.x;
          x_930 = x_934;
        } else {
          let x_936 : f32 = u_xlat38;
          x_930 = x_936;
        }
        let x_937 : f32 = x_930;
        u_xlat27.x = x_937;
        let x_939 : i32 = u_xlati35;
        let x_941 : f32 = x_163.x_AdditionalShadowParams[x_939].w;
        u_xlat38 = trunc(x_941);
        let x_944 : f32 = u_xlat27.x;
        let x_945 : f32 = u_xlat38;
        u_xlat27.x = (x_944 + x_945);
        let x_949 : f32 = u_xlat27.x;
        u_xlati37 = i32(x_949);
      }
      let x_951 : i32 = u_xlati37;
      u_xlati37 = (x_951 << bitcast<u32>(2i));
      let x_953 : vec4<f32> = vs_TEXCOORD2;
      let x_956 : i32 = u_xlati37;
      let x_959 : i32 = u_xlati37;
      let x_963 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[((x_956 + 1i) / 4i)][((x_959 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_953.y, x_953.y, x_953.y, x_953.y) * x_963);
      let x_965 : i32 = u_xlati37;
      let x_967 : i32 = u_xlati37;
      let x_970 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[(x_965 / 4i)][(x_967 % 4i)];
      let x_971 : vec4<f32> = vs_TEXCOORD2;
      let x_974 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_970 * vec4<f32>(x_971.x, x_971.x, x_971.x, x_971.x)) + x_974);
      let x_976 : i32 = u_xlati37;
      let x_979 : i32 = u_xlati37;
      let x_983 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[((x_976 + 2i) / 4i)][((x_979 + 2i) % 4i)];
      let x_984 : vec4<f32> = vs_TEXCOORD2;
      let x_987 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_983 * vec4<f32>(x_984.z, x_984.z, x_984.z, x_984.z)) + x_987);
      let x_989 : vec4<f32> = u_xlat8;
      let x_990 : i32 = u_xlati37;
      let x_993 : i32 = u_xlati37;
      let x_997 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[((x_990 + 3i) / 4i)][((x_993 + 3i) % 4i)];
      u_xlat8 = (x_989 + x_997);
      let x_999 : vec4<f32> = u_xlat8;
      let x_1001 : vec4<f32> = u_xlat8;
      let x_1003 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) / vec3<f32>(x_1001.w, x_1001.w, x_1001.w));
      let x_1004 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
      let x_1007 : vec4<f32> = u_xlat8;
      let x_1008 : vec2<f32> = vec2<f32>(x_1007.x, x_1007.y);
      let x_1010 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
      let x_1018 : vec3<f32> = txVec1;
      let x_1020 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1018.xy, x_1018.z);
      u_xlat37 = x_1020;
      let x_1021 : i32 = u_xlati35;
      let x_1023 : f32 = x_163.x_AdditionalShadowParams[x_1021].x;
      u_xlat27.x = (1.0f + -(x_1023));
      let x_1027 : f32 = u_xlat37;
      let x_1028 : i32 = u_xlati35;
      let x_1030 : f32 = x_163.x_AdditionalShadowParams[x_1028].x;
      let x_1033 : f32 = u_xlat27.x;
      u_xlat37 = ((x_1027 * x_1030) + x_1033);
      let x_1036 : f32 = u_xlat8.z;
      u_xlatb27 = (0.0f >= x_1036);
      let x_1040 : f32 = u_xlat8.z;
      u_xlatb38 = (x_1040 >= 1.0f);
      let x_1042 : bool = u_xlatb38;
      let x_1043 : bool = u_xlatb27;
      u_xlatb27 = (x_1042 | x_1043);
      let x_1045 : bool = u_xlatb27;
      let x_1046 : f32 = u_xlat37;
      u_xlat37 = select(x_1046, 1.0f, x_1045);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_1049 : f32 = u_xlat37;
    u_xlat27.x = (-(x_1049) + 1.0f);
    let x_1053 : f32 = u_xlat33;
    let x_1055 : f32 = u_xlat27.x;
    let x_1057 : f32 = u_xlat37;
    u_xlat37 = ((x_1053 * x_1055) + x_1057);
    let x_1060 : i32 = u_xlati35;
    u_xlati27 = (1i << bitcast<u32>((x_1060 & 31i)));
    let x_1064 : i32 = u_xlati27;
    let x_1067 : f32 = x_540.x_AdditionalLightsCookieEnableBits;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_1064) & bitcast<u32>(x_1067)));
    let x_1071 : i32 = u_xlati27;
    if ((x_1071 != 0i)) {
      let x_1075 : i32 = u_xlati35;
      let x_1077 : f32 = x_540.x_AdditionalLightsLightTypes[x_1075].el;
      u_xlati27 = i32(x_1077);
      let x_1080 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_1080 != 0i));
      let x_1084 : i32 = u_xlati35;
      u_xlati39 = (x_1084 << bitcast<u32>(2i));
      let x_1086 : i32 = u_xlati38;
      if ((x_1086 != 0i)) {
        let x_1090 : vec4<f32> = vs_TEXCOORD2;
        let x_1092 : i32 = u_xlati39;
        let x_1095 : i32 = u_xlati39;
        let x_1099 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1092 + 1i) / 4i)][((x_1095 + 1i) % 4i)];
        let x_1101 : vec3<f32> = (vec3<f32>(x_1090.y, x_1090.y, x_1090.y) * vec3<f32>(x_1099.x, x_1099.y, x_1099.w));
        let x_1102 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
        let x_1104 : i32 = u_xlati39;
        let x_1106 : i32 = u_xlati39;
        let x_1109 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[(x_1104 / 4i)][(x_1106 % 4i)];
        let x_1111 : vec4<f32> = vs_TEXCOORD2;
        let x_1114 : vec4<f32> = u_xlat8;
        let x_1116 : vec3<f32> = ((vec3<f32>(x_1109.x, x_1109.y, x_1109.w) * vec3<f32>(x_1111.x, x_1111.x, x_1111.x)) + vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
        let x_1117 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
        let x_1119 : i32 = u_xlati39;
        let x_1122 : i32 = u_xlati39;
        let x_1126 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1119 + 2i) / 4i)][((x_1122 + 2i) % 4i)];
        let x_1128 : vec4<f32> = vs_TEXCOORD2;
        let x_1131 : vec4<f32> = u_xlat8;
        let x_1133 : vec3<f32> = ((vec3<f32>(x_1126.x, x_1126.y, x_1126.w) * vec3<f32>(x_1128.z, x_1128.z, x_1128.z)) + vec3<f32>(x_1131.x, x_1131.y, x_1131.z));
        let x_1134 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
        let x_1136 : vec4<f32> = u_xlat8;
        let x_1138 : i32 = u_xlati39;
        let x_1141 : i32 = u_xlati39;
        let x_1145 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1138 + 3i) / 4i)][((x_1141 + 3i) % 4i)];
        let x_1147 : vec3<f32> = (vec3<f32>(x_1136.x, x_1136.y, x_1136.z) + vec3<f32>(x_1145.x, x_1145.y, x_1145.w));
        let x_1148 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
        let x_1150 : vec4<f32> = u_xlat8;
        let x_1152 : vec4<f32> = u_xlat8;
        let x_1154 : vec2<f32> = (vec2<f32>(x_1150.x, x_1150.y) / vec2<f32>(x_1152.z, x_1152.z));
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
        let x_1157 : vec4<f32> = u_xlat8;
        let x_1160 : vec2<f32> = ((vec2<f32>(x_1157.x, x_1157.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
        let x_1163 : vec4<f32> = u_xlat8;
        let x_1167 : vec2<f32> = clamp(vec2<f32>(x_1163.x, x_1163.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1168 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1167.x, x_1167.y, x_1168.z, x_1168.w);
        let x_1170 : i32 = u_xlati35;
        let x_1172 : vec4<f32> = x_540.x_AdditionalLightsCookieAtlasUVRects[x_1170];
        let x_1174 : vec4<f32> = u_xlat8;
        let x_1177 : i32 = u_xlati35;
        let x_1179 : vec4<f32> = x_540.x_AdditionalLightsCookieAtlasUVRects[x_1177];
        let x_1181 : vec2<f32> = ((vec2<f32>(x_1172.x, x_1172.y) * vec2<f32>(x_1174.x, x_1174.y)) + vec2<f32>(x_1179.z, x_1179.w));
        let x_1182 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1181.x, x_1181.y, x_1182.z, x_1182.w);
      } else {
        let x_1185 : i32 = u_xlati27;
        u_xlatb27 = (x_1185 == 1i);
        let x_1187 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_1187);
        let x_1189 : i32 = u_xlati27;
        if ((x_1189 != 0i)) {
          let x_1193 : vec4<f32> = vs_TEXCOORD2;
          let x_1195 : i32 = u_xlati39;
          let x_1198 : i32 = u_xlati39;
          let x_1202 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1195 + 1i) / 4i)][((x_1198 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_1193.y, x_1193.y) * vec2<f32>(x_1202.x, x_1202.y));
          let x_1205 : i32 = u_xlati39;
          let x_1207 : i32 = u_xlati39;
          let x_1210 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[(x_1205 / 4i)][(x_1207 % 4i)];
          let x_1212 : vec4<f32> = vs_TEXCOORD2;
          let x_1215 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1210.x, x_1210.y) * vec2<f32>(x_1212.x, x_1212.x)) + x_1215);
          let x_1217 : i32 = u_xlati39;
          let x_1220 : i32 = u_xlati39;
          let x_1224 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1217 + 2i) / 4i)][((x_1220 + 2i) % 4i)];
          let x_1226 : vec4<f32> = vs_TEXCOORD2;
          let x_1229 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(x_1226.z, x_1226.z)) + x_1229);
          let x_1231 : vec2<f32> = u_xlat27;
          let x_1232 : i32 = u_xlati39;
          let x_1235 : i32 = u_xlati39;
          let x_1239 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1232 + 3i) / 4i)][((x_1235 + 3i) % 4i)];
          u_xlat27 = (x_1231 + vec2<f32>(x_1239.x, x_1239.y));
          let x_1242 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1242 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1245 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_1245);
          let x_1247 : i32 = u_xlati35;
          let x_1249 : vec4<f32> = x_540.x_AdditionalLightsCookieAtlasUVRects[x_1247];
          let x_1251 : vec2<f32> = u_xlat27;
          let x_1253 : i32 = u_xlati35;
          let x_1255 : vec4<f32> = x_540.x_AdditionalLightsCookieAtlasUVRects[x_1253];
          let x_1257 : vec2<f32> = ((vec2<f32>(x_1249.x, x_1249.y) * x_1251) + vec2<f32>(x_1255.z, x_1255.w));
          let x_1258 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1257.x, x_1257.y, x_1258.z, x_1258.w);
        } else {
          let x_1262 : vec4<f32> = vs_TEXCOORD2;
          let x_1264 : i32 = u_xlati39;
          let x_1267 : i32 = u_xlati39;
          let x_1271 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1264 + 1i) / 4i)][((x_1267 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1262.y, x_1262.y, x_1262.y, x_1262.y) * x_1271);
          let x_1273 : i32 = u_xlati39;
          let x_1275 : i32 = u_xlati39;
          let x_1278 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[(x_1273 / 4i)][(x_1275 % 4i)];
          let x_1279 : vec4<f32> = vs_TEXCOORD2;
          let x_1282 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1278 * vec4<f32>(x_1279.x, x_1279.x, x_1279.x, x_1279.x)) + x_1282);
          let x_1284 : i32 = u_xlati39;
          let x_1287 : i32 = u_xlati39;
          let x_1291 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1284 + 2i) / 4i)][((x_1287 + 2i) % 4i)];
          let x_1292 : vec4<f32> = vs_TEXCOORD2;
          let x_1295 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1291 * vec4<f32>(x_1292.z, x_1292.z, x_1292.z, x_1292.z)) + x_1295);
          let x_1297 : vec4<f32> = u_xlat9;
          let x_1298 : i32 = u_xlati39;
          let x_1301 : i32 = u_xlati39;
          let x_1305 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1298 + 3i) / 4i)][((x_1301 + 3i) % 4i)];
          u_xlat9 = (x_1297 + x_1305);
          let x_1307 : vec4<f32> = u_xlat9;
          let x_1309 : vec4<f32> = u_xlat9;
          let x_1311 : vec3<f32> = (vec3<f32>(x_1307.x, x_1307.y, x_1307.z) / vec3<f32>(x_1309.w, x_1309.w, x_1309.w));
          let x_1312 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
          let x_1314 : vec4<f32> = u_xlat9;
          let x_1316 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1314.x, x_1314.y, x_1314.z), vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
          let x_1321 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1321);
          let x_1324 : vec2<f32> = u_xlat27;
          let x_1326 : vec4<f32> = u_xlat9;
          let x_1328 : vec3<f32> = (vec3<f32>(x_1324.x, x_1324.x, x_1324.x) * vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
          let x_1329 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
          let x_1331 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1331.x, x_1331.y, x_1331.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1338 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1338, 0.00000099999999747524f);
          let x_1343 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1343);
          let x_1347 : vec2<f32> = u_xlat27;
          let x_1349 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1347.x, x_1347.x, x_1347.x) * vec3<f32>(x_1349.z, x_1349.x, x_1349.y));
          let x_1353 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1353);
          let x_1357 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1357, 0.0f, 1.0f);
          let x_1361 : vec3<f32> = u_xlat10;
          let x_1363 : vec4<bool> = (vec4<f32>(x_1361.y, x_1361.z, x_1361.y, x_1361.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1363.x, x_1363.y);
          let x_1367 : bool = u_xlatb30.x;
          if (x_1367) {
            let x_1372 : f32 = u_xlat10.x;
            x_1368 = x_1372;
          } else {
            let x_1375 : f32 = u_xlat10.x;
            x_1368 = -(x_1375);
          }
          let x_1377 : f32 = x_1368;
          u_xlat30.x = x_1377;
          let x_1380 : bool = u_xlatb30.y;
          if (x_1380) {
            let x_1385 : f32 = u_xlat10.x;
            x_1381 = x_1385;
          } else {
            let x_1388 : f32 = u_xlat10.x;
            x_1381 = -(x_1388);
          }
          let x_1390 : f32 = x_1381;
          u_xlat30.y = x_1390;
          let x_1392 : vec4<f32> = u_xlat9;
          let x_1394 : vec2<f32> = u_xlat27;
          let x_1397 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1392.x, x_1392.y) * vec2<f32>(x_1394.x, x_1394.x)) + x_1397);
          let x_1399 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1399 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1402 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1402, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1406 : i32 = u_xlati35;
          let x_1408 : vec4<f32> = x_540.x_AdditionalLightsCookieAtlasUVRects[x_1406];
          let x_1410 : vec2<f32> = u_xlat27;
          let x_1412 : i32 = u_xlati35;
          let x_1414 : vec4<f32> = x_540.x_AdditionalLightsCookieAtlasUVRects[x_1412];
          let x_1416 : vec2<f32> = ((vec2<f32>(x_1408.x, x_1408.y) * x_1410) + vec2<f32>(x_1414.z, x_1414.w));
          let x_1417 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1416.x, x_1416.y, x_1417.z, x_1417.w);
        }
      }
      let x_1424 : vec4<f32> = u_xlat8;
      let x_1426 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1424.x, x_1424.y), 0.0f);
      u_xlat8 = x_1426;
      let x_1428 : bool = u_xlatb5.y;
      if (x_1428) {
        let x_1433 : f32 = u_xlat8.w;
        x_1429 = x_1433;
      } else {
        let x_1436 : f32 = u_xlat8.x;
        x_1429 = x_1436;
      }
      let x_1437 : f32 = x_1429;
      u_xlat27.x = x_1437;
      let x_1440 : bool = u_xlatb5.x;
      if (x_1440) {
        let x_1444 : vec4<f32> = u_xlat8;
        x_1441 = vec3<f32>(x_1444.x, x_1444.y, x_1444.z);
      } else {
        let x_1447 : vec2<f32> = u_xlat27;
        x_1441 = vec3<f32>(x_1447.x, x_1447.x, x_1447.x);
      }
      let x_1449 : vec3<f32> = x_1441;
      let x_1450 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1456 : vec4<f32> = u_xlat8;
    let x_1458 : i32 = u_xlati35;
    let x_1460 : vec4<f32> = x_789.x_AdditionalLightsColor[x_1458];
    let x_1462 : vec3<f32> = (vec3<f32>(x_1456.x, x_1456.y, x_1456.z) * vec3<f32>(x_1460.x, x_1460.y, x_1460.z));
    let x_1463 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1462.x, x_1462.y, x_1462.z, x_1463.w);
    let x_1465 : f32 = u_xlat36;
    let x_1466 : f32 = u_xlat37;
    u_xlat35 = (x_1465 * x_1466);
    let x_1468 : f32 = u_xlat35;
    let x_1470 : vec4<f32> = u_xlat8;
    let x_1472 : vec3<f32> = (vec3<f32>(x_1468, x_1468, x_1468) * vec3<f32>(x_1470.x, x_1470.y, x_1470.z));
    let x_1473 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1473.w);
    let x_1475 : vec4<f32> = u_xlat2;
    let x_1477 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1475.x, x_1475.y, x_1475.z), x_1477);
    let x_1479 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1479, 0.0f, 1.0f);
    let x_1481 : f32 = u_xlat35;
    let x_1483 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1481, x_1481, x_1481) * vec3<f32>(x_1483.x, x_1483.y, x_1483.z));
    let x_1486 : vec3<f32> = u_xlat7;
    let x_1487 : vec4<f32> = u_xlat1;
    let x_1490 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1486 * vec3<f32>(x_1487.x, x_1487.y, x_1487.z)) + x_1490);

    continuing {
      let x_1492 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1492 + bitcast<u32>(1i));
    }
  }
  let x_1494 : vec4<f32> = u_xlat4;
  let x_1496 : vec4<f32> = u_xlat1;
  let x_1499 : vec4<f32> = u_xlat3;
  let x_1501 : vec3<f32> = ((vec3<f32>(x_1494.x, x_1494.y, x_1494.z) * vec3<f32>(x_1496.x, x_1496.y, x_1496.z)) + vec3<f32>(x_1499.x, x_1499.y, x_1499.z));
  let x_1502 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1501.x, x_1501.y, x_1501.z, x_1502.w);
  let x_1506 : vec3<f32> = u_xlat6;
  let x_1507 : vec4<f32> = u_xlat1;
  let x_1509 : vec3<f32> = (x_1506 + vec3<f32>(x_1507.x, x_1507.y, x_1507.z));
  let x_1510 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1510.w);
  let x_1512 : bool = u_xlatb22;
  let x_1513 : f32 = u_xlat11;
  SV_Target0.w = select(1.0f, x_1513, x_1512);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


