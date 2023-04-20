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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_207 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat34 : f32;

@group(1) @binding(4) var<uniform> x_312 : LightShadows;

var<private> u_xlatb34 : bool;

var<private> u_xlatb35 : bool;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

@group(1) @binding(5) var<uniform> x_378 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu33 : u32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlati37 : i32;

var<private> u_xlati36 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_627 : AdditionalLights;

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

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu35 : u32;

var<private> u_xlatb36 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_72 : f32;
  var x_121 : f32;
  var txVec0 : vec3<f32>;
  var x_466 : f32;
  var x_477 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_761 : f32;
  var x_771 : f32;
  var txVec1 : vec3<f32>;
  var x_1194 : f32;
  var x_1207 : f32;
  var x_1255 : f32;
  var x_1266 : vec3<f32>;
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
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  let x_160 : vec3<f32> = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : f32 = hlslcc_FragCoord.w;
  let x_167 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_164 * x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_175 : f32 = x_44.x_ProjectionParams.y;
  u_xlat0.x = (x_171 / x_175);
  let x_179 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_179) + 1.0f);
  let x_184 : f32 = u_xlat0.x;
  let x_186 : f32 = x_44.x_ProjectionParams.z;
  u_xlat0.x = (x_184 * x_186);
  let x_190 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_190, 0.0f);
  let x_194 : f32 = u_xlat0.x;
  let x_197 : f32 = x_44.unity_FogParams.x;
  u_xlat0.x = (x_194 * x_197);
  u_xlat2.w = 1.0f;
  let x_211 : vec4<f32> = x_207.unity_SHAr;
  let x_212 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_211, x_212);
  let x_217 : vec4<f32> = x_207.unity_SHAg;
  let x_218 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_217, x_218);
  let x_223 : vec4<f32> = x_207.unity_SHAb;
  let x_224 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_223, x_224);
  let x_228 : vec4<f32> = u_xlat2;
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_228.y, x_228.z, x_228.z, x_228.x) * vec4<f32>(x_230.x, x_230.y, x_230.z, x_230.z));
  let x_236 : vec4<f32> = x_207.unity_SHBr;
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_236, x_237);
  let x_242 : vec4<f32> = x_207.unity_SHBg;
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_242, x_243);
  let x_248 : vec4<f32> = x_207.unity_SHBb;
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_248, x_249);
  let x_253 : f32 = u_xlat2.y;
  let x_255 : f32 = u_xlat2.y;
  u_xlat33 = (x_253 * x_255);
  let x_258 : f32 = u_xlat2.x;
  let x_260 : f32 = u_xlat2.x;
  let x_262 : f32 = u_xlat33;
  u_xlat33 = ((x_258 * x_260) + -(x_262));
  let x_267 : vec4<f32> = x_207.unity_SHC;
  let x_269 : f32 = u_xlat33;
  let x_272 : vec3<f32> = u_xlat5;
  let x_273 : vec3<f32> = ((vec3<f32>(x_267.x, x_267.y, x_267.z) * vec3<f32>(x_269, x_269, x_269)) + x_272);
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_276 : vec3<f32> = u_xlat3;
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_276 + vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_280, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_286 : vec4<f32> = vs_TEXCOORD6;
  let x_287 : vec2<f32> = vec2<f32>(x_286.x, x_286.y);
  let x_289 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_287.x, x_287.y, x_289);
  let x_301 : vec3<f32> = txVec0;
  let x_303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_301.xy, x_301.z);
  u_xlat33 = x_303;
  let x_315 : f32 = x_312.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_315) + 1.0f);
  let x_318 : f32 = u_xlat33;
  let x_320 : f32 = x_312.x_MainLightShadowParams.x;
  let x_322 : f32 = u_xlat34;
  u_xlat33 = ((x_318 * x_320) + x_322);
  let x_326 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (0.0f >= x_326);
  let x_330 : f32 = vs_TEXCOORD6.z;
  u_xlatb35 = (x_330 >= 1.0f);
  let x_332 : bool = u_xlatb34;
  let x_333 : bool = u_xlatb35;
  u_xlatb34 = (x_332 | x_333);
  let x_335 : bool = u_xlatb34;
  let x_336 : f32 = u_xlat33;
  u_xlat33 = select(x_336, 1.0f, x_335);
  let x_339 : vec4<f32> = vs_TEXCOORD2;
  let x_344 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_346 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) + -(x_344));
  let x_347 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = u_xlat4;
  u_xlat34 = dot(vec3<f32>(x_349.x, x_349.y, x_349.z), vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_355 : f32 = u_xlat34;
  let x_357 : f32 = x_312.x_MainLightShadowParams.z;
  let x_360 : f32 = x_312.x_MainLightShadowParams.w;
  u_xlat35 = ((x_355 * x_357) + x_360);
  let x_362 : f32 = u_xlat35;
  u_xlat35 = clamp(x_362, 0.0f, 1.0f);
  let x_365 : f32 = u_xlat33;
  u_xlat36 = (-(x_365) + 1.0f);
  let x_368 : f32 = u_xlat35;
  let x_369 : f32 = u_xlat36;
  let x_371 : f32 = u_xlat33;
  u_xlat33 = ((x_368 * x_369) + x_371);
  let x_381 : f32 = x_378.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_381 == -1.0f));
  let x_384 : bool = u_xlatb35;
  if (x_384) {
    let x_387 : vec4<f32> = vs_TEXCOORD2;
    let x_390 : vec4<f32> = x_378.x_MainLightWorldToLight[1i];
    let x_392 : vec2<f32> = (vec2<f32>(x_387.y, x_387.y) * vec2<f32>(x_390.x, x_390.y));
    let x_393 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
    let x_396 : vec4<f32> = x_378.x_MainLightWorldToLight[0i];
    let x_398 : vec4<f32> = vs_TEXCOORD2;
    let x_401 : vec4<f32> = u_xlat4;
    let x_403 : vec2<f32> = ((vec2<f32>(x_396.x, x_396.y) * vec2<f32>(x_398.x, x_398.x)) + vec2<f32>(x_401.x, x_401.y));
    let x_404 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
    let x_407 : vec4<f32> = x_378.x_MainLightWorldToLight[2i];
    let x_409 : vec4<f32> = vs_TEXCOORD2;
    let x_412 : vec4<f32> = u_xlat4;
    let x_414 : vec2<f32> = ((vec2<f32>(x_407.x, x_407.y) * vec2<f32>(x_409.z, x_409.z)) + vec2<f32>(x_412.x, x_412.y));
    let x_415 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
    let x_417 : vec4<f32> = u_xlat4;
    let x_421 : vec4<f32> = x_378.x_MainLightWorldToLight[3i];
    let x_423 : vec2<f32> = (vec2<f32>(x_417.x, x_417.y) + vec2<f32>(x_421.x, x_421.y));
    let x_424 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
    let x_426 : vec4<f32> = u_xlat4;
    let x_430 : vec2<f32> = ((vec2<f32>(x_426.x, x_426.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_431 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
    let x_438 : vec4<f32> = u_xlat4;
    let x_441 : f32 = x_44.x_GlobalMipBias.x;
    let x_442 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_438.x, x_438.y), x_441);
    u_xlat4 = x_442;
    let x_447 : f32 = x_378.x_MainLightCookieTextureFormat;
    let x_449 : f32 = x_378.x_MainLightCookieTextureFormat;
    let x_451 : f32 = x_378.x_MainLightCookieTextureFormat;
    let x_453 : f32 = x_378.x_MainLightCookieTextureFormat;
    let x_454 : vec4<f32> = vec4<f32>(x_447, x_449, x_451, x_453);
    let x_462 : vec4<bool> = (vec4<f32>(x_454.x, x_454.y, x_454.z, x_454.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_462.x, x_462.y);
    let x_465 : bool = u_xlatb5.y;
    if (x_465) {
      let x_470 : f32 = u_xlat4.w;
      x_466 = x_470;
    } else {
      let x_473 : f32 = u_xlat4.x;
      x_466 = x_473;
    }
    let x_474 : f32 = x_466;
    u_xlat35 = x_474;
    let x_476 : bool = u_xlatb5.x;
    if (x_476) {
      let x_480 : vec4<f32> = u_xlat4;
      x_477 = vec3<f32>(x_480.x, x_480.y, x_480.z);
    } else {
      let x_483 : f32 = u_xlat35;
      x_477 = vec3<f32>(x_483, x_483, x_483);
    }
    let x_485 : vec3<f32> = x_477;
    let x_486 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_492 : vec4<f32> = u_xlat4;
  let x_495 : vec4<f32> = x_44.x_MainLightColor;
  let x_497 : vec3<f32> = (vec3<f32>(x_492.x, x_492.y, x_492.z) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : f32 = u_xlat33;
  let x_502 : f32 = x_207.unity_LightData.z;
  u_xlat33 = (x_500 * x_502);
  let x_504 : f32 = u_xlat33;
  let x_506 : vec4<f32> = u_xlat4;
  let x_508 : vec3<f32> = (vec3<f32>(x_504, x_504, x_504) * vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat2;
  let x_514 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat33 = dot(vec3<f32>(x_511.x, x_511.y, x_511.z), vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : f32 = u_xlat33;
  u_xlat33 = clamp(x_517, 0.0f, 1.0f);
  let x_519 : f32 = u_xlat33;
  let x_521 : vec4<f32> = u_xlat4;
  let x_523 : vec3<f32> = (vec3<f32>(x_519, x_519, x_519) * vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_524 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat1;
  let x_528 : vec4<f32> = u_xlat4;
  let x_530 : vec3<f32> = (vec3<f32>(x_526.x, x_526.y, x_526.z) * vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_534 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_536 : f32 = x_207.unity_LightData.y;
  u_xlat33 = min(x_534, x_536);
  let x_540 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_540));
  let x_543 : f32 = u_xlat34;
  let x_546 : f32 = x_312.x_AdditionalShadowFadeParams.x;
  let x_549 : f32 = x_312.x_AdditionalShadowFadeParams.y;
  u_xlat34 = ((x_543 * x_546) + x_549);
  let x_551 : f32 = u_xlat34;
  u_xlat34 = clamp(x_551, 0.0f, 1.0f);
  let x_554 : f32 = x_378.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_556 : f32 = x_378.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_558 : f32 = x_378.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_560 : f32 = x_378.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_561 : vec4<f32> = vec4<f32>(x_554, x_556, x_558, x_560);
  let x_567 : vec4<bool> = (vec4<f32>(x_561.x, x_561.y, x_561.z, x_561.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_567.x, x_567.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_580 : u32 = u_xlatu_loop_1;
    let x_581 : u32 = u_xlatu33;
    if ((x_580 < x_581)) {
    } else {
      break;
    }
    let x_584 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_584 >> 2u);
    let x_588 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_588 & 3u));
    let x_591 : u32 = u_xlatu36;
    let x_594 : vec4<f32> = x_207.unity_LightIndices[bitcast<i32>(x_591)];
    let x_604 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_609 : vec4<u32> = indexable[x_604];
    u_xlat36 = dot(x_594, bitcast<vec4<f32>>(x_609));
    let x_613 : f32 = u_xlat36;
    u_xlati36 = i32(x_613);
    let x_616 : vec4<f32> = vs_TEXCOORD2;
    let x_628 : i32 = u_xlati36;
    let x_630 : vec4<f32> = x_627.x_AdditionalLightsPosition[x_628];
    let x_633 : i32 = u_xlati36;
    let x_635 : vec4<f32> = x_627.x_AdditionalLightsPosition[x_633];
    u_xlat7 = ((-(vec3<f32>(x_616.x, x_616.y, x_616.z)) * vec3<f32>(x_630.w, x_630.w, x_630.w)) + vec3<f32>(x_635.x, x_635.y, x_635.z));
    let x_639 : vec3<f32> = u_xlat7;
    let x_640 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_639, x_640);
    let x_642 : f32 = u_xlat37;
    u_xlat37 = max(x_642, 0.00006103515625f);
    let x_646 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_646);
    let x_648 : f32 = u_xlat27;
    let x_650 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_648, x_648, x_648) * x_650);
    let x_652 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_652);
    let x_654 : f32 = u_xlat37;
    let x_655 : i32 = u_xlati36;
    let x_657 : f32 = x_627.x_AdditionalLightsAttenuation[x_655].x;
    u_xlat37 = (x_654 * x_657);
    let x_659 : f32 = u_xlat37;
    let x_661 : f32 = u_xlat37;
    u_xlat37 = ((-(x_659) * x_661) + 1.0f);
    let x_664 : f32 = u_xlat37;
    u_xlat37 = max(x_664, 0.0f);
    let x_666 : f32 = u_xlat37;
    let x_667 : f32 = u_xlat37;
    u_xlat37 = (x_666 * x_667);
    let x_669 : f32 = u_xlat37;
    let x_670 : f32 = u_xlat27;
    u_xlat37 = (x_669 * x_670);
    let x_672 : i32 = u_xlati36;
    let x_674 : vec4<f32> = x_627.x_AdditionalLightsSpotDir[x_672];
    let x_676 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_674.x, x_674.y, x_674.z), x_676);
    let x_678 : f32 = u_xlat27;
    let x_679 : i32 = u_xlati36;
    let x_681 : f32 = x_627.x_AdditionalLightsAttenuation[x_679].z;
    let x_683 : i32 = u_xlati36;
    let x_685 : f32 = x_627.x_AdditionalLightsAttenuation[x_683].w;
    u_xlat27 = ((x_678 * x_681) + x_685);
    let x_687 : f32 = u_xlat27;
    u_xlat27 = clamp(x_687, 0.0f, 1.0f);
    let x_689 : f32 = u_xlat27;
    let x_690 : f32 = u_xlat27;
    u_xlat27 = (x_689 * x_690);
    let x_692 : f32 = u_xlat37;
    let x_693 : f32 = u_xlat27;
    u_xlat37 = (x_692 * x_693);
    let x_697 : i32 = u_xlati36;
    let x_699 : f32 = x_312.x_AdditionalShadowParams[x_697].w;
    u_xlati27 = i32(x_699);
    let x_702 : i32 = u_xlati27;
    u_xlatb38 = (x_702 >= 0i);
    let x_704 : bool = u_xlatb38;
    if (x_704) {
      let x_708 : i32 = u_xlati36;
      let x_710 : f32 = x_312.x_AdditionalShadowParams[x_708].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_710, x_710, x_710, x_710))));
      let x_714 : bool = u_xlatb38;
      if (x_714) {
        let x_719 : vec3<f32> = u_xlat7;
        let x_722 : vec3<f32> = u_xlat7;
        let x_725 : vec4<bool> = (abs(vec4<f32>(x_719.z, x_719.z, x_719.y, x_719.z)) >= abs(vec4<f32>(x_722.x, x_722.y, x_722.x, x_722.x)));
        let x_727 : vec3<bool> = vec3<bool>(x_725.x, x_725.y, x_725.z);
        let x_728 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_727.x, x_727.y, x_727.z, x_728.w);
        let x_731 : bool = u_xlatb8.y;
        let x_733 : bool = u_xlatb8.x;
        u_xlatb38 = (x_731 & x_733);
        let x_735 : vec3<f32> = u_xlat7;
        let x_738 : vec4<bool> = (-(vec4<f32>(x_735.z, x_735.y, x_735.z, x_735.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_739 : vec3<bool> = vec3<bool>(x_738.x, x_738.y, x_738.w);
        let x_740 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_739.x, x_739.y, x_740.z, x_739.z);
        let x_744 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_744);
        let x_750 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_750);
        let x_757 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_757);
        let x_760 : bool = u_xlatb8.z;
        if (x_760) {
          let x_765 : f32 = u_xlat8.y;
          x_761 = x_765;
        } else {
          let x_767 : f32 = u_xlat39;
          x_761 = x_767;
        }
        let x_768 : f32 = x_761;
        u_xlat39 = x_768;
        let x_770 : bool = u_xlatb38;
        if (x_770) {
          let x_775 : f32 = u_xlat8.x;
          x_771 = x_775;
        } else {
          let x_777 : f32 = u_xlat39;
          x_771 = x_777;
        }
        let x_778 : f32 = x_771;
        u_xlat38 = x_778;
        let x_779 : i32 = u_xlati36;
        let x_781 : f32 = x_312.x_AdditionalShadowParams[x_779].w;
        u_xlat39 = trunc(x_781);
        let x_783 : f32 = u_xlat38;
        let x_784 : f32 = u_xlat39;
        u_xlat38 = (x_783 + x_784);
        let x_786 : f32 = u_xlat38;
        u_xlati27 = i32(x_786);
      }
      let x_788 : i32 = u_xlati27;
      u_xlati27 = (x_788 << bitcast<u32>(2i));
      let x_790 : vec4<f32> = vs_TEXCOORD2;
      let x_793 : i32 = u_xlati27;
      let x_796 : i32 = u_xlati27;
      let x_800 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_793 + 1i) / 4i)][((x_796 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_790.y, x_790.y, x_790.y, x_790.y) * x_800);
      let x_802 : i32 = u_xlati27;
      let x_804 : i32 = u_xlati27;
      let x_807 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[(x_802 / 4i)][(x_804 % 4i)];
      let x_808 : vec4<f32> = vs_TEXCOORD2;
      let x_811 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_807 * vec4<f32>(x_808.x, x_808.x, x_808.x, x_808.x)) + x_811);
      let x_813 : i32 = u_xlati27;
      let x_816 : i32 = u_xlati27;
      let x_820 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_813 + 2i) / 4i)][((x_816 + 2i) % 4i)];
      let x_821 : vec4<f32> = vs_TEXCOORD2;
      let x_824 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_820 * vec4<f32>(x_821.z, x_821.z, x_821.z, x_821.z)) + x_824);
      let x_826 : vec4<f32> = u_xlat8;
      let x_827 : i32 = u_xlati27;
      let x_830 : i32 = u_xlati27;
      let x_834 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_827 + 3i) / 4i)][((x_830 + 3i) % 4i)];
      u_xlat8 = (x_826 + x_834);
      let x_836 : vec4<f32> = u_xlat8;
      let x_838 : vec4<f32> = u_xlat8;
      let x_840 : vec3<f32> = (vec3<f32>(x_836.x, x_836.y, x_836.z) / vec3<f32>(x_838.w, x_838.w, x_838.w));
      let x_841 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
      let x_844 : vec4<f32> = u_xlat8;
      let x_845 : vec2<f32> = vec2<f32>(x_844.x, x_844.y);
      let x_847 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_845.x, x_845.y, x_847);
      let x_855 : vec3<f32> = txVec1;
      let x_857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_855.xy, x_855.z);
      u_xlat27 = x_857;
      let x_858 : i32 = u_xlati36;
      let x_860 : f32 = x_312.x_AdditionalShadowParams[x_858].x;
      u_xlat38 = (1.0f + -(x_860));
      let x_863 : f32 = u_xlat27;
      let x_864 : i32 = u_xlati36;
      let x_866 : f32 = x_312.x_AdditionalShadowParams[x_864].x;
      let x_868 : f32 = u_xlat38;
      u_xlat27 = ((x_863 * x_866) + x_868);
      let x_871 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_871);
      let x_875 : f32 = u_xlat8.z;
      u_xlatb39 = (x_875 >= 1.0f);
      let x_877 : bool = u_xlatb38;
      let x_878 : bool = u_xlatb39;
      u_xlatb38 = (x_877 | x_878);
      let x_880 : bool = u_xlatb38;
      let x_881 : f32 = u_xlat27;
      u_xlat27 = select(x_881, 1.0f, x_880);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_884 : f32 = u_xlat27;
    u_xlat38 = (-(x_884) + 1.0f);
    let x_887 : f32 = u_xlat34;
    let x_888 : f32 = u_xlat38;
    let x_890 : f32 = u_xlat27;
    u_xlat27 = ((x_887 * x_888) + x_890);
    let x_893 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_893 & 31i)));
    let x_897 : i32 = u_xlati38;
    let x_900 : f32 = x_378.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_897) & bitcast<u32>(x_900)));
    let x_904 : i32 = u_xlati38;
    if ((x_904 != 0i)) {
      let x_908 : i32 = u_xlati36;
      let x_910 : f32 = x_378.x_AdditionalLightsLightTypes[x_908].el;
      u_xlati38 = i32(x_910);
      let x_913 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_913 != 0i));
      let x_917 : i32 = u_xlati36;
      u_xlati40 = (x_917 << bitcast<u32>(2i));
      let x_919 : i32 = u_xlati39;
      if ((x_919 != 0i)) {
        let x_923 : vec4<f32> = vs_TEXCOORD2;
        let x_925 : i32 = u_xlati40;
        let x_928 : i32 = u_xlati40;
        let x_932 : vec4<f32> = x_378.x_AdditionalLightsWorldToLights[((x_925 + 1i) / 4i)][((x_928 + 1i) % 4i)];
        let x_934 : vec3<f32> = (vec3<f32>(x_923.y, x_923.y, x_923.y) * vec3<f32>(x_932.x, x_932.y, x_932.w));
        let x_935 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
        let x_937 : i32 = u_xlati40;
        let x_939 : i32 = u_xlati40;
        let x_942 : vec4<f32> = x_378.x_AdditionalLightsWorldToLights[(x_937 / 4i)][(x_939 % 4i)];
        let x_944 : vec4<f32> = vs_TEXCOORD2;
        let x_947 : vec4<f32> = u_xlat8;
        let x_949 : vec3<f32> = ((vec3<f32>(x_942.x, x_942.y, x_942.w) * vec3<f32>(x_944.x, x_944.x, x_944.x)) + vec3<f32>(x_947.x, x_947.y, x_947.z));
        let x_950 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
        let x_952 : i32 = u_xlati40;
        let x_955 : i32 = u_xlati40;
        let x_959 : vec4<f32> = x_378.x_AdditionalLightsWorldToLights[((x_952 + 2i) / 4i)][((x_955 + 2i) % 4i)];
        let x_961 : vec4<f32> = vs_TEXCOORD2;
        let x_964 : vec4<f32> = u_xlat8;
        let x_966 : vec3<f32> = ((vec3<f32>(x_959.x, x_959.y, x_959.w) * vec3<f32>(x_961.z, x_961.z, x_961.z)) + vec3<f32>(x_964.x, x_964.y, x_964.z));
        let x_967 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
        let x_969 : vec4<f32> = u_xlat8;
        let x_971 : i32 = u_xlati40;
        let x_974 : i32 = u_xlati40;
        let x_978 : vec4<f32> = x_378.x_AdditionalLightsWorldToLights[((x_971 + 3i) / 4i)][((x_974 + 3i) % 4i)];
        let x_980 : vec3<f32> = (vec3<f32>(x_969.x, x_969.y, x_969.z) + vec3<f32>(x_978.x, x_978.y, x_978.w));
        let x_981 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
        let x_983 : vec4<f32> = u_xlat8;
        let x_985 : vec4<f32> = u_xlat8;
        let x_987 : vec2<f32> = (vec2<f32>(x_983.x, x_983.y) / vec2<f32>(x_985.z, x_985.z));
        let x_988 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_987.x, x_987.y, x_988.z, x_988.w);
        let x_990 : vec4<f32> = u_xlat8;
        let x_993 : vec2<f32> = ((vec2<f32>(x_990.x, x_990.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_994 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_993.x, x_993.y, x_994.z, x_994.w);
        let x_996 : vec4<f32> = u_xlat8;
        let x_1000 : vec2<f32> = clamp(vec2<f32>(x_996.x, x_996.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1001 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1000.x, x_1000.y, x_1001.z, x_1001.w);
        let x_1003 : i32 = u_xlati36;
        let x_1005 : vec4<f32> = x_378.x_AdditionalLightsCookieAtlasUVRects[x_1003];
        let x_1007 : vec4<f32> = u_xlat8;
        let x_1010 : i32 = u_xlati36;
        let x_1012 : vec4<f32> = x_378.x_AdditionalLightsCookieAtlasUVRects[x_1010];
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1005.x, x_1005.y) * vec2<f32>(x_1007.x, x_1007.y)) + vec2<f32>(x_1012.z, x_1012.w));
        let x_1015 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1014.x, x_1014.y, x_1015.z, x_1015.w);
      } else {
        let x_1018 : i32 = u_xlati38;
        u_xlatb38 = (x_1018 == 1i);
        let x_1020 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1020);
        let x_1022 : i32 = u_xlati38;
        if ((x_1022 != 0i)) {
          let x_1028 : vec4<f32> = vs_TEXCOORD2;
          let x_1030 : i32 = u_xlati40;
          let x_1033 : i32 = u_xlati40;
          let x_1037 : vec4<f32> = x_378.x_AdditionalLightsWorldToLights[((x_1030 + 1i) / 4i)][((x_1033 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1028.y, x_1028.y) * vec2<f32>(x_1037.x, x_1037.y));
          let x_1040 : i32 = u_xlati40;
          let x_1042 : i32 = u_xlati40;
          let x_1045 : vec4<f32> = x_378.x_AdditionalLightsWorldToLights[(x_1040 / 4i)][(x_1042 % 4i)];
          let x_1047 : vec4<f32> = vs_TEXCOORD2;
          let x_1050 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1045.x, x_1045.y) * vec2<f32>(x_1047.x, x_1047.x)) + x_1050);
          let x_1052 : i32 = u_xlati40;
          let x_1055 : i32 = u_xlati40;
          let x_1059 : vec4<f32> = x_378.x_AdditionalLightsWorldToLights[((x_1052 + 2i) / 4i)][((x_1055 + 2i) % 4i)];
          let x_1061 : vec4<f32> = vs_TEXCOORD2;
          let x_1064 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(x_1061.z, x_1061.z)) + x_1064);
          let x_1066 : vec2<f32> = u_xlat30;
          let x_1067 : i32 = u_xlati40;
          let x_1070 : i32 = u_xlati40;
          let x_1074 : vec4<f32> = x_378.x_AdditionalLightsWorldToLights[((x_1067 + 3i) / 4i)][((x_1070 + 3i) % 4i)];
          u_xlat30 = (x_1066 + vec2<f32>(x_1074.x, x_1074.y));
          let x_1077 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1077 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1080 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1080);
          let x_1082 : i32 = u_xlati36;
          let x_1084 : vec4<f32> = x_378.x_AdditionalLightsCookieAtlasUVRects[x_1082];
          let x_1086 : vec2<f32> = u_xlat30;
          let x_1088 : i32 = u_xlati36;
          let x_1090 : vec4<f32> = x_378.x_AdditionalLightsCookieAtlasUVRects[x_1088];
          let x_1092 : vec2<f32> = ((vec2<f32>(x_1084.x, x_1084.y) * x_1086) + vec2<f32>(x_1090.z, x_1090.w));
          let x_1093 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1092.x, x_1092.y, x_1093.z, x_1093.w);
        } else {
          let x_1097 : vec4<f32> = vs_TEXCOORD2;
          let x_1099 : i32 = u_xlati40;
          let x_1102 : i32 = u_xlati40;
          let x_1106 : vec4<f32> = x_378.x_AdditionalLightsWorldToLights[((x_1099 + 1i) / 4i)][((x_1102 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1097.y, x_1097.y, x_1097.y, x_1097.y) * x_1106);
          let x_1108 : i32 = u_xlati40;
          let x_1110 : i32 = u_xlati40;
          let x_1113 : vec4<f32> = x_378.x_AdditionalLightsWorldToLights[(x_1108 / 4i)][(x_1110 % 4i)];
          let x_1114 : vec4<f32> = vs_TEXCOORD2;
          let x_1117 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1113 * vec4<f32>(x_1114.x, x_1114.x, x_1114.x, x_1114.x)) + x_1117);
          let x_1119 : i32 = u_xlati40;
          let x_1122 : i32 = u_xlati40;
          let x_1126 : vec4<f32> = x_378.x_AdditionalLightsWorldToLights[((x_1119 + 2i) / 4i)][((x_1122 + 2i) % 4i)];
          let x_1127 : vec4<f32> = vs_TEXCOORD2;
          let x_1130 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1126 * vec4<f32>(x_1127.z, x_1127.z, x_1127.z, x_1127.z)) + x_1130);
          let x_1132 : vec4<f32> = u_xlat9;
          let x_1133 : i32 = u_xlati40;
          let x_1136 : i32 = u_xlati40;
          let x_1140 : vec4<f32> = x_378.x_AdditionalLightsWorldToLights[((x_1133 + 3i) / 4i)][((x_1136 + 3i) % 4i)];
          u_xlat9 = (x_1132 + x_1140);
          let x_1142 : vec4<f32> = u_xlat9;
          let x_1144 : vec4<f32> = u_xlat9;
          let x_1146 : vec3<f32> = (vec3<f32>(x_1142.x, x_1142.y, x_1142.z) / vec3<f32>(x_1144.w, x_1144.w, x_1144.w));
          let x_1147 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
          let x_1149 : vec4<f32> = u_xlat9;
          let x_1151 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1149.x, x_1149.y, x_1149.z), vec3<f32>(x_1151.x, x_1151.y, x_1151.z));
          let x_1154 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1154);
          let x_1156 : f32 = u_xlat38;
          let x_1158 : vec4<f32> = u_xlat9;
          let x_1160 : vec3<f32> = (vec3<f32>(x_1156, x_1156, x_1156) * vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
          let x_1161 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
          let x_1163 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1163.x, x_1163.y, x_1163.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1168 : f32 = u_xlat38;
          u_xlat38 = max(x_1168, 0.00000099999999747524f);
          let x_1171 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1171);
          let x_1174 : f32 = u_xlat38;
          let x_1176 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1174, x_1174, x_1174) * vec3<f32>(x_1176.z, x_1176.x, x_1176.y));
          let x_1180 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1180);
          let x_1184 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1184, 0.0f, 1.0f);
          let x_1188 : vec3<f32> = u_xlat10;
          let x_1190 : vec4<bool> = (vec4<f32>(x_1188.y, x_1188.z, x_1188.y, x_1188.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1190.x, x_1190.y);
          let x_1193 : bool = u_xlatb30.x;
          if (x_1193) {
            let x_1198 : f32 = u_xlat10.x;
            x_1194 = x_1198;
          } else {
            let x_1201 : f32 = u_xlat10.x;
            x_1194 = -(x_1201);
          }
          let x_1203 : f32 = x_1194;
          u_xlat30.x = x_1203;
          let x_1206 : bool = u_xlatb30.y;
          if (x_1206) {
            let x_1211 : f32 = u_xlat10.x;
            x_1207 = x_1211;
          } else {
            let x_1214 : f32 = u_xlat10.x;
            x_1207 = -(x_1214);
          }
          let x_1216 : f32 = x_1207;
          u_xlat30.y = x_1216;
          let x_1218 : vec4<f32> = u_xlat9;
          let x_1220 : f32 = u_xlat38;
          let x_1223 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(x_1220, x_1220)) + x_1223);
          let x_1225 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1225 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1228 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1228, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1232 : i32 = u_xlati36;
          let x_1234 : vec4<f32> = x_378.x_AdditionalLightsCookieAtlasUVRects[x_1232];
          let x_1236 : vec2<f32> = u_xlat30;
          let x_1238 : i32 = u_xlati36;
          let x_1240 : vec4<f32> = x_378.x_AdditionalLightsCookieAtlasUVRects[x_1238];
          let x_1242 : vec2<f32> = ((vec2<f32>(x_1234.x, x_1234.y) * x_1236) + vec2<f32>(x_1240.z, x_1240.w));
          let x_1243 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1242.x, x_1242.y, x_1243.z, x_1243.w);
        }
      }
      let x_1250 : vec4<f32> = u_xlat8;
      let x_1252 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1250.x, x_1250.y), 0.0f);
      u_xlat8 = x_1252;
      let x_1254 : bool = u_xlatb5.y;
      if (x_1254) {
        let x_1259 : f32 = u_xlat8.w;
        x_1255 = x_1259;
      } else {
        let x_1262 : f32 = u_xlat8.x;
        x_1255 = x_1262;
      }
      let x_1263 : f32 = x_1255;
      u_xlat38 = x_1263;
      let x_1265 : bool = u_xlatb5.x;
      if (x_1265) {
        let x_1269 : vec4<f32> = u_xlat8;
        x_1266 = vec3<f32>(x_1269.x, x_1269.y, x_1269.z);
      } else {
        let x_1272 : f32 = u_xlat38;
        x_1266 = vec3<f32>(x_1272, x_1272, x_1272);
      }
      let x_1274 : vec3<f32> = x_1266;
      let x_1275 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1281 : vec4<f32> = u_xlat8;
    let x_1283 : i32 = u_xlati36;
    let x_1285 : vec4<f32> = x_627.x_AdditionalLightsColor[x_1283];
    let x_1287 : vec3<f32> = (vec3<f32>(x_1281.x, x_1281.y, x_1281.z) * vec3<f32>(x_1285.x, x_1285.y, x_1285.z));
    let x_1288 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
    let x_1290 : f32 = u_xlat37;
    let x_1291 : f32 = u_xlat27;
    u_xlat36 = (x_1290 * x_1291);
    let x_1293 : f32 = u_xlat36;
    let x_1295 : vec4<f32> = u_xlat8;
    let x_1297 : vec3<f32> = (vec3<f32>(x_1293, x_1293, x_1293) * vec3<f32>(x_1295.x, x_1295.y, x_1295.z));
    let x_1298 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);
    let x_1300 : vec4<f32> = u_xlat2;
    let x_1302 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_1300.x, x_1300.y, x_1300.z), x_1302);
    let x_1304 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1304, 0.0f, 1.0f);
    let x_1306 : f32 = u_xlat36;
    let x_1308 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1306, x_1306, x_1306) * vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
    let x_1311 : vec3<f32> = u_xlat7;
    let x_1312 : vec4<f32> = u_xlat1;
    let x_1315 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1311 * vec3<f32>(x_1312.x, x_1312.y, x_1312.z)) + x_1315);

    continuing {
      let x_1317 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1317 + bitcast<u32>(1i));
    }
  }
  let x_1319 : vec3<f32> = u_xlat3;
  let x_1320 : vec4<f32> = u_xlat1;
  let x_1323 : vec4<f32> = u_xlat4;
  let x_1325 : vec3<f32> = ((x_1319 * vec3<f32>(x_1320.x, x_1320.y, x_1320.z)) + vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1326 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
  let x_1328 : vec3<f32> = u_xlat6;
  let x_1329 : vec4<f32> = u_xlat1;
  let x_1331 : vec3<f32> = (x_1328 + vec3<f32>(x_1329.x, x_1329.y, x_1329.z));
  let x_1332 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
  let x_1335 : f32 = u_xlat0.x;
  let x_1337 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1335 * -(x_1337));
  let x_1342 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1342);
  let x_1345 : vec4<f32> = u_xlat1;
  let x_1348 : vec4<f32> = x_44.unity_FogColor;
  let x_1351 : vec3<f32> = (vec3<f32>(x_1345.x, x_1345.y, x_1345.z) + -(vec3<f32>(x_1348.x, x_1348.y, x_1348.z)));
  let x_1352 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1351.x, x_1351.y, x_1351.z, x_1352.w);
  let x_1356 : vec4<f32> = u_xlat0;
  let x_1358 : vec4<f32> = u_xlat1;
  let x_1362 : vec4<f32> = x_44.unity_FogColor;
  let x_1364 : vec3<f32> = ((vec3<f32>(x_1356.x, x_1356.x, x_1356.x) * vec3<f32>(x_1358.x, x_1358.y, x_1358.z)) + vec3<f32>(x_1362.x, x_1362.y, x_1362.z));
  let x_1365 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1365.w);
  let x_1367 : bool = u_xlatb22;
  let x_1368 : f32 = u_xlat11;
  SV_Target0.w = select(1.0f, x_1368, x_1367);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}


