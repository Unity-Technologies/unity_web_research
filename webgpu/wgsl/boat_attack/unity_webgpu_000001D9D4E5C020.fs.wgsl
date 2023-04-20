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

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_238 : LightShadows;

var<private> u_xlatb33 : bool;

var<private> u_xlatb34 : bool;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat35 : f32;

@group(1) @binding(5) var<uniform> x_315 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

@group(1) @binding(2) var<uniform> x_444 : UnityPerDraw;

var<private> u_xlatu0 : u32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatu35 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlati35 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_577 : AdditionalLights;

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
  var x_264 : f32;
  var x_405 : f32;
  var x_416 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_711 : f32;
  var x_722 : f32;
  var txVec1 : vec3<f32>;
  var x_1160 : f32;
  var x_1173 : f32;
  var x_1221 : f32;
  var x_1233 : vec3<f32>;
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
  let x_157 : vec2<f32> = vs_TEXCOORD1;
  let x_159 : f32 = x_27.x_GlobalMipBias.x;
  let x_160 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_157, x_159);
  u_xlat3 = x_160;
  let x_166 : vec2<f32> = vs_TEXCOORD1;
  let x_168 : f32 = x_27.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_166, x_168);
  let x_170 : vec3<f32> = vec3<f32>(x_169.x, x_169.y, x_169.z);
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_173 : vec4<f32> = u_xlat3;
  let x_177 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_180 : vec3<f32> = u_xlat2;
  let x_181 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_180, vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = (x_186 + 0.5f);
  let x_189 : vec4<f32> = u_xlat0;
  let x_191 : vec4<f32> = u_xlat4;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.x, x_189.x) * vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_197 : f32 = u_xlat3.w;
  u_xlat0.x = max(x_197, 0.00009999999747378752f);
  let x_200 : vec4<f32> = u_xlat3;
  let x_202 : vec4<f32> = u_xlat0;
  let x_204 : vec3<f32> = (vec3<f32>(x_200.x, x_200.y, x_200.z) / vec3<f32>(x_202.x, x_202.x, x_202.x));
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_210 : vec4<f32> = vs_TEXCOORD6;
  let x_211 : vec2<f32> = vec2<f32>(x_210.x, x_210.y);
  let x_214 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_211.x, x_211.y, x_214);
  let x_226 : vec3<f32> = txVec0;
  let x_228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_226.xy, x_226.z);
  u_xlat0.x = x_228;
  let x_241 : f32 = x_238.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_241) + 1.0f);
  let x_245 : f32 = u_xlat0.x;
  let x_247 : f32 = x_238.x_MainLightShadowParams.x;
  let x_249 : f32 = u_xlat33;
  u_xlat0.x = ((x_245 * x_247) + x_249);
  let x_254 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (0.0f >= x_254);
  let x_258 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (x_258 >= 1.0f);
  let x_260 : bool = u_xlatb33;
  let x_261 : bool = u_xlatb34;
  u_xlatb33 = (x_260 | x_261);
  let x_263 : bool = u_xlatb33;
  if (x_263) {
    x_264 = 1.0f;
  } else {
    let x_269 : f32 = u_xlat0.x;
    x_264 = x_269;
  }
  let x_270 : f32 = x_264;
  u_xlat0.x = x_270;
  let x_273 : vec4<f32> = vs_TEXCOORD2;
  let x_278 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_280 : vec3<f32> = (vec3<f32>(x_273.x, x_273.y, x_273.z) + -(x_278));
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec4<f32> = u_xlat4;
  let x_285 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(vec3<f32>(x_283.x, x_283.y, x_283.z), vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_289 : f32 = u_xlat33;
  let x_291 : f32 = x_238.x_MainLightShadowParams.z;
  let x_294 : f32 = x_238.x_MainLightShadowParams.w;
  u_xlat34 = ((x_289 * x_291) + x_294);
  let x_296 : f32 = u_xlat34;
  u_xlat34 = clamp(x_296, 0.0f, 1.0f);
  let x_300 : f32 = u_xlat0.x;
  u_xlat35 = (-(x_300) + 1.0f);
  let x_303 : f32 = u_xlat34;
  let x_304 : f32 = u_xlat35;
  let x_307 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_303 * x_304) + x_307);
  let x_318 : f32 = x_315.x_MainLightCookieTextureFormat;
  u_xlatb34 = !((x_318 == -1.0f));
  let x_321 : bool = u_xlatb34;
  if (x_321) {
    let x_324 : vec4<f32> = vs_TEXCOORD2;
    let x_328 : vec4<f32> = x_315.x_MainLightWorldToLight[1i];
    let x_330 : vec2<f32> = (vec2<f32>(x_324.y, x_324.y) * vec2<f32>(x_328.x, x_328.y));
    let x_331 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_330.x, x_330.y, x_331.z, x_331.w);
    let x_334 : vec4<f32> = x_315.x_MainLightWorldToLight[0i];
    let x_336 : vec4<f32> = vs_TEXCOORD2;
    let x_339 : vec4<f32> = u_xlat4;
    let x_341 : vec2<f32> = ((vec2<f32>(x_334.x, x_334.y) * vec2<f32>(x_336.x, x_336.x)) + vec2<f32>(x_339.x, x_339.y));
    let x_342 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_341.x, x_341.y, x_342.z, x_342.w);
    let x_345 : vec4<f32> = x_315.x_MainLightWorldToLight[2i];
    let x_347 : vec4<f32> = vs_TEXCOORD2;
    let x_350 : vec4<f32> = u_xlat4;
    let x_352 : vec2<f32> = ((vec2<f32>(x_345.x, x_345.y) * vec2<f32>(x_347.z, x_347.z)) + vec2<f32>(x_350.x, x_350.y));
    let x_353 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_352.x, x_352.y, x_353.z, x_353.w);
    let x_355 : vec4<f32> = u_xlat4;
    let x_359 : vec4<f32> = x_315.x_MainLightWorldToLight[3i];
    let x_361 : vec2<f32> = (vec2<f32>(x_355.x, x_355.y) + vec2<f32>(x_359.x, x_359.y));
    let x_362 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_361.x, x_361.y, x_362.z, x_362.w);
    let x_364 : vec4<f32> = u_xlat4;
    let x_368 : vec2<f32> = ((vec2<f32>(x_364.x, x_364.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_369 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_368.x, x_368.y, x_369.z, x_369.w);
    let x_376 : vec4<f32> = u_xlat4;
    let x_379 : f32 = x_27.x_GlobalMipBias.x;
    let x_380 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_376.x, x_376.y), x_379);
    u_xlat4 = x_380;
    let x_385 : f32 = x_315.x_MainLightCookieTextureFormat;
    let x_387 : f32 = x_315.x_MainLightCookieTextureFormat;
    let x_389 : f32 = x_315.x_MainLightCookieTextureFormat;
    let x_391 : f32 = x_315.x_MainLightCookieTextureFormat;
    let x_392 : vec4<f32> = vec4<f32>(x_385, x_387, x_389, x_391);
    let x_400 : vec4<bool> = (vec4<f32>(x_392.x, x_392.y, x_392.z, x_392.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_400.x, x_400.y);
    let x_404 : bool = u_xlatb5.y;
    if (x_404) {
      let x_409 : f32 = u_xlat4.w;
      x_405 = x_409;
    } else {
      let x_412 : f32 = u_xlat4.x;
      x_405 = x_412;
    }
    let x_413 : f32 = x_405;
    u_xlat34 = x_413;
    let x_415 : bool = u_xlatb5.x;
    if (x_415) {
      let x_419 : vec4<f32> = u_xlat4;
      x_416 = vec3<f32>(x_419.x, x_419.y, x_419.z);
    } else {
      let x_422 : f32 = u_xlat34;
      x_416 = vec3<f32>(x_422, x_422, x_422);
    }
    let x_424 : vec3<f32> = x_416;
    let x_425 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_431 : vec4<f32> = u_xlat4;
  let x_434 : vec4<f32> = x_27.x_MainLightColor;
  let x_436 : vec3<f32> = (vec3<f32>(x_431.x, x_431.y, x_431.z) * vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : f32 = u_xlat0.x;
  let x_446 : f32 = x_444.unity_LightData.z;
  u_xlat0.x = (x_440 * x_446);
  let x_449 : vec4<f32> = u_xlat0;
  let x_451 : vec4<f32> = u_xlat4;
  let x_453 : vec3<f32> = (vec3<f32>(x_449.x, x_449.x, x_449.x) * vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : vec3<f32> = u_xlat2;
  let x_458 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(x_456, vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_463 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_463, 0.0f, 1.0f);
  let x_466 : vec4<f32> = u_xlat0;
  let x_468 : vec4<f32> = u_xlat4;
  let x_470 : vec3<f32> = (vec3<f32>(x_466.x, x_466.x, x_466.x) * vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_473 : vec4<f32> = u_xlat1;
  let x_475 : vec4<f32> = u_xlat4;
  let x_477 : vec3<f32> = (vec3<f32>(x_473.x, x_473.y, x_473.z) * vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_478 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_481 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_483 : f32 = x_444.unity_LightData.y;
  u_xlat0.x = min(x_481, x_483);
  let x_489 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_489));
  let x_492 : f32 = u_xlat33;
  let x_495 : f32 = x_238.x_AdditionalShadowFadeParams.x;
  let x_498 : f32 = x_238.x_AdditionalShadowFadeParams.y;
  u_xlat33 = ((x_492 * x_495) + x_498);
  let x_500 : f32 = u_xlat33;
  u_xlat33 = clamp(x_500, 0.0f, 1.0f);
  let x_503 : f32 = x_315.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_505 : f32 = x_315.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_507 : f32 = x_315.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_509 : f32 = x_315.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_510 : vec4<f32> = vec4<f32>(x_503, x_505, x_507, x_509);
  let x_516 : vec4<bool> = (vec4<f32>(x_510.x, x_510.y, x_510.z, x_510.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_516.x, x_516.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_529 : u32 = u_xlatu_loop_1;
    let x_530 : u32 = u_xlatu0;
    if ((x_529 < x_530)) {
    } else {
      break;
    }
    let x_533 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_533 >> 2u);
    let x_537 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_537 & 3u));
    let x_541 : u32 = u_xlatu35;
    let x_544 : vec4<f32> = x_444.unity_LightIndices[bitcast<i32>(x_541)];
    let x_554 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_559 : vec4<u32> = indexable[x_554];
    u_xlat35 = dot(x_544, bitcast<vec4<f32>>(x_559));
    let x_563 : f32 = u_xlat35;
    u_xlati35 = i32(x_563);
    let x_566 : vec4<f32> = vs_TEXCOORD2;
    let x_578 : i32 = u_xlati35;
    let x_580 : vec4<f32> = x_577.x_AdditionalLightsPosition[x_578];
    let x_583 : i32 = u_xlati35;
    let x_585 : vec4<f32> = x_577.x_AdditionalLightsPosition[x_583];
    u_xlat7 = ((-(vec3<f32>(x_566.x, x_566.y, x_566.z)) * vec3<f32>(x_580.w, x_580.w, x_580.w)) + vec3<f32>(x_585.x, x_585.y, x_585.z));
    let x_589 : vec3<f32> = u_xlat7;
    let x_590 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_589, x_590);
    let x_592 : f32 = u_xlat36;
    u_xlat36 = max(x_592, 0.00006103515625f);
    let x_596 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_596);
    let x_598 : f32 = u_xlat37;
    let x_600 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_598, x_598, x_598) * x_600);
    let x_602 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_602);
    let x_604 : f32 = u_xlat36;
    let x_605 : i32 = u_xlati35;
    let x_607 : f32 = x_577.x_AdditionalLightsAttenuation[x_605].x;
    u_xlat36 = (x_604 * x_607);
    let x_609 : f32 = u_xlat36;
    let x_611 : f32 = u_xlat36;
    u_xlat36 = ((-(x_609) * x_611) + 1.0f);
    let x_614 : f32 = u_xlat36;
    u_xlat36 = max(x_614, 0.0f);
    let x_616 : f32 = u_xlat36;
    let x_617 : f32 = u_xlat36;
    u_xlat36 = (x_616 * x_617);
    let x_619 : f32 = u_xlat36;
    let x_620 : f32 = u_xlat37;
    u_xlat36 = (x_619 * x_620);
    let x_622 : i32 = u_xlati35;
    let x_624 : vec4<f32> = x_577.x_AdditionalLightsSpotDir[x_622];
    let x_626 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_624.x, x_624.y, x_624.z), x_626);
    let x_628 : f32 = u_xlat37;
    let x_629 : i32 = u_xlati35;
    let x_631 : f32 = x_577.x_AdditionalLightsAttenuation[x_629].z;
    let x_633 : i32 = u_xlati35;
    let x_635 : f32 = x_577.x_AdditionalLightsAttenuation[x_633].w;
    u_xlat37 = ((x_628 * x_631) + x_635);
    let x_637 : f32 = u_xlat37;
    u_xlat37 = clamp(x_637, 0.0f, 1.0f);
    let x_639 : f32 = u_xlat37;
    let x_640 : f32 = u_xlat37;
    u_xlat37 = (x_639 * x_640);
    let x_642 : f32 = u_xlat36;
    let x_643 : f32 = u_xlat37;
    u_xlat36 = (x_642 * x_643);
    let x_647 : i32 = u_xlati35;
    let x_649 : f32 = x_238.x_AdditionalShadowParams[x_647].w;
    u_xlati37 = i32(x_649);
    let x_652 : i32 = u_xlati37;
    u_xlatb27 = (x_652 >= 0i);
    let x_654 : bool = u_xlatb27;
    if (x_654) {
      let x_658 : i32 = u_xlati35;
      let x_660 : f32 = x_238.x_AdditionalShadowParams[x_658].z;
      u_xlatb27 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_660, x_660, x_660, x_660))));
      let x_664 : bool = u_xlatb27;
      if (x_664) {
        let x_669 : vec3<f32> = u_xlat7;
        let x_672 : vec3<f32> = u_xlat7;
        let x_675 : vec4<bool> = (abs(vec4<f32>(x_669.z, x_669.z, x_669.y, x_669.z)) >= abs(vec4<f32>(x_672.x, x_672.y, x_672.x, x_672.x)));
        let x_677 : vec3<bool> = vec3<bool>(x_675.x, x_675.y, x_675.z);
        let x_678 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_677.x, x_677.y, x_677.z, x_678.w);
        let x_681 : bool = u_xlatb8.y;
        let x_683 : bool = u_xlatb8.x;
        u_xlatb27 = (x_681 & x_683);
        let x_685 : vec3<f32> = u_xlat7;
        let x_688 : vec4<bool> = (-(vec4<f32>(x_685.z, x_685.y, x_685.z, x_685.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_689 : vec3<bool> = vec3<bool>(x_688.x, x_688.y, x_688.w);
        let x_690 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_689.x, x_689.y, x_690.z, x_689.z);
        let x_694 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_694);
        let x_700 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_700);
        let x_707 : bool = u_xlatb8.w;
        u_xlat38 = select(0.0f, 1.0f, x_707);
        let x_710 : bool = u_xlatb8.z;
        if (x_710) {
          let x_715 : f32 = u_xlat8.y;
          x_711 = x_715;
        } else {
          let x_717 : f32 = u_xlat38;
          x_711 = x_717;
        }
        let x_718 : f32 = x_711;
        u_xlat38 = x_718;
        let x_721 : bool = u_xlatb27;
        if (x_721) {
          let x_726 : f32 = u_xlat8.x;
          x_722 = x_726;
        } else {
          let x_728 : f32 = u_xlat38;
          x_722 = x_728;
        }
        let x_729 : f32 = x_722;
        u_xlat27.x = x_729;
        let x_731 : i32 = u_xlati35;
        let x_733 : f32 = x_238.x_AdditionalShadowParams[x_731].w;
        u_xlat38 = trunc(x_733);
        let x_736 : f32 = u_xlat27.x;
        let x_737 : f32 = u_xlat38;
        u_xlat27.x = (x_736 + x_737);
        let x_741 : f32 = u_xlat27.x;
        u_xlati37 = i32(x_741);
      }
      let x_743 : i32 = u_xlati37;
      u_xlati37 = (x_743 << bitcast<u32>(2i));
      let x_745 : vec4<f32> = vs_TEXCOORD2;
      let x_748 : i32 = u_xlati37;
      let x_751 : i32 = u_xlati37;
      let x_755 : vec4<f32> = x_238.x_AdditionalLightsWorldToShadow[((x_748 + 1i) / 4i)][((x_751 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_745.y, x_745.y, x_745.y, x_745.y) * x_755);
      let x_757 : i32 = u_xlati37;
      let x_759 : i32 = u_xlati37;
      let x_762 : vec4<f32> = x_238.x_AdditionalLightsWorldToShadow[(x_757 / 4i)][(x_759 % 4i)];
      let x_763 : vec4<f32> = vs_TEXCOORD2;
      let x_766 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_762 * vec4<f32>(x_763.x, x_763.x, x_763.x, x_763.x)) + x_766);
      let x_768 : i32 = u_xlati37;
      let x_771 : i32 = u_xlati37;
      let x_775 : vec4<f32> = x_238.x_AdditionalLightsWorldToShadow[((x_768 + 2i) / 4i)][((x_771 + 2i) % 4i)];
      let x_776 : vec4<f32> = vs_TEXCOORD2;
      let x_779 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_775 * vec4<f32>(x_776.z, x_776.z, x_776.z, x_776.z)) + x_779);
      let x_781 : vec4<f32> = u_xlat8;
      let x_782 : i32 = u_xlati37;
      let x_785 : i32 = u_xlati37;
      let x_789 : vec4<f32> = x_238.x_AdditionalLightsWorldToShadow[((x_782 + 3i) / 4i)][((x_785 + 3i) % 4i)];
      u_xlat8 = (x_781 + x_789);
      let x_791 : vec4<f32> = u_xlat8;
      let x_793 : vec4<f32> = u_xlat8;
      let x_795 : vec3<f32> = (vec3<f32>(x_791.x, x_791.y, x_791.z) / vec3<f32>(x_793.w, x_793.w, x_793.w));
      let x_796 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
      let x_799 : vec4<f32> = u_xlat8;
      let x_800 : vec2<f32> = vec2<f32>(x_799.x, x_799.y);
      let x_802 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_800.x, x_800.y, x_802);
      let x_810 : vec3<f32> = txVec1;
      let x_812 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_810.xy, x_810.z);
      u_xlat37 = x_812;
      let x_813 : i32 = u_xlati35;
      let x_815 : f32 = x_238.x_AdditionalShadowParams[x_813].x;
      u_xlat27.x = (1.0f + -(x_815));
      let x_819 : f32 = u_xlat37;
      let x_820 : i32 = u_xlati35;
      let x_822 : f32 = x_238.x_AdditionalShadowParams[x_820].x;
      let x_825 : f32 = u_xlat27.x;
      u_xlat37 = ((x_819 * x_822) + x_825);
      let x_828 : f32 = u_xlat8.z;
      u_xlatb27 = (0.0f >= x_828);
      let x_832 : f32 = u_xlat8.z;
      u_xlatb38 = (x_832 >= 1.0f);
      let x_834 : bool = u_xlatb38;
      let x_835 : bool = u_xlatb27;
      u_xlatb27 = (x_834 | x_835);
      let x_837 : bool = u_xlatb27;
      let x_838 : f32 = u_xlat37;
      u_xlat37 = select(x_838, 1.0f, x_837);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_841 : f32 = u_xlat37;
    u_xlat27.x = (-(x_841) + 1.0f);
    let x_845 : f32 = u_xlat33;
    let x_847 : f32 = u_xlat27.x;
    let x_849 : f32 = u_xlat37;
    u_xlat37 = ((x_845 * x_847) + x_849);
    let x_852 : i32 = u_xlati35;
    u_xlati27 = (1i << bitcast<u32>((x_852 & 31i)));
    let x_856 : i32 = u_xlati27;
    let x_859 : f32 = x_315.x_AdditionalLightsCookieEnableBits;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_856) & bitcast<u32>(x_859)));
    let x_863 : i32 = u_xlati27;
    if ((x_863 != 0i)) {
      let x_867 : i32 = u_xlati35;
      let x_869 : f32 = x_315.x_AdditionalLightsLightTypes[x_867].el;
      u_xlati27 = i32(x_869);
      let x_872 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_872 != 0i));
      let x_876 : i32 = u_xlati35;
      u_xlati39 = (x_876 << bitcast<u32>(2i));
      let x_878 : i32 = u_xlati38;
      if ((x_878 != 0i)) {
        let x_882 : vec4<f32> = vs_TEXCOORD2;
        let x_884 : i32 = u_xlati39;
        let x_887 : i32 = u_xlati39;
        let x_891 : vec4<f32> = x_315.x_AdditionalLightsWorldToLights[((x_884 + 1i) / 4i)][((x_887 + 1i) % 4i)];
        let x_893 : vec3<f32> = (vec3<f32>(x_882.y, x_882.y, x_882.y) * vec3<f32>(x_891.x, x_891.y, x_891.w));
        let x_894 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
        let x_896 : i32 = u_xlati39;
        let x_898 : i32 = u_xlati39;
        let x_901 : vec4<f32> = x_315.x_AdditionalLightsWorldToLights[(x_896 / 4i)][(x_898 % 4i)];
        let x_903 : vec4<f32> = vs_TEXCOORD2;
        let x_906 : vec4<f32> = u_xlat8;
        let x_908 : vec3<f32> = ((vec3<f32>(x_901.x, x_901.y, x_901.w) * vec3<f32>(x_903.x, x_903.x, x_903.x)) + vec3<f32>(x_906.x, x_906.y, x_906.z));
        let x_909 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
        let x_911 : i32 = u_xlati39;
        let x_914 : i32 = u_xlati39;
        let x_918 : vec4<f32> = x_315.x_AdditionalLightsWorldToLights[((x_911 + 2i) / 4i)][((x_914 + 2i) % 4i)];
        let x_920 : vec4<f32> = vs_TEXCOORD2;
        let x_923 : vec4<f32> = u_xlat8;
        let x_925 : vec3<f32> = ((vec3<f32>(x_918.x, x_918.y, x_918.w) * vec3<f32>(x_920.z, x_920.z, x_920.z)) + vec3<f32>(x_923.x, x_923.y, x_923.z));
        let x_926 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
        let x_928 : vec4<f32> = u_xlat8;
        let x_930 : i32 = u_xlati39;
        let x_933 : i32 = u_xlati39;
        let x_937 : vec4<f32> = x_315.x_AdditionalLightsWorldToLights[((x_930 + 3i) / 4i)][((x_933 + 3i) % 4i)];
        let x_939 : vec3<f32> = (vec3<f32>(x_928.x, x_928.y, x_928.z) + vec3<f32>(x_937.x, x_937.y, x_937.w));
        let x_940 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
        let x_942 : vec4<f32> = u_xlat8;
        let x_944 : vec4<f32> = u_xlat8;
        let x_946 : vec2<f32> = (vec2<f32>(x_942.x, x_942.y) / vec2<f32>(x_944.z, x_944.z));
        let x_947 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_946.x, x_946.y, x_947.z, x_947.w);
        let x_949 : vec4<f32> = u_xlat8;
        let x_952 : vec2<f32> = ((vec2<f32>(x_949.x, x_949.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_953 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_955 : vec4<f32> = u_xlat8;
        let x_959 : vec2<f32> = clamp(vec2<f32>(x_955.x, x_955.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_960 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_962 : i32 = u_xlati35;
        let x_964 : vec4<f32> = x_315.x_AdditionalLightsCookieAtlasUVRects[x_962];
        let x_966 : vec4<f32> = u_xlat8;
        let x_969 : i32 = u_xlati35;
        let x_971 : vec4<f32> = x_315.x_AdditionalLightsCookieAtlasUVRects[x_969];
        let x_973 : vec2<f32> = ((vec2<f32>(x_964.x, x_964.y) * vec2<f32>(x_966.x, x_966.y)) + vec2<f32>(x_971.z, x_971.w));
        let x_974 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
      } else {
        let x_977 : i32 = u_xlati27;
        u_xlatb27 = (x_977 == 1i);
        let x_979 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_979);
        let x_981 : i32 = u_xlati27;
        if ((x_981 != 0i)) {
          let x_985 : vec4<f32> = vs_TEXCOORD2;
          let x_987 : i32 = u_xlati39;
          let x_990 : i32 = u_xlati39;
          let x_994 : vec4<f32> = x_315.x_AdditionalLightsWorldToLights[((x_987 + 1i) / 4i)][((x_990 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_985.y, x_985.y) * vec2<f32>(x_994.x, x_994.y));
          let x_997 : i32 = u_xlati39;
          let x_999 : i32 = u_xlati39;
          let x_1002 : vec4<f32> = x_315.x_AdditionalLightsWorldToLights[(x_997 / 4i)][(x_999 % 4i)];
          let x_1004 : vec4<f32> = vs_TEXCOORD2;
          let x_1007 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1002.x, x_1002.y) * vec2<f32>(x_1004.x, x_1004.x)) + x_1007);
          let x_1009 : i32 = u_xlati39;
          let x_1012 : i32 = u_xlati39;
          let x_1016 : vec4<f32> = x_315.x_AdditionalLightsWorldToLights[((x_1009 + 2i) / 4i)][((x_1012 + 2i) % 4i)];
          let x_1018 : vec4<f32> = vs_TEXCOORD2;
          let x_1021 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1016.x, x_1016.y) * vec2<f32>(x_1018.z, x_1018.z)) + x_1021);
          let x_1023 : vec2<f32> = u_xlat27;
          let x_1024 : i32 = u_xlati39;
          let x_1027 : i32 = u_xlati39;
          let x_1031 : vec4<f32> = x_315.x_AdditionalLightsWorldToLights[((x_1024 + 3i) / 4i)][((x_1027 + 3i) % 4i)];
          u_xlat27 = (x_1023 + vec2<f32>(x_1031.x, x_1031.y));
          let x_1034 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1034 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1037 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_1037);
          let x_1039 : i32 = u_xlati35;
          let x_1041 : vec4<f32> = x_315.x_AdditionalLightsCookieAtlasUVRects[x_1039];
          let x_1043 : vec2<f32> = u_xlat27;
          let x_1045 : i32 = u_xlati35;
          let x_1047 : vec4<f32> = x_315.x_AdditionalLightsCookieAtlasUVRects[x_1045];
          let x_1049 : vec2<f32> = ((vec2<f32>(x_1041.x, x_1041.y) * x_1043) + vec2<f32>(x_1047.z, x_1047.w));
          let x_1050 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
        } else {
          let x_1054 : vec4<f32> = vs_TEXCOORD2;
          let x_1056 : i32 = u_xlati39;
          let x_1059 : i32 = u_xlati39;
          let x_1063 : vec4<f32> = x_315.x_AdditionalLightsWorldToLights[((x_1056 + 1i) / 4i)][((x_1059 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1054.y, x_1054.y, x_1054.y, x_1054.y) * x_1063);
          let x_1065 : i32 = u_xlati39;
          let x_1067 : i32 = u_xlati39;
          let x_1070 : vec4<f32> = x_315.x_AdditionalLightsWorldToLights[(x_1065 / 4i)][(x_1067 % 4i)];
          let x_1071 : vec4<f32> = vs_TEXCOORD2;
          let x_1074 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1070 * vec4<f32>(x_1071.x, x_1071.x, x_1071.x, x_1071.x)) + x_1074);
          let x_1076 : i32 = u_xlati39;
          let x_1079 : i32 = u_xlati39;
          let x_1083 : vec4<f32> = x_315.x_AdditionalLightsWorldToLights[((x_1076 + 2i) / 4i)][((x_1079 + 2i) % 4i)];
          let x_1084 : vec4<f32> = vs_TEXCOORD2;
          let x_1087 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1083 * vec4<f32>(x_1084.z, x_1084.z, x_1084.z, x_1084.z)) + x_1087);
          let x_1089 : vec4<f32> = u_xlat9;
          let x_1090 : i32 = u_xlati39;
          let x_1093 : i32 = u_xlati39;
          let x_1097 : vec4<f32> = x_315.x_AdditionalLightsWorldToLights[((x_1090 + 3i) / 4i)][((x_1093 + 3i) % 4i)];
          u_xlat9 = (x_1089 + x_1097);
          let x_1099 : vec4<f32> = u_xlat9;
          let x_1101 : vec4<f32> = u_xlat9;
          let x_1103 : vec3<f32> = (vec3<f32>(x_1099.x, x_1099.y, x_1099.z) / vec3<f32>(x_1101.w, x_1101.w, x_1101.w));
          let x_1104 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
          let x_1106 : vec4<f32> = u_xlat9;
          let x_1108 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1106.x, x_1106.y, x_1106.z), vec3<f32>(x_1108.x, x_1108.y, x_1108.z));
          let x_1113 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1113);
          let x_1116 : vec2<f32> = u_xlat27;
          let x_1118 : vec4<f32> = u_xlat9;
          let x_1120 : vec3<f32> = (vec3<f32>(x_1116.x, x_1116.x, x_1116.x) * vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
          let x_1121 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
          let x_1123 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1123.x, x_1123.y, x_1123.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1130 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1130, 0.00000099999999747524f);
          let x_1135 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1135);
          let x_1139 : vec2<f32> = u_xlat27;
          let x_1141 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1139.x, x_1139.x, x_1139.x) * vec3<f32>(x_1141.z, x_1141.x, x_1141.y));
          let x_1145 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1145);
          let x_1149 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1149, 0.0f, 1.0f);
          let x_1153 : vec3<f32> = u_xlat10;
          let x_1155 : vec4<bool> = (vec4<f32>(x_1153.y, x_1153.z, x_1153.y, x_1153.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1155.x, x_1155.y);
          let x_1159 : bool = u_xlatb30.x;
          if (x_1159) {
            let x_1164 : f32 = u_xlat10.x;
            x_1160 = x_1164;
          } else {
            let x_1167 : f32 = u_xlat10.x;
            x_1160 = -(x_1167);
          }
          let x_1169 : f32 = x_1160;
          u_xlat30.x = x_1169;
          let x_1172 : bool = u_xlatb30.y;
          if (x_1172) {
            let x_1177 : f32 = u_xlat10.x;
            x_1173 = x_1177;
          } else {
            let x_1180 : f32 = u_xlat10.x;
            x_1173 = -(x_1180);
          }
          let x_1182 : f32 = x_1173;
          u_xlat30.y = x_1182;
          let x_1184 : vec4<f32> = u_xlat9;
          let x_1186 : vec2<f32> = u_xlat27;
          let x_1189 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1184.x, x_1184.y) * vec2<f32>(x_1186.x, x_1186.x)) + x_1189);
          let x_1191 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1191 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1194 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1194, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1198 : i32 = u_xlati35;
          let x_1200 : vec4<f32> = x_315.x_AdditionalLightsCookieAtlasUVRects[x_1198];
          let x_1202 : vec2<f32> = u_xlat27;
          let x_1204 : i32 = u_xlati35;
          let x_1206 : vec4<f32> = x_315.x_AdditionalLightsCookieAtlasUVRects[x_1204];
          let x_1208 : vec2<f32> = ((vec2<f32>(x_1200.x, x_1200.y) * x_1202) + vec2<f32>(x_1206.z, x_1206.w));
          let x_1209 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        }
      }
      let x_1216 : vec4<f32> = u_xlat8;
      let x_1218 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1216.x, x_1216.y), 0.0f);
      u_xlat8 = x_1218;
      let x_1220 : bool = u_xlatb5.y;
      if (x_1220) {
        let x_1225 : f32 = u_xlat8.w;
        x_1221 = x_1225;
      } else {
        let x_1228 : f32 = u_xlat8.x;
        x_1221 = x_1228;
      }
      let x_1229 : f32 = x_1221;
      u_xlat27.x = x_1229;
      let x_1232 : bool = u_xlatb5.x;
      if (x_1232) {
        let x_1236 : vec4<f32> = u_xlat8;
        x_1233 = vec3<f32>(x_1236.x, x_1236.y, x_1236.z);
      } else {
        let x_1239 : vec2<f32> = u_xlat27;
        x_1233 = vec3<f32>(x_1239.x, x_1239.x, x_1239.x);
      }
      let x_1241 : vec3<f32> = x_1233;
      let x_1242 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1248 : vec4<f32> = u_xlat8;
    let x_1250 : i32 = u_xlati35;
    let x_1252 : vec4<f32> = x_577.x_AdditionalLightsColor[x_1250];
    let x_1254 : vec3<f32> = (vec3<f32>(x_1248.x, x_1248.y, x_1248.z) * vec3<f32>(x_1252.x, x_1252.y, x_1252.z));
    let x_1255 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
    let x_1257 : f32 = u_xlat36;
    let x_1258 : f32 = u_xlat37;
    u_xlat35 = (x_1257 * x_1258);
    let x_1260 : f32 = u_xlat35;
    let x_1262 : vec4<f32> = u_xlat8;
    let x_1264 : vec3<f32> = (vec3<f32>(x_1260, x_1260, x_1260) * vec3<f32>(x_1262.x, x_1262.y, x_1262.z));
    let x_1265 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
    let x_1267 : vec3<f32> = u_xlat2;
    let x_1268 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1267, x_1268);
    let x_1270 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1270, 0.0f, 1.0f);
    let x_1272 : f32 = u_xlat35;
    let x_1274 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1272, x_1272, x_1272) * vec3<f32>(x_1274.x, x_1274.y, x_1274.z));
    let x_1277 : vec3<f32> = u_xlat7;
    let x_1278 : vec4<f32> = u_xlat1;
    let x_1281 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1277 * vec3<f32>(x_1278.x, x_1278.y, x_1278.z)) + x_1281);

    continuing {
      let x_1283 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1283 + bitcast<u32>(1i));
    }
  }
  let x_1285 : vec4<f32> = u_xlat3;
  let x_1287 : vec4<f32> = u_xlat1;
  let x_1290 : vec4<f32> = u_xlat4;
  let x_1292 : vec3<f32> = ((vec3<f32>(x_1285.x, x_1285.y, x_1285.z) * vec3<f32>(x_1287.x, x_1287.y, x_1287.z)) + vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
  let x_1293 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1292.x, x_1292.y, x_1292.z, x_1293.w);
  let x_1297 : vec3<f32> = u_xlat6;
  let x_1298 : vec4<f32> = u_xlat1;
  let x_1300 : vec3<f32> = (x_1297 + vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
  let x_1301 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1301.w);
  let x_1303 : bool = u_xlatb22;
  let x_1304 : f32 = u_xlat11;
  SV_Target0.w = select(1.0f, x_1304, x_1303);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


