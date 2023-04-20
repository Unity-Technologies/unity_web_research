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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

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

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb24 : bool;

var<private> u_xlatb25 : bool;

var<private> u_xlat25 : f32;

var<private> u_xlat26 : f32;

@group(1) @binding(2) var<uniform> x_501 : UnityPerDraw;

var<private> u_xlatu26 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati26 : i32;

@group(1) @binding(1) var<uniform> x_614 : AdditionalLights;

var<private> u_xlat27 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat29 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb30 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu25 : u32;

var<private> u_xlatb26 : bool;

fn main_1() {
  var x_58 : f32;
  var x_109 : f32;
  var txVec0 : vec3<f32>;
  var x_452 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_744 : f32;
  var x_754 : f32;
  var txVec1 : vec3<f32>;
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
  u_xlat8 = ((x_69 * x_72) + -(x_75));
  let x_80 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_80);
  let x_84 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_84);
  let x_86 : f32 = u_xlat24;
  let x_88 : f32 = u_xlat16;
  u_xlat16 = (abs(x_86) + abs(x_88));
  let x_91 : f32 = u_xlat16;
  u_xlat16 = max(x_91, 0.00009999999747378752f);
  let x_94 : f32 = u_xlat8;
  let x_95 : f32 = u_xlat16;
  u_xlat8 = (x_94 / x_95);
  let x_97 : f32 = u_xlat8;
  u_xlat8 = (x_97 + 0.5f);
  let x_100 : f32 = u_xlat8;
  u_xlat8 = clamp(x_100, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb16;
  if (x_108) {
    let x_112 : f32 = u_xlat8;
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
  u_xlat24 = (-(x_429) + 1.0f);
  let x_433 : f32 = u_xlat0.x;
  let x_435 : f32 = x_162.x_MainLightShadowParams.x;
  let x_437 : f32 = u_xlat24;
  u_xlat0.x = ((x_433 * x_435) + x_437);
  let x_442 : f32 = u_xlat3.z;
  u_xlatb24 = (0.0f >= x_442);
  let x_446 : f32 = u_xlat3.z;
  u_xlatb25 = (x_446 >= 1.0f);
  let x_448 : bool = u_xlatb24;
  let x_449 : bool = u_xlatb25;
  u_xlatb24 = (x_448 | x_449);
  let x_451 : bool = u_xlatb24;
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
  u_xlat24 = dot(vec3<f32>(x_469.x, x_469.y, x_469.z), vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_475 : f32 = u_xlat24;
  let x_477 : f32 = x_162.x_MainLightShadowParams.z;
  let x_480 : f32 = x_162.x_MainLightShadowParams.w;
  u_xlat25 = ((x_475 * x_477) + x_480);
  let x_482 : f32 = u_xlat25;
  u_xlat25 = clamp(x_482, 0.0f, 1.0f);
  let x_486 : f32 = u_xlat0.x;
  u_xlat26 = (-(x_486) + 1.0f);
  let x_489 : f32 = u_xlat25;
  let x_490 : f32 = u_xlat26;
  let x_493 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_489 * x_490) + x_493);
  let x_497 : f32 = u_xlat0.x;
  let x_503 : f32 = x_501.unity_LightData.z;
  u_xlat0.x = (x_497 * x_503);
  let x_506 : vec4<f32> = u_xlat0;
  let x_509 : vec4<f32> = x_27.x_MainLightColor;
  let x_511 : vec3<f32> = (vec3<f32>(x_506.x, x_506.x, x_506.x) * vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_512 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec3<f32> = u_xlat2;
  let x_516 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(x_514, vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_521 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_521, 0.0f, 1.0f);
  let x_524 : vec4<f32> = u_xlat0;
  let x_526 : vec4<f32> = u_xlat3;
  let x_528 : vec3<f32> = (vec3<f32>(x_524.x, x_524.x, x_524.x) * vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat1;
  let x_533 : vec4<f32> = u_xlat3;
  let x_535 : vec3<f32> = (vec3<f32>(x_531.x, x_531.y, x_531.z) * vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_539 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_541 : f32 = x_501.unity_LightData.y;
  u_xlat0.x = min(x_539, x_541);
  let x_545 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_545));
  let x_548 : f32 = u_xlat24;
  let x_551 : f32 = x_162.x_AdditionalShadowFadeParams.x;
  let x_554 : f32 = x_162.x_AdditionalShadowFadeParams.y;
  u_xlat24 = ((x_548 * x_551) + x_554);
  let x_556 : f32 = u_xlat24;
  u_xlat24 = clamp(x_556, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_568 : u32 = u_xlatu_loop_1;
    let x_569 : u32 = u_xlatu0;
    if ((x_568 < x_569)) {
    } else {
      break;
    }
    let x_572 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_572 >> 2u);
    let x_575 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_575 & 3u));
    let x_579 : u32 = u_xlatu26;
    let x_582 : vec4<f32> = x_501.unity_LightIndices[bitcast<i32>(x_579)];
    let x_592 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_597 : vec4<u32> = indexable[x_592];
    u_xlat26 = dot(x_582, bitcast<vec4<f32>>(x_597));
    let x_601 : f32 = u_xlat26;
    u_xlati26 = i32(x_601);
    let x_603 : vec4<f32> = vs_TEXCOORD2;
    let x_615 : i32 = u_xlati26;
    let x_617 : vec4<f32> = x_614.x_AdditionalLightsPosition[x_615];
    let x_620 : i32 = u_xlati26;
    let x_622 : vec4<f32> = x_614.x_AdditionalLightsPosition[x_620];
    u_xlat6 = ((-(vec3<f32>(x_603.x, x_603.y, x_603.z)) * vec3<f32>(x_617.w, x_617.w, x_617.w)) + vec3<f32>(x_622.x, x_622.y, x_622.z));
    let x_626 : vec3<f32> = u_xlat6;
    let x_627 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_626, x_627);
    let x_629 : f32 = u_xlat27;
    u_xlat27 = max(x_629, 0.00006103515625f);
    let x_633 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_633);
    let x_635 : f32 = u_xlat28;
    let x_637 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_635, x_635, x_635) * x_637);
    let x_639 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_639);
    let x_641 : f32 = u_xlat27;
    let x_642 : i32 = u_xlati26;
    let x_644 : f32 = x_614.x_AdditionalLightsAttenuation[x_642].x;
    u_xlat27 = (x_641 * x_644);
    let x_646 : f32 = u_xlat27;
    let x_648 : f32 = u_xlat27;
    u_xlat27 = ((-(x_646) * x_648) + 1.0f);
    let x_651 : f32 = u_xlat27;
    u_xlat27 = max(x_651, 0.0f);
    let x_653 : f32 = u_xlat27;
    let x_654 : f32 = u_xlat27;
    u_xlat27 = (x_653 * x_654);
    let x_656 : f32 = u_xlat27;
    let x_657 : f32 = u_xlat28;
    u_xlat27 = (x_656 * x_657);
    let x_659 : i32 = u_xlati26;
    let x_661 : vec4<f32> = x_614.x_AdditionalLightsSpotDir[x_659];
    let x_663 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_661.x, x_661.y, x_661.z), x_663);
    let x_665 : f32 = u_xlat28;
    let x_666 : i32 = u_xlati26;
    let x_668 : f32 = x_614.x_AdditionalLightsAttenuation[x_666].z;
    let x_670 : i32 = u_xlati26;
    let x_672 : f32 = x_614.x_AdditionalLightsAttenuation[x_670].w;
    u_xlat28 = ((x_665 * x_668) + x_672);
    let x_674 : f32 = u_xlat28;
    u_xlat28 = clamp(x_674, 0.0f, 1.0f);
    let x_676 : f32 = u_xlat28;
    let x_677 : f32 = u_xlat28;
    u_xlat28 = (x_676 * x_677);
    let x_679 : f32 = u_xlat27;
    let x_680 : f32 = u_xlat28;
    u_xlat27 = (x_679 * x_680);
    let x_684 : i32 = u_xlati26;
    let x_686 : f32 = x_162.x_AdditionalShadowParams[x_684].w;
    u_xlati28 = i32(x_686);
    let x_689 : i32 = u_xlati28;
    u_xlatb29 = (x_689 >= 0i);
    let x_691 : bool = u_xlatb29;
    if (x_691) {
      let x_695 : i32 = u_xlati26;
      let x_697 : f32 = x_162.x_AdditionalShadowParams[x_695].z;
      u_xlatb29 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_697, x_697, x_697, x_697))));
      let x_701 : bool = u_xlatb29;
      if (x_701) {
        let x_705 : vec3<f32> = u_xlat6;
        let x_708 : vec3<f32> = u_xlat6;
        let x_711 : vec4<bool> = (abs(vec4<f32>(x_705.z, x_705.z, x_705.y, x_705.z)) >= abs(vec4<f32>(x_708.x, x_708.y, x_708.x, x_708.x)));
        let x_713 : vec3<bool> = vec3<bool>(x_711.x, x_711.y, x_711.z);
        let x_714 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_713.x, x_713.y, x_713.z, x_714.w);
        let x_717 : bool = u_xlatb7.y;
        let x_719 : bool = u_xlatb7.x;
        u_xlatb29 = (x_717 & x_719);
        let x_721 : vec3<f32> = u_xlat6;
        let x_724 : vec4<bool> = (-(vec4<f32>(x_721.z, x_721.y, x_721.z, x_721.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_725 : vec3<bool> = vec3<bool>(x_724.x, x_724.y, x_724.w);
        let x_726 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_725.x, x_725.y, x_726.z, x_725.z);
        let x_730 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_730);
        let x_735 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_735);
        let x_740 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_740);
        let x_743 : bool = u_xlatb7.z;
        if (x_743) {
          let x_748 : f32 = u_xlat7.y;
          x_744 = x_748;
        } else {
          let x_750 : f32 = u_xlat30;
          x_744 = x_750;
        }
        let x_751 : f32 = x_744;
        u_xlat30 = x_751;
        let x_753 : bool = u_xlatb29;
        if (x_753) {
          let x_758 : f32 = u_xlat7.x;
          x_754 = x_758;
        } else {
          let x_760 : f32 = u_xlat30;
          x_754 = x_760;
        }
        let x_761 : f32 = x_754;
        u_xlat29 = x_761;
        let x_762 : i32 = u_xlati26;
        let x_764 : f32 = x_162.x_AdditionalShadowParams[x_762].w;
        u_xlat30 = trunc(x_764);
        let x_766 : f32 = u_xlat29;
        let x_767 : f32 = u_xlat30;
        u_xlat29 = (x_766 + x_767);
        let x_769 : f32 = u_xlat29;
        u_xlati28 = i32(x_769);
      }
      let x_771 : i32 = u_xlati28;
      u_xlati28 = (x_771 << bitcast<u32>(2i));
      let x_773 : vec4<f32> = vs_TEXCOORD2;
      let x_776 : i32 = u_xlati28;
      let x_779 : i32 = u_xlati28;
      let x_783 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_776 + 1i) / 4i)][((x_779 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_773.y, x_773.y, x_773.y, x_773.y) * x_783);
      let x_785 : i32 = u_xlati28;
      let x_787 : i32 = u_xlati28;
      let x_790 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[(x_785 / 4i)][(x_787 % 4i)];
      let x_791 : vec4<f32> = vs_TEXCOORD2;
      let x_794 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_790 * vec4<f32>(x_791.x, x_791.x, x_791.x, x_791.x)) + x_794);
      let x_796 : i32 = u_xlati28;
      let x_799 : i32 = u_xlati28;
      let x_803 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_796 + 2i) / 4i)][((x_799 + 2i) % 4i)];
      let x_804 : vec4<f32> = vs_TEXCOORD2;
      let x_807 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_803 * vec4<f32>(x_804.z, x_804.z, x_804.z, x_804.z)) + x_807);
      let x_809 : vec4<f32> = u_xlat7;
      let x_810 : i32 = u_xlati28;
      let x_813 : i32 = u_xlati28;
      let x_817 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_810 + 3i) / 4i)][((x_813 + 3i) % 4i)];
      u_xlat7 = (x_809 + x_817);
      let x_819 : vec4<f32> = u_xlat7;
      let x_821 : vec4<f32> = u_xlat7;
      let x_823 : vec3<f32> = (vec3<f32>(x_819.x, x_819.y, x_819.z) / vec3<f32>(x_821.w, x_821.w, x_821.w));
      let x_824 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
      let x_827 : vec4<f32> = u_xlat7;
      let x_828 : vec2<f32> = vec2<f32>(x_827.x, x_827.y);
      let x_830 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_828.x, x_828.y, x_830);
      let x_838 : vec3<f32> = txVec1;
      let x_840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_838.xy, x_838.z);
      u_xlat28 = x_840;
      let x_841 : i32 = u_xlati26;
      let x_843 : f32 = x_162.x_AdditionalShadowParams[x_841].x;
      u_xlat29 = (1.0f + -(x_843));
      let x_846 : f32 = u_xlat28;
      let x_847 : i32 = u_xlati26;
      let x_849 : f32 = x_162.x_AdditionalShadowParams[x_847].x;
      let x_851 : f32 = u_xlat29;
      u_xlat28 = ((x_846 * x_849) + x_851);
      let x_854 : f32 = u_xlat7.z;
      u_xlatb29 = (0.0f >= x_854);
      let x_858 : f32 = u_xlat7.z;
      u_xlatb30 = (x_858 >= 1.0f);
      let x_860 : bool = u_xlatb29;
      let x_861 : bool = u_xlatb30;
      u_xlatb29 = (x_860 | x_861);
      let x_863 : bool = u_xlatb29;
      let x_864 : f32 = u_xlat28;
      u_xlat28 = select(x_864, 1.0f, x_863);
    } else {
      u_xlat28 = 1.0f;
    }
    let x_867 : f32 = u_xlat28;
    u_xlat29 = (-(x_867) + 1.0f);
    let x_870 : f32 = u_xlat24;
    let x_871 : f32 = u_xlat29;
    let x_873 : f32 = u_xlat28;
    u_xlat28 = ((x_870 * x_871) + x_873);
    let x_875 : f32 = u_xlat27;
    let x_876 : f32 = u_xlat28;
    u_xlat27 = (x_875 * x_876);
    let x_878 : f32 = u_xlat27;
    let x_880 : i32 = u_xlati26;
    let x_882 : vec4<f32> = x_614.x_AdditionalLightsColor[x_880];
    let x_884 : vec3<f32> = (vec3<f32>(x_878, x_878, x_878) * vec3<f32>(x_882.x, x_882.y, x_882.z));
    let x_885 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
    let x_887 : vec3<f32> = u_xlat2;
    let x_888 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_887, x_888);
    let x_890 : f32 = u_xlat26;
    u_xlat26 = clamp(x_890, 0.0f, 1.0f);
    let x_892 : f32 = u_xlat26;
    let x_894 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_892, x_892, x_892) * vec3<f32>(x_894.x, x_894.y, x_894.z));
    let x_897 : vec3<f32> = u_xlat6;
    let x_898 : vec4<f32> = u_xlat1;
    let x_901 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_897 * vec3<f32>(x_898.x, x_898.y, x_898.z)) + x_901);

    continuing {
      let x_903 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_903 + bitcast<u32>(1i));
    }
  }
  let x_905 : vec4<f32> = u_xlat4;
  let x_907 : vec4<f32> = u_xlat1;
  let x_910 : vec4<f32> = u_xlat3;
  let x_912 : vec3<f32> = ((vec3<f32>(x_905.x, x_905.y, x_905.z) * vec3<f32>(x_907.x, x_907.y, x_907.z)) + vec3<f32>(x_910.x, x_910.y, x_910.z));
  let x_913 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
  let x_917 : vec3<f32> = u_xlat5;
  let x_918 : vec4<f32> = u_xlat1;
  let x_920 : vec3<f32> = (x_917 + vec3<f32>(x_918.x, x_918.y, x_918.z));
  let x_921 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : bool = u_xlatb16;
  let x_924 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_924, x_923);
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


