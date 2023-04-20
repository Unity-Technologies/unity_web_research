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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_162 : LightShadows;

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

var<private> u_xlatb33 : bool;

var<private> u_xlatb34 : bool;

var<private> u_xlat34 : f32;

var<private> u_xlat35 : f32;

@group(1) @binding(5) var<uniform> x_501 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

@group(1) @binding(2) var<uniform> x_624 : UnityPerDraw;

var<private> u_xlatu35 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlati35 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_753 : AdditionalLights;

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

var<private> u_xlatu34 : u32;

var<private> u_xlatb35 : bool;

fn main_1() {
  var x_58 : f32;
  var x_109 : f32;
  var txVec0 : vec3<f32>;
  var x_452 : f32;
  var x_585 : f32;
  var x_596 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_883 : f32;
  var x_894 : f32;
  var txVec1 : vec3<f32>;
  var x_1332 : f32;
  var x_1345 : f32;
  var x_1393 : f32;
  var x_1405 : vec3<f32>;
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
  let x_146 : vec4<f32> = u_xlat0;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_146.x, x_146.x, x_146.x) * x_148);
  let x_152 : vec4<f32> = vs_TEXCOORD2;
  let x_165 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres0;
  let x_168 : vec3<f32> = (vec3<f32>(x_152.x, x_152.y, x_152.z) + -(vec3<f32>(x_165.x, x_165.y, x_165.z)));
  let x_169 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec4<f32> = vs_TEXCOORD2;
  let x_176 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres1;
  let x_179 : vec3<f32> = (vec3<f32>(x_172.x, x_172.y, x_172.z) + -(vec3<f32>(x_176.x, x_176.y, x_176.z)));
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = vs_TEXCOORD2;
  let x_187 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (vec3<f32>(x_183.x, x_183.y, x_183.z) + -(vec3<f32>(x_187.x, x_187.y, x_187.z)));
  let x_192 : vec4<f32> = vs_TEXCOORD2;
  let x_195 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (vec3<f32>(x_192.x, x_192.y, x_192.z) + -(vec3<f32>(x_195.x, x_195.y, x_195.z)));
  let x_199 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_199.x, x_199.y, x_199.z), vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec4<f32> = u_xlat4;
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_205.x, x_205.y, x_205.z), vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_212 : vec3<f32> = u_xlat5;
  let x_213 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_212, x_213);
  let x_217 : vec3<f32> = u_xlat6;
  let x_218 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_217, x_218);
  let x_224 : vec4<f32> = u_xlat3;
  let x_227 : vec4<f32> = x_162.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_224 < x_227);
  let x_230 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_238);
  let x_242 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_242);
  let x_246 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_246);
  let x_252 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_252);
  let x_256 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_256);
  let x_259 : vec4<f32> = u_xlat3;
  let x_261 : vec4<f32> = u_xlat4;
  let x_263 : vec3<f32> = (vec3<f32>(x_259.x, x_259.y, x_259.z) + vec3<f32>(x_261.y, x_261.z, x_261.w));
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat3;
  let x_269 : vec3<f32> = max(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_270.x, x_269.x, x_269.y, x_269.z);
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_272, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_280 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_280) + 4.0f);
  let x_287 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_287);
  let x_291 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_291) << bitcast<u32>(2i));
  let x_294 : vec4<f32> = vs_TEXCOORD2;
  let x_296 : i32 = u_xlati0;
  let x_299 : i32 = u_xlati0;
  let x_303 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_296 + 1i) / 4i)][((x_299 + 1i) % 4i)];
  let x_305 : vec3<f32> = (vec3<f32>(x_294.y, x_294.y, x_294.y) * vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : i32 = u_xlati0;
  let x_310 : i32 = u_xlati0;
  let x_313 : vec4<f32> = x_162.x_MainLightWorldToShadow[(x_308 / 4i)][(x_310 % 4i)];
  let x_315 : vec4<f32> = vs_TEXCOORD2;
  let x_318 : vec4<f32> = u_xlat3;
  let x_320 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.x, x_315.x, x_315.x)) + vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : i32 = u_xlati0;
  let x_326 : i32 = u_xlati0;
  let x_330 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_323 + 2i) / 4i)][((x_326 + 2i) % 4i)];
  let x_332 : vec4<f32> = vs_TEXCOORD2;
  let x_335 : vec4<f32> = u_xlat3;
  let x_337 : vec3<f32> = ((vec3<f32>(x_330.x, x_330.y, x_330.z) * vec3<f32>(x_332.z, x_332.z, x_332.z)) + vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat3;
  let x_342 : i32 = u_xlati0;
  let x_345 : i32 = u_xlati0;
  let x_349 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_342 + 3i) / 4i)][((x_345 + 3i) % 4i)];
  let x_351 : vec3<f32> = (vec3<f32>(x_340.x, x_340.y, x_340.z) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_360 : vec2<f32> = vs_TEXCOORD1;
  let x_362 : f32 = x_27.x_GlobalMipBias.x;
  let x_363 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_360, x_362);
  u_xlat4 = x_363;
  let x_368 : vec2<f32> = vs_TEXCOORD1;
  let x_370 : f32 = x_27.x_GlobalMipBias.x;
  let x_371 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_368, x_370);
  u_xlat5 = vec3<f32>(x_371.x, x_371.y, x_371.z);
  let x_373 : vec4<f32> = u_xlat4;
  let x_377 : vec3<f32> = (vec3<f32>(x_373.x, x_373.y, x_373.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : vec3<f32> = u_xlat2;
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_380, vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_386 : f32 = u_xlat0.x;
  u_xlat0.x = (x_386 + 0.5f);
  let x_389 : vec4<f32> = u_xlat0;
  let x_391 : vec3<f32> = u_xlat5;
  let x_392 : vec3<f32> = (vec3<f32>(x_389.x, x_389.x, x_389.x) * x_391);
  let x_393 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_396 : f32 = u_xlat4.w;
  u_xlat0.x = max(x_396, 0.00009999999747378752f);
  let x_399 : vec4<f32> = u_xlat4;
  let x_401 : vec4<f32> = u_xlat0;
  let x_403 : vec3<f32> = (vec3<f32>(x_399.x, x_399.y, x_399.z) / vec3<f32>(x_401.x, x_401.x, x_401.x));
  let x_404 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_408 : vec4<f32> = u_xlat3;
  let x_409 : vec2<f32> = vec2<f32>(x_408.x, x_408.y);
  let x_411 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_409.x, x_409.y, x_411);
  let x_423 : vec3<f32> = txVec0;
  let x_425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_423.xy, x_423.z);
  u_xlat0.x = x_425;
  let x_429 : f32 = x_162.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_429) + 1.0f);
  let x_433 : f32 = u_xlat0.x;
  let x_435 : f32 = x_162.x_MainLightShadowParams.x;
  let x_437 : f32 = u_xlat33;
  u_xlat0.x = ((x_433 * x_435) + x_437);
  let x_442 : f32 = u_xlat3.z;
  u_xlatb33 = (0.0f >= x_442);
  let x_446 : f32 = u_xlat3.z;
  u_xlatb34 = (x_446 >= 1.0f);
  let x_448 : bool = u_xlatb33;
  let x_449 : bool = u_xlatb34;
  u_xlatb33 = (x_448 | x_449);
  let x_451 : bool = u_xlatb33;
  if (x_451) {
    x_452 = 1.0f;
  } else {
    let x_457 : f32 = u_xlat0.x;
    x_452 = x_457;
  }
  let x_458 : f32 = x_452;
  u_xlat0.x = x_458;
  let x_460 : vec4<f32> = vs_TEXCOORD2;
  let x_464 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_466 : vec3<f32> = (vec3<f32>(x_460.x, x_460.y, x_460.z) + -(x_464));
  let x_467 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat3;
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(vec3<f32>(x_469.x, x_469.y, x_469.z), vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_475 : f32 = u_xlat33;
  let x_477 : f32 = x_162.x_MainLightShadowParams.z;
  let x_480 : f32 = x_162.x_MainLightShadowParams.w;
  u_xlat34 = ((x_475 * x_477) + x_480);
  let x_482 : f32 = u_xlat34;
  u_xlat34 = clamp(x_482, 0.0f, 1.0f);
  let x_486 : f32 = u_xlat0.x;
  u_xlat35 = (-(x_486) + 1.0f);
  let x_489 : f32 = u_xlat34;
  let x_490 : f32 = u_xlat35;
  let x_493 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_489 * x_490) + x_493);
  let x_503 : f32 = x_501.x_MainLightCookieTextureFormat;
  u_xlatb34 = !((x_503 == -1.0f));
  let x_505 : bool = u_xlatb34;
  if (x_505) {
    let x_508 : vec4<f32> = vs_TEXCOORD2;
    let x_511 : vec4<f32> = x_501.x_MainLightWorldToLight[1i];
    let x_513 : vec2<f32> = (vec2<f32>(x_508.y, x_508.y) * vec2<f32>(x_511.x, x_511.y));
    let x_514 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
    let x_517 : vec4<f32> = x_501.x_MainLightWorldToLight[0i];
    let x_519 : vec4<f32> = vs_TEXCOORD2;
    let x_522 : vec4<f32> = u_xlat3;
    let x_524 : vec2<f32> = ((vec2<f32>(x_517.x, x_517.y) * vec2<f32>(x_519.x, x_519.x)) + vec2<f32>(x_522.x, x_522.y));
    let x_525 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
    let x_528 : vec4<f32> = x_501.x_MainLightWorldToLight[2i];
    let x_530 : vec4<f32> = vs_TEXCOORD2;
    let x_533 : vec4<f32> = u_xlat3;
    let x_535 : vec2<f32> = ((vec2<f32>(x_528.x, x_528.y) * vec2<f32>(x_530.z, x_530.z)) + vec2<f32>(x_533.x, x_533.y));
    let x_536 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
    let x_538 : vec4<f32> = u_xlat3;
    let x_541 : vec4<f32> = x_501.x_MainLightWorldToLight[3i];
    let x_543 : vec2<f32> = (vec2<f32>(x_538.x, x_538.y) + vec2<f32>(x_541.x, x_541.y));
    let x_544 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_543.x, x_543.y, x_544.z, x_544.w);
    let x_546 : vec4<f32> = u_xlat3;
    let x_550 : vec2<f32> = ((vec2<f32>(x_546.x, x_546.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_551 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
    let x_558 : vec4<f32> = u_xlat3;
    let x_561 : f32 = x_27.x_GlobalMipBias.x;
    let x_562 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_558.x, x_558.y), x_561);
    u_xlat3 = x_562;
    let x_567 : f32 = x_501.x_MainLightCookieTextureFormat;
    let x_569 : f32 = x_501.x_MainLightCookieTextureFormat;
    let x_571 : f32 = x_501.x_MainLightCookieTextureFormat;
    let x_573 : f32 = x_501.x_MainLightCookieTextureFormat;
    let x_574 : vec4<f32> = vec4<f32>(x_567, x_569, x_571, x_573);
    let x_581 : vec4<bool> = (vec4<f32>(x_574.x, x_574.y, x_574.z, x_574.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_581.x, x_581.y);
    let x_584 : bool = u_xlatb5.y;
    if (x_584) {
      let x_589 : f32 = u_xlat3.w;
      x_585 = x_589;
    } else {
      let x_592 : f32 = u_xlat3.x;
      x_585 = x_592;
    }
    let x_593 : f32 = x_585;
    u_xlat34 = x_593;
    let x_595 : bool = u_xlatb5.x;
    if (x_595) {
      let x_599 : vec4<f32> = u_xlat3;
      x_596 = vec3<f32>(x_599.x, x_599.y, x_599.z);
    } else {
      let x_602 : f32 = u_xlat34;
      x_596 = vec3<f32>(x_602, x_602, x_602);
    }
    let x_604 : vec3<f32> = x_596;
    let x_605 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_611 : vec4<f32> = u_xlat3;
  let x_614 : vec4<f32> = x_27.x_MainLightColor;
  let x_616 : vec3<f32> = (vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(x_614.x, x_614.y, x_614.z));
  let x_617 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_620 : f32 = u_xlat0.x;
  let x_626 : f32 = x_624.unity_LightData.z;
  u_xlat0.x = (x_620 * x_626);
  let x_629 : vec4<f32> = u_xlat0;
  let x_631 : vec4<f32> = u_xlat3;
  let x_633 : vec3<f32> = (vec3<f32>(x_629.x, x_629.x, x_629.x) * vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_636 : vec3<f32> = u_xlat2;
  let x_638 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(x_636, vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_643 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_643, 0.0f, 1.0f);
  let x_646 : vec4<f32> = u_xlat0;
  let x_648 : vec4<f32> = u_xlat3;
  let x_650 : vec3<f32> = (vec3<f32>(x_646.x, x_646.x, x_646.x) * vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : vec4<f32> = u_xlat1;
  let x_655 : vec4<f32> = u_xlat3;
  let x_657 : vec3<f32> = (vec3<f32>(x_653.x, x_653.y, x_653.z) * vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_658 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_661 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_663 : f32 = x_624.unity_LightData.y;
  u_xlat0.x = min(x_661, x_663);
  let x_667 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_667));
  let x_670 : f32 = u_xlat33;
  let x_673 : f32 = x_162.x_AdditionalShadowFadeParams.x;
  let x_676 : f32 = x_162.x_AdditionalShadowFadeParams.y;
  u_xlat33 = ((x_670 * x_673) + x_676);
  let x_678 : f32 = u_xlat33;
  u_xlat33 = clamp(x_678, 0.0f, 1.0f);
  let x_681 : f32 = x_501.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_683 : f32 = x_501.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_685 : f32 = x_501.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_687 : f32 = x_501.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_688 : vec4<f32> = vec4<f32>(x_681, x_683, x_685, x_687);
  let x_694 : vec4<bool> = (vec4<f32>(x_688.x, x_688.y, x_688.z, x_688.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_694.x, x_694.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_706 : u32 = u_xlatu_loop_1;
    let x_707 : u32 = u_xlatu0;
    if ((x_706 < x_707)) {
    } else {
      break;
    }
    let x_710 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_710 >> 2u);
    let x_713 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_713 & 3u));
    let x_717 : u32 = u_xlatu35;
    let x_720 : vec4<f32> = x_624.unity_LightIndices[bitcast<i32>(x_717)];
    let x_730 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_735 : vec4<u32> = indexable[x_730];
    u_xlat35 = dot(x_720, bitcast<vec4<f32>>(x_735));
    let x_739 : f32 = u_xlat35;
    u_xlati35 = i32(x_739);
    let x_742 : vec4<f32> = vs_TEXCOORD2;
    let x_754 : i32 = u_xlati35;
    let x_756 : vec4<f32> = x_753.x_AdditionalLightsPosition[x_754];
    let x_759 : i32 = u_xlati35;
    let x_761 : vec4<f32> = x_753.x_AdditionalLightsPosition[x_759];
    u_xlat7 = ((-(vec3<f32>(x_742.x, x_742.y, x_742.z)) * vec3<f32>(x_756.w, x_756.w, x_756.w)) + vec3<f32>(x_761.x, x_761.y, x_761.z));
    let x_765 : vec3<f32> = u_xlat7;
    let x_766 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_765, x_766);
    let x_768 : f32 = u_xlat36;
    u_xlat36 = max(x_768, 0.00006103515625f);
    let x_772 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_772);
    let x_774 : f32 = u_xlat37;
    let x_776 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_774, x_774, x_774) * x_776);
    let x_778 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_778);
    let x_780 : f32 = u_xlat36;
    let x_781 : i32 = u_xlati35;
    let x_783 : f32 = x_753.x_AdditionalLightsAttenuation[x_781].x;
    u_xlat36 = (x_780 * x_783);
    let x_785 : f32 = u_xlat36;
    let x_787 : f32 = u_xlat36;
    u_xlat36 = ((-(x_785) * x_787) + 1.0f);
    let x_790 : f32 = u_xlat36;
    u_xlat36 = max(x_790, 0.0f);
    let x_792 : f32 = u_xlat36;
    let x_793 : f32 = u_xlat36;
    u_xlat36 = (x_792 * x_793);
    let x_795 : f32 = u_xlat36;
    let x_796 : f32 = u_xlat37;
    u_xlat36 = (x_795 * x_796);
    let x_798 : i32 = u_xlati35;
    let x_800 : vec4<f32> = x_753.x_AdditionalLightsSpotDir[x_798];
    let x_802 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_800.x, x_800.y, x_800.z), x_802);
    let x_804 : f32 = u_xlat37;
    let x_805 : i32 = u_xlati35;
    let x_807 : f32 = x_753.x_AdditionalLightsAttenuation[x_805].z;
    let x_809 : i32 = u_xlati35;
    let x_811 : f32 = x_753.x_AdditionalLightsAttenuation[x_809].w;
    u_xlat37 = ((x_804 * x_807) + x_811);
    let x_813 : f32 = u_xlat37;
    u_xlat37 = clamp(x_813, 0.0f, 1.0f);
    let x_815 : f32 = u_xlat37;
    let x_816 : f32 = u_xlat37;
    u_xlat37 = (x_815 * x_816);
    let x_818 : f32 = u_xlat36;
    let x_819 : f32 = u_xlat37;
    u_xlat36 = (x_818 * x_819);
    let x_823 : i32 = u_xlati35;
    let x_825 : f32 = x_162.x_AdditionalShadowParams[x_823].w;
    u_xlati37 = i32(x_825);
    let x_828 : i32 = u_xlati37;
    u_xlatb27 = (x_828 >= 0i);
    let x_830 : bool = u_xlatb27;
    if (x_830) {
      let x_834 : i32 = u_xlati35;
      let x_836 : f32 = x_162.x_AdditionalShadowParams[x_834].z;
      u_xlatb27 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_836, x_836, x_836, x_836))));
      let x_840 : bool = u_xlatb27;
      if (x_840) {
        let x_844 : vec3<f32> = u_xlat7;
        let x_847 : vec3<f32> = u_xlat7;
        let x_850 : vec4<bool> = (abs(vec4<f32>(x_844.z, x_844.z, x_844.y, x_844.z)) >= abs(vec4<f32>(x_847.x, x_847.y, x_847.x, x_847.x)));
        let x_852 : vec3<bool> = vec3<bool>(x_850.x, x_850.y, x_850.z);
        let x_853 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_852.x, x_852.y, x_852.z, x_853.w);
        let x_856 : bool = u_xlatb8.y;
        let x_858 : bool = u_xlatb8.x;
        u_xlatb27 = (x_856 & x_858);
        let x_860 : vec3<f32> = u_xlat7;
        let x_863 : vec4<bool> = (-(vec4<f32>(x_860.z, x_860.y, x_860.z, x_860.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_864 : vec3<bool> = vec3<bool>(x_863.x, x_863.y, x_863.w);
        let x_865 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_864.x, x_864.y, x_865.z, x_864.z);
        let x_869 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_869);
        let x_874 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_874);
        let x_879 : bool = u_xlatb8.w;
        u_xlat38 = select(0.0f, 1.0f, x_879);
        let x_882 : bool = u_xlatb8.z;
        if (x_882) {
          let x_887 : f32 = u_xlat8.y;
          x_883 = x_887;
        } else {
          let x_889 : f32 = u_xlat38;
          x_883 = x_889;
        }
        let x_890 : f32 = x_883;
        u_xlat38 = x_890;
        let x_893 : bool = u_xlatb27;
        if (x_893) {
          let x_898 : f32 = u_xlat8.x;
          x_894 = x_898;
        } else {
          let x_900 : f32 = u_xlat38;
          x_894 = x_900;
        }
        let x_901 : f32 = x_894;
        u_xlat27.x = x_901;
        let x_903 : i32 = u_xlati35;
        let x_905 : f32 = x_162.x_AdditionalShadowParams[x_903].w;
        u_xlat38 = trunc(x_905);
        let x_908 : f32 = u_xlat27.x;
        let x_909 : f32 = u_xlat38;
        u_xlat27.x = (x_908 + x_909);
        let x_913 : f32 = u_xlat27.x;
        u_xlati37 = i32(x_913);
      }
      let x_915 : i32 = u_xlati37;
      u_xlati37 = (x_915 << bitcast<u32>(2i));
      let x_917 : vec4<f32> = vs_TEXCOORD2;
      let x_920 : i32 = u_xlati37;
      let x_923 : i32 = u_xlati37;
      let x_927 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_920 + 1i) / 4i)][((x_923 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_917.y, x_917.y, x_917.y, x_917.y) * x_927);
      let x_929 : i32 = u_xlati37;
      let x_931 : i32 = u_xlati37;
      let x_934 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[(x_929 / 4i)][(x_931 % 4i)];
      let x_935 : vec4<f32> = vs_TEXCOORD2;
      let x_938 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_934 * vec4<f32>(x_935.x, x_935.x, x_935.x, x_935.x)) + x_938);
      let x_940 : i32 = u_xlati37;
      let x_943 : i32 = u_xlati37;
      let x_947 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_940 + 2i) / 4i)][((x_943 + 2i) % 4i)];
      let x_948 : vec4<f32> = vs_TEXCOORD2;
      let x_951 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_947 * vec4<f32>(x_948.z, x_948.z, x_948.z, x_948.z)) + x_951);
      let x_953 : vec4<f32> = u_xlat8;
      let x_954 : i32 = u_xlati37;
      let x_957 : i32 = u_xlati37;
      let x_961 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_954 + 3i) / 4i)][((x_957 + 3i) % 4i)];
      u_xlat8 = (x_953 + x_961);
      let x_963 : vec4<f32> = u_xlat8;
      let x_965 : vec4<f32> = u_xlat8;
      let x_967 : vec3<f32> = (vec3<f32>(x_963.x, x_963.y, x_963.z) / vec3<f32>(x_965.w, x_965.w, x_965.w));
      let x_968 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
      let x_971 : vec4<f32> = u_xlat8;
      let x_972 : vec2<f32> = vec2<f32>(x_971.x, x_971.y);
      let x_974 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_972.x, x_972.y, x_974);
      let x_982 : vec3<f32> = txVec1;
      let x_984 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_982.xy, x_982.z);
      u_xlat37 = x_984;
      let x_985 : i32 = u_xlati35;
      let x_987 : f32 = x_162.x_AdditionalShadowParams[x_985].x;
      u_xlat27.x = (1.0f + -(x_987));
      let x_991 : f32 = u_xlat37;
      let x_992 : i32 = u_xlati35;
      let x_994 : f32 = x_162.x_AdditionalShadowParams[x_992].x;
      let x_997 : f32 = u_xlat27.x;
      u_xlat37 = ((x_991 * x_994) + x_997);
      let x_1000 : f32 = u_xlat8.z;
      u_xlatb27 = (0.0f >= x_1000);
      let x_1004 : f32 = u_xlat8.z;
      u_xlatb38 = (x_1004 >= 1.0f);
      let x_1006 : bool = u_xlatb38;
      let x_1007 : bool = u_xlatb27;
      u_xlatb27 = (x_1006 | x_1007);
      let x_1009 : bool = u_xlatb27;
      let x_1010 : f32 = u_xlat37;
      u_xlat37 = select(x_1010, 1.0f, x_1009);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_1013 : f32 = u_xlat37;
    u_xlat27.x = (-(x_1013) + 1.0f);
    let x_1017 : f32 = u_xlat33;
    let x_1019 : f32 = u_xlat27.x;
    let x_1021 : f32 = u_xlat37;
    u_xlat37 = ((x_1017 * x_1019) + x_1021);
    let x_1024 : i32 = u_xlati35;
    u_xlati27 = (1i << bitcast<u32>((x_1024 & 31i)));
    let x_1028 : i32 = u_xlati27;
    let x_1031 : f32 = x_501.x_AdditionalLightsCookieEnableBits;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_1028) & bitcast<u32>(x_1031)));
    let x_1035 : i32 = u_xlati27;
    if ((x_1035 != 0i)) {
      let x_1039 : i32 = u_xlati35;
      let x_1041 : f32 = x_501.x_AdditionalLightsLightTypes[x_1039].el;
      u_xlati27 = i32(x_1041);
      let x_1044 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_1044 != 0i));
      let x_1048 : i32 = u_xlati35;
      u_xlati39 = (x_1048 << bitcast<u32>(2i));
      let x_1050 : i32 = u_xlati38;
      if ((x_1050 != 0i)) {
        let x_1054 : vec4<f32> = vs_TEXCOORD2;
        let x_1056 : i32 = u_xlati39;
        let x_1059 : i32 = u_xlati39;
        let x_1063 : vec4<f32> = x_501.x_AdditionalLightsWorldToLights[((x_1056 + 1i) / 4i)][((x_1059 + 1i) % 4i)];
        let x_1065 : vec3<f32> = (vec3<f32>(x_1054.y, x_1054.y, x_1054.y) * vec3<f32>(x_1063.x, x_1063.y, x_1063.w));
        let x_1066 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
        let x_1068 : i32 = u_xlati39;
        let x_1070 : i32 = u_xlati39;
        let x_1073 : vec4<f32> = x_501.x_AdditionalLightsWorldToLights[(x_1068 / 4i)][(x_1070 % 4i)];
        let x_1075 : vec4<f32> = vs_TEXCOORD2;
        let x_1078 : vec4<f32> = u_xlat8;
        let x_1080 : vec3<f32> = ((vec3<f32>(x_1073.x, x_1073.y, x_1073.w) * vec3<f32>(x_1075.x, x_1075.x, x_1075.x)) + vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
        let x_1081 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
        let x_1083 : i32 = u_xlati39;
        let x_1086 : i32 = u_xlati39;
        let x_1090 : vec4<f32> = x_501.x_AdditionalLightsWorldToLights[((x_1083 + 2i) / 4i)][((x_1086 + 2i) % 4i)];
        let x_1092 : vec4<f32> = vs_TEXCOORD2;
        let x_1095 : vec4<f32> = u_xlat8;
        let x_1097 : vec3<f32> = ((vec3<f32>(x_1090.x, x_1090.y, x_1090.w) * vec3<f32>(x_1092.z, x_1092.z, x_1092.z)) + vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
        let x_1098 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
        let x_1100 : vec4<f32> = u_xlat8;
        let x_1102 : i32 = u_xlati39;
        let x_1105 : i32 = u_xlati39;
        let x_1109 : vec4<f32> = x_501.x_AdditionalLightsWorldToLights[((x_1102 + 3i) / 4i)][((x_1105 + 3i) % 4i)];
        let x_1111 : vec3<f32> = (vec3<f32>(x_1100.x, x_1100.y, x_1100.z) + vec3<f32>(x_1109.x, x_1109.y, x_1109.w));
        let x_1112 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
        let x_1114 : vec4<f32> = u_xlat8;
        let x_1116 : vec4<f32> = u_xlat8;
        let x_1118 : vec2<f32> = (vec2<f32>(x_1114.x, x_1114.y) / vec2<f32>(x_1116.z, x_1116.z));
        let x_1119 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat8;
        let x_1124 : vec2<f32> = ((vec2<f32>(x_1121.x, x_1121.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1125 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1124.x, x_1124.y, x_1125.z, x_1125.w);
        let x_1127 : vec4<f32> = u_xlat8;
        let x_1131 : vec2<f32> = clamp(vec2<f32>(x_1127.x, x_1127.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1132 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1131.x, x_1131.y, x_1132.z, x_1132.w);
        let x_1134 : i32 = u_xlati35;
        let x_1136 : vec4<f32> = x_501.x_AdditionalLightsCookieAtlasUVRects[x_1134];
        let x_1138 : vec4<f32> = u_xlat8;
        let x_1141 : i32 = u_xlati35;
        let x_1143 : vec4<f32> = x_501.x_AdditionalLightsCookieAtlasUVRects[x_1141];
        let x_1145 : vec2<f32> = ((vec2<f32>(x_1136.x, x_1136.y) * vec2<f32>(x_1138.x, x_1138.y)) + vec2<f32>(x_1143.z, x_1143.w));
        let x_1146 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1145.x, x_1145.y, x_1146.z, x_1146.w);
      } else {
        let x_1149 : i32 = u_xlati27;
        u_xlatb27 = (x_1149 == 1i);
        let x_1151 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_1151);
        let x_1153 : i32 = u_xlati27;
        if ((x_1153 != 0i)) {
          let x_1157 : vec4<f32> = vs_TEXCOORD2;
          let x_1159 : i32 = u_xlati39;
          let x_1162 : i32 = u_xlati39;
          let x_1166 : vec4<f32> = x_501.x_AdditionalLightsWorldToLights[((x_1159 + 1i) / 4i)][((x_1162 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_1157.y, x_1157.y) * vec2<f32>(x_1166.x, x_1166.y));
          let x_1169 : i32 = u_xlati39;
          let x_1171 : i32 = u_xlati39;
          let x_1174 : vec4<f32> = x_501.x_AdditionalLightsWorldToLights[(x_1169 / 4i)][(x_1171 % 4i)];
          let x_1176 : vec4<f32> = vs_TEXCOORD2;
          let x_1179 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1174.x, x_1174.y) * vec2<f32>(x_1176.x, x_1176.x)) + x_1179);
          let x_1181 : i32 = u_xlati39;
          let x_1184 : i32 = u_xlati39;
          let x_1188 : vec4<f32> = x_501.x_AdditionalLightsWorldToLights[((x_1181 + 2i) / 4i)][((x_1184 + 2i) % 4i)];
          let x_1190 : vec4<f32> = vs_TEXCOORD2;
          let x_1193 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1188.x, x_1188.y) * vec2<f32>(x_1190.z, x_1190.z)) + x_1193);
          let x_1195 : vec2<f32> = u_xlat27;
          let x_1196 : i32 = u_xlati39;
          let x_1199 : i32 = u_xlati39;
          let x_1203 : vec4<f32> = x_501.x_AdditionalLightsWorldToLights[((x_1196 + 3i) / 4i)][((x_1199 + 3i) % 4i)];
          u_xlat27 = (x_1195 + vec2<f32>(x_1203.x, x_1203.y));
          let x_1206 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1206 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1209 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_1209);
          let x_1211 : i32 = u_xlati35;
          let x_1213 : vec4<f32> = x_501.x_AdditionalLightsCookieAtlasUVRects[x_1211];
          let x_1215 : vec2<f32> = u_xlat27;
          let x_1217 : i32 = u_xlati35;
          let x_1219 : vec4<f32> = x_501.x_AdditionalLightsCookieAtlasUVRects[x_1217];
          let x_1221 : vec2<f32> = ((vec2<f32>(x_1213.x, x_1213.y) * x_1215) + vec2<f32>(x_1219.z, x_1219.w));
          let x_1222 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1221.x, x_1221.y, x_1222.z, x_1222.w);
        } else {
          let x_1226 : vec4<f32> = vs_TEXCOORD2;
          let x_1228 : i32 = u_xlati39;
          let x_1231 : i32 = u_xlati39;
          let x_1235 : vec4<f32> = x_501.x_AdditionalLightsWorldToLights[((x_1228 + 1i) / 4i)][((x_1231 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1226.y, x_1226.y, x_1226.y, x_1226.y) * x_1235);
          let x_1237 : i32 = u_xlati39;
          let x_1239 : i32 = u_xlati39;
          let x_1242 : vec4<f32> = x_501.x_AdditionalLightsWorldToLights[(x_1237 / 4i)][(x_1239 % 4i)];
          let x_1243 : vec4<f32> = vs_TEXCOORD2;
          let x_1246 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1242 * vec4<f32>(x_1243.x, x_1243.x, x_1243.x, x_1243.x)) + x_1246);
          let x_1248 : i32 = u_xlati39;
          let x_1251 : i32 = u_xlati39;
          let x_1255 : vec4<f32> = x_501.x_AdditionalLightsWorldToLights[((x_1248 + 2i) / 4i)][((x_1251 + 2i) % 4i)];
          let x_1256 : vec4<f32> = vs_TEXCOORD2;
          let x_1259 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1255 * vec4<f32>(x_1256.z, x_1256.z, x_1256.z, x_1256.z)) + x_1259);
          let x_1261 : vec4<f32> = u_xlat9;
          let x_1262 : i32 = u_xlati39;
          let x_1265 : i32 = u_xlati39;
          let x_1269 : vec4<f32> = x_501.x_AdditionalLightsWorldToLights[((x_1262 + 3i) / 4i)][((x_1265 + 3i) % 4i)];
          u_xlat9 = (x_1261 + x_1269);
          let x_1271 : vec4<f32> = u_xlat9;
          let x_1273 : vec4<f32> = u_xlat9;
          let x_1275 : vec3<f32> = (vec3<f32>(x_1271.x, x_1271.y, x_1271.z) / vec3<f32>(x_1273.w, x_1273.w, x_1273.w));
          let x_1276 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
          let x_1278 : vec4<f32> = u_xlat9;
          let x_1280 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1278.x, x_1278.y, x_1278.z), vec3<f32>(x_1280.x, x_1280.y, x_1280.z));
          let x_1285 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1285);
          let x_1288 : vec2<f32> = u_xlat27;
          let x_1290 : vec4<f32> = u_xlat9;
          let x_1292 : vec3<f32> = (vec3<f32>(x_1288.x, x_1288.x, x_1288.x) * vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
          let x_1293 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1292.x, x_1292.y, x_1292.z, x_1293.w);
          let x_1295 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1295.x, x_1295.y, x_1295.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1302 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1302, 0.00000099999999747524f);
          let x_1307 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1307);
          let x_1311 : vec2<f32> = u_xlat27;
          let x_1313 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1311.x, x_1311.x, x_1311.x) * vec3<f32>(x_1313.z, x_1313.x, x_1313.y));
          let x_1317 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1317);
          let x_1321 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1321, 0.0f, 1.0f);
          let x_1325 : vec3<f32> = u_xlat10;
          let x_1327 : vec4<bool> = (vec4<f32>(x_1325.y, x_1325.z, x_1325.y, x_1325.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1327.x, x_1327.y);
          let x_1331 : bool = u_xlatb30.x;
          if (x_1331) {
            let x_1336 : f32 = u_xlat10.x;
            x_1332 = x_1336;
          } else {
            let x_1339 : f32 = u_xlat10.x;
            x_1332 = -(x_1339);
          }
          let x_1341 : f32 = x_1332;
          u_xlat30.x = x_1341;
          let x_1344 : bool = u_xlatb30.y;
          if (x_1344) {
            let x_1349 : f32 = u_xlat10.x;
            x_1345 = x_1349;
          } else {
            let x_1352 : f32 = u_xlat10.x;
            x_1345 = -(x_1352);
          }
          let x_1354 : f32 = x_1345;
          u_xlat30.y = x_1354;
          let x_1356 : vec4<f32> = u_xlat9;
          let x_1358 : vec2<f32> = u_xlat27;
          let x_1361 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1356.x, x_1356.y) * vec2<f32>(x_1358.x, x_1358.x)) + x_1361);
          let x_1363 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1363 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1366 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1366, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1370 : i32 = u_xlati35;
          let x_1372 : vec4<f32> = x_501.x_AdditionalLightsCookieAtlasUVRects[x_1370];
          let x_1374 : vec2<f32> = u_xlat27;
          let x_1376 : i32 = u_xlati35;
          let x_1378 : vec4<f32> = x_501.x_AdditionalLightsCookieAtlasUVRects[x_1376];
          let x_1380 : vec2<f32> = ((vec2<f32>(x_1372.x, x_1372.y) * x_1374) + vec2<f32>(x_1378.z, x_1378.w));
          let x_1381 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1380.x, x_1380.y, x_1381.z, x_1381.w);
        }
      }
      let x_1388 : vec4<f32> = u_xlat8;
      let x_1390 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1388.x, x_1388.y), 0.0f);
      u_xlat8 = x_1390;
      let x_1392 : bool = u_xlatb5.y;
      if (x_1392) {
        let x_1397 : f32 = u_xlat8.w;
        x_1393 = x_1397;
      } else {
        let x_1400 : f32 = u_xlat8.x;
        x_1393 = x_1400;
      }
      let x_1401 : f32 = x_1393;
      u_xlat27.x = x_1401;
      let x_1404 : bool = u_xlatb5.x;
      if (x_1404) {
        let x_1408 : vec4<f32> = u_xlat8;
        x_1405 = vec3<f32>(x_1408.x, x_1408.y, x_1408.z);
      } else {
        let x_1411 : vec2<f32> = u_xlat27;
        x_1405 = vec3<f32>(x_1411.x, x_1411.x, x_1411.x);
      }
      let x_1413 : vec3<f32> = x_1405;
      let x_1414 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1420 : vec4<f32> = u_xlat8;
    let x_1422 : i32 = u_xlati35;
    let x_1424 : vec4<f32> = x_753.x_AdditionalLightsColor[x_1422];
    let x_1426 : vec3<f32> = (vec3<f32>(x_1420.x, x_1420.y, x_1420.z) * vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
    let x_1427 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
    let x_1429 : f32 = u_xlat36;
    let x_1430 : f32 = u_xlat37;
    u_xlat35 = (x_1429 * x_1430);
    let x_1432 : f32 = u_xlat35;
    let x_1434 : vec4<f32> = u_xlat8;
    let x_1436 : vec3<f32> = (vec3<f32>(x_1432, x_1432, x_1432) * vec3<f32>(x_1434.x, x_1434.y, x_1434.z));
    let x_1437 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1436.x, x_1436.y, x_1436.z, x_1437.w);
    let x_1439 : vec3<f32> = u_xlat2;
    let x_1440 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1439, x_1440);
    let x_1442 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1442, 0.0f, 1.0f);
    let x_1444 : f32 = u_xlat35;
    let x_1446 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1444, x_1444, x_1444) * vec3<f32>(x_1446.x, x_1446.y, x_1446.z));
    let x_1449 : vec3<f32> = u_xlat7;
    let x_1450 : vec4<f32> = u_xlat1;
    let x_1453 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1449 * vec3<f32>(x_1450.x, x_1450.y, x_1450.z)) + x_1453);

    continuing {
      let x_1455 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1455 + bitcast<u32>(1i));
    }
  }
  let x_1457 : vec4<f32> = u_xlat4;
  let x_1459 : vec4<f32> = u_xlat1;
  let x_1462 : vec4<f32> = u_xlat3;
  let x_1464 : vec3<f32> = ((vec3<f32>(x_1457.x, x_1457.y, x_1457.z) * vec3<f32>(x_1459.x, x_1459.y, x_1459.z)) + vec3<f32>(x_1462.x, x_1462.y, x_1462.z));
  let x_1465 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1465.w);
  let x_1469 : vec3<f32> = u_xlat6;
  let x_1470 : vec4<f32> = u_xlat1;
  let x_1472 : vec3<f32> = (x_1469 + vec3<f32>(x_1470.x, x_1470.y, x_1470.z));
  let x_1473 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1473.w);
  let x_1475 : bool = u_xlatb22;
  let x_1476 : f32 = u_xlat11;
  SV_Target0.w = select(1.0f, x_1476, x_1475);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


