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

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat34 : f32;

@group(1) @binding(4) var<uniform> x_282 : LightShadows;

var<private> u_xlatb34 : bool;

var<private> u_xlatb35 : bool;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

@group(1) @binding(5) var<uniform> x_348 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

@group(1) @binding(2) var<uniform> x_475 : UnityPerDraw;

var<private> u_xlatu33 : u32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlati37 : i32;

var<private> u_xlati36 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_601 : AdditionalLights;

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
  var x_437 : f32;
  var x_448 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_735 : f32;
  var x_745 : f32;
  var txVec1 : vec3<f32>;
  var x_1168 : f32;
  var x_1181 : f32;
  var x_1229 : f32;
  var x_1240 : vec3<f32>;
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
  let x_163 : f32 = hlslcc_FragCoord.w;
  let x_166 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_163 * x_166);
  let x_170 : f32 = u_xlat0.x;
  let x_174 : f32 = x_44.x_ProjectionParams.y;
  u_xlat0.x = (x_170 / x_174);
  let x_178 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_178) + 1.0f);
  let x_183 : f32 = u_xlat0.x;
  let x_185 : f32 = x_44.x_ProjectionParams.z;
  u_xlat0.x = (x_183 * x_185);
  let x_189 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_189, 0.0f);
  let x_193 : f32 = u_xlat0.x;
  let x_196 : f32 = x_44.unity_FogParams.x;
  u_xlat0.x = (x_193 * x_196);
  let x_206 : vec2<f32> = vs_TEXCOORD1;
  let x_208 : f32 = x_44.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_206, x_208);
  u_xlat3 = x_209;
  let x_215 : vec2<f32> = vs_TEXCOORD1;
  let x_217 : f32 = x_44.x_GlobalMipBias.x;
  let x_218 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_215, x_217);
  let x_219 : vec3<f32> = vec3<f32>(x_218.x, x_218.y, x_218.z);
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec4<f32> = u_xlat3;
  let x_226 : vec3<f32> = (vec3<f32>(x_222.x, x_222.y, x_222.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_227 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec3<f32> = u_xlat2;
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(x_229, vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : f32 = u_xlat33;
  u_xlat33 = (x_233 + 0.5f);
  let x_235 : f32 = u_xlat33;
  let x_237 : vec4<f32> = u_xlat4;
  let x_239 : vec3<f32> = (vec3<f32>(x_235, x_235, x_235) * vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_243 : f32 = u_xlat3.w;
  u_xlat33 = max(x_243, 0.00009999999747378752f);
  let x_245 : vec4<f32> = u_xlat3;
  let x_247 : f32 = u_xlat33;
  let x_249 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) / vec3<f32>(x_247, x_247, x_247));
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_255 : vec4<f32> = vs_TEXCOORD6;
  let x_256 : vec2<f32> = vec2<f32>(x_255.x, x_255.y);
  let x_258 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_256.x, x_256.y, x_258);
  let x_270 : vec3<f32> = txVec0;
  let x_272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_270.xy, x_270.z);
  u_xlat33 = x_272;
  let x_285 : f32 = x_282.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_285) + 1.0f);
  let x_288 : f32 = u_xlat33;
  let x_290 : f32 = x_282.x_MainLightShadowParams.x;
  let x_292 : f32 = u_xlat34;
  u_xlat33 = ((x_288 * x_290) + x_292);
  let x_296 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (0.0f >= x_296);
  let x_300 : f32 = vs_TEXCOORD6.z;
  u_xlatb35 = (x_300 >= 1.0f);
  let x_302 : bool = u_xlatb34;
  let x_303 : bool = u_xlatb35;
  u_xlatb34 = (x_302 | x_303);
  let x_305 : bool = u_xlatb34;
  let x_306 : f32 = u_xlat33;
  u_xlat33 = select(x_306, 1.0f, x_305);
  let x_309 : vec4<f32> = vs_TEXCOORD2;
  let x_314 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_316 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.z) + -(x_314));
  let x_317 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat4;
  let x_321 : vec4<f32> = u_xlat4;
  u_xlat34 = dot(vec3<f32>(x_319.x, x_319.y, x_319.z), vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_325 : f32 = u_xlat34;
  let x_327 : f32 = x_282.x_MainLightShadowParams.z;
  let x_330 : f32 = x_282.x_MainLightShadowParams.w;
  u_xlat35 = ((x_325 * x_327) + x_330);
  let x_332 : f32 = u_xlat35;
  u_xlat35 = clamp(x_332, 0.0f, 1.0f);
  let x_335 : f32 = u_xlat33;
  u_xlat36 = (-(x_335) + 1.0f);
  let x_338 : f32 = u_xlat35;
  let x_339 : f32 = u_xlat36;
  let x_341 : f32 = u_xlat33;
  u_xlat33 = ((x_338 * x_339) + x_341);
  let x_351 : f32 = x_348.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_351 == -1.0f));
  let x_354 : bool = u_xlatb35;
  if (x_354) {
    let x_357 : vec4<f32> = vs_TEXCOORD2;
    let x_361 : vec4<f32> = x_348.x_MainLightWorldToLight[1i];
    let x_363 : vec2<f32> = (vec2<f32>(x_357.y, x_357.y) * vec2<f32>(x_361.x, x_361.y));
    let x_364 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_363.x, x_363.y, x_364.z, x_364.w);
    let x_367 : vec4<f32> = x_348.x_MainLightWorldToLight[0i];
    let x_369 : vec4<f32> = vs_TEXCOORD2;
    let x_372 : vec4<f32> = u_xlat4;
    let x_374 : vec2<f32> = ((vec2<f32>(x_367.x, x_367.y) * vec2<f32>(x_369.x, x_369.x)) + vec2<f32>(x_372.x, x_372.y));
    let x_375 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
    let x_378 : vec4<f32> = x_348.x_MainLightWorldToLight[2i];
    let x_380 : vec4<f32> = vs_TEXCOORD2;
    let x_383 : vec4<f32> = u_xlat4;
    let x_385 : vec2<f32> = ((vec2<f32>(x_378.x, x_378.y) * vec2<f32>(x_380.z, x_380.z)) + vec2<f32>(x_383.x, x_383.y));
    let x_386 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_385.x, x_385.y, x_386.z, x_386.w);
    let x_388 : vec4<f32> = u_xlat4;
    let x_392 : vec4<f32> = x_348.x_MainLightWorldToLight[3i];
    let x_394 : vec2<f32> = (vec2<f32>(x_388.x, x_388.y) + vec2<f32>(x_392.x, x_392.y));
    let x_395 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_395.z, x_395.w);
    let x_397 : vec4<f32> = u_xlat4;
    let x_401 : vec2<f32> = ((vec2<f32>(x_397.x, x_397.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_402 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
    let x_409 : vec4<f32> = u_xlat4;
    let x_412 : f32 = x_44.x_GlobalMipBias.x;
    let x_413 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_409.x, x_409.y), x_412);
    u_xlat4 = x_413;
    let x_418 : f32 = x_348.x_MainLightCookieTextureFormat;
    let x_420 : f32 = x_348.x_MainLightCookieTextureFormat;
    let x_422 : f32 = x_348.x_MainLightCookieTextureFormat;
    let x_424 : f32 = x_348.x_MainLightCookieTextureFormat;
    let x_425 : vec4<f32> = vec4<f32>(x_418, x_420, x_422, x_424);
    let x_433 : vec4<bool> = (vec4<f32>(x_425.x, x_425.y, x_425.z, x_425.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_433.x, x_433.y);
    let x_436 : bool = u_xlatb5.y;
    if (x_436) {
      let x_441 : f32 = u_xlat4.w;
      x_437 = x_441;
    } else {
      let x_444 : f32 = u_xlat4.x;
      x_437 = x_444;
    }
    let x_445 : f32 = x_437;
    u_xlat35 = x_445;
    let x_447 : bool = u_xlatb5.x;
    if (x_447) {
      let x_451 : vec4<f32> = u_xlat4;
      x_448 = vec3<f32>(x_451.x, x_451.y, x_451.z);
    } else {
      let x_454 : f32 = u_xlat35;
      x_448 = vec3<f32>(x_454, x_454, x_454);
    }
    let x_456 : vec3<f32> = x_448;
    let x_457 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_463 : vec4<f32> = u_xlat4;
  let x_466 : vec4<f32> = x_44.x_MainLightColor;
  let x_468 : vec3<f32> = (vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : f32 = u_xlat33;
  let x_477 : f32 = x_475.unity_LightData.z;
  u_xlat33 = (x_471 * x_477);
  let x_479 : f32 = u_xlat33;
  let x_481 : vec4<f32> = u_xlat4;
  let x_483 : vec3<f32> = (vec3<f32>(x_479, x_479, x_479) * vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec3<f32> = u_xlat2;
  let x_488 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat33 = dot(x_486, vec3<f32>(x_488.x, x_488.y, x_488.z));
  let x_491 : f32 = u_xlat33;
  u_xlat33 = clamp(x_491, 0.0f, 1.0f);
  let x_493 : f32 = u_xlat33;
  let x_495 : vec4<f32> = u_xlat4;
  let x_497 : vec3<f32> = (vec3<f32>(x_493, x_493, x_493) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat1;
  let x_502 : vec4<f32> = u_xlat4;
  let x_504 : vec3<f32> = (vec3<f32>(x_500.x, x_500.y, x_500.z) * vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_508 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_510 : f32 = x_475.unity_LightData.y;
  u_xlat33 = min(x_508, x_510);
  let x_514 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_514));
  let x_517 : f32 = u_xlat34;
  let x_520 : f32 = x_282.x_AdditionalShadowFadeParams.x;
  let x_523 : f32 = x_282.x_AdditionalShadowFadeParams.y;
  u_xlat34 = ((x_517 * x_520) + x_523);
  let x_525 : f32 = u_xlat34;
  u_xlat34 = clamp(x_525, 0.0f, 1.0f);
  let x_528 : f32 = x_348.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_530 : f32 = x_348.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_532 : f32 = x_348.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_534 : f32 = x_348.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_535 : vec4<f32> = vec4<f32>(x_528, x_530, x_532, x_534);
  let x_541 : vec4<bool> = (vec4<f32>(x_535.x, x_535.y, x_535.z, x_535.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_541.x, x_541.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_554 : u32 = u_xlatu_loop_1;
    let x_555 : u32 = u_xlatu33;
    if ((x_554 < x_555)) {
    } else {
      break;
    }
    let x_558 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_558 >> 2u);
    let x_562 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_562 & 3u));
    let x_565 : u32 = u_xlatu36;
    let x_568 : vec4<f32> = x_475.unity_LightIndices[bitcast<i32>(x_565)];
    let x_578 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_583 : vec4<u32> = indexable[x_578];
    u_xlat36 = dot(x_568, bitcast<vec4<f32>>(x_583));
    let x_587 : f32 = u_xlat36;
    u_xlati36 = i32(x_587);
    let x_590 : vec4<f32> = vs_TEXCOORD2;
    let x_602 : i32 = u_xlati36;
    let x_604 : vec4<f32> = x_601.x_AdditionalLightsPosition[x_602];
    let x_607 : i32 = u_xlati36;
    let x_609 : vec4<f32> = x_601.x_AdditionalLightsPosition[x_607];
    u_xlat7 = ((-(vec3<f32>(x_590.x, x_590.y, x_590.z)) * vec3<f32>(x_604.w, x_604.w, x_604.w)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
    let x_613 : vec3<f32> = u_xlat7;
    let x_614 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_613, x_614);
    let x_616 : f32 = u_xlat37;
    u_xlat37 = max(x_616, 0.00006103515625f);
    let x_620 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_620);
    let x_622 : f32 = u_xlat27;
    let x_624 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_622, x_622, x_622) * x_624);
    let x_626 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_626);
    let x_628 : f32 = u_xlat37;
    let x_629 : i32 = u_xlati36;
    let x_631 : f32 = x_601.x_AdditionalLightsAttenuation[x_629].x;
    u_xlat37 = (x_628 * x_631);
    let x_633 : f32 = u_xlat37;
    let x_635 : f32 = u_xlat37;
    u_xlat37 = ((-(x_633) * x_635) + 1.0f);
    let x_638 : f32 = u_xlat37;
    u_xlat37 = max(x_638, 0.0f);
    let x_640 : f32 = u_xlat37;
    let x_641 : f32 = u_xlat37;
    u_xlat37 = (x_640 * x_641);
    let x_643 : f32 = u_xlat37;
    let x_644 : f32 = u_xlat27;
    u_xlat37 = (x_643 * x_644);
    let x_646 : i32 = u_xlati36;
    let x_648 : vec4<f32> = x_601.x_AdditionalLightsSpotDir[x_646];
    let x_650 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_648.x, x_648.y, x_648.z), x_650);
    let x_652 : f32 = u_xlat27;
    let x_653 : i32 = u_xlati36;
    let x_655 : f32 = x_601.x_AdditionalLightsAttenuation[x_653].z;
    let x_657 : i32 = u_xlati36;
    let x_659 : f32 = x_601.x_AdditionalLightsAttenuation[x_657].w;
    u_xlat27 = ((x_652 * x_655) + x_659);
    let x_661 : f32 = u_xlat27;
    u_xlat27 = clamp(x_661, 0.0f, 1.0f);
    let x_663 : f32 = u_xlat27;
    let x_664 : f32 = u_xlat27;
    u_xlat27 = (x_663 * x_664);
    let x_666 : f32 = u_xlat37;
    let x_667 : f32 = u_xlat27;
    u_xlat37 = (x_666 * x_667);
    let x_671 : i32 = u_xlati36;
    let x_673 : f32 = x_282.x_AdditionalShadowParams[x_671].w;
    u_xlati27 = i32(x_673);
    let x_676 : i32 = u_xlati27;
    u_xlatb38 = (x_676 >= 0i);
    let x_678 : bool = u_xlatb38;
    if (x_678) {
      let x_682 : i32 = u_xlati36;
      let x_684 : f32 = x_282.x_AdditionalShadowParams[x_682].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_684, x_684, x_684, x_684))));
      let x_688 : bool = u_xlatb38;
      if (x_688) {
        let x_693 : vec3<f32> = u_xlat7;
        let x_696 : vec3<f32> = u_xlat7;
        let x_699 : vec4<bool> = (abs(vec4<f32>(x_693.z, x_693.z, x_693.y, x_693.z)) >= abs(vec4<f32>(x_696.x, x_696.y, x_696.x, x_696.x)));
        let x_701 : vec3<bool> = vec3<bool>(x_699.x, x_699.y, x_699.z);
        let x_702 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_701.x, x_701.y, x_701.z, x_702.w);
        let x_705 : bool = u_xlatb8.y;
        let x_707 : bool = u_xlatb8.x;
        u_xlatb38 = (x_705 & x_707);
        let x_709 : vec3<f32> = u_xlat7;
        let x_712 : vec4<bool> = (-(vec4<f32>(x_709.z, x_709.y, x_709.z, x_709.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_713 : vec3<bool> = vec3<bool>(x_712.x, x_712.y, x_712.w);
        let x_714 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_713.x, x_713.y, x_714.z, x_713.z);
        let x_718 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_718);
        let x_724 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_724);
        let x_731 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_731);
        let x_734 : bool = u_xlatb8.z;
        if (x_734) {
          let x_739 : f32 = u_xlat8.y;
          x_735 = x_739;
        } else {
          let x_741 : f32 = u_xlat39;
          x_735 = x_741;
        }
        let x_742 : f32 = x_735;
        u_xlat39 = x_742;
        let x_744 : bool = u_xlatb38;
        if (x_744) {
          let x_749 : f32 = u_xlat8.x;
          x_745 = x_749;
        } else {
          let x_751 : f32 = u_xlat39;
          x_745 = x_751;
        }
        let x_752 : f32 = x_745;
        u_xlat38 = x_752;
        let x_753 : i32 = u_xlati36;
        let x_755 : f32 = x_282.x_AdditionalShadowParams[x_753].w;
        u_xlat39 = trunc(x_755);
        let x_757 : f32 = u_xlat38;
        let x_758 : f32 = u_xlat39;
        u_xlat38 = (x_757 + x_758);
        let x_760 : f32 = u_xlat38;
        u_xlati27 = i32(x_760);
      }
      let x_762 : i32 = u_xlati27;
      u_xlati27 = (x_762 << bitcast<u32>(2i));
      let x_764 : vec4<f32> = vs_TEXCOORD2;
      let x_767 : i32 = u_xlati27;
      let x_770 : i32 = u_xlati27;
      let x_774 : vec4<f32> = x_282.x_AdditionalLightsWorldToShadow[((x_767 + 1i) / 4i)][((x_770 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_764.y, x_764.y, x_764.y, x_764.y) * x_774);
      let x_776 : i32 = u_xlati27;
      let x_778 : i32 = u_xlati27;
      let x_781 : vec4<f32> = x_282.x_AdditionalLightsWorldToShadow[(x_776 / 4i)][(x_778 % 4i)];
      let x_782 : vec4<f32> = vs_TEXCOORD2;
      let x_785 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_781 * vec4<f32>(x_782.x, x_782.x, x_782.x, x_782.x)) + x_785);
      let x_787 : i32 = u_xlati27;
      let x_790 : i32 = u_xlati27;
      let x_794 : vec4<f32> = x_282.x_AdditionalLightsWorldToShadow[((x_787 + 2i) / 4i)][((x_790 + 2i) % 4i)];
      let x_795 : vec4<f32> = vs_TEXCOORD2;
      let x_798 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_794 * vec4<f32>(x_795.z, x_795.z, x_795.z, x_795.z)) + x_798);
      let x_800 : vec4<f32> = u_xlat8;
      let x_801 : i32 = u_xlati27;
      let x_804 : i32 = u_xlati27;
      let x_808 : vec4<f32> = x_282.x_AdditionalLightsWorldToShadow[((x_801 + 3i) / 4i)][((x_804 + 3i) % 4i)];
      u_xlat8 = (x_800 + x_808);
      let x_810 : vec4<f32> = u_xlat8;
      let x_812 : vec4<f32> = u_xlat8;
      let x_814 : vec3<f32> = (vec3<f32>(x_810.x, x_810.y, x_810.z) / vec3<f32>(x_812.w, x_812.w, x_812.w));
      let x_815 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
      let x_818 : vec4<f32> = u_xlat8;
      let x_819 : vec2<f32> = vec2<f32>(x_818.x, x_818.y);
      let x_821 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_819.x, x_819.y, x_821);
      let x_829 : vec3<f32> = txVec1;
      let x_831 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_829.xy, x_829.z);
      u_xlat27 = x_831;
      let x_832 : i32 = u_xlati36;
      let x_834 : f32 = x_282.x_AdditionalShadowParams[x_832].x;
      u_xlat38 = (1.0f + -(x_834));
      let x_837 : f32 = u_xlat27;
      let x_838 : i32 = u_xlati36;
      let x_840 : f32 = x_282.x_AdditionalShadowParams[x_838].x;
      let x_842 : f32 = u_xlat38;
      u_xlat27 = ((x_837 * x_840) + x_842);
      let x_845 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_845);
      let x_849 : f32 = u_xlat8.z;
      u_xlatb39 = (x_849 >= 1.0f);
      let x_851 : bool = u_xlatb38;
      let x_852 : bool = u_xlatb39;
      u_xlatb38 = (x_851 | x_852);
      let x_854 : bool = u_xlatb38;
      let x_855 : f32 = u_xlat27;
      u_xlat27 = select(x_855, 1.0f, x_854);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_858 : f32 = u_xlat27;
    u_xlat38 = (-(x_858) + 1.0f);
    let x_861 : f32 = u_xlat34;
    let x_862 : f32 = u_xlat38;
    let x_864 : f32 = u_xlat27;
    u_xlat27 = ((x_861 * x_862) + x_864);
    let x_867 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_867 & 31i)));
    let x_871 : i32 = u_xlati38;
    let x_874 : f32 = x_348.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_871) & bitcast<u32>(x_874)));
    let x_878 : i32 = u_xlati38;
    if ((x_878 != 0i)) {
      let x_882 : i32 = u_xlati36;
      let x_884 : f32 = x_348.x_AdditionalLightsLightTypes[x_882].el;
      u_xlati38 = i32(x_884);
      let x_887 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_887 != 0i));
      let x_891 : i32 = u_xlati36;
      u_xlati40 = (x_891 << bitcast<u32>(2i));
      let x_893 : i32 = u_xlati39;
      if ((x_893 != 0i)) {
        let x_897 : vec4<f32> = vs_TEXCOORD2;
        let x_899 : i32 = u_xlati40;
        let x_902 : i32 = u_xlati40;
        let x_906 : vec4<f32> = x_348.x_AdditionalLightsWorldToLights[((x_899 + 1i) / 4i)][((x_902 + 1i) % 4i)];
        let x_908 : vec3<f32> = (vec3<f32>(x_897.y, x_897.y, x_897.y) * vec3<f32>(x_906.x, x_906.y, x_906.w));
        let x_909 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
        let x_911 : i32 = u_xlati40;
        let x_913 : i32 = u_xlati40;
        let x_916 : vec4<f32> = x_348.x_AdditionalLightsWorldToLights[(x_911 / 4i)][(x_913 % 4i)];
        let x_918 : vec4<f32> = vs_TEXCOORD2;
        let x_921 : vec4<f32> = u_xlat8;
        let x_923 : vec3<f32> = ((vec3<f32>(x_916.x, x_916.y, x_916.w) * vec3<f32>(x_918.x, x_918.x, x_918.x)) + vec3<f32>(x_921.x, x_921.y, x_921.z));
        let x_924 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
        let x_926 : i32 = u_xlati40;
        let x_929 : i32 = u_xlati40;
        let x_933 : vec4<f32> = x_348.x_AdditionalLightsWorldToLights[((x_926 + 2i) / 4i)][((x_929 + 2i) % 4i)];
        let x_935 : vec4<f32> = vs_TEXCOORD2;
        let x_938 : vec4<f32> = u_xlat8;
        let x_940 : vec3<f32> = ((vec3<f32>(x_933.x, x_933.y, x_933.w) * vec3<f32>(x_935.z, x_935.z, x_935.z)) + vec3<f32>(x_938.x, x_938.y, x_938.z));
        let x_941 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
        let x_943 : vec4<f32> = u_xlat8;
        let x_945 : i32 = u_xlati40;
        let x_948 : i32 = u_xlati40;
        let x_952 : vec4<f32> = x_348.x_AdditionalLightsWorldToLights[((x_945 + 3i) / 4i)][((x_948 + 3i) % 4i)];
        let x_954 : vec3<f32> = (vec3<f32>(x_943.x, x_943.y, x_943.z) + vec3<f32>(x_952.x, x_952.y, x_952.w));
        let x_955 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
        let x_957 : vec4<f32> = u_xlat8;
        let x_959 : vec4<f32> = u_xlat8;
        let x_961 : vec2<f32> = (vec2<f32>(x_957.x, x_957.y) / vec2<f32>(x_959.z, x_959.z));
        let x_962 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
        let x_964 : vec4<f32> = u_xlat8;
        let x_967 : vec2<f32> = ((vec2<f32>(x_964.x, x_964.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_968 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
        let x_970 : vec4<f32> = u_xlat8;
        let x_974 : vec2<f32> = clamp(vec2<f32>(x_970.x, x_970.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_975 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_974.x, x_974.y, x_975.z, x_975.w);
        let x_977 : i32 = u_xlati36;
        let x_979 : vec4<f32> = x_348.x_AdditionalLightsCookieAtlasUVRects[x_977];
        let x_981 : vec4<f32> = u_xlat8;
        let x_984 : i32 = u_xlati36;
        let x_986 : vec4<f32> = x_348.x_AdditionalLightsCookieAtlasUVRects[x_984];
        let x_988 : vec2<f32> = ((vec2<f32>(x_979.x, x_979.y) * vec2<f32>(x_981.x, x_981.y)) + vec2<f32>(x_986.z, x_986.w));
        let x_989 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_988.x, x_988.y, x_989.z, x_989.w);
      } else {
        let x_992 : i32 = u_xlati38;
        u_xlatb38 = (x_992 == 1i);
        let x_994 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_994);
        let x_996 : i32 = u_xlati38;
        if ((x_996 != 0i)) {
          let x_1002 : vec4<f32> = vs_TEXCOORD2;
          let x_1004 : i32 = u_xlati40;
          let x_1007 : i32 = u_xlati40;
          let x_1011 : vec4<f32> = x_348.x_AdditionalLightsWorldToLights[((x_1004 + 1i) / 4i)][((x_1007 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1002.y, x_1002.y) * vec2<f32>(x_1011.x, x_1011.y));
          let x_1014 : i32 = u_xlati40;
          let x_1016 : i32 = u_xlati40;
          let x_1019 : vec4<f32> = x_348.x_AdditionalLightsWorldToLights[(x_1014 / 4i)][(x_1016 % 4i)];
          let x_1021 : vec4<f32> = vs_TEXCOORD2;
          let x_1024 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1019.x, x_1019.y) * vec2<f32>(x_1021.x, x_1021.x)) + x_1024);
          let x_1026 : i32 = u_xlati40;
          let x_1029 : i32 = u_xlati40;
          let x_1033 : vec4<f32> = x_348.x_AdditionalLightsWorldToLights[((x_1026 + 2i) / 4i)][((x_1029 + 2i) % 4i)];
          let x_1035 : vec4<f32> = vs_TEXCOORD2;
          let x_1038 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1033.x, x_1033.y) * vec2<f32>(x_1035.z, x_1035.z)) + x_1038);
          let x_1040 : vec2<f32> = u_xlat30;
          let x_1041 : i32 = u_xlati40;
          let x_1044 : i32 = u_xlati40;
          let x_1048 : vec4<f32> = x_348.x_AdditionalLightsWorldToLights[((x_1041 + 3i) / 4i)][((x_1044 + 3i) % 4i)];
          u_xlat30 = (x_1040 + vec2<f32>(x_1048.x, x_1048.y));
          let x_1051 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1051 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1054 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1054);
          let x_1056 : i32 = u_xlati36;
          let x_1058 : vec4<f32> = x_348.x_AdditionalLightsCookieAtlasUVRects[x_1056];
          let x_1060 : vec2<f32> = u_xlat30;
          let x_1062 : i32 = u_xlati36;
          let x_1064 : vec4<f32> = x_348.x_AdditionalLightsCookieAtlasUVRects[x_1062];
          let x_1066 : vec2<f32> = ((vec2<f32>(x_1058.x, x_1058.y) * x_1060) + vec2<f32>(x_1064.z, x_1064.w));
          let x_1067 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
        } else {
          let x_1071 : vec4<f32> = vs_TEXCOORD2;
          let x_1073 : i32 = u_xlati40;
          let x_1076 : i32 = u_xlati40;
          let x_1080 : vec4<f32> = x_348.x_AdditionalLightsWorldToLights[((x_1073 + 1i) / 4i)][((x_1076 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1071.y, x_1071.y, x_1071.y, x_1071.y) * x_1080);
          let x_1082 : i32 = u_xlati40;
          let x_1084 : i32 = u_xlati40;
          let x_1087 : vec4<f32> = x_348.x_AdditionalLightsWorldToLights[(x_1082 / 4i)][(x_1084 % 4i)];
          let x_1088 : vec4<f32> = vs_TEXCOORD2;
          let x_1091 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1087 * vec4<f32>(x_1088.x, x_1088.x, x_1088.x, x_1088.x)) + x_1091);
          let x_1093 : i32 = u_xlati40;
          let x_1096 : i32 = u_xlati40;
          let x_1100 : vec4<f32> = x_348.x_AdditionalLightsWorldToLights[((x_1093 + 2i) / 4i)][((x_1096 + 2i) % 4i)];
          let x_1101 : vec4<f32> = vs_TEXCOORD2;
          let x_1104 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1100 * vec4<f32>(x_1101.z, x_1101.z, x_1101.z, x_1101.z)) + x_1104);
          let x_1106 : vec4<f32> = u_xlat9;
          let x_1107 : i32 = u_xlati40;
          let x_1110 : i32 = u_xlati40;
          let x_1114 : vec4<f32> = x_348.x_AdditionalLightsWorldToLights[((x_1107 + 3i) / 4i)][((x_1110 + 3i) % 4i)];
          u_xlat9 = (x_1106 + x_1114);
          let x_1116 : vec4<f32> = u_xlat9;
          let x_1118 : vec4<f32> = u_xlat9;
          let x_1120 : vec3<f32> = (vec3<f32>(x_1116.x, x_1116.y, x_1116.z) / vec3<f32>(x_1118.w, x_1118.w, x_1118.w));
          let x_1121 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
          let x_1123 : vec4<f32> = u_xlat9;
          let x_1125 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1123.x, x_1123.y, x_1123.z), vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
          let x_1128 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1128);
          let x_1130 : f32 = u_xlat38;
          let x_1132 : vec4<f32> = u_xlat9;
          let x_1134 : vec3<f32> = (vec3<f32>(x_1130, x_1130, x_1130) * vec3<f32>(x_1132.x, x_1132.y, x_1132.z));
          let x_1135 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
          let x_1137 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1137.x, x_1137.y, x_1137.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1142 : f32 = u_xlat38;
          u_xlat38 = max(x_1142, 0.00000099999999747524f);
          let x_1145 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1145);
          let x_1148 : f32 = u_xlat38;
          let x_1150 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1148, x_1148, x_1148) * vec3<f32>(x_1150.z, x_1150.x, x_1150.y));
          let x_1154 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1154);
          let x_1158 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1158, 0.0f, 1.0f);
          let x_1162 : vec3<f32> = u_xlat10;
          let x_1164 : vec4<bool> = (vec4<f32>(x_1162.y, x_1162.z, x_1162.y, x_1162.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1164.x, x_1164.y);
          let x_1167 : bool = u_xlatb30.x;
          if (x_1167) {
            let x_1172 : f32 = u_xlat10.x;
            x_1168 = x_1172;
          } else {
            let x_1175 : f32 = u_xlat10.x;
            x_1168 = -(x_1175);
          }
          let x_1177 : f32 = x_1168;
          u_xlat30.x = x_1177;
          let x_1180 : bool = u_xlatb30.y;
          if (x_1180) {
            let x_1185 : f32 = u_xlat10.x;
            x_1181 = x_1185;
          } else {
            let x_1188 : f32 = u_xlat10.x;
            x_1181 = -(x_1188);
          }
          let x_1190 : f32 = x_1181;
          u_xlat30.y = x_1190;
          let x_1192 : vec4<f32> = u_xlat9;
          let x_1194 : f32 = u_xlat38;
          let x_1197 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(x_1194, x_1194)) + x_1197);
          let x_1199 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1199 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1202 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1202, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1206 : i32 = u_xlati36;
          let x_1208 : vec4<f32> = x_348.x_AdditionalLightsCookieAtlasUVRects[x_1206];
          let x_1210 : vec2<f32> = u_xlat30;
          let x_1212 : i32 = u_xlati36;
          let x_1214 : vec4<f32> = x_348.x_AdditionalLightsCookieAtlasUVRects[x_1212];
          let x_1216 : vec2<f32> = ((vec2<f32>(x_1208.x, x_1208.y) * x_1210) + vec2<f32>(x_1214.z, x_1214.w));
          let x_1217 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1216.x, x_1216.y, x_1217.z, x_1217.w);
        }
      }
      let x_1224 : vec4<f32> = u_xlat8;
      let x_1226 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1224.x, x_1224.y), 0.0f);
      u_xlat8 = x_1226;
      let x_1228 : bool = u_xlatb5.y;
      if (x_1228) {
        let x_1233 : f32 = u_xlat8.w;
        x_1229 = x_1233;
      } else {
        let x_1236 : f32 = u_xlat8.x;
        x_1229 = x_1236;
      }
      let x_1237 : f32 = x_1229;
      u_xlat38 = x_1237;
      let x_1239 : bool = u_xlatb5.x;
      if (x_1239) {
        let x_1243 : vec4<f32> = u_xlat8;
        x_1240 = vec3<f32>(x_1243.x, x_1243.y, x_1243.z);
      } else {
        let x_1246 : f32 = u_xlat38;
        x_1240 = vec3<f32>(x_1246, x_1246, x_1246);
      }
      let x_1248 : vec3<f32> = x_1240;
      let x_1249 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1255 : vec4<f32> = u_xlat8;
    let x_1257 : i32 = u_xlati36;
    let x_1259 : vec4<f32> = x_601.x_AdditionalLightsColor[x_1257];
    let x_1261 : vec3<f32> = (vec3<f32>(x_1255.x, x_1255.y, x_1255.z) * vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
    let x_1262 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
    let x_1264 : f32 = u_xlat37;
    let x_1265 : f32 = u_xlat27;
    u_xlat36 = (x_1264 * x_1265);
    let x_1267 : f32 = u_xlat36;
    let x_1269 : vec4<f32> = u_xlat8;
    let x_1271 : vec3<f32> = (vec3<f32>(x_1267, x_1267, x_1267) * vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
    let x_1272 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
    let x_1274 : vec3<f32> = u_xlat2;
    let x_1275 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_1274, x_1275);
    let x_1277 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1277, 0.0f, 1.0f);
    let x_1279 : f32 = u_xlat36;
    let x_1281 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1279, x_1279, x_1279) * vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
    let x_1284 : vec3<f32> = u_xlat7;
    let x_1285 : vec4<f32> = u_xlat1;
    let x_1288 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1284 * vec3<f32>(x_1285.x, x_1285.y, x_1285.z)) + x_1288);

    continuing {
      let x_1290 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1290 + bitcast<u32>(1i));
    }
  }
  let x_1292 : vec4<f32> = u_xlat3;
  let x_1294 : vec4<f32> = u_xlat1;
  let x_1297 : vec4<f32> = u_xlat4;
  let x_1299 : vec3<f32> = ((vec3<f32>(x_1292.x, x_1292.y, x_1292.z) * vec3<f32>(x_1294.x, x_1294.y, x_1294.z)) + vec3<f32>(x_1297.x, x_1297.y, x_1297.z));
  let x_1300 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1300.w);
  let x_1302 : vec3<f32> = u_xlat6;
  let x_1303 : vec4<f32> = u_xlat1;
  let x_1305 : vec3<f32> = (x_1302 + vec3<f32>(x_1303.x, x_1303.y, x_1303.z));
  let x_1306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1305.x, x_1305.y, x_1305.z, x_1306.w);
  let x_1309 : f32 = u_xlat0.x;
  let x_1311 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1309 * -(x_1311));
  let x_1316 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1316);
  let x_1319 : vec4<f32> = u_xlat1;
  let x_1322 : vec4<f32> = x_44.unity_FogColor;
  let x_1325 : vec3<f32> = (vec3<f32>(x_1319.x, x_1319.y, x_1319.z) + -(vec3<f32>(x_1322.x, x_1322.y, x_1322.z)));
  let x_1326 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
  let x_1330 : vec4<f32> = u_xlat0;
  let x_1332 : vec4<f32> = u_xlat1;
  let x_1336 : vec4<f32> = x_44.unity_FogColor;
  let x_1338 : vec3<f32> = ((vec3<f32>(x_1330.x, x_1330.x, x_1330.x) * vec3<f32>(x_1332.x, x_1332.y, x_1332.z)) + vec3<f32>(x_1336.x, x_1336.y, x_1336.z));
  let x_1339 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
  let x_1341 : bool = u_xlatb22;
  let x_1342 : f32 = u_xlat11;
  SV_Target0.w = select(1.0f, x_1342, x_1341);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}


